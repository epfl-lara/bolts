; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86256 () Bool)

(assert start!86256)

(declare-fun b!998184 () Bool)

(declare-fun res!668142 () Bool)

(declare-fun e!562949 () Bool)

(assert (=> b!998184 (=> (not res!668142) (not e!562949))))

(declare-datatypes ((array!63111 0))(
  ( (array!63112 (arr!30380 (Array (_ BitVec 32) (_ BitVec 64))) (size!30883 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63111)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998184 (= res!668142 (validKeyInArray!0 (select (arr!30380 a!3219) j!170)))))

(declare-fun b!998185 () Bool)

(declare-fun e!562951 () Bool)

(declare-fun e!562952 () Bool)

(assert (=> b!998185 (= e!562951 e!562952)))

(declare-fun res!668145 () Bool)

(assert (=> b!998185 (=> (not res!668145) (not e!562952))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9312 0))(
  ( (MissingZero!9312 (index!39618 (_ BitVec 32))) (Found!9312 (index!39619 (_ BitVec 32))) (Intermediate!9312 (undefined!10124 Bool) (index!39620 (_ BitVec 32)) (x!87081 (_ BitVec 32))) (Undefined!9312) (MissingVacant!9312 (index!39621 (_ BitVec 32))) )
))
(declare-fun lt!441626 () SeekEntryResult!9312)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63111 (_ BitVec 32)) SeekEntryResult!9312)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998185 (= res!668145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30380 a!3219) j!170) mask!3464) (select (arr!30380 a!3219) j!170) a!3219 mask!3464) lt!441626))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998185 (= lt!441626 (Intermediate!9312 false resIndex!38 resX!38))))

(declare-fun b!998186 () Bool)

(assert (=> b!998186 (= e!562949 e!562951)))

(declare-fun res!668140 () Bool)

(assert (=> b!998186 (=> (not res!668140) (not e!562951))))

(declare-fun lt!441627 () SeekEntryResult!9312)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998186 (= res!668140 (or (= lt!441627 (MissingVacant!9312 i!1194)) (= lt!441627 (MissingZero!9312 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63111 (_ BitVec 32)) SeekEntryResult!9312)

(assert (=> b!998186 (= lt!441627 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998187 () Bool)

(declare-fun res!668146 () Bool)

(assert (=> b!998187 (=> (not res!668146) (not e!562951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63111 (_ BitVec 32)) Bool)

(assert (=> b!998187 (= res!668146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998188 () Bool)

(declare-fun res!668143 () Bool)

(assert (=> b!998188 (=> (not res!668143) (not e!562949))))

(assert (=> b!998188 (= res!668143 (and (= (size!30883 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30883 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30883 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998189 () Bool)

(declare-fun res!668139 () Bool)

(assert (=> b!998189 (=> (not res!668139) (not e!562951))))

(declare-datatypes ((List!21182 0))(
  ( (Nil!21179) (Cons!21178 (h!22349 (_ BitVec 64)) (t!30191 List!21182)) )
))
(declare-fun arrayNoDuplicates!0 (array!63111 (_ BitVec 32) List!21182) Bool)

(assert (=> b!998189 (= res!668139 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21179))))

(declare-fun b!998191 () Bool)

(declare-fun res!668144 () Bool)

(assert (=> b!998191 (=> (not res!668144) (not e!562952))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!998191 (= res!668144 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30380 a!3219) j!170) a!3219 mask!3464) lt!441626))))

(declare-fun b!998192 () Bool)

(declare-fun res!668137 () Bool)

(assert (=> b!998192 (=> (not res!668137) (not e!562949))))

(declare-fun arrayContainsKey!0 (array!63111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998192 (= res!668137 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998193 () Bool)

(assert (=> b!998193 (= e!562952 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!998194 () Bool)

(declare-fun res!668136 () Bool)

(assert (=> b!998194 (=> (not res!668136) (not e!562951))))

(assert (=> b!998194 (= res!668136 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30883 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30883 a!3219))))))

(declare-fun res!668138 () Bool)

(assert (=> start!86256 (=> (not res!668138) (not e!562949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86256 (= res!668138 (validMask!0 mask!3464))))

(assert (=> start!86256 e!562949))

(declare-fun array_inv!23370 (array!63111) Bool)

(assert (=> start!86256 (array_inv!23370 a!3219)))

(assert (=> start!86256 true))

(declare-fun b!998190 () Bool)

(declare-fun res!668141 () Bool)

(assert (=> b!998190 (=> (not res!668141) (not e!562949))))

(assert (=> b!998190 (= res!668141 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86256 res!668138) b!998188))

(assert (= (and b!998188 res!668143) b!998184))

(assert (= (and b!998184 res!668142) b!998190))

(assert (= (and b!998190 res!668141) b!998192))

(assert (= (and b!998192 res!668137) b!998186))

(assert (= (and b!998186 res!668140) b!998187))

(assert (= (and b!998187 res!668146) b!998189))

(assert (= (and b!998189 res!668139) b!998194))

(assert (= (and b!998194 res!668136) b!998185))

(assert (= (and b!998185 res!668145) b!998191))

(assert (= (and b!998191 res!668144) b!998193))

(declare-fun m!924861 () Bool)

(assert (=> b!998184 m!924861))

(assert (=> b!998184 m!924861))

(declare-fun m!924863 () Bool)

(assert (=> b!998184 m!924863))

(assert (=> b!998185 m!924861))

(assert (=> b!998185 m!924861))

(declare-fun m!924865 () Bool)

(assert (=> b!998185 m!924865))

(assert (=> b!998185 m!924865))

(assert (=> b!998185 m!924861))

(declare-fun m!924867 () Bool)

(assert (=> b!998185 m!924867))

(declare-fun m!924869 () Bool)

(assert (=> start!86256 m!924869))

(declare-fun m!924871 () Bool)

(assert (=> start!86256 m!924871))

(declare-fun m!924873 () Bool)

(assert (=> b!998186 m!924873))

(declare-fun m!924875 () Bool)

(assert (=> b!998189 m!924875))

(assert (=> b!998191 m!924861))

(assert (=> b!998191 m!924861))

(declare-fun m!924877 () Bool)

(assert (=> b!998191 m!924877))

(declare-fun m!924879 () Bool)

(assert (=> b!998192 m!924879))

(declare-fun m!924881 () Bool)

(assert (=> b!998190 m!924881))

(declare-fun m!924883 () Bool)

(assert (=> b!998187 m!924883))

(check-sat (not start!86256) (not b!998187) (not b!998184) (not b!998189) (not b!998186) (not b!998190) (not b!998192) (not b!998191) (not b!998185))
(check-sat)
