# _*_ coding: utf-8 _*_
from . import home
from app import db
#from app.home.forms import LoginForm,RegisterForm,SuggetionForm
from app.home.forms import RegisterForm
from app.models import User ,Area,Scenic,Travels,Collect,Suggestion,Userlog
from flask import render_template, url_for, redirect, flash, session, request
from werkzeug.security import generate_password_hash
from sqlalchemy import and_
from functools import wraps

@home.route("/register/", methods=["GET", "POST"])
def register():
    """
    注册功能
    """
    form = RegisterForm()           # 导入注册表单
    if form.validate_on_submit():   # 提交注册表单
        data = form.data            # 接收表单数据
        # 为User类属性赋值
        user = User(
            username = data["username"],            # 用户名
            email = data["email"],                  # 邮箱
            pwd = generate_password_hash(data["pwd"]),# 对密码加密
        )
        db.session.add(user) # 添加数据
        db.session.commit()  # 提交数据
        flash("注册成功！", "ok") # 使用flask存储成功信息
    return render_template("home/register.html", form=form) # 渲染模板