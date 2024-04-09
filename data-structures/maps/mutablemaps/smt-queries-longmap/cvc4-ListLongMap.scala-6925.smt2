; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87086 () Bool)

(assert start!87086)

(declare-fun b!1009602 () Bool)

(declare-fun e!568049 () Bool)

(declare-fun e!568048 () Bool)

(assert (=> b!1009602 (= e!568049 e!568048)))

(declare-fun res!678301 () Bool)

(assert (=> b!1009602 (=> (not res!678301) (not e!568048))))

(declare-datatypes ((SeekEntryResult!9550 0))(
  ( (MissingZero!9550 (index!40570 (_ BitVec 32))) (Found!9550 (index!40571 (_ BitVec 32))) (Intermediate!9550 (undefined!10362 Bool) (index!40572 (_ BitVec 32)) (x!87996 (_ BitVec 32))) (Undefined!9550) (MissingVacant!9550 (index!40573 (_ BitVec 32))) )
))
(declare-fun lt!446225 () SeekEntryResult!9550)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009602 (= res!678301 (or (= lt!446225 (MissingVacant!9550 i!1194)) (= lt!446225 (MissingZero!9550 i!1194))))))

(declare-datatypes ((array!63605 0))(
  ( (array!63606 (arr!30618 (Array (_ BitVec 32) (_ BitVec 64))) (size!31121 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63605)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63605 (_ BitVec 32)) SeekEntryResult!9550)

(assert (=> b!1009602 (= lt!446225 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!678296 () Bool)

(assert (=> start!87086 (=> (not res!678296) (not e!568049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87086 (= res!678296 (validMask!0 mask!3464))))

(assert (=> start!87086 e!568049))

(declare-fun array_inv!23608 (array!63605) Bool)

(assert (=> start!87086 (array_inv!23608 a!3219)))

(assert (=> start!87086 true))

(declare-fun b!1009603 () Bool)

(declare-fun e!568047 () Bool)

(assert (=> b!1009603 (= e!568047 false)))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!446221 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009603 (= lt!446221 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1009604 () Bool)

(declare-fun e!568050 () Bool)

(assert (=> b!1009604 (= e!568048 e!568050)))

(declare-fun res!678292 () Bool)

(assert (=> b!1009604 (=> (not res!678292) (not e!568050))))

(declare-fun lt!446222 () SeekEntryResult!9550)

(declare-fun lt!446226 () SeekEntryResult!9550)

(assert (=> b!1009604 (= res!678292 (= lt!446222 lt!446226))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1009604 (= lt!446226 (Intermediate!9550 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63605 (_ BitVec 32)) SeekEntryResult!9550)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009604 (= lt!446222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30618 a!3219) j!170) mask!3464) (select (arr!30618 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009605 () Bool)

(declare-fun res!678295 () Bool)

(assert (=> b!1009605 (=> (not res!678295) (not e!568047))))

(declare-fun lt!446220 () SeekEntryResult!9550)

(declare-fun lt!446223 () array!63605)

(declare-fun lt!446224 () (_ BitVec 64))

(assert (=> b!1009605 (= res!678295 (not (= lt!446220 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446224 lt!446223 mask!3464))))))

(declare-fun b!1009606 () Bool)

(declare-fun res!678297 () Bool)

(assert (=> b!1009606 (=> (not res!678297) (not e!568049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009606 (= res!678297 (validKeyInArray!0 k!2224))))

(declare-fun b!1009607 () Bool)

(declare-fun res!678302 () Bool)

(assert (=> b!1009607 (=> (not res!678302) (not e!568049))))

(assert (=> b!1009607 (= res!678302 (validKeyInArray!0 (select (arr!30618 a!3219) j!170)))))

(declare-fun b!1009608 () Bool)

(declare-fun res!678300 () Bool)

(assert (=> b!1009608 (=> (not res!678300) (not e!568047))))

(assert (=> b!1009608 (= res!678300 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009609 () Bool)

(declare-fun res!678304 () Bool)

(assert (=> b!1009609 (=> (not res!678304) (not e!568049))))

(assert (=> b!1009609 (= res!678304 (and (= (size!31121 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31121 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31121 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009610 () Bool)

(declare-fun res!678299 () Bool)

(assert (=> b!1009610 (=> (not res!678299) (not e!568048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63605 (_ BitVec 32)) Bool)

(assert (=> b!1009610 (= res!678299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009611 () Bool)

(declare-fun res!678294 () Bool)

(assert (=> b!1009611 (=> (not res!678294) (not e!568048))))

(declare-datatypes ((List!21420 0))(
  ( (Nil!21417) (Cons!21416 (h!22605 (_ BitVec 64)) (t!30429 List!21420)) )
))
(declare-fun arrayNoDuplicates!0 (array!63605 (_ BitVec 32) List!21420) Bool)

(assert (=> b!1009611 (= res!678294 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21417))))

(declare-fun b!1009612 () Bool)

(declare-fun e!568052 () Bool)

(assert (=> b!1009612 (= e!568052 e!568047)))

(declare-fun res!678291 () Bool)

(assert (=> b!1009612 (=> (not res!678291) (not e!568047))))

(assert (=> b!1009612 (= res!678291 (not (= lt!446222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446224 mask!3464) lt!446224 lt!446223 mask!3464))))))

(assert (=> b!1009612 (= lt!446224 (select (store (arr!30618 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009612 (= lt!446223 (array!63606 (store (arr!30618 a!3219) i!1194 k!2224) (size!31121 a!3219)))))

(declare-fun b!1009613 () Bool)

(declare-fun res!678303 () Bool)

(assert (=> b!1009613 (=> (not res!678303) (not e!568048))))

(assert (=> b!1009613 (= res!678303 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31121 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31121 a!3219))))))

(declare-fun b!1009614 () Bool)

(assert (=> b!1009614 (= e!568050 e!568052)))

(declare-fun res!678293 () Bool)

(assert (=> b!1009614 (=> (not res!678293) (not e!568052))))

(assert (=> b!1009614 (= res!678293 (= lt!446220 lt!446226))))

(assert (=> b!1009614 (= lt!446220 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30618 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009615 () Bool)

(declare-fun res!678298 () Bool)

(assert (=> b!1009615 (=> (not res!678298) (not e!568049))))

(declare-fun arrayContainsKey!0 (array!63605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009615 (= res!678298 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!87086 res!678296) b!1009609))

(assert (= (and b!1009609 res!678304) b!1009607))

(assert (= (and b!1009607 res!678302) b!1009606))

(assert (= (and b!1009606 res!678297) b!1009615))

(assert (= (and b!1009615 res!678298) b!1009602))

(assert (= (and b!1009602 res!678301) b!1009610))

(assert (= (and b!1009610 res!678299) b!1009611))

(assert (= (and b!1009611 res!678294) b!1009613))

(assert (= (and b!1009613 res!678303) b!1009604))

(assert (= (and b!1009604 res!678292) b!1009614))

(assert (= (and b!1009614 res!678293) b!1009612))

(assert (= (and b!1009612 res!678291) b!1009605))

(assert (= (and b!1009605 res!678295) b!1009608))

(assert (= (and b!1009608 res!678300) b!1009603))

(declare-fun m!934245 () Bool)

(assert (=> b!1009607 m!934245))

(assert (=> b!1009607 m!934245))

(declare-fun m!934247 () Bool)

(assert (=> b!1009607 m!934247))

(declare-fun m!934249 () Bool)

(assert (=> b!1009611 m!934249))

(declare-fun m!934251 () Bool)

(assert (=> start!87086 m!934251))

(declare-fun m!934253 () Bool)

(assert (=> start!87086 m!934253))

(declare-fun m!934255 () Bool)

(assert (=> b!1009603 m!934255))

(assert (=> b!1009604 m!934245))

(assert (=> b!1009604 m!934245))

(declare-fun m!934257 () Bool)

(assert (=> b!1009604 m!934257))

(assert (=> b!1009604 m!934257))

(assert (=> b!1009604 m!934245))

(declare-fun m!934259 () Bool)

(assert (=> b!1009604 m!934259))

(assert (=> b!1009614 m!934245))

(assert (=> b!1009614 m!934245))

(declare-fun m!934261 () Bool)

(assert (=> b!1009614 m!934261))

(declare-fun m!934263 () Bool)

(assert (=> b!1009605 m!934263))

(declare-fun m!934265 () Bool)

(assert (=> b!1009610 m!934265))

(declare-fun m!934267 () Bool)

(assert (=> b!1009606 m!934267))

(declare-fun m!934269 () Bool)

(assert (=> b!1009615 m!934269))

(declare-fun m!934271 () Bool)

(assert (=> b!1009602 m!934271))

(declare-fun m!934273 () Bool)

(assert (=> b!1009612 m!934273))

(assert (=> b!1009612 m!934273))

(declare-fun m!934275 () Bool)

(assert (=> b!1009612 m!934275))

(declare-fun m!934277 () Bool)

(assert (=> b!1009612 m!934277))

(declare-fun m!934279 () Bool)

(assert (=> b!1009612 m!934279))

(push 1)

