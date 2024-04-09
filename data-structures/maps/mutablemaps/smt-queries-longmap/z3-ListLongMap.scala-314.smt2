; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5364 () Bool)

(assert start!5364)

(declare-fun b!38534 () Bool)

(declare-fun res!23256 () Bool)

(declare-fun e!24476 () Bool)

(assert (=> b!38534 (=> res!23256 e!24476)))

(declare-datatypes ((List!1057 0))(
  ( (Nil!1054) (Cons!1053 (h!1621 (_ BitVec 64)) (t!3898 List!1057)) )
))
(declare-fun contains!499 (List!1057 (_ BitVec 64)) Bool)

(assert (=> b!38534 (= res!23256 (contains!499 Nil!1054 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38535 () Bool)

(assert (=> b!38535 (= e!24476 true)))

(declare-fun lt!14389 () Bool)

(declare-fun noDuplicate!28 (List!1057) Bool)

(assert (=> b!38535 (= lt!14389 (noDuplicate!28 Nil!1054))))

(declare-fun b!38532 () Bool)

(declare-fun e!24477 () Bool)

(assert (=> b!38532 (= e!24477 (not e!24476))))

(declare-fun res!23257 () Bool)

(assert (=> b!38532 (=> res!23257 e!24476)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38532 (= res!23257 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2559 0))(
  ( (array!2560 (arr!1223 (Array (_ BitVec 32) (_ BitVec 64))) (size!1330 (_ BitVec 32))) )
))
(declare-fun lt!14392 () array!2559)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2559 (_ BitVec 32)) Bool)

(assert (=> b!38532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14392 mask!853)))

(declare-datatypes ((Unit!950 0))(
  ( (Unit!951) )
))
(declare-fun lt!14390 () Unit!950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2559 (_ BitVec 32) (_ BitVec 32)) Unit!950)

(assert (=> b!38532 (= lt!14390 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14392 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2559 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38532 (= (arrayCountValidKeys!0 lt!14392 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14391 () Unit!950)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2559 (_ BitVec 32) (_ BitVec 32)) Unit!950)

(assert (=> b!38532 (= lt!14391 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14392 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38532 (= lt!14392 (array!2560 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun res!23255 () Bool)

(assert (=> start!5364 (=> (not res!23255) (not e!24477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5364 (= res!23255 (validMask!0 mask!853))))

(assert (=> start!5364 e!24477))

(assert (=> start!5364 true))

(declare-fun b!38533 () Bool)

(declare-fun res!23254 () Bool)

(assert (=> b!38533 (=> res!23254 e!24476)))

(assert (=> b!38533 (= res!23254 (contains!499 Nil!1054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5364 res!23255) b!38532))

(assert (= (and b!38532 (not res!23257)) b!38533))

(assert (= (and b!38533 (not res!23254)) b!38534))

(assert (= (and b!38534 (not res!23256)) b!38535))

(declare-fun m!31227 () Bool)

(assert (=> b!38534 m!31227))

(declare-fun m!31229 () Bool)

(assert (=> b!38532 m!31229))

(declare-fun m!31231 () Bool)

(assert (=> b!38532 m!31231))

(declare-fun m!31233 () Bool)

(assert (=> b!38532 m!31233))

(declare-fun m!31235 () Bool)

(assert (=> b!38532 m!31235))

(declare-fun m!31237 () Bool)

(assert (=> start!5364 m!31237))

(declare-fun m!31239 () Bool)

(assert (=> b!38533 m!31239))

(declare-fun m!31241 () Bool)

(assert (=> b!38535 m!31241))

(check-sat (not b!38532) (not b!38535) (not b!38534) (not b!38533) (not start!5364))
