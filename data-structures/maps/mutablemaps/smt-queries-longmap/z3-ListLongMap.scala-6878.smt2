; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86556 () Bool)

(assert start!86556)

(declare-fun b!1002404 () Bool)

(declare-fun e!564744 () Bool)

(declare-fun e!564741 () Bool)

(assert (=> b!1002404 (= e!564744 e!564741)))

(declare-fun res!672046 () Bool)

(assert (=> b!1002404 (=> (not res!672046) (not e!564741))))

(declare-datatypes ((array!63309 0))(
  ( (array!63310 (arr!30476 (Array (_ BitVec 32) (_ BitVec 64))) (size!30979 (_ BitVec 32))) )
))
(declare-fun lt!443172 () array!63309)

(declare-fun lt!443173 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9408 0))(
  ( (MissingZero!9408 (index!40002 (_ BitVec 32))) (Found!9408 (index!40003 (_ BitVec 32))) (Intermediate!9408 (undefined!10220 Bool) (index!40004 (_ BitVec 32)) (x!87445 (_ BitVec 32))) (Undefined!9408) (MissingVacant!9408 (index!40005 (_ BitVec 32))) )
))
(declare-fun lt!443168 () SeekEntryResult!9408)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63309 (_ BitVec 32)) SeekEntryResult!9408)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002404 (= res!672046 (not (= lt!443168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443173 mask!3464) lt!443173 lt!443172 mask!3464))))))

