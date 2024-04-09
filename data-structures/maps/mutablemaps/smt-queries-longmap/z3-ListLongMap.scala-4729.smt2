; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65454 () Bool)

(assert start!65454)

(declare-fun b!745097 () Bool)

(declare-fun e!416198 () Bool)

(declare-fun e!416196 () Bool)

(assert (=> b!745097 (= e!416198 (not e!416196))))

(declare-fun res!502141 () Bool)

(assert (=> b!745097 (=> res!502141 e!416196)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7507 0))(
  ( (MissingZero!7507 (index!32395 (_ BitVec 32))) (Found!7507 (index!32396 (_ BitVec 32))) (Intermediate!7507 (undefined!8319 Bool) (index!32397 (_ BitVec 32)) (x!63378 (_ BitVec 32))) (Undefined!7507) (MissingVacant!7507 (index!32398 (_ BitVec 32))) )
))
(declare-fun lt!331036 () SeekEntryResult!7507)

(get-info :version)

(assert (=> b!745097 (= res!502141 (or (not ((_ is Intermediate!7507) lt!331036)) (bvslt x!1131 (x!63378 lt!331036)) (not (= x!1131 (x!63378 lt!331036))) (not (= index!1321 (index!32397 lt!331036)))))))

(declare-fun e!416199 () Bool)

(assert (=> b!745097 e!416199))

(declare-fun res!502150 () Bool)

(assert (=> b!745097 (=> (not res!502150) (not e!416199))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41580 0))(
  ( (array!41581 (arr!19900 (Array (_ BitVec 32) (_ BitVec 64))) (size!20321 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41580)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41580 (_ BitVec 32)) Bool)

(assert (=> b!745097 (= res!502150 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25494 0))(
  ( (Unit!25495) )
))
(declare-fun lt!331035 () Unit!25494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25494)

(assert (=> b!745097 (= lt!331035 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745098 () Bool)

(declare-fun res!502136 () Bool)

(declare-fun e!416192 () Bool)

(assert (=> b!745098 (=> (not res!502136) (not e!416192))))

(declare-datatypes ((List!13955 0))(
  ( (Nil!13952) (Cons!13951 (h!15023 (_ BitVec 64)) (t!20278 List!13955)) )
))
(declare-fun arrayNoDuplicates!0 (array!41580 (_ BitVec 32) List!13955) Bool)

(assert (=> b!745098 (= res!502136 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13952))))

(declare-fun b!745099 () Bool)

(declare-fun res!502138 () Bool)

(declare-fun e!416191 () Bool)

(assert (=> b!745099 (=> (not res!502138) (not e!416191))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745099 (= res!502138 (validKeyInArray!0 k0!2102))))

(declare-fun b!745100 () Bool)

(declare-fun e!416195 () Bool)

(assert (=> b!745100 (= e!416195 e!416198)))

(declare-fun res!502143 () Bool)

(assert (=> b!745100 (=> (not res!502143) (not e!416198))))

(declare-fun lt!331037 () SeekEntryResult!7507)

(assert (=> b!745100 (= res!502143 (= lt!331037 lt!331036))))

(declare-fun lt!331040 () array!41580)

(declare-fun lt!331038 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41580 (_ BitVec 32)) SeekEntryResult!7507)

(assert (=> b!745100 (= lt!331036 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331038 lt!331040 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745100 (= lt!331037 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331038 mask!3328) lt!331038 lt!331040 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745100 (= lt!331038 (select (store (arr!19900 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!745100 (= lt!331040 (array!41581 (store (arr!19900 a!3186) i!1173 k0!2102) (size!20321 a!3186)))))

(declare-fun b!745101 () Bool)

(declare-fun res!502149 () Bool)

(assert (=> b!745101 (=> (not res!502149) (not e!416195))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!745101 (= res!502149 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19900 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745102 () Bool)

(declare-fun e!416194 () Bool)

(assert (=> b!745102 (= e!416199 e!416194)))

(declare-fun res!502142 () Bool)

(assert (=> b!745102 (=> (not res!502142) (not e!416194))))

(declare-fun lt!331033 () SeekEntryResult!7507)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41580 (_ BitVec 32)) SeekEntryResult!7507)

(assert (=> b!745102 (= res!502142 (= (seekEntryOrOpen!0 (select (arr!19900 a!3186) j!159) a!3186 mask!3328) lt!331033))))

(assert (=> b!745102 (= lt!331033 (Found!7507 j!159))))

(declare-fun b!745103 () Bool)

(declare-fun e!416193 () Bool)

(declare-fun lt!331039 () SeekEntryResult!7507)

(assert (=> b!745103 (= e!416193 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19900 a!3186) j!159) a!3186 mask!3328) lt!331039))))

(declare-fun b!745104 () Bool)

(declare-fun res!502152 () Bool)

(assert (=> b!745104 (=> (not res!502152) (not e!416195))))

(assert (=> b!745104 (= res!502152 e!416193)))

(declare-fun c!81861 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745104 (= c!81861 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745105 () Bool)

(declare-fun res!502145 () Bool)

(assert (=> b!745105 (=> res!502145 e!416196)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41580 (_ BitVec 32)) SeekEntryResult!7507)

(assert (=> b!745105 (= res!502145 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19900 a!3186) j!159) a!3186 mask!3328) (Found!7507 j!159))))))

