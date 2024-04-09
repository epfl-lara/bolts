; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6134 () Bool)

(assert start!6134)

(declare-fun res!25132 () Bool)

(declare-fun e!26721 () Bool)

(assert (=> start!6134 (=> (not res!25132) (not e!26721))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6134 (= res!25132 (validMask!0 mask!853))))

(assert (=> start!6134 e!26721))

(assert (=> start!6134 true))

(declare-fun b!42234 () Bool)

(assert (=> b!42234 (= e!26721 (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111))))

(assert (= (and start!6134 res!25132) b!42234))

(declare-fun m!35829 () Bool)

(assert (=> start!6134 m!35829))

(push 1)

(assert (not start!6134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7633 () Bool)

