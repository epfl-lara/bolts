; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65976 () Bool)

(assert start!65976)

(declare-fun b!760147 () Bool)

(declare-fun e!423769 () Bool)

(declare-fun e!423764 () Bool)

(assert (=> b!760147 (= e!423769 e!423764)))

(declare-fun res!514455 () Bool)

(assert (=> b!760147 (=> (not res!514455) (not e!423764))))

(declare-datatypes ((SeekEntryResult!7735 0))(
  ( (MissingZero!7735 (index!33307 (_ BitVec 32))) (Found!7735 (index!33308 (_ BitVec 32))) (Intermediate!7735 (undefined!8547 Bool) (index!33309 (_ BitVec 32)) (x!64223 (_ BitVec 32))) (Undefined!7735) (MissingVacant!7735 (index!33310 (_ BitVec 32))) )
))
(declare-fun lt!338708 () SeekEntryResult!7735)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760147 (= res!514455 (or (= lt!338708 (MissingZero!7735 i!1173)) (= lt!338708 (MissingVacant!7735 i!1173))))))

(declare-datatypes ((array!42039 0))(
  ( (array!42040 (arr!20128 (Array (_ BitVec 32) (_ BitVec 64))) (size!20549 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42039)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42039 (_ BitVec 32)) SeekEntryResult!7735)

(assert (=> b!760147 (= lt!338708 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!423770 () Bool)

(declare-fun lt!338706 () SeekEntryResult!7735)

(declare-fun b!760148 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42039 (_ BitVec 32)) SeekEntryResult!7735)

(assert (=> b!760148 (= e!423770 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338706))))

(declare-fun b!760149 () Bool)

(declare-fun res!514454 () Bool)

(assert (=> b!760149 (=> (not res!514454) (not e!423769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760149 (= res!514454 (validKeyInArray!0 k0!2102))))

(declare-fun b!760150 () Bool)

(declare-fun res!514449 () Bool)

(assert (=> b!760150 (=> (not res!514449) (not e!423764))))

(declare-datatypes ((List!14183 0))(
  ( (Nil!14180) (Cons!14179 (h!15254 (_ BitVec 64)) (t!20506 List!14183)) )
))
(declare-fun arrayNoDuplicates!0 (array!42039 (_ BitVec 32) List!14183) Bool)

(assert (=> b!760150 (= res!514449 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14180))))

(declare-fun b!760151 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!423766 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!760151 (= e!423766 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) (Found!7735 j!159)))))

(declare-fun b!760152 () Bool)

(declare-fun res!514458 () Bool)

(assert (=> b!760152 (=> (not res!514458) (not e!423769))))

(assert (=> b!760152 (= res!514458 (validKeyInArray!0 (select (arr!20128 a!3186) j!159)))))

(declare-fun b!760153 () Bool)

(declare-fun res!514450 () Bool)

