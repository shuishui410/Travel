from . import db
from datetime import datetime

#地区
class Area(db.Model):
    __tablename__ = "area"
    id = db.Column(db.Integer, primary_key=True)      #编号
    name = db.Column(db.String(100), unique=True)     #标题
    addtime = db.Column(db.DateTime, index=True, default=datetime.now)      #添加景区时间
    is_recommended = db.Column(db.Boolearn(), default=0)        #是否推荐
    introduction = db.Column(db.Text)                           #景区介绍
    #scenic = db.relationship("Scenic", backref='area')          #外键关联关系

    def __repr__(self):
        return "<Area %r>" % self.name