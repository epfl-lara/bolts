; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67688 () Bool)

(assert start!67688)

(declare-fun b!783725 () Bool)

(declare-fun res!530395 () Bool)

(declare-fun e!435780 () Bool)

(assert (=> b!783725 (=> (not res!530395) (not e!435780))))

(declare-fun e!435784 () Bool)

(assert (=> b!783725 (= res!530395 e!435784)))

(declare-fun c!87077 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783725 (= c!87077 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!783726 () Bool)

(declare-fun e!435779 () Bool)

(declare-datatypes ((SeekEntryResult!8033 0))(
  ( (MissingZero!8033 (index!34499 (_ BitVec 32))) (Found!8033 (index!34500 (_ BitVec 32))) (Intermediate!8033 (undefined!8845 Bool) (index!34501 (_ BitVec 32)) (x!65478 (_ BitVec 32))) (Undefined!8033) (MissingVacant!8033 (index!34502 (_ BitVec 32))) )
))
(declare-fun lt!349351 () SeekEntryResult!8033)

(declare-fun lt!349346 () SeekEntryResult!8033)

(assert (=> b!783726 (= e!435779 (= lt!349351 lt!349346))))

(declare-datatypes ((array!42683 0))(
  ( (array!42684 (arr!20426 (Array (_ BitVec 32) (_ BitVec 64))) (size!20847 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42683)

(declare-fun b!783727 () Bool)

(declare-fun lt!349354 () SeekEntryResult!8033)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42683 (_ BitVec 32)) SeekEntryResult!8033)

(assert (=> b!783727 (= e!435784 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20426 a!3186) j!159) a!3186 mask!3328) lt!349354))))

(declare-fun b!783728 () Bool)

(declare-fun res!530401 () Bool)

(declare-fun e!435787 () Bool)

(assert (=> b!783728 (=> (not res!530401) (not e!435787))))

(declare-datatypes ((List!14481 0))(
  ( (Nil!14478) (Cons!14477 (h!15600 (_ BitVec 64)) (t!20804 List!14481)) )
))
(declare-fun arrayNoDuplicates!0 (array!42683 (_ BitVec 32) List!14481) Bool)

(assert (=> b!783728 (= res!530401 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14478))))

(declare-fun b!783729 () Bool)

(declare-fun res!530399 () Bool)

(assert (=> b!783729 (=> (not res!530399) (not e!435787))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!783729 (= res!530399 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20847 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20847 a!3186))))))

(declare-fun b!783730 () Bool)

(assert (=> b!783730 (= e!435787 e!435780)))

(declare-fun res!530404 () Bool)

(assert (=> b!783730 (=> (not res!530404) (not e!435780))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783730 (= res!530404 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20426 a!3186) j!159) mask!3328) (select (arr!20426 a!3186) j!159) a!3186 mask!3328) lt!349354))))

