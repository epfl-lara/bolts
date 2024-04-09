; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85928 () Bool)

(assert start!85928)

(declare-fun b!995442 () Bool)

(declare-fun res!665896 () Bool)

(declare-fun e!561763 () Bool)

(assert (=> b!995442 (=> (not res!665896) (not e!561763))))

(declare-datatypes ((array!62968 0))(
  ( (array!62969 (arr!30314 (Array (_ BitVec 32) (_ BitVec 64))) (size!30817 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62968)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995442 (= res!665896 (and (= (size!30817 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30817 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30817 a!3219)) (not (= i!1194 j!170))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun b!995443 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun e!561762 () Bool)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!995443 (= e!561762 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30817 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30817 a!3219)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!995444 () Bool)

(assert (=> b!995444 (= e!561763 e!561762)))

(declare-fun res!665890 () Bool)

(assert (=> b!995444 (=> (not res!665890) (not e!561762))))

(declare-datatypes ((SeekEntryResult!9246 0))(
  ( (MissingZero!9246 (index!39354 (_ BitVec 32))) (Found!9246 (index!39355 (_ BitVec 32))) (Intermediate!9246 (undefined!10058 Bool) (index!39356 (_ BitVec 32)) (x!86824 (_ BitVec 32))) (Undefined!9246) (MissingVacant!9246 (index!39357 (_ BitVec 32))) )
))
(declare-fun lt!440943 () SeekEntryResult!9246)

(assert (=> b!995444 (= res!665890 (or (= lt!440943 (MissingVacant!9246 i!1194)) (= lt!440943 (MissingZero!9246 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62968 (_ BitVec 32)) SeekEntryResult!9246)

(assert (=> b!995444 (= lt!440943 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!665894 () Bool)

(assert (=> start!85928 (=> (not res!665894) (not e!561763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85928 (= res!665894 (validMask!0 mask!3464))))

(assert (=> start!85928 e!561763))

(declare-fun array_inv!23304 (array!62968) Bool)

(assert (=> start!85928 (array_inv!23304 a!3219)))

(assert (=> start!85928 true))

(declare-fun b!995445 () Bool)

(declare-fun res!665892 () Bool)

(assert (=> b!995445 (=> (not res!665892) (not e!561763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995445 (= res!665892 (validKeyInArray!0 k0!2224))))

(declare-fun b!995446 () Bool)

(declare-fun res!665889 () Bool)

(assert (=> b!995446 (=> (not res!665889) (not e!561763))))

(assert (=> b!995446 (= res!665889 (validKeyInArray!0 (select (arr!30314 a!3219) j!170)))))

(declare-fun b!995447 () Bool)

(declare-fun res!665891 () Bool)

(assert (=> b!995447 (=> (not res!665891) (not e!561762))))

(declare-datatypes ((List!21116 0))(
  ( (Nil!21113) (Cons!21112 (h!22274 (_ BitVec 64)) (t!30125 List!21116)) )
))
(declare-fun arrayNoDuplicates!0 (array!62968 (_ BitVec 32) List!21116) Bool)

(assert (=> b!995447 (= res!665891 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21113))))

(declare-fun b!995448 () Bool)

(declare-fun res!665893 () Bool)

(assert (=> b!995448 (=> (not res!665893) (not e!561762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62968 (_ BitVec 32)) Bool)

(assert (=> b!995448 (= res!665893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995449 () Bool)

(declare-fun res!665895 () Bool)

(assert (=> b!995449 (=> (not res!665895) (not e!561763))))

(declare-fun arrayContainsKey!0 (array!62968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995449 (= res!665895 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85928 res!665894) b!995442))

(assert (= (and b!995442 res!665896) b!995446))

(assert (= (and b!995446 res!665889) b!995445))

(assert (= (and b!995445 res!665892) b!995449))

(assert (= (and b!995449 res!665895) b!995444))

(assert (= (and b!995444 res!665890) b!995448))

(assert (= (and b!995448 res!665893) b!995447))

(assert (= (and b!995447 res!665891) b!995443))

(declare-fun m!922943 () Bool)

(assert (=> b!995445 m!922943))

(declare-fun m!922945 () Bool)

(assert (=> b!995449 m!922945))

(declare-fun m!922947 () Bool)

(assert (=> b!995444 m!922947))

(declare-fun m!922949 () Bool)

(assert (=> start!85928 m!922949))

(declare-fun m!922951 () Bool)

(assert (=> start!85928 m!922951))

(declare-fun m!922953 () Bool)

(assert (=> b!995446 m!922953))

(assert (=> b!995446 m!922953))

(declare-fun m!922955 () Bool)

(assert (=> b!995446 m!922955))

(declare-fun m!922957 () Bool)

(assert (=> b!995448 m!922957))

(declare-fun m!922959 () Bool)

(assert (=> b!995447 m!922959))

(check-sat (not b!995447) (not b!995445) (not b!995444) (not start!85928) (not b!995449) (not b!995448) (not b!995446))
(check-sat)
