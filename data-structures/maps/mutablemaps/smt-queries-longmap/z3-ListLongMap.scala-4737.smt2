; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65502 () Bool)

(assert start!65502)

(declare-fun b!746397 () Bool)

(declare-fun res!503296 () Bool)

(declare-fun e!416843 () Bool)

(assert (=> b!746397 (=> (not res!503296) (not e!416843))))

(declare-datatypes ((array!41628 0))(
  ( (array!41629 (arr!19924 (Array (_ BitVec 32) (_ BitVec 64))) (size!20345 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41628)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746397 (= res!503296 (validKeyInArray!0 (select (arr!19924 a!3186) j!159)))))

(declare-fun b!746398 () Bool)

(declare-fun res!503304 () Bool)

(assert (=> b!746398 (=> (not res!503304) (not e!416843))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!746398 (= res!503304 (and (= (size!20345 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20345 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20345 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746399 () Bool)

(declare-fun e!416847 () Bool)

(declare-fun e!416842 () Bool)

(assert (=> b!746399 (= e!416847 e!416842)))

(declare-fun res!503300 () Bool)

(assert (=> b!746399 (=> (not res!503300) (not e!416842))))

(declare-datatypes ((SeekEntryResult!7531 0))(
  ( (MissingZero!7531 (index!32491 (_ BitVec 32))) (Found!7531 (index!32492 (_ BitVec 32))) (Intermediate!7531 (undefined!8343 Bool) (index!32493 (_ BitVec 32)) (x!63466 (_ BitVec 32))) (Undefined!7531) (MissingVacant!7531 (index!32494 (_ BitVec 32))) )
))
(declare-fun lt!331728 () SeekEntryResult!7531)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41628 (_ BitVec 32)) SeekEntryResult!7531)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746399 (= res!503300 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19924 a!3186) j!159) mask!3328) (select (arr!19924 a!3186) j!159) a!3186 mask!3328) lt!331728))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746399 (= lt!331728 (Intermediate!7531 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746400 () Bool)

(declare-fun res!503295 () Bool)

(assert (=> b!746400 (=> (not res!503295) (not e!416847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41628 (_ BitVec 32)) Bool)

(assert (=> b!746400 (= res!503295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746401 () Bool)

(declare-fun e!416846 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!746401 (= e!416846 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19924 a!3186) j!159) a!3186 mask!3328) lt!331728))))

(declare-fun res!503305 () Bool)

