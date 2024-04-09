; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86420 () Bool)

(assert start!86420)

(declare-fun b!999647 () Bool)

(declare-fun res!669284 () Bool)

(declare-fun e!563630 () Bool)

(assert (=> b!999647 (=> (not res!669284) (not e!563630))))

(declare-datatypes ((array!63173 0))(
  ( (array!63174 (arr!30408 (Array (_ BitVec 32) (_ BitVec 64))) (size!30911 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63173)

(declare-datatypes ((List!21210 0))(
  ( (Nil!21207) (Cons!21206 (h!22383 (_ BitVec 64)) (t!30219 List!21210)) )
))
(declare-fun arrayNoDuplicates!0 (array!63173 (_ BitVec 32) List!21210) Bool)

(assert (=> b!999647 (= res!669284 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21207))))

(declare-fun b!999649 () Bool)

(declare-fun res!669291 () Bool)

(declare-fun e!563633 () Bool)

(assert (=> b!999649 (=> (not res!669291) (not e!563633))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!999649 (= res!669291 (validKeyInArray!0 k!2224))))

(declare-fun b!999650 () Bool)

(declare-fun e!563632 () Bool)

(assert (=> b!999650 (= e!563630 e!563632)))

(declare-fun res!669289 () Bool)

(assert (=> b!999650 (=> (not res!669289) (not e!563632))))

(declare-datatypes ((SeekEntryResult!9340 0))(
  ( (MissingZero!9340 (index!39730 (_ BitVec 32))) (Found!9340 (index!39731 (_ BitVec 32))) (Intermediate!9340 (undefined!10152 Bool) (index!39732 (_ BitVec 32)) (x!87193 (_ BitVec 32))) (Undefined!9340) (MissingVacant!9340 (index!39733 (_ BitVec 32))) )
))
(declare-fun lt!442063 () SeekEntryResult!9340)

(declare-fun lt!442064 () SeekEntryResult!9340)

(assert (=> b!999650 (= res!669289 (= lt!442063 lt!442064))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!999650 (= lt!442064 (Intermediate!9340 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63173 (_ BitVec 32)) SeekEntryResult!9340)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999650 (= lt!442063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30408 a!3219) j!170) mask!3464) (select (arr!30408 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999651 () Bool)

(assert (=> b!999651 (= e!563633 e!563630)))

(declare-fun res!669282 () Bool)

(assert (=> b!999651 (=> (not res!669282) (not e!563630))))

(declare-fun lt!442065 () SeekEntryResult!9340)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!999651 (= res!669282 (or (= lt!442065 (MissingVacant!9340 i!1194)) (= lt!442065 (MissingZero!9340 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63173 (_ BitVec 32)) SeekEntryResult!9340)

(assert (=> b!999651 (= lt!442065 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!999652 () Bool)

(declare-fun res!669292 () Bool)

(assert (=> b!999652 (=> (not res!669292) (not e!563632))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!999652 (= res!669292 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30408 a!3219) j!170) a!3219 mask!3464) lt!442064))))

(declare-fun b!999653 () Bool)

(declare-fun res!669286 () Bool)

(assert (=> b!999653 (=> (not res!669286) (not e!563633))))

(assert (=> b!999653 (= res!669286 (validKeyInArray!0 (select (arr!30408 a!3219) j!170)))))

(declare-fun b!999654 () Bool)

(declare-fun res!669283 () Bool)

(assert (=> b!999654 (=> (not res!669283) (not e!563632))))

(assert (=> b!999654 (= res!669283 (not (= lt!442063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30408 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30408 a!3219) i!1194 k!2224) j!170) (array!63174 (store (arr!30408 a!3219) i!1194 k!2224) (size!30911 a!3219)) mask!3464))))))

(declare-fun b!999655 () Bool)

