; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86778 () Bool)

(assert start!86778)

(declare-fun b!1005478 () Bool)

(declare-fun res!674722 () Bool)

(declare-fun e!566188 () Bool)

(assert (=> b!1005478 (=> (not res!674722) (not e!566188))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005478 (= res!674722 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005479 () Bool)

(declare-fun res!674724 () Bool)

(assert (=> b!1005479 (=> (not res!674724) (not e!566188))))

(declare-datatypes ((array!63429 0))(
  ( (array!63430 (arr!30533 (Array (_ BitVec 32) (_ BitVec 64))) (size!31036 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63429)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005479 (= res!674724 (and (= (size!31036 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31036 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31036 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005480 () Bool)

(declare-fun res!674729 () Bool)

(declare-fun e!566189 () Bool)

(assert (=> b!1005480 (=> (not res!674729) (not e!566189))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9465 0))(
  ( (MissingZero!9465 (index!40230 (_ BitVec 32))) (Found!9465 (index!40231 (_ BitVec 32))) (Intermediate!9465 (undefined!10277 Bool) (index!40232 (_ BitVec 32)) (x!87666 (_ BitVec 32))) (Undefined!9465) (MissingVacant!9465 (index!40233 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63429 (_ BitVec 32)) SeekEntryResult!9465)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005480 (= res!674729 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30533 a!3219) j!170) mask!3464) (select (arr!30533 a!3219) j!170) a!3219 mask!3464) (Intermediate!9465 false resIndex!38 resX!38)))))

(declare-fun b!1005481 () Bool)

(assert (=> b!1005481 (= e!566189 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!444537 () SeekEntryResult!9465)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1005481 (= lt!444537 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30533 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005482 () Bool)

(declare-fun res!674726 () Bool)

(assert (=> b!1005482 (=> (not res!674726) (not e!566188))))

(declare-fun arrayContainsKey!0 (array!63429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005482 (= res!674726 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!674730 () Bool)

(assert (=> start!86778 (=> (not res!674730) (not e!566188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86778 (= res!674730 (validMask!0 mask!3464))))

(assert (=> start!86778 e!566188))

(declare-fun array_inv!23523 (array!63429) Bool)

(assert (=> start!86778 (array_inv!23523 a!3219)))

(assert (=> start!86778 true))

(declare-fun b!1005483 () Bool)

(assert (=> b!1005483 (= e!566188 e!566189)))

(declare-fun res!674728 () Bool)

(assert (=> b!1005483 (=> (not res!674728) (not e!566189))))

(declare-fun lt!444536 () SeekEntryResult!9465)

(assert (=> b!1005483 (= res!674728 (or (= lt!444536 (MissingVacant!9465 i!1194)) (= lt!444536 (MissingZero!9465 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63429 (_ BitVec 32)) SeekEntryResult!9465)

(assert (=> b!1005483 (= lt!444536 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005484 () Bool)

(declare-fun res!674731 () Bool)

(assert (=> b!1005484 (=> (not res!674731) (not e!566189))))

(assert (=> b!1005484 (= res!674731 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31036 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31036 a!3219))))))

(declare-fun b!1005485 () Bool)

(declare-fun res!674725 () Bool)

(assert (=> b!1005485 (=> (not res!674725) (not e!566189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63429 (_ BitVec 32)) Bool)

(assert (=> b!1005485 (= res!674725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005486 () Bool)

(declare-fun res!674727 () Bool)

(assert (=> b!1005486 (=> (not res!674727) (not e!566188))))

(assert (=> b!1005486 (= res!674727 (validKeyInArray!0 (select (arr!30533 a!3219) j!170)))))

(declare-fun b!1005487 () Bool)

(declare-fun res!674723 () Bool)

(assert (=> b!1005487 (=> (not res!674723) (not e!566189))))

(declare-datatypes ((List!21335 0))(
  ( (Nil!21332) (Cons!21331 (h!22514 (_ BitVec 64)) (t!30344 List!21335)) )
))
(declare-fun arrayNoDuplicates!0 (array!63429 (_ BitVec 32) List!21335) Bool)

(assert (=> b!1005487 (= res!674723 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21332))))

(assert (= (and start!86778 res!674730) b!1005479))

(assert (= (and b!1005479 res!674724) b!1005486))

(assert (= (and b!1005486 res!674727) b!1005478))

(assert (= (and b!1005478 res!674722) b!1005482))

(assert (= (and b!1005482 res!674726) b!1005483))

(assert (= (and b!1005483 res!674728) b!1005485))

(assert (= (and b!1005485 res!674725) b!1005487))

(assert (= (and b!1005487 res!674723) b!1005484))

(assert (= (and b!1005484 res!674731) b!1005480))

(assert (= (and b!1005480 res!674729) b!1005481))

(declare-fun m!930801 () Bool)

(assert (=> start!86778 m!930801))

(declare-fun m!930803 () Bool)

(assert (=> start!86778 m!930803))

(declare-fun m!930805 () Bool)

(assert (=> b!1005482 m!930805))

(declare-fun m!930807 () Bool)

(assert (=> b!1005478 m!930807))

(declare-fun m!930809 () Bool)

(assert (=> b!1005483 m!930809))

(declare-fun m!930811 () Bool)

(assert (=> b!1005481 m!930811))

(assert (=> b!1005481 m!930811))

(declare-fun m!930813 () Bool)

(assert (=> b!1005481 m!930813))

(assert (=> b!1005480 m!930811))

(assert (=> b!1005480 m!930811))

(declare-fun m!930815 () Bool)

(assert (=> b!1005480 m!930815))

(assert (=> b!1005480 m!930815))

(assert (=> b!1005480 m!930811))

(declare-fun m!930817 () Bool)

(assert (=> b!1005480 m!930817))

(declare-fun m!930819 () Bool)

(assert (=> b!1005485 m!930819))

(declare-fun m!930821 () Bool)

(assert (=> b!1005487 m!930821))

(assert (=> b!1005486 m!930811))

(assert (=> b!1005486 m!930811))

(declare-fun m!930823 () Bool)

(assert (=> b!1005486 m!930823))

(check-sat (not start!86778) (not b!1005482) (not b!1005486) (not b!1005480) (not b!1005485) (not b!1005481) (not b!1005478) (not b!1005483) (not b!1005487))
(check-sat)
