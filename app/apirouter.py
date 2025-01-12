from fastapi import APIRouter , FastAPI

app = FastAPI()
router = APIRouter()

@router.get("/try_router/{ticker_symbol}")
async def fetch_stocks():
    pass