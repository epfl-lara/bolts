; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87156 () Bool)

(assert start!87156)

(declare-fun b!1010127 () Bool)

(declare-fun e!568338 () Bool)

(declare-fun e!568337 () Bool)

(assert (=> b!1010127 (= e!568338 e!568337)))

(declare-fun res!678630 () Bool)

(assert (=> b!1010127 (=> (not res!678630) (not e!568337))))

(declare-datatypes ((SeekEntryResult!9555 0))(
  ( (MissingZero!9555 (index!40590 (_ BitVec 32))) (Found!9555 (index!40591 (_ BitVec 32))) (Intermediate!9555 (undefined!10367 Bool) (index!40592 (_ BitVec 32)) (x!88026 (_ BitVec 32))) (Undefined!9555) (MissingVacant!9555 (index!40593 (_ BitVec 32))) )
))
(declare-fun lt!446448 () SeekEntryResult!9555)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010127 (= res!678630 (or (= lt!446448 (MissingVacant!9555 i!1194)) (= lt!446448 (MissingZero!9555 i!1194))))))

(declare-datatypes ((array!63618 0))(
  ( (array!63619 (arr!30623 (Array (_ BitVec 32) (_ BitVec 64))) (size!31126 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63618)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63618 (_ BitVec 32)) SeekEntryResult!9555)

(assert (=> b!1010127 (= lt!446448 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun res!678629 () Bool)

(assert (=> start!87156 (=> (not res!678629) (not e!568338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87156 (= res!678629 (validMask!0 mask!3464))))

(assert (=> start!87156 e!568338))

(declare-fun array_inv!23613 (array!63618) Bool)

(assert (=> start!87156 (array_inv!23613 a!3219)))

(assert (=> start!87156 true))

(declare-fun b!1010128 () Bool)

(declare-fun res!678627 () Bool)

(assert (=> b!1010128 (=> (not res!678627) (not e!568338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010128 (= res!678627 (validKeyInArray!0 k0!2224))))

(declare-fun b!1010129 () Bool)

(declare-fun res!678623 () Bool)

(assert (=> b!1010129 (=> (not res!678623) (not e!568338))))

(declare-fun arrayContainsKey!0 (array!63618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010129 (= res!678623 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010130 () Bool)

(declare-fun e!568335 () Bool)

(declare-fun e!568336 () Bool)

(assert (=> b!1010130 (= e!568335 e!568336)))

(declare-fun res!678622 () Bool)

(assert (=> b!1010130 (=> (not res!678622) (not e!568336))))

(declare-fun lt!446452 () SeekEntryResult!9555)

(declare-fun lt!446449 () array!63618)

(declare-fun lt!446450 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63618 (_ BitVec 32)) SeekEntryResult!9555)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010130 (= res!678622 (not (= lt!446452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446450 mask!3464) lt!446450 lt!446449 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1010130 (= lt!446450 (select (store (arr!30623 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1010130 (= lt!446449 (array!63619 (store (arr!30623 a!3219) i!1194 k0!2224) (size!31126 a!3219)))))

(declare-fun b!1010131 () Bool)

(declare-fun res!678633 () Bool)

(assert (=> b!1010131 (=> (not res!678633) (not e!568338))))

(assert (=> b!1010131 (= res!678633 (and (= (size!31126 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31126 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31126 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010132 () Bool)

(declare-fun res!678625 () Bool)

(assert (=> b!1010132 (=> (not res!678625) (not e!568336))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446454 () SeekEntryResult!9555)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1010132 (= res!678625 (not (= lt!446454 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446450 lt!446449 mask!3464))))))

(declare-fun b!1010133 () Bool)

(assert (=> b!1010133 (= e!568336 false)))

(declare-fun lt!446453 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010133 (= lt!446453 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010134 () Bool)

(declare-fun res!678626 () Bool)

(assert (=> b!1010134 (=> (not res!678626) (not e!568338))))

(assert (=> b!1010134 (= res!678626 (validKeyInArray!0 (select (arr!30623 a!3219) j!170)))))

(declare-fun b!1010135 () Bool)

(declare-fun res!678628 () Bool)

(assert (=> b!1010135 (=> (not res!678628) (not e!568337))))

(declare-datatypes ((List!21425 0))(
  ( (Nil!21422) (Cons!21421 (h!22613 (_ BitVec 64)) (t!30434 List!21425)) )
))
(declare-fun arrayNoDuplicates!0 (array!63618 (_ BitVec 32) List!21425) Bool)

(assert (=> b!1010135 (= res!678628 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21422))))

(declare-fun b!1010136 () Bool)

(declare-fun res!678621 () Bool)

(assert (=> b!1010136 (=> (not res!678621) (not e!568337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63618 (_ BitVec 32)) Bool)

(assert (=> b!1010136 (= res!678621 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010137 () Bool)

(declare-fun e!568340 () Bool)

(assert (=> b!1010137 (= e!568340 e!568335)))

(declare-fun res!678632 () Bool)

(assert (=> b!1010137 (=> (not res!678632) (not e!568335))))

(declare-fun lt!446451 () SeekEntryResult!9555)

(assert (=> b!1010137 (= res!678632 (= lt!446454 lt!446451))))

(assert (=> b!1010137 (= lt!446454 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30623 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010138 () Bool)

(declare-fun res!678634 () Bool)

(assert (=> b!1010138 (=> (not res!678634) (not e!568337))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010138 (= res!678634 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31126 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31126 a!3219))))))

(declare-fun b!1010139 () Bool)

(assert (=> b!1010139 (= e!568337 e!568340)))

(declare-fun res!678631 () Bool)

(assert (=> b!1010139 (=> (not res!678631) (not e!568340))))

(assert (=> b!1010139 (= res!678631 (= lt!446452 lt!446451))))

(assert (=> b!1010139 (= lt!446451 (Intermediate!9555 false resIndex!38 resX!38))))

(assert (=> b!1010139 (= lt!446452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30623 a!3219) j!170) mask!3464) (select (arr!30623 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010140 () Bool)

(declare-fun res!678624 () Bool)

(assert (=> b!1010140 (=> (not res!678624) (not e!568336))))

(assert (=> b!1010140 (= res!678624 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!87156 res!678629) b!1010131))

(assert (= (and b!1010131 res!678633) b!1010134))

(assert (= (and b!1010134 res!678626) b!1010128))

(assert (= (and b!1010128 res!678627) b!1010129))

(assert (= (and b!1010129 res!678623) b!1010127))

(assert (= (and b!1010127 res!678630) b!1010136))

(assert (= (and b!1010136 res!678621) b!1010135))

(assert (= (and b!1010135 res!678628) b!1010138))

(assert (= (and b!1010138 res!678634) b!1010139))

(assert (= (and b!1010139 res!678631) b!1010137))

(assert (= (and b!1010137 res!678632) b!1010130))

(assert (= (and b!1010130 res!678622) b!1010132))

(assert (= (and b!1010132 res!678625) b!1010140))

(assert (= (and b!1010140 res!678624) b!1010133))

(declare-fun m!934611 () Bool)

(assert (=> b!1010128 m!934611))

(declare-fun m!934613 () Bool)

(assert (=> b!1010134 m!934613))

(assert (=> b!1010134 m!934613))

(declare-fun m!934615 () Bool)

(assert (=> b!1010134 m!934615))

(assert (=> b!1010137 m!934613))

(assert (=> b!1010137 m!934613))

(declare-fun m!934617 () Bool)

(assert (=> b!1010137 m!934617))

(assert (=> b!1010139 m!934613))

(assert (=> b!1010139 m!934613))

(declare-fun m!934619 () Bool)

(assert (=> b!1010139 m!934619))

(assert (=> b!1010139 m!934619))

(assert (=> b!1010139 m!934613))

(declare-fun m!934621 () Bool)

(assert (=> b!1010139 m!934621))

(declare-fun m!934623 () Bool)

(assert (=> b!1010135 m!934623))

(declare-fun m!934625 () Bool)

(assert (=> start!87156 m!934625))

(declare-fun m!934627 () Bool)

(assert (=> start!87156 m!934627))

(declare-fun m!934629 () Bool)

(assert (=> b!1010136 m!934629))

(declare-fun m!934631 () Bool)

(assert (=> b!1010127 m!934631))

(declare-fun m!934633 () Bool)

(assert (=> b!1010129 m!934633))

(declare-fun m!934635 () Bool)

(assert (=> b!1010130 m!934635))

(assert (=> b!1010130 m!934635))

(declare-fun m!934637 () Bool)

(assert (=> b!1010130 m!934637))

(declare-fun m!934639 () Bool)

(assert (=> b!1010130 m!934639))

(declare-fun m!934641 () Bool)

(assert (=> b!1010130 m!934641))

(declare-fun m!934643 () Bool)

(assert (=> b!1010133 m!934643))

(declare-fun m!934645 () Bool)

(assert (=> b!1010132 m!934645))

(check-sat (not b!1010139) (not b!1010136) (not start!87156) (not b!1010127) (not b!1010129) (not b!1010128) (not b!1010134) (not b!1010135) (not b!1010133) (not b!1010132) (not b!1010130) (not b!1010137))
(check-sat)
