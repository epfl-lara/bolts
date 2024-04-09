; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116518 () Bool)

(assert start!116518)

(declare-fun b!1373973 () Bool)

(declare-fun res!917280 () Bool)

(declare-fun e!778390 () Bool)

(assert (=> b!1373973 (=> (not res!917280) (not e!778390))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373973 (= res!917280 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1373974 () Bool)

(declare-fun res!917278 () Bool)

(assert (=> b!1373974 (=> (not res!917278) (not e!778390))))

(declare-datatypes ((array!93141 0))(
  ( (array!93142 (arr!44972 (Array (_ BitVec 32) (_ BitVec 64))) (size!45523 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93141)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373974 (= res!917278 (and (bvslt (size!45523 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45523 a!4142))))))

(declare-fun res!917277 () Bool)

(assert (=> start!116518 (=> (not res!917277) (not e!778390))))

(assert (=> start!116518 (= res!917277 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45523 a!4142))))))

(assert (=> start!116518 e!778390))

(assert (=> start!116518 true))

(declare-fun array_inv!33917 (array!93141) Bool)

(assert (=> start!116518 (array_inv!33917 a!4142)))

(declare-fun b!1373975 () Bool)

(assert (=> b!1373975 (= e!778390 false)))

(declare-fun lt!603158 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93141 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373975 (= lt!603158 (arrayCountValidKeys!0 (array!93142 (store (arr!44972 a!4142) i!1457 k0!2959) (size!45523 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603157 () (_ BitVec 32))

(assert (=> b!1373975 (= lt!603157 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373972 () Bool)

(declare-fun res!917279 () Bool)

(assert (=> b!1373972 (=> (not res!917279) (not e!778390))))

(assert (=> b!1373972 (= res!917279 (validKeyInArray!0 (select (arr!44972 a!4142) i!1457)))))

(assert (= (and start!116518 res!917277) b!1373972))

(assert (= (and b!1373972 res!917279) b!1373973))

(assert (= (and b!1373973 res!917280) b!1373974))

(assert (= (and b!1373974 res!917278) b!1373975))

(declare-fun m!1257225 () Bool)

(assert (=> b!1373973 m!1257225))

(declare-fun m!1257227 () Bool)

(assert (=> start!116518 m!1257227))

(declare-fun m!1257229 () Bool)

(assert (=> b!1373975 m!1257229))

(declare-fun m!1257231 () Bool)

(assert (=> b!1373975 m!1257231))

(declare-fun m!1257233 () Bool)

(assert (=> b!1373975 m!1257233))

(declare-fun m!1257235 () Bool)

(assert (=> b!1373972 m!1257235))

(assert (=> b!1373972 m!1257235))

(declare-fun m!1257237 () Bool)

(assert (=> b!1373972 m!1257237))

(check-sat (not b!1373975) (not b!1373972) (not start!116518) (not b!1373973))
