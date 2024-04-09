; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29402 () Bool)

(assert start!29402)

(declare-fun b!297582 () Bool)

(declare-fun e!188055 () Bool)

(declare-fun e!188056 () Bool)

(assert (=> b!297582 (= e!188055 e!188056)))

(declare-fun res!156993 () Bool)

(assert (=> b!297582 (=> (not res!156993) (not e!188056))))

(declare-datatypes ((SeekEntryResult!2299 0))(
  ( (MissingZero!2299 (index!11366 (_ BitVec 32))) (Found!2299 (index!11367 (_ BitVec 32))) (Intermediate!2299 (undefined!3111 Bool) (index!11368 (_ BitVec 32)) (x!29550 (_ BitVec 32))) (Undefined!2299) (MissingVacant!2299 (index!11369 (_ BitVec 32))) )
))
(declare-fun lt!147976 () SeekEntryResult!2299)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147975 () Bool)

(assert (=> b!297582 (= res!156993 (or lt!147975 (= lt!147976 (MissingVacant!2299 i!1256))))))

(assert (=> b!297582 (= lt!147975 (= lt!147976 (MissingZero!2299 i!1256)))))

(declare-datatypes ((array!15067 0))(
  ( (array!15068 (arr!7139 (Array (_ BitVec 32) (_ BitVec 64))) (size!7491 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15067)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15067 (_ BitVec 32)) SeekEntryResult!2299)

(assert (=> b!297582 (= lt!147976 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!297583 () Bool)

(declare-datatypes ((Unit!9284 0))(
  ( (Unit!9285) )
))
(declare-fun e!188057 () Unit!9284)

(declare-fun e!188052 () Unit!9284)

(assert (=> b!297583 (= e!188057 e!188052)))

(declare-fun c!47880 () Bool)

(declare-fun lt!147972 () SeekEntryResult!2299)

(get-info :version)

(assert (=> b!297583 (= c!47880 ((_ is Intermediate!2299) lt!147972))))

(declare-fun b!297584 () Bool)

(declare-fun res!156991 () Bool)

(assert (=> b!297584 (=> (not res!156991) (not e!188056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15067 (_ BitVec 32)) Bool)

(assert (=> b!297584 (= res!156991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!156996 () Bool)

(assert (=> start!29402 (=> (not res!156996) (not e!188055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29402 (= res!156996 (validMask!0 mask!3809))))

(assert (=> start!29402 e!188055))

(assert (=> start!29402 true))

(declare-fun array_inv!5093 (array!15067) Bool)

(assert (=> start!29402 (array_inv!5093 a!3312)))

(declare-fun b!297585 () Bool)

(declare-fun res!156994 () Bool)

(assert (=> b!297585 (=> (not res!156994) (not e!188055))))

(assert (=> b!297585 (= res!156994 (and (= (size!7491 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7491 a!3312))))))

(declare-fun b!297586 () Bool)

(declare-fun Unit!9286 () Unit!9284)

(assert (=> b!297586 (= e!188057 Unit!9286)))

(assert (=> b!297586 false))

(declare-fun lt!147970 () SeekEntryResult!2299)

(declare-fun b!297587 () Bool)

(assert (=> b!297587 (and (= lt!147970 lt!147972) (= (select (store (arr!7139 a!3312) i!1256 k0!2524) (index!11368 lt!147972)) k0!2524))))

(declare-fun lt!147973 () (_ BitVec 32))

(declare-fun lt!147971 () Unit!9284)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9284)

(assert (=> b!297587 (= lt!147971 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147973 (index!11368 lt!147972) (x!29550 lt!147972) mask!3809))))

(assert (=> b!297587 (and (= (select (arr!7139 a!3312) (index!11368 lt!147972)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11368 lt!147972) i!1256))))

(declare-fun Unit!9287 () Unit!9284)

(assert (=> b!297587 (= e!188052 Unit!9287)))

(declare-fun b!297588 () Bool)

(declare-fun res!156990 () Bool)

(assert (=> b!297588 (=> (not res!156990) (not e!188055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297588 (= res!156990 (validKeyInArray!0 k0!2524))))

(declare-fun b!297589 () Bool)

(declare-fun e!188051 () Bool)

(declare-fun e!188054 () Bool)

(assert (=> b!297589 (= e!188051 e!188054)))

(declare-fun res!156995 () Bool)

(assert (=> b!297589 (=> (not res!156995) (not e!188054))))

(assert (=> b!297589 (= res!156995 (= lt!147970 lt!147972))))

(declare-fun lt!147977 () Unit!9284)

(assert (=> b!297589 (= lt!147977 e!188057)))

(declare-fun c!47879 () Bool)

(assert (=> b!297589 (= c!47879 (or (and ((_ is Intermediate!2299) lt!147972) (undefined!3111 lt!147972)) (and ((_ is Intermediate!2299) lt!147972) (= (select (arr!7139 a!3312) (index!11368 lt!147972)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and ((_ is Intermediate!2299) lt!147972) (= (select (arr!7139 a!3312) (index!11368 lt!147972)) k0!2524))))))

(declare-fun b!297590 () Bool)

(assert (=> b!297590 (= e!188056 e!188051)))

(declare-fun res!156989 () Bool)

(assert (=> b!297590 (=> (not res!156989) (not e!188051))))

(assert (=> b!297590 (= res!156989 lt!147975)))

(declare-fun lt!147974 () array!15067)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15067 (_ BitVec 32)) SeekEntryResult!2299)

(assert (=> b!297590 (= lt!147970 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 lt!147974 mask!3809))))

(assert (=> b!297590 (= lt!147974 (array!15068 (store (arr!7139 a!3312) i!1256 k0!2524) (size!7491 a!3312)))))

(assert (=> b!297590 (= lt!147972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297590 (= lt!147973 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297591 () Bool)

(declare-fun res!156992 () Bool)

(assert (=> b!297591 (=> (not res!156992) (not e!188055))))

(declare-fun arrayContainsKey!0 (array!15067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297591 (= res!156992 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297592 () Bool)

(assert (=> b!297592 false))

(declare-fun Unit!9288 () Unit!9284)

(assert (=> b!297592 (= e!188052 Unit!9288)))

(declare-fun b!297593 () Bool)

(assert (=> b!297593 (= e!188054 (not (= (seekEntryOrOpen!0 k0!2524 lt!147974 mask!3809) (Found!2299 i!1256))))))

(assert (= (and start!29402 res!156996) b!297585))

(assert (= (and b!297585 res!156994) b!297588))

(assert (= (and b!297588 res!156990) b!297591))

(assert (= (and b!297591 res!156992) b!297582))

(assert (= (and b!297582 res!156993) b!297584))

(assert (= (and b!297584 res!156991) b!297590))

(assert (= (and b!297590 res!156989) b!297589))

(assert (= (and b!297589 c!47879) b!297586))

(assert (= (and b!297589 (not c!47879)) b!297583))

(assert (= (and b!297583 c!47880) b!297587))

(assert (= (and b!297583 (not c!47880)) b!297592))

(assert (= (and b!297589 res!156995) b!297593))

(declare-fun m!310299 () Bool)

(assert (=> b!297587 m!310299))

(declare-fun m!310301 () Bool)

(assert (=> b!297587 m!310301))

(declare-fun m!310303 () Bool)

(assert (=> b!297587 m!310303))

(declare-fun m!310305 () Bool)

(assert (=> b!297587 m!310305))

(declare-fun m!310307 () Bool)

(assert (=> b!297588 m!310307))

(assert (=> b!297589 m!310305))

(declare-fun m!310309 () Bool)

(assert (=> b!297584 m!310309))

(declare-fun m!310311 () Bool)

(assert (=> b!297591 m!310311))

(declare-fun m!310313 () Bool)

(assert (=> start!29402 m!310313))

(declare-fun m!310315 () Bool)

(assert (=> start!29402 m!310315))

(declare-fun m!310317 () Bool)

(assert (=> b!297593 m!310317))

(declare-fun m!310319 () Bool)

(assert (=> b!297590 m!310319))

(assert (=> b!297590 m!310299))

(declare-fun m!310321 () Bool)

(assert (=> b!297590 m!310321))

(declare-fun m!310323 () Bool)

(assert (=> b!297590 m!310323))

(declare-fun m!310325 () Bool)

(assert (=> b!297582 m!310325))

(check-sat (not b!297593) (not b!297587) (not start!29402) (not b!297584) (not b!297582) (not b!297591) (not b!297588) (not b!297590))
(check-sat)
(get-model)

(declare-fun d!67101 () Bool)

(declare-fun e!188081 () Bool)

(assert (=> d!67101 e!188081))

(declare-fun res!157023 () Bool)

(assert (=> d!67101 (=> (not res!157023) (not e!188081))))

(assert (=> d!67101 (= res!157023 (and (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7491 a!3312))))))

(declare-fun lt!148004 () Unit!9284)

(declare-fun choose!42 (array!15067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9284)

(assert (=> d!67101 (= lt!148004 (choose!42 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147973 (index!11368 lt!147972) (x!29550 lt!147972) mask!3809))))

(assert (=> d!67101 (validMask!0 mask!3809)))

(assert (=> d!67101 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147973 (index!11368 lt!147972) (x!29550 lt!147972) mask!3809) lt!148004)))

(declare-fun b!297632 () Bool)

(assert (=> b!297632 (= e!188081 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 (array!15068 (store (arr!7139 a!3312) i!1256 k0!2524) (size!7491 a!3312)) mask!3809) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 a!3312 mask!3809)))))

(assert (= (and d!67101 res!157023) b!297632))

(declare-fun m!310355 () Bool)

(assert (=> d!67101 m!310355))

(assert (=> d!67101 m!310313))

(assert (=> b!297632 m!310299))

(declare-fun m!310357 () Bool)

(assert (=> b!297632 m!310357))

(assert (=> b!297632 m!310321))

(assert (=> b!297587 d!67101))

(declare-fun b!297657 () Bool)

(declare-fun c!47897 () Bool)

(declare-fun lt!148022 () (_ BitVec 64))

(assert (=> b!297657 (= c!47897 (= lt!148022 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188098 () SeekEntryResult!2299)

(declare-fun e!188097 () SeekEntryResult!2299)

(assert (=> b!297657 (= e!188098 e!188097)))

(declare-fun b!297658 () Bool)

(declare-fun lt!148020 () SeekEntryResult!2299)

(assert (=> b!297658 (= e!188097 (MissingZero!2299 (index!11368 lt!148020)))))

(declare-fun b!297660 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15067 (_ BitVec 32)) SeekEntryResult!2299)

(assert (=> b!297660 (= e!188097 (seekKeyOrZeroReturnVacant!0 (x!29550 lt!148020) (index!11368 lt!148020) (index!11368 lt!148020) k0!2524 lt!147974 mask!3809))))

(declare-fun b!297661 () Bool)

(assert (=> b!297661 (= e!188098 (Found!2299 (index!11368 lt!148020)))))

(declare-fun b!297662 () Bool)

(declare-fun e!188099 () SeekEntryResult!2299)

(assert (=> b!297662 (= e!188099 Undefined!2299)))

(declare-fun d!67103 () Bool)

(declare-fun lt!148021 () SeekEntryResult!2299)

(assert (=> d!67103 (and (or ((_ is Undefined!2299) lt!148021) (not ((_ is Found!2299) lt!148021)) (and (bvsge (index!11367 lt!148021) #b00000000000000000000000000000000) (bvslt (index!11367 lt!148021) (size!7491 lt!147974)))) (or ((_ is Undefined!2299) lt!148021) ((_ is Found!2299) lt!148021) (not ((_ is MissingZero!2299) lt!148021)) (and (bvsge (index!11366 lt!148021) #b00000000000000000000000000000000) (bvslt (index!11366 lt!148021) (size!7491 lt!147974)))) (or ((_ is Undefined!2299) lt!148021) ((_ is Found!2299) lt!148021) ((_ is MissingZero!2299) lt!148021) (not ((_ is MissingVacant!2299) lt!148021)) (and (bvsge (index!11369 lt!148021) #b00000000000000000000000000000000) (bvslt (index!11369 lt!148021) (size!7491 lt!147974)))) (or ((_ is Undefined!2299) lt!148021) (ite ((_ is Found!2299) lt!148021) (= (select (arr!7139 lt!147974) (index!11367 lt!148021)) k0!2524) (ite ((_ is MissingZero!2299) lt!148021) (= (select (arr!7139 lt!147974) (index!11366 lt!148021)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2299) lt!148021) (= (select (arr!7139 lt!147974) (index!11369 lt!148021)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67103 (= lt!148021 e!188099)))

(declare-fun c!47898 () Bool)

(assert (=> d!67103 (= c!47898 (and ((_ is Intermediate!2299) lt!148020) (undefined!3111 lt!148020)))))

(assert (=> d!67103 (= lt!148020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 lt!147974 mask!3809))))

(assert (=> d!67103 (validMask!0 mask!3809)))

(assert (=> d!67103 (= (seekEntryOrOpen!0 k0!2524 lt!147974 mask!3809) lt!148021)))

(declare-fun b!297659 () Bool)

(assert (=> b!297659 (= e!188099 e!188098)))

(assert (=> b!297659 (= lt!148022 (select (arr!7139 lt!147974) (index!11368 lt!148020)))))

(declare-fun c!47896 () Bool)

(assert (=> b!297659 (= c!47896 (= lt!148022 k0!2524))))

(assert (= (and d!67103 c!47898) b!297662))

(assert (= (and d!67103 (not c!47898)) b!297659))

(assert (= (and b!297659 c!47896) b!297661))

(assert (= (and b!297659 (not c!47896)) b!297657))

(assert (= (and b!297657 c!47897) b!297658))

(assert (= (and b!297657 (not c!47897)) b!297660))

(declare-fun m!310371 () Bool)

(assert (=> b!297660 m!310371))

(assert (=> d!67103 m!310323))

(declare-fun m!310373 () Bool)

(assert (=> d!67103 m!310373))

(declare-fun m!310375 () Bool)

(assert (=> d!67103 m!310375))

(assert (=> d!67103 m!310313))

(declare-fun m!310377 () Bool)

(assert (=> d!67103 m!310377))

(assert (=> d!67103 m!310323))

(declare-fun m!310379 () Bool)

(assert (=> d!67103 m!310379))

(declare-fun m!310381 () Bool)

(assert (=> b!297659 m!310381))

(assert (=> b!297593 d!67103))

(declare-fun b!297663 () Bool)

(declare-fun c!47900 () Bool)

(declare-fun lt!148025 () (_ BitVec 64))

(assert (=> b!297663 (= c!47900 (= lt!148025 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188101 () SeekEntryResult!2299)

(declare-fun e!188100 () SeekEntryResult!2299)

(assert (=> b!297663 (= e!188101 e!188100)))

(declare-fun b!297664 () Bool)

(declare-fun lt!148023 () SeekEntryResult!2299)

(assert (=> b!297664 (= e!188100 (MissingZero!2299 (index!11368 lt!148023)))))

(declare-fun b!297666 () Bool)

(assert (=> b!297666 (= e!188100 (seekKeyOrZeroReturnVacant!0 (x!29550 lt!148023) (index!11368 lt!148023) (index!11368 lt!148023) k0!2524 a!3312 mask!3809))))

(declare-fun b!297667 () Bool)

(assert (=> b!297667 (= e!188101 (Found!2299 (index!11368 lt!148023)))))

(declare-fun b!297668 () Bool)

(declare-fun e!188102 () SeekEntryResult!2299)

(assert (=> b!297668 (= e!188102 Undefined!2299)))

(declare-fun d!67113 () Bool)

(declare-fun lt!148024 () SeekEntryResult!2299)

(assert (=> d!67113 (and (or ((_ is Undefined!2299) lt!148024) (not ((_ is Found!2299) lt!148024)) (and (bvsge (index!11367 lt!148024) #b00000000000000000000000000000000) (bvslt (index!11367 lt!148024) (size!7491 a!3312)))) (or ((_ is Undefined!2299) lt!148024) ((_ is Found!2299) lt!148024) (not ((_ is MissingZero!2299) lt!148024)) (and (bvsge (index!11366 lt!148024) #b00000000000000000000000000000000) (bvslt (index!11366 lt!148024) (size!7491 a!3312)))) (or ((_ is Undefined!2299) lt!148024) ((_ is Found!2299) lt!148024) ((_ is MissingZero!2299) lt!148024) (not ((_ is MissingVacant!2299) lt!148024)) (and (bvsge (index!11369 lt!148024) #b00000000000000000000000000000000) (bvslt (index!11369 lt!148024) (size!7491 a!3312)))) (or ((_ is Undefined!2299) lt!148024) (ite ((_ is Found!2299) lt!148024) (= (select (arr!7139 a!3312) (index!11367 lt!148024)) k0!2524) (ite ((_ is MissingZero!2299) lt!148024) (= (select (arr!7139 a!3312) (index!11366 lt!148024)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2299) lt!148024) (= (select (arr!7139 a!3312) (index!11369 lt!148024)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67113 (= lt!148024 e!188102)))

(declare-fun c!47901 () Bool)

(assert (=> d!67113 (= c!47901 (and ((_ is Intermediate!2299) lt!148023) (undefined!3111 lt!148023)))))

(assert (=> d!67113 (= lt!148023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67113 (validMask!0 mask!3809)))

(assert (=> d!67113 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!148024)))

(declare-fun b!297665 () Bool)

(assert (=> b!297665 (= e!188102 e!188101)))

(assert (=> b!297665 (= lt!148025 (select (arr!7139 a!3312) (index!11368 lt!148023)))))

(declare-fun c!47899 () Bool)

(assert (=> b!297665 (= c!47899 (= lt!148025 k0!2524))))

(assert (= (and d!67113 c!47901) b!297668))

(assert (= (and d!67113 (not c!47901)) b!297665))

(assert (= (and b!297665 c!47899) b!297667))

(assert (= (and b!297665 (not c!47899)) b!297663))

(assert (= (and b!297663 c!47900) b!297664))

(assert (= (and b!297663 (not c!47900)) b!297666))

(declare-fun m!310383 () Bool)

(assert (=> b!297666 m!310383))

(assert (=> d!67113 m!310323))

(declare-fun m!310385 () Bool)

(assert (=> d!67113 m!310385))

(declare-fun m!310387 () Bool)

(assert (=> d!67113 m!310387))

(assert (=> d!67113 m!310313))

(declare-fun m!310389 () Bool)

(assert (=> d!67113 m!310389))

(assert (=> d!67113 m!310323))

(declare-fun m!310391 () Bool)

(assert (=> d!67113 m!310391))

(declare-fun m!310393 () Bool)

(assert (=> b!297665 m!310393))

(assert (=> b!297582 d!67113))

(declare-fun d!67115 () Bool)

(declare-fun res!157034 () Bool)

(declare-fun e!188107 () Bool)

(assert (=> d!67115 (=> res!157034 e!188107)))

(assert (=> d!67115 (= res!157034 (= (select (arr!7139 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67115 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!188107)))

(declare-fun b!297673 () Bool)

(declare-fun e!188108 () Bool)

(assert (=> b!297673 (= e!188107 e!188108)))

(declare-fun res!157035 () Bool)

(assert (=> b!297673 (=> (not res!157035) (not e!188108))))

(assert (=> b!297673 (= res!157035 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7491 a!3312)))))

(declare-fun b!297674 () Bool)

(assert (=> b!297674 (= e!188108 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67115 (not res!157034)) b!297673))

(assert (= (and b!297673 res!157035) b!297674))

(declare-fun m!310395 () Bool)

(assert (=> d!67115 m!310395))

(declare-fun m!310397 () Bool)

(assert (=> b!297674 m!310397))

(assert (=> b!297591 d!67115))

(declare-fun b!297723 () Bool)

(declare-fun e!188137 () Bool)

(declare-fun call!25764 () Bool)

(assert (=> b!297723 (= e!188137 call!25764)))

(declare-fun b!297724 () Bool)

(declare-fun e!188138 () Bool)

(assert (=> b!297724 (= e!188138 call!25764)))

(declare-fun b!297725 () Bool)

(declare-fun e!188139 () Bool)

(assert (=> b!297725 (= e!188139 e!188138)))

(declare-fun c!47918 () Bool)

(assert (=> b!297725 (= c!47918 (validKeyInArray!0 (select (arr!7139 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25761 () Bool)

(assert (=> bm!25761 (= call!25764 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!67117 () Bool)

(declare-fun res!157053 () Bool)

(assert (=> d!67117 (=> res!157053 e!188139)))

(assert (=> d!67117 (= res!157053 (bvsge #b00000000000000000000000000000000 (size!7491 a!3312)))))

(assert (=> d!67117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188139)))

(declare-fun b!297726 () Bool)

(assert (=> b!297726 (= e!188138 e!188137)))

(declare-fun lt!148047 () (_ BitVec 64))

(assert (=> b!297726 (= lt!148047 (select (arr!7139 a!3312) #b00000000000000000000000000000000))))

(declare-fun lt!148048 () Unit!9284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15067 (_ BitVec 64) (_ BitVec 32)) Unit!9284)

(assert (=> b!297726 (= lt!148048 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148047 #b00000000000000000000000000000000))))

(assert (=> b!297726 (arrayContainsKey!0 a!3312 lt!148047 #b00000000000000000000000000000000)))

(declare-fun lt!148046 () Unit!9284)

(assert (=> b!297726 (= lt!148046 lt!148048)))

(declare-fun res!157054 () Bool)

(assert (=> b!297726 (= res!157054 (= (seekEntryOrOpen!0 (select (arr!7139 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2299 #b00000000000000000000000000000000)))))

(assert (=> b!297726 (=> (not res!157054) (not e!188137))))

(assert (= (and d!67117 (not res!157053)) b!297725))

(assert (= (and b!297725 c!47918) b!297726))

(assert (= (and b!297725 (not c!47918)) b!297724))

(assert (= (and b!297726 res!157054) b!297723))

(assert (= (or b!297723 b!297724) bm!25761))

(assert (=> b!297725 m!310395))

(assert (=> b!297725 m!310395))

(declare-fun m!310413 () Bool)

(assert (=> b!297725 m!310413))

(declare-fun m!310415 () Bool)

(assert (=> bm!25761 m!310415))

(assert (=> b!297726 m!310395))

(declare-fun m!310417 () Bool)

(assert (=> b!297726 m!310417))

(declare-fun m!310419 () Bool)

(assert (=> b!297726 m!310419))

(assert (=> b!297726 m!310395))

(declare-fun m!310421 () Bool)

(assert (=> b!297726 m!310421))

(assert (=> b!297584 d!67117))

(declare-fun b!297783 () Bool)

(declare-fun lt!148074 () SeekEntryResult!2299)

(assert (=> b!297783 (and (bvsge (index!11368 lt!148074) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148074) (size!7491 lt!147974)))))

(declare-fun e!188170 () Bool)

(assert (=> b!297783 (= e!188170 (= (select (arr!7139 lt!147974) (index!11368 lt!148074)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!297784 () Bool)

(declare-fun e!188171 () SeekEntryResult!2299)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297784 (= e!188171 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147973 #b00000000000000000000000000000000 mask!3809) k0!2524 lt!147974 mask!3809))))

(declare-fun b!297785 () Bool)

(assert (=> b!297785 (and (bvsge (index!11368 lt!148074) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148074) (size!7491 lt!147974)))))

(declare-fun res!157061 () Bool)

(assert (=> b!297785 (= res!157061 (= (select (arr!7139 lt!147974) (index!11368 lt!148074)) k0!2524))))

(assert (=> b!297785 (=> res!157061 e!188170)))

(declare-fun e!188173 () Bool)

(assert (=> b!297785 (= e!188173 e!188170)))

(declare-fun b!297786 () Bool)

(declare-fun e!188169 () Bool)

(assert (=> b!297786 (= e!188169 (bvsge (x!29550 lt!148074) #b01111111111111111111111111111110))))

(declare-fun d!67123 () Bool)

(assert (=> d!67123 e!188169))

(declare-fun c!47945 () Bool)

(assert (=> d!67123 (= c!47945 (and ((_ is Intermediate!2299) lt!148074) (undefined!3111 lt!148074)))))

(declare-fun e!188172 () SeekEntryResult!2299)

(assert (=> d!67123 (= lt!148074 e!188172)))

(declare-fun c!47946 () Bool)

(assert (=> d!67123 (= c!47946 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148075 () (_ BitVec 64))

(assert (=> d!67123 (= lt!148075 (select (arr!7139 lt!147974) lt!147973))))

(assert (=> d!67123 (validMask!0 mask!3809)))

(assert (=> d!67123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 lt!147974 mask!3809) lt!148074)))

(declare-fun b!297787 () Bool)

(assert (=> b!297787 (= e!188172 e!188171)))

(declare-fun c!47944 () Bool)

(assert (=> b!297787 (= c!47944 (or (= lt!148075 k0!2524) (= (bvadd lt!148075 lt!148075) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297788 () Bool)

(assert (=> b!297788 (and (bvsge (index!11368 lt!148074) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148074) (size!7491 lt!147974)))))

(declare-fun res!157063 () Bool)

(assert (=> b!297788 (= res!157063 (= (select (arr!7139 lt!147974) (index!11368 lt!148074)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297788 (=> res!157063 e!188170)))

(declare-fun b!297789 () Bool)

(assert (=> b!297789 (= e!188172 (Intermediate!2299 true lt!147973 #b00000000000000000000000000000000))))

(declare-fun b!297790 () Bool)

(assert (=> b!297790 (= e!188169 e!188173)))

(declare-fun res!157062 () Bool)

(assert (=> b!297790 (= res!157062 (and ((_ is Intermediate!2299) lt!148074) (not (undefined!3111 lt!148074)) (bvslt (x!29550 lt!148074) #b01111111111111111111111111111110) (bvsge (x!29550 lt!148074) #b00000000000000000000000000000000) (bvsge (x!29550 lt!148074) #b00000000000000000000000000000000)))))

(assert (=> b!297790 (=> (not res!157062) (not e!188173))))

(declare-fun b!297791 () Bool)

(assert (=> b!297791 (= e!188171 (Intermediate!2299 false lt!147973 #b00000000000000000000000000000000))))

(assert (= (and d!67123 c!47946) b!297789))

(assert (= (and d!67123 (not c!47946)) b!297787))

(assert (= (and b!297787 c!47944) b!297791))

(assert (= (and b!297787 (not c!47944)) b!297784))

(assert (= (and d!67123 c!47945) b!297786))

(assert (= (and d!67123 (not c!47945)) b!297790))

(assert (= (and b!297790 res!157062) b!297785))

(assert (= (and b!297785 (not res!157061)) b!297788))

(assert (= (and b!297788 (not res!157063)) b!297783))

(declare-fun m!310459 () Bool)

(assert (=> b!297785 m!310459))

(assert (=> b!297788 m!310459))

(declare-fun m!310461 () Bool)

(assert (=> d!67123 m!310461))

(assert (=> d!67123 m!310313))

(assert (=> b!297783 m!310459))

(declare-fun m!310463 () Bool)

(assert (=> b!297784 m!310463))

(assert (=> b!297784 m!310463))

(declare-fun m!310465 () Bool)

(assert (=> b!297784 m!310465))

(assert (=> b!297590 d!67123))

(declare-fun b!297792 () Bool)

(declare-fun lt!148076 () SeekEntryResult!2299)

(assert (=> b!297792 (and (bvsge (index!11368 lt!148076) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148076) (size!7491 a!3312)))))

(declare-fun e!188177 () Bool)

(assert (=> b!297792 (= e!188177 (= (select (arr!7139 a!3312) (index!11368 lt!148076)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!297793 () Bool)

(declare-fun e!188178 () SeekEntryResult!2299)

(assert (=> b!297793 (= e!188178 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147973 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!297794 () Bool)

(assert (=> b!297794 (and (bvsge (index!11368 lt!148076) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148076) (size!7491 a!3312)))))

(declare-fun res!157066 () Bool)

(assert (=> b!297794 (= res!157066 (= (select (arr!7139 a!3312) (index!11368 lt!148076)) k0!2524))))

(assert (=> b!297794 (=> res!157066 e!188177)))

(declare-fun e!188180 () Bool)

(assert (=> b!297794 (= e!188180 e!188177)))

(declare-fun b!297795 () Bool)

(declare-fun e!188176 () Bool)

(assert (=> b!297795 (= e!188176 (bvsge (x!29550 lt!148076) #b01111111111111111111111111111110))))

(declare-fun d!67139 () Bool)

(assert (=> d!67139 e!188176))

(declare-fun c!47948 () Bool)

(assert (=> d!67139 (= c!47948 (and ((_ is Intermediate!2299) lt!148076) (undefined!3111 lt!148076)))))

(declare-fun e!188179 () SeekEntryResult!2299)

(assert (=> d!67139 (= lt!148076 e!188179)))

(declare-fun c!47949 () Bool)

(assert (=> d!67139 (= c!47949 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148077 () (_ BitVec 64))

(assert (=> d!67139 (= lt!148077 (select (arr!7139 a!3312) lt!147973))))

(assert (=> d!67139 (validMask!0 mask!3809)))

(assert (=> d!67139 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147973 k0!2524 a!3312 mask!3809) lt!148076)))

(declare-fun b!297796 () Bool)

(assert (=> b!297796 (= e!188179 e!188178)))

(declare-fun c!47947 () Bool)

(assert (=> b!297796 (= c!47947 (or (= lt!148077 k0!2524) (= (bvadd lt!148077 lt!148077) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297797 () Bool)

(assert (=> b!297797 (and (bvsge (index!11368 lt!148076) #b00000000000000000000000000000000) (bvslt (index!11368 lt!148076) (size!7491 a!3312)))))

(declare-fun res!157068 () Bool)

(assert (=> b!297797 (= res!157068 (= (select (arr!7139 a!3312) (index!11368 lt!148076)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297797 (=> res!157068 e!188177)))

(declare-fun b!297798 () Bool)

(assert (=> b!297798 (= e!188179 (Intermediate!2299 true lt!147973 #b00000000000000000000000000000000))))

(declare-fun b!297799 () Bool)

(assert (=> b!297799 (= e!188176 e!188180)))

(declare-fun res!157067 () Bool)

(assert (=> b!297799 (= res!157067 (and ((_ is Intermediate!2299) lt!148076) (not (undefined!3111 lt!148076)) (bvslt (x!29550 lt!148076) #b01111111111111111111111111111110) (bvsge (x!29550 lt!148076) #b00000000000000000000000000000000) (bvsge (x!29550 lt!148076) #b00000000000000000000000000000000)))))

(assert (=> b!297799 (=> (not res!157067) (not e!188180))))

(declare-fun b!297801 () Bool)

(assert (=> b!297801 (= e!188178 (Intermediate!2299 false lt!147973 #b00000000000000000000000000000000))))

(assert (= (and d!67139 c!47949) b!297798))

(assert (= (and d!67139 (not c!47949)) b!297796))

(assert (= (and b!297796 c!47947) b!297801))

(assert (= (and b!297796 (not c!47947)) b!297793))

(assert (= (and d!67139 c!47948) b!297795))

(assert (= (and d!67139 (not c!47948)) b!297799))

(assert (= (and b!297799 res!157067) b!297794))

(assert (= (and b!297794 (not res!157066)) b!297797))

(assert (= (and b!297797 (not res!157068)) b!297792))

(declare-fun m!310467 () Bool)

(assert (=> b!297794 m!310467))

(assert (=> b!297797 m!310467))

(declare-fun m!310469 () Bool)

(assert (=> d!67139 m!310469))

(assert (=> d!67139 m!310313))

(assert (=> b!297792 m!310467))

(assert (=> b!297793 m!310463))

(assert (=> b!297793 m!310463))

(declare-fun m!310471 () Bool)

(assert (=> b!297793 m!310471))

(assert (=> b!297590 d!67139))

(declare-fun d!67143 () Bool)

(declare-fun lt!148095 () (_ BitVec 32))

(declare-fun lt!148094 () (_ BitVec 32))

(assert (=> d!67143 (= lt!148095 (bvmul (bvxor lt!148094 (bvlshr lt!148094 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67143 (= lt!148094 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67143 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157075 (let ((h!5322 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29556 (bvmul (bvxor h!5322 (bvlshr h!5322 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29556 (bvlshr x!29556 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157075 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157075 #b00000000000000000000000000000000))))))

(assert (=> d!67143 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!148095 (bvlshr lt!148095 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!297590 d!67143))

(declare-fun d!67149 () Bool)

(assert (=> d!67149 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!297588 d!67149))

(declare-fun d!67151 () Bool)

(assert (=> d!67151 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29402 d!67151))

(declare-fun d!67153 () Bool)

(assert (=> d!67153 (= (array_inv!5093 a!3312) (bvsge (size!7491 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29402 d!67153))

(check-sat (not d!67101) (not d!67123) (not b!297725) (not d!67139) (not b!297660) (not d!67113) (not b!297674) (not b!297666) (not b!297784) (not d!67103) (not b!297726) (not b!297632) (not b!297793) (not bm!25761))
