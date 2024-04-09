; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5340 () Bool)

(assert start!5340)

(declare-fun res!23111 () Bool)

(declare-fun e!24404 () Bool)

(assert (=> start!5340 (=> (not res!23111) (not e!24404))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5340 (= res!23111 (validMask!0 mask!853))))

(assert (=> start!5340 e!24404))

(assert (=> start!5340 true))

(declare-fun b!38389 () Bool)

(declare-fun res!23110 () Bool)

(declare-fun e!24405 () Bool)

(assert (=> b!38389 (=> res!23110 e!24405)))

(declare-datatypes ((List!1045 0))(
  ( (Nil!1042) (Cons!1041 (h!1609 (_ BitVec 64)) (t!3886 List!1045)) )
))
(declare-fun contains!487 (List!1045 (_ BitVec 64)) Bool)

(assert (=> b!38389 (= res!23110 (contains!487 Nil!1042 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38391 () Bool)

(assert (=> b!38391 (= e!24405 true)))

(declare-fun lt!14245 () Bool)

(declare-fun noDuplicate!16 (List!1045) Bool)

(assert (=> b!38391 (= lt!14245 (noDuplicate!16 Nil!1042))))

(declare-fun b!38390 () Bool)

(declare-fun res!23112 () Bool)

(assert (=> b!38390 (=> res!23112 e!24405)))

(assert (=> b!38390 (= res!23112 (contains!487 Nil!1042 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38388 () Bool)

(assert (=> b!38388 (= e!24404 (not e!24405))))

(declare-fun res!23113 () Bool)

(assert (=> b!38388 (=> res!23113 e!24405)))

(assert (=> b!38388 (= res!23113 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2535 0))(
  ( (array!2536 (arr!1211 (Array (_ BitVec 32) (_ BitVec 64))) (size!1318 (_ BitVec 32))) )
))
(declare-fun lt!14247 () array!2535)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2535 (_ BitVec 32)) Bool)

(assert (=> b!38388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14247 mask!853)))

(declare-datatypes ((Unit!926 0))(
  ( (Unit!927) )
))
(declare-fun lt!14248 () Unit!926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2535 (_ BitVec 32) (_ BitVec 32)) Unit!926)

(assert (=> b!38388 (= lt!14248 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14247 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2535 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38388 (= (arrayCountValidKeys!0 lt!14247 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14246 () Unit!926)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2535 (_ BitVec 32) (_ BitVec 32)) Unit!926)

(assert (=> b!38388 (= lt!14246 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14247 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38388 (= lt!14247 (array!2536 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5340 res!23111) b!38388))

(assert (= (and b!38388 (not res!23113)) b!38389))

(assert (= (and b!38389 (not res!23110)) b!38390))

(assert (= (and b!38390 (not res!23112)) b!38391))

(declare-fun m!31035 () Bool)

(assert (=> b!38388 m!31035))

(declare-fun m!31037 () Bool)

(assert (=> b!38388 m!31037))

(declare-fun m!31039 () Bool)

(assert (=> b!38388 m!31039))

(declare-fun m!31041 () Bool)

(assert (=> b!38388 m!31041))

(declare-fun m!31043 () Bool)

(assert (=> start!5340 m!31043))

(declare-fun m!31045 () Bool)

(assert (=> b!38390 m!31045))

(declare-fun m!31047 () Bool)

(assert (=> b!38389 m!31047))

(declare-fun m!31049 () Bool)

(assert (=> b!38391 m!31049))

(check-sat (not b!38388) (not b!38389) (not b!38390) (not start!5340) (not b!38391))
(check-sat)
