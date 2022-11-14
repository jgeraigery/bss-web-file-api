from fastapi import FastAPI

from .routers import member, video

app = FastAPI()

app.include_router(video.router)
app.include_router(member.router)
