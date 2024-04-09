; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6240 () Bool)

(assert start!6240)

(declare-fun res!25219 () Bool)

(declare-fun e!26853 () Bool)

(assert (=> start!6240 (=> (not res!25219) (not e!26853))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6240 (= res!25219 (validMask!0 mask!853))))

(assert (=> start!6240 e!26853))

(assert (=> start!6240 true))

(declare-fun b!42411 () Bool)

(assert (=> b!42411 (= e!26853 (not true))))

(declare-datatypes ((array!2805 0))(
  ( (array!2806 (arr!1346 (Array (_ BitVec 32) (_ BitVec 64))) (size!1516 (_ BitVec 32))) )
))
(declare-fun lt!17578 () array!2805)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2805 (_ BitVec 32)) Bool)

(assert (=> b!42411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17578 mask!853)))

(declare-datatypes ((Unit!1129 0))(
  ( (Unit!1130) )
))
(declare-fun lt!17577 () Unit!1129)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2805 (_ BitVec 32) (_ BitVec 32)) Unit!1129)

(assert (=> b!42411 (= lt!17577 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17578 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2805 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42411 (= (arrayCountValidKeys!0 lt!17578 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17576 () Unit!1129)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2805 (_ BitVec 32) (_ BitVec 32)) Unit!1129)

(assert (=> b!42411 (= lt!17576 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17578 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42411 (= lt!17578 (array!2806 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6240 res!25219) b!42411))

(declare-fun m!36057 () Bool)

(assert (=> start!6240 m!36057))

(declare-fun m!36059 () Bool)

(assert (=> b!42411 m!36059))

(declare-fun m!36061 () Bool)

(assert (=> b!42411 m!36061))

(declare-fun m!36063 () Bool)

(assert (=> b!42411 m!36063))

(declare-fun m!36065 () Bool)

(assert (=> b!42411 m!36065))

(check-sat (not start!6240) (not b!42411))
(check-sat)
