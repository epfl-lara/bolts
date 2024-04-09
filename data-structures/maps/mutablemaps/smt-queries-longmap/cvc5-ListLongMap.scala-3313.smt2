; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45832 () Bool)

(assert start!45832)

(declare-fun b!507152 () Bool)

(declare-fun res!308266 () Bool)

(declare-fun e!296809 () Bool)

(assert (=> b!507152 (=> (not res!308266) (not e!296809))))

(declare-datatypes ((array!32548 0))(
  ( (array!32549 (arr!15651 (Array (_ BitVec 32) (_ BitVec 64))) (size!16015 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32548)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507152 (= res!308266 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!507153 () Bool)

(declare-fun e!296808 () Bool)

(declare-datatypes ((SeekEntryResult!4125 0))(
  ( (MissingZero!4125 (index!18688 (_ BitVec 32))) (Found!4125 (index!18689 (_ BitVec 32))) (Intermediate!4125 (undefined!4937 Bool) (index!18690 (_ BitVec 32)) (x!47713 (_ BitVec 32))) (Undefined!4125) (MissingVacant!4125 (index!18691 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32548 (_ BitVec 32)) SeekEntryResult!4125)

(assert (=> b!507153 (= e!296808 (= (seekEntryOrOpen!0 (select (arr!15651 a!3235) j!176) a!3235 mask!3524) (Found!4125 j!176)))))

(declare-fun b!507154 () Bool)

(declare-fun e!296806 () Bool)

(assert (=> b!507154 (= e!296809 e!296806)))

(declare-fun res!308269 () Bool)

(assert (=> b!507154 (=> (not res!308269) (not e!296806))))

(declare-fun lt!231615 () SeekEntryResult!4125)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507154 (= res!308269 (or (= lt!231615 (MissingZero!4125 i!1204)) (= lt!231615 (MissingVacant!4125 i!1204))))))

(assert (=> b!507154 (= lt!231615 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507155 () Bool)

(declare-fun res!308267 () Bool)

(assert (=> b!507155 (=> (not res!308267) (not e!296809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507155 (= res!308267 (validKeyInArray!0 (select (arr!15651 a!3235) j!176)))))

(declare-fun b!507156 () Bool)

(declare-fun e!296804 () Bool)

(assert (=> b!507156 (= e!296804 true)))

(declare-fun lt!231616 () SeekEntryResult!4125)

(declare-fun lt!231610 () array!32548)

(declare-fun lt!231611 () (_ BitVec 64))

(assert (=> b!507156 (= lt!231616 (seekEntryOrOpen!0 lt!231611 lt!231610 mask!3524))))

(assert (=> b!507156 false))

(declare-fun b!507157 () Bool)

(declare-fun res!308261 () Bool)

(assert (=> b!507157 (=> (not res!308261) (not e!296809))))

(assert (=> b!507157 (= res!308261 (and (= (size!16015 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16015 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16015 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507158 () Bool)

(declare-fun e!296805 () Bool)

(assert (=> b!507158 (= e!296805 e!296804)))

(declare-fun res!308263 () Bool)

(assert (=> b!507158 (=> res!308263 e!296804)))

(declare-fun lt!231612 () Bool)

(declare-fun lt!231614 () SeekEntryResult!4125)

(assert (=> b!507158 (= res!308263 (or (and (not lt!231612) (undefined!4937 lt!231614)) (and (not lt!231612) (not (undefined!4937 lt!231614)))))))

(assert (=> b!507158 (= lt!231612 (not (is-Intermediate!4125 lt!231614)))))

(declare-fun b!507159 () Bool)

(declare-fun res!308270 () Bool)

(assert (=> b!507159 (=> (not res!308270) (not e!296806))))

(declare-datatypes ((List!9862 0))(
  ( (Nil!9859) (Cons!9858 (h!10735 (_ BitVec 64)) (t!16098 List!9862)) )
))
(declare-fun arrayNoDuplicates!0 (array!32548 (_ BitVec 32) List!9862) Bool)

(assert (=> b!507159 (= res!308270 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9859))))

(declare-fun res!308268 () Bool)

(assert (=> start!45832 (=> (not res!308268) (not e!296809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45832 (= res!308268 (validMask!0 mask!3524))))

(assert (=> start!45832 e!296809))

(assert (=> start!45832 true))

(declare-fun array_inv!11425 (array!32548) Bool)

(assert (=> start!45832 (array_inv!11425 a!3235)))

(declare-fun b!507151 () Bool)

(declare-fun res!308264 () Bool)

(assert (=> b!507151 (=> (not res!308264) (not e!296806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32548 (_ BitVec 32)) Bool)

(assert (=> b!507151 (= res!308264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507160 () Bool)

(declare-fun res!308262 () Bool)

(assert (=> b!507160 (=> (not res!308262) (not e!296809))))

(assert (=> b!507160 (= res!308262 (validKeyInArray!0 k!2280))))

(declare-fun b!507161 () Bool)

(assert (=> b!507161 (= e!296806 (not e!296805))))

(declare-fun res!308265 () Bool)

(assert (=> b!507161 (=> res!308265 e!296805)))

(declare-fun lt!231617 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32548 (_ BitVec 32)) SeekEntryResult!4125)

(assert (=> b!507161 (= res!308265 (= lt!231614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231617 lt!231611 lt!231610 mask!3524)))))

(declare-fun lt!231613 () (_ BitVec 32))

(assert (=> b!507161 (= lt!231614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231613 (select (arr!15651 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507161 (= lt!231617 (toIndex!0 lt!231611 mask!3524))))

(assert (=> b!507161 (= lt!231611 (select (store (arr!15651 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507161 (= lt!231613 (toIndex!0 (select (arr!15651 a!3235) j!176) mask!3524))))

(assert (=> b!507161 (= lt!231610 (array!32549 (store (arr!15651 a!3235) i!1204 k!2280) (size!16015 a!3235)))))

(assert (=> b!507161 e!296808))

(declare-fun res!308260 () Bool)

(assert (=> b!507161 (=> (not res!308260) (not e!296808))))

(assert (=> b!507161 (= res!308260 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15530 0))(
  ( (Unit!15531) )
))
(declare-fun lt!231609 () Unit!15530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15530)

(assert (=> b!507161 (= lt!231609 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45832 res!308268) b!507157))

(assert (= (and b!507157 res!308261) b!507155))

(assert (= (and b!507155 res!308267) b!507160))

(assert (= (and b!507160 res!308262) b!507152))

(assert (= (and b!507152 res!308266) b!507154))

(assert (= (and b!507154 res!308269) b!507151))

(assert (= (and b!507151 res!308264) b!507159))

(assert (= (and b!507159 res!308270) b!507161))

(assert (= (and b!507161 res!308260) b!507153))

(assert (= (and b!507161 (not res!308265)) b!507158))

(assert (= (and b!507158 (not res!308263)) b!507156))

(declare-fun m!487945 () Bool)

(assert (=> b!507160 m!487945))

(declare-fun m!487947 () Bool)

(assert (=> b!507159 m!487947))

(declare-fun m!487949 () Bool)

(assert (=> b!507151 m!487949))

(declare-fun m!487951 () Bool)

(assert (=> start!45832 m!487951))

(declare-fun m!487953 () Bool)

(assert (=> start!45832 m!487953))

(declare-fun m!487955 () Bool)

(assert (=> b!507152 m!487955))

(declare-fun m!487957 () Bool)

(assert (=> b!507156 m!487957))

(declare-fun m!487959 () Bool)

(assert (=> b!507153 m!487959))

(assert (=> b!507153 m!487959))

(declare-fun m!487961 () Bool)

(assert (=> b!507153 m!487961))

(declare-fun m!487963 () Bool)

(assert (=> b!507154 m!487963))

(declare-fun m!487965 () Bool)

(assert (=> b!507161 m!487965))

(declare-fun m!487967 () Bool)

(assert (=> b!507161 m!487967))

(assert (=> b!507161 m!487959))

(declare-fun m!487969 () Bool)

(assert (=> b!507161 m!487969))

(declare-fun m!487971 () Bool)

(assert (=> b!507161 m!487971))

(declare-fun m!487973 () Bool)

(assert (=> b!507161 m!487973))

(assert (=> b!507161 m!487959))

(declare-fun m!487975 () Bool)

(assert (=> b!507161 m!487975))

(declare-fun m!487977 () Bool)

(assert (=> b!507161 m!487977))

(assert (=> b!507161 m!487959))

(declare-fun m!487979 () Bool)

(assert (=> b!507161 m!487979))

(assert (=> b!507155 m!487959))

(assert (=> b!507155 m!487959))

(declare-fun m!487981 () Bool)

(assert (=> b!507155 m!487981))

(push 1)

