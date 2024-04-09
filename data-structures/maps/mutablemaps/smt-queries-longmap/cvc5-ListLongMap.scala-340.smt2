; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6196 () Bool)

(assert start!6196)

(declare-fun res!25180 () Bool)

(declare-fun e!26787 () Bool)

(assert (=> start!6196 (=> (not res!25180) (not e!26787))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6196 (= res!25180 (validMask!0 mask!853))))

(assert (=> start!6196 e!26787))

(assert (=> start!6196 true))

(declare-fun b!42318 () Bool)

(assert (=> b!42318 (= e!26787 (not true))))

(declare-datatypes ((array!2791 0))(
  ( (array!2792 (arr!1339 (Array (_ BitVec 32) (_ BitVec 64))) (size!1506 (_ BitVec 32))) )
))
(declare-fun lt!17459 () array!2791)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2791 (_ BitVec 32)) Bool)

(assert (=> b!42318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17459 mask!853)))

(declare-datatypes ((Unit!1115 0))(
  ( (Unit!1116) )
))
(declare-fun lt!17461 () Unit!1115)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2791 (_ BitVec 32) (_ BitVec 32)) Unit!1115)

(assert (=> b!42318 (= lt!17461 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17459 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2791 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42318 (= (arrayCountValidKeys!0 lt!17459 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17460 () Unit!1115)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2791 (_ BitVec 32) (_ BitVec 32)) Unit!1115)

(assert (=> b!42318 (= lt!17460 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17459 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42318 (= lt!17459 (array!2792 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!6196 res!25180) b!42318))

(declare-fun m!35933 () Bool)

(assert (=> start!6196 m!35933))

(declare-fun m!35935 () Bool)

(assert (=> b!42318 m!35935))

(declare-fun m!35937 () Bool)

(assert (=> b!42318 m!35937))

(declare-fun m!35939 () Bool)

(assert (=> b!42318 m!35939))

(declare-fun m!35941 () Bool)

(assert (=> b!42318 m!35941))

(push 1)

(assert (not b!42318))

(assert (not start!6196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

