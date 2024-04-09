; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86544 () Bool)

(assert start!86544)

(declare-fun b!1002115 () Bool)

(declare-fun res!671761 () Bool)

(declare-fun e!564615 () Bool)

(assert (=> b!1002115 (=> (not res!671761) (not e!564615))))

(declare-datatypes ((array!63297 0))(
  ( (array!63298 (arr!30470 (Array (_ BitVec 32) (_ BitVec 64))) (size!30973 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63297)

(declare-datatypes ((List!21272 0))(
  ( (Nil!21269) (Cons!21268 (h!22445 (_ BitVec 64)) (t!30281 List!21272)) )
))
(declare-fun arrayNoDuplicates!0 (array!63297 (_ BitVec 32) List!21272) Bool)

(assert (=> b!1002115 (= res!671761 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21269))))

(declare-fun b!1002116 () Bool)

(declare-fun e!564620 () Bool)

(assert (=> b!1002116 (= e!564615 e!564620)))

(declare-fun res!671750 () Bool)

(assert (=> b!1002116 (=> (not res!671750) (not e!564620))))

(declare-datatypes ((SeekEntryResult!9402 0))(
  ( (MissingZero!9402 (index!39978 (_ BitVec 32))) (Found!9402 (index!39979 (_ BitVec 32))) (Intermediate!9402 (undefined!10214 Bool) (index!39980 (_ BitVec 32)) (x!87423 (_ BitVec 32))) (Undefined!9402) (MissingVacant!9402 (index!39981 (_ BitVec 32))) )
))
(declare-fun lt!443029 () SeekEntryResult!9402)

(declare-fun lt!443030 () SeekEntryResult!9402)

(assert (=> b!1002116 (= res!671750 (= lt!443029 lt!443030))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1002116 (= lt!443030 (Intermediate!9402 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63297 (_ BitVec 32)) SeekEntryResult!9402)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002116 (= lt!443029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30470 a!3219) j!170) mask!3464) (select (arr!30470 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002117 () Bool)

(declare-fun e!564616 () Bool)

(assert (=> b!1002117 (= e!564616 e!564615)))

(declare-fun res!671757 () Bool)

(assert (=> b!1002117 (=> (not res!671757) (not e!564615))))

(declare-fun lt!443027 () SeekEntryResult!9402)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1002117 (= res!671757 (or (= lt!443027 (MissingVacant!9402 i!1194)) (= lt!443027 (MissingZero!9402 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63297 (_ BitVec 32)) SeekEntryResult!9402)

(assert (=> b!1002117 (= lt!443027 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1002118 () Bool)

(declare-fun res!671749 () Bool)

(declare-fun e!564619 () Bool)

(assert (=> b!1002118 (=> (not res!671749) (not e!564619))))

(declare-fun lt!443028 () SeekEntryResult!9402)

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!443026 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!443031 () array!63297)

(assert (=> b!1002118 (= res!671749 (not (= lt!443028 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443026 lt!443031 mask!3464))))))

(declare-fun b!1002119 () Bool)

(declare-fun res!671753 () Bool)

(assert (=> b!1002119 (=> (not res!671753) (not e!564616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1002119 (= res!671753 (validKeyInArray!0 k0!2224))))

(declare-fun b!1002120 () Bool)

(declare-fun e!564618 () Bool)

(assert (=> b!1002120 (= e!564619 e!564618)))

(declare-fun res!671760 () Bool)

(assert (=> b!1002120 (=> (not res!671760) (not e!564618))))

(declare-fun lt!443025 () (_ BitVec 32))

(assert (=> b!1002120 (= res!671760 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443025 #b00000000000000000000000000000000) (bvslt lt!443025 (size!30973 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1002120 (= lt!443025 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1002121 () Bool)

(declare-fun res!671754 () Bool)

(assert (=> b!1002121 (=> (not res!671754) (not e!564616))))

(declare-fun arrayContainsKey!0 (array!63297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1002121 (= res!671754 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1002122 () Bool)

(assert (=> b!1002122 (= e!564618 false)))

(declare-fun lt!443024 () SeekEntryResult!9402)

(assert (=> b!1002122 (= lt!443024 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443025 lt!443026 lt!443031 mask!3464))))

(declare-fun res!671755 () Bool)

(assert (=> start!86544 (=> (not res!671755) (not e!564616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86544 (= res!671755 (validMask!0 mask!3464))))

(assert (=> start!86544 e!564616))

(declare-fun array_inv!23460 (array!63297) Bool)

(assert (=> start!86544 (array_inv!23460 a!3219)))

(assert (=> start!86544 true))

(declare-fun b!1002123 () Bool)

(declare-fun res!671752 () Bool)

(assert (=> b!1002123 (=> (not res!671752) (not e!564615))))

(assert (=> b!1002123 (= res!671752 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30973 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30973 a!3219))))))

(declare-fun b!1002124 () Bool)

(declare-fun res!671764 () Bool)

(assert (=> b!1002124 (=> (not res!671764) (not e!564619))))

(assert (=> b!1002124 (= res!671764 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1002125 () Bool)

(declare-fun res!671763 () Bool)

(assert (=> b!1002125 (=> (not res!671763) (not e!564615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63297 (_ BitVec 32)) Bool)

(assert (=> b!1002125 (= res!671763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1002126 () Bool)

(declare-fun e!564614 () Bool)

(assert (=> b!1002126 (= e!564614 e!564619)))

(declare-fun res!671758 () Bool)

(assert (=> b!1002126 (=> (not res!671758) (not e!564619))))

(assert (=> b!1002126 (= res!671758 (not (= lt!443029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443026 mask!3464) lt!443026 lt!443031 mask!3464))))))

(assert (=> b!1002126 (= lt!443026 (select (store (arr!30470 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1002126 (= lt!443031 (array!63298 (store (arr!30470 a!3219) i!1194 k0!2224) (size!30973 a!3219)))))

(declare-fun b!1002127 () Bool)

(declare-fun res!671751 () Bool)

(assert (=> b!1002127 (=> (not res!671751) (not e!564616))))

(assert (=> b!1002127 (= res!671751 (validKeyInArray!0 (select (arr!30470 a!3219) j!170)))))

(declare-fun b!1002128 () Bool)

(assert (=> b!1002128 (= e!564620 e!564614)))

(declare-fun res!671756 () Bool)

(assert (=> b!1002128 (=> (not res!671756) (not e!564614))))

(assert (=> b!1002128 (= res!671756 (= lt!443028 lt!443030))))

(assert (=> b!1002128 (= lt!443028 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30470 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1002129 () Bool)

(declare-fun res!671762 () Bool)

(assert (=> b!1002129 (=> (not res!671762) (not e!564618))))

(assert (=> b!1002129 (= res!671762 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443025 (select (arr!30470 a!3219) j!170) a!3219 mask!3464) lt!443030))))

(declare-fun b!1002130 () Bool)

(declare-fun res!671759 () Bool)

(assert (=> b!1002130 (=> (not res!671759) (not e!564616))))

(assert (=> b!1002130 (= res!671759 (and (= (size!30973 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30973 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30973 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86544 res!671755) b!1002130))

(assert (= (and b!1002130 res!671759) b!1002127))

(assert (= (and b!1002127 res!671751) b!1002119))

(assert (= (and b!1002119 res!671753) b!1002121))

(assert (= (and b!1002121 res!671754) b!1002117))

(assert (= (and b!1002117 res!671757) b!1002125))

(assert (= (and b!1002125 res!671763) b!1002115))

(assert (= (and b!1002115 res!671761) b!1002123))

(assert (= (and b!1002123 res!671752) b!1002116))

(assert (= (and b!1002116 res!671750) b!1002128))

(assert (= (and b!1002128 res!671756) b!1002126))

(assert (= (and b!1002126 res!671758) b!1002118))

(assert (= (and b!1002118 res!671749) b!1002124))

(assert (= (and b!1002124 res!671764) b!1002120))

(assert (= (and b!1002120 res!671760) b!1002129))

(assert (= (and b!1002129 res!671762) b!1002122))

(declare-fun m!928141 () Bool)

(assert (=> b!1002118 m!928141))

(declare-fun m!928143 () Bool)

(assert (=> b!1002127 m!928143))

(assert (=> b!1002127 m!928143))

(declare-fun m!928145 () Bool)

(assert (=> b!1002127 m!928145))

(declare-fun m!928147 () Bool)

(assert (=> b!1002117 m!928147))

(assert (=> b!1002129 m!928143))

(assert (=> b!1002129 m!928143))

(declare-fun m!928149 () Bool)

(assert (=> b!1002129 m!928149))

(declare-fun m!928151 () Bool)

(assert (=> b!1002119 m!928151))

(declare-fun m!928153 () Bool)

(assert (=> b!1002115 m!928153))

(declare-fun m!928155 () Bool)

(assert (=> b!1002125 m!928155))

(assert (=> b!1002128 m!928143))

(assert (=> b!1002128 m!928143))

(declare-fun m!928157 () Bool)

(assert (=> b!1002128 m!928157))

(declare-fun m!928159 () Bool)

(assert (=> b!1002120 m!928159))

(declare-fun m!928161 () Bool)

(assert (=> b!1002121 m!928161))

(declare-fun m!928163 () Bool)

(assert (=> start!86544 m!928163))

(declare-fun m!928165 () Bool)

(assert (=> start!86544 m!928165))

(assert (=> b!1002116 m!928143))

(assert (=> b!1002116 m!928143))

(declare-fun m!928167 () Bool)

(assert (=> b!1002116 m!928167))

(assert (=> b!1002116 m!928167))

(assert (=> b!1002116 m!928143))

(declare-fun m!928169 () Bool)

(assert (=> b!1002116 m!928169))

(declare-fun m!928171 () Bool)

(assert (=> b!1002126 m!928171))

(assert (=> b!1002126 m!928171))

(declare-fun m!928173 () Bool)

(assert (=> b!1002126 m!928173))

(declare-fun m!928175 () Bool)

(assert (=> b!1002126 m!928175))

(declare-fun m!928177 () Bool)

(assert (=> b!1002126 m!928177))

(declare-fun m!928179 () Bool)

(assert (=> b!1002122 m!928179))

(check-sat (not b!1002126) (not b!1002119) (not b!1002118) (not b!1002115) (not b!1002129) (not b!1002122) (not start!86544) (not b!1002127) (not b!1002121) (not b!1002128) (not b!1002120) (not b!1002116) (not b!1002125) (not b!1002117))
(check-sat)
