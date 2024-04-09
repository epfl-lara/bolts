; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67758 () Bool)

(assert start!67758)

(declare-fun b!786140 () Bool)

(declare-fun e!437043 () Bool)

(declare-fun e!437045 () Bool)

(assert (=> b!786140 (= e!437043 e!437045)))

(declare-fun res!532384 () Bool)

(assert (=> b!786140 (=> res!532384 e!437045)))

(declare-fun lt!350609 () (_ BitVec 64))

(declare-fun lt!350606 () (_ BitVec 64))

(assert (=> b!786140 (= res!532384 (= lt!350609 lt!350606))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-datatypes ((array!42753 0))(
  ( (array!42754 (arr!20461 (Array (_ BitVec 32) (_ BitVec 64))) (size!20882 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42753)

(assert (=> b!786140 (= lt!350609 (select (store (arr!20461 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!437042 () Bool)

(declare-fun b!786141 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8068 0))(
  ( (MissingZero!8068 (index!34639 (_ BitVec 32))) (Found!8068 (index!34640 (_ BitVec 32))) (Intermediate!8068 (undefined!8880 Bool) (index!34641 (_ BitVec 32)) (x!65609 (_ BitVec 32))) (Undefined!8068) (MissingVacant!8068 (index!34642 (_ BitVec 32))) )
))
(declare-fun lt!350610 () SeekEntryResult!8068)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42753 (_ BitVec 32)) SeekEntryResult!8068)

(assert (=> b!786141 (= e!437042 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20461 a!3186) j!159) a!3186 mask!3328) lt!350610))))

(declare-fun b!786142 () Bool)

(declare-fun res!532398 () Bool)

(declare-fun e!437046 () Bool)

(assert (=> b!786142 (=> (not res!532398) (not e!437046))))

(declare-fun lt!350608 () array!42753)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42753 (_ BitVec 32)) SeekEntryResult!8068)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42753 (_ BitVec 32)) SeekEntryResult!8068)

(assert (=> b!786142 (= res!532398 (= (seekEntryOrOpen!0 lt!350606 lt!350608 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350606 lt!350608 mask!3328)))))

(declare-fun b!786143 () Bool)

(declare-datatypes ((Unit!27182 0))(
  ( (Unit!27183) )
))
(declare-fun e!437039 () Unit!27182)

(declare-fun Unit!27184 () Unit!27182)

(assert (=> b!786143 (= e!437039 Unit!27184)))

(declare-fun b!786144 () Bool)

(declare-fun res!532387 () Bool)

(declare-fun e!437040 () Bool)

(assert (=> b!786144 (=> (not res!532387) (not e!437040))))

