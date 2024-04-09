; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86814 () Bool)

(assert start!86814)

(declare-fun b!1006032 () Bool)

(declare-fun res!675283 () Bool)

(declare-fun e!566365 () Bool)

(assert (=> b!1006032 (=> (not res!675283) (not e!566365))))

(declare-datatypes ((array!63465 0))(
  ( (array!63466 (arr!30551 (Array (_ BitVec 32) (_ BitVec 64))) (size!31054 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63465)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006032 (= res!675283 (validKeyInArray!0 (select (arr!30551 a!3219) j!170)))))

(declare-fun b!1006033 () Bool)

(declare-fun res!675276 () Bool)

(assert (=> b!1006033 (=> (not res!675276) (not e!566365))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006033 (= res!675276 (and (= (size!31054 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31054 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31054 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006034 () Bool)

(declare-fun res!675279 () Bool)

(declare-fun e!566363 () Bool)

(assert (=> b!1006034 (=> (not res!675279) (not e!566363))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006034 (= res!675279 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31054 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31054 a!3219))))))

(declare-fun res!675286 () Bool)

(assert (=> start!86814 (=> (not res!675286) (not e!566365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86814 (= res!675286 (validMask!0 mask!3464))))

(assert (=> start!86814 e!566365))

(declare-fun array_inv!23541 (array!63465) Bool)

(assert (=> start!86814 (array_inv!23541 a!3219)))

(assert (=> start!86814 true))

(declare-fun b!1006035 () Bool)

(declare-fun e!566364 () Bool)

(assert (=> b!1006035 (= e!566363 e!566364)))

(declare-fun res!675282 () Bool)

(assert (=> b!1006035 (=> (not res!675282) (not e!566364))))

(declare-datatypes ((SeekEntryResult!9483 0))(
  ( (MissingZero!9483 (index!40302 (_ BitVec 32))) (Found!9483 (index!40303 (_ BitVec 32))) (Intermediate!9483 (undefined!10295 Bool) (index!40304 (_ BitVec 32)) (x!87732 (_ BitVec 32))) (Undefined!9483) (MissingVacant!9483 (index!40305 (_ BitVec 32))) )
))
(declare-fun lt!444658 () SeekEntryResult!9483)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63465 (_ BitVec 32)) SeekEntryResult!9483)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006035 (= res!675282 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30551 a!3219) j!170) mask!3464) (select (arr!30551 a!3219) j!170) a!3219 mask!3464) lt!444658))))

(assert (=> b!1006035 (= lt!444658 (Intermediate!9483 false resIndex!38 resX!38))))

(declare-fun b!1006036 () Bool)

(declare-fun res!675284 () Bool)

(assert (=> b!1006036 (=> (not res!675284) (not e!566363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63465 (_ BitVec 32)) Bool)

(assert (=> b!1006036 (= res!675284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006037 () Bool)

(declare-fun res!675278 () Bool)

(assert (=> b!1006037 (=> (not res!675278) (not e!566363))))

(declare-datatypes ((List!21353 0))(
  ( (Nil!21350) (Cons!21349 (h!22532 (_ BitVec 64)) (t!30362 List!21353)) )
))
(declare-fun arrayNoDuplicates!0 (array!63465 (_ BitVec 32) List!21353) Bool)

(assert (=> b!1006037 (= res!675278 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21350))))

(declare-fun b!1006038 () Bool)

(declare-fun res!675280 () Bool)

(assert (=> b!1006038 (=> (not res!675280) (not e!566365))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006038 (= res!675280 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1006039 () Bool)

(declare-fun res!675277 () Bool)

(assert (=> b!1006039 (=> (not res!675277) (not e!566365))))

(assert (=> b!1006039 (= res!675277 (validKeyInArray!0 k0!2224))))

(declare-fun b!1006040 () Bool)

(assert (=> b!1006040 (= e!566364 false)))

(declare-fun lt!444660 () (_ BitVec 32))

(assert (=> b!1006040 (= lt!444660 (toIndex!0 (select (store (arr!30551 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun b!1006041 () Bool)

(assert (=> b!1006041 (= e!566365 e!566363)))

(declare-fun res!675285 () Bool)

(assert (=> b!1006041 (=> (not res!675285) (not e!566363))))

(declare-fun lt!444659 () SeekEntryResult!9483)

(assert (=> b!1006041 (= res!675285 (or (= lt!444659 (MissingVacant!9483 i!1194)) (= lt!444659 (MissingZero!9483 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63465 (_ BitVec 32)) SeekEntryResult!9483)

(assert (=> b!1006041 (= lt!444659 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1006042 () Bool)

(declare-fun res!675281 () Bool)

(assert (=> b!1006042 (=> (not res!675281) (not e!566364))))

(assert (=> b!1006042 (= res!675281 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30551 a!3219) j!170) a!3219 mask!3464) lt!444658))))

(assert (= (and start!86814 res!675286) b!1006033))

(assert (= (and b!1006033 res!675276) b!1006032))

(assert (= (and b!1006032 res!675283) b!1006039))

(assert (= (and b!1006039 res!675277) b!1006038))

(assert (= (and b!1006038 res!675280) b!1006041))

(assert (= (and b!1006041 res!675285) b!1006036))

(assert (= (and b!1006036 res!675284) b!1006037))

(assert (= (and b!1006037 res!675278) b!1006034))

(assert (= (and b!1006034 res!675279) b!1006035))

(assert (= (and b!1006035 res!675282) b!1006042))

(assert (= (and b!1006042 res!675281) b!1006040))

(declare-fun m!931257 () Bool)

(assert (=> b!1006041 m!931257))

(declare-fun m!931259 () Bool)

(assert (=> b!1006038 m!931259))

(declare-fun m!931261 () Bool)

(assert (=> b!1006042 m!931261))

(assert (=> b!1006042 m!931261))

(declare-fun m!931263 () Bool)

(assert (=> b!1006042 m!931263))

(declare-fun m!931265 () Bool)

(assert (=> start!86814 m!931265))

(declare-fun m!931267 () Bool)

(assert (=> start!86814 m!931267))

(assert (=> b!1006032 m!931261))

(assert (=> b!1006032 m!931261))

(declare-fun m!931269 () Bool)

(assert (=> b!1006032 m!931269))

(declare-fun m!931271 () Bool)

(assert (=> b!1006037 m!931271))

(assert (=> b!1006035 m!931261))

(assert (=> b!1006035 m!931261))

(declare-fun m!931273 () Bool)

(assert (=> b!1006035 m!931273))

(assert (=> b!1006035 m!931273))

(assert (=> b!1006035 m!931261))

(declare-fun m!931275 () Bool)

(assert (=> b!1006035 m!931275))

(declare-fun m!931277 () Bool)

(assert (=> b!1006036 m!931277))

(declare-fun m!931279 () Bool)

(assert (=> b!1006040 m!931279))

(declare-fun m!931281 () Bool)

(assert (=> b!1006040 m!931281))

(assert (=> b!1006040 m!931281))

(declare-fun m!931283 () Bool)

(assert (=> b!1006040 m!931283))

(declare-fun m!931285 () Bool)

(assert (=> b!1006039 m!931285))

(check-sat (not b!1006039) (not b!1006035) (not b!1006032) (not b!1006042) (not b!1006036) (not b!1006040) (not start!86814) (not b!1006041) (not b!1006038) (not b!1006037))
(check-sat)