(assert (=> b!999655 (= e!563632 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!999656 () Bool)

(declare-fun res!669285 () Bool)

(assert (=> b!999656 (=> (not res!669285) (not e!563633))))

(assert (=> b!999656 (= res!669285 (and (= (size!30911 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30911 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30911 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!669288 () Bool)

(assert (=> start!86420 (=> (not res!669288) (not e!563633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86420 (= res!669288 (validMask!0 mask!3464))))

(assert (=> start!86420 e!563633))

(declare-fun array_inv!23398 (array!63173) Bool)

(assert (=> start!86420 (array_inv!23398 a!3219)))

(assert (=> start!86420 true))

(declare-fun b!999648 () Bool)

(declare-fun res!669287 () Bool)

(assert (=> b!999648 (=> (not res!669287) (not e!563633))))

(declare-fun arrayContainsKey!0 (array!63173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!999648 (= res!669287 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!999657 () Bool)

(declare-fun res!669290 () Bool)

(assert (=> b!999657 (=> (not res!669290) (not e!563630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63173 (_ BitVec 32)) Bool)

(assert (=> b!999657 (= res!669290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!999658 () Bool)

(declare-fun res!669281 () Bool)

(assert (=> b!999658 (=> (not res!669281) (not e!563630))))

(assert (=> b!999658 (= res!669281 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30911 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30911 a!3219))))))

(assert (= (and start!86420 res!669288) b!999656))

(assert (= (and b!999656 res!669285) b!999653))

(assert (= (and b!999653 res!669286) b!999649))

(assert (= (and b!999649 res!669291) b!999648))

(assert (= (and b!999648 res!669287) b!999651))

(assert (= (and b!999651 res!669282) b!999657))

(assert (= (and b!999657 res!669290) b!999647))

(assert (= (and b!999647 res!669284) b!999658))

(assert (= (and b!999658 res!669281) b!999650))

(assert (= (and b!999650 res!669289) b!999652))

(assert (= (and b!999652 res!669292) b!999654))

(assert (= (and b!999654 res!669283) b!999655))

(declare-fun m!925975 () Bool)

(assert (=> b!999650 m!925975))

(assert (=> b!999650 m!925975))

(declare-fun m!925977 () Bool)

(assert (=> b!999650 m!925977))

(assert (=> b!999650 m!925977))

(assert (=> b!999650 m!925975))

(declare-fun m!925979 () Bool)

(assert (=> b!999650 m!925979))

(assert (=> b!999652 m!925975))

(assert (=> b!999652 m!925975))

(declare-fun m!925981 () Bool)

(assert (=> b!999652 m!925981))

(declare-fun m!925983 () Bool)

(assert (=> b!999654 m!925983))

(declare-fun m!925985 () Bool)

(assert (=> b!999654 m!925985))

(assert (=> b!999654 m!925985))

(declare-fun m!925987 () Bool)

(assert (=> b!999654 m!925987))

(assert (=> b!999654 m!925987))

(assert (=> b!999654 m!925985))

(declare-fun m!925989 () Bool)

(assert (=> b!999654 m!925989))

(declare-fun m!925991 () Bool)

(assert (=> b!999647 m!925991))

(declare-fun m!925993 () Bool)

(assert (=> b!999649 m!925993))

(assert (=> b!999653 m!925975))

(assert (=> b!999653 m!925975))

(declare-fun m!925995 () Bool)

(assert (=> b!999653 m!925995))

(declare-fun m!925997 () Bool)

(assert (=> b!999648 m!925997))

(declare-fun m!925999 () Bool)

(assert (=> b!999657 m!925999))

(declare-fun m!926001 () Bool)

(assert (=> b!999651 m!926001))

(declare-fun m!926003 () Bool)

(assert (=> start!86420 m!926003))

(declare-fun m!926005 () Bool)

(assert (=> start!86420 m!926005))

(push 1)

(assert (not b!999657))

(assert (not b!999649))

(assert (not b!999652))

(assert (not b!999650))

(assert (not b!999653))

(assert (not b!999654))

(assert (not b!999648))

(assert (not b!999651))

