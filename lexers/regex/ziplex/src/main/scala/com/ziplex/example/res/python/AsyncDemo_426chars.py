import asyncio
import random

async def job(name: str, delay: float) -> str:
    await asyncio.sleep(delay)
    return f"{name} finished after {delay:.2f}s"

async def main():
    random.seed(42)
    tasks = [asyncio.create_task(job(f"T{i}", random.uniform(0.05, 0.2))) for i in range(5)]
    results = await asyncio.gather(*tasks)
    print("Async results:")
    for r in results:
        print("  ", r)

asyncio.run(main())