(assert (=> b!760153 (=> (not res!514450) (not e!423764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42039 (_ BitVec 32)) Bool)

(assert (=> b!760153 (= res!514450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!760154 () Bool)

(declare-fun res!514452 () Bool)

(assert (=> b!760154 (=> (not res!514452) (not e!423769))))

(assert (=> b!760154 (= res!514452 (and (= (size!20549 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20549 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20549 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!760155 () Bool)

(declare-fun res!514457 () Bool)

(assert (=> b!760155 (=> (not res!514457) (not e!423764))))

(assert (=> b!760155 (= res!514457 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20549 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20549 a!3186))))))

(declare-fun e!423765 () Bool)

(declare-fun b!760156 () Bool)

(declare-fun lt!338710 () SeekEntryResult!7735)

(get-info :version)

(assert (=> b!760156 (= e!423765 (not (or (not ((_ is Intermediate!7735) lt!338710)) (not (= x!1131 (x!64223 lt!338710))) (= index!1321 (index!33309 lt!338710)))))))

(declare-fun e!423767 () Bool)

(assert (=> b!760156 e!423767))

(declare-fun res!514456 () Bool)

(assert (=> b!760156 (=> (not res!514456) (not e!423767))))

(assert (=> b!760156 (= res!514456 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26310 0))(
  ( (Unit!26311) )
))
(declare-fun lt!338705 () Unit!26310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26310)

(assert (=> b!760156 (= lt!338705 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!514451 () Bool)

(assert (=> start!65976 (=> (not res!514451) (not e!423769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65976 (= res!514451 (validMask!0 mask!3328))))

(assert (=> start!65976 e!423769))

(assert (=> start!65976 true))

(declare-fun array_inv!15902 (array!42039) Bool)

(assert (=> start!65976 (array_inv!15902 a!3186)))

(declare-fun b!760157 () Bool)

(assert (=> b!760157 (= e!423767 e!423770)))

(declare-fun res!514447 () Bool)

(assert (=> b!760157 (=> (not res!514447) (not e!423770))))

(assert (=> b!760157 (= res!514447 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338706))))

(assert (=> b!760157 (= lt!338706 (Found!7735 j!159))))

(declare-fun b!760158 () Bool)

(declare-fun e!423768 () Bool)

(assert (=> b!760158 (= e!423768 e!423765)))

(declare-fun res!514461 () Bool)

(assert (=> b!760158 (=> (not res!514461) (not e!423765))))

(declare-fun lt!338711 () SeekEntryResult!7735)

(assert (=> b!760158 (= res!514461 (= lt!338711 lt!338710))))

(declare-fun lt!338707 () array!42039)

(declare-fun lt!338704 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42039 (_ BitVec 32)) SeekEntryResult!7735)

(assert (=> b!760158 (= lt!338710 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338704 lt!338707 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760158 (= lt!338711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338704 mask!3328) lt!338704 lt!338707 mask!3328))))

(assert (=> b!760158 (= lt!338704 (select (store (arr!20128 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!760158 (= lt!338707 (array!42040 (store (arr!20128 a!3186) i!1173 k0!2102) (size!20549 a!3186)))))

(declare-fun b!760159 () Bool)

(assert (=> b!760159 (= e!423764 e!423768)))

(declare-fun res!514460 () Bool)

(assert (=> b!760159 (=> (not res!514460) (not e!423768))))

(declare-fun lt!338709 () SeekEntryResult!7735)

(assert (=> b!760159 (= res!514460 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338709))))

(assert (=> b!760159 (= lt!338709 (Intermediate!7735 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!760160 () Bool)

(assert (=> b!760160 (= e!423766 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338709))))

(declare-fun b!760161 () Bool)

(declare-fun res!514459 () Bool)

(assert (=> b!760161 (=> (not res!514459) (not e!423768))))

(assert (=> b!760161 (= res!514459 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20128 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760162 () Bool)

(declare-fun res!514448 () Bool)

(assert (=> b!760162 (=> (not res!514448) (not e!423768))))

(assert (=> b!760162 (= res!514448 e!423766)))

(declare-fun c!83232 () Bool)

(assert (=> b!760162 (= c!83232 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!760163 () Bool)

(declare-fun res!514453 () Bool)

(assert (=> b!760163 (=> (not res!514453) (not e!423769))))

(declare-fun arrayContainsKey!0 (array!42039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760163 (= res!514453 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65976 res!514451) b!760154))

(assert (= (and b!760154 res!514452) b!760152))

(assert (= (and b!760152 res!514458) b!760149))

(assert (= (and b!760149 res!514454) b!760163))

(assert (= (and b!760163 res!514453) b!760147))

(assert (= (and b!760147 res!514455) b!760153))

(assert (= (and b!760153 res!514450) b!760150))

(assert (= (and b!760150 res!514449) b!760155))

(assert (= (and b!760155 res!514457) b!760159))

(assert (= (and b!760159 res!514460) b!760161))

(assert (= (and b!760161 res!514459) b!760162))

(assert (= (and b!760162 c!83232) b!760160))

(assert (= (and b!760162 (not c!83232)) b!760151))

(assert (= (and b!760162 res!514448) b!760158))

(assert (= (and b!760158 res!514461) b!760156))

(assert (= (and b!760156 res!514456) b!760157))

(assert (= (and b!760157 res!514447) b!760148))

(declare-fun m!707429 () Bool)

(assert (=> b!760159 m!707429))

(assert (=> b!760159 m!707429))

(declare-fun m!707431 () Bool)

(assert (=> b!760159 m!707431))

(assert (=> b!760159 m!707431))

(assert (=> b!760159 m!707429))

(declare-fun m!707433 () Bool)

(assert (=> b!760159 m!707433))

(declare-fun m!707435 () Bool)

(assert (=> b!760158 m!707435))

(declare-fun m!707437 () Bool)

(assert (=> b!760158 m!707437))

(declare-fun m!707439 () Bool)

(assert (=> b!760158 m!707439))

(declare-fun m!707441 () Bool)

(assert (=> b!760158 m!707441))

(declare-fun m!707443 () Bool)

(assert (=> b!760158 m!707443))

(assert (=> b!760158 m!707441))

(assert (=> b!760148 m!707429))

(assert (=> b!760148 m!707429))

(declare-fun m!707445 () Bool)

(assert (=> b!760148 m!707445))

(declare-fun m!707447 () Bool)

(assert (=> b!760156 m!707447))

(declare-fun m!707449 () Bool)

(assert (=> b!760156 m!707449))

(assert (=> b!760157 m!707429))

(assert (=> b!760157 m!707429))

(declare-fun m!707451 () Bool)

(assert (=> b!760157 m!707451))

(assert (=> b!760151 m!707429))

(assert (=> b!760151 m!707429))

(declare-fun m!707453 () Bool)

(assert (=> b!760151 m!707453))

(declare-fun m!707455 () Bool)

(assert (=> b!760149 m!707455))

(declare-fun m!707457 () Bool)

(assert (=> start!65976 m!707457))

(declare-fun m!707459 () Bool)

(assert (=> start!65976 m!707459))

(assert (=> b!760152 m!707429))

(assert (=> b!760152 m!707429))

(declare-fun m!707461 () Bool)

(assert (=> b!760152 m!707461))

(declare-fun m!707463 () Bool)

(assert (=> b!760153 m!707463))

(assert (=> b!760160 m!707429))

(assert (=> b!760160 m!707429))

(declare-fun m!707465 () Bool)

(assert (=> b!760160 m!707465))

(declare-fun m!707467 () Bool)

(assert (=> b!760163 m!707467))

(declare-fun m!707469 () Bool)

(assert (=> b!760161 m!707469))

(declare-fun m!707471 () Bool)

(assert (=> b!760150 m!707471))

(declare-fun m!707473 () Bool)

(assert (=> b!760147 m!707473))

(check-sat (not b!760157) (not b!760151) (not b!760163) (not b!760156) (not b!760149) (not b!760159) (not b!760160) (not b!760147) (not b!760153) (not b!760148) (not b!760150) (not b!760152) (not start!65976) (not b!760158))
(check-sat)
(get-model)

(declare-fun b!760228 () Bool)

(declare-fun e!423803 () SeekEntryResult!7735)

(declare-fun lt!338744 () SeekEntryResult!7735)

(assert (=> b!760228 (= e!423803 (Found!7735 (index!33309 lt!338744)))))

(declare-fun e!423802 () SeekEntryResult!7735)

(declare-fun b!760229 () Bool)

(assert (=> b!760229 (= e!423802 (seekKeyOrZeroReturnVacant!0 (x!64223 lt!338744) (index!33309 lt!338744) (index!33309 lt!338744) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760230 () Bool)

(declare-fun e!423804 () SeekEntryResult!7735)

(assert (=> b!760230 (= e!423804 e!423803)))

(declare-fun lt!338743 () (_ BitVec 64))

(assert (=> b!760230 (= lt!338743 (select (arr!20128 a!3186) (index!33309 lt!338744)))))

(declare-fun c!83242 () Bool)

(assert (=> b!760230 (= c!83242 (= lt!338743 (select (arr!20128 a!3186) j!159)))))

(declare-fun d!100423 () Bool)

(declare-fun lt!338742 () SeekEntryResult!7735)

(assert (=> d!100423 (and (or ((_ is Undefined!7735) lt!338742) (not ((_ is Found!7735) lt!338742)) (and (bvsge (index!33308 lt!338742) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338742) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338742) ((_ is Found!7735) lt!338742) (not ((_ is MissingZero!7735) lt!338742)) (and (bvsge (index!33307 lt!338742) #b00000000000000000000000000000000) (bvslt (index!33307 lt!338742) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338742) ((_ is Found!7735) lt!338742) ((_ is MissingZero!7735) lt!338742) (not ((_ is MissingVacant!7735) lt!338742)) (and (bvsge (index!33310 lt!338742) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338742) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338742) (ite ((_ is Found!7735) lt!338742) (= (select (arr!20128 a!3186) (index!33308 lt!338742)) (select (arr!20128 a!3186) j!159)) (ite ((_ is MissingZero!7735) lt!338742) (= (select (arr!20128 a!3186) (index!33307 lt!338742)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7735) lt!338742) (= (select (arr!20128 a!3186) (index!33310 lt!338742)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100423 (= lt!338742 e!423804)))

(declare-fun c!83244 () Bool)

(assert (=> d!100423 (= c!83244 (and ((_ is Intermediate!7735) lt!338744) (undefined!8547 lt!338744)))))

(assert (=> d!100423 (= lt!338744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100423 (validMask!0 mask!3328)))

(assert (=> d!100423 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338742)))

(declare-fun b!760227 () Bool)

(assert (=> b!760227 (= e!423804 Undefined!7735)))

(declare-fun b!760231 () Bool)

(declare-fun c!83243 () Bool)

(assert (=> b!760231 (= c!83243 (= lt!338743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760231 (= e!423803 e!423802)))

(declare-fun b!760232 () Bool)

(assert (=> b!760232 (= e!423802 (MissingZero!7735 (index!33309 lt!338744)))))

(assert (= (and d!100423 c!83244) b!760227))

(assert (= (and d!100423 (not c!83244)) b!760230))

(assert (= (and b!760230 c!83242) b!760228))

(assert (= (and b!760230 (not c!83242)) b!760231))

(assert (= (and b!760231 c!83243) b!760232))

(assert (= (and b!760231 (not c!83243)) b!760229))

(assert (=> b!760229 m!707429))

(declare-fun m!707521 () Bool)

(assert (=> b!760229 m!707521))

(declare-fun m!707523 () Bool)

(assert (=> b!760230 m!707523))

(assert (=> d!100423 m!707457))

(declare-fun m!707525 () Bool)

(assert (=> d!100423 m!707525))

(assert (=> d!100423 m!707429))

(assert (=> d!100423 m!707431))

(assert (=> d!100423 m!707431))

(assert (=> d!100423 m!707429))

(assert (=> d!100423 m!707433))

(declare-fun m!707527 () Bool)

(assert (=> d!100423 m!707527))

(declare-fun m!707529 () Bool)

(assert (=> d!100423 m!707529))

(assert (=> b!760157 d!100423))

(declare-fun b!760241 () Bool)

(declare-fun e!423811 () Bool)

(declare-fun e!423813 () Bool)

(assert (=> b!760241 (= e!423811 e!423813)))

(declare-fun lt!338753 () (_ BitVec 64))

(assert (=> b!760241 (= lt!338753 (select (arr!20128 a!3186) j!159))))

(declare-fun lt!338752 () Unit!26310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42039 (_ BitVec 64) (_ BitVec 32)) Unit!26310)

(assert (=> b!760241 (= lt!338752 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338753 j!159))))

(assert (=> b!760241 (arrayContainsKey!0 a!3186 lt!338753 #b00000000000000000000000000000000)))

(declare-fun lt!338751 () Unit!26310)

(assert (=> b!760241 (= lt!338751 lt!338752)))

(declare-fun res!514511 () Bool)

(assert (=> b!760241 (= res!514511 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) (Found!7735 j!159)))))

(assert (=> b!760241 (=> (not res!514511) (not e!423813))))

(declare-fun b!760242 () Bool)

(declare-fun call!34935 () Bool)

(assert (=> b!760242 (= e!423813 call!34935)))

(declare-fun bm!34932 () Bool)

(assert (=> bm!34932 (= call!34935 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760244 () Bool)

(declare-fun e!423812 () Bool)

(assert (=> b!760244 (= e!423812 e!423811)))

(declare-fun c!83247 () Bool)

(assert (=> b!760244 (= c!83247 (validKeyInArray!0 (select (arr!20128 a!3186) j!159)))))

(declare-fun d!100425 () Bool)

(declare-fun res!514512 () Bool)

(assert (=> d!100425 (=> res!514512 e!423812)))

(assert (=> d!100425 (= res!514512 (bvsge j!159 (size!20549 a!3186)))))

(assert (=> d!100425 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!423812)))

(declare-fun b!760243 () Bool)

(assert (=> b!760243 (= e!423811 call!34935)))

(assert (= (and d!100425 (not res!514512)) b!760244))

(assert (= (and b!760244 c!83247) b!760241))

(assert (= (and b!760244 (not c!83247)) b!760243))

(assert (= (and b!760241 res!514511) b!760242))

(assert (= (or b!760242 b!760243) bm!34932))

(assert (=> b!760241 m!707429))

(declare-fun m!707531 () Bool)

(assert (=> b!760241 m!707531))

(declare-fun m!707533 () Bool)

(assert (=> b!760241 m!707533))

(assert (=> b!760241 m!707429))

(assert (=> b!760241 m!707451))

(declare-fun m!707535 () Bool)

(assert (=> bm!34932 m!707535))

(assert (=> b!760244 m!707429))

(assert (=> b!760244 m!707429))

(assert (=> b!760244 m!707461))

(assert (=> b!760156 d!100425))

(declare-fun d!100427 () Bool)

(assert (=> d!100427 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338756 () Unit!26310)

(declare-fun choose!38 (array!42039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26310)

(assert (=> d!100427 (= lt!338756 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100427 (validMask!0 mask!3328)))

(assert (=> d!100427 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!338756)))

(declare-fun bs!21380 () Bool)

(assert (= bs!21380 d!100427))

(assert (=> bs!21380 m!707447))

(declare-fun m!707537 () Bool)

(assert (=> bs!21380 m!707537))

(assert (=> bs!21380 m!707457))

(assert (=> b!760156 d!100427))

(declare-fun d!100431 () Bool)

(assert (=> d!100431 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760149 d!100431))

(declare-fun b!760269 () Bool)

(declare-fun e!423831 () SeekEntryResult!7735)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760269 (= e!423831 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760270 () Bool)

(declare-fun e!423830 () SeekEntryResult!7735)

(assert (=> b!760270 (= e!423830 (Found!7735 resIntermediateIndex!5))))

(declare-fun b!760271 () Bool)

(declare-fun e!423829 () SeekEntryResult!7735)

(assert (=> b!760271 (= e!423829 Undefined!7735)))

(declare-fun lt!338770 () SeekEntryResult!7735)

(declare-fun d!100433 () Bool)

(assert (=> d!100433 (and (or ((_ is Undefined!7735) lt!338770) (not ((_ is Found!7735) lt!338770)) (and (bvsge (index!33308 lt!338770) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338770) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338770) ((_ is Found!7735) lt!338770) (not ((_ is MissingVacant!7735) lt!338770)) (not (= (index!33310 lt!338770) resIntermediateIndex!5)) (and (bvsge (index!33310 lt!338770) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338770) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338770) (ite ((_ is Found!7735) lt!338770) (= (select (arr!20128 a!3186) (index!33308 lt!338770)) (select (arr!20128 a!3186) j!159)) (and ((_ is MissingVacant!7735) lt!338770) (= (index!33310 lt!338770) resIntermediateIndex!5) (= (select (arr!20128 a!3186) (index!33310 lt!338770)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100433 (= lt!338770 e!423829)))

(declare-fun c!83258 () Bool)

(assert (=> d!100433 (= c!83258 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!338771 () (_ BitVec 64))

(assert (=> d!100433 (= lt!338771 (select (arr!20128 a!3186) resIntermediateIndex!5))))

(assert (=> d!100433 (validMask!0 mask!3328)))

(assert (=> d!100433 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338770)))

(declare-fun b!760272 () Bool)

(assert (=> b!760272 (= e!423831 (MissingVacant!7735 resIntermediateIndex!5))))

(declare-fun b!760273 () Bool)

(declare-fun c!83257 () Bool)

(assert (=> b!760273 (= c!83257 (= lt!338771 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760273 (= e!423830 e!423831)))

(declare-fun b!760274 () Bool)

(assert (=> b!760274 (= e!423829 e!423830)))

(declare-fun c!83259 () Bool)

(assert (=> b!760274 (= c!83259 (= lt!338771 (select (arr!20128 a!3186) j!159)))))

(assert (= (and d!100433 c!83258) b!760271))

(assert (= (and d!100433 (not c!83258)) b!760274))

(assert (= (and b!760274 c!83259) b!760270))

(assert (= (and b!760274 (not c!83259)) b!760273))

(assert (= (and b!760273 c!83257) b!760272))

(assert (= (and b!760273 (not c!83257)) b!760269))

(declare-fun m!707551 () Bool)

(assert (=> b!760269 m!707551))

(assert (=> b!760269 m!707551))

(assert (=> b!760269 m!707429))

(declare-fun m!707553 () Bool)

(assert (=> b!760269 m!707553))

(declare-fun m!707555 () Bool)

(assert (=> d!100433 m!707555))

(declare-fun m!707557 () Bool)

(assert (=> d!100433 m!707557))

(assert (=> d!100433 m!707469))

(assert (=> d!100433 m!707457))

(assert (=> b!760148 d!100433))

(declare-fun b!760362 () Bool)

(declare-fun e!423885 () SeekEntryResult!7735)

(declare-fun e!423888 () SeekEntryResult!7735)

(assert (=> b!760362 (= e!423885 e!423888)))

(declare-fun c!83288 () Bool)

(declare-fun lt!338800 () (_ BitVec 64))

(assert (=> b!760362 (= c!83288 (or (= lt!338800 (select (arr!20128 a!3186) j!159)) (= (bvadd lt!338800 lt!338800) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760363 () Bool)

(declare-fun lt!338801 () SeekEntryResult!7735)

(assert (=> b!760363 (and (bvsge (index!33309 lt!338801) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338801) (size!20549 a!3186)))))

(declare-fun res!514555 () Bool)

(assert (=> b!760363 (= res!514555 (= (select (arr!20128 a!3186) (index!33309 lt!338801)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423886 () Bool)

(assert (=> b!760363 (=> res!514555 e!423886)))

(declare-fun b!760364 () Bool)

(declare-fun e!423887 () Bool)

(declare-fun e!423884 () Bool)

(assert (=> b!760364 (= e!423887 e!423884)))

(declare-fun res!514556 () Bool)

(assert (=> b!760364 (= res!514556 (and ((_ is Intermediate!7735) lt!338801) (not (undefined!8547 lt!338801)) (bvslt (x!64223 lt!338801) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338801) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338801) #b00000000000000000000000000000000)))))

(assert (=> b!760364 (=> (not res!514556) (not e!423884))))

(declare-fun b!760365 () Bool)

(assert (=> b!760365 (and (bvsge (index!33309 lt!338801) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338801) (size!20549 a!3186)))))

(assert (=> b!760365 (= e!423886 (= (select (arr!20128 a!3186) (index!33309 lt!338801)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100439 () Bool)

(assert (=> d!100439 e!423887))

(declare-fun c!83287 () Bool)

(assert (=> d!100439 (= c!83287 (and ((_ is Intermediate!7735) lt!338801) (undefined!8547 lt!338801)))))

(assert (=> d!100439 (= lt!338801 e!423885)))

(declare-fun c!83289 () Bool)

(assert (=> d!100439 (= c!83289 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100439 (= lt!338800 (select (arr!20128 a!3186) (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328)))))

(assert (=> d!100439 (validMask!0 mask!3328)))

(assert (=> d!100439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338801)))

(declare-fun b!760366 () Bool)

(assert (=> b!760366 (= e!423885 (Intermediate!7735 true (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760367 () Bool)

(assert (=> b!760367 (= e!423888 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760368 () Bool)

(assert (=> b!760368 (= e!423888 (Intermediate!7735 false (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760369 () Bool)

(assert (=> b!760369 (= e!423887 (bvsge (x!64223 lt!338801) #b01111111111111111111111111111110))))

(declare-fun b!760370 () Bool)

(assert (=> b!760370 (and (bvsge (index!33309 lt!338801) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338801) (size!20549 a!3186)))))

(declare-fun res!514554 () Bool)

(assert (=> b!760370 (= res!514554 (= (select (arr!20128 a!3186) (index!33309 lt!338801)) (select (arr!20128 a!3186) j!159)))))

(assert (=> b!760370 (=> res!514554 e!423886)))

(assert (=> b!760370 (= e!423884 e!423886)))

(assert (= (and d!100439 c!83289) b!760366))

(assert (= (and d!100439 (not c!83289)) b!760362))

(assert (= (and b!760362 c!83288) b!760368))

(assert (= (and b!760362 (not c!83288)) b!760367))

(assert (= (and d!100439 c!83287) b!760369))

(assert (= (and d!100439 (not c!83287)) b!760364))

(assert (= (and b!760364 res!514556) b!760370))

(assert (= (and b!760370 (not res!514554)) b!760363))

(assert (= (and b!760363 (not res!514555)) b!760365))

(declare-fun m!707583 () Bool)

(assert (=> b!760365 m!707583))

(assert (=> b!760363 m!707583))

(assert (=> d!100439 m!707431))

(declare-fun m!707585 () Bool)

(assert (=> d!100439 m!707585))

(assert (=> d!100439 m!707457))

(assert (=> b!760367 m!707431))

(declare-fun m!707587 () Bool)

(assert (=> b!760367 m!707587))

(assert (=> b!760367 m!707587))

(assert (=> b!760367 m!707429))

(declare-fun m!707589 () Bool)

(assert (=> b!760367 m!707589))

(assert (=> b!760370 m!707583))

(assert (=> b!760159 d!100439))

(declare-fun d!100451 () Bool)

(declare-fun lt!338807 () (_ BitVec 32))

(declare-fun lt!338806 () (_ BitVec 32))

(assert (=> d!100451 (= lt!338807 (bvmul (bvxor lt!338806 (bvlshr lt!338806 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100451 (= lt!338806 ((_ extract 31 0) (bvand (bvxor (select (arr!20128 a!3186) j!159) (bvlshr (select (arr!20128 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100451 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514557 (let ((h!15258 ((_ extract 31 0) (bvand (bvxor (select (arr!20128 a!3186) j!159) (bvlshr (select (arr!20128 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64231 (bvmul (bvxor h!15258 (bvlshr h!15258 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64231 (bvlshr x!64231 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514557 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514557 #b00000000000000000000000000000000))))))

(assert (=> d!100451 (= (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) (bvand (bvxor lt!338807 (bvlshr lt!338807 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760159 d!100451))

(declare-fun b!760371 () Bool)

(declare-fun e!423890 () SeekEntryResult!7735)

(declare-fun e!423893 () SeekEntryResult!7735)

(assert (=> b!760371 (= e!423890 e!423893)))

(declare-fun c!83291 () Bool)

(declare-fun lt!338808 () (_ BitVec 64))

(assert (=> b!760371 (= c!83291 (or (= lt!338808 lt!338704) (= (bvadd lt!338808 lt!338808) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760372 () Bool)

(declare-fun lt!338809 () SeekEntryResult!7735)

(assert (=> b!760372 (and (bvsge (index!33309 lt!338809) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338809) (size!20549 lt!338707)))))

(declare-fun res!514559 () Bool)

(assert (=> b!760372 (= res!514559 (= (select (arr!20128 lt!338707) (index!33309 lt!338809)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423891 () Bool)

(assert (=> b!760372 (=> res!514559 e!423891)))

(declare-fun b!760373 () Bool)

(declare-fun e!423892 () Bool)

(declare-fun e!423889 () Bool)

(assert (=> b!760373 (= e!423892 e!423889)))

(declare-fun res!514560 () Bool)

(assert (=> b!760373 (= res!514560 (and ((_ is Intermediate!7735) lt!338809) (not (undefined!8547 lt!338809)) (bvslt (x!64223 lt!338809) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338809) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338809) x!1131)))))

(assert (=> b!760373 (=> (not res!514560) (not e!423889))))

(declare-fun b!760374 () Bool)

(assert (=> b!760374 (and (bvsge (index!33309 lt!338809) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338809) (size!20549 lt!338707)))))

(assert (=> b!760374 (= e!423891 (= (select (arr!20128 lt!338707) (index!33309 lt!338809)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100453 () Bool)

(assert (=> d!100453 e!423892))

(declare-fun c!83290 () Bool)

(assert (=> d!100453 (= c!83290 (and ((_ is Intermediate!7735) lt!338809) (undefined!8547 lt!338809)))))

(assert (=> d!100453 (= lt!338809 e!423890)))

(declare-fun c!83292 () Bool)

(assert (=> d!100453 (= c!83292 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100453 (= lt!338808 (select (arr!20128 lt!338707) index!1321))))

(assert (=> d!100453 (validMask!0 mask!3328)))

(assert (=> d!100453 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338704 lt!338707 mask!3328) lt!338809)))

(declare-fun b!760375 () Bool)

(assert (=> b!760375 (= e!423890 (Intermediate!7735 true index!1321 x!1131))))

(declare-fun b!760376 () Bool)

(assert (=> b!760376 (= e!423893 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338704 lt!338707 mask!3328))))

(declare-fun b!760377 () Bool)

(assert (=> b!760377 (= e!423893 (Intermediate!7735 false index!1321 x!1131))))

(declare-fun b!760378 () Bool)

(assert (=> b!760378 (= e!423892 (bvsge (x!64223 lt!338809) #b01111111111111111111111111111110))))

(declare-fun b!760379 () Bool)

(assert (=> b!760379 (and (bvsge (index!33309 lt!338809) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338809) (size!20549 lt!338707)))))

(declare-fun res!514558 () Bool)

(assert (=> b!760379 (= res!514558 (= (select (arr!20128 lt!338707) (index!33309 lt!338809)) lt!338704))))

(assert (=> b!760379 (=> res!514558 e!423891)))

(assert (=> b!760379 (= e!423889 e!423891)))

(assert (= (and d!100453 c!83292) b!760375))

(assert (= (and d!100453 (not c!83292)) b!760371))

(assert (= (and b!760371 c!83291) b!760377))

(assert (= (and b!760371 (not c!83291)) b!760376))

(assert (= (and d!100453 c!83290) b!760378))

(assert (= (and d!100453 (not c!83290)) b!760373))

(assert (= (and b!760373 res!514560) b!760379))

(assert (= (and b!760379 (not res!514558)) b!760372))

(assert (= (and b!760372 (not res!514559)) b!760374))

(declare-fun m!707591 () Bool)

(assert (=> b!760374 m!707591))

(assert (=> b!760372 m!707591))

(declare-fun m!707593 () Bool)

(assert (=> d!100453 m!707593))

(assert (=> d!100453 m!707457))

(declare-fun m!707595 () Bool)

(assert (=> b!760376 m!707595))

(assert (=> b!760376 m!707595))

(declare-fun m!707597 () Bool)

(assert (=> b!760376 m!707597))

(assert (=> b!760379 m!707591))

(assert (=> b!760158 d!100453))

(declare-fun b!760380 () Bool)

(declare-fun e!423895 () SeekEntryResult!7735)

(declare-fun e!423898 () SeekEntryResult!7735)

(assert (=> b!760380 (= e!423895 e!423898)))

(declare-fun c!83294 () Bool)

(declare-fun lt!338810 () (_ BitVec 64))

(assert (=> b!760380 (= c!83294 (or (= lt!338810 lt!338704) (= (bvadd lt!338810 lt!338810) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760381 () Bool)

(declare-fun lt!338811 () SeekEntryResult!7735)

(assert (=> b!760381 (and (bvsge (index!33309 lt!338811) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338811) (size!20549 lt!338707)))))

(declare-fun res!514562 () Bool)

(assert (=> b!760381 (= res!514562 (= (select (arr!20128 lt!338707) (index!33309 lt!338811)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423896 () Bool)

(assert (=> b!760381 (=> res!514562 e!423896)))

(declare-fun b!760382 () Bool)

(declare-fun e!423897 () Bool)

(declare-fun e!423894 () Bool)

(assert (=> b!760382 (= e!423897 e!423894)))

(declare-fun res!514563 () Bool)

(assert (=> b!760382 (= res!514563 (and ((_ is Intermediate!7735) lt!338811) (not (undefined!8547 lt!338811)) (bvslt (x!64223 lt!338811) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338811) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338811) #b00000000000000000000000000000000)))))

(assert (=> b!760382 (=> (not res!514563) (not e!423894))))

(declare-fun b!760383 () Bool)

(assert (=> b!760383 (and (bvsge (index!33309 lt!338811) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338811) (size!20549 lt!338707)))))

(assert (=> b!760383 (= e!423896 (= (select (arr!20128 lt!338707) (index!33309 lt!338811)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100455 () Bool)

(assert (=> d!100455 e!423897))

(declare-fun c!83293 () Bool)

(assert (=> d!100455 (= c!83293 (and ((_ is Intermediate!7735) lt!338811) (undefined!8547 lt!338811)))))

(assert (=> d!100455 (= lt!338811 e!423895)))

(declare-fun c!83295 () Bool)

(assert (=> d!100455 (= c!83295 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100455 (= lt!338810 (select (arr!20128 lt!338707) (toIndex!0 lt!338704 mask!3328)))))

(assert (=> d!100455 (validMask!0 mask!3328)))

(assert (=> d!100455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338704 mask!3328) lt!338704 lt!338707 mask!3328) lt!338811)))

(declare-fun b!760384 () Bool)

(assert (=> b!760384 (= e!423895 (Intermediate!7735 true (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760385 () Bool)

(assert (=> b!760385 (= e!423898 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338704 lt!338707 mask!3328))))

(declare-fun b!760386 () Bool)

(assert (=> b!760386 (= e!423898 (Intermediate!7735 false (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760387 () Bool)

(assert (=> b!760387 (= e!423897 (bvsge (x!64223 lt!338811) #b01111111111111111111111111111110))))

(declare-fun b!760388 () Bool)

(assert (=> b!760388 (and (bvsge (index!33309 lt!338811) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338811) (size!20549 lt!338707)))))

(declare-fun res!514561 () Bool)

(assert (=> b!760388 (= res!514561 (= (select (arr!20128 lt!338707) (index!33309 lt!338811)) lt!338704))))

(assert (=> b!760388 (=> res!514561 e!423896)))

(assert (=> b!760388 (= e!423894 e!423896)))

(assert (= (and d!100455 c!83295) b!760384))

(assert (= (and d!100455 (not c!83295)) b!760380))

(assert (= (and b!760380 c!83294) b!760386))

(assert (= (and b!760380 (not c!83294)) b!760385))

(assert (= (and d!100455 c!83293) b!760387))

(assert (= (and d!100455 (not c!83293)) b!760382))

(assert (= (and b!760382 res!514563) b!760388))

(assert (= (and b!760388 (not res!514561)) b!760381))

(assert (= (and b!760381 (not res!514562)) b!760383))

(declare-fun m!707599 () Bool)

(assert (=> b!760383 m!707599))

(assert (=> b!760381 m!707599))

(assert (=> d!100455 m!707441))

(declare-fun m!707601 () Bool)

(assert (=> d!100455 m!707601))

(assert (=> d!100455 m!707457))

(assert (=> b!760385 m!707441))

(declare-fun m!707603 () Bool)

(assert (=> b!760385 m!707603))

(assert (=> b!760385 m!707603))

(declare-fun m!707605 () Bool)

(assert (=> b!760385 m!707605))

(assert (=> b!760388 m!707599))

(assert (=> b!760158 d!100455))

(declare-fun d!100457 () Bool)

(declare-fun lt!338813 () (_ BitVec 32))

(declare-fun lt!338812 () (_ BitVec 32))

(assert (=> d!100457 (= lt!338813 (bvmul (bvxor lt!338812 (bvlshr lt!338812 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100457 (= lt!338812 ((_ extract 31 0) (bvand (bvxor lt!338704 (bvlshr lt!338704 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100457 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514557 (let ((h!15258 ((_ extract 31 0) (bvand (bvxor lt!338704 (bvlshr lt!338704 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64231 (bvmul (bvxor h!15258 (bvlshr h!15258 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64231 (bvlshr x!64231 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514557 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514557 #b00000000000000000000000000000000))))))

(assert (=> d!100457 (= (toIndex!0 lt!338704 mask!3328) (bvand (bvxor lt!338813 (bvlshr lt!338813 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760158 d!100457))

(declare-fun b!760390 () Bool)

(declare-fun e!423900 () SeekEntryResult!7735)

(declare-fun lt!338816 () SeekEntryResult!7735)

(assert (=> b!760390 (= e!423900 (Found!7735 (index!33309 lt!338816)))))

(declare-fun e!423899 () SeekEntryResult!7735)

(declare-fun b!760391 () Bool)

(assert (=> b!760391 (= e!423899 (seekKeyOrZeroReturnVacant!0 (x!64223 lt!338816) (index!33309 lt!338816) (index!33309 lt!338816) k0!2102 a!3186 mask!3328))))

(declare-fun b!760392 () Bool)

(declare-fun e!423901 () SeekEntryResult!7735)

(assert (=> b!760392 (= e!423901 e!423900)))

(declare-fun lt!338815 () (_ BitVec 64))

(assert (=> b!760392 (= lt!338815 (select (arr!20128 a!3186) (index!33309 lt!338816)))))

(declare-fun c!83296 () Bool)

(assert (=> b!760392 (= c!83296 (= lt!338815 k0!2102))))

(declare-fun d!100459 () Bool)

(declare-fun lt!338814 () SeekEntryResult!7735)

(assert (=> d!100459 (and (or ((_ is Undefined!7735) lt!338814) (not ((_ is Found!7735) lt!338814)) (and (bvsge (index!33308 lt!338814) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338814) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338814) ((_ is Found!7735) lt!338814) (not ((_ is MissingZero!7735) lt!338814)) (and (bvsge (index!33307 lt!338814) #b00000000000000000000000000000000) (bvslt (index!33307 lt!338814) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338814) ((_ is Found!7735) lt!338814) ((_ is MissingZero!7735) lt!338814) (not ((_ is MissingVacant!7735) lt!338814)) (and (bvsge (index!33310 lt!338814) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338814) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338814) (ite ((_ is Found!7735) lt!338814) (= (select (arr!20128 a!3186) (index!33308 lt!338814)) k0!2102) (ite ((_ is MissingZero!7735) lt!338814) (= (select (arr!20128 a!3186) (index!33307 lt!338814)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7735) lt!338814) (= (select (arr!20128 a!3186) (index!33310 lt!338814)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100459 (= lt!338814 e!423901)))

(declare-fun c!83298 () Bool)

(assert (=> d!100459 (= c!83298 (and ((_ is Intermediate!7735) lt!338816) (undefined!8547 lt!338816)))))

(assert (=> d!100459 (= lt!338816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!100459 (validMask!0 mask!3328)))

(assert (=> d!100459 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!338814)))

(declare-fun b!760389 () Bool)

(assert (=> b!760389 (= e!423901 Undefined!7735)))

(declare-fun b!760393 () Bool)

(declare-fun c!83297 () Bool)

(assert (=> b!760393 (= c!83297 (= lt!338815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760393 (= e!423900 e!423899)))

(declare-fun b!760394 () Bool)

(assert (=> b!760394 (= e!423899 (MissingZero!7735 (index!33309 lt!338816)))))

(assert (= (and d!100459 c!83298) b!760389))

(assert (= (and d!100459 (not c!83298)) b!760392))

(assert (= (and b!760392 c!83296) b!760390))

(assert (= (and b!760392 (not c!83296)) b!760393))

(assert (= (and b!760393 c!83297) b!760394))

(assert (= (and b!760393 (not c!83297)) b!760391))

(declare-fun m!707607 () Bool)

(assert (=> b!760391 m!707607))

(declare-fun m!707609 () Bool)

(assert (=> b!760392 m!707609))

(assert (=> d!100459 m!707457))

(declare-fun m!707611 () Bool)

(assert (=> d!100459 m!707611))

(declare-fun m!707613 () Bool)

(assert (=> d!100459 m!707613))

(assert (=> d!100459 m!707613))

(declare-fun m!707615 () Bool)

(assert (=> d!100459 m!707615))

(declare-fun m!707617 () Bool)

(assert (=> d!100459 m!707617))

(declare-fun m!707619 () Bool)

(assert (=> d!100459 m!707619))

(assert (=> b!760147 d!100459))

(declare-fun b!760395 () Bool)

(declare-fun e!423904 () SeekEntryResult!7735)

(assert (=> b!760395 (= e!423904 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760396 () Bool)

(declare-fun e!423903 () SeekEntryResult!7735)

(assert (=> b!760396 (= e!423903 (Found!7735 index!1321))))

(declare-fun b!760397 () Bool)

(declare-fun e!423902 () SeekEntryResult!7735)

(assert (=> b!760397 (= e!423902 Undefined!7735)))

(declare-fun lt!338817 () SeekEntryResult!7735)

(declare-fun d!100461 () Bool)

(assert (=> d!100461 (and (or ((_ is Undefined!7735) lt!338817) (not ((_ is Found!7735) lt!338817)) (and (bvsge (index!33308 lt!338817) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338817) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338817) ((_ is Found!7735) lt!338817) (not ((_ is MissingVacant!7735) lt!338817)) (not (= (index!33310 lt!338817) resIntermediateIndex!5)) (and (bvsge (index!33310 lt!338817) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338817) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338817) (ite ((_ is Found!7735) lt!338817) (= (select (arr!20128 a!3186) (index!33308 lt!338817)) (select (arr!20128 a!3186) j!159)) (and ((_ is MissingVacant!7735) lt!338817) (= (index!33310 lt!338817) resIntermediateIndex!5) (= (select (arr!20128 a!3186) (index!33310 lt!338817)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100461 (= lt!338817 e!423902)))

(declare-fun c!83300 () Bool)

(assert (=> d!100461 (= c!83300 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338818 () (_ BitVec 64))

(assert (=> d!100461 (= lt!338818 (select (arr!20128 a!3186) index!1321))))

(assert (=> d!100461 (validMask!0 mask!3328)))

(assert (=> d!100461 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338817)))

(declare-fun b!760398 () Bool)

(assert (=> b!760398 (= e!423904 (MissingVacant!7735 resIntermediateIndex!5))))

(declare-fun b!760399 () Bool)

(declare-fun c!83299 () Bool)

(assert (=> b!760399 (= c!83299 (= lt!338818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760399 (= e!423903 e!423904)))

(declare-fun b!760400 () Bool)

(assert (=> b!760400 (= e!423902 e!423903)))

(declare-fun c!83301 () Bool)

(assert (=> b!760400 (= c!83301 (= lt!338818 (select (arr!20128 a!3186) j!159)))))

(assert (= (and d!100461 c!83300) b!760397))

(assert (= (and d!100461 (not c!83300)) b!760400))

(assert (= (and b!760400 c!83301) b!760396))

(assert (= (and b!760400 (not c!83301)) b!760399))

(assert (= (and b!760399 c!83299) b!760398))

(assert (= (and b!760399 (not c!83299)) b!760395))

(assert (=> b!760395 m!707595))

(assert (=> b!760395 m!707595))

(assert (=> b!760395 m!707429))

(declare-fun m!707621 () Bool)

(assert (=> b!760395 m!707621))

(declare-fun m!707623 () Bool)

(assert (=> d!100461 m!707623))

(declare-fun m!707625 () Bool)

(assert (=> d!100461 m!707625))

(declare-fun m!707627 () Bool)

(assert (=> d!100461 m!707627))

(assert (=> d!100461 m!707457))

(assert (=> b!760151 d!100461))

(declare-fun b!760447 () Bool)

(declare-fun e!423933 () Bool)

(declare-fun call!34944 () Bool)

(assert (=> b!760447 (= e!423933 call!34944)))

(declare-fun bm!34941 () Bool)

(declare-fun c!83322 () Bool)

(assert (=> bm!34941 (= call!34944 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83322 (Cons!14179 (select (arr!20128 a!3186) #b00000000000000000000000000000000) Nil!14180) Nil!14180)))))

(declare-fun b!760448 () Bool)

(declare-fun e!423931 () Bool)

(declare-fun e!423932 () Bool)

(assert (=> b!760448 (= e!423931 e!423932)))

(declare-fun res!514570 () Bool)

(assert (=> b!760448 (=> (not res!514570) (not e!423932))))

(declare-fun e!423934 () Bool)

(assert (=> b!760448 (= res!514570 (not e!423934))))

(declare-fun res!514571 () Bool)

(assert (=> b!760448 (=> (not res!514571) (not e!423934))))

(assert (=> b!760448 (= res!514571 (validKeyInArray!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100463 () Bool)

(declare-fun res!514572 () Bool)

(assert (=> d!100463 (=> res!514572 e!423931)))

(assert (=> d!100463 (= res!514572 (bvsge #b00000000000000000000000000000000 (size!20549 a!3186)))))

(assert (=> d!100463 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14180) e!423931)))

(declare-fun b!760449 () Bool)

(assert (=> b!760449 (= e!423932 e!423933)))

(assert (=> b!760449 (= c!83322 (validKeyInArray!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760450 () Bool)

(declare-fun contains!4068 (List!14183 (_ BitVec 64)) Bool)

(assert (=> b!760450 (= e!423934 (contains!4068 Nil!14180 (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760451 () Bool)

(assert (=> b!760451 (= e!423933 call!34944)))

(assert (= (and d!100463 (not res!514572)) b!760448))

(assert (= (and b!760448 res!514571) b!760450))

(assert (= (and b!760448 res!514570) b!760449))

(assert (= (and b!760449 c!83322) b!760451))

(assert (= (and b!760449 (not c!83322)) b!760447))

(assert (= (or b!760451 b!760447) bm!34941))

(declare-fun m!707649 () Bool)

(assert (=> bm!34941 m!707649))

(declare-fun m!707651 () Bool)

(assert (=> bm!34941 m!707651))

(assert (=> b!760448 m!707649))

(assert (=> b!760448 m!707649))

(declare-fun m!707653 () Bool)

(assert (=> b!760448 m!707653))

(assert (=> b!760449 m!707649))

(assert (=> b!760449 m!707649))

(assert (=> b!760449 m!707653))

(assert (=> b!760450 m!707649))

(assert (=> b!760450 m!707649))

(declare-fun m!707661 () Bool)

(assert (=> b!760450 m!707661))

(assert (=> b!760150 d!100463))

(declare-fun b!760467 () Bool)

(declare-fun e!423944 () SeekEntryResult!7735)

(declare-fun e!423947 () SeekEntryResult!7735)

(assert (=> b!760467 (= e!423944 e!423947)))

(declare-fun c!83330 () Bool)

(declare-fun lt!338839 () (_ BitVec 64))

(assert (=> b!760467 (= c!83330 (or (= lt!338839 (select (arr!20128 a!3186) j!159)) (= (bvadd lt!338839 lt!338839) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760468 () Bool)

(declare-fun lt!338840 () SeekEntryResult!7735)

(assert (=> b!760468 (and (bvsge (index!33309 lt!338840) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338840) (size!20549 a!3186)))))

(declare-fun res!514577 () Bool)

(assert (=> b!760468 (= res!514577 (= (select (arr!20128 a!3186) (index!33309 lt!338840)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423945 () Bool)

(assert (=> b!760468 (=> res!514577 e!423945)))

(declare-fun b!760469 () Bool)

(declare-fun e!423946 () Bool)

(declare-fun e!423943 () Bool)

(assert (=> b!760469 (= e!423946 e!423943)))

(declare-fun res!514578 () Bool)

(assert (=> b!760469 (= res!514578 (and ((_ is Intermediate!7735) lt!338840) (not (undefined!8547 lt!338840)) (bvslt (x!64223 lt!338840) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338840) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338840) x!1131)))))

(assert (=> b!760469 (=> (not res!514578) (not e!423943))))

(declare-fun b!760470 () Bool)

(assert (=> b!760470 (and (bvsge (index!33309 lt!338840) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338840) (size!20549 a!3186)))))

(assert (=> b!760470 (= e!423945 (= (select (arr!20128 a!3186) (index!33309 lt!338840)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100471 () Bool)

(assert (=> d!100471 e!423946))

(declare-fun c!83329 () Bool)

(assert (=> d!100471 (= c!83329 (and ((_ is Intermediate!7735) lt!338840) (undefined!8547 lt!338840)))))

(assert (=> d!100471 (= lt!338840 e!423944)))

(declare-fun c!83331 () Bool)

(assert (=> d!100471 (= c!83331 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100471 (= lt!338839 (select (arr!20128 a!3186) index!1321))))

(assert (=> d!100471 (validMask!0 mask!3328)))

(assert (=> d!100471 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338840)))

(declare-fun b!760471 () Bool)

(assert (=> b!760471 (= e!423944 (Intermediate!7735 true index!1321 x!1131))))

(declare-fun b!760472 () Bool)

(assert (=> b!760472 (= e!423947 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760473 () Bool)

(assert (=> b!760473 (= e!423947 (Intermediate!7735 false index!1321 x!1131))))

(declare-fun b!760474 () Bool)

(assert (=> b!760474 (= e!423946 (bvsge (x!64223 lt!338840) #b01111111111111111111111111111110))))

(declare-fun b!760475 () Bool)

(assert (=> b!760475 (and (bvsge (index!33309 lt!338840) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338840) (size!20549 a!3186)))))

(declare-fun res!514576 () Bool)

(assert (=> b!760475 (= res!514576 (= (select (arr!20128 a!3186) (index!33309 lt!338840)) (select (arr!20128 a!3186) j!159)))))

(assert (=> b!760475 (=> res!514576 e!423945)))

(assert (=> b!760475 (= e!423943 e!423945)))

(assert (= (and d!100471 c!83331) b!760471))

(assert (= (and d!100471 (not c!83331)) b!760467))

(assert (= (and b!760467 c!83330) b!760473))

(assert (= (and b!760467 (not c!83330)) b!760472))

(assert (= (and d!100471 c!83329) b!760474))

(assert (= (and d!100471 (not c!83329)) b!760469))

(assert (= (and b!760469 res!514578) b!760475))

(assert (= (and b!760475 (not res!514576)) b!760468))

(assert (= (and b!760468 (not res!514577)) b!760470))

(declare-fun m!707675 () Bool)

(assert (=> b!760470 m!707675))

(assert (=> b!760468 m!707675))

(assert (=> d!100471 m!707627))

(assert (=> d!100471 m!707457))

(assert (=> b!760472 m!707595))

(assert (=> b!760472 m!707595))

(assert (=> b!760472 m!707429))

(declare-fun m!707677 () Bool)

(assert (=> b!760472 m!707677))

(assert (=> b!760475 m!707675))

(assert (=> b!760160 d!100471))

(declare-fun d!100477 () Bool)

(assert (=> d!100477 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65976 d!100477))

(declare-fun d!100487 () Bool)

(assert (=> d!100487 (= (array_inv!15902 a!3186) (bvsge (size!20549 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65976 d!100487))

(declare-fun b!760516 () Bool)

(declare-fun e!423969 () Bool)

(declare-fun e!423971 () Bool)

(assert (=> b!760516 (= e!423969 e!423971)))

(declare-fun lt!338861 () (_ BitVec 64))

(assert (=> b!760516 (= lt!338861 (select (arr!20128 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!338860 () Unit!26310)

(assert (=> b!760516 (= lt!338860 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338861 #b00000000000000000000000000000000))))

(assert (=> b!760516 (arrayContainsKey!0 a!3186 lt!338861 #b00000000000000000000000000000000)))

(declare-fun lt!338857 () Unit!26310)

(assert (=> b!760516 (= lt!338857 lt!338860)))

(declare-fun res!514585 () Bool)

(assert (=> b!760516 (= res!514585 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7735 #b00000000000000000000000000000000)))))

(assert (=> b!760516 (=> (not res!514585) (not e!423971))))

(declare-fun b!760517 () Bool)

(declare-fun call!34945 () Bool)

(assert (=> b!760517 (= e!423971 call!34945)))

(declare-fun bm!34942 () Bool)

(assert (=> bm!34942 (= call!34945 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760519 () Bool)

(declare-fun e!423970 () Bool)

(assert (=> b!760519 (= e!423970 e!423969)))

(declare-fun c!83349 () Bool)

(assert (=> b!760519 (= c!83349 (validKeyInArray!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100489 () Bool)

(declare-fun res!514586 () Bool)

(assert (=> d!100489 (=> res!514586 e!423970)))

(assert (=> d!100489 (= res!514586 (bvsge #b00000000000000000000000000000000 (size!20549 a!3186)))))

(assert (=> d!100489 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!423970)))

(declare-fun b!760518 () Bool)

(assert (=> b!760518 (= e!423969 call!34945)))

(assert (= (and d!100489 (not res!514586)) b!760519))

(assert (= (and b!760519 c!83349) b!760516))

(assert (= (and b!760519 (not c!83349)) b!760518))

(assert (= (and b!760516 res!514585) b!760517))

(assert (= (or b!760517 b!760518) bm!34942))

(assert (=> b!760516 m!707649))

(declare-fun m!707701 () Bool)

(assert (=> b!760516 m!707701))

(declare-fun m!707703 () Bool)

(assert (=> b!760516 m!707703))

(assert (=> b!760516 m!707649))

(declare-fun m!707705 () Bool)

(assert (=> b!760516 m!707705))

(declare-fun m!707707 () Bool)

(assert (=> bm!34942 m!707707))

(assert (=> b!760519 m!707649))

(assert (=> b!760519 m!707649))

(assert (=> b!760519 m!707653))

(assert (=> b!760153 d!100489))

(declare-fun d!100491 () Bool)

(assert (=> d!100491 (= (validKeyInArray!0 (select (arr!20128 a!3186) j!159)) (and (not (= (select (arr!20128 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20128 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760152 d!100491))

(declare-fun d!100493 () Bool)

(declare-fun res!514591 () Bool)

(declare-fun e!423980 () Bool)

(assert (=> d!100493 (=> res!514591 e!423980)))

(assert (=> d!100493 (= res!514591 (= (select (arr!20128 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!100493 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!423980)))

(declare-fun b!760532 () Bool)

(declare-fun e!423981 () Bool)

(assert (=> b!760532 (= e!423980 e!423981)))

(declare-fun res!514592 () Bool)

(assert (=> b!760532 (=> (not res!514592) (not e!423981))))

(assert (=> b!760532 (= res!514592 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(declare-fun b!760533 () Bool)

(assert (=> b!760533 (= e!423981 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100493 (not res!514591)) b!760532))

(assert (= (and b!760532 res!514592) b!760533))

(assert (=> d!100493 m!707649))

(declare-fun m!707709 () Bool)

(assert (=> b!760533 m!707709))

(assert (=> b!760163 d!100493))

(check-sat (not d!100427) (not d!100459) (not d!100455) (not d!100453) (not b!760533) (not b!760376) (not b!760241) (not b!760472) (not d!100423) (not b!760367) (not bm!34932) (not bm!34941) (not b!760449) (not b!760391) (not b!760519) (not d!100433) (not b!760269) (not d!100461) (not b!760450) (not b!760448) (not b!760516) (not b!760385) (not b!760229) (not d!100439) (not bm!34942) (not b!760244) (not b!760395) (not d!100471))
(check-sat)
(get-model)

(assert (=> d!100423 d!100439))

(assert (=> d!100423 d!100451))

(assert (=> d!100423 d!100477))

(declare-fun b!760632 () Bool)

(declare-fun e!424049 () SeekEntryResult!7735)

(declare-fun e!424052 () SeekEntryResult!7735)

(assert (=> b!760632 (= e!424049 e!424052)))

(declare-fun c!83384 () Bool)

(declare-fun lt!338901 () (_ BitVec 64))

(assert (=> b!760632 (= c!83384 (or (= lt!338901 lt!338704) (= (bvadd lt!338901 lt!338901) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760633 () Bool)

(declare-fun lt!338902 () SeekEntryResult!7735)

(assert (=> b!760633 (and (bvsge (index!33309 lt!338902) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338902) (size!20549 lt!338707)))))

(declare-fun res!514634 () Bool)

(assert (=> b!760633 (= res!514634 (= (select (arr!20128 lt!338707) (index!33309 lt!338902)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424050 () Bool)

(assert (=> b!760633 (=> res!514634 e!424050)))

(declare-fun b!760634 () Bool)

(declare-fun e!424051 () Bool)

(declare-fun e!424048 () Bool)

(assert (=> b!760634 (= e!424051 e!424048)))

(declare-fun res!514635 () Bool)

(assert (=> b!760634 (= res!514635 (and ((_ is Intermediate!7735) lt!338902) (not (undefined!8547 lt!338902)) (bvslt (x!64223 lt!338902) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338902) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338902) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!760634 (=> (not res!514635) (not e!424048))))

(declare-fun b!760635 () Bool)

(assert (=> b!760635 (and (bvsge (index!33309 lt!338902) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338902) (size!20549 lt!338707)))))

(assert (=> b!760635 (= e!424050 (= (select (arr!20128 lt!338707) (index!33309 lt!338902)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100537 () Bool)

(assert (=> d!100537 e!424051))

(declare-fun c!83383 () Bool)

(assert (=> d!100537 (= c!83383 (and ((_ is Intermediate!7735) lt!338902) (undefined!8547 lt!338902)))))

(assert (=> d!100537 (= lt!338902 e!424049)))

(declare-fun c!83385 () Bool)

(assert (=> d!100537 (= c!83385 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!100537 (= lt!338901 (select (arr!20128 lt!338707) (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328)))))

(assert (=> d!100537 (validMask!0 mask!3328)))

(assert (=> d!100537 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338704 lt!338707 mask!3328) lt!338902)))

(declare-fun b!760636 () Bool)

(assert (=> b!760636 (= e!424049 (Intermediate!7735 true (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!760637 () Bool)

(assert (=> b!760637 (= e!424052 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3328) lt!338704 lt!338707 mask!3328))))

(declare-fun b!760638 () Bool)

(assert (=> b!760638 (= e!424052 (Intermediate!7735 false (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!760639 () Bool)

(assert (=> b!760639 (= e!424051 (bvsge (x!64223 lt!338902) #b01111111111111111111111111111110))))

(declare-fun b!760640 () Bool)

(assert (=> b!760640 (and (bvsge (index!33309 lt!338902) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338902) (size!20549 lt!338707)))))

(declare-fun res!514633 () Bool)

(assert (=> b!760640 (= res!514633 (= (select (arr!20128 lt!338707) (index!33309 lt!338902)) lt!338704))))

(assert (=> b!760640 (=> res!514633 e!424050)))

(assert (=> b!760640 (= e!424048 e!424050)))

(assert (= (and d!100537 c!83385) b!760636))

(assert (= (and d!100537 (not c!83385)) b!760632))

(assert (= (and b!760632 c!83384) b!760638))

(assert (= (and b!760632 (not c!83384)) b!760637))

(assert (= (and d!100537 c!83383) b!760639))

(assert (= (and d!100537 (not c!83383)) b!760634))

(assert (= (and b!760634 res!514635) b!760640))

(assert (= (and b!760640 (not res!514633)) b!760633))

(assert (= (and b!760633 (not res!514634)) b!760635))

(declare-fun m!707803 () Bool)

(assert (=> b!760635 m!707803))

(assert (=> b!760633 m!707803))

(assert (=> d!100537 m!707603))

(declare-fun m!707805 () Bool)

(assert (=> d!100537 m!707805))

(assert (=> d!100537 m!707457))

(assert (=> b!760637 m!707603))

(declare-fun m!707807 () Bool)

(assert (=> b!760637 m!707807))

(assert (=> b!760637 m!707807))

(declare-fun m!707809 () Bool)

(assert (=> b!760637 m!707809))

(assert (=> b!760640 m!707803))

(assert (=> b!760385 d!100537))

(declare-fun d!100539 () Bool)

(declare-fun lt!338905 () (_ BitVec 32))

(assert (=> d!100539 (and (bvsge lt!338905 #b00000000000000000000000000000000) (bvslt lt!338905 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!100539 (= lt!338905 (choose!52 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328))))

(assert (=> d!100539 (validMask!0 mask!3328)))

(assert (=> d!100539 (= (nextIndex!0 (toIndex!0 lt!338704 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338905)))

(declare-fun bs!21383 () Bool)

(assert (= bs!21383 d!100539))

(assert (=> bs!21383 m!707441))

(declare-fun m!707811 () Bool)

(assert (=> bs!21383 m!707811))

(assert (=> bs!21383 m!707457))

(assert (=> b!760385 d!100539))

(declare-fun b!760641 () Bool)

(declare-fun e!424055 () Bool)

(declare-fun call!34954 () Bool)

(assert (=> b!760641 (= e!424055 call!34954)))

(declare-fun bm!34951 () Bool)

(declare-fun c!83386 () Bool)

(assert (=> bm!34951 (= call!34954 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!83386 (Cons!14179 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!83322 (Cons!14179 (select (arr!20128 a!3186) #b00000000000000000000000000000000) Nil!14180) Nil!14180)) (ite c!83322 (Cons!14179 (select (arr!20128 a!3186) #b00000000000000000000000000000000) Nil!14180) Nil!14180))))))

(declare-fun b!760642 () Bool)

(declare-fun e!424053 () Bool)

(declare-fun e!424054 () Bool)

(assert (=> b!760642 (= e!424053 e!424054)))

(declare-fun res!514636 () Bool)

(assert (=> b!760642 (=> (not res!514636) (not e!424054))))

(declare-fun e!424056 () Bool)

(assert (=> b!760642 (= res!514636 (not e!424056))))

(declare-fun res!514637 () Bool)

(assert (=> b!760642 (=> (not res!514637) (not e!424056))))

(assert (=> b!760642 (= res!514637 (validKeyInArray!0 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!100541 () Bool)

(declare-fun res!514638 () Bool)

(assert (=> d!100541 (=> res!514638 e!424053)))

(assert (=> d!100541 (= res!514638 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(assert (=> d!100541 (= (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83322 (Cons!14179 (select (arr!20128 a!3186) #b00000000000000000000000000000000) Nil!14180) Nil!14180)) e!424053)))

(declare-fun b!760643 () Bool)

(assert (=> b!760643 (= e!424054 e!424055)))

(assert (=> b!760643 (= c!83386 (validKeyInArray!0 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!760644 () Bool)

(assert (=> b!760644 (= e!424056 (contains!4068 (ite c!83322 (Cons!14179 (select (arr!20128 a!3186) #b00000000000000000000000000000000) Nil!14180) Nil!14180) (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!760645 () Bool)

(assert (=> b!760645 (= e!424055 call!34954)))

(assert (= (and d!100541 (not res!514638)) b!760642))

(assert (= (and b!760642 res!514637) b!760644))

(assert (= (and b!760642 res!514636) b!760643))

(assert (= (and b!760643 c!83386) b!760645))

(assert (= (and b!760643 (not c!83386)) b!760641))

(assert (= (or b!760645 b!760641) bm!34951))

(declare-fun m!707813 () Bool)

(assert (=> bm!34951 m!707813))

(declare-fun m!707815 () Bool)

(assert (=> bm!34951 m!707815))

(assert (=> b!760642 m!707813))

(assert (=> b!760642 m!707813))

(declare-fun m!707817 () Bool)

(assert (=> b!760642 m!707817))

(assert (=> b!760643 m!707813))

(assert (=> b!760643 m!707813))

(assert (=> b!760643 m!707817))

(assert (=> b!760644 m!707813))

(assert (=> b!760644 m!707813))

(declare-fun m!707819 () Bool)

(assert (=> b!760644 m!707819))

(assert (=> bm!34941 d!100541))

(declare-fun e!424059 () SeekEntryResult!7735)

(declare-fun b!760646 () Bool)

(assert (=> b!760646 (= e!424059 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) (bvadd resIntermediateX!5 #b00000000000000000000000000000001) mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760647 () Bool)

(declare-fun e!424058 () SeekEntryResult!7735)

(assert (=> b!760647 (= e!424058 (Found!7735 (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328)))))

(declare-fun b!760648 () Bool)

(declare-fun e!424057 () SeekEntryResult!7735)

(assert (=> b!760648 (= e!424057 Undefined!7735)))

(declare-fun lt!338906 () SeekEntryResult!7735)

(declare-fun d!100543 () Bool)

(assert (=> d!100543 (and (or ((_ is Undefined!7735) lt!338906) (not ((_ is Found!7735) lt!338906)) (and (bvsge (index!33308 lt!338906) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338906) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338906) ((_ is Found!7735) lt!338906) (not ((_ is MissingVacant!7735) lt!338906)) (not (= (index!33310 lt!338906) resIntermediateIndex!5)) (and (bvsge (index!33310 lt!338906) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338906) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338906) (ite ((_ is Found!7735) lt!338906) (= (select (arr!20128 a!3186) (index!33308 lt!338906)) (select (arr!20128 a!3186) j!159)) (and ((_ is MissingVacant!7735) lt!338906) (= (index!33310 lt!338906) resIntermediateIndex!5) (= (select (arr!20128 a!3186) (index!33310 lt!338906)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100543 (= lt!338906 e!424057)))

(declare-fun c!83388 () Bool)

(assert (=> d!100543 (= c!83388 (bvsge (bvadd resIntermediateX!5 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!338907 () (_ BitVec 64))

(assert (=> d!100543 (= lt!338907 (select (arr!20128 a!3186) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328)))))

(assert (=> d!100543 (validMask!0 mask!3328)))

(assert (=> d!100543 (= (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338906)))

(declare-fun b!760649 () Bool)

(assert (=> b!760649 (= e!424059 (MissingVacant!7735 resIntermediateIndex!5))))

(declare-fun b!760650 () Bool)

(declare-fun c!83387 () Bool)

(assert (=> b!760650 (= c!83387 (= lt!338907 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760650 (= e!424058 e!424059)))

(declare-fun b!760651 () Bool)

(assert (=> b!760651 (= e!424057 e!424058)))

(declare-fun c!83389 () Bool)

(assert (=> b!760651 (= c!83389 (= lt!338907 (select (arr!20128 a!3186) j!159)))))

(assert (= (and d!100543 c!83388) b!760648))

(assert (= (and d!100543 (not c!83388)) b!760651))

(assert (= (and b!760651 c!83389) b!760647))

(assert (= (and b!760651 (not c!83389)) b!760650))

(assert (= (and b!760650 c!83387) b!760649))

(assert (= (and b!760650 (not c!83387)) b!760646))

(assert (=> b!760646 m!707551))

(declare-fun m!707821 () Bool)

(assert (=> b!760646 m!707821))

(assert (=> b!760646 m!707821))

(assert (=> b!760646 m!707429))

(declare-fun m!707823 () Bool)

(assert (=> b!760646 m!707823))

(declare-fun m!707825 () Bool)

(assert (=> d!100543 m!707825))

(declare-fun m!707827 () Bool)

(assert (=> d!100543 m!707827))

(assert (=> d!100543 m!707551))

(declare-fun m!707829 () Bool)

(assert (=> d!100543 m!707829))

(assert (=> d!100543 m!707457))

(assert (=> b!760269 d!100543))

(declare-fun d!100545 () Bool)

(declare-fun lt!338908 () (_ BitVec 32))

(assert (=> d!100545 (and (bvsge lt!338908 #b00000000000000000000000000000000) (bvslt lt!338908 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!100545 (= lt!338908 (choose!52 resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(assert (=> d!100545 (validMask!0 mask!3328)))

(assert (=> d!100545 (= (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) lt!338908)))

(declare-fun bs!21384 () Bool)

(assert (= bs!21384 d!100545))

(declare-fun m!707831 () Bool)

(assert (=> bs!21384 m!707831))

(assert (=> bs!21384 m!707457))

(assert (=> b!760269 d!100545))

(assert (=> d!100455 d!100477))

(declare-fun d!100547 () Bool)

(declare-fun lt!338911 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!382 (List!14183) (InoxSet (_ BitVec 64)))

(assert (=> d!100547 (= lt!338911 (select (content!382 Nil!14180) (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun e!424064 () Bool)

(assert (=> d!100547 (= lt!338911 e!424064)))

(declare-fun res!514643 () Bool)

(assert (=> d!100547 (=> (not res!514643) (not e!424064))))

(assert (=> d!100547 (= res!514643 ((_ is Cons!14179) Nil!14180))))

(assert (=> d!100547 (= (contains!4068 Nil!14180 (select (arr!20128 a!3186) #b00000000000000000000000000000000)) lt!338911)))

(declare-fun b!760656 () Bool)

(declare-fun e!424065 () Bool)

(assert (=> b!760656 (= e!424064 e!424065)))

(declare-fun res!514644 () Bool)

(assert (=> b!760656 (=> res!514644 e!424065)))

(assert (=> b!760656 (= res!514644 (= (h!15254 Nil!14180) (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760657 () Bool)

(assert (=> b!760657 (= e!424065 (contains!4068 (t!20506 Nil!14180) (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100547 res!514643) b!760656))

(assert (= (and b!760656 (not res!514644)) b!760657))

(declare-fun m!707833 () Bool)

(assert (=> d!100547 m!707833))

(assert (=> d!100547 m!707649))

(declare-fun m!707835 () Bool)

(assert (=> d!100547 m!707835))

(assert (=> b!760657 m!707649))

(declare-fun m!707837 () Bool)

(assert (=> b!760657 m!707837))

(assert (=> b!760450 d!100547))

(declare-fun d!100549 () Bool)

(assert (=> d!100549 (arrayContainsKey!0 a!3186 lt!338753 #b00000000000000000000000000000000)))

(declare-fun lt!338914 () Unit!26310)

(declare-fun choose!13 (array!42039 (_ BitVec 64) (_ BitVec 32)) Unit!26310)

(assert (=> d!100549 (= lt!338914 (choose!13 a!3186 lt!338753 j!159))))

(assert (=> d!100549 (bvsge j!159 #b00000000000000000000000000000000)))

(assert (=> d!100549 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338753 j!159) lt!338914)))

(declare-fun bs!21385 () Bool)

(assert (= bs!21385 d!100549))

(assert (=> bs!21385 m!707533))

(declare-fun m!707839 () Bool)

(assert (=> bs!21385 m!707839))

(assert (=> b!760241 d!100549))

(declare-fun d!100551 () Bool)

(declare-fun res!514645 () Bool)

(declare-fun e!424066 () Bool)

(assert (=> d!100551 (=> res!514645 e!424066)))

(assert (=> d!100551 (= res!514645 (= (select (arr!20128 a!3186) #b00000000000000000000000000000000) lt!338753))))

(assert (=> d!100551 (= (arrayContainsKey!0 a!3186 lt!338753 #b00000000000000000000000000000000) e!424066)))

(declare-fun b!760658 () Bool)

(declare-fun e!424067 () Bool)

(assert (=> b!760658 (= e!424066 e!424067)))

(declare-fun res!514646 () Bool)

(assert (=> b!760658 (=> (not res!514646) (not e!424067))))

(assert (=> b!760658 (= res!514646 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(declare-fun b!760659 () Bool)

(assert (=> b!760659 (= e!424067 (arrayContainsKey!0 a!3186 lt!338753 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100551 (not res!514645)) b!760658))

(assert (= (and b!760658 res!514646) b!760659))

(assert (=> d!100551 m!707649))

(declare-fun m!707841 () Bool)

(assert (=> b!760659 m!707841))

(assert (=> b!760241 d!100551))

(assert (=> b!760241 d!100423))

(declare-fun d!100553 () Bool)

(assert (=> d!100553 (= (validKeyInArray!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000)) (and (not (= (select (arr!20128 a!3186) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20128 a!3186) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760448 d!100553))

(assert (=> b!760449 d!100553))

(assert (=> d!100461 d!100477))

(assert (=> b!760244 d!100491))

(declare-fun b!760660 () Bool)

(declare-fun e!424069 () SeekEntryResult!7735)

(declare-fun e!424072 () SeekEntryResult!7735)

(assert (=> b!760660 (= e!424069 e!424072)))

(declare-fun c!83391 () Bool)

(declare-fun lt!338915 () (_ BitVec 64))

(assert (=> b!760660 (= c!83391 (or (= lt!338915 (select (arr!20128 a!3186) j!159)) (= (bvadd lt!338915 lt!338915) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760661 () Bool)

(declare-fun lt!338916 () SeekEntryResult!7735)

(assert (=> b!760661 (and (bvsge (index!33309 lt!338916) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338916) (size!20549 a!3186)))))

(declare-fun res!514648 () Bool)

(assert (=> b!760661 (= res!514648 (= (select (arr!20128 a!3186) (index!33309 lt!338916)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424070 () Bool)

(assert (=> b!760661 (=> res!514648 e!424070)))

(declare-fun b!760662 () Bool)

(declare-fun e!424071 () Bool)

(declare-fun e!424068 () Bool)

(assert (=> b!760662 (= e!424071 e!424068)))

(declare-fun res!514649 () Bool)

(assert (=> b!760662 (= res!514649 (and ((_ is Intermediate!7735) lt!338916) (not (undefined!8547 lt!338916)) (bvslt (x!64223 lt!338916) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338916) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338916) (bvadd x!1131 #b00000000000000000000000000000001))))))

(assert (=> b!760662 (=> (not res!514649) (not e!424068))))

(declare-fun b!760663 () Bool)

(assert (=> b!760663 (and (bvsge (index!33309 lt!338916) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338916) (size!20549 a!3186)))))

(assert (=> b!760663 (= e!424070 (= (select (arr!20128 a!3186) (index!33309 lt!338916)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100555 () Bool)

(assert (=> d!100555 e!424071))

(declare-fun c!83390 () Bool)

(assert (=> d!100555 (= c!83390 (and ((_ is Intermediate!7735) lt!338916) (undefined!8547 lt!338916)))))

(assert (=> d!100555 (= lt!338916 e!424069)))

(declare-fun c!83392 () Bool)

(assert (=> d!100555 (= c!83392 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!100555 (= lt!338915 (select (arr!20128 a!3186) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!100555 (validMask!0 mask!3328)))

(assert (=> d!100555 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338916)))

(declare-fun b!760664 () Bool)

(assert (=> b!760664 (= e!424069 (Intermediate!7735 true (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!760665 () Bool)

(assert (=> b!760665 (= e!424072 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760666 () Bool)

(assert (=> b!760666 (= e!424072 (Intermediate!7735 false (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!760667 () Bool)

(assert (=> b!760667 (= e!424071 (bvsge (x!64223 lt!338916) #b01111111111111111111111111111110))))

(declare-fun b!760668 () Bool)

(assert (=> b!760668 (and (bvsge (index!33309 lt!338916) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338916) (size!20549 a!3186)))))

(declare-fun res!514647 () Bool)

(assert (=> b!760668 (= res!514647 (= (select (arr!20128 a!3186) (index!33309 lt!338916)) (select (arr!20128 a!3186) j!159)))))

(assert (=> b!760668 (=> res!514647 e!424070)))

(assert (=> b!760668 (= e!424068 e!424070)))

(assert (= (and d!100555 c!83392) b!760664))

(assert (= (and d!100555 (not c!83392)) b!760660))

(assert (= (and b!760660 c!83391) b!760666))

(assert (= (and b!760660 (not c!83391)) b!760665))

(assert (= (and d!100555 c!83390) b!760667))

(assert (= (and d!100555 (not c!83390)) b!760662))

(assert (= (and b!760662 res!514649) b!760668))

(assert (= (and b!760668 (not res!514647)) b!760661))

(assert (= (and b!760661 (not res!514648)) b!760663))

(declare-fun m!707843 () Bool)

(assert (=> b!760663 m!707843))

(assert (=> b!760661 m!707843))

(assert (=> d!100555 m!707595))

(declare-fun m!707845 () Bool)

(assert (=> d!100555 m!707845))

(assert (=> d!100555 m!707457))

(assert (=> b!760665 m!707595))

(declare-fun m!707847 () Bool)

(assert (=> b!760665 m!707847))

(assert (=> b!760665 m!707847))

(assert (=> b!760665 m!707429))

(declare-fun m!707849 () Bool)

(assert (=> b!760665 m!707849))

(assert (=> b!760668 m!707843))

(assert (=> b!760472 d!100555))

(declare-fun d!100557 () Bool)

(declare-fun lt!338917 () (_ BitVec 32))

(assert (=> d!100557 (and (bvsge lt!338917 #b00000000000000000000000000000000) (bvslt lt!338917 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!100557 (= lt!338917 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!100557 (validMask!0 mask!3328)))

(assert (=> d!100557 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!338917)))

(declare-fun bs!21386 () Bool)

(assert (= bs!21386 d!100557))

(declare-fun m!707851 () Bool)

(assert (=> bs!21386 m!707851))

(assert (=> bs!21386 m!707457))

(assert (=> b!760472 d!100557))

(assert (=> d!100471 d!100477))

(declare-fun b!760669 () Bool)

(declare-fun e!424073 () Bool)

(declare-fun e!424075 () Bool)

(assert (=> b!760669 (= e!424073 e!424075)))

(declare-fun lt!338920 () (_ BitVec 64))

(assert (=> b!760669 (= lt!338920 (select (arr!20128 a!3186) (bvadd j!159 #b00000000000000000000000000000001)))))

(declare-fun lt!338919 () Unit!26310)

(assert (=> b!760669 (= lt!338919 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338920 (bvadd j!159 #b00000000000000000000000000000001)))))

(assert (=> b!760669 (arrayContainsKey!0 a!3186 lt!338920 #b00000000000000000000000000000000)))

(declare-fun lt!338918 () Unit!26310)

(assert (=> b!760669 (= lt!338918 lt!338919)))

(declare-fun res!514650 () Bool)

(assert (=> b!760669 (= res!514650 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) (bvadd j!159 #b00000000000000000000000000000001)) a!3186 mask!3328) (Found!7735 (bvadd j!159 #b00000000000000000000000000000001))))))

(assert (=> b!760669 (=> (not res!514650) (not e!424075))))

(declare-fun b!760670 () Bool)

(declare-fun call!34955 () Bool)

(assert (=> b!760670 (= e!424075 call!34955)))

(declare-fun bm!34952 () Bool)

(assert (=> bm!34952 (= call!34955 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760672 () Bool)

(declare-fun e!424074 () Bool)

(assert (=> b!760672 (= e!424074 e!424073)))

(declare-fun c!83393 () Bool)

(assert (=> b!760672 (= c!83393 (validKeyInArray!0 (select (arr!20128 a!3186) (bvadd j!159 #b00000000000000000000000000000001))))))

(declare-fun d!100559 () Bool)

(declare-fun res!514651 () Bool)

(assert (=> d!100559 (=> res!514651 e!424074)))

(assert (=> d!100559 (= res!514651 (bvsge (bvadd j!159 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(assert (=> d!100559 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328) e!424074)))

(declare-fun b!760671 () Bool)

(assert (=> b!760671 (= e!424073 call!34955)))

(assert (= (and d!100559 (not res!514651)) b!760672))

(assert (= (and b!760672 c!83393) b!760669))

(assert (= (and b!760672 (not c!83393)) b!760671))

(assert (= (and b!760669 res!514650) b!760670))

(assert (= (or b!760670 b!760671) bm!34952))

(declare-fun m!707853 () Bool)

(assert (=> b!760669 m!707853))

(declare-fun m!707855 () Bool)

(assert (=> b!760669 m!707855))

(declare-fun m!707857 () Bool)

(assert (=> b!760669 m!707857))

(assert (=> b!760669 m!707853))

(declare-fun m!707859 () Bool)

(assert (=> b!760669 m!707859))

(declare-fun m!707861 () Bool)

(assert (=> bm!34952 m!707861))

(assert (=> b!760672 m!707853))

(assert (=> b!760672 m!707853))

(declare-fun m!707863 () Bool)

(assert (=> b!760672 m!707863))

(assert (=> bm!34932 d!100559))

(declare-fun e!424078 () SeekEntryResult!7735)

(declare-fun b!760673 () Bool)

(assert (=> b!760673 (= e!424078 (seekKeyOrZeroReturnVacant!0 (bvadd (x!64223 lt!338744) #b00000000000000000000000000000001) (nextIndex!0 (index!33309 lt!338744) (x!64223 lt!338744) mask!3328) (index!33309 lt!338744) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760674 () Bool)

(declare-fun e!424077 () SeekEntryResult!7735)

(assert (=> b!760674 (= e!424077 (Found!7735 (index!33309 lt!338744)))))

(declare-fun b!760675 () Bool)

(declare-fun e!424076 () SeekEntryResult!7735)

(assert (=> b!760675 (= e!424076 Undefined!7735)))

(declare-fun d!100561 () Bool)

(declare-fun lt!338921 () SeekEntryResult!7735)

(assert (=> d!100561 (and (or ((_ is Undefined!7735) lt!338921) (not ((_ is Found!7735) lt!338921)) (and (bvsge (index!33308 lt!338921) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338921) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338921) ((_ is Found!7735) lt!338921) (not ((_ is MissingVacant!7735) lt!338921)) (not (= (index!33310 lt!338921) (index!33309 lt!338744))) (and (bvsge (index!33310 lt!338921) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338921) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338921) (ite ((_ is Found!7735) lt!338921) (= (select (arr!20128 a!3186) (index!33308 lt!338921)) (select (arr!20128 a!3186) j!159)) (and ((_ is MissingVacant!7735) lt!338921) (= (index!33310 lt!338921) (index!33309 lt!338744)) (= (select (arr!20128 a!3186) (index!33310 lt!338921)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100561 (= lt!338921 e!424076)))

(declare-fun c!83395 () Bool)

(assert (=> d!100561 (= c!83395 (bvsge (x!64223 lt!338744) #b01111111111111111111111111111110))))

(declare-fun lt!338922 () (_ BitVec 64))

(assert (=> d!100561 (= lt!338922 (select (arr!20128 a!3186) (index!33309 lt!338744)))))

(assert (=> d!100561 (validMask!0 mask!3328)))

(assert (=> d!100561 (= (seekKeyOrZeroReturnVacant!0 (x!64223 lt!338744) (index!33309 lt!338744) (index!33309 lt!338744) (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338921)))

(declare-fun b!760676 () Bool)

(assert (=> b!760676 (= e!424078 (MissingVacant!7735 (index!33309 lt!338744)))))

(declare-fun b!760677 () Bool)

(declare-fun c!83394 () Bool)

(assert (=> b!760677 (= c!83394 (= lt!338922 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760677 (= e!424077 e!424078)))

(declare-fun b!760678 () Bool)

(assert (=> b!760678 (= e!424076 e!424077)))

(declare-fun c!83396 () Bool)

(assert (=> b!760678 (= c!83396 (= lt!338922 (select (arr!20128 a!3186) j!159)))))

(assert (= (and d!100561 c!83395) b!760675))

(assert (= (and d!100561 (not c!83395)) b!760678))

(assert (= (and b!760678 c!83396) b!760674))

(assert (= (and b!760678 (not c!83396)) b!760677))

(assert (= (and b!760677 c!83394) b!760676))

(assert (= (and b!760677 (not c!83394)) b!760673))

(declare-fun m!707865 () Bool)

(assert (=> b!760673 m!707865))

(assert (=> b!760673 m!707865))

(assert (=> b!760673 m!707429))

(declare-fun m!707867 () Bool)

(assert (=> b!760673 m!707867))

(declare-fun m!707869 () Bool)

(assert (=> d!100561 m!707869))

(declare-fun m!707871 () Bool)

(assert (=> d!100561 m!707871))

(assert (=> d!100561 m!707523))

(assert (=> d!100561 m!707457))

(assert (=> b!760229 d!100561))

(declare-fun d!100563 () Bool)

(assert (=> d!100563 (arrayContainsKey!0 a!3186 lt!338861 #b00000000000000000000000000000000)))

(declare-fun lt!338923 () Unit!26310)

(assert (=> d!100563 (= lt!338923 (choose!13 a!3186 lt!338861 #b00000000000000000000000000000000))))

(assert (=> d!100563 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!100563 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338861 #b00000000000000000000000000000000) lt!338923)))

(declare-fun bs!21387 () Bool)

(assert (= bs!21387 d!100563))

(assert (=> bs!21387 m!707703))

(declare-fun m!707873 () Bool)

(assert (=> bs!21387 m!707873))

(assert (=> b!760516 d!100563))

(declare-fun d!100565 () Bool)

(declare-fun res!514652 () Bool)

(declare-fun e!424079 () Bool)

(assert (=> d!100565 (=> res!514652 e!424079)))

(assert (=> d!100565 (= res!514652 (= (select (arr!20128 a!3186) #b00000000000000000000000000000000) lt!338861))))

(assert (=> d!100565 (= (arrayContainsKey!0 a!3186 lt!338861 #b00000000000000000000000000000000) e!424079)))

(declare-fun b!760679 () Bool)

(declare-fun e!424080 () Bool)

(assert (=> b!760679 (= e!424079 e!424080)))

(declare-fun res!514653 () Bool)

(assert (=> b!760679 (=> (not res!514653) (not e!424080))))

(assert (=> b!760679 (= res!514653 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(declare-fun b!760680 () Bool)

(assert (=> b!760680 (= e!424080 (arrayContainsKey!0 a!3186 lt!338861 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100565 (not res!514652)) b!760679))

(assert (= (and b!760679 res!514653) b!760680))

(assert (=> d!100565 m!707649))

(declare-fun m!707875 () Bool)

(assert (=> b!760680 m!707875))

(assert (=> b!760516 d!100565))

(declare-fun b!760682 () Bool)

(declare-fun e!424082 () SeekEntryResult!7735)

(declare-fun lt!338926 () SeekEntryResult!7735)

(assert (=> b!760682 (= e!424082 (Found!7735 (index!33309 lt!338926)))))

(declare-fun b!760683 () Bool)

(declare-fun e!424081 () SeekEntryResult!7735)

(assert (=> b!760683 (= e!424081 (seekKeyOrZeroReturnVacant!0 (x!64223 lt!338926) (index!33309 lt!338926) (index!33309 lt!338926) (select (arr!20128 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328))))

(declare-fun b!760684 () Bool)

(declare-fun e!424083 () SeekEntryResult!7735)

(assert (=> b!760684 (= e!424083 e!424082)))

(declare-fun lt!338925 () (_ BitVec 64))

(assert (=> b!760684 (= lt!338925 (select (arr!20128 a!3186) (index!33309 lt!338926)))))

(declare-fun c!83397 () Bool)

(assert (=> b!760684 (= c!83397 (= lt!338925 (select (arr!20128 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100567 () Bool)

(declare-fun lt!338924 () SeekEntryResult!7735)

(assert (=> d!100567 (and (or ((_ is Undefined!7735) lt!338924) (not ((_ is Found!7735) lt!338924)) (and (bvsge (index!33308 lt!338924) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338924) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338924) ((_ is Found!7735) lt!338924) (not ((_ is MissingZero!7735) lt!338924)) (and (bvsge (index!33307 lt!338924) #b00000000000000000000000000000000) (bvslt (index!33307 lt!338924) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338924) ((_ is Found!7735) lt!338924) ((_ is MissingZero!7735) lt!338924) (not ((_ is MissingVacant!7735) lt!338924)) (and (bvsge (index!33310 lt!338924) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338924) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338924) (ite ((_ is Found!7735) lt!338924) (= (select (arr!20128 a!3186) (index!33308 lt!338924)) (select (arr!20128 a!3186) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!7735) lt!338924) (= (select (arr!20128 a!3186) (index!33307 lt!338924)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7735) lt!338924) (= (select (arr!20128 a!3186) (index!33310 lt!338924)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100567 (= lt!338924 e!424083)))

(declare-fun c!83399 () Bool)

(assert (=> d!100567 (= c!83399 (and ((_ is Intermediate!7735) lt!338926) (undefined!8547 lt!338926)))))

(assert (=> d!100567 (= lt!338926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000) mask!3328) (select (arr!20128 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328))))

(assert (=> d!100567 (validMask!0 mask!3328)))

(assert (=> d!100567 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) lt!338924)))

(declare-fun b!760681 () Bool)

(assert (=> b!760681 (= e!424083 Undefined!7735)))

(declare-fun b!760685 () Bool)

(declare-fun c!83398 () Bool)

(assert (=> b!760685 (= c!83398 (= lt!338925 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760685 (= e!424082 e!424081)))

(declare-fun b!760686 () Bool)

(assert (=> b!760686 (= e!424081 (MissingZero!7735 (index!33309 lt!338926)))))

(assert (= (and d!100567 c!83399) b!760681))

(assert (= (and d!100567 (not c!83399)) b!760684))

(assert (= (and b!760684 c!83397) b!760682))

(assert (= (and b!760684 (not c!83397)) b!760685))

(assert (= (and b!760685 c!83398) b!760686))

(assert (= (and b!760685 (not c!83398)) b!760683))

(assert (=> b!760683 m!707649))

(declare-fun m!707877 () Bool)

(assert (=> b!760683 m!707877))

(declare-fun m!707879 () Bool)

(assert (=> b!760684 m!707879))

(assert (=> d!100567 m!707457))

(declare-fun m!707881 () Bool)

(assert (=> d!100567 m!707881))

(assert (=> d!100567 m!707649))

(declare-fun m!707883 () Bool)

(assert (=> d!100567 m!707883))

(assert (=> d!100567 m!707883))

(assert (=> d!100567 m!707649))

(declare-fun m!707885 () Bool)

(assert (=> d!100567 m!707885))

(declare-fun m!707887 () Bool)

(assert (=> d!100567 m!707887))

(declare-fun m!707889 () Bool)

(assert (=> d!100567 m!707889))

(assert (=> b!760516 d!100567))

(declare-fun b!760687 () Bool)

(declare-fun e!424086 () SeekEntryResult!7735)

(assert (=> b!760687 (= e!424086 (seekKeyOrZeroReturnVacant!0 (bvadd (x!64223 lt!338816) #b00000000000000000000000000000001) (nextIndex!0 (index!33309 lt!338816) (x!64223 lt!338816) mask!3328) (index!33309 lt!338816) k0!2102 a!3186 mask!3328))))

(declare-fun b!760688 () Bool)

(declare-fun e!424085 () SeekEntryResult!7735)

(assert (=> b!760688 (= e!424085 (Found!7735 (index!33309 lt!338816)))))

(declare-fun b!760689 () Bool)

(declare-fun e!424084 () SeekEntryResult!7735)

(assert (=> b!760689 (= e!424084 Undefined!7735)))

(declare-fun d!100569 () Bool)

(declare-fun lt!338927 () SeekEntryResult!7735)

(assert (=> d!100569 (and (or ((_ is Undefined!7735) lt!338927) (not ((_ is Found!7735) lt!338927)) (and (bvsge (index!33308 lt!338927) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338927) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338927) ((_ is Found!7735) lt!338927) (not ((_ is MissingVacant!7735) lt!338927)) (not (= (index!33310 lt!338927) (index!33309 lt!338816))) (and (bvsge (index!33310 lt!338927) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338927) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338927) (ite ((_ is Found!7735) lt!338927) (= (select (arr!20128 a!3186) (index!33308 lt!338927)) k0!2102) (and ((_ is MissingVacant!7735) lt!338927) (= (index!33310 lt!338927) (index!33309 lt!338816)) (= (select (arr!20128 a!3186) (index!33310 lt!338927)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100569 (= lt!338927 e!424084)))

(declare-fun c!83401 () Bool)

(assert (=> d!100569 (= c!83401 (bvsge (x!64223 lt!338816) #b01111111111111111111111111111110))))

(declare-fun lt!338928 () (_ BitVec 64))

(assert (=> d!100569 (= lt!338928 (select (arr!20128 a!3186) (index!33309 lt!338816)))))

(assert (=> d!100569 (validMask!0 mask!3328)))

(assert (=> d!100569 (= (seekKeyOrZeroReturnVacant!0 (x!64223 lt!338816) (index!33309 lt!338816) (index!33309 lt!338816) k0!2102 a!3186 mask!3328) lt!338927)))

(declare-fun b!760690 () Bool)

(assert (=> b!760690 (= e!424086 (MissingVacant!7735 (index!33309 lt!338816)))))

(declare-fun b!760691 () Bool)

(declare-fun c!83400 () Bool)

(assert (=> b!760691 (= c!83400 (= lt!338928 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760691 (= e!424085 e!424086)))

(declare-fun b!760692 () Bool)

(assert (=> b!760692 (= e!424084 e!424085)))

(declare-fun c!83402 () Bool)

(assert (=> b!760692 (= c!83402 (= lt!338928 k0!2102))))

(assert (= (and d!100569 c!83401) b!760689))

(assert (= (and d!100569 (not c!83401)) b!760692))

(assert (= (and b!760692 c!83402) b!760688))

(assert (= (and b!760692 (not c!83402)) b!760691))

(assert (= (and b!760691 c!83400) b!760690))

(assert (= (and b!760691 (not c!83400)) b!760687))

(declare-fun m!707891 () Bool)

(assert (=> b!760687 m!707891))

(assert (=> b!760687 m!707891))

(declare-fun m!707893 () Bool)

(assert (=> b!760687 m!707893))

(declare-fun m!707895 () Bool)

(assert (=> d!100569 m!707895))

(declare-fun m!707897 () Bool)

(assert (=> d!100569 m!707897))

(assert (=> d!100569 m!707609))

(assert (=> d!100569 m!707457))

(assert (=> b!760391 d!100569))

(assert (=> b!760519 d!100553))

(declare-fun b!760693 () Bool)

(declare-fun e!424087 () Bool)

(declare-fun e!424089 () Bool)

(assert (=> b!760693 (= e!424087 e!424089)))

(declare-fun lt!338931 () (_ BitVec 64))

(assert (=> b!760693 (= lt!338931 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!338930 () Unit!26310)

(assert (=> b!760693 (= lt!338930 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338931 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!760693 (arrayContainsKey!0 a!3186 lt!338931 #b00000000000000000000000000000000)))

(declare-fun lt!338929 () Unit!26310)

(assert (=> b!760693 (= lt!338929 lt!338930)))

(declare-fun res!514654 () Bool)

(assert (=> b!760693 (= res!514654 (= (seekEntryOrOpen!0 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3186 mask!3328) (Found!7735 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!760693 (=> (not res!514654) (not e!424089))))

(declare-fun b!760694 () Bool)

(declare-fun call!34956 () Bool)

(assert (=> b!760694 (= e!424089 call!34956)))

(declare-fun bm!34953 () Bool)

(assert (=> bm!34953 (= call!34956 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760696 () Bool)

(declare-fun e!424088 () Bool)

(assert (=> b!760696 (= e!424088 e!424087)))

(declare-fun c!83403 () Bool)

(assert (=> b!760696 (= c!83403 (validKeyInArray!0 (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!100571 () Bool)

(declare-fun res!514655 () Bool)

(assert (=> d!100571 (=> res!514655 e!424088)))

(assert (=> d!100571 (= res!514655 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(assert (=> d!100571 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328) e!424088)))

(declare-fun b!760695 () Bool)

(assert (=> b!760695 (= e!424087 call!34956)))

(assert (= (and d!100571 (not res!514655)) b!760696))

(assert (= (and b!760696 c!83403) b!760693))

(assert (= (and b!760696 (not c!83403)) b!760695))

(assert (= (and b!760693 res!514654) b!760694))

(assert (= (or b!760694 b!760695) bm!34953))

(assert (=> b!760693 m!707813))

(declare-fun m!707899 () Bool)

(assert (=> b!760693 m!707899))

(declare-fun m!707901 () Bool)

(assert (=> b!760693 m!707901))

(assert (=> b!760693 m!707813))

(declare-fun m!707903 () Bool)

(assert (=> b!760693 m!707903))

(declare-fun m!707905 () Bool)

(assert (=> bm!34953 m!707905))

(assert (=> b!760696 m!707813))

(assert (=> b!760696 m!707813))

(assert (=> b!760696 m!707817))

(assert (=> bm!34942 d!100571))

(declare-fun b!760697 () Bool)

(declare-fun e!424091 () SeekEntryResult!7735)

(declare-fun e!424094 () SeekEntryResult!7735)

(assert (=> b!760697 (= e!424091 e!424094)))

(declare-fun c!83405 () Bool)

(declare-fun lt!338932 () (_ BitVec 64))

(assert (=> b!760697 (= c!83405 (or (= lt!338932 lt!338704) (= (bvadd lt!338932 lt!338932) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760698 () Bool)

(declare-fun lt!338933 () SeekEntryResult!7735)

(assert (=> b!760698 (and (bvsge (index!33309 lt!338933) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338933) (size!20549 lt!338707)))))

(declare-fun res!514657 () Bool)

(assert (=> b!760698 (= res!514657 (= (select (arr!20128 lt!338707) (index!33309 lt!338933)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424092 () Bool)

(assert (=> b!760698 (=> res!514657 e!424092)))

(declare-fun b!760699 () Bool)

(declare-fun e!424093 () Bool)

(declare-fun e!424090 () Bool)

(assert (=> b!760699 (= e!424093 e!424090)))

(declare-fun res!514658 () Bool)

(assert (=> b!760699 (= res!514658 (and ((_ is Intermediate!7735) lt!338933) (not (undefined!8547 lt!338933)) (bvslt (x!64223 lt!338933) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338933) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338933) (bvadd x!1131 #b00000000000000000000000000000001))))))

(assert (=> b!760699 (=> (not res!514658) (not e!424090))))

(declare-fun b!760700 () Bool)

(assert (=> b!760700 (and (bvsge (index!33309 lt!338933) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338933) (size!20549 lt!338707)))))

(assert (=> b!760700 (= e!424092 (= (select (arr!20128 lt!338707) (index!33309 lt!338933)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100573 () Bool)

(assert (=> d!100573 e!424093))

(declare-fun c!83404 () Bool)

(assert (=> d!100573 (= c!83404 (and ((_ is Intermediate!7735) lt!338933) (undefined!8547 lt!338933)))))

(assert (=> d!100573 (= lt!338933 e!424091)))

(declare-fun c!83406 () Bool)

(assert (=> d!100573 (= c!83406 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!100573 (= lt!338932 (select (arr!20128 lt!338707) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!100573 (validMask!0 mask!3328)))

(assert (=> d!100573 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338704 lt!338707 mask!3328) lt!338933)))

(declare-fun b!760701 () Bool)

(assert (=> b!760701 (= e!424091 (Intermediate!7735 true (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!760702 () Bool)

(assert (=> b!760702 (= e!424094 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) lt!338704 lt!338707 mask!3328))))

(declare-fun b!760703 () Bool)

(assert (=> b!760703 (= e!424094 (Intermediate!7735 false (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!760704 () Bool)

(assert (=> b!760704 (= e!424093 (bvsge (x!64223 lt!338933) #b01111111111111111111111111111110))))

(declare-fun b!760705 () Bool)

(assert (=> b!760705 (and (bvsge (index!33309 lt!338933) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338933) (size!20549 lt!338707)))))

(declare-fun res!514656 () Bool)

(assert (=> b!760705 (= res!514656 (= (select (arr!20128 lt!338707) (index!33309 lt!338933)) lt!338704))))

(assert (=> b!760705 (=> res!514656 e!424092)))

(assert (=> b!760705 (= e!424090 e!424092)))

(assert (= (and d!100573 c!83406) b!760701))

(assert (= (and d!100573 (not c!83406)) b!760697))

(assert (= (and b!760697 c!83405) b!760703))

(assert (= (and b!760697 (not c!83405)) b!760702))

(assert (= (and d!100573 c!83404) b!760704))

(assert (= (and d!100573 (not c!83404)) b!760699))

(assert (= (and b!760699 res!514658) b!760705))

(assert (= (and b!760705 (not res!514656)) b!760698))

(assert (= (and b!760698 (not res!514657)) b!760700))

(declare-fun m!707907 () Bool)

(assert (=> b!760700 m!707907))

(assert (=> b!760698 m!707907))

(assert (=> d!100573 m!707595))

(declare-fun m!707909 () Bool)

(assert (=> d!100573 m!707909))

(assert (=> d!100573 m!707457))

(assert (=> b!760702 m!707595))

(assert (=> b!760702 m!707847))

(assert (=> b!760702 m!707847))

(declare-fun m!707911 () Bool)

(assert (=> b!760702 m!707911))

(assert (=> b!760705 m!707907))

(assert (=> b!760376 d!100573))

(assert (=> b!760376 d!100557))

(declare-fun e!424097 () SeekEntryResult!7735)

(declare-fun b!760706 () Bool)

(assert (=> b!760706 (= e!424097 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!424096 () SeekEntryResult!7735)

(declare-fun b!760707 () Bool)

(assert (=> b!760707 (= e!424096 (Found!7735 (nextIndex!0 index!1321 x!1131 mask!3328)))))

(declare-fun b!760708 () Bool)

(declare-fun e!424095 () SeekEntryResult!7735)

(assert (=> b!760708 (= e!424095 Undefined!7735)))

(declare-fun d!100575 () Bool)

(declare-fun lt!338934 () SeekEntryResult!7735)

(assert (=> d!100575 (and (or ((_ is Undefined!7735) lt!338934) (not ((_ is Found!7735) lt!338934)) (and (bvsge (index!33308 lt!338934) #b00000000000000000000000000000000) (bvslt (index!33308 lt!338934) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338934) ((_ is Found!7735) lt!338934) (not ((_ is MissingVacant!7735) lt!338934)) (not (= (index!33310 lt!338934) resIntermediateIndex!5)) (and (bvsge (index!33310 lt!338934) #b00000000000000000000000000000000) (bvslt (index!33310 lt!338934) (size!20549 a!3186)))) (or ((_ is Undefined!7735) lt!338934) (ite ((_ is Found!7735) lt!338934) (= (select (arr!20128 a!3186) (index!33308 lt!338934)) (select (arr!20128 a!3186) j!159)) (and ((_ is MissingVacant!7735) lt!338934) (= (index!33310 lt!338934) resIntermediateIndex!5) (= (select (arr!20128 a!3186) (index!33310 lt!338934)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100575 (= lt!338934 e!424095)))

(declare-fun c!83408 () Bool)

(assert (=> d!100575 (= c!83408 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!338935 () (_ BitVec 64))

(assert (=> d!100575 (= lt!338935 (select (arr!20128 a!3186) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!100575 (validMask!0 mask!3328)))

(assert (=> d!100575 (= (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338934)))

(declare-fun b!760709 () Bool)

(assert (=> b!760709 (= e!424097 (MissingVacant!7735 resIntermediateIndex!5))))

(declare-fun b!760710 () Bool)

(declare-fun c!83407 () Bool)

(assert (=> b!760710 (= c!83407 (= lt!338935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760710 (= e!424096 e!424097)))

(declare-fun b!760711 () Bool)

(assert (=> b!760711 (= e!424095 e!424096)))

(declare-fun c!83409 () Bool)

(assert (=> b!760711 (= c!83409 (= lt!338935 (select (arr!20128 a!3186) j!159)))))

(assert (= (and d!100575 c!83408) b!760708))

(assert (= (and d!100575 (not c!83408)) b!760711))

(assert (= (and b!760711 c!83409) b!760707))

(assert (= (and b!760711 (not c!83409)) b!760710))

(assert (= (and b!760710 c!83407) b!760709))

(assert (= (and b!760710 (not c!83407)) b!760706))

(assert (=> b!760706 m!707595))

(assert (=> b!760706 m!707847))

(assert (=> b!760706 m!707847))

(assert (=> b!760706 m!707429))

(declare-fun m!707913 () Bool)

(assert (=> b!760706 m!707913))

(declare-fun m!707915 () Bool)

(assert (=> d!100575 m!707915))

(declare-fun m!707917 () Bool)

(assert (=> d!100575 m!707917))

(assert (=> d!100575 m!707595))

(assert (=> d!100575 m!707845))

(assert (=> d!100575 m!707457))

(assert (=> b!760395 d!100575))

(assert (=> b!760395 d!100557))

(assert (=> d!100453 d!100477))

(assert (=> d!100427 d!100425))

(declare-fun d!100577 () Bool)

(assert (=> d!100577 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(assert (=> d!100577 true))

(declare-fun _$72!107 () Unit!26310)

(assert (=> d!100577 (= (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) _$72!107)))

(declare-fun bs!21388 () Bool)

(assert (= bs!21388 d!100577))

(assert (=> bs!21388 m!707447))

(assert (=> d!100427 d!100577))

(assert (=> d!100427 d!100477))

(assert (=> d!100439 d!100477))

(assert (=> d!100433 d!100477))

(declare-fun b!760712 () Bool)

(declare-fun e!424099 () SeekEntryResult!7735)

(declare-fun e!424102 () SeekEntryResult!7735)

(assert (=> b!760712 (= e!424099 e!424102)))

(declare-fun c!83411 () Bool)

(declare-fun lt!338936 () (_ BitVec 64))

(assert (=> b!760712 (= c!83411 (or (= lt!338936 k0!2102) (= (bvadd lt!338936 lt!338936) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760713 () Bool)

(declare-fun lt!338937 () SeekEntryResult!7735)

(assert (=> b!760713 (and (bvsge (index!33309 lt!338937) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338937) (size!20549 a!3186)))))

(declare-fun res!514660 () Bool)

(assert (=> b!760713 (= res!514660 (= (select (arr!20128 a!3186) (index!33309 lt!338937)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424100 () Bool)

(assert (=> b!760713 (=> res!514660 e!424100)))

(declare-fun b!760714 () Bool)

(declare-fun e!424101 () Bool)

(declare-fun e!424098 () Bool)

(assert (=> b!760714 (= e!424101 e!424098)))

(declare-fun res!514661 () Bool)

(assert (=> b!760714 (= res!514661 (and ((_ is Intermediate!7735) lt!338937) (not (undefined!8547 lt!338937)) (bvslt (x!64223 lt!338937) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338937) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338937) #b00000000000000000000000000000000)))))

(assert (=> b!760714 (=> (not res!514661) (not e!424098))))

(declare-fun b!760715 () Bool)

(assert (=> b!760715 (and (bvsge (index!33309 lt!338937) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338937) (size!20549 a!3186)))))

(assert (=> b!760715 (= e!424100 (= (select (arr!20128 a!3186) (index!33309 lt!338937)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100579 () Bool)

(assert (=> d!100579 e!424101))

(declare-fun c!83410 () Bool)

(assert (=> d!100579 (= c!83410 (and ((_ is Intermediate!7735) lt!338937) (undefined!8547 lt!338937)))))

(assert (=> d!100579 (= lt!338937 e!424099)))

(declare-fun c!83412 () Bool)

(assert (=> d!100579 (= c!83412 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!100579 (= lt!338936 (select (arr!20128 a!3186) (toIndex!0 k0!2102 mask!3328)))))

(assert (=> d!100579 (validMask!0 mask!3328)))

(assert (=> d!100579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328) lt!338937)))

(declare-fun b!760716 () Bool)

(assert (=> b!760716 (= e!424099 (Intermediate!7735 true (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760717 () Bool)

(assert (=> b!760717 (= e!424102 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000 mask!3328) k0!2102 a!3186 mask!3328))))

(declare-fun b!760718 () Bool)

(assert (=> b!760718 (= e!424102 (Intermediate!7735 false (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760719 () Bool)

(assert (=> b!760719 (= e!424101 (bvsge (x!64223 lt!338937) #b01111111111111111111111111111110))))

(declare-fun b!760720 () Bool)

(assert (=> b!760720 (and (bvsge (index!33309 lt!338937) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338937) (size!20549 a!3186)))))

(declare-fun res!514659 () Bool)

(assert (=> b!760720 (= res!514659 (= (select (arr!20128 a!3186) (index!33309 lt!338937)) k0!2102))))

(assert (=> b!760720 (=> res!514659 e!424100)))

(assert (=> b!760720 (= e!424098 e!424100)))

(assert (= (and d!100579 c!83412) b!760716))

(assert (= (and d!100579 (not c!83412)) b!760712))

(assert (= (and b!760712 c!83411) b!760718))

(assert (= (and b!760712 (not c!83411)) b!760717))

(assert (= (and d!100579 c!83410) b!760719))

(assert (= (and d!100579 (not c!83410)) b!760714))

(assert (= (and b!760714 res!514661) b!760720))

(assert (= (and b!760720 (not res!514659)) b!760713))

(assert (= (and b!760713 (not res!514660)) b!760715))

(declare-fun m!707919 () Bool)

(assert (=> b!760715 m!707919))

(assert (=> b!760713 m!707919))

(assert (=> d!100579 m!707613))

(declare-fun m!707921 () Bool)

(assert (=> d!100579 m!707921))

(assert (=> d!100579 m!707457))

(assert (=> b!760717 m!707613))

(declare-fun m!707923 () Bool)

(assert (=> b!760717 m!707923))

(assert (=> b!760717 m!707923))

(declare-fun m!707925 () Bool)

(assert (=> b!760717 m!707925))

(assert (=> b!760720 m!707919))

(assert (=> d!100459 d!100579))

(declare-fun d!100581 () Bool)

(declare-fun lt!338939 () (_ BitVec 32))

(declare-fun lt!338938 () (_ BitVec 32))

(assert (=> d!100581 (= lt!338939 (bvmul (bvxor lt!338938 (bvlshr lt!338938 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100581 (= lt!338938 ((_ extract 31 0) (bvand (bvxor k0!2102 (bvlshr k0!2102 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100581 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514557 (let ((h!15258 ((_ extract 31 0) (bvand (bvxor k0!2102 (bvlshr k0!2102 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64231 (bvmul (bvxor h!15258 (bvlshr h!15258 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64231 (bvlshr x!64231 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514557 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514557 #b00000000000000000000000000000000))))))

(assert (=> d!100581 (= (toIndex!0 k0!2102 mask!3328) (bvand (bvxor lt!338939 (bvlshr lt!338939 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> d!100459 d!100581))

(assert (=> d!100459 d!100477))

(declare-fun d!100583 () Bool)

(declare-fun res!514662 () Bool)

(declare-fun e!424103 () Bool)

(assert (=> d!100583 (=> res!514662 e!424103)))

(assert (=> d!100583 (= res!514662 (= (select (arr!20128 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2102))))

(assert (=> d!100583 (= (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!424103)))

(declare-fun b!760721 () Bool)

(declare-fun e!424104 () Bool)

(assert (=> b!760721 (= e!424103 e!424104)))

(declare-fun res!514663 () Bool)

(assert (=> b!760721 (=> (not res!514663) (not e!424104))))

(assert (=> b!760721 (= res!514663 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!20549 a!3186)))))

(declare-fun b!760722 () Bool)

(assert (=> b!760722 (= e!424104 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!100583 (not res!514662)) b!760721))

(assert (= (and b!760721 res!514663) b!760722))

(assert (=> d!100583 m!707813))

(declare-fun m!707927 () Bool)

(assert (=> b!760722 m!707927))

(assert (=> b!760533 d!100583))

(declare-fun b!760723 () Bool)

(declare-fun e!424106 () SeekEntryResult!7735)

(declare-fun e!424109 () SeekEntryResult!7735)

(assert (=> b!760723 (= e!424106 e!424109)))

(declare-fun lt!338940 () (_ BitVec 64))

(declare-fun c!83414 () Bool)

(assert (=> b!760723 (= c!83414 (or (= lt!338940 (select (arr!20128 a!3186) j!159)) (= (bvadd lt!338940 lt!338940) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760724 () Bool)

(declare-fun lt!338941 () SeekEntryResult!7735)

(assert (=> b!760724 (and (bvsge (index!33309 lt!338941) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338941) (size!20549 a!3186)))))

(declare-fun res!514665 () Bool)

(assert (=> b!760724 (= res!514665 (= (select (arr!20128 a!3186) (index!33309 lt!338941)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424107 () Bool)

(assert (=> b!760724 (=> res!514665 e!424107)))

(declare-fun b!760725 () Bool)

(declare-fun e!424108 () Bool)

(declare-fun e!424105 () Bool)

(assert (=> b!760725 (= e!424108 e!424105)))

(declare-fun res!514666 () Bool)

(assert (=> b!760725 (= res!514666 (and ((_ is Intermediate!7735) lt!338941) (not (undefined!8547 lt!338941)) (bvslt (x!64223 lt!338941) #b01111111111111111111111111111110) (bvsge (x!64223 lt!338941) #b00000000000000000000000000000000) (bvsge (x!64223 lt!338941) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!760725 (=> (not res!514666) (not e!424105))))

(declare-fun b!760726 () Bool)

(assert (=> b!760726 (and (bvsge (index!33309 lt!338941) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338941) (size!20549 a!3186)))))

(assert (=> b!760726 (= e!424107 (= (select (arr!20128 a!3186) (index!33309 lt!338941)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!100585 () Bool)

(assert (=> d!100585 e!424108))

(declare-fun c!83413 () Bool)

(assert (=> d!100585 (= c!83413 (and ((_ is Intermediate!7735) lt!338941) (undefined!8547 lt!338941)))))

(assert (=> d!100585 (= lt!338941 e!424106)))

(declare-fun c!83415 () Bool)

(assert (=> d!100585 (= c!83415 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!100585 (= lt!338940 (select (arr!20128 a!3186) (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328)))))

(assert (=> d!100585 (validMask!0 mask!3328)))

(assert (=> d!100585 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328) lt!338941)))

(declare-fun b!760727 () Bool)

(assert (=> b!760727 (= e!424106 (Intermediate!7735 true (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!760728 () Bool)

(assert (=> b!760728 (= e!424109 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3328) (select (arr!20128 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760729 () Bool)

(assert (=> b!760729 (= e!424109 (Intermediate!7735 false (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!760730 () Bool)

(assert (=> b!760730 (= e!424108 (bvsge (x!64223 lt!338941) #b01111111111111111111111111111110))))

(declare-fun b!760731 () Bool)

(assert (=> b!760731 (and (bvsge (index!33309 lt!338941) #b00000000000000000000000000000000) (bvslt (index!33309 lt!338941) (size!20549 a!3186)))))

(declare-fun res!514664 () Bool)

(assert (=> b!760731 (= res!514664 (= (select (arr!20128 a!3186) (index!33309 lt!338941)) (select (arr!20128 a!3186) j!159)))))

(assert (=> b!760731 (=> res!514664 e!424107)))

(assert (=> b!760731 (= e!424105 e!424107)))

(assert (= (and d!100585 c!83415) b!760727))

(assert (= (and d!100585 (not c!83415)) b!760723))

(assert (= (and b!760723 c!83414) b!760729))

(assert (= (and b!760723 (not c!83414)) b!760728))

(assert (= (and d!100585 c!83413) b!760730))

(assert (= (and d!100585 (not c!83413)) b!760725))

(assert (= (and b!760725 res!514666) b!760731))

(assert (= (and b!760731 (not res!514664)) b!760724))

(assert (= (and b!760724 (not res!514665)) b!760726))

(declare-fun m!707929 () Bool)

(assert (=> b!760726 m!707929))

(assert (=> b!760724 m!707929))

(assert (=> d!100585 m!707587))

(declare-fun m!707931 () Bool)

(assert (=> d!100585 m!707931))

(assert (=> d!100585 m!707457))

(assert (=> b!760728 m!707587))

(declare-fun m!707933 () Bool)

(assert (=> b!760728 m!707933))

(assert (=> b!760728 m!707933))

(assert (=> b!760728 m!707429))

(declare-fun m!707935 () Bool)

(assert (=> b!760728 m!707935))

(assert (=> b!760731 m!707929))

(assert (=> b!760367 d!100585))

(declare-fun d!100587 () Bool)

(declare-fun lt!338942 () (_ BitVec 32))

(assert (=> d!100587 (and (bvsge lt!338942 #b00000000000000000000000000000000) (bvslt lt!338942 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!100587 (= lt!338942 (choose!52 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328))))

(assert (=> d!100587 (validMask!0 mask!3328)))

(assert (=> d!100587 (= (nextIndex!0 (toIndex!0 (select (arr!20128 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338942)))

(declare-fun bs!21389 () Bool)

(assert (= bs!21389 d!100587))

(assert (=> bs!21389 m!707431))

(declare-fun m!707937 () Bool)

(assert (=> bs!21389 m!707937))

(assert (=> bs!21389 m!707457))

(assert (=> b!760367 d!100587))

(check-sat (not bm!34953) (not b!760693) (not b!760702) (not b!760672) (not b!760669) (not d!100539) (not d!100549) (not d!100569) (not d!100563) (not bm!34951) (not b!760706) (not b!760642) (not d!100555) (not b!760728) (not d!100543) (not b!760643) (not b!760722) (not d!100575) (not d!100577) (not b!760665) (not b!760659) (not d!100573) (not bm!34952) (not d!100547) (not d!100587) (not d!100579) (not b!760680) (not b!760696) (not b!760673) (not d!100537) (not b!760646) (not b!760637) (not d!100567) (not d!100561) (not b!760683) (not d!100557) (not d!100545) (not b!760687) (not b!760657) (not d!100585) (not b!760644) (not b!760717))
(check-sat)
