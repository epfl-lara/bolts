; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28428 () Bool)

(assert start!28428)

(declare-fun b!290933 () Bool)

(declare-fun e!184104 () Bool)

(declare-fun e!184108 () Bool)

(assert (=> b!290933 (= e!184104 e!184108)))

(declare-fun res!152315 () Bool)

(assert (=> b!290933 (=> (not res!152315) (not e!184108))))

(declare-datatypes ((SeekEntryResult!2128 0))(
  ( (MissingZero!2128 (index!10682 (_ BitVec 32))) (Found!2128 (index!10683 (_ BitVec 32))) (Intermediate!2128 (undefined!2940 Bool) (index!10684 (_ BitVec 32)) (x!28843 (_ BitVec 32))) (Undefined!2128) (MissingVacant!2128 (index!10685 (_ BitVec 32))) )
))
(declare-fun lt!143869 () SeekEntryResult!2128)

(declare-fun lt!143873 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!290933 (= res!152315 (or lt!143873 (= lt!143869 (MissingVacant!2128 i!1256))))))

(assert (=> b!290933 (= lt!143873 (= lt!143869 (MissingZero!2128 i!1256)))))

(declare-datatypes ((array!14686 0))(
  ( (array!14687 (arr!6968 (Array (_ BitVec 32) (_ BitVec 64))) (size!7320 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14686)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14686 (_ BitVec 32)) SeekEntryResult!2128)

(assert (=> b!290933 (= lt!143869 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!152312 () Bool)

(assert (=> start!28428 (=> (not res!152312) (not e!184104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28428 (= res!152312 (validMask!0 mask!3809))))

(assert (=> start!28428 e!184104))

(assert (=> start!28428 true))

(declare-fun array_inv!4922 (array!14686) Bool)

(assert (=> start!28428 (array_inv!4922 a!3312)))

(declare-fun b!290934 () Bool)

(declare-fun res!152316 () Bool)

(assert (=> b!290934 (=> (not res!152316) (not e!184104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290934 (= res!152316 (validKeyInArray!0 k0!2524))))

(declare-fun b!290935 () Bool)

(declare-fun e!184105 () Bool)

(assert (=> b!290935 (= e!184105 (not true))))

(declare-fun lt!143871 () SeekEntryResult!2128)

(assert (=> b!290935 (= (index!10684 lt!143871) i!1256)))

(declare-fun b!290936 () Bool)

(declare-fun e!184106 () Bool)

(assert (=> b!290936 (= e!184108 e!184106)))

(declare-fun res!152311 () Bool)

(assert (=> b!290936 (=> (not res!152311) (not e!184106))))

(assert (=> b!290936 (= res!152311 (and (not lt!143873) (= lt!143869 (MissingVacant!2128 i!1256))))))

(declare-fun lt!143870 () SeekEntryResult!2128)

(declare-fun lt!143872 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14686 (_ BitVec 32)) SeekEntryResult!2128)

(assert (=> b!290936 (= lt!143870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143872 k0!2524 (array!14687 (store (arr!6968 a!3312) i!1256 k0!2524) (size!7320 a!3312)) mask!3809))))

(assert (=> b!290936 (= lt!143871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143872 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290936 (= lt!143872 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!290937 () Bool)

(assert (=> b!290937 (= e!184106 e!184105)))

(declare-fun res!152309 () Bool)

(assert (=> b!290937 (=> (not res!152309) (not e!184105))))

(declare-fun lt!143868 () Bool)

(assert (=> b!290937 (= res!152309 (and (or lt!143868 (not (undefined!2940 lt!143871))) (not lt!143868) (= (select (arr!6968 a!3312) (index!10684 lt!143871)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!290937 (= lt!143868 (not ((_ is Intermediate!2128) lt!143871)))))

(declare-fun b!290938 () Bool)

(declare-fun res!152310 () Bool)

(assert (=> b!290938 (=> (not res!152310) (not e!184104))))

(assert (=> b!290938 (= res!152310 (and (= (size!7320 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7320 a!3312))))))

(declare-fun b!290939 () Bool)

(declare-fun res!152313 () Bool)

(assert (=> b!290939 (=> (not res!152313) (not e!184104))))

(declare-fun arrayContainsKey!0 (array!14686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290939 (= res!152313 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290940 () Bool)

(declare-fun res!152314 () Bool)

(assert (=> b!290940 (=> (not res!152314) (not e!184108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14686 (_ BitVec 32)) Bool)

(assert (=> b!290940 (= res!152314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28428 res!152312) b!290938))

(assert (= (and b!290938 res!152310) b!290934))

(assert (= (and b!290934 res!152316) b!290939))

(assert (= (and b!290939 res!152313) b!290933))

(assert (= (and b!290933 res!152315) b!290940))

(assert (= (and b!290940 res!152314) b!290936))

(assert (= (and b!290936 res!152311) b!290937))

(assert (= (and b!290937 res!152309) b!290935))

(declare-fun m!304949 () Bool)

(assert (=> b!290940 m!304949))

(declare-fun m!304951 () Bool)

(assert (=> b!290939 m!304951))

(declare-fun m!304953 () Bool)

(assert (=> start!28428 m!304953))

(declare-fun m!304955 () Bool)

(assert (=> start!28428 m!304955))

(declare-fun m!304957 () Bool)

(assert (=> b!290933 m!304957))

(declare-fun m!304959 () Bool)

(assert (=> b!290937 m!304959))

(declare-fun m!304961 () Bool)

(assert (=> b!290936 m!304961))

(declare-fun m!304963 () Bool)

(assert (=> b!290936 m!304963))

(declare-fun m!304965 () Bool)

(assert (=> b!290936 m!304965))

(declare-fun m!304967 () Bool)

(assert (=> b!290936 m!304967))

(declare-fun m!304969 () Bool)

(assert (=> b!290934 m!304969))

(check-sat (not b!290934) (not b!290933) (not b!290939) (not start!28428) (not b!290940) (not b!290936))
(check-sat)
