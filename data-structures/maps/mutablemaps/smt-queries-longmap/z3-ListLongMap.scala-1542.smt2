; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29186 () Bool)

(assert start!29186)

(declare-fun b!296014 () Bool)

(declare-fun e!187107 () Bool)

(assert (=> b!296014 (= e!187107 (not true))))

(declare-datatypes ((array!14986 0))(
  ( (array!14987 (arr!7103 (Array (_ BitVec 32) (_ BitVec 64))) (size!7455 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14986)

(declare-datatypes ((SeekEntryResult!2263 0))(
  ( (MissingZero!2263 (index!11222 (_ BitVec 32))) (Found!2263 (index!11223 (_ BitVec 32))) (Intermediate!2263 (undefined!3075 Bool) (index!11224 (_ BitVec 32)) (x!29400 (_ BitVec 32))) (Undefined!2263) (MissingVacant!2263 (index!11225 (_ BitVec 32))) )
))
(declare-fun lt!146993 () SeekEntryResult!2263)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296014 (and (= (select (arr!7103 a!3312) (index!11224 lt!146993)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11224 lt!146993) i!1256))))

(declare-fun b!296015 () Bool)

(declare-fun res!155940 () Bool)

(declare-fun e!187106 () Bool)

(assert (=> b!296015 (=> (not res!155940) (not e!187106))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296015 (= res!155940 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296016 () Bool)

(declare-fun res!155938 () Bool)

(assert (=> b!296016 (=> (not res!155938) (not e!187106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296016 (= res!155938 (validKeyInArray!0 k0!2524))))

(declare-fun b!296017 () Bool)

(declare-fun e!187105 () Bool)

(assert (=> b!296017 (= e!187105 e!187107)))

(declare-fun res!155937 () Bool)

(assert (=> b!296017 (=> (not res!155937) (not e!187107))))

(declare-fun lt!146990 () Bool)

(assert (=> b!296017 (= res!155937 (and (or lt!146990 (not (undefined!3075 lt!146993))) (or lt!146990 (not (= (select (arr!7103 a!3312) (index!11224 lt!146993)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146990 (not (= (select (arr!7103 a!3312) (index!11224 lt!146993)) k0!2524))) (not lt!146990)))))

(get-info :version)

(assert (=> b!296017 (= lt!146990 (not ((_ is Intermediate!2263) lt!146993)))))

(declare-fun b!296018 () Bool)

(declare-fun res!155943 () Bool)

(declare-fun e!187109 () Bool)

(assert (=> b!296018 (=> (not res!155943) (not e!187109))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14986 (_ BitVec 32)) Bool)

(assert (=> b!296018 (= res!155943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296019 () Bool)

(declare-fun res!155941 () Bool)

(assert (=> b!296019 (=> (not res!155941) (not e!187106))))

(assert (=> b!296019 (= res!155941 (and (= (size!7455 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7455 a!3312))))))

(declare-fun b!296020 () Bool)

(assert (=> b!296020 (= e!187109 e!187105)))

(declare-fun res!155942 () Bool)

(assert (=> b!296020 (=> (not res!155942) (not e!187105))))

(declare-fun lt!146989 () Bool)

(assert (=> b!296020 (= res!155942 lt!146989)))

(declare-fun lt!146988 () SeekEntryResult!2263)

(declare-fun lt!146992 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14986 (_ BitVec 32)) SeekEntryResult!2263)

(assert (=> b!296020 (= lt!146988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146992 k0!2524 (array!14987 (store (arr!7103 a!3312) i!1256 k0!2524) (size!7455 a!3312)) mask!3809))))

(assert (=> b!296020 (= lt!146993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146992 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296020 (= lt!146992 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296021 () Bool)

(assert (=> b!296021 (= e!187106 e!187109)))

(declare-fun res!155936 () Bool)

(assert (=> b!296021 (=> (not res!155936) (not e!187109))))

(declare-fun lt!146991 () SeekEntryResult!2263)

(assert (=> b!296021 (= res!155936 (or lt!146989 (= lt!146991 (MissingVacant!2263 i!1256))))))

(assert (=> b!296021 (= lt!146989 (= lt!146991 (MissingZero!2263 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14986 (_ BitVec 32)) SeekEntryResult!2263)

(assert (=> b!296021 (= lt!146991 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!155939 () Bool)

(assert (=> start!29186 (=> (not res!155939) (not e!187106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29186 (= res!155939 (validMask!0 mask!3809))))

(assert (=> start!29186 e!187106))

(assert (=> start!29186 true))

(declare-fun array_inv!5057 (array!14986) Bool)

(assert (=> start!29186 (array_inv!5057 a!3312)))

(assert (= (and start!29186 res!155939) b!296019))

(assert (= (and b!296019 res!155941) b!296016))

(assert (= (and b!296016 res!155938) b!296015))

(assert (= (and b!296015 res!155940) b!296021))

(assert (= (and b!296021 res!155936) b!296018))

(assert (= (and b!296018 res!155943) b!296020))

(assert (= (and b!296020 res!155942) b!296017))

(assert (= (and b!296017 res!155937) b!296014))

(declare-fun m!309099 () Bool)

(assert (=> b!296014 m!309099))

(declare-fun m!309101 () Bool)

(assert (=> b!296016 m!309101))

(declare-fun m!309103 () Bool)

(assert (=> b!296015 m!309103))

(declare-fun m!309105 () Bool)

(assert (=> b!296018 m!309105))

(assert (=> b!296017 m!309099))

(declare-fun m!309107 () Bool)

(assert (=> b!296021 m!309107))

(declare-fun m!309109 () Bool)

(assert (=> b!296020 m!309109))

(declare-fun m!309111 () Bool)

(assert (=> b!296020 m!309111))

(declare-fun m!309113 () Bool)

(assert (=> b!296020 m!309113))

(declare-fun m!309115 () Bool)

(assert (=> b!296020 m!309115))

(declare-fun m!309117 () Bool)

(assert (=> start!29186 m!309117))

(declare-fun m!309119 () Bool)

(assert (=> start!29186 m!309119))

(check-sat (not b!296021) (not start!29186) (not b!296018) (not b!296016) (not b!296020) (not b!296015))
(check-sat)
