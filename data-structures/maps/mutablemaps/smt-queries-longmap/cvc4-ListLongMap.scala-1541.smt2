; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29182 () Bool)

(assert start!29182)

(declare-fun b!295966 () Bool)

(declare-fun res!155888 () Bool)

(declare-fun e!187076 () Bool)

(assert (=> b!295966 (=> (not res!155888) (not e!187076))))

(declare-datatypes ((array!14982 0))(
  ( (array!14983 (arr!7101 (Array (_ BitVec 32) (_ BitVec 64))) (size!7453 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14982)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295966 (= res!155888 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!155893 () Bool)

(assert (=> start!29182 (=> (not res!155893) (not e!187076))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29182 (= res!155893 (validMask!0 mask!3809))))

(assert (=> start!29182 e!187076))

(assert (=> start!29182 true))

(declare-fun array_inv!5055 (array!14982) Bool)

(assert (=> start!29182 (array_inv!5055 a!3312)))

(declare-fun b!295967 () Bool)

(declare-fun e!187078 () Bool)

(declare-fun e!187079 () Bool)

(assert (=> b!295967 (= e!187078 e!187079)))

(declare-fun res!155892 () Bool)

(assert (=> b!295967 (=> (not res!155892) (not e!187079))))

(declare-fun lt!146955 () Bool)

(assert (=> b!295967 (= res!155892 lt!146955)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2261 0))(
  ( (MissingZero!2261 (index!11214 (_ BitVec 32))) (Found!2261 (index!11215 (_ BitVec 32))) (Intermediate!2261 (undefined!3073 Bool) (index!11216 (_ BitVec 32)) (x!29390 (_ BitVec 32))) (Undefined!2261) (MissingVacant!2261 (index!11217 (_ BitVec 32))) )
))
(declare-fun lt!146956 () SeekEntryResult!2261)

(declare-fun lt!146952 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14982 (_ BitVec 32)) SeekEntryResult!2261)

(assert (=> b!295967 (= lt!146956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146952 k!2524 (array!14983 (store (arr!7101 a!3312) i!1256 k!2524) (size!7453 a!3312)) mask!3809))))

(declare-fun lt!146957 () SeekEntryResult!2261)

(assert (=> b!295967 (= lt!146957 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146952 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295967 (= lt!146952 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295968 () Bool)

(declare-fun e!187075 () Bool)

(assert (=> b!295968 (= e!187079 e!187075)))

(declare-fun res!155891 () Bool)

(assert (=> b!295968 (=> (not res!155891) (not e!187075))))

(declare-fun lt!146953 () Bool)

(assert (=> b!295968 (= res!155891 (and (or lt!146953 (not (undefined!3073 lt!146957))) (or lt!146953 (not (= (select (arr!7101 a!3312) (index!11216 lt!146957)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146953 (not (= (select (arr!7101 a!3312) (index!11216 lt!146957)) k!2524))) (not lt!146953)))))

(assert (=> b!295968 (= lt!146953 (not (is-Intermediate!2261 lt!146957)))))

(declare-fun b!295969 () Bool)

(assert (=> b!295969 (= e!187076 e!187078)))

(declare-fun res!155894 () Bool)

(assert (=> b!295969 (=> (not res!155894) (not e!187078))))

(declare-fun lt!146954 () SeekEntryResult!2261)

(assert (=> b!295969 (= res!155894 (or lt!146955 (= lt!146954 (MissingVacant!2261 i!1256))))))

(assert (=> b!295969 (= lt!146955 (= lt!146954 (MissingZero!2261 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14982 (_ BitVec 32)) SeekEntryResult!2261)

(assert (=> b!295969 (= lt!146954 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295970 () Bool)

(declare-fun res!155889 () Bool)

(assert (=> b!295970 (=> (not res!155889) (not e!187076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295970 (= res!155889 (validKeyInArray!0 k!2524))))

(declare-fun b!295971 () Bool)

(declare-fun res!155890 () Bool)

(assert (=> b!295971 (=> (not res!155890) (not e!187078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14982 (_ BitVec 32)) Bool)

(assert (=> b!295971 (= res!155890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295972 () Bool)

(declare-fun res!155895 () Bool)

(assert (=> b!295972 (=> (not res!155895) (not e!187076))))

(assert (=> b!295972 (= res!155895 (and (= (size!7453 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7453 a!3312))))))

(declare-fun b!295973 () Bool)

(assert (=> b!295973 (= e!187075 (not (= lt!146957 (Intermediate!2261 false (index!11216 lt!146957) (x!29390 lt!146957)))))))

(assert (=> b!295973 (and (= (select (arr!7101 a!3312) (index!11216 lt!146957)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11216 lt!146957) i!1256))))

(assert (= (and start!29182 res!155893) b!295972))

(assert (= (and b!295972 res!155895) b!295970))

(assert (= (and b!295970 res!155889) b!295966))

(assert (= (and b!295966 res!155888) b!295969))

(assert (= (and b!295969 res!155894) b!295971))

(assert (= (and b!295971 res!155890) b!295967))

(assert (= (and b!295967 res!155892) b!295968))

(assert (= (and b!295968 res!155891) b!295973))

(declare-fun m!309055 () Bool)

(assert (=> b!295970 m!309055))

(declare-fun m!309057 () Bool)

(assert (=> b!295973 m!309057))

(declare-fun m!309059 () Bool)

(assert (=> b!295969 m!309059))

(assert (=> b!295968 m!309057))

(declare-fun m!309061 () Bool)

(assert (=> start!29182 m!309061))

(declare-fun m!309063 () Bool)

(assert (=> start!29182 m!309063))

(declare-fun m!309065 () Bool)

(assert (=> b!295971 m!309065))

(declare-fun m!309067 () Bool)

(assert (=> b!295967 m!309067))

(declare-fun m!309069 () Bool)

(assert (=> b!295967 m!309069))

(declare-fun m!309071 () Bool)

(assert (=> b!295967 m!309071))

(declare-fun m!309073 () Bool)

(assert (=> b!295967 m!309073))

(declare-fun m!309075 () Bool)

(assert (=> b!295966 m!309075))

(push 1)

