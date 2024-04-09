; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116506 () Bool)

(assert start!116506)

(declare-fun res!917206 () Bool)

(declare-fun e!778353 () Bool)

(assert (=> start!116506 (=> (not res!917206) (not e!778353))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93129 0))(
  ( (array!93130 (arr!44966 (Array (_ BitVec 32) (_ BitVec 64))) (size!45517 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93129)

(assert (=> start!116506 (= res!917206 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45517 a!4142))))))

(assert (=> start!116506 e!778353))

(assert (=> start!116506 true))

(declare-fun array_inv!33911 (array!93129) Bool)

(assert (=> start!116506 (array_inv!33911 a!4142)))

(declare-fun b!1373901 () Bool)

(declare-fun res!917208 () Bool)

(assert (=> b!1373901 (=> (not res!917208) (not e!778353))))

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373901 (= res!917208 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1373900 () Bool)

(declare-fun res!917205 () Bool)

(assert (=> b!1373900 (=> (not res!917205) (not e!778353))))

(assert (=> b!1373900 (= res!917205 (validKeyInArray!0 (select (arr!44966 a!4142) i!1457)))))

(declare-fun b!1373902 () Bool)

(declare-fun res!917207 () Bool)

(assert (=> b!1373902 (=> (not res!917207) (not e!778353))))

(assert (=> b!1373902 (= res!917207 (and (bvslt (size!45517 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45517 a!4142))))))

(declare-fun b!1373903 () Bool)

(assert (=> b!1373903 (= e!778353 false)))

(declare-fun lt!603121 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93129 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373903 (= lt!603121 (arrayCountValidKeys!0 (array!93130 (store (arr!44966 a!4142) i!1457 k0!2959) (size!45517 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603122 () (_ BitVec 32))

(assert (=> b!1373903 (= lt!603122 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116506 res!917206) b!1373900))

(assert (= (and b!1373900 res!917205) b!1373901))

(assert (= (and b!1373901 res!917208) b!1373902))

(assert (= (and b!1373902 res!917207) b!1373903))

(declare-fun m!1257141 () Bool)

(assert (=> start!116506 m!1257141))

(declare-fun m!1257143 () Bool)

(assert (=> b!1373901 m!1257143))

(declare-fun m!1257145 () Bool)

(assert (=> b!1373900 m!1257145))

(assert (=> b!1373900 m!1257145))

(declare-fun m!1257147 () Bool)

(assert (=> b!1373900 m!1257147))

(declare-fun m!1257149 () Bool)

(assert (=> b!1373903 m!1257149))

(declare-fun m!1257151 () Bool)

(assert (=> b!1373903 m!1257151))

(declare-fun m!1257153 () Bool)

(assert (=> b!1373903 m!1257153))

(check-sat (not b!1373901) (not b!1373903) (not start!116506) (not b!1373900))
