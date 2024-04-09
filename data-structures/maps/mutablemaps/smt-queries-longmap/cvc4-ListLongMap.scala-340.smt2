; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6200 () Bool)

(assert start!6200)

(declare-fun res!25186 () Bool)

(declare-fun e!26793 () Bool)

(assert (=> start!6200 (=> (not res!25186) (not e!26793))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6200 (= res!25186 (validMask!0 mask!853))))

(assert (=> start!6200 e!26793))

(assert (=> start!6200 true))

(declare-fun b!42324 () Bool)

(assert (=> b!42324 (= e!26793 (not true))))

(declare-datatypes ((array!2795 0))(
  ( (array!2796 (arr!1341 (Array (_ BitVec 32) (_ BitVec 64))) (size!1508 (_ BitVec 32))) )
))
(declare-fun lt!17478 () array!2795)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2795 (_ BitVec 32)) Bool)

(assert (=> b!42324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17478 mask!853)))

(declare-datatypes ((Unit!1119 0))(
  ( (Unit!1120) )
))
(declare-fun lt!17477 () Unit!1119)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2795 (_ BitVec 32) (_ BitVec 32)) Unit!1119)

(assert (=> b!42324 (= lt!17477 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17478 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2795 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42324 (= (arrayCountValidKeys!0 lt!17478 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17479 () Unit!1119)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2795 (_ BitVec 32) (_ BitVec 32)) Unit!1119)

(assert (=> b!42324 (= lt!17479 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17478 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42324 (= lt!17478 (array!2796 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6200 res!25186) b!42324))

(declare-fun m!35953 () Bool)

(assert (=> start!6200 m!35953))

(declare-fun m!35955 () Bool)

(assert (=> b!42324 m!35955))

(declare-fun m!35957 () Bool)

(assert (=> b!42324 m!35957))

(declare-fun m!35959 () Bool)

(assert (=> b!42324 m!35959))

(declare-fun m!35961 () Bool)

(assert (=> b!42324 m!35961))

(push 1)

(assert (not start!6200))

(assert (not b!42324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

