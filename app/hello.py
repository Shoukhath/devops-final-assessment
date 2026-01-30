import sys
from datetime import datetime

def main():
    try:
        timestamp = datetime.utcnow().isoformat()
        print(f"[{timestamp}] Hello, DevOps!")
        return 0
    except Exception as error:
        print(f"Application error: {error}", file=sys.stderr)
        return 1

if __name__ == "__main__":
    sys.exit(main())
