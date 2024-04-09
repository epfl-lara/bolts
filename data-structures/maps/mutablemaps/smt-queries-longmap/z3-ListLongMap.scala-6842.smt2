; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86178 () Bool)

(assert start!86178)

(declare-fun b!997549 () Bool)

(declare-fun res!667661 () Bool)

(declare-fun e!562659 () Bool)

(assert (=> b!997549 (=> (not res!667661) (not e!562659))))

(declare-datatypes ((array!63084 0))(
  ( (array!63085 (arr!30368 (Array (_ BitVec 32) (_ BitVec 64))) (size!30871 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63084)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63084 (_ BitVec 32)) Bool)

(assert (=> b!997549 (= res!667661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997550 () Bool)

(declare-fun res!667666 () Bool)

(declare-fun e!562661 () Bool)

(assert (=> b!997550 (=> (not res!667666) (not e!562661))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997550 (= res!667666 (and (= (size!30871 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30871 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30871 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997551 () Bool)

(declare-fun res!667665 () Bool)

(assert (=> b!997551 (=> (not res!667665) (not e!562659))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!997551 (= res!667665 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30871 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30871 a!3219))))))

(declare-fun b!997552 () Bool)

(declare-fun res!667660 () Bool)

(assert (=> b!997552 (=> (not res!667660) (not e!562659))))

(declare-datatypes ((List!21170 0))(
  ( (Nil!21167) (Cons!21166 (h!22334 (_ BitVec 64)) (t!30179 List!21170)) )
))
(declare-fun arrayNoDuplicates!0 (array!63084 (_ BitVec 32) List!21170) Bool)

(assert (=> b!997552 (= res!667660 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21167))))

(declare-fun b!997553 () Bool)

(declare-fun res!667663 () Bool)

(assert (=> b!997553 (=> (not res!667663) (not e!562659))))

(declare-datatypes ((SeekEntryResult!9300 0))(
  ( (MissingZero!9300 (index!39570 (_ BitVec 32))) (Found!9300 (index!39571 (_ BitVec 32))) (Intermediate!9300 (undefined!10112 Bool) (index!39572 (_ BitVec 32)) (x!87031 (_ BitVec 32))) (Undefined!9300) (MissingVacant!9300 (index!39573 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63084 (_ BitVec 32)) SeekEntryResult!9300)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997553 (= res!667663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30368 a!3219) j!170) mask!3464) (select (arr!30368 a!3219) j!170) a!3219 mask!3464) (Intermediate!9300 false resIndex!38 resX!38)))))

(declare-fun b!997554 () Bool)

(declare-fun res!667667 () Bool)

(assert (=> b!997554 (=> (not res!667667) (not e!562661))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997554 (= res!667667 (validKeyInArray!0 k0!2224))))

(declare-fun res!667662 () Bool)

(assert (=> start!86178 (=> (not res!667662) (not e!562661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86178 (= res!667662 (validMask!0 mask!3464))))

(assert (=> start!86178 e!562661))

(declare-fun array_inv!23358 (array!63084) Bool)

(assert (=> start!86178 (array_inv!23358 a!3219)))

(assert (=> start!86178 true))

(declare-fun b!997555 () Bool)

(declare-fun res!667668 () Bool)

(assert (=> b!997555 (=> (not res!667668) (not e!562661))))

(declare-fun arrayContainsKey!0 (array!63084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997555 (= res!667668 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997556 () Bool)

(assert (=> b!997556 (= e!562659 false)))

(declare-fun lt!441449 () SeekEntryResult!9300)

(assert (=> b!997556 (= lt!441449 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30368 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997557 () Bool)

(assert (=> b!997557 (= e!562661 e!562659)))

(declare-fun res!667669 () Bool)

(assert (=> b!997557 (=> (not res!667669) (not e!562659))))

(declare-fun lt!441450 () SeekEntryResult!9300)

(assert (=> b!997557 (= res!667669 (or (= lt!441450 (MissingVacant!9300 i!1194)) (= lt!441450 (MissingZero!9300 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63084 (_ BitVec 32)) SeekEntryResult!9300)

(assert (=> b!997557 (= lt!441450 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!997558 () Bool)

(declare-fun res!667664 () Bool)

(assert (=> b!997558 (=> (not res!667664) (not e!562661))))

(assert (=> b!997558 (= res!667664 (validKeyInArray!0 (select (arr!30368 a!3219) j!170)))))

(assert (= (and start!86178 res!667662) b!997550))

(assert (= (and b!997550 res!667666) b!997558))

(assert (= (and b!997558 res!667664) b!997554))

(assert (= (and b!997554 res!667667) b!997555))

(assert (= (and b!997555 res!667668) b!997557))

(assert (= (and b!997557 res!667669) b!997549))

(assert (= (and b!997549 res!667661) b!997552))

(assert (= (and b!997552 res!667660) b!997551))

(assert (= (and b!997551 res!667665) b!997553))

(assert (= (and b!997553 res!667663) b!997556))

(declare-fun m!924429 () Bool)

(assert (=> b!997556 m!924429))

(assert (=> b!997556 m!924429))

(declare-fun m!924431 () Bool)

(assert (=> b!997556 m!924431))

(declare-fun m!924433 () Bool)

(assert (=> b!997557 m!924433))

(declare-fun m!924435 () Bool)

(assert (=> b!997549 m!924435))

(declare-fun m!924437 () Bool)

(assert (=> b!997552 m!924437))

(declare-fun m!924439 () Bool)

(assert (=> start!86178 m!924439))

(declare-fun m!924441 () Bool)

(assert (=> start!86178 m!924441))

(declare-fun m!924443 () Bool)

(assert (=> b!997554 m!924443))

(assert (=> b!997558 m!924429))

(assert (=> b!997558 m!924429))

(declare-fun m!924445 () Bool)

(assert (=> b!997558 m!924445))

(declare-fun m!924447 () Bool)

(assert (=> b!997555 m!924447))

(assert (=> b!997553 m!924429))

(assert (=> b!997553 m!924429))

(declare-fun m!924449 () Bool)

(assert (=> b!997553 m!924449))

(assert (=> b!997553 m!924449))

(assert (=> b!997553 m!924429))

(declare-fun m!924451 () Bool)

(assert (=> b!997553 m!924451))

(check-sat (not b!997558) (not b!997556) (not b!997553) (not b!997555) (not b!997554) (not b!997557) (not b!997549) (not start!86178) (not b!997552))
(check-sat)
