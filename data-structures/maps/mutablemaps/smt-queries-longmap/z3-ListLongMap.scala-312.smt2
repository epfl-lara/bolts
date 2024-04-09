; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5352 () Bool)

(assert start!5352)

(declare-fun b!38460 () Bool)

(declare-fun e!24441 () Bool)

(declare-fun e!24440 () Bool)

(assert (=> b!38460 (= e!24441 (not e!24440))))

(declare-fun res!23182 () Bool)

(assert (=> b!38460 (=> res!23182 e!24440)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38460 (= res!23182 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2547 0))(
  ( (array!2548 (arr!1217 (Array (_ BitVec 32) (_ BitVec 64))) (size!1324 (_ BitVec 32))) )
))
(declare-fun lt!14319 () array!2547)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2547 (_ BitVec 32)) Bool)

(assert (=> b!38460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14319 mask!853)))

(declare-datatypes ((Unit!938 0))(
  ( (Unit!939) )
))
(declare-fun lt!14320 () Unit!938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2547 (_ BitVec 32) (_ BitVec 32)) Unit!938)

(assert (=> b!38460 (= lt!14320 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14319 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2547 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38460 (= (arrayCountValidKeys!0 lt!14319 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14318 () Unit!938)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2547 (_ BitVec 32) (_ BitVec 32)) Unit!938)

(assert (=> b!38460 (= lt!14318 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14319 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38460 (= lt!14319 (array!2548 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38461 () Bool)

(declare-fun res!23184 () Bool)

(assert (=> b!38461 (=> res!23184 e!24440)))

(declare-datatypes ((List!1051 0))(
  ( (Nil!1048) (Cons!1047 (h!1615 (_ BitVec 64)) (t!3892 List!1051)) )
))
(declare-fun contains!493 (List!1051 (_ BitVec 64)) Bool)

(assert (=> b!38461 (= res!23184 (contains!493 Nil!1048 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38463 () Bool)

(assert (=> b!38463 (= e!24440 true)))

(declare-fun lt!14317 () Bool)

(declare-fun noDuplicate!22 (List!1051) Bool)

(assert (=> b!38463 (= lt!14317 (noDuplicate!22 Nil!1048))))

(declare-fun b!38462 () Bool)

(declare-fun res!23185 () Bool)

(assert (=> b!38462 (=> res!23185 e!24440)))

(assert (=> b!38462 (= res!23185 (contains!493 Nil!1048 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23183 () Bool)

(assert (=> start!5352 (=> (not res!23183) (not e!24441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5352 (= res!23183 (validMask!0 mask!853))))

(assert (=> start!5352 e!24441))

(assert (=> start!5352 true))

(assert (= (and start!5352 res!23183) b!38460))

(assert (= (and b!38460 (not res!23182)) b!38461))

(assert (= (and b!38461 (not res!23184)) b!38462))

(assert (= (and b!38462 (not res!23185)) b!38463))

(declare-fun m!31131 () Bool)

(assert (=> b!38461 m!31131))

(declare-fun m!31133 () Bool)

(assert (=> b!38460 m!31133))

(declare-fun m!31135 () Bool)

(assert (=> b!38460 m!31135))

(declare-fun m!31137 () Bool)

(assert (=> b!38460 m!31137))

(declare-fun m!31139 () Bool)

(assert (=> b!38460 m!31139))

(declare-fun m!31141 () Bool)

(assert (=> start!5352 m!31141))

(declare-fun m!31143 () Bool)

(assert (=> b!38462 m!31143))

(declare-fun m!31145 () Bool)

(assert (=> b!38463 m!31145))

(check-sat (not b!38460) (not start!5352) (not b!38462) (not b!38463) (not b!38461))
