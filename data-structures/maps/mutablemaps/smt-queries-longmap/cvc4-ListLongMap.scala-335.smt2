; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6146 () Bool)

(assert start!6146)

(declare-fun res!25141 () Bool)

(declare-fun e!26730 () Bool)

(assert (=> start!6146 (=> (not res!25141) (not e!26730))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6146 (= res!25141 (validMask!0 mask!853))))

(assert (=> start!6146 e!26730))

(assert (=> start!6146 true))

(declare-fun b!42243 () Bool)

(assert (=> b!42243 (= e!26730 (and (bvslt (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(assert (= (and start!6146 res!25141) b!42243))

(declare-fun m!35835 () Bool)

(assert (=> start!6146 m!35835))

(push 1)

(assert (not start!6146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7641 () Bool)

