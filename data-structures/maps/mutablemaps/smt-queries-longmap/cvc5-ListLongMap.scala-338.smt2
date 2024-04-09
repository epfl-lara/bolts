; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6166 () Bool)

(assert start!6166)

(declare-fun res!25162 () Bool)

(declare-fun e!26751 () Bool)

(assert (=> start!6166 (=> (not res!25162) (not e!26751))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6166 (= res!25162 (validMask!0 mask!853))))

(assert (=> start!6166 e!26751))

(assert (=> start!6166 true))

(declare-fun b!42264 () Bool)

(assert (=> b!42264 (= e!26751 (not true))))

(declare-datatypes ((array!2779 0))(
  ( (array!2780 (arr!1333 (Array (_ BitVec 32) (_ BitVec 64))) (size!1497 (_ BitVec 32))) )
))
(declare-fun lt!17403 () array!2779)

(declare-fun arrayCountValidKeys!0 (array!2779 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42264 (= (arrayCountValidKeys!0 lt!17403 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1103 0))(
  ( (Unit!1104) )
))
(declare-fun lt!17404 () Unit!1103)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2779 (_ BitVec 32) (_ BitVec 32)) Unit!1103)

(assert (=> b!42264 (= lt!17404 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17403 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42264 (= lt!17403 (array!2780 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6166 res!25162) b!42264))

(declare-fun m!35873 () Bool)

(assert (=> start!6166 m!35873))

(declare-fun m!35875 () Bool)

(assert (=> b!42264 m!35875))

(declare-fun m!35877 () Bool)

(assert (=> b!42264 m!35877))

(push 1)

(assert (not b!42264))

(assert (not start!6166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

