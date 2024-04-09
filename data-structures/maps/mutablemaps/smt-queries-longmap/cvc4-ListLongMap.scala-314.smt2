; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5366 () Bool)

(assert start!5366)

(declare-fun b!38544 () Bool)

(declare-fun e!24482 () Bool)

(declare-fun e!24483 () Bool)

(assert (=> b!38544 (= e!24482 (not e!24483))))

(declare-fun res!23269 () Bool)

(assert (=> b!38544 (=> res!23269 e!24483)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38544 (= res!23269 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2561 0))(
  ( (array!2562 (arr!1224 (Array (_ BitVec 32) (_ BitVec 64))) (size!1331 (_ BitVec 32))) )
))
(declare-fun lt!14401 () array!2561)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2561 (_ BitVec 32)) Bool)

(assert (=> b!38544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14401 mask!853)))

(declare-datatypes ((Unit!952 0))(
  ( (Unit!953) )
))
(declare-fun lt!14403 () Unit!952)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2561 (_ BitVec 32) (_ BitVec 32)) Unit!952)

(assert (=> b!38544 (= lt!14403 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14401 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2561 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38544 (= (arrayCountValidKeys!0 lt!14401 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14404 () Unit!952)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2561 (_ BitVec 32) (_ BitVec 32)) Unit!952)

(assert (=> b!38544 (= lt!14404 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14401 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38544 (= lt!14401 (array!2562 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38546 () Bool)

(declare-fun res!23267 () Bool)

(assert (=> b!38546 (=> res!23267 e!24483)))

(declare-datatypes ((List!1058 0))(
  ( (Nil!1055) (Cons!1054 (h!1622 (_ BitVec 64)) (t!3899 List!1058)) )
))
(declare-fun contains!500 (List!1058 (_ BitVec 64)) Bool)

(assert (=> b!38546 (= res!23267 (contains!500 Nil!1055 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38547 () Bool)

(assert (=> b!38547 (= e!24483 true)))

(declare-fun lt!14402 () Bool)

(declare-fun noDuplicate!29 (List!1058) Bool)

(assert (=> b!38547 (= lt!14402 (noDuplicate!29 Nil!1055))))

(declare-fun b!38545 () Bool)

(declare-fun res!23266 () Bool)

(assert (=> b!38545 (=> res!23266 e!24483)))

(assert (=> b!38545 (= res!23266 (contains!500 Nil!1055 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23268 () Bool)

(assert (=> start!5366 (=> (not res!23268) (not e!24482))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5366 (= res!23268 (validMask!0 mask!853))))

(assert (=> start!5366 e!24482))

(assert (=> start!5366 true))

(assert (= (and start!5366 res!23268) b!38544))

(assert (= (and b!38544 (not res!23269)) b!38545))

(assert (= (and b!38545 (not res!23266)) b!38546))

(assert (= (and b!38546 (not res!23267)) b!38547))

(declare-fun m!31243 () Bool)

(assert (=> b!38546 m!31243))

(declare-fun m!31245 () Bool)

(assert (=> b!38544 m!31245))

(declare-fun m!31247 () Bool)

(assert (=> b!38544 m!31247))

(declare-fun m!31249 () Bool)

(assert (=> b!38544 m!31249))

(declare-fun m!31251 () Bool)

(assert (=> b!38544 m!31251))

(declare-fun m!31253 () Bool)

(assert (=> b!38545 m!31253))

(declare-fun m!31255 () Bool)

(assert (=> b!38547 m!31255))

(declare-fun m!31257 () Bool)

(assert (=> start!5366 m!31257))

(push 1)

(assert (not start!5366))

(assert (not b!38544))

(assert (not b!38546))

(assert (not b!38547))

(assert (not b!38545))

(check-sat)

