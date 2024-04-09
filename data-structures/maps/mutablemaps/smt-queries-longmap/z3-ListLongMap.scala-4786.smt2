; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65796 () Bool)

(assert start!65796)

(declare-fun b!756124 () Bool)

(declare-fun res!511300 () Bool)

(declare-fun e!421662 () Bool)

(assert (=> b!756124 (=> (not res!511300) (not e!421662))))

(declare-datatypes ((array!41922 0))(
  ( (array!41923 (arr!20071 (Array (_ BitVec 32) (_ BitVec 64))) (size!20492 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41922)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41922 (_ BitVec 32)) Bool)

(assert (=> b!756124 (= res!511300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756125 () Bool)

(declare-fun res!511309 () Bool)

(declare-fun e!421652 () Bool)

(assert (=> b!756125 (=> (not res!511309) (not e!421652))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756125 (= res!511309 (and (= (size!20492 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20492 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20492 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756126 () Bool)

(declare-fun res!511303 () Bool)

(assert (=> b!756126 (=> (not res!511303) (not e!421652))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756126 (= res!511303 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756127 () Bool)

(declare-fun res!511310 () Bool)

(assert (=> b!756127 (=> (not res!511310) (not e!421652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756127 (= res!511310 (validKeyInArray!0 k0!2102))))

(declare-fun b!756128 () Bool)

(declare-fun e!421656 () Bool)

(declare-datatypes ((SeekEntryResult!7678 0))(
  ( (MissingZero!7678 (index!33079 (_ BitVec 32))) (Found!7678 (index!33080 (_ BitVec 32))) (Intermediate!7678 (undefined!8490 Bool) (index!33081 (_ BitVec 32)) (x!64005 (_ BitVec 32))) (Undefined!7678) (MissingVacant!7678 (index!33082 (_ BitVec 32))) )
))
(declare-fun lt!336656 () SeekEntryResult!7678)

(declare-fun lt!336658 () SeekEntryResult!7678)

(assert (=> b!756128 (= e!421656 (= lt!336656 lt!336658))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!421657 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!756129 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41922 (_ BitVec 32)) SeekEntryResult!7678)

(assert (=> b!756129 (= e!421657 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20071 a!3186) j!159) a!3186 mask!3328) (Found!7678 j!159)))))

(declare-fun b!756130 () Bool)

(declare-fun lt!336654 () SeekEntryResult!7678)

(declare-fun e!421654 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756130 (= e!421654 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20071 a!3186) j!159) a!3186 mask!3328) lt!336654))))

(declare-fun b!756131 () Bool)

(declare-fun e!421651 () Bool)

(assert (=> b!756131 (= e!421651 true)))

(assert (=> b!756131 e!421656))

(declare-fun res!511316 () Bool)

(assert (=> b!756131 (=> (not res!511316) (not e!421656))))

(declare-fun lt!336660 () (_ BitVec 64))

(assert (=> b!756131 (= res!511316 (= lt!336660 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26114 0))(
  ( (Unit!26115) )
))
(declare-fun lt!336662 () Unit!26114)

(declare-fun e!421660 () Unit!26114)

(assert (=> b!756131 (= lt!336662 e!421660)))

(declare-fun c!82794 () Bool)

(assert (=> b!756131 (= c!82794 (= lt!336660 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756132 () Bool)

(declare-fun res!511314 () Bool)

(assert (=> b!756132 (=> (not res!511314) (not e!421656))))

(declare-fun lt!336659 () array!41922)

(declare-fun lt!336661 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41922 (_ BitVec 32)) SeekEntryResult!7678)

(assert (=> b!756132 (= res!511314 (= (seekEntryOrOpen!0 lt!336661 lt!336659 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336661 lt!336659 mask!3328)))))

(declare-fun b!756133 () Bool)

(declare-fun e!421661 () Bool)

(declare-fun e!421658 () Bool)

(assert (=> b!756133 (= e!421661 e!421658)))

(declare-fun res!511299 () Bool)

(assert (=> b!756133 (=> res!511299 e!421658)))

(assert (=> b!756133 (= res!511299 (not (= lt!336658 lt!336654)))))

(assert (=> b!756133 (= lt!336658 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20071 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!511301 () Bool)

(assert (=> start!65796 (=> (not res!511301) (not e!421652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65796 (= res!511301 (validMask!0 mask!3328))))

(assert (=> start!65796 e!421652))

(assert (=> start!65796 true))

(declare-fun array_inv!15845 (array!41922) Bool)

(assert (=> start!65796 (array_inv!15845 a!3186)))

(declare-fun b!756134 () Bool)

(declare-fun e!421655 () Bool)

(declare-fun e!421653 () Bool)

(assert (=> b!756134 (= e!421655 e!421653)))

(declare-fun res!511311 () Bool)

(assert (=> b!756134 (=> (not res!511311) (not e!421653))))

(declare-fun lt!336655 () SeekEntryResult!7678)

(declare-fun lt!336657 () SeekEntryResult!7678)

(assert (=> b!756134 (= res!511311 (= lt!336655 lt!336657))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41922 (_ BitVec 32)) SeekEntryResult!7678)

(assert (=> b!756134 (= lt!336657 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336661 lt!336659 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756134 (= lt!336655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336661 mask!3328) lt!336661 lt!336659 mask!3328))))

(assert (=> b!756134 (= lt!336661 (select (store (arr!20071 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!756134 (= lt!336659 (array!41923 (store (arr!20071 a!3186) i!1173 k0!2102) (size!20492 a!3186)))))

(declare-fun b!756135 () Bool)

(declare-fun lt!336653 () SeekEntryResult!7678)

(assert (=> b!756135 (= e!421657 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20071 a!3186) j!159) a!3186 mask!3328) lt!336653))))

(declare-fun b!756136 () Bool)

(assert (=> b!756136 (= e!421662 e!421655)))

(declare-fun res!511306 () Bool)

(assert (=> b!756136 (=> (not res!511306) (not e!421655))))

(assert (=> b!756136 (= res!511306 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20071 a!3186) j!159) mask!3328) (select (arr!20071 a!3186) j!159) a!3186 mask!3328) lt!336653))))

(assert (=> b!756136 (= lt!336653 (Intermediate!7678 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756137 () Bool)

(declare-fun res!511312 () Bool)

(assert (=> b!756137 (=> (not res!511312) (not e!421662))))

(assert (=> b!756137 (= res!511312 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20492 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20492 a!3186))))))

(declare-fun b!756138 () Bool)

(declare-fun res!511317 () Bool)

(assert (=> b!756138 (=> (not res!511317) (not e!421655))))

(assert (=> b!756138 (= res!511317 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20071 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756139 () Bool)

(declare-fun Unit!26116 () Unit!26114)

(assert (=> b!756139 (= e!421660 Unit!26116)))

(declare-fun b!756140 () Bool)

(assert (=> b!756140 (= e!421653 (not e!421661))))

(declare-fun res!511308 () Bool)

(assert (=> b!756140 (=> res!511308 e!421661)))

(get-info :version)

(assert (=> b!756140 (= res!511308 (or (not ((_ is Intermediate!7678) lt!336657)) (bvslt x!1131 (x!64005 lt!336657)) (not (= x!1131 (x!64005 lt!336657))) (not (= index!1321 (index!33081 lt!336657)))))))

(assert (=> b!756140 e!421654))

(declare-fun res!511302 () Bool)

(assert (=> b!756140 (=> (not res!511302) (not e!421654))))

(assert (=> b!756140 (= res!511302 (= lt!336656 lt!336654))))

(assert (=> b!756140 (= lt!336654 (Found!7678 j!159))))

(assert (=> b!756140 (= lt!336656 (seekEntryOrOpen!0 (select (arr!20071 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756140 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336652 () Unit!26114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26114)

(assert (=> b!756140 (= lt!336652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756141 () Bool)

(declare-fun res!511304 () Bool)

(assert (=> b!756141 (=> (not res!511304) (not e!421662))))

(declare-datatypes ((List!14126 0))(
  ( (Nil!14123) (Cons!14122 (h!15194 (_ BitVec 64)) (t!20449 List!14126)) )
))
(declare-fun arrayNoDuplicates!0 (array!41922 (_ BitVec 32) List!14126) Bool)

(assert (=> b!756141 (= res!511304 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14123))))

(declare-fun b!756142 () Bool)

(declare-fun Unit!26117 () Unit!26114)

(assert (=> b!756142 (= e!421660 Unit!26117)))

(assert (=> b!756142 false))

(declare-fun b!756143 () Bool)

(assert (=> b!756143 (= e!421652 e!421662)))

(declare-fun res!511305 () Bool)

(assert (=> b!756143 (=> (not res!511305) (not e!421662))))

(declare-fun lt!336651 () SeekEntryResult!7678)

(assert (=> b!756143 (= res!511305 (or (= lt!336651 (MissingZero!7678 i!1173)) (= lt!336651 (MissingVacant!7678 i!1173))))))

(assert (=> b!756143 (= lt!336651 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!756144 () Bool)

(declare-fun res!511315 () Bool)

(assert (=> b!756144 (=> (not res!511315) (not e!421652))))

(assert (=> b!756144 (= res!511315 (validKeyInArray!0 (select (arr!20071 a!3186) j!159)))))

(declare-fun b!756145 () Bool)

(declare-fun res!511307 () Bool)

(assert (=> b!756145 (=> (not res!511307) (not e!421655))))

(assert (=> b!756145 (= res!511307 e!421657)))

(declare-fun c!82793 () Bool)

(assert (=> b!756145 (= c!82793 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756146 () Bool)

(assert (=> b!756146 (= e!421658 e!421651)))

(declare-fun res!511313 () Bool)

(assert (=> b!756146 (=> res!511313 e!421651)))

(assert (=> b!756146 (= res!511313 (= lt!336660 lt!336661))))

(assert (=> b!756146 (= lt!336660 (select (store (arr!20071 a!3186) i!1173 k0!2102) index!1321))))

(assert (= (and start!65796 res!511301) b!756125))

(assert (= (and b!756125 res!511309) b!756144))

(assert (= (and b!756144 res!511315) b!756127))

(assert (= (and b!756127 res!511310) b!756126))

(assert (= (and b!756126 res!511303) b!756143))

(assert (= (and b!756143 res!511305) b!756124))

(assert (= (and b!756124 res!511300) b!756141))

(assert (= (and b!756141 res!511304) b!756137))

(assert (= (and b!756137 res!511312) b!756136))

(assert (= (and b!756136 res!511306) b!756138))

(assert (= (and b!756138 res!511317) b!756145))

(assert (= (and b!756145 c!82793) b!756135))

(assert (= (and b!756145 (not c!82793)) b!756129))

(assert (= (and b!756145 res!511307) b!756134))

(assert (= (and b!756134 res!511311) b!756140))

(assert (= (and b!756140 res!511302) b!756130))

(assert (= (and b!756140 (not res!511308)) b!756133))

(assert (= (and b!756133 (not res!511299)) b!756146))

(assert (= (and b!756146 (not res!511313)) b!756131))

(assert (= (and b!756131 c!82794) b!756142))

(assert (= (and b!756131 (not c!82794)) b!756139))

(assert (= (and b!756131 res!511316) b!756132))

(assert (= (and b!756132 res!511314) b!756128))

(declare-fun m!704225 () Bool)

(assert (=> b!756127 m!704225))

(declare-fun m!704227 () Bool)

(assert (=> start!65796 m!704227))

(declare-fun m!704229 () Bool)

(assert (=> start!65796 m!704229))

(declare-fun m!704231 () Bool)

(assert (=> b!756133 m!704231))

(assert (=> b!756133 m!704231))

(declare-fun m!704233 () Bool)

(assert (=> b!756133 m!704233))

(declare-fun m!704235 () Bool)

(assert (=> b!756146 m!704235))

(declare-fun m!704237 () Bool)

(assert (=> b!756146 m!704237))

(declare-fun m!704239 () Bool)

(assert (=> b!756134 m!704239))

(declare-fun m!704241 () Bool)

(assert (=> b!756134 m!704241))

(assert (=> b!756134 m!704235))

(declare-fun m!704243 () Bool)

(assert (=> b!756134 m!704243))

(assert (=> b!756134 m!704239))

(declare-fun m!704245 () Bool)

(assert (=> b!756134 m!704245))

(assert (=> b!756130 m!704231))

(assert (=> b!756130 m!704231))

(declare-fun m!704247 () Bool)

(assert (=> b!756130 m!704247))

(assert (=> b!756129 m!704231))

(assert (=> b!756129 m!704231))

(assert (=> b!756129 m!704233))

(declare-fun m!704249 () Bool)

(assert (=> b!756124 m!704249))

(declare-fun m!704251 () Bool)

(assert (=> b!756126 m!704251))

(assert (=> b!756135 m!704231))

(assert (=> b!756135 m!704231))

(declare-fun m!704253 () Bool)

(assert (=> b!756135 m!704253))

(declare-fun m!704255 () Bool)

(assert (=> b!756138 m!704255))

(assert (=> b!756140 m!704231))

(assert (=> b!756140 m!704231))

(declare-fun m!704257 () Bool)

(assert (=> b!756140 m!704257))

(declare-fun m!704259 () Bool)

(assert (=> b!756140 m!704259))

(declare-fun m!704261 () Bool)

(assert (=> b!756140 m!704261))

(assert (=> b!756136 m!704231))

(assert (=> b!756136 m!704231))

(declare-fun m!704263 () Bool)

(assert (=> b!756136 m!704263))

(assert (=> b!756136 m!704263))

(assert (=> b!756136 m!704231))

(declare-fun m!704265 () Bool)

(assert (=> b!756136 m!704265))

(declare-fun m!704267 () Bool)

(assert (=> b!756132 m!704267))

(declare-fun m!704269 () Bool)

(assert (=> b!756132 m!704269))

(declare-fun m!704271 () Bool)

(assert (=> b!756143 m!704271))

(declare-fun m!704273 () Bool)

(assert (=> b!756141 m!704273))

(assert (=> b!756144 m!704231))

(assert (=> b!756144 m!704231))

(declare-fun m!704275 () Bool)

(assert (=> b!756144 m!704275))

(check-sat (not b!756134) (not b!756133) (not b!756130) (not b!756141) (not b!756143) (not b!756144) (not start!65796) (not b!756124) (not b!756127) (not b!756140) (not b!756136) (not b!756132) (not b!756129) (not b!756135) (not b!756126))
(check-sat)
