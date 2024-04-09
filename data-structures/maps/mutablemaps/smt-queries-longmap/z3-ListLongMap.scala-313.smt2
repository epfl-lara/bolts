; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5358 () Bool)

(assert start!5358)

(declare-fun b!38498 () Bool)

(declare-fun res!23221 () Bool)

(declare-fun e!24459 () Bool)

(assert (=> b!38498 (=> res!23221 e!24459)))

(declare-datatypes ((List!1054 0))(
  ( (Nil!1051) (Cons!1050 (h!1618 (_ BitVec 64)) (t!3895 List!1054)) )
))
(declare-fun contains!496 (List!1054 (_ BitVec 64)) Bool)

(assert (=> b!38498 (= res!23221 (contains!496 Nil!1051 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!23219 () Bool)

(declare-fun e!24458 () Bool)

(assert (=> start!5358 (=> (not res!23219) (not e!24458))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5358 (= res!23219 (validMask!0 mask!853))))

(assert (=> start!5358 e!24458))

(assert (=> start!5358 true))

(declare-fun b!38497 () Bool)

(declare-fun res!23220 () Bool)

(assert (=> b!38497 (=> res!23220 e!24459)))

(assert (=> b!38497 (= res!23220 (contains!496 Nil!1051 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!38499 () Bool)

(assert (=> b!38499 (= e!24459 true)))

(declare-fun lt!14353 () Bool)

(declare-fun noDuplicate!25 (List!1054) Bool)

(assert (=> b!38499 (= lt!14353 (noDuplicate!25 Nil!1051))))

(declare-fun b!38496 () Bool)

(assert (=> b!38496 (= e!24458 (not e!24459))))

(declare-fun res!23218 () Bool)

(assert (=> b!38496 (=> res!23218 e!24459)))

(assert (=> b!38496 (= res!23218 (or (bvsge (bvadd #b00000000000000000000000000000001 mask!853) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853))))))

(declare-datatypes ((array!2553 0))(
  ( (array!2554 (arr!1220 (Array (_ BitVec 32) (_ BitVec 64))) (size!1327 (_ BitVec 32))) )
))
(declare-fun lt!14356 () array!2553)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2553 (_ BitVec 32)) Bool)

(assert (=> b!38496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14356 mask!853)))

(declare-datatypes ((Unit!944 0))(
  ( (Unit!945) )
))
(declare-fun lt!14355 () Unit!944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2553 (_ BitVec 32) (_ BitVec 32)) Unit!944)

(assert (=> b!38496 (= lt!14355 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14356 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2553 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38496 (= (arrayCountValidKeys!0 lt!14356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14354 () Unit!944)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2553 (_ BitVec 32) (_ BitVec 32)) Unit!944)

(assert (=> b!38496 (= lt!14354 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38496 (= lt!14356 (array!2554 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (= (and start!5358 res!23219) b!38496))

(assert (= (and b!38496 (not res!23218)) b!38497))

(assert (= (and b!38497 (not res!23220)) b!38498))

(assert (= (and b!38498 (not res!23221)) b!38499))

(declare-fun m!31179 () Bool)

(assert (=> b!38496 m!31179))

(declare-fun m!31181 () Bool)

(assert (=> b!38496 m!31181))

(declare-fun m!31183 () Bool)

(assert (=> b!38496 m!31183))

(declare-fun m!31185 () Bool)

(assert (=> b!38496 m!31185))

(declare-fun m!31187 () Bool)

(assert (=> b!38497 m!31187))

(declare-fun m!31189 () Bool)

(assert (=> start!5358 m!31189))

(declare-fun m!31191 () Bool)

(assert (=> b!38498 m!31191))

(declare-fun m!31193 () Bool)

(assert (=> b!38499 m!31193))

(check-sat (not start!5358) (not b!38497) (not b!38496) (not b!38499) (not b!38498))
(check-sat)