(assert (=> b!783730 (= lt!349354 (Intermediate!8033 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!783731 () Bool)

(declare-fun res!530391 () Bool)

(declare-fun e!435785 () Bool)

(assert (=> b!783731 (=> (not res!530391) (not e!435785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783731 (= res!530391 (validKeyInArray!0 (select (arr!20426 a!3186) j!159)))))

(declare-fun b!783732 () Bool)

(declare-fun res!530386 () Bool)

(assert (=> b!783732 (=> (not res!530386) (not e!435785))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783732 (= res!530386 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!783733 () Bool)

(declare-fun res!530392 () Bool)

(assert (=> b!783733 (=> (not res!530392) (not e!435787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42683 (_ BitVec 32)) Bool)

(assert (=> b!783733 (= res!530392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783734 () Bool)

(declare-fun e!435789 () Bool)

(declare-fun e!435788 () Bool)

(assert (=> b!783734 (= e!435789 e!435788)))

(declare-fun res!530403 () Bool)

(assert (=> b!783734 (=> res!530403 e!435788)))

(declare-fun lt!349352 () (_ BitVec 64))

(declare-fun lt!349348 () (_ BitVec 64))

(assert (=> b!783734 (= res!530403 (= lt!349352 lt!349348))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783734 (= lt!349352 (select (store (arr!20426 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783736 () Bool)

(declare-fun res!530387 () Bool)

(assert (=> b!783736 (=> (not res!530387) (not e!435785))))

(assert (=> b!783736 (= res!530387 (validKeyInArray!0 k!2102))))

(declare-fun b!783737 () Bool)

(declare-datatypes ((Unit!27042 0))(
  ( (Unit!27043) )
))
(declare-fun e!435783 () Unit!27042)

(declare-fun Unit!27044 () Unit!27042)

(assert (=> b!783737 (= e!435783 Unit!27044)))

(assert (=> b!783737 false))

(declare-fun b!783738 () Bool)

(declare-fun res!530394 () Bool)

(assert (=> b!783738 (=> (not res!530394) (not e!435780))))

(assert (=> b!783738 (= res!530394 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20426 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783739 () Bool)

(declare-fun e!435781 () Bool)

(declare-fun e!435786 () Bool)

(assert (=> b!783739 (= e!435781 (not e!435786))))

(declare-fun res!530398 () Bool)

(assert (=> b!783739 (=> res!530398 e!435786)))

(declare-fun lt!349347 () SeekEntryResult!8033)

(assert (=> b!783739 (= res!530398 (or (not (is-Intermediate!8033 lt!349347)) (bvslt x!1131 (x!65478 lt!349347)) (not (= x!1131 (x!65478 lt!349347))) (not (= index!1321 (index!34501 lt!349347)))))))

(declare-fun e!435790 () Bool)

(assert (=> b!783739 e!435790))

(declare-fun res!530393 () Bool)

(assert (=> b!783739 (=> (not res!530393) (not e!435790))))

(declare-fun lt!349350 () SeekEntryResult!8033)

(assert (=> b!783739 (= res!530393 (= lt!349351 lt!349350))))

(assert (=> b!783739 (= lt!349350 (Found!8033 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42683 (_ BitVec 32)) SeekEntryResult!8033)

(assert (=> b!783739 (= lt!349351 (seekEntryOrOpen!0 (select (arr!20426 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783739 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349355 () Unit!27042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27042)

(assert (=> b!783739 (= lt!349355 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783740 () Bool)

(assert (=> b!783740 (= e!435788 true)))

(assert (=> b!783740 e!435779))

(declare-fun res!530389 () Bool)

(assert (=> b!783740 (=> (not res!530389) (not e!435779))))

(assert (=> b!783740 (= res!530389 (= lt!349352 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349357 () Unit!27042)

(assert (=> b!783740 (= lt!349357 e!435783)))

(declare-fun c!87078 () Bool)

(assert (=> b!783740 (= c!87078 (= lt!349352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783741 () Bool)

(assert (=> b!783741 (= e!435786 e!435789)))

(declare-fun res!530402 () Bool)

(assert (=> b!783741 (=> res!530402 e!435789)))

(assert (=> b!783741 (= res!530402 (not (= lt!349346 lt!349350)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42683 (_ BitVec 32)) SeekEntryResult!8033)

(assert (=> b!783741 (= lt!349346 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20426 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!783742 () Bool)

(declare-fun res!530396 () Bool)

(assert (=> b!783742 (=> (not res!530396) (not e!435779))))

(declare-fun lt!349356 () array!42683)

(assert (=> b!783742 (= res!530396 (= (seekEntryOrOpen!0 lt!349348 lt!349356 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349348 lt!349356 mask!3328)))))

(declare-fun b!783743 () Bool)

(assert (=> b!783743 (= e!435780 e!435781)))

(declare-fun res!530397 () Bool)

(assert (=> b!783743 (=> (not res!530397) (not e!435781))))

(declare-fun lt!349353 () SeekEntryResult!8033)

(assert (=> b!783743 (= res!530397 (= lt!349353 lt!349347))))

(assert (=> b!783743 (= lt!349347 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349348 lt!349356 mask!3328))))

(assert (=> b!783743 (= lt!349353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349348 mask!3328) lt!349348 lt!349356 mask!3328))))

(assert (=> b!783743 (= lt!349348 (select (store (arr!20426 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783743 (= lt!349356 (array!42684 (store (arr!20426 a!3186) i!1173 k!2102) (size!20847 a!3186)))))

(declare-fun b!783744 () Bool)

(assert (=> b!783744 (= e!435784 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20426 a!3186) j!159) a!3186 mask!3328) (Found!8033 j!159)))))

(declare-fun b!783745 () Bool)

(assert (=> b!783745 (= e!435790 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20426 a!3186) j!159) a!3186 mask!3328) lt!349350))))

(declare-fun b!783746 () Bool)

(declare-fun res!530388 () Bool)

(assert (=> b!783746 (=> (not res!530388) (not e!435785))))

(assert (=> b!783746 (= res!530388 (and (= (size!20847 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20847 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20847 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783747 () Bool)

(assert (=> b!783747 (= e!435785 e!435787)))

(declare-fun res!530390 () Bool)

(assert (=> b!783747 (=> (not res!530390) (not e!435787))))

(declare-fun lt!349349 () SeekEntryResult!8033)

(assert (=> b!783747 (= res!530390 (or (= lt!349349 (MissingZero!8033 i!1173)) (= lt!349349 (MissingVacant!8033 i!1173))))))

(assert (=> b!783747 (= lt!349349 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783735 () Bool)

(declare-fun Unit!27045 () Unit!27042)

(assert (=> b!783735 (= e!435783 Unit!27045)))

(declare-fun res!530400 () Bool)

(assert (=> start!67688 (=> (not res!530400) (not e!435785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67688 (= res!530400 (validMask!0 mask!3328))))

(assert (=> start!67688 e!435785))

(assert (=> start!67688 true))

(declare-fun array_inv!16200 (array!42683) Bool)

(assert (=> start!67688 (array_inv!16200 a!3186)))

(assert (= (and start!67688 res!530400) b!783746))

(assert (= (and b!783746 res!530388) b!783731))

(assert (= (and b!783731 res!530391) b!783736))

(assert (= (and b!783736 res!530387) b!783732))

(assert (= (and b!783732 res!530386) b!783747))

(assert (= (and b!783747 res!530390) b!783733))

(assert (= (and b!783733 res!530392) b!783728))

(assert (= (and b!783728 res!530401) b!783729))

(assert (= (and b!783729 res!530399) b!783730))

(assert (= (and b!783730 res!530404) b!783738))

(assert (= (and b!783738 res!530394) b!783725))

(assert (= (and b!783725 c!87077) b!783727))

(assert (= (and b!783725 (not c!87077)) b!783744))

(assert (= (and b!783725 res!530395) b!783743))

(assert (= (and b!783743 res!530397) b!783739))

(assert (= (and b!783739 res!530393) b!783745))

(assert (= (and b!783739 (not res!530398)) b!783741))

(assert (= (and b!783741 (not res!530402)) b!783734))

(assert (= (and b!783734 (not res!530403)) b!783740))

(assert (= (and b!783740 c!87078) b!783737))

(assert (= (and b!783740 (not c!87078)) b!783735))

(assert (= (and b!783740 res!530389) b!783742))

(assert (= (and b!783742 res!530396) b!783726))

(declare-fun m!726261 () Bool)

(assert (=> b!783738 m!726261))

(declare-fun m!726263 () Bool)

(assert (=> b!783736 m!726263))

(declare-fun m!726265 () Bool)

(assert (=> b!783733 m!726265))

(declare-fun m!726267 () Bool)

(assert (=> b!783747 m!726267))

(declare-fun m!726269 () Bool)

(assert (=> b!783743 m!726269))

(declare-fun m!726271 () Bool)

(assert (=> b!783743 m!726271))

(assert (=> b!783743 m!726269))

(declare-fun m!726273 () Bool)

(assert (=> b!783743 m!726273))

(declare-fun m!726275 () Bool)

(assert (=> b!783743 m!726275))

(declare-fun m!726277 () Bool)

(assert (=> b!783743 m!726277))

(declare-fun m!726279 () Bool)

(assert (=> b!783731 m!726279))

(assert (=> b!783731 m!726279))

(declare-fun m!726281 () Bool)

(assert (=> b!783731 m!726281))

(assert (=> b!783745 m!726279))

(assert (=> b!783745 m!726279))

(declare-fun m!726283 () Bool)

(assert (=> b!783745 m!726283))

(declare-fun m!726285 () Bool)

(assert (=> b!783728 m!726285))

(assert (=> b!783734 m!726271))

(declare-fun m!726287 () Bool)

(assert (=> b!783734 m!726287))

(declare-fun m!726289 () Bool)

(assert (=> b!783742 m!726289))

(declare-fun m!726291 () Bool)

(assert (=> b!783742 m!726291))

(assert (=> b!783739 m!726279))

(assert (=> b!783739 m!726279))

(declare-fun m!726293 () Bool)

(assert (=> b!783739 m!726293))

(declare-fun m!726295 () Bool)

(assert (=> b!783739 m!726295))

(declare-fun m!726297 () Bool)

(assert (=> b!783739 m!726297))

(declare-fun m!726299 () Bool)

(assert (=> start!67688 m!726299))

(declare-fun m!726301 () Bool)

(assert (=> start!67688 m!726301))

(assert (=> b!783741 m!726279))

(assert (=> b!783741 m!726279))

(declare-fun m!726303 () Bool)

(assert (=> b!783741 m!726303))

(declare-fun m!726305 () Bool)

(assert (=> b!783732 m!726305))

(assert (=> b!783730 m!726279))

(assert (=> b!783730 m!726279))

(declare-fun m!726307 () Bool)

(assert (=> b!783730 m!726307))

(assert (=> b!783730 m!726307))

(assert (=> b!783730 m!726279))

(declare-fun m!726309 () Bool)

(assert (=> b!783730 m!726309))

(assert (=> b!783744 m!726279))

(assert (=> b!783744 m!726279))

(assert (=> b!783744 m!726303))

(assert (=> b!783727 m!726279))

(assert (=> b!783727 m!726279))

(declare-fun m!726311 () Bool)

(assert (=> b!783727 m!726311))

(push 1)

