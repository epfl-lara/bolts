; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5334 () Bool)

(assert start!5334)

(declare-fun b!38353 () Bool)

(declare-fun res!23077 () Bool)

(declare-fun e!24386 () Bool)

(assert (=> b!38353 (=> res!23077 e!24386)))

(declare-datatypes ((List!1042 0))(
  ( (Nil!1039) (Cons!1038 (h!1606 (_ BitVec 64)) (t!3883 List!1042)) )
))
(declare-fun contains!484 (List!1042 (_ BitVec 64)) Bool)

(assert (=> b!38353 (= res!23077 (contains!484 Nil!1039 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38352 () Bool)

(declare-fun e!24387 () Bool)

(assert (=> b!38352 (= e!24387 (not e!24386))))

(declare-fun res!23075 () Bool)

(assert (=> b!38352 (=> res!23075 e!24386)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!38352 (= res!23075 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2529 0))(
  ( (array!2530 (arr!1208 (Array (_ BitVec 32) (_ BitVec 64))) (size!1315 (_ BitVec 32))) )
))
(declare-fun lt!14211 () array!2529)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2529 (_ BitVec 32)) Bool)

(assert (=> b!38352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14211 mask!853)))

(declare-datatypes ((Unit!920 0))(
  ( (Unit!921) )
))
(declare-fun lt!14212 () Unit!920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2529 (_ BitVec 32) (_ BitVec 32)) Unit!920)

(assert (=> b!38352 (= lt!14212 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14211 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2529 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38352 (= (arrayCountValidKeys!0 lt!14211 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14209 () Unit!920)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2529 (_ BitVec 32) (_ BitVec 32)) Unit!920)

(assert (=> b!38352 (= lt!14209 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14211 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38352 (= lt!14211 (array!2530 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38355 () Bool)

(assert (=> b!38355 (= e!24386 true)))

(declare-fun lt!14210 () Bool)

(declare-fun noDuplicate!13 (List!1042) Bool)

(assert (=> b!38355 (= lt!14210 (noDuplicate!13 Nil!1039))))

(declare-fun res!23074 () Bool)

(assert (=> start!5334 (=> (not res!23074) (not e!24387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5334 (= res!23074 (validMask!0 mask!853))))

(assert (=> start!5334 e!24387))

(assert (=> start!5334 true))

(declare-fun b!38354 () Bool)

(declare-fun res!23076 () Bool)

(assert (=> b!38354 (=> res!23076 e!24386)))

(assert (=> b!38354 (= res!23076 (contains!484 Nil!1039 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5334 res!23074) b!38352))

(assert (= (and b!38352 (not res!23075)) b!38353))

(assert (= (and b!38353 (not res!23077)) b!38354))

(assert (= (and b!38354 (not res!23076)) b!38355))

(declare-fun m!30987 () Bool)

(assert (=> b!38352 m!30987))

(declare-fun m!30989 () Bool)

(assert (=> b!38352 m!30989))

(declare-fun m!30991 () Bool)

(assert (=> b!38352 m!30991))

(declare-fun m!30993 () Bool)

(assert (=> b!38352 m!30993))

(declare-fun m!30995 () Bool)

(assert (=> b!38353 m!30995))

(declare-fun m!30997 () Bool)

(assert (=> b!38354 m!30997))

(declare-fun m!30999 () Bool)

(assert (=> b!38355 m!30999))

(declare-fun m!31001 () Bool)

(assert (=> start!5334 m!31001))

(check-sat (not b!38354) (not b!38352) (not start!5334) (not b!38355) (not b!38353))
