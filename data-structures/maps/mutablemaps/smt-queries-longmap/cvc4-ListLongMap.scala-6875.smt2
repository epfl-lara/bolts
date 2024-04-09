; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86540 () Bool)

(assert start!86540)

(declare-fun b!1002019 () Bool)

(declare-fun res!671667 () Bool)

(declare-fun e!564575 () Bool)

(assert (=> b!1002019 (=> (not res!671667) (not e!564575))))

(declare-datatypes ((array!63293 0))(
  ( (array!63294 (arr!30468 (Array (_ BitVec 32) (_ BitVec 64))) (size!30971 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63293)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002019 (= res!671667 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002020 () Bool)

(declare-fun res!671661 () Bool)

(declare-fun e!564573 () Bool)

(assert (=> b!1002020 (=> (not res!671661) (not e!564573))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442978 () array!63293)

(declare-datatypes ((SeekEntryResult!9400 0))(
  ( (MissingZero!9400 (index!39970 (_ BitVec 32))) (Found!9400 (index!39971 (_ BitVec 32))) (Intermediate!9400 (undefined!10212 Bool) (index!39972 (_ BitVec 32)) (x!87413 (_ BitVec 32))) (Undefined!9400) (MissingVacant!9400 (index!39973 (_ BitVec 32))) )
))
(declare-fun lt!442982 () SeekEntryResult!9400)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!442979 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63293 (_ BitVec 32)) SeekEntryResult!9400)

(assert (=> b!1002020 (= res!671661 (not (= lt!442982 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442979 lt!442978 mask!3464))))))

(declare-fun b!1002021 () Bool)

(declare-fun res!671654 () Bool)

(declare-fun e!564578 () Bool)

(assert (=> b!1002021 (=> (not res!671654) (not e!564578))))

(declare-datatypes ((List!21270 0))(
  ( (Nil!21267) (Cons!21266 (h!22443 (_ BitVec 64)) (t!30279 List!21270)) )
))
(declare-fun arrayNoDuplicates!0 (array!63293 (_ BitVec 32) List!21270) Bool)

(assert (=> b!1002021 (= res!671654 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21267))))

(declare-fun b!1002022 () Bool)

(declare-fun res!671663 () Bool)

(assert (=> b!1002022 (=> (not res!671663) (not e!564575))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002022 (= res!671663 (and (= (size!30971 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30971 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30971 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1002023 () Bool)

(declare-fun e!564577 () Bool)

(assert (=> b!1002023 (= e!564577 false)))

(declare-fun lt!442983 () (_ BitVec 32))

(declare-fun lt!442976 () SeekEntryResult!9400)

(assert (=> b!1002023 (= lt!442976 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442983 lt!442979 lt!442978 mask!3464))))

(declare-fun b!1002024 () Bool)

(assert (=> b!1002024 (= e!564575 e!564578)))

(declare-fun res!671658 () Bool)

(assert (=> b!1002024 (=> (not res!671658) (not e!564578))))

(declare-fun lt!442981 () SeekEntryResult!9400)

(assert (=> b!1002024 (= res!671658 (or (= lt!442981 (MissingVacant!9400 i!1194)) (= lt!442981 (MissingZero!9400 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63293 (_ BitVec 32)) SeekEntryResult!9400)

(assert (=> b!1002024 (= lt!442981 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1002025 () Bool)

(assert (=> b!1002025 (= e!564573 e!564577)))

(declare-fun res!671657 () Bool)

(assert (=> b!1002025 (=> (not res!671657) (not e!564577))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002025 (= res!671657 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442983 #b00000000000000000000000000000000) (bvslt lt!442983 (size!30971 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002025 (= lt!442983 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!671653 () Bool)

(assert (=> start!86540 (=> (not res!671653) (not e!564575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86540 (= res!671653 (validMask!0 mask!3464))))

(assert (=> start!86540 e!564575))

(declare-fun array_inv!23458 (array!63293) Bool)

(assert (=> start!86540 (array_inv!23458 a!3219)))

(assert (=> start!86540 true))

(declare-fun b!1002026 () Bool)

(declare-fun e!564572 () Bool)

(assert (=> b!1002026 (= e!564572 e!564573)))

(declare-fun res!671659 () Bool)

(assert (=> b!1002026 (=> (not res!671659) (not e!564573))))

(declare-fun lt!442977 () SeekEntryResult!9400)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002026 (= res!671659 (not (= lt!442977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442979 mask!3464) lt!442979 lt!442978 mask!3464))))))

(assert (=> b!1002026 (= lt!442979 (select (store (arr!30468 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1002026 (= lt!442978 (array!63294 (store (arr!30468 a!3219) i!1194 k!2224) (size!30971 a!3219)))))

(declare-fun b!1002027 () Bool)

(declare-fun e!564574 () Bool)

(assert (=> b!1002027 (= e!564574 e!564572)))

(declare-fun res!671660 () Bool)

(assert (=> b!1002027 (=> (not res!671660) (not e!564572))))

(declare-fun lt!442980 () SeekEntryResult!9400)

(assert (=> b!1002027 (= res!671660 (= lt!442982 lt!442980))))

(assert (=> b!1002027 (= lt!442982 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30468 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002028 () Bool)

(declare-fun res!671666 () Bool)

(assert (=> b!1002028 (=> (not res!671666) (not e!564575))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002028 (= res!671666 (validKeyInArray!0 (select (arr!30468 a!3219) j!170)))))

(declare-fun b!1002029 () Bool)

(declare-fun res!671665 () Bool)

(assert (=> b!1002029 (=> (not res!671665) (not e!564573))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1002029 (= res!671665 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002030 () Bool)

(declare-fun res!671662 () Bool)

(assert (=> b!1002030 (=> (not res!671662) (not e!564578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63293 (_ BitVec 32)) Bool)

(assert (=> b!1002030 (= res!671662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002031 () Bool)

(declare-fun res!671656 () Bool)

(assert (=> b!1002031 (=> (not res!671656) (not e!564578))))

(assert (=> b!1002031 (= res!671656 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30971 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30971 a!3219))))))

(declare-fun b!1002032 () Bool)

(assert (=> b!1002032 (= e!564578 e!564574)))

(declare-fun res!671664 () Bool)

(assert (=> b!1002032 (=> (not res!671664) (not e!564574))))

(assert (=> b!1002032 (= res!671664 (= lt!442977 lt!442980))))

(assert (=> b!1002032 (= lt!442980 (Intermediate!9400 false resIndex!38 resX!38))))

(assert (=> b!1002032 (= lt!442977 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30468 a!3219) j!170) mask!3464) (select (arr!30468 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002033 () Bool)

(declare-fun res!671668 () Bool)

(assert (=> b!1002033 (=> (not res!671668) (not e!564575))))

(assert (=> b!1002033 (= res!671668 (validKeyInArray!0 k!2224))))

(declare-fun b!1002034 () Bool)

(declare-fun res!671655 () Bool)

(assert (=> b!1002034 (=> (not res!671655) (not e!564577))))

(assert (=> b!1002034 (= res!671655 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442983 (select (arr!30468 a!3219) j!170) a!3219 mask!3464) lt!442980))))

(assert (= (and start!86540 res!671653) b!1002022))

(assert (= (and b!1002022 res!671663) b!1002028))

(assert (= (and b!1002028 res!671666) b!1002033))

(assert (= (and b!1002033 res!671668) b!1002019))

(assert (= (and b!1002019 res!671667) b!1002024))

(assert (= (and b!1002024 res!671658) b!1002030))

(assert (= (and b!1002030 res!671662) b!1002021))

(assert (= (and b!1002021 res!671654) b!1002031))

(assert (= (and b!1002031 res!671656) b!1002032))

(assert (= (and b!1002032 res!671664) b!1002027))

(assert (= (and b!1002027 res!671660) b!1002026))

(assert (= (and b!1002026 res!671659) b!1002020))

(assert (= (and b!1002020 res!671661) b!1002029))

(assert (= (and b!1002029 res!671665) b!1002025))

(assert (= (and b!1002025 res!671657) b!1002034))

(assert (= (and b!1002034 res!671655) b!1002023))

(declare-fun m!928061 () Bool)

(assert (=> b!1002028 m!928061))

(assert (=> b!1002028 m!928061))

(declare-fun m!928063 () Bool)

(assert (=> b!1002028 m!928063))

(assert (=> b!1002027 m!928061))

(assert (=> b!1002027 m!928061))

(declare-fun m!928065 () Bool)

(assert (=> b!1002027 m!928065))

(declare-fun m!928067 () Bool)

(assert (=> start!86540 m!928067))

(declare-fun m!928069 () Bool)

(assert (=> start!86540 m!928069))

(declare-fun m!928071 () Bool)

(assert (=> b!1002033 m!928071))

(declare-fun m!928073 () Bool)

(assert (=> b!1002025 m!928073))

(declare-fun m!928075 () Bool)

(assert (=> b!1002019 m!928075))

(declare-fun m!928077 () Bool)

(assert (=> b!1002021 m!928077))

(assert (=> b!1002034 m!928061))

(assert (=> b!1002034 m!928061))

(declare-fun m!928079 () Bool)

(assert (=> b!1002034 m!928079))

(assert (=> b!1002032 m!928061))

(assert (=> b!1002032 m!928061))

(declare-fun m!928081 () Bool)

(assert (=> b!1002032 m!928081))

(assert (=> b!1002032 m!928081))

(assert (=> b!1002032 m!928061))

(declare-fun m!928083 () Bool)

(assert (=> b!1002032 m!928083))

(declare-fun m!928085 () Bool)

(assert (=> b!1002030 m!928085))

(declare-fun m!928087 () Bool)

(assert (=> b!1002023 m!928087))

(declare-fun m!928089 () Bool)

(assert (=> b!1002024 m!928089))

(declare-fun m!928091 () Bool)

(assert (=> b!1002026 m!928091))

(assert (=> b!1002026 m!928091))

(declare-fun m!928093 () Bool)

(assert (=> b!1002026 m!928093))

(declare-fun m!928095 () Bool)

(assert (=> b!1002026 m!928095))

(declare-fun m!928097 () Bool)

(assert (=> b!1002026 m!928097))

(declare-fun m!928099 () Bool)

(assert (=> b!1002020 m!928099))

(push 1)

