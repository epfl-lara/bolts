; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29398 () Bool)

(assert start!29398)

(declare-fun b!297511 () Bool)

(declare-fun res!156944 () Bool)

(declare-fun e!188014 () Bool)

(assert (=> b!297511 (=> (not res!156944) (not e!188014))))

(declare-datatypes ((array!15063 0))(
  ( (array!15064 (arr!7137 (Array (_ BitVec 32) (_ BitVec 64))) (size!7489 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15063)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15063 (_ BitVec 32)) Bool)

(assert (=> b!297511 (= res!156944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156945 () Bool)

(declare-fun e!188012 () Bool)

(assert (=> start!29398 (=> (not res!156945) (not e!188012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29398 (= res!156945 (validMask!0 mask!3809))))

(assert (=> start!29398 e!188012))

(assert (=> start!29398 true))

(declare-fun array_inv!5091 (array!15063) Bool)

(assert (=> start!29398 (array_inv!5091 a!3312)))

(declare-fun b!297512 () Bool)

(assert (=> b!297512 false))

(declare-datatypes ((Unit!9274 0))(
  ( (Unit!9275) )
))
(declare-fun e!188013 () Unit!9274)

(declare-fun Unit!9276 () Unit!9274)

(assert (=> b!297512 (= e!188013 Unit!9276)))

(declare-fun b!297513 () Bool)

(declare-fun e!188010 () Bool)

(assert (=> b!297513 (= e!188010 false)))

(declare-fun lt!147924 () Unit!9274)

(declare-fun e!188015 () Unit!9274)

(assert (=> b!297513 (= lt!147924 e!188015)))

(declare-fun c!47868 () Bool)

(declare-datatypes ((SeekEntryResult!2297 0))(
  ( (MissingZero!2297 (index!11358 (_ BitVec 32))) (Found!2297 (index!11359 (_ BitVec 32))) (Intermediate!2297 (undefined!3109 Bool) (index!11360 (_ BitVec 32)) (x!29540 (_ BitVec 32))) (Undefined!2297) (MissingVacant!2297 (index!11361 (_ BitVec 32))) )
))
(declare-fun lt!147927 () SeekEntryResult!2297)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!297513 (= c!47868 (or (and (is-Intermediate!2297 lt!147927) (undefined!3109 lt!147927)) (and (is-Intermediate!2297 lt!147927) (= (select (arr!7137 a!3312) (index!11360 lt!147927)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2297 lt!147927) (= (select (arr!7137 a!3312) (index!11360 lt!147927)) k!2524))))))

(declare-fun b!297514 () Bool)

(declare-fun res!156943 () Bool)

(assert (=> b!297514 (=> (not res!156943) (not e!188012))))

(declare-fun arrayContainsKey!0 (array!15063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297514 (= res!156943 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297515 () Bool)

(assert (=> b!297515 (= e!188015 e!188013)))

(declare-fun c!47867 () Bool)

(assert (=> b!297515 (= c!47867 (is-Intermediate!2297 lt!147927))))

(declare-fun b!297516 () Bool)

(assert (=> b!297516 (= e!188012 e!188014)))

(declare-fun res!156948 () Bool)

(assert (=> b!297516 (=> (not res!156948) (not e!188014))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147923 () SeekEntryResult!2297)

(declare-fun lt!147929 () Bool)

(assert (=> b!297516 (= res!156948 (or lt!147929 (= lt!147923 (MissingVacant!2297 i!1256))))))

(assert (=> b!297516 (= lt!147929 (= lt!147923 (MissingZero!2297 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15063 (_ BitVec 32)) SeekEntryResult!2297)

(assert (=> b!297516 (= lt!147923 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297517 () Bool)

(declare-fun res!156947 () Bool)

(assert (=> b!297517 (=> (not res!156947) (not e!188012))))

(assert (=> b!297517 (= res!156947 (and (= (size!7489 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7489 a!3312))))))

(declare-fun lt!147928 () SeekEntryResult!2297)

(declare-fun b!297518 () Bool)

(assert (=> b!297518 (and (= lt!147928 lt!147927) (= (select (store (arr!7137 a!3312) i!1256 k!2524) (index!11360 lt!147927)) k!2524))))

(declare-fun lt!147926 () Unit!9274)

(declare-fun lt!147925 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15063 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9274)

(assert (=> b!297518 (= lt!147926 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147925 (index!11360 lt!147927) (x!29540 lt!147927) mask!3809))))

(assert (=> b!297518 (and (= (select (arr!7137 a!3312) (index!11360 lt!147927)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11360 lt!147927) i!1256))))

(declare-fun Unit!9277 () Unit!9274)

(assert (=> b!297518 (= e!188013 Unit!9277)))

(declare-fun b!297519 () Bool)

(declare-fun Unit!9278 () Unit!9274)

(assert (=> b!297519 (= e!188015 Unit!9278)))

(assert (=> b!297519 false))

(declare-fun b!297520 () Bool)

(assert (=> b!297520 (= e!188014 e!188010)))

(declare-fun res!156946 () Bool)

(assert (=> b!297520 (=> (not res!156946) (not e!188010))))

(assert (=> b!297520 (= res!156946 lt!147929)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15063 (_ BitVec 32)) SeekEntryResult!2297)

(assert (=> b!297520 (= lt!147928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147925 k!2524 (array!15064 (store (arr!7137 a!3312) i!1256 k!2524) (size!7489 a!3312)) mask!3809))))

(assert (=> b!297520 (= lt!147927 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147925 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297520 (= lt!147925 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297521 () Bool)

(declare-fun res!156942 () Bool)

(assert (=> b!297521 (=> (not res!156942) (not e!188012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297521 (= res!156942 (validKeyInArray!0 k!2524))))

(assert (= (and start!29398 res!156945) b!297517))

(assert (= (and b!297517 res!156947) b!297521))

(assert (= (and b!297521 res!156942) b!297514))

(assert (= (and b!297514 res!156943) b!297516))

(assert (= (and b!297516 res!156948) b!297511))

(assert (= (and b!297511 res!156944) b!297520))

(assert (= (and b!297520 res!156946) b!297513))

(assert (= (and b!297513 c!47868) b!297519))

(assert (= (and b!297513 (not c!47868)) b!297515))

(assert (= (and b!297515 c!47867) b!297518))

(assert (= (and b!297515 (not c!47867)) b!297512))

(declare-fun m!310245 () Bool)

(assert (=> b!297516 m!310245))

(declare-fun m!310247 () Bool)

(assert (=> b!297520 m!310247))

(declare-fun m!310249 () Bool)

(assert (=> b!297520 m!310249))

(declare-fun m!310251 () Bool)

(assert (=> b!297520 m!310251))

(declare-fun m!310253 () Bool)

(assert (=> b!297520 m!310253))

(declare-fun m!310255 () Bool)

(assert (=> b!297513 m!310255))

(declare-fun m!310257 () Bool)

(assert (=> b!297521 m!310257))

(assert (=> b!297518 m!310247))

(declare-fun m!310259 () Bool)

(assert (=> b!297518 m!310259))

(declare-fun m!310261 () Bool)

(assert (=> b!297518 m!310261))

(assert (=> b!297518 m!310255))

(declare-fun m!310263 () Bool)

(assert (=> b!297514 m!310263))

(declare-fun m!310265 () Bool)

(assert (=> b!297511 m!310265))

(declare-fun m!310267 () Bool)

(assert (=> start!29398 m!310267))

(declare-fun m!310269 () Bool)

(assert (=> start!29398 m!310269))

(push 1)

