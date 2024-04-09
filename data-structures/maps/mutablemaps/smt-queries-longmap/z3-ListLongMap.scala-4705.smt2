; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65310 () Bool)

(assert start!65310)

(declare-fun b!741109 () Bool)

(declare-fun res!498580 () Bool)

(declare-fun e!414311 () Bool)

(assert (=> b!741109 (=> (not res!498580) (not e!414311))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-datatypes ((array!41436 0))(
  ( (array!41437 (arr!19828 (Array (_ BitVec 32) (_ BitVec 64))) (size!20249 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41436)

(assert (=> b!741109 (= res!498580 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19828 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741110 () Bool)

(declare-fun res!498587 () Bool)

(declare-fun e!414308 () Bool)

(assert (=> b!741110 (=> (not res!498587) (not e!414308))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741110 (= res!498587 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20249 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20249 a!3186))))))

(declare-fun b!741111 () Bool)

(declare-fun e!414312 () Bool)

(assert (=> b!741111 (= e!414312 e!414308)))

(declare-fun res!498592 () Bool)

(assert (=> b!741111 (=> (not res!498592) (not e!414308))))

(declare-datatypes ((SeekEntryResult!7435 0))(
  ( (MissingZero!7435 (index!32107 (_ BitVec 32))) (Found!7435 (index!32108 (_ BitVec 32))) (Intermediate!7435 (undefined!8247 Bool) (index!32109 (_ BitVec 32)) (x!63114 (_ BitVec 32))) (Undefined!7435) (MissingVacant!7435 (index!32110 (_ BitVec 32))) )
))
(declare-fun lt!329294 () SeekEntryResult!7435)

(assert (=> b!741111 (= res!498592 (or (= lt!329294 (MissingZero!7435 i!1173)) (= lt!329294 (MissingVacant!7435 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41436 (_ BitVec 32)) SeekEntryResult!7435)

(assert (=> b!741111 (= lt!329294 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!498590 () Bool)

(assert (=> start!65310 (=> (not res!498590) (not e!414312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65310 (= res!498590 (validMask!0 mask!3328))))

(assert (=> start!65310 e!414312))

(assert (=> start!65310 true))

(declare-fun array_inv!15602 (array!41436) Bool)

(assert (=> start!65310 (array_inv!15602 a!3186)))

(declare-fun b!741112 () Bool)

(declare-fun res!498591 () Bool)

(assert (=> b!741112 (=> (not res!498591) (not e!414312))))

(declare-fun arrayContainsKey!0 (array!41436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741112 (= res!498591 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741113 () Bool)

(assert (=> b!741113 (= e!414308 e!414311)))

(declare-fun res!498589 () Bool)

(assert (=> b!741113 (=> (not res!498589) (not e!414311))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!329290 () SeekEntryResult!7435)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41436 (_ BitVec 32)) SeekEntryResult!7435)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741113 (= res!498589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19828 a!3186) j!159) mask!3328) (select (arr!19828 a!3186) j!159) a!3186 mask!3328) lt!329290))))

(assert (=> b!741113 (= lt!329290 (Intermediate!7435 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741114 () Bool)

(declare-fun e!414306 () Bool)

(assert (=> b!741114 (= e!414311 e!414306)))

(declare-fun res!498586 () Bool)

(assert (=> b!741114 (=> (not res!498586) (not e!414306))))

(declare-fun lt!329292 () SeekEntryResult!7435)

(declare-fun lt!329288 () SeekEntryResult!7435)

(assert (=> b!741114 (= res!498586 (= lt!329292 lt!329288))))

(declare-fun lt!329291 () (_ BitVec 64))

(declare-fun lt!329287 () array!41436)

(assert (=> b!741114 (= lt!329288 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329291 lt!329287 mask!3328))))

(assert (=> b!741114 (= lt!329292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329291 mask!3328) lt!329291 lt!329287 mask!3328))))

(assert (=> b!741114 (= lt!329291 (select (store (arr!19828 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741114 (= lt!329287 (array!41437 (store (arr!19828 a!3186) i!1173 k0!2102) (size!20249 a!3186)))))

(declare-fun b!741115 () Bool)

(declare-fun res!498581 () Bool)

(assert (=> b!741115 (=> (not res!498581) (not e!414312))))

(assert (=> b!741115 (= res!498581 (and (= (size!20249 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20249 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20249 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!414310 () Bool)

(declare-fun b!741116 () Bool)

(assert (=> b!741116 (= e!414310 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19828 a!3186) j!159) a!3186 mask!3328) lt!329290))))

(declare-fun b!741117 () Bool)

(declare-fun res!498582 () Bool)

(assert (=> b!741117 (=> (not res!498582) (not e!414308))))

(declare-datatypes ((List!13883 0))(
  ( (Nil!13880) (Cons!13879 (h!14951 (_ BitVec 64)) (t!20206 List!13883)) )
))
(declare-fun arrayNoDuplicates!0 (array!41436 (_ BitVec 32) List!13883) Bool)

(assert (=> b!741117 (= res!498582 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13880))))

(declare-fun b!741118 () Bool)

(get-info :version)

(assert (=> b!741118 (= e!414306 (not (or (not ((_ is Intermediate!7435) lt!329288)) (not (= x!1131 (x!63114 lt!329288))) (not (= index!1321 (index!32109 lt!329288))) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(declare-fun e!414305 () Bool)

(assert (=> b!741118 e!414305))

(declare-fun res!498584 () Bool)

(assert (=> b!741118 (=> (not res!498584) (not e!414305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41436 (_ BitVec 32)) Bool)

(assert (=> b!741118 (= res!498584 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25350 0))(
  ( (Unit!25351) )
))
(declare-fun lt!329293 () Unit!25350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25350)

(assert (=> b!741118 (= lt!329293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741119 () Bool)

(declare-fun e!414309 () Bool)

(assert (=> b!741119 (= e!414305 e!414309)))

(declare-fun res!498585 () Bool)

(assert (=> b!741119 (=> (not res!498585) (not e!414309))))

(declare-fun lt!329289 () SeekEntryResult!7435)

(assert (=> b!741119 (= res!498585 (= (seekEntryOrOpen!0 (select (arr!19828 a!3186) j!159) a!3186 mask!3328) lt!329289))))

(assert (=> b!741119 (= lt!329289 (Found!7435 j!159))))

(declare-fun b!741120 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41436 (_ BitVec 32)) SeekEntryResult!7435)

(assert (=> b!741120 (= e!414310 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19828 a!3186) j!159) a!3186 mask!3328) (Found!7435 j!159)))))

(declare-fun b!741121 () Bool)

(declare-fun res!498594 () Bool)

(assert (=> b!741121 (=> (not res!498594) (not e!414311))))

(assert (=> b!741121 (= res!498594 e!414310)))

(declare-fun c!81645 () Bool)

(assert (=> b!741121 (= c!81645 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741122 () Bool)

(declare-fun res!498588 () Bool)

(assert (=> b!741122 (=> (not res!498588) (not e!414312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741122 (= res!498588 (validKeyInArray!0 k0!2102))))

(declare-fun b!741123 () Bool)

(declare-fun res!498583 () Bool)

(assert (=> b!741123 (=> (not res!498583) (not e!414312))))

(assert (=> b!741123 (= res!498583 (validKeyInArray!0 (select (arr!19828 a!3186) j!159)))))

(declare-fun b!741124 () Bool)

(declare-fun res!498593 () Bool)

(assert (=> b!741124 (=> (not res!498593) (not e!414308))))

(assert (=> b!741124 (= res!498593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741125 () Bool)

(assert (=> b!741125 (= e!414309 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19828 a!3186) j!159) a!3186 mask!3328) lt!329289))))

(assert (= (and start!65310 res!498590) b!741115))

(assert (= (and b!741115 res!498581) b!741123))

(assert (= (and b!741123 res!498583) b!741122))

(assert (= (and b!741122 res!498588) b!741112))

(assert (= (and b!741112 res!498591) b!741111))

(assert (= (and b!741111 res!498592) b!741124))

(assert (= (and b!741124 res!498593) b!741117))

(assert (= (and b!741117 res!498582) b!741110))

(assert (= (and b!741110 res!498587) b!741113))

(assert (= (and b!741113 res!498589) b!741109))

(assert (= (and b!741109 res!498580) b!741121))

(assert (= (and b!741121 c!81645) b!741116))

(assert (= (and b!741121 (not c!81645)) b!741120))

(assert (= (and b!741121 res!498594) b!741114))

(assert (= (and b!741114 res!498586) b!741118))

(assert (= (and b!741118 res!498584) b!741119))

(assert (= (and b!741119 res!498585) b!741125))

(declare-fun m!692201 () Bool)

(assert (=> b!741117 m!692201))

(declare-fun m!692203 () Bool)

(assert (=> b!741114 m!692203))

(declare-fun m!692205 () Bool)

(assert (=> b!741114 m!692205))

(declare-fun m!692207 () Bool)

(assert (=> b!741114 m!692207))

(declare-fun m!692209 () Bool)

(assert (=> b!741114 m!692209))

(assert (=> b!741114 m!692205))

(declare-fun m!692211 () Bool)

(assert (=> b!741114 m!692211))

(declare-fun m!692213 () Bool)

(assert (=> b!741111 m!692213))

(declare-fun m!692215 () Bool)

(assert (=> b!741119 m!692215))

(assert (=> b!741119 m!692215))

(declare-fun m!692217 () Bool)

(assert (=> b!741119 m!692217))

(assert (=> b!741116 m!692215))

(assert (=> b!741116 m!692215))

(declare-fun m!692219 () Bool)

(assert (=> b!741116 m!692219))

(assert (=> b!741113 m!692215))

(assert (=> b!741113 m!692215))

(declare-fun m!692221 () Bool)

(assert (=> b!741113 m!692221))

(assert (=> b!741113 m!692221))

(assert (=> b!741113 m!692215))

(declare-fun m!692223 () Bool)

(assert (=> b!741113 m!692223))

(assert (=> b!741125 m!692215))

(assert (=> b!741125 m!692215))

(declare-fun m!692225 () Bool)

(assert (=> b!741125 m!692225))

(declare-fun m!692227 () Bool)

(assert (=> b!741124 m!692227))

(declare-fun m!692229 () Bool)

(assert (=> start!65310 m!692229))

(declare-fun m!692231 () Bool)

(assert (=> start!65310 m!692231))

(declare-fun m!692233 () Bool)

(assert (=> b!741122 m!692233))

(assert (=> b!741123 m!692215))

(assert (=> b!741123 m!692215))

(declare-fun m!692235 () Bool)

(assert (=> b!741123 m!692235))

(declare-fun m!692237 () Bool)

(assert (=> b!741112 m!692237))

(assert (=> b!741120 m!692215))

(assert (=> b!741120 m!692215))

(declare-fun m!692239 () Bool)

(assert (=> b!741120 m!692239))

(declare-fun m!692241 () Bool)

(assert (=> b!741109 m!692241))

(declare-fun m!692243 () Bool)

(assert (=> b!741118 m!692243))

(declare-fun m!692245 () Bool)

(assert (=> b!741118 m!692245))

(check-sat (not start!65310) (not b!741118) (not b!741124) (not b!741117) (not b!741125) (not b!741111) (not b!741122) (not b!741116) (not b!741112) (not b!741113) (not b!741123) (not b!741120) (not b!741114) (not b!741119))
(check-sat)
