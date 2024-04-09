; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29184 () Bool)

(assert start!29184)

(declare-fun res!155912 () Bool)

(declare-fun e!187091 () Bool)

(assert (=> start!29184 (=> (not res!155912) (not e!187091))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29184 (= res!155912 (validMask!0 mask!3809))))

(assert (=> start!29184 e!187091))

(assert (=> start!29184 true))

(declare-datatypes ((array!14984 0))(
  ( (array!14985 (arr!7102 (Array (_ BitVec 32) (_ BitVec 64))) (size!7454 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14984)

(declare-fun array_inv!5056 (array!14984) Bool)

(assert (=> start!29184 (array_inv!5056 a!3312)))

(declare-fun b!295990 () Bool)

(declare-fun res!155919 () Bool)

(assert (=> b!295990 (=> (not res!155919) (not e!187091))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295990 (= res!155919 (validKeyInArray!0 k!2524))))

(declare-fun b!295991 () Bool)

(declare-fun res!155916 () Bool)

(assert (=> b!295991 (=> (not res!155916) (not e!187091))))

(declare-fun arrayContainsKey!0 (array!14984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295991 (= res!155916 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295992 () Bool)

(declare-fun res!155913 () Bool)

(declare-fun e!187093 () Bool)

(assert (=> b!295992 (=> (not res!155913) (not e!187093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14984 (_ BitVec 32)) Bool)

(assert (=> b!295992 (= res!155913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295993 () Bool)

(declare-fun e!187090 () Bool)

(assert (=> b!295993 (= e!187090 (not true))))

(declare-datatypes ((SeekEntryResult!2262 0))(
  ( (MissingZero!2262 (index!11218 (_ BitVec 32))) (Found!2262 (index!11219 (_ BitVec 32))) (Intermediate!2262 (undefined!3074 Bool) (index!11220 (_ BitVec 32)) (x!29399 (_ BitVec 32))) (Undefined!2262) (MissingVacant!2262 (index!11221 (_ BitVec 32))) )
))
(declare-fun lt!146970 () SeekEntryResult!2262)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!295993 (and (= (select (arr!7102 a!3312) (index!11220 lt!146970)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11220 lt!146970) i!1256))))

(declare-fun b!295994 () Bool)

(assert (=> b!295994 (= e!187091 e!187093)))

(declare-fun res!155917 () Bool)

(assert (=> b!295994 (=> (not res!155917) (not e!187093))))

(declare-fun lt!146971 () SeekEntryResult!2262)

(declare-fun lt!146972 () Bool)

(assert (=> b!295994 (= res!155917 (or lt!146972 (= lt!146971 (MissingVacant!2262 i!1256))))))

(assert (=> b!295994 (= lt!146972 (= lt!146971 (MissingZero!2262 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14984 (_ BitVec 32)) SeekEntryResult!2262)

(assert (=> b!295994 (= lt!146971 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295995 () Bool)

(declare-fun res!155914 () Bool)

(assert (=> b!295995 (=> (not res!155914) (not e!187091))))

(assert (=> b!295995 (= res!155914 (and (= (size!7454 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7454 a!3312))))))

(declare-fun b!295996 () Bool)

(declare-fun e!187092 () Bool)

(assert (=> b!295996 (= e!187092 e!187090)))

(declare-fun res!155915 () Bool)

(assert (=> b!295996 (=> (not res!155915) (not e!187090))))

(declare-fun lt!146973 () Bool)

(assert (=> b!295996 (= res!155915 (and (or lt!146973 (not (undefined!3074 lt!146970))) (or lt!146973 (not (= (select (arr!7102 a!3312) (index!11220 lt!146970)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146973 (not (= (select (arr!7102 a!3312) (index!11220 lt!146970)) k!2524))) (not lt!146973)))))

(assert (=> b!295996 (= lt!146973 (not (is-Intermediate!2262 lt!146970)))))

(declare-fun b!295997 () Bool)

(assert (=> b!295997 (= e!187093 e!187092)))

(declare-fun res!155918 () Bool)

(assert (=> b!295997 (=> (not res!155918) (not e!187092))))

(assert (=> b!295997 (= res!155918 lt!146972)))

(declare-fun lt!146974 () SeekEntryResult!2262)

(declare-fun lt!146975 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14984 (_ BitVec 32)) SeekEntryResult!2262)

(assert (=> b!295997 (= lt!146974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146975 k!2524 (array!14985 (store (arr!7102 a!3312) i!1256 k!2524) (size!7454 a!3312)) mask!3809))))

(assert (=> b!295997 (= lt!146970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146975 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295997 (= lt!146975 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29184 res!155912) b!295995))

(assert (= (and b!295995 res!155914) b!295990))

(assert (= (and b!295990 res!155919) b!295991))

(assert (= (and b!295991 res!155916) b!295994))

(assert (= (and b!295994 res!155917) b!295992))

(assert (= (and b!295992 res!155913) b!295997))

(assert (= (and b!295997 res!155918) b!295996))

(assert (= (and b!295996 res!155915) b!295993))

(declare-fun m!309077 () Bool)

(assert (=> b!295990 m!309077))

(declare-fun m!309079 () Bool)

(assert (=> b!295994 m!309079))

(declare-fun m!309081 () Bool)

(assert (=> b!295997 m!309081))

(declare-fun m!309083 () Bool)

(assert (=> b!295997 m!309083))

(declare-fun m!309085 () Bool)

(assert (=> b!295997 m!309085))

(declare-fun m!309087 () Bool)

(assert (=> b!295997 m!309087))

(declare-fun m!309089 () Bool)

(assert (=> b!295996 m!309089))

(declare-fun m!309091 () Bool)

(assert (=> b!295992 m!309091))

(assert (=> b!295993 m!309089))

(declare-fun m!309093 () Bool)

(assert (=> start!29184 m!309093))

(declare-fun m!309095 () Bool)

(assert (=> start!29184 m!309095))

(declare-fun m!309097 () Bool)

(assert (=> b!295991 m!309097))

(push 1)

