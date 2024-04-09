; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28598 () Bool)

(assert start!28598)

(declare-fun b!292253 () Bool)

(declare-fun e!184924 () Bool)

(declare-fun e!184927 () Bool)

(assert (=> b!292253 (= e!184924 e!184927)))

(declare-fun res!153349 () Bool)

(assert (=> b!292253 (=> (not res!153349) (not e!184927))))

(declare-fun lt!144758 () Bool)

(declare-datatypes ((SeekEntryResult!2165 0))(
  ( (MissingZero!2165 (index!10830 (_ BitVec 32))) (Found!2165 (index!10831 (_ BitVec 32))) (Intermediate!2165 (undefined!2977 Bool) (index!10832 (_ BitVec 32)) (x!28988 (_ BitVec 32))) (Undefined!2165) (MissingVacant!2165 (index!10833 (_ BitVec 32))) )
))
(declare-fun lt!144752 () SeekEntryResult!2165)

(declare-datatypes ((array!14766 0))(
  ( (array!14767 (arr!7005 (Array (_ BitVec 32) (_ BitVec 64))) (size!7357 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14766)

(assert (=> b!292253 (= res!153349 (and (or lt!144758 (not (undefined!2977 lt!144752))) (not lt!144758) (= (select (arr!7005 a!3312) (index!10832 lt!144752)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292253 (= lt!144758 (not (is-Intermediate!2165 lt!144752)))))

(declare-fun res!153350 () Bool)

(declare-fun e!184926 () Bool)

(assert (=> start!28598 (=> (not res!153350) (not e!184926))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28598 (= res!153350 (validMask!0 mask!3809))))

(assert (=> start!28598 e!184926))

(assert (=> start!28598 true))

(declare-fun array_inv!4959 (array!14766) Bool)

(assert (=> start!28598 (array_inv!4959 a!3312)))

(declare-fun b!292254 () Bool)

(declare-fun res!153354 () Bool)

(assert (=> b!292254 (=> (not res!153354) (not e!184926))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292254 (= res!153354 (validKeyInArray!0 k!2524))))

(declare-fun b!292255 () Bool)

(declare-fun e!184925 () Bool)

(assert (=> b!292255 (= e!184925 e!184924)))

(declare-fun res!153353 () Bool)

(assert (=> b!292255 (=> (not res!153353) (not e!184924))))

(declare-fun lt!144753 () Bool)

(declare-fun lt!144754 () SeekEntryResult!2165)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292255 (= res!153353 (and (not lt!144753) (= lt!144754 (MissingVacant!2165 i!1256))))))

(declare-fun lt!144755 () (_ BitVec 32))

(declare-fun lt!144757 () SeekEntryResult!2165)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14766 (_ BitVec 32)) SeekEntryResult!2165)

(assert (=> b!292255 (= lt!144757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144755 k!2524 (array!14767 (store (arr!7005 a!3312) i!1256 k!2524) (size!7357 a!3312)) mask!3809))))

(assert (=> b!292255 (= lt!144752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144755 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292255 (= lt!144755 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292256 () Bool)

(declare-fun res!153351 () Bool)

(assert (=> b!292256 (=> (not res!153351) (not e!184925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14766 (_ BitVec 32)) Bool)

(assert (=> b!292256 (= res!153351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292257 () Bool)

(assert (=> b!292257 (= e!184926 e!184925)))

(declare-fun res!153348 () Bool)

(assert (=> b!292257 (=> (not res!153348) (not e!184925))))

(assert (=> b!292257 (= res!153348 (or lt!144753 (= lt!144754 (MissingVacant!2165 i!1256))))))

(assert (=> b!292257 (= lt!144753 (= lt!144754 (MissingZero!2165 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14766 (_ BitVec 32)) SeekEntryResult!2165)

(assert (=> b!292257 (= lt!144754 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292258 () Bool)

(assert (=> b!292258 (= e!184927 (not true))))

(declare-datatypes ((Unit!9161 0))(
  ( (Unit!9162) )
))
(declare-fun lt!144756 () Unit!9161)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14766 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9161)

(assert (=> b!292258 (= lt!144756 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144755 (index!10832 lt!144752) (x!28988 lt!144752) mask!3809))))

(assert (=> b!292258 (= (index!10832 lt!144752) i!1256)))

(declare-fun b!292259 () Bool)

(declare-fun res!153347 () Bool)

(assert (=> b!292259 (=> (not res!153347) (not e!184926))))

(assert (=> b!292259 (= res!153347 (and (= (size!7357 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7357 a!3312))))))

(declare-fun b!292260 () Bool)

(declare-fun res!153352 () Bool)

(assert (=> b!292260 (=> (not res!153352) (not e!184926))))

(declare-fun arrayContainsKey!0 (array!14766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292260 (= res!153352 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28598 res!153350) b!292259))

(assert (= (and b!292259 res!153347) b!292254))

(assert (= (and b!292254 res!153354) b!292260))

(assert (= (and b!292260 res!153352) b!292257))

(assert (= (and b!292257 res!153348) b!292256))

(assert (= (and b!292256 res!153351) b!292255))

(assert (= (and b!292255 res!153353) b!292253))

(assert (= (and b!292253 res!153349) b!292258))

(declare-fun m!306019 () Bool)

(assert (=> start!28598 m!306019))

(declare-fun m!306021 () Bool)

(assert (=> start!28598 m!306021))

(declare-fun m!306023 () Bool)

(assert (=> b!292257 m!306023))

(declare-fun m!306025 () Bool)

(assert (=> b!292260 m!306025))

(declare-fun m!306027 () Bool)

(assert (=> b!292258 m!306027))

(declare-fun m!306029 () Bool)

(assert (=> b!292256 m!306029))

(declare-fun m!306031 () Bool)

(assert (=> b!292255 m!306031))

(declare-fun m!306033 () Bool)

(assert (=> b!292255 m!306033))

(declare-fun m!306035 () Bool)

(assert (=> b!292255 m!306035))

(declare-fun m!306037 () Bool)

(assert (=> b!292255 m!306037))

(declare-fun m!306039 () Bool)

(assert (=> b!292254 m!306039))

(declare-fun m!306041 () Bool)

(assert (=> b!292253 m!306041))

(push 1)