(declare-fun b!745106 () Bool)

(assert (=> b!745106 (= e!416191 e!416192)))

(declare-fun res!502146 () Bool)

(assert (=> b!745106 (=> (not res!502146) (not e!416192))))

(declare-fun lt!331034 () SeekEntryResult!7507)

(assert (=> b!745106 (= res!502146 (or (= lt!331034 (MissingZero!7507 i!1173)) (= lt!331034 (MissingVacant!7507 i!1173))))))

(assert (=> b!745106 (= lt!331034 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!745108 () Bool)

(assert (=> b!745108 (= e!416193 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19900 a!3186) j!159) a!3186 mask!3328) (Found!7507 j!159)))))

(declare-fun b!745109 () Bool)

(declare-fun res!502144 () Bool)

(assert (=> b!745109 (=> (not res!502144) (not e!416192))))

(assert (=> b!745109 (= res!502144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745110 () Bool)

(declare-fun res!502147 () Bool)

(assert (=> b!745110 (=> (not res!502147) (not e!416191))))

(declare-fun arrayContainsKey!0 (array!41580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745110 (= res!502147 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745111 () Bool)

(assert (=> b!745111 (= e!416196 (or (= (select (store (arr!19900 a!3186) i!1173 k0!2102) index!1321) lt!331038) (not (= (select (store (arr!19900 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!745112 () Bool)

(declare-fun res!502148 () Bool)

(assert (=> b!745112 (=> (not res!502148) (not e!416191))))

(assert (=> b!745112 (= res!502148 (and (= (size!20321 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20321 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20321 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745113 () Bool)

(assert (=> b!745113 (= e!416192 e!416195)))

(declare-fun res!502151 () Bool)

(assert (=> b!745113 (=> (not res!502151) (not e!416195))))

(assert (=> b!745113 (= res!502151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19900 a!3186) j!159) mask!3328) (select (arr!19900 a!3186) j!159) a!3186 mask!3328) lt!331039))))

(assert (=> b!745113 (= lt!331039 (Intermediate!7507 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745114 () Bool)

(declare-fun res!502140 () Bool)

(assert (=> b!745114 (=> (not res!502140) (not e!416192))))

(assert (=> b!745114 (= res!502140 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20321 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20321 a!3186))))))

(declare-fun b!745115 () Bool)

(declare-fun res!502139 () Bool)

(assert (=> b!745115 (=> (not res!502139) (not e!416191))))

(assert (=> b!745115 (= res!502139 (validKeyInArray!0 (select (arr!19900 a!3186) j!159)))))

(declare-fun res!502137 () Bool)

(assert (=> start!65454 (=> (not res!502137) (not e!416191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65454 (= res!502137 (validMask!0 mask!3328))))

(assert (=> start!65454 e!416191))

(assert (=> start!65454 true))

(declare-fun array_inv!15674 (array!41580) Bool)

(assert (=> start!65454 (array_inv!15674 a!3186)))

(declare-fun b!745107 () Bool)

(assert (=> b!745107 (= e!416194 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19900 a!3186) j!159) a!3186 mask!3328) lt!331033))))

(assert (= (and start!65454 res!502137) b!745112))

(assert (= (and b!745112 res!502148) b!745115))

(assert (= (and b!745115 res!502139) b!745099))

(assert (= (and b!745099 res!502138) b!745110))

(assert (= (and b!745110 res!502147) b!745106))

(assert (= (and b!745106 res!502146) b!745109))

(assert (= (and b!745109 res!502144) b!745098))

(assert (= (and b!745098 res!502136) b!745114))

(assert (= (and b!745114 res!502140) b!745113))

(assert (= (and b!745113 res!502151) b!745101))

(assert (= (and b!745101 res!502149) b!745104))

(assert (= (and b!745104 c!81861) b!745103))

(assert (= (and b!745104 (not c!81861)) b!745108))

(assert (= (and b!745104 res!502152) b!745100))

(assert (= (and b!745100 res!502143) b!745097))

(assert (= (and b!745097 res!502150) b!745102))

(assert (= (and b!745102 res!502142) b!745107))

(assert (= (and b!745097 (not res!502141)) b!745105))

(assert (= (and b!745105 (not res!502145)) b!745111))

(declare-fun m!695605 () Bool)

(assert (=> b!745099 m!695605))

(declare-fun m!695607 () Bool)

(assert (=> b!745113 m!695607))

(assert (=> b!745113 m!695607))

(declare-fun m!695609 () Bool)

(assert (=> b!745113 m!695609))

(assert (=> b!745113 m!695609))

(assert (=> b!745113 m!695607))

(declare-fun m!695611 () Bool)

(assert (=> b!745113 m!695611))

(declare-fun m!695613 () Bool)

(assert (=> b!745111 m!695613))

(declare-fun m!695615 () Bool)

(assert (=> b!745111 m!695615))

(declare-fun m!695617 () Bool)

(assert (=> b!745106 m!695617))

(assert (=> b!745105 m!695607))

(assert (=> b!745105 m!695607))

(declare-fun m!695619 () Bool)

(assert (=> b!745105 m!695619))

(declare-fun m!695621 () Bool)

(assert (=> start!65454 m!695621))

(declare-fun m!695623 () Bool)

(assert (=> start!65454 m!695623))

(assert (=> b!745108 m!695607))

(assert (=> b!745108 m!695607))

(assert (=> b!745108 m!695619))

(assert (=> b!745103 m!695607))

(assert (=> b!745103 m!695607))

(declare-fun m!695625 () Bool)

(assert (=> b!745103 m!695625))

(assert (=> b!745115 m!695607))

(assert (=> b!745115 m!695607))

(declare-fun m!695627 () Bool)

(assert (=> b!745115 m!695627))

(assert (=> b!745107 m!695607))

(assert (=> b!745107 m!695607))

(declare-fun m!695629 () Bool)

(assert (=> b!745107 m!695629))

(declare-fun m!695631 () Bool)

(assert (=> b!745109 m!695631))

(declare-fun m!695633 () Bool)

(assert (=> b!745098 m!695633))

(declare-fun m!695635 () Bool)

(assert (=> b!745101 m!695635))

(declare-fun m!695637 () Bool)

(assert (=> b!745100 m!695637))

(declare-fun m!695639 () Bool)

(assert (=> b!745100 m!695639))

(declare-fun m!695641 () Bool)

(assert (=> b!745100 m!695641))

(assert (=> b!745100 m!695613))

(assert (=> b!745100 m!695637))

(declare-fun m!695643 () Bool)

(assert (=> b!745100 m!695643))

(declare-fun m!695645 () Bool)

(assert (=> b!745110 m!695645))

(assert (=> b!745102 m!695607))

(assert (=> b!745102 m!695607))

(declare-fun m!695647 () Bool)

(assert (=> b!745102 m!695647))

(declare-fun m!695649 () Bool)

(assert (=> b!745097 m!695649))

(declare-fun m!695651 () Bool)

(assert (=> b!745097 m!695651))

(check-sat (not b!745106) (not b!745100) (not b!745108) (not b!745102) (not start!65454) (not b!745115) (not b!745105) (not b!745103) (not b!745109) (not b!745110) (not b!745098) (not b!745097) (not b!745113) (not b!745107) (not b!745099))
(check-sat)
