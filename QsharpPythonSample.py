import qsharp
from QsharpPython.Sample import MeasureBellState

def main():
    results = MeasureBellState.simulate()
    print("Measurement results:")
    print(results)

if __name__ == "__main__":
    main()
