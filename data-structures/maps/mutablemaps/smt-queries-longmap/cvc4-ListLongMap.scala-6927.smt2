; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87158 () Bool)

(assert start!87158)

(declare-fun b!1010169 () Bool)

(declare-fun e!568356 () Bool)

(declare-fun e!568358 () Bool)

(assert (=> b!1010169 (= e!568356 e!568358)))

(declare-fun res!678673 () Bool)

(assert (=> b!1010169 (=> (not res!678673) (not e!568358))))

(declare-datatypes ((SeekEntryResult!9556 0))(
  ( (MissingZero!9556 (index!40594 (_ BitVec 32))) (Found!9556 (index!40595 (_ BitVec 32))) (Intermediate!9556 (undefined!10368 Bool) (index!40596 (_ BitVec 32)) (x!88027 (_ BitVec 32))) (Undefined!9556) (MissingVacant!9556 (index!40597 (_ BitVec 32))) )
))
(declare-fun lt!446470 () SeekEntryResult!9556)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010169 (= res!678673 (or (= lt!446470 (MissingVacant!9556 i!1194)) (= lt!446470 (MissingZero!9556 i!1194))))))

(declare-datatypes ((array!63620 0))(
  ( (array!63621 (arr!30624 (Array (_ BitVec 32) (_ BitVec 64))) (size!31127 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63620)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63620 (_ BitVec 32)) SeekEntryResult!9556)

(assert (=> b!1010169 (= lt!446470 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010170 () Bool)

(declare-fun res!678667 () Bool)

(assert (=> b!1010170 (=> (not res!678667) (not e!568358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63620 (_ BitVec 32)) Bool)

(assert (=> b!1010170 (= res!678667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010171 () Bool)

(declare-fun res!678676 () Bool)

(assert (=> b!1010171 (=> (not res!678676) (not e!568356))))

(declare-fun arrayContainsKey!0 (array!63620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010171 (= res!678676 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010172 () Bool)

(declare-fun res!678671 () Bool)

(declare-fun e!568357 () Bool)

(assert (=> b!1010172 (=> (not res!678671) (not e!568357))))

(declare-fun lt!446472 () (_ BitVec 64))

(declare-fun lt!446469 () array!63620)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446475 () SeekEntryResult!9556)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63620 (_ BitVec 32)) SeekEntryResult!9556)

(assert (=> b!1010172 (= res!678671 (not (= lt!446475 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446472 lt!446469 mask!3464))))))

(declare-fun b!1010173 () Bool)

(declare-fun e!568353 () Bool)

(assert (=> b!1010173 (= e!568353 e!568357)))

(declare-fun res!678668 () Bool)

(assert (=> b!1010173 (=> (not res!678668) (not e!568357))))

(declare-fun lt!446471 () SeekEntryResult!9556)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010173 (= res!678668 (not (= lt!446471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446472 mask!3464) lt!446472 lt!446469 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1010173 (= lt!446472 (select (store (arr!30624 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010173 (= lt!446469 (array!63621 (store (arr!30624 a!3219) i!1194 k!2224) (size!31127 a!3219)))))

(declare-fun b!1010174 () Bool)

(declare-fun e!568355 () Bool)

(assert (=> b!1010174 (= e!568358 e!568355)))

(declare-fun res!678675 () Bool)

(assert (=> b!1010174 (=> (not res!678675) (not e!568355))))

(declare-fun lt!446474 () SeekEntryResult!9556)

(assert (=> b!1010174 (= res!678675 (= lt!446471 lt!446474))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010174 (= lt!446474 (Intermediate!9556 false resIndex!38 resX!38))))

(assert (=> b!1010174 (= lt!446471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30624 a!3219) j!170) mask!3464) (select (arr!30624 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010176 () Bool)

(declare-fun res!678665 () Bool)

(assert (=> b!1010176 (=> (not res!678665) (not e!568358))))

(assert (=> b!1010176 (= res!678665 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31127 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31127 a!3219))))))

(declare-fun b!1010177 () Bool)

(declare-fun res!678664 () Bool)

(assert (=> b!1010177 (=> (not res!678664) (not e!568356))))

(assert (=> b!1010177 (= res!678664 (and (= (size!31127 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31127 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31127 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010178 () Bool)

(assert (=> b!1010178 (= e!568357 false)))

(declare-fun lt!446473 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010178 (= lt!446473 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!678674 () Bool)

(assert (=> start!87158 (=> (not res!678674) (not e!568356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87158 (= res!678674 (validMask!0 mask!3464))))

(assert (=> start!87158 e!568356))

(declare-fun array_inv!23614 (array!63620) Bool)

(assert (=> start!87158 (array_inv!23614 a!3219)))

(assert (=> start!87158 true))

(declare-fun b!1010175 () Bool)

(declare-fun res!678663 () Bool)

(assert (=> b!1010175 (=> (not res!678663) (not e!568357))))

(assert (=> b!1010175 (= res!678663 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010179 () Bool)

(declare-fun res!678666 () Bool)

(assert (=> b!1010179 (=> (not res!678666) (not e!568356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010179 (= res!678666 (validKeyInArray!0 k!2224))))

(declare-fun b!1010180 () Bool)

(declare-fun res!678669 () Bool)

(assert (=> b!1010180 (=> (not res!678669) (not e!568356))))

(assert (=> b!1010180 (= res!678669 (validKeyInArray!0 (select (arr!30624 a!3219) j!170)))))

(declare-fun b!1010181 () Bool)

(assert (=> b!1010181 (= e!568355 e!568353)))

(declare-fun res!678672 () Bool)

(assert (=> b!1010181 (=> (not res!678672) (not e!568353))))

(assert (=> b!1010181 (= res!678672 (= lt!446475 lt!446474))))

(assert (=> b!1010181 (= lt!446475 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30624 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010182 () Bool)

(declare-fun res!678670 () Bool)

(assert (=> b!1010182 (=> (not res!678670) (not e!568358))))

(declare-datatypes ((List!21426 0))(
  ( (Nil!21423) (Cons!21422 (h!22614 (_ BitVec 64)) (t!30435 List!21426)) )
))
(declare-fun arrayNoDuplicates!0 (array!63620 (_ BitVec 32) List!21426) Bool)

(assert (=> b!1010182 (= res!678670 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21423))))

(assert (= (and start!87158 res!678674) b!1010177))

(assert (= (and b!1010177 res!678664) b!1010180))

(assert (= (and b!1010180 res!678669) b!1010179))

(assert (= (and b!1010179 res!678666) b!1010171))

(assert (= (and b!1010171 res!678676) b!1010169))

(assert (= (and b!1010169 res!678673) b!1010170))

(assert (= (and b!1010170 res!678667) b!1010182))

(assert (= (and b!1010182 res!678670) b!1010176))

(assert (= (and b!1010176 res!678665) b!1010174))

(assert (= (and b!1010174 res!678675) b!1010181))

(assert (= (and b!1010181 res!678672) b!1010173))

(assert (= (and b!1010173 res!678668) b!1010172))

(assert (= (and b!1010172 res!678671) b!1010175))

(assert (= (and b!1010175 res!678663) b!1010178))

(declare-fun m!934647 () Bool)

(assert (=> b!1010172 m!934647))

(declare-fun m!934649 () Bool)

(assert (=> b!1010180 m!934649))

(assert (=> b!1010180 m!934649))

(declare-fun m!934651 () Bool)

(assert (=> b!1010180 m!934651))

(declare-fun m!934653 () Bool)

(assert (=> b!1010182 m!934653))

(declare-fun m!934655 () Bool)

(assert (=> b!1010169 m!934655))

(declare-fun m!934657 () Bool)

(assert (=> b!1010170 m!934657))

(assert (=> b!1010174 m!934649))

(assert (=> b!1010174 m!934649))

(declare-fun m!934659 () Bool)

(assert (=> b!1010174 m!934659))

(assert (=> b!1010174 m!934659))

(assert (=> b!1010174 m!934649))

(declare-fun m!934661 () Bool)

(assert (=> b!1010174 m!934661))

(declare-fun m!934663 () Bool)

(assert (=> start!87158 m!934663))

(declare-fun m!934665 () Bool)

(assert (=> start!87158 m!934665))

(declare-fun m!934667 () Bool)

(assert (=> b!1010179 m!934667))

(declare-fun m!934669 () Bool)

(assert (=> b!1010171 m!934669))

(declare-fun m!934671 () Bool)

(assert (=> b!1010178 m!934671))

(declare-fun m!934673 () Bool)

(assert (=> b!1010173 m!934673))

(assert (=> b!1010173 m!934673))

(declare-fun m!934675 () Bool)

(assert (=> b!1010173 m!934675))

(declare-fun m!934677 () Bool)

(assert (=> b!1010173 m!934677))

(declare-fun m!934679 () Bool)

(assert (=> b!1010173 m!934679))

(assert (=> b!1010181 m!934649))

(assert (=> b!1010181 m!934649))

(declare-fun m!934681 () Bool)

(assert (=> b!1010181 m!934681))

(push 1)

(assert (not b!1010172))

(assert (not b!1010170))

