; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5332 () Bool)

(assert start!5332)

(declare-fun b!38342 () Bool)

(declare-fun res!23063 () Bool)

(declare-fun e!24381 () Bool)

(assert (=> b!38342 (=> res!23063 e!24381)))

(declare-datatypes ((List!1041 0))(
  ( (Nil!1038) (Cons!1037 (h!1605 (_ BitVec 64)) (t!3882 List!1041)) )
))
(declare-fun contains!483 (List!1041 (_ BitVec 64)) Bool)

(assert (=> b!38342 (= res!23063 (contains!483 Nil!1038 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38340 () Bool)

(declare-fun e!24380 () Bool)

(assert (=> b!38340 (= e!24380 (not e!24381))))

(declare-fun res!23065 () Bool)

(assert (=> b!38340 (=> res!23065 e!24381)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38340 (= res!23065 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2527 0))(
  ( (array!2528 (arr!1207 (Array (_ BitVec 32) (_ BitVec 64))) (size!1314 (_ BitVec 32))) )
))
(declare-fun lt!14200 () array!2527)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2527 (_ BitVec 32)) Bool)

(assert (=> b!38340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14200 mask!853)))

(declare-datatypes ((Unit!918 0))(
  ( (Unit!919) )
))
(declare-fun lt!14198 () Unit!918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2527 (_ BitVec 32) (_ BitVec 32)) Unit!918)

(assert (=> b!38340 (= lt!14198 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14200 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2527 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38340 (= (arrayCountValidKeys!0 lt!14200 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14197 () Unit!918)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2527 (_ BitVec 32) (_ BitVec 32)) Unit!918)

(assert (=> b!38340 (= lt!14197 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14200 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38340 (= lt!14200 (array!2528 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun res!23062 () Bool)

(assert (=> start!5332 (=> (not res!23062) (not e!24380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5332 (= res!23062 (validMask!0 mask!853))))

(assert (=> start!5332 e!24380))

(assert (=> start!5332 true))

(declare-fun b!38343 () Bool)

(assert (=> b!38343 (= e!24381 true)))

(declare-fun lt!14199 () Bool)

(declare-fun noDuplicate!12 (List!1041) Bool)

(assert (=> b!38343 (= lt!14199 (noDuplicate!12 Nil!1038))))

(declare-fun b!38341 () Bool)

(declare-fun res!23064 () Bool)

(assert (=> b!38341 (=> res!23064 e!24381)))

(assert (=> b!38341 (= res!23064 (contains!483 Nil!1038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5332 res!23062) b!38340))

(assert (= (and b!38340 (not res!23065)) b!38341))

(assert (= (and b!38341 (not res!23064)) b!38342))

(assert (= (and b!38342 (not res!23063)) b!38343))

(declare-fun m!30971 () Bool)

(assert (=> b!38343 m!30971))

(declare-fun m!30973 () Bool)

(assert (=> start!5332 m!30973))

(declare-fun m!30975 () Bool)

(assert (=> b!38342 m!30975))

(declare-fun m!30977 () Bool)

(assert (=> b!38340 m!30977))

(declare-fun m!30979 () Bool)

(assert (=> b!38340 m!30979))

(declare-fun m!30981 () Bool)

(assert (=> b!38340 m!30981))

(declare-fun m!30983 () Bool)

(assert (=> b!38340 m!30983))

(declare-fun m!30985 () Bool)

(assert (=> b!38341 m!30985))

(push 1)

(assert (not start!5332))

(assert (not b!38340))

(assert (not b!38343))

(assert (not b!38341))

(assert (not b!38342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

