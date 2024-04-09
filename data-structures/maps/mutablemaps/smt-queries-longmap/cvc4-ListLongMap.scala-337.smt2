; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6164 () Bool)

(assert start!6164)

(declare-fun res!25159 () Bool)

(declare-fun e!26748 () Bool)

(assert (=> start!6164 (=> (not res!25159) (not e!26748))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6164 (= res!25159 (validMask!0 mask!853))))

(assert (=> start!6164 e!26748))

(assert (=> start!6164 true))

(declare-fun b!42261 () Bool)

(assert (=> b!42261 (= e!26748 (not true))))

(declare-datatypes ((array!2777 0))(
  ( (array!2778 (arr!1332 (Array (_ BitVec 32) (_ BitVec 64))) (size!1496 (_ BitVec 32))) )
))
(declare-fun lt!17397 () array!2777)

(declare-fun arrayCountValidKeys!0 (array!2777 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42261 (= (arrayCountValidKeys!0 lt!17397 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1101 0))(
  ( (Unit!1102) )
))
(declare-fun lt!17398 () Unit!1101)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2777 (_ BitVec 32) (_ BitVec 32)) Unit!1101)

(assert (=> b!42261 (= lt!17398 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17397 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42261 (= lt!17397 (array!2778 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6164 res!25159) b!42261))

(declare-fun m!35867 () Bool)

(assert (=> start!6164 m!35867))

(declare-fun m!35869 () Bool)

(assert (=> b!42261 m!35869))

(declare-fun m!35871 () Bool)

(assert (=> b!42261 m!35871))

(push 1)

(assert (not b!42261))

(assert (not start!6164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

