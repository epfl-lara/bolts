; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5336 () Bool)

(assert start!5336)

(declare-fun b!38367 () Bool)

(declare-fun e!24393 () Bool)

(assert (=> b!38367 (= e!24393 true)))

(declare-fun lt!14223 () Bool)

(declare-datatypes ((List!1043 0))(
  ( (Nil!1040) (Cons!1039 (h!1607 (_ BitVec 64)) (t!3884 List!1043)) )
))
(declare-fun noDuplicate!14 (List!1043) Bool)

(assert (=> b!38367 (= lt!14223 (noDuplicate!14 Nil!1040))))

(declare-fun b!38366 () Bool)

(declare-fun res!23086 () Bool)

(assert (=> b!38366 (=> res!23086 e!24393)))

(declare-fun contains!485 (List!1043 (_ BitVec 64)) Bool)

(assert (=> b!38366 (= res!23086 (contains!485 Nil!1040 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38364 () Bool)

(declare-fun e!24392 () Bool)

(assert (=> b!38364 (= e!24392 (not e!24393))))

(declare-fun res!23089 () Bool)

(assert (=> b!38364 (=> res!23089 e!24393)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38364 (= res!23089 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2531 0))(
  ( (array!2532 (arr!1209 (Array (_ BitVec 32) (_ BitVec 64))) (size!1316 (_ BitVec 32))) )
))
(declare-fun lt!14224 () array!2531)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2531 (_ BitVec 32)) Bool)

(assert (=> b!38364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14224 mask!853)))

(declare-datatypes ((Unit!922 0))(
  ( (Unit!923) )
))
(declare-fun lt!14222 () Unit!922)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2531 (_ BitVec 32) (_ BitVec 32)) Unit!922)

(assert (=> b!38364 (= lt!14222 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14224 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2531 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38364 (= (arrayCountValidKeys!0 lt!14224 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14221 () Unit!922)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2531 (_ BitVec 32) (_ BitVec 32)) Unit!922)

(assert (=> b!38364 (= lt!14221 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14224 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38364 (= lt!14224 (array!2532 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38365 () Bool)

(declare-fun res!23087 () Bool)

(assert (=> b!38365 (=> res!23087 e!24393)))

(assert (=> b!38365 (= res!23087 (contains!485 Nil!1040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23088 () Bool)

(assert (=> start!5336 (=> (not res!23088) (not e!24392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5336 (= res!23088 (validMask!0 mask!853))))

(assert (=> start!5336 e!24392))

(assert (=> start!5336 true))

(assert (= (and start!5336 res!23088) b!38364))

(assert (= (and b!38364 (not res!23089)) b!38365))

(assert (= (and b!38365 (not res!23087)) b!38366))

(assert (= (and b!38366 (not res!23086)) b!38367))

(declare-fun m!31003 () Bool)

(assert (=> b!38367 m!31003))

(declare-fun m!31005 () Bool)

(assert (=> b!38366 m!31005))

(declare-fun m!31007 () Bool)

(assert (=> start!5336 m!31007))

(declare-fun m!31009 () Bool)

(assert (=> b!38365 m!31009))

(declare-fun m!31011 () Bool)

(assert (=> b!38364 m!31011))

(declare-fun m!31013 () Bool)

(assert (=> b!38364 m!31013))

(declare-fun m!31015 () Bool)

(assert (=> b!38364 m!31015))

(declare-fun m!31017 () Bool)

(assert (=> b!38364 m!31017))

(push 1)

(assert (not start!5336))

(assert (not b!38366))

(assert (not b!38365))

(assert (not b!38364))

(assert (not b!38367))

(check-sat)

