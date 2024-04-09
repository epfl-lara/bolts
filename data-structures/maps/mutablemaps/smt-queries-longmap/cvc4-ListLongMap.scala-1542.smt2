; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29188 () Bool)

(assert start!29188)

(declare-fun b!296038 () Bool)

(declare-fun e!187122 () Bool)

(declare-fun e!187120 () Bool)

(assert (=> b!296038 (= e!187122 e!187120)))

(declare-fun res!155966 () Bool)

(assert (=> b!296038 (=> (not res!155966) (not e!187120))))

(declare-fun lt!147009 () Bool)

(declare-datatypes ((SeekEntryResult!2264 0))(
  ( (MissingZero!2264 (index!11226 (_ BitVec 32))) (Found!2264 (index!11227 (_ BitVec 32))) (Intermediate!2264 (undefined!3076 Bool) (index!11228 (_ BitVec 32)) (x!29401 (_ BitVec 32))) (Undefined!2264) (MissingVacant!2264 (index!11229 (_ BitVec 32))) )
))
(declare-fun lt!147010 () SeekEntryResult!2264)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296038 (= res!155966 (or lt!147009 (= lt!147010 (MissingVacant!2264 i!1256))))))

(assert (=> b!296038 (= lt!147009 (= lt!147010 (MissingZero!2264 i!1256)))))

(declare-datatypes ((array!14988 0))(
  ( (array!14989 (arr!7104 (Array (_ BitVec 32) (_ BitVec 64))) (size!7456 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14988)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14988 (_ BitVec 32)) SeekEntryResult!2264)

(assert (=> b!296038 (= lt!147010 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296039 () Bool)

(declare-fun res!155962 () Bool)

(assert (=> b!296039 (=> (not res!155962) (not e!187122))))

(assert (=> b!296039 (= res!155962 (and (= (size!7456 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7456 a!3312))))))

(declare-fun b!296040 () Bool)

(declare-fun res!155963 () Bool)

(assert (=> b!296040 (=> (not res!155963) (not e!187122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296040 (= res!155963 (validKeyInArray!0 k!2524))))

(declare-fun b!296041 () Bool)

(declare-fun e!187123 () Bool)

(assert (=> b!296041 (= e!187123 (not true))))

(declare-fun lt!147006 () SeekEntryResult!2264)

(assert (=> b!296041 (and (= (select (arr!7104 a!3312) (index!11228 lt!147006)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11228 lt!147006) i!1256))))

(declare-fun b!296043 () Bool)

(declare-fun e!187124 () Bool)

(assert (=> b!296043 (= e!187120 e!187124)))

(declare-fun res!155967 () Bool)

(assert (=> b!296043 (=> (not res!155967) (not e!187124))))

(assert (=> b!296043 (= res!155967 lt!147009)))

(declare-fun lt!147007 () (_ BitVec 32))

(declare-fun lt!147011 () SeekEntryResult!2264)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14988 (_ BitVec 32)) SeekEntryResult!2264)

(assert (=> b!296043 (= lt!147011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147007 k!2524 (array!14989 (store (arr!7104 a!3312) i!1256 k!2524) (size!7456 a!3312)) mask!3809))))

(assert (=> b!296043 (= lt!147006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147007 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296043 (= lt!147007 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296044 () Bool)

(assert (=> b!296044 (= e!187124 e!187123)))

(declare-fun res!155960 () Bool)

(assert (=> b!296044 (=> (not res!155960) (not e!187123))))

(declare-fun lt!147008 () Bool)

(assert (=> b!296044 (= res!155960 (and (or lt!147008 (not (undefined!3076 lt!147006))) (or lt!147008 (not (= (select (arr!7104 a!3312) (index!11228 lt!147006)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147008 (not (= (select (arr!7104 a!3312) (index!11228 lt!147006)) k!2524))) (not lt!147008)))))

(assert (=> b!296044 (= lt!147008 (not (is-Intermediate!2264 lt!147006)))))

(declare-fun b!296045 () Bool)

(declare-fun res!155964 () Bool)

(assert (=> b!296045 (=> (not res!155964) (not e!187122))))

(declare-fun arrayContainsKey!0 (array!14988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296045 (= res!155964 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155965 () Bool)

(assert (=> start!29188 (=> (not res!155965) (not e!187122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29188 (= res!155965 (validMask!0 mask!3809))))

(assert (=> start!29188 e!187122))

(assert (=> start!29188 true))

(declare-fun array_inv!5058 (array!14988) Bool)

(assert (=> start!29188 (array_inv!5058 a!3312)))

(declare-fun b!296042 () Bool)

(declare-fun res!155961 () Bool)

(assert (=> b!296042 (=> (not res!155961) (not e!187120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14988 (_ BitVec 32)) Bool)

(assert (=> b!296042 (= res!155961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29188 res!155965) b!296039))

(assert (= (and b!296039 res!155962) b!296040))

(assert (= (and b!296040 res!155963) b!296045))

(assert (= (and b!296045 res!155964) b!296038))

(assert (= (and b!296038 res!155966) b!296042))

(assert (= (and b!296042 res!155961) b!296043))

(assert (= (and b!296043 res!155967) b!296044))

(assert (= (and b!296044 res!155960) b!296041))

(declare-fun m!309121 () Bool)

(assert (=> b!296044 m!309121))

(declare-fun m!309123 () Bool)

(assert (=> b!296040 m!309123))

(declare-fun m!309125 () Bool)

(assert (=> b!296042 m!309125))

(declare-fun m!309127 () Bool)

(assert (=> start!29188 m!309127))

(declare-fun m!309129 () Bool)

(assert (=> start!29188 m!309129))

(assert (=> b!296041 m!309121))

(declare-fun m!309131 () Bool)

(assert (=> b!296045 m!309131))

(declare-fun m!309133 () Bool)

(assert (=> b!296038 m!309133))

(declare-fun m!309135 () Bool)

(assert (=> b!296043 m!309135))

(declare-fun m!309137 () Bool)

(assert (=> b!296043 m!309137))

(declare-fun m!309139 () Bool)

(assert (=> b!296043 m!309139))

(declare-fun m!309141 () Bool)

(assert (=> b!296043 m!309141))

(push 1)

