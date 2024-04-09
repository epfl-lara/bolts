; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67686 () Bool)

(assert start!67686)

(declare-fun b!783656 () Bool)

(declare-fun res!530344 () Bool)

(declare-fun e!435752 () Bool)

(assert (=> b!783656 (=> (not res!530344) (not e!435752))))

(declare-datatypes ((array!42681 0))(
  ( (array!42682 (arr!20425 (Array (_ BitVec 32) (_ BitVec 64))) (size!20846 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42681)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783656 (= res!530344 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!530339 () Bool)

(assert (=> start!67686 (=> (not res!530339) (not e!435752))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67686 (= res!530339 (validMask!0 mask!3328))))

(assert (=> start!67686 e!435752))

(assert (=> start!67686 true))

(declare-fun array_inv!16199 (array!42681) Bool)

(assert (=> start!67686 (array_inv!16199 a!3186)))

(declare-fun b!783657 () Bool)

(declare-fun e!435747 () Bool)

(assert (=> b!783657 (= e!435747 true)))

(declare-fun e!435753 () Bool)

(assert (=> b!783657 e!435753))

(declare-fun res!530337 () Bool)

(assert (=> b!783657 (=> (not res!530337) (not e!435753))))

(declare-fun lt!349314 () (_ BitVec 64))

(assert (=> b!783657 (= res!530337 (= lt!349314 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27038 0))(
  ( (Unit!27039) )
))
(declare-fun lt!349317 () Unit!27038)

(declare-fun e!435754 () Unit!27038)

(assert (=> b!783657 (= lt!349317 e!435754)))

(declare-fun c!87072 () Bool)

(assert (=> b!783657 (= c!87072 (= lt!349314 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783658 () Bool)

(declare-fun e!435751 () Bool)

(assert (=> b!783658 (= e!435752 e!435751)))

(declare-fun res!530331 () Bool)

(assert (=> b!783658 (=> (not res!530331) (not e!435751))))

(declare-datatypes ((SeekEntryResult!8032 0))(
  ( (MissingZero!8032 (index!34495 (_ BitVec 32))) (Found!8032 (index!34496 (_ BitVec 32))) (Intermediate!8032 (undefined!8844 Bool) (index!34497 (_ BitVec 32)) (x!65477 (_ BitVec 32))) (Undefined!8032) (MissingVacant!8032 (index!34498 (_ BitVec 32))) )
))
(declare-fun lt!349313 () SeekEntryResult!8032)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783658 (= res!530331 (or (= lt!349313 (MissingZero!8032 i!1173)) (= lt!349313 (MissingVacant!8032 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42681 (_ BitVec 32)) SeekEntryResult!8032)

(assert (=> b!783658 (= lt!349313 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!783659 () Bool)

(declare-fun res!530334 () Bool)

(declare-fun e!435746 () Bool)

(assert (=> b!783659 (=> (not res!530334) (not e!435746))))

(declare-fun e!435748 () Bool)

(assert (=> b!783659 (= res!530334 e!435748)))

(declare-fun c!87071 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783659 (= c!87071 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783660 () Bool)

(declare-fun res!530336 () Bool)

(assert (=> b!783660 (=> (not res!530336) (not e!435753))))

(declare-fun lt!349320 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!349319 () array!42681)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42681 (_ BitVec 32)) SeekEntryResult!8032)

(assert (=> b!783660 (= res!530336 (= (seekEntryOrOpen!0 lt!349320 lt!349319 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349320 lt!349319 mask!3328)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!349321 () SeekEntryResult!8032)

(declare-fun e!435750 () Bool)

(declare-fun b!783661 () Bool)

(assert (=> b!783661 (= e!435750 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20425 a!3186) j!159) a!3186 mask!3328) lt!349321))))

(declare-fun b!783662 () Bool)

(declare-fun lt!349311 () SeekEntryResult!8032)

(declare-fun lt!349316 () SeekEntryResult!8032)

(assert (=> b!783662 (= e!435753 (= lt!349311 lt!349316))))

(declare-fun b!783663 () Bool)

(declare-fun res!530338 () Bool)

(assert (=> b!783663 (=> (not res!530338) (not e!435751))))

(assert (=> b!783663 (= res!530338 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20846 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20846 a!3186))))))

(declare-fun b!783664 () Bool)

(assert (=> b!783664 (= e!435751 e!435746)))

(declare-fun res!530332 () Bool)

(assert (=> b!783664 (=> (not res!530332) (not e!435746))))

(declare-fun lt!349312 () SeekEntryResult!8032)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42681 (_ BitVec 32)) SeekEntryResult!8032)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783664 (= res!530332 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20425 a!3186) j!159) mask!3328) (select (arr!20425 a!3186) j!159) a!3186 mask!3328) lt!349312))))

