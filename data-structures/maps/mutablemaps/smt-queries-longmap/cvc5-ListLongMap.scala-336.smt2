; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6154 () Bool)

(assert start!6154)

(declare-fun res!25144 () Bool)

(declare-fun e!26733 () Bool)

(assert (=> start!6154 (=> (not res!25144) (not e!26733))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6154 (= res!25144 (validMask!0 mask!853))))

(assert (=> start!6154 e!26733))

(assert (=> start!6154 true))

(declare-fun b!42246 () Bool)

(assert (=> b!42246 (= e!26733 (not true))))

(declare-datatypes ((array!2767 0))(
  ( (array!2768 (arr!1327 (Array (_ BitVec 32) (_ BitVec 64))) (size!1491 (_ BitVec 32))) )
))
(declare-fun lt!17367 () array!2767)

(declare-fun arrayCountValidKeys!0 (array!2767 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42246 (= (arrayCountValidKeys!0 lt!17367 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1091 0))(
  ( (Unit!1092) )
))
(declare-fun lt!17368 () Unit!1091)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2767 (_ BitVec 32) (_ BitVec 32)) Unit!1091)

(assert (=> b!42246 (= lt!17368 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17367 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42246 (= lt!17367 (array!2768 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6154 res!25144) b!42246))

(declare-fun m!35837 () Bool)

(assert (=> start!6154 m!35837))

(declare-fun m!35839 () Bool)

(assert (=> b!42246 m!35839))

(declare-fun m!35841 () Bool)

(assert (=> b!42246 m!35841))

(push 1)

(assert (not b!42246))

(assert (not start!6154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

