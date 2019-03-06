namespace QsharpPython.Sample
{
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation MeasureBellState() : Result[]
    {
        mutable results = new Result[2];
        Message("Make Bell state.");
        using (q = Qubit[2]) {
            H(q[0]);
            CNOT(q[0], q[1]);
            Message("Measure qubits.");
            for (i in 0..1) {
                set results[i] = M(q[i]);
            }
            ResetAll(q);
        }

        return results;
    }
}
