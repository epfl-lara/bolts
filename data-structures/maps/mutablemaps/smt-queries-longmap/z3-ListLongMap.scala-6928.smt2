; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87162 () Bool)

(assert start!87162)

(declare-fun b!1010253 () Bool)

(declare-fun res!678748 () Bool)

(declare-fun e!568390 () Bool)

(assert (=> b!1010253 (=> (not res!678748) (not e!568390))))

(declare-datatypes ((array!63624 0))(
  ( (array!63625 (arr!30626 (Array (_ BitVec 32) (_ BitVec 64))) (size!31129 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63624)

(declare-datatypes ((List!21428 0))(
  ( (Nil!21425) (Cons!21424 (h!22616 (_ BitVec 64)) (t!30437 List!21428)) )
))
(declare-fun arrayNoDuplicates!0 (array!63624 (_ BitVec 32) List!21428) Bool)

(assert (=> b!1010253 (= res!678748 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21425))))

(declare-fun b!1010254 () Bool)

(declare-fun e!568393 () Bool)

(declare-fun e!568391 () Bool)

(assert (=> b!1010254 (= e!568393 e!568391)))

(declare-fun res!678759 () Bool)

(assert (=> b!1010254 (=> (not res!678759) (not e!568391))))

(declare-datatypes ((SeekEntryResult!9558 0))(
  ( (MissingZero!9558 (index!40602 (_ BitVec 32))) (Found!9558 (index!40603 (_ BitVec 32))) (Intermediate!9558 (undefined!10370 Bool) (index!40604 (_ BitVec 32)) (x!88037 (_ BitVec 32))) (Undefined!9558) (MissingVacant!9558 (index!40605 (_ BitVec 32))) )
))
(declare-fun lt!446512 () SeekEntryResult!9558)

(declare-fun lt!446515 () SeekEntryResult!9558)

(assert (=> b!1010254 (= res!678759 (= lt!446512 lt!446515))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63624 (_ BitVec 32)) SeekEntryResult!9558)

(assert (=> b!1010254 (= lt!446512 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30626 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010255 () Bool)

(declare-fun res!678753 () Bool)

(declare-fun e!568392 () Bool)

(assert (=> b!1010255 (=> (not res!678753) (not e!568392))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010255 (= res!678753 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!678755 () Bool)

(assert (=> start!87162 (=> (not res!678755) (not e!568392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87162 (= res!678755 (validMask!0 mask!3464))))

(assert (=> start!87162 e!568392))

(declare-fun array_inv!23616 (array!63624) Bool)

(assert (=> start!87162 (array_inv!23616 a!3219)))

(assert (=> start!87162 true))

(declare-fun b!1010256 () Bool)

(declare-fun res!678749 () Bool)

(assert (=> b!1010256 (=> (not res!678749) (not e!568390))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010256 (= res!678749 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31129 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31129 a!3219))))))

(declare-fun b!1010257 () Bool)

(declare-fun e!568389 () Bool)

(assert (=> b!1010257 (= e!568391 e!568389)))

(declare-fun res!678758 () Bool)

(assert (=> b!1010257 (=> (not res!678758) (not e!568389))))

(declare-fun lt!446511 () SeekEntryResult!9558)

(declare-fun lt!446514 () (_ BitVec 64))

(declare-fun lt!446513 () array!63624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010257 (= res!678758 (not (= lt!446511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446514 mask!3464) lt!446514 lt!446513 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010257 (= lt!446514 (select (store (arr!30626 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1010257 (= lt!446513 (array!63625 (store (arr!30626 a!3219) i!1194 k0!2224) (size!31129 a!3219)))))

(declare-fun b!1010258 () Bool)

(declare-fun res!678757 () Bool)

(assert (=> b!1010258 (=> (not res!678757) (not e!568392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010258 (= res!678757 (validKeyInArray!0 (select (arr!30626 a!3219) j!170)))))

(declare-fun b!1010259 () Bool)

(declare-fun res!678750 () Bool)

(assert (=> b!1010259 (=> (not res!678750) (not e!568389))))

(assert (=> b!1010259 (= res!678750 (not (= lt!446512 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446514 lt!446513 mask!3464))))))

(declare-fun b!1010260 () Bool)

(assert (=> b!1010260 (= e!568392 e!568390)))

(declare-fun res!678751 () Bool)

(assert (=> b!1010260 (=> (not res!678751) (not e!568390))))

(declare-fun lt!446516 () SeekEntryResult!9558)

(assert (=> b!1010260 (= res!678751 (or (= lt!446516 (MissingVacant!9558 i!1194)) (= lt!446516 (MissingZero!9558 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63624 (_ BitVec 32)) SeekEntryResult!9558)

(assert (=> b!1010260 (= lt!446516 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1010261 () Bool)

(declare-fun res!678756 () Bool)

(assert (=> b!1010261 (=> (not res!678756) (not e!568390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63624 (_ BitVec 32)) Bool)

(assert (=> b!1010261 (= res!678756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010262 () Bool)

(declare-fun res!678752 () Bool)

(assert (=> b!1010262 (=> (not res!678752) (not e!568392))))

(assert (=> b!1010262 (= res!678752 (and (= (size!31129 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31129 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31129 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010263 () Bool)

(assert (=> b!1010263 (= e!568389 false)))

(declare-fun lt!446517 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010263 (= lt!446517 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010264 () Bool)

(declare-fun res!678754 () Bool)

(assert (=> b!1010264 (=> (not res!678754) (not e!568389))))

(assert (=> b!1010264 (= res!678754 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010265 () Bool)

(assert (=> b!1010265 (= e!568390 e!568393)))

(declare-fun res!678747 () Bool)

(assert (=> b!1010265 (=> (not res!678747) (not e!568393))))

(assert (=> b!1010265 (= res!678747 (= lt!446511 lt!446515))))

(assert (=> b!1010265 (= lt!446515 (Intermediate!9558 false resIndex!38 resX!38))))

(assert (=> b!1010265 (= lt!446511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30626 a!3219) j!170) mask!3464) (select (arr!30626 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010266 () Bool)

(declare-fun res!678760 () Bool)

(assert (=> b!1010266 (=> (not res!678760) (not e!568392))))

(assert (=> b!1010266 (= res!678760 (validKeyInArray!0 k0!2224))))

(assert (= (and start!87162 res!678755) b!1010262))

(assert (= (and b!1010262 res!678752) b!1010258))

(assert (= (and b!1010258 res!678757) b!1010266))

(assert (= (and b!1010266 res!678760) b!1010255))

(assert (= (and b!1010255 res!678753) b!1010260))

(assert (= (and b!1010260 res!678751) b!1010261))

(assert (= (and b!1010261 res!678756) b!1010253))

(assert (= (and b!1010253 res!678748) b!1010256))

(assert (= (and b!1010256 res!678749) b!1010265))

(assert (= (and b!1010265 res!678747) b!1010254))

(assert (= (and b!1010254 res!678759) b!1010257))

(assert (= (and b!1010257 res!678758) b!1010259))

(assert (= (and b!1010259 res!678750) b!1010264))

(assert (= (and b!1010264 res!678754) b!1010263))

(declare-fun m!934719 () Bool)

(assert (=> b!1010258 m!934719))

(assert (=> b!1010258 m!934719))

(declare-fun m!934721 () Bool)

(assert (=> b!1010258 m!934721))

(declare-fun m!934723 () Bool)

(assert (=> b!1010257 m!934723))

(assert (=> b!1010257 m!934723))

(declare-fun m!934725 () Bool)

(assert (=> b!1010257 m!934725))

(declare-fun m!934727 () Bool)

(assert (=> b!1010257 m!934727))

(declare-fun m!934729 () Bool)

(assert (=> b!1010257 m!934729))

(declare-fun m!934731 () Bool)

(assert (=> start!87162 m!934731))

(declare-fun m!934733 () Bool)

(assert (=> start!87162 m!934733))

(declare-fun m!934735 () Bool)

(assert (=> b!1010255 m!934735))

(declare-fun m!934737 () Bool)

(assert (=> b!1010259 m!934737))

(declare-fun m!934739 () Bool)

(assert (=> b!1010263 m!934739))

(assert (=> b!1010265 m!934719))

(assert (=> b!1010265 m!934719))

(declare-fun m!934741 () Bool)

(assert (=> b!1010265 m!934741))

(assert (=> b!1010265 m!934741))

(assert (=> b!1010265 m!934719))

(declare-fun m!934743 () Bool)

(assert (=> b!1010265 m!934743))

(declare-fun m!934745 () Bool)

(assert (=> b!1010253 m!934745))

(assert (=> b!1010254 m!934719))

(assert (=> b!1010254 m!934719))

(declare-fun m!934747 () Bool)

(assert (=> b!1010254 m!934747))

(declare-fun m!934749 () Bool)

(assert (=> b!1010261 m!934749))

(declare-fun m!934751 () Bool)

(assert (=> b!1010260 m!934751))

(declare-fun m!934753 () Bool)

(assert (=> b!1010266 m!934753))

(check-sat (not b!1010263) (not start!87162) (not b!1010266) (not b!1010258) (not b!1010259) (not b!1010257) (not b!1010254) (not b!1010255) (not b!1010260) (not b!1010253) (not b!1010261) (not b!1010265))
(check-sat)
