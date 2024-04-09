; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45834 () Bool)

(assert start!45834)

(declare-fun b!507184 () Bool)

(declare-fun res!308296 () Bool)

(declare-fun e!296822 () Bool)

(assert (=> b!507184 (=> (not res!308296) (not e!296822))))

(declare-datatypes ((array!32550 0))(
  ( (array!32551 (arr!15652 (Array (_ BitVec 32) (_ BitVec 64))) (size!16016 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32550)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507184 (= res!308296 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507185 () Bool)

(declare-fun res!308293 () Bool)

(assert (=> b!507185 (=> (not res!308293) (not e!296822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507185 (= res!308293 (validKeyInArray!0 k0!2280))))

(declare-fun b!507186 () Bool)

(declare-fun e!296825 () Bool)

(declare-fun e!296826 () Bool)

(assert (=> b!507186 (= e!296825 (not e!296826))))

(declare-fun res!308303 () Bool)

(assert (=> b!507186 (=> res!308303 e!296826)))

(declare-datatypes ((SeekEntryResult!4126 0))(
  ( (MissingZero!4126 (index!18692 (_ BitVec 32))) (Found!4126 (index!18693 (_ BitVec 32))) (Intermediate!4126 (undefined!4938 Bool) (index!18694 (_ BitVec 32)) (x!47714 (_ BitVec 32))) (Undefined!4126) (MissingVacant!4126 (index!18695 (_ BitVec 32))) )
))
(declare-fun lt!231637 () SeekEntryResult!4126)

(declare-fun lt!231636 () (_ BitVec 64))

(declare-fun lt!231644 () array!32550)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!231639 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32550 (_ BitVec 32)) SeekEntryResult!4126)

(assert (=> b!507186 (= res!308303 (= lt!231637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231639 lt!231636 lt!231644 mask!3524)))))

(declare-fun lt!231640 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507186 (= lt!231637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231640 (select (arr!15652 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507186 (= lt!231639 (toIndex!0 lt!231636 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507186 (= lt!231636 (select (store (arr!15652 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507186 (= lt!231640 (toIndex!0 (select (arr!15652 a!3235) j!176) mask!3524))))

(assert (=> b!507186 (= lt!231644 (array!32551 (store (arr!15652 a!3235) i!1204 k0!2280) (size!16016 a!3235)))))

(declare-fun e!296827 () Bool)

(assert (=> b!507186 e!296827))

(declare-fun res!308294 () Bool)

(assert (=> b!507186 (=> (not res!308294) (not e!296827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32550 (_ BitVec 32)) Bool)

(assert (=> b!507186 (= res!308294 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15532 0))(
  ( (Unit!15533) )
))
(declare-fun lt!231643 () Unit!15532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15532)

(assert (=> b!507186 (= lt!231643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507187 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32550 (_ BitVec 32)) SeekEntryResult!4126)

(assert (=> b!507187 (= e!296827 (= (seekEntryOrOpen!0 (select (arr!15652 a!3235) j!176) a!3235 mask!3524) (Found!4126 j!176)))))

(declare-fun b!507188 () Bool)

(declare-fun e!296823 () Bool)

(assert (=> b!507188 (= e!296826 e!296823)))

(declare-fun res!308298 () Bool)

(assert (=> b!507188 (=> res!308298 e!296823)))

(declare-fun lt!231638 () Bool)

(assert (=> b!507188 (= res!308298 (or (and (not lt!231638) (undefined!4938 lt!231637)) (and (not lt!231638) (not (undefined!4938 lt!231637)))))))

(get-info :version)

(assert (=> b!507188 (= lt!231638 (not ((_ is Intermediate!4126) lt!231637)))))

(declare-fun b!507189 () Bool)

(declare-fun res!308301 () Bool)

(assert (=> b!507189 (=> (not res!308301) (not e!296822))))

(assert (=> b!507189 (= res!308301 (and (= (size!16016 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16016 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16016 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!308299 () Bool)

(assert (=> start!45834 (=> (not res!308299) (not e!296822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45834 (= res!308299 (validMask!0 mask!3524))))

(assert (=> start!45834 e!296822))

(assert (=> start!45834 true))

(declare-fun array_inv!11426 (array!32550) Bool)

(assert (=> start!45834 (array_inv!11426 a!3235)))

(declare-fun b!507190 () Bool)

(declare-fun res!308297 () Bool)

(assert (=> b!507190 (=> (not res!308297) (not e!296825))))

(assert (=> b!507190 (= res!308297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507191 () Bool)

(declare-fun res!308300 () Bool)

(assert (=> b!507191 (=> (not res!308300) (not e!296822))))

(assert (=> b!507191 (= res!308300 (validKeyInArray!0 (select (arr!15652 a!3235) j!176)))))

(declare-fun b!507192 () Bool)

(assert (=> b!507192 (= e!296822 e!296825)))

(declare-fun res!308302 () Bool)

(assert (=> b!507192 (=> (not res!308302) (not e!296825))))

(declare-fun lt!231642 () SeekEntryResult!4126)

(assert (=> b!507192 (= res!308302 (or (= lt!231642 (MissingZero!4126 i!1204)) (= lt!231642 (MissingVacant!4126 i!1204))))))

(assert (=> b!507192 (= lt!231642 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507193 () Bool)

(assert (=> b!507193 (= e!296823 true)))

(declare-fun lt!231641 () SeekEntryResult!4126)

(assert (=> b!507193 (= lt!231641 (seekEntryOrOpen!0 lt!231636 lt!231644 mask!3524))))

(assert (=> b!507193 false))

(declare-fun b!507194 () Bool)

(declare-fun res!308295 () Bool)

(assert (=> b!507194 (=> (not res!308295) (not e!296825))))

(declare-datatypes ((List!9863 0))(
  ( (Nil!9860) (Cons!9859 (h!10736 (_ BitVec 64)) (t!16099 List!9863)) )
))
(declare-fun arrayNoDuplicates!0 (array!32550 (_ BitVec 32) List!9863) Bool)

(assert (=> b!507194 (= res!308295 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9860))))

(assert (= (and start!45834 res!308299) b!507189))

(assert (= (and b!507189 res!308301) b!507191))

(assert (= (and b!507191 res!308300) b!507185))

(assert (= (and b!507185 res!308293) b!507184))

(assert (= (and b!507184 res!308296) b!507192))

(assert (= (and b!507192 res!308302) b!507190))

(assert (= (and b!507190 res!308297) b!507194))

(assert (= (and b!507194 res!308295) b!507186))

(assert (= (and b!507186 res!308294) b!507187))

(assert (= (and b!507186 (not res!308303)) b!507188))

(assert (= (and b!507188 (not res!308298)) b!507193))

(declare-fun m!487983 () Bool)

(assert (=> b!507187 m!487983))

(assert (=> b!507187 m!487983))

(declare-fun m!487985 () Bool)

(assert (=> b!507187 m!487985))

(declare-fun m!487987 () Bool)

(assert (=> start!45834 m!487987))

(declare-fun m!487989 () Bool)

(assert (=> start!45834 m!487989))

(declare-fun m!487991 () Bool)

(assert (=> b!507184 m!487991))

(assert (=> b!507191 m!487983))

(assert (=> b!507191 m!487983))

(declare-fun m!487993 () Bool)

(assert (=> b!507191 m!487993))

(declare-fun m!487995 () Bool)

(assert (=> b!507186 m!487995))

(declare-fun m!487997 () Bool)

(assert (=> b!507186 m!487997))

(declare-fun m!487999 () Bool)

(assert (=> b!507186 m!487999))

(declare-fun m!488001 () Bool)

(assert (=> b!507186 m!488001))

(assert (=> b!507186 m!487983))

(declare-fun m!488003 () Bool)

(assert (=> b!507186 m!488003))

(assert (=> b!507186 m!487983))

(declare-fun m!488005 () Bool)

(assert (=> b!507186 m!488005))

(assert (=> b!507186 m!487983))

(declare-fun m!488007 () Bool)

(assert (=> b!507186 m!488007))

(declare-fun m!488009 () Bool)

(assert (=> b!507186 m!488009))

(declare-fun m!488011 () Bool)

(assert (=> b!507185 m!488011))

(declare-fun m!488013 () Bool)

(assert (=> b!507190 m!488013))

(declare-fun m!488015 () Bool)

(assert (=> b!507194 m!488015))

(declare-fun m!488017 () Bool)

(assert (=> b!507192 m!488017))

(declare-fun m!488019 () Bool)

(assert (=> b!507193 m!488019))

(check-sat (not b!507186) (not b!507192) (not b!507191) (not b!507187) (not start!45834) (not b!507190) (not b!507193) (not b!507194) (not b!507184) (not b!507185))
(check-sat)