(assert (=> b!783664 (= lt!349312 (Intermediate!8032 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783665 () Bool)

(declare-fun e!435749 () Bool)

(assert (=> b!783665 (= e!435749 e!435747)))

(declare-fun res!530333 () Bool)

(assert (=> b!783665 (=> res!530333 e!435747)))

(assert (=> b!783665 (= res!530333 (= lt!349314 lt!349320))))

(assert (=> b!783665 (= lt!349314 (select (store (arr!20425 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!783666 () Bool)

(declare-fun e!435745 () Bool)

(declare-fun e!435743 () Bool)

(assert (=> b!783666 (= e!435745 (not e!435743))))

(declare-fun res!530341 () Bool)

(assert (=> b!783666 (=> res!530341 e!435743)))

(declare-fun lt!349315 () SeekEntryResult!8032)

(get-info :version)

(assert (=> b!783666 (= res!530341 (or (not ((_ is Intermediate!8032) lt!349315)) (bvslt x!1131 (x!65477 lt!349315)) (not (= x!1131 (x!65477 lt!349315))) (not (= index!1321 (index!34497 lt!349315)))))))

(assert (=> b!783666 e!435750))

(declare-fun res!530343 () Bool)

(assert (=> b!783666 (=> (not res!530343) (not e!435750))))

(assert (=> b!783666 (= res!530343 (= lt!349311 lt!349321))))

(assert (=> b!783666 (= lt!349321 (Found!8032 j!159))))

(assert (=> b!783666 (= lt!349311 (seekEntryOrOpen!0 (select (arr!20425 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42681 (_ BitVec 32)) Bool)

(assert (=> b!783666 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349310 () Unit!27038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27038)

(assert (=> b!783666 (= lt!349310 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783667 () Bool)

(assert (=> b!783667 (= e!435746 e!435745)))

(declare-fun res!530335 () Bool)

(assert (=> b!783667 (=> (not res!530335) (not e!435745))))

(declare-fun lt!349318 () SeekEntryResult!8032)

(assert (=> b!783667 (= res!530335 (= lt!349318 lt!349315))))

(assert (=> b!783667 (= lt!349315 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349320 lt!349319 mask!3328))))

(assert (=> b!783667 (= lt!349318 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349320 mask!3328) lt!349320 lt!349319 mask!3328))))

(assert (=> b!783667 (= lt!349320 (select (store (arr!20425 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!783667 (= lt!349319 (array!42682 (store (arr!20425 a!3186) i!1173 k0!2102) (size!20846 a!3186)))))

(declare-fun b!783668 () Bool)

(assert (=> b!783668 (= e!435748 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20425 a!3186) j!159) a!3186 mask!3328) (Found!8032 j!159)))))

(declare-fun b!783669 () Bool)

(declare-fun res!530340 () Bool)

(assert (=> b!783669 (=> (not res!530340) (not e!435751))))

(declare-datatypes ((List!14480 0))(
  ( (Nil!14477) (Cons!14476 (h!15599 (_ BitVec 64)) (t!20803 List!14480)) )
))
(declare-fun arrayNoDuplicates!0 (array!42681 (_ BitVec 32) List!14480) Bool)

(assert (=> b!783669 (= res!530340 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14477))))

(declare-fun b!783670 () Bool)

(declare-fun Unit!27040 () Unit!27038)

(assert (=> b!783670 (= e!435754 Unit!27040)))

(assert (=> b!783670 false))

(declare-fun b!783671 () Bool)

(declare-fun res!530329 () Bool)

(assert (=> b!783671 (=> (not res!530329) (not e!435752))))

(assert (=> b!783671 (= res!530329 (and (= (size!20846 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20846 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20846 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783672 () Bool)

(declare-fun Unit!27041 () Unit!27038)

(assert (=> b!783672 (= e!435754 Unit!27041)))

(declare-fun b!783673 () Bool)

(declare-fun res!530346 () Bool)

(assert (=> b!783673 (=> (not res!530346) (not e!435746))))

(assert (=> b!783673 (= res!530346 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20425 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783674 () Bool)

(assert (=> b!783674 (= e!435743 e!435749)))

(declare-fun res!530330 () Bool)

(assert (=> b!783674 (=> res!530330 e!435749)))

(assert (=> b!783674 (= res!530330 (not (= lt!349316 lt!349321)))))

(assert (=> b!783674 (= lt!349316 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20425 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783675 () Bool)

(declare-fun res!530347 () Bool)

(assert (=> b!783675 (=> (not res!530347) (not e!435752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783675 (= res!530347 (validKeyInArray!0 (select (arr!20425 a!3186) j!159)))))

(declare-fun b!783676 () Bool)

(declare-fun res!530342 () Bool)

(assert (=> b!783676 (=> (not res!530342) (not e!435751))))

(assert (=> b!783676 (= res!530342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783677 () Bool)

(declare-fun res!530345 () Bool)

(assert (=> b!783677 (=> (not res!530345) (not e!435752))))

(assert (=> b!783677 (= res!530345 (validKeyInArray!0 k0!2102))))

(declare-fun b!783678 () Bool)

(assert (=> b!783678 (= e!435748 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20425 a!3186) j!159) a!3186 mask!3328) lt!349312))))

(assert (= (and start!67686 res!530339) b!783671))

(assert (= (and b!783671 res!530329) b!783675))

(assert (= (and b!783675 res!530347) b!783677))

(assert (= (and b!783677 res!530345) b!783656))

(assert (= (and b!783656 res!530344) b!783658))

(assert (= (and b!783658 res!530331) b!783676))

(assert (= (and b!783676 res!530342) b!783669))

(assert (= (and b!783669 res!530340) b!783663))

(assert (= (and b!783663 res!530338) b!783664))

(assert (= (and b!783664 res!530332) b!783673))

(assert (= (and b!783673 res!530346) b!783659))

(assert (= (and b!783659 c!87071) b!783678))

(assert (= (and b!783659 (not c!87071)) b!783668))

(assert (= (and b!783659 res!530334) b!783667))

(assert (= (and b!783667 res!530335) b!783666))

(assert (= (and b!783666 res!530343) b!783661))

(assert (= (and b!783666 (not res!530341)) b!783674))

(assert (= (and b!783674 (not res!530330)) b!783665))

(assert (= (and b!783665 (not res!530333)) b!783657))

(assert (= (and b!783657 c!87072) b!783670))

(assert (= (and b!783657 (not c!87072)) b!783672))

(assert (= (and b!783657 res!530337) b!783660))

(assert (= (and b!783660 res!530336) b!783662))

(declare-fun m!726209 () Bool)

(assert (=> b!783675 m!726209))

(assert (=> b!783675 m!726209))

(declare-fun m!726211 () Bool)

(assert (=> b!783675 m!726211))

(assert (=> b!783666 m!726209))

(assert (=> b!783666 m!726209))

(declare-fun m!726213 () Bool)

(assert (=> b!783666 m!726213))

(declare-fun m!726215 () Bool)

(assert (=> b!783666 m!726215))

(declare-fun m!726217 () Bool)

(assert (=> b!783666 m!726217))

(declare-fun m!726219 () Bool)

(assert (=> b!783660 m!726219))

(declare-fun m!726221 () Bool)

(assert (=> b!783660 m!726221))

(declare-fun m!726223 () Bool)

(assert (=> b!783656 m!726223))

(declare-fun m!726225 () Bool)

(assert (=> b!783665 m!726225))

(declare-fun m!726227 () Bool)

(assert (=> b!783665 m!726227))

(assert (=> b!783674 m!726209))

(assert (=> b!783674 m!726209))

(declare-fun m!726229 () Bool)

(assert (=> b!783674 m!726229))

(assert (=> b!783678 m!726209))

(assert (=> b!783678 m!726209))

(declare-fun m!726231 () Bool)

(assert (=> b!783678 m!726231))

(declare-fun m!726233 () Bool)

(assert (=> b!783673 m!726233))

(declare-fun m!726235 () Bool)

(assert (=> start!67686 m!726235))

(declare-fun m!726237 () Bool)

(assert (=> start!67686 m!726237))

(declare-fun m!726239 () Bool)

(assert (=> b!783667 m!726239))

(declare-fun m!726241 () Bool)

(assert (=> b!783667 m!726241))

(declare-fun m!726243 () Bool)

(assert (=> b!783667 m!726243))

(assert (=> b!783667 m!726239))

(assert (=> b!783667 m!726225))

(declare-fun m!726245 () Bool)

(assert (=> b!783667 m!726245))

(declare-fun m!726247 () Bool)

(assert (=> b!783658 m!726247))

(declare-fun m!726249 () Bool)

(assert (=> b!783669 m!726249))

(assert (=> b!783668 m!726209))

(assert (=> b!783668 m!726209))

(assert (=> b!783668 m!726229))

(declare-fun m!726251 () Bool)

(assert (=> b!783677 m!726251))

(assert (=> b!783664 m!726209))

(assert (=> b!783664 m!726209))

(declare-fun m!726253 () Bool)

(assert (=> b!783664 m!726253))

(assert (=> b!783664 m!726253))

(assert (=> b!783664 m!726209))

(declare-fun m!726255 () Bool)

(assert (=> b!783664 m!726255))

(assert (=> b!783661 m!726209))

(assert (=> b!783661 m!726209))

(declare-fun m!726257 () Bool)

(assert (=> b!783661 m!726257))

(declare-fun m!726259 () Bool)

(assert (=> b!783676 m!726259))

(check-sat (not b!783667) (not start!67686) (not b!783675) (not b!783669) (not b!783664) (not b!783674) (not b!783676) (not b!783661) (not b!783668) (not b!783656) (not b!783660) (not b!783677) (not b!783666) (not b!783678) (not b!783658))
(check-sat)