(declare-fun a!3219 () array!63309)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1002404 (= lt!443173 (select (store (arr!30476 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002404 (= lt!443172 (array!63310 (store (arr!30476 a!3219) i!1194 k0!2224) (size!30979 a!3219)))))

(declare-fun b!1002405 () Bool)

(declare-fun res!672049 () Bool)

(assert (=> b!1002405 (=> (not res!672049) (not e!564741))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002405 (= res!672049 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002406 () Bool)

(declare-fun res!672051 () Bool)

(declare-fun e!564746 () Bool)

(assert (=> b!1002406 (=> (not res!672051) (not e!564746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002406 (= res!672051 (validKeyInArray!0 (select (arr!30476 a!3219) j!170)))))

(declare-fun b!1002407 () Bool)

(declare-fun e!564740 () Bool)

(declare-fun e!564742 () Bool)

(assert (=> b!1002407 (= e!564740 e!564742)))

(declare-fun res!672039 () Bool)

(assert (=> b!1002407 (=> (not res!672039) (not e!564742))))

(declare-fun lt!443171 () SeekEntryResult!9408)

(assert (=> b!1002407 (= res!672039 (= lt!443168 lt!443171))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002407 (= lt!443171 (Intermediate!9408 false resIndex!38 resX!38))))

(assert (=> b!1002407 (= lt!443168 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30476 a!3219) j!170) mask!3464) (select (arr!30476 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002408 () Bool)

(declare-fun res!672037 () Bool)

(assert (=> b!1002408 (=> (not res!672037) (not e!564740))))

(declare-datatypes ((List!21278 0))(
  ( (Nil!21275) (Cons!21274 (h!22451 (_ BitVec 64)) (t!30287 List!21278)) )
))
(declare-fun arrayNoDuplicates!0 (array!63309 (_ BitVec 32) List!21278) Bool)

(assert (=> b!1002408 (= res!672037 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21275))))

(declare-fun b!1002409 () Bool)

(declare-fun e!564743 () Bool)

(assert (=> b!1002409 (= e!564741 e!564743)))

(declare-fun res!672050 () Bool)

(assert (=> b!1002409 (=> (not res!672050) (not e!564743))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443175 () (_ BitVec 32))

(assert (=> b!1002409 (= res!672050 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443175 #b00000000000000000000000000000000) (bvslt lt!443175 (size!30979 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002409 (= lt!443175 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002410 () Bool)

(declare-fun res!672042 () Bool)

(assert (=> b!1002410 (=> (not res!672042) (not e!564740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63309 (_ BitVec 32)) Bool)

(assert (=> b!1002410 (= res!672042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002411 () Bool)

(declare-fun res!672041 () Bool)

(assert (=> b!1002411 (=> (not res!672041) (not e!564743))))

(assert (=> b!1002411 (= res!672041 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443175 (select (arr!30476 a!3219) j!170) a!3219 mask!3464) lt!443171))))

(declare-fun b!1002412 () Bool)

(declare-fun res!672044 () Bool)

(assert (=> b!1002412 (=> (not res!672044) (not e!564746))))

(declare-fun arrayContainsKey!0 (array!63309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002412 (= res!672044 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002403 () Bool)

(declare-fun res!672045 () Bool)

(assert (=> b!1002403 (=> (not res!672045) (not e!564746))))

(assert (=> b!1002403 (= res!672045 (and (= (size!30979 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30979 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30979 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!672043 () Bool)

(assert (=> start!86556 (=> (not res!672043) (not e!564746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86556 (= res!672043 (validMask!0 mask!3464))))

(assert (=> start!86556 e!564746))

(declare-fun array_inv!23466 (array!63309) Bool)

(assert (=> start!86556 (array_inv!23466 a!3219)))

(assert (=> start!86556 true))

(declare-fun b!1002413 () Bool)

(declare-fun res!672052 () Bool)

(assert (=> b!1002413 (=> (not res!672052) (not e!564746))))

(assert (=> b!1002413 (= res!672052 (validKeyInArray!0 k0!2224))))

(declare-fun b!1002414 () Bool)

(assert (=> b!1002414 (= e!564742 e!564744)))

(declare-fun res!672048 () Bool)

(assert (=> b!1002414 (=> (not res!672048) (not e!564744))))

(declare-fun lt!443174 () SeekEntryResult!9408)

(assert (=> b!1002414 (= res!672048 (= lt!443174 lt!443171))))

(assert (=> b!1002414 (= lt!443174 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30476 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002415 () Bool)

(assert (=> b!1002415 (= e!564743 false)))

(declare-fun lt!443170 () SeekEntryResult!9408)

(assert (=> b!1002415 (= lt!443170 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443175 lt!443173 lt!443172 mask!3464))))

(declare-fun b!1002416 () Bool)

(assert (=> b!1002416 (= e!564746 e!564740)))

(declare-fun res!672047 () Bool)

(assert (=> b!1002416 (=> (not res!672047) (not e!564740))))

(declare-fun lt!443169 () SeekEntryResult!9408)

(assert (=> b!1002416 (= res!672047 (or (= lt!443169 (MissingVacant!9408 i!1194)) (= lt!443169 (MissingZero!9408 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63309 (_ BitVec 32)) SeekEntryResult!9408)

(assert (=> b!1002416 (= lt!443169 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002417 () Bool)

(declare-fun res!672040 () Bool)

(assert (=> b!1002417 (=> (not res!672040) (not e!564741))))

(assert (=> b!1002417 (= res!672040 (not (= lt!443174 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443173 lt!443172 mask!3464))))))

(declare-fun b!1002418 () Bool)

(declare-fun res!672038 () Bool)

(assert (=> b!1002418 (=> (not res!672038) (not e!564740))))

(assert (=> b!1002418 (= res!672038 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30979 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30979 a!3219))))))

(assert (= (and start!86556 res!672043) b!1002403))

(assert (= (and b!1002403 res!672045) b!1002406))

(assert (= (and b!1002406 res!672051) b!1002413))

(assert (= (and b!1002413 res!672052) b!1002412))

(assert (= (and b!1002412 res!672044) b!1002416))

(assert (= (and b!1002416 res!672047) b!1002410))

(assert (= (and b!1002410 res!672042) b!1002408))

(assert (= (and b!1002408 res!672037) b!1002418))

(assert (= (and b!1002418 res!672038) b!1002407))

(assert (= (and b!1002407 res!672039) b!1002414))

(assert (= (and b!1002414 res!672048) b!1002404))

(assert (= (and b!1002404 res!672046) b!1002417))

(assert (= (and b!1002417 res!672040) b!1002405))

(assert (= (and b!1002405 res!672049) b!1002409))

(assert (= (and b!1002409 res!672050) b!1002411))

(assert (= (and b!1002411 res!672041) b!1002415))

(declare-fun m!928381 () Bool)

(assert (=> b!1002412 m!928381))

(declare-fun m!928383 () Bool)

(assert (=> b!1002413 m!928383))

(declare-fun m!928385 () Bool)

(assert (=> b!1002407 m!928385))

(assert (=> b!1002407 m!928385))

(declare-fun m!928387 () Bool)

(assert (=> b!1002407 m!928387))

(assert (=> b!1002407 m!928387))

(assert (=> b!1002407 m!928385))

(declare-fun m!928389 () Bool)

(assert (=> b!1002407 m!928389))

(declare-fun m!928391 () Bool)

(assert (=> b!1002409 m!928391))

(declare-fun m!928393 () Bool)

(assert (=> b!1002415 m!928393))

(declare-fun m!928395 () Bool)

(assert (=> b!1002404 m!928395))

(assert (=> b!1002404 m!928395))

(declare-fun m!928397 () Bool)

(assert (=> b!1002404 m!928397))

(declare-fun m!928399 () Bool)

(assert (=> b!1002404 m!928399))

(declare-fun m!928401 () Bool)

(assert (=> b!1002404 m!928401))

(assert (=> b!1002406 m!928385))

(assert (=> b!1002406 m!928385))

(declare-fun m!928403 () Bool)

(assert (=> b!1002406 m!928403))

(declare-fun m!928405 () Bool)

(assert (=> b!1002410 m!928405))

(assert (=> b!1002414 m!928385))

(assert (=> b!1002414 m!928385))

(declare-fun m!928407 () Bool)

(assert (=> b!1002414 m!928407))

(declare-fun m!928409 () Bool)

(assert (=> b!1002408 m!928409))

(declare-fun m!928411 () Bool)

(assert (=> b!1002417 m!928411))

(declare-fun m!928413 () Bool)

(assert (=> b!1002416 m!928413))

(declare-fun m!928415 () Bool)

(assert (=> start!86556 m!928415))

(declare-fun m!928417 () Bool)

(assert (=> start!86556 m!928417))

(assert (=> b!1002411 m!928385))

(assert (=> b!1002411 m!928385))

(declare-fun m!928419 () Bool)

(assert (=> b!1002411 m!928419))

(check-sat (not b!1002404) (not b!1002412) (not b!1002417) (not start!86556) (not b!1002409) (not b!1002410) (not b!1002407) (not b!1002413) (not b!1002411) (not b!1002415) (not b!1002408) (not b!1002416) (not b!1002406) (not b!1002414))
(check-sat)
