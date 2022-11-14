from fastapi import FastAPI
from .routers import video, member


app = FastAPI()

app.include_router(video.router)
app.include_router(member.router)