(assert (=> start!65502 (=> (not res!503305) (not e!416843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65502 (= res!503305 (validMask!0 mask!3328))))

(assert (=> start!65502 e!416843))

(assert (=> start!65502 true))

(declare-fun array_inv!15698 (array!41628) Bool)

(assert (=> start!65502 (array_inv!15698 a!3186)))

(declare-fun e!416839 () Bool)

(declare-fun b!746402 () Bool)

(assert (=> b!746402 (= e!416839 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!331731 () SeekEntryResult!7531)

(declare-fun lt!331729 () SeekEntryResult!7531)

(assert (=> b!746402 (= lt!331731 lt!331729)))

(declare-fun b!746403 () Bool)

(declare-fun res!503302 () Bool)

(assert (=> b!746403 (=> (not res!503302) (not e!416843))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!746403 (= res!503302 (validKeyInArray!0 k0!2102))))

(declare-fun b!746404 () Bool)

(declare-fun res!503297 () Bool)

(assert (=> b!746404 (=> (not res!503297) (not e!416843))))

(declare-fun arrayContainsKey!0 (array!41628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746404 (= res!503297 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!746405 () Bool)

(declare-fun res!503306 () Bool)

(assert (=> b!746405 (=> (not res!503306) (not e!416847))))

(assert (=> b!746405 (= res!503306 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20345 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20345 a!3186))))))

(declare-fun b!746406 () Bool)

(declare-fun res!503298 () Bool)

(assert (=> b!746406 (=> (not res!503298) (not e!416842))))

(assert (=> b!746406 (= res!503298 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19924 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746407 () Bool)

(declare-fun res!503307 () Bool)

(assert (=> b!746407 (=> (not res!503307) (not e!416842))))

(assert (=> b!746407 (= res!503307 e!416846)))

(declare-fun c!81933 () Bool)

(assert (=> b!746407 (= c!81933 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746408 () Bool)

(declare-fun lt!331733 () SeekEntryResult!7531)

(declare-fun e!416841 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41628 (_ BitVec 32)) SeekEntryResult!7531)

(assert (=> b!746408 (= e!416841 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19924 a!3186) j!159) a!3186 mask!3328) lt!331733))))

(declare-fun b!746409 () Bool)

(assert (=> b!746409 (= e!416843 e!416847)))

(declare-fun res!503292 () Bool)

(assert (=> b!746409 (=> (not res!503292) (not e!416847))))

(declare-fun lt!331727 () SeekEntryResult!7531)

(assert (=> b!746409 (= res!503292 (or (= lt!331727 (MissingZero!7531 i!1173)) (= lt!331727 (MissingVacant!7531 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41628 (_ BitVec 32)) SeekEntryResult!7531)

(assert (=> b!746409 (= lt!331727 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!746410 () Bool)

(declare-fun e!416840 () Bool)

(declare-fun e!416845 () Bool)

(assert (=> b!746410 (= e!416840 (not e!416845))))

(declare-fun res!503301 () Bool)

(assert (=> b!746410 (=> res!503301 e!416845)))

(declare-fun lt!331730 () SeekEntryResult!7531)

(get-info :version)

(assert (=> b!746410 (= res!503301 (or (not ((_ is Intermediate!7531) lt!331730)) (bvslt x!1131 (x!63466 lt!331730)) (not (= x!1131 (x!63466 lt!331730))) (not (= index!1321 (index!32493 lt!331730)))))))

(assert (=> b!746410 e!416841))

(declare-fun res!503294 () Bool)

(assert (=> b!746410 (=> (not res!503294) (not e!416841))))

(assert (=> b!746410 (= res!503294 (= lt!331731 lt!331733))))

(assert (=> b!746410 (= lt!331733 (Found!7531 j!159))))

(assert (=> b!746410 (= lt!331731 (seekEntryOrOpen!0 (select (arr!19924 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!746410 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25542 0))(
  ( (Unit!25543) )
))
(declare-fun lt!331736 () Unit!25542)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25542)

(assert (=> b!746410 (= lt!331736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746411 () Bool)

(assert (=> b!746411 (= e!416842 e!416840)))

(declare-fun res!503299 () Bool)

(assert (=> b!746411 (=> (not res!503299) (not e!416840))))

(declare-fun lt!331734 () SeekEntryResult!7531)

(assert (=> b!746411 (= res!503299 (= lt!331734 lt!331730))))

(declare-fun lt!331732 () (_ BitVec 64))

(declare-fun lt!331735 () array!41628)

(assert (=> b!746411 (= lt!331730 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331732 lt!331735 mask!3328))))

(assert (=> b!746411 (= lt!331734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331732 mask!3328) lt!331732 lt!331735 mask!3328))))

(assert (=> b!746411 (= lt!331732 (select (store (arr!19924 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!746411 (= lt!331735 (array!41629 (store (arr!19924 a!3186) i!1173 k0!2102) (size!20345 a!3186)))))

(declare-fun b!746412 () Bool)

(assert (=> b!746412 (= e!416845 e!416839)))

(declare-fun res!503303 () Bool)

(assert (=> b!746412 (=> res!503303 e!416839)))

(assert (=> b!746412 (= res!503303 (or (not (= lt!331729 lt!331733)) (= (select (store (arr!19924 a!3186) i!1173 k0!2102) index!1321) lt!331732) (not (= (select (store (arr!19924 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!746412 (= lt!331729 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19924 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!746413 () Bool)

(declare-fun res!503293 () Bool)

(assert (=> b!746413 (=> (not res!503293) (not e!416847))))

(declare-datatypes ((List!13979 0))(
  ( (Nil!13976) (Cons!13975 (h!15047 (_ BitVec 64)) (t!20302 List!13979)) )
))
(declare-fun arrayNoDuplicates!0 (array!41628 (_ BitVec 32) List!13979) Bool)

(assert (=> b!746413 (= res!503293 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13976))))

(declare-fun b!746414 () Bool)

(assert (=> b!746414 (= e!416846 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19924 a!3186) j!159) a!3186 mask!3328) (Found!7531 j!159)))))

(assert (= (and start!65502 res!503305) b!746398))

(assert (= (and b!746398 res!503304) b!746397))

(assert (= (and b!746397 res!503296) b!746403))

(assert (= (and b!746403 res!503302) b!746404))

(assert (= (and b!746404 res!503297) b!746409))

(assert (= (and b!746409 res!503292) b!746400))

(assert (= (and b!746400 res!503295) b!746413))

(assert (= (and b!746413 res!503293) b!746405))

(assert (= (and b!746405 res!503306) b!746399))

(assert (= (and b!746399 res!503300) b!746406))

(assert (= (and b!746406 res!503298) b!746407))

(assert (= (and b!746407 c!81933) b!746401))

(assert (= (and b!746407 (not c!81933)) b!746414))

(assert (= (and b!746407 res!503307) b!746411))

(assert (= (and b!746411 res!503299) b!746410))

(assert (= (and b!746410 res!503294) b!746408))

(assert (= (and b!746410 (not res!503301)) b!746412))

(assert (= (and b!746412 (not res!503303)) b!746402))

(declare-fun m!696745 () Bool)

(assert (=> b!746413 m!696745))

(declare-fun m!696747 () Bool)

(assert (=> b!746411 m!696747))

(declare-fun m!696749 () Bool)

(assert (=> b!746411 m!696749))

(declare-fun m!696751 () Bool)

(assert (=> b!746411 m!696751))

(declare-fun m!696753 () Bool)

(assert (=> b!746411 m!696753))

(assert (=> b!746411 m!696751))

(declare-fun m!696755 () Bool)

(assert (=> b!746411 m!696755))

(declare-fun m!696757 () Bool)

(assert (=> b!746409 m!696757))

(declare-fun m!696759 () Bool)

(assert (=> b!746403 m!696759))

(declare-fun m!696761 () Bool)

(assert (=> b!746404 m!696761))

(declare-fun m!696763 () Bool)

(assert (=> b!746406 m!696763))

(declare-fun m!696765 () Bool)

(assert (=> b!746408 m!696765))

(assert (=> b!746408 m!696765))

(declare-fun m!696767 () Bool)

(assert (=> b!746408 m!696767))

(declare-fun m!696769 () Bool)

(assert (=> start!65502 m!696769))

(declare-fun m!696771 () Bool)

(assert (=> start!65502 m!696771))

(assert (=> b!746412 m!696755))

(declare-fun m!696773 () Bool)

(assert (=> b!746412 m!696773))

(assert (=> b!746412 m!696765))

(assert (=> b!746412 m!696765))

(declare-fun m!696775 () Bool)

(assert (=> b!746412 m!696775))

(assert (=> b!746401 m!696765))

(assert (=> b!746401 m!696765))

(declare-fun m!696777 () Bool)

(assert (=> b!746401 m!696777))

(assert (=> b!746397 m!696765))

(assert (=> b!746397 m!696765))

(declare-fun m!696779 () Bool)

(assert (=> b!746397 m!696779))

(declare-fun m!696781 () Bool)

(assert (=> b!746400 m!696781))

(assert (=> b!746414 m!696765))

(assert (=> b!746414 m!696765))

(assert (=> b!746414 m!696775))

(assert (=> b!746410 m!696765))

(assert (=> b!746410 m!696765))

(declare-fun m!696783 () Bool)

(assert (=> b!746410 m!696783))

(declare-fun m!696785 () Bool)

(assert (=> b!746410 m!696785))

(declare-fun m!696787 () Bool)

(assert (=> b!746410 m!696787))

(assert (=> b!746399 m!696765))

(assert (=> b!746399 m!696765))

(declare-fun m!696789 () Bool)

(assert (=> b!746399 m!696789))

(assert (=> b!746399 m!696789))

(assert (=> b!746399 m!696765))

(declare-fun m!696791 () Bool)

(assert (=> b!746399 m!696791))

(check-sat (not b!746403) (not b!746404) (not b!746410) (not b!746397) (not b!746411) (not b!746399) (not b!746409) (not b!746408) (not b!746414) (not b!746400) (not b!746413) (not b!746412) (not start!65502) (not b!746401))
(check-sat)