(declare-fun arrayContainsKey!0 (array!42753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786144 (= res!532387 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786146 () Bool)

(declare-fun e!437050 () Bool)

(declare-fun e!437048 () Bool)

(assert (=> b!786146 (= e!437050 e!437048)))

(declare-fun res!532390 () Bool)

(assert (=> b!786146 (=> (not res!532390) (not e!437048))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786146 (= res!532390 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20461 a!3186) j!159) mask!3328) (select (arr!20461 a!3186) j!159) a!3186 mask!3328) lt!350610))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786146 (= lt!350610 (Intermediate!8068 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786147 () Bool)

(declare-fun res!532381 () Bool)

(assert (=> b!786147 (=> (not res!532381) (not e!437048))))

(assert (=> b!786147 (= res!532381 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20461 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786148 () Bool)

(declare-fun res!532395 () Bool)

(assert (=> b!786148 (=> (not res!532395) (not e!437040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786148 (= res!532395 (validKeyInArray!0 (select (arr!20461 a!3186) j!159)))))

(declare-fun b!786149 () Bool)

(declare-fun res!532393 () Bool)

(assert (=> b!786149 (=> (not res!532393) (not e!437050))))

(declare-datatypes ((List!14516 0))(
  ( (Nil!14513) (Cons!14512 (h!15635 (_ BitVec 64)) (t!20839 List!14516)) )
))
(declare-fun arrayNoDuplicates!0 (array!42753 (_ BitVec 32) List!14516) Bool)

(assert (=> b!786149 (= res!532393 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14513))))

(declare-fun b!786150 () Bool)

(declare-fun e!437049 () Bool)

(assert (=> b!786150 (= e!437048 e!437049)))

(declare-fun res!532396 () Bool)

(assert (=> b!786150 (=> (not res!532396) (not e!437049))))

(declare-fun lt!350607 () SeekEntryResult!8068)

(declare-fun lt!350615 () SeekEntryResult!8068)

(assert (=> b!786150 (= res!532396 (= lt!350607 lt!350615))))

(assert (=> b!786150 (= lt!350615 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350606 lt!350608 mask!3328))))

(assert (=> b!786150 (= lt!350607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350606 mask!3328) lt!350606 lt!350608 mask!3328))))

(assert (=> b!786150 (= lt!350606 (select (store (arr!20461 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!786150 (= lt!350608 (array!42754 (store (arr!20461 a!3186) i!1173 k0!2102) (size!20882 a!3186)))))

(declare-fun b!786151 () Bool)

(declare-fun lt!350611 () SeekEntryResult!8068)

(declare-fun lt!350613 () SeekEntryResult!8068)

(assert (=> b!786151 (= e!437046 (= lt!350611 lt!350613))))

(declare-fun e!437041 () Bool)

(declare-fun b!786152 () Bool)

(declare-fun lt!350612 () SeekEntryResult!8068)

(assert (=> b!786152 (= e!437041 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20461 a!3186) j!159) a!3186 mask!3328) lt!350612))))

(declare-fun b!786153 () Bool)

(declare-fun res!532392 () Bool)

(assert (=> b!786153 (=> (not res!532392) (not e!437040))))

(assert (=> b!786153 (= res!532392 (and (= (size!20882 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20882 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20882 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786154 () Bool)

(declare-fun res!532397 () Bool)

(assert (=> b!786154 (=> (not res!532397) (not e!437050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42753 (_ BitVec 32)) Bool)

(assert (=> b!786154 (= res!532397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786155 () Bool)

(declare-fun Unit!27185 () Unit!27182)

(assert (=> b!786155 (= e!437039 Unit!27185)))

(assert (=> b!786155 false))

(declare-fun b!786156 () Bool)

(declare-fun res!532383 () Bool)

(assert (=> b!786156 (=> (not res!532383) (not e!437048))))

(assert (=> b!786156 (= res!532383 e!437042)))

(declare-fun c!87287 () Bool)

(assert (=> b!786156 (= c!87287 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786145 () Bool)

(assert (=> b!786145 (= e!437045 true)))

(assert (=> b!786145 e!437046))

(declare-fun res!532389 () Bool)

(assert (=> b!786145 (=> (not res!532389) (not e!437046))))

(assert (=> b!786145 (= res!532389 (= lt!350609 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350616 () Unit!27182)

(assert (=> b!786145 (= lt!350616 e!437039)))

(declare-fun c!87288 () Bool)

(assert (=> b!786145 (= c!87288 (= lt!350609 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!532394 () Bool)

(assert (=> start!67758 (=> (not res!532394) (not e!437040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67758 (= res!532394 (validMask!0 mask!3328))))

(assert (=> start!67758 e!437040))

(assert (=> start!67758 true))

(declare-fun array_inv!16235 (array!42753) Bool)

(assert (=> start!67758 (array_inv!16235 a!3186)))

(declare-fun b!786157 () Bool)

(declare-fun e!437044 () Bool)

(assert (=> b!786157 (= e!437044 e!437043)))

(declare-fun res!532391 () Bool)

(assert (=> b!786157 (=> res!532391 e!437043)))

(assert (=> b!786157 (= res!532391 (not (= lt!350613 lt!350612)))))

(assert (=> b!786157 (= lt!350613 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20461 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786158 () Bool)

(assert (=> b!786158 (= e!437040 e!437050)))

(declare-fun res!532399 () Bool)

(assert (=> b!786158 (=> (not res!532399) (not e!437050))))

(declare-fun lt!350614 () SeekEntryResult!8068)

(assert (=> b!786158 (= res!532399 (or (= lt!350614 (MissingZero!8068 i!1173)) (= lt!350614 (MissingVacant!8068 i!1173))))))

(assert (=> b!786158 (= lt!350614 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!786159 () Bool)

(declare-fun res!532385 () Bool)

(assert (=> b!786159 (=> (not res!532385) (not e!437050))))

(assert (=> b!786159 (= res!532385 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20882 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20882 a!3186))))))

(declare-fun b!786160 () Bool)

(assert (=> b!786160 (= e!437042 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20461 a!3186) j!159) a!3186 mask!3328) (Found!8068 j!159)))))

(declare-fun b!786161 () Bool)

(declare-fun res!532386 () Bool)

(assert (=> b!786161 (=> (not res!532386) (not e!437040))))

(assert (=> b!786161 (= res!532386 (validKeyInArray!0 k0!2102))))

(declare-fun b!786162 () Bool)

(assert (=> b!786162 (= e!437049 (not e!437044))))

(declare-fun res!532388 () Bool)

(assert (=> b!786162 (=> res!532388 e!437044)))

(get-info :version)

(assert (=> b!786162 (= res!532388 (or (not ((_ is Intermediate!8068) lt!350615)) (bvslt x!1131 (x!65609 lt!350615)) (not (= x!1131 (x!65609 lt!350615))) (not (= index!1321 (index!34641 lt!350615)))))))

(assert (=> b!786162 e!437041))

(declare-fun res!532382 () Bool)

(assert (=> b!786162 (=> (not res!532382) (not e!437041))))

(assert (=> b!786162 (= res!532382 (= lt!350611 lt!350612))))

(assert (=> b!786162 (= lt!350612 (Found!8068 j!159))))

(assert (=> b!786162 (= lt!350611 (seekEntryOrOpen!0 (select (arr!20461 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786162 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350617 () Unit!27182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27182)

(assert (=> b!786162 (= lt!350617 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67758 res!532394) b!786153))

(assert (= (and b!786153 res!532392) b!786148))

(assert (= (and b!786148 res!532395) b!786161))

(assert (= (and b!786161 res!532386) b!786144))

(assert (= (and b!786144 res!532387) b!786158))

(assert (= (and b!786158 res!532399) b!786154))

(assert (= (and b!786154 res!532397) b!786149))

(assert (= (and b!786149 res!532393) b!786159))

(assert (= (and b!786159 res!532385) b!786146))

(assert (= (and b!786146 res!532390) b!786147))

(assert (= (and b!786147 res!532381) b!786156))

(assert (= (and b!786156 c!87287) b!786141))

(assert (= (and b!786156 (not c!87287)) b!786160))

(assert (= (and b!786156 res!532383) b!786150))

(assert (= (and b!786150 res!532396) b!786162))

(assert (= (and b!786162 res!532382) b!786152))

(assert (= (and b!786162 (not res!532388)) b!786157))

(assert (= (and b!786157 (not res!532391)) b!786140))

(assert (= (and b!786140 (not res!532384)) b!786145))

(assert (= (and b!786145 c!87288) b!786155))

(assert (= (and b!786145 (not c!87288)) b!786143))

(assert (= (and b!786145 res!532389) b!786142))

(assert (= (and b!786142 res!532398) b!786151))

(declare-fun m!728081 () Bool)

(assert (=> b!786158 m!728081))

(declare-fun m!728083 () Bool)

(assert (=> b!786140 m!728083))

(declare-fun m!728085 () Bool)

(assert (=> b!786140 m!728085))

(declare-fun m!728087 () Bool)

(assert (=> b!786144 m!728087))

(declare-fun m!728089 () Bool)

(assert (=> b!786150 m!728089))

(declare-fun m!728091 () Bool)

(assert (=> b!786150 m!728091))

(declare-fun m!728093 () Bool)

(assert (=> b!786150 m!728093))

(assert (=> b!786150 m!728083))

(declare-fun m!728095 () Bool)

(assert (=> b!786150 m!728095))

(assert (=> b!786150 m!728091))

(declare-fun m!728097 () Bool)

(assert (=> b!786157 m!728097))

(assert (=> b!786157 m!728097))

(declare-fun m!728099 () Bool)

(assert (=> b!786157 m!728099))

(assert (=> b!786146 m!728097))

(assert (=> b!786146 m!728097))

(declare-fun m!728101 () Bool)

(assert (=> b!786146 m!728101))

(assert (=> b!786146 m!728101))

(assert (=> b!786146 m!728097))

(declare-fun m!728103 () Bool)

(assert (=> b!786146 m!728103))

(assert (=> b!786148 m!728097))

(assert (=> b!786148 m!728097))

(declare-fun m!728105 () Bool)

(assert (=> b!786148 m!728105))

(declare-fun m!728107 () Bool)

(assert (=> b!786142 m!728107))

(declare-fun m!728109 () Bool)

(assert (=> b!786142 m!728109))

(declare-fun m!728111 () Bool)

(assert (=> b!786149 m!728111))

(assert (=> b!786162 m!728097))

(assert (=> b!786162 m!728097))

(declare-fun m!728113 () Bool)

(assert (=> b!786162 m!728113))

(declare-fun m!728115 () Bool)

(assert (=> b!786162 m!728115))

(declare-fun m!728117 () Bool)

(assert (=> b!786162 m!728117))

(assert (=> b!786141 m!728097))

(assert (=> b!786141 m!728097))

(declare-fun m!728119 () Bool)

(assert (=> b!786141 m!728119))

(declare-fun m!728121 () Bool)

(assert (=> b!786161 m!728121))

(assert (=> b!786152 m!728097))

(assert (=> b!786152 m!728097))

(declare-fun m!728123 () Bool)

(assert (=> b!786152 m!728123))

(declare-fun m!728125 () Bool)

(assert (=> b!786147 m!728125))

(declare-fun m!728127 () Bool)

(assert (=> b!786154 m!728127))

(declare-fun m!728129 () Bool)

(assert (=> start!67758 m!728129))

(declare-fun m!728131 () Bool)

(assert (=> start!67758 m!728131))

(assert (=> b!786160 m!728097))

(assert (=> b!786160 m!728097))

(assert (=> b!786160 m!728099))

(check-sat (not b!786154) (not b!786162) (not b!786150) (not b!786157) (not b!786144) (not b!786148) (not b!786152) (not b!786161) (not start!67758) (not b!786149) (not b!786141) (not b!786142) (not b!786146) (not b!786158) (not b!786160))
(check-sat)
