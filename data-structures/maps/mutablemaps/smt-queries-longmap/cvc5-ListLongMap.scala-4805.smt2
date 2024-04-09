; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65974 () Bool)

(assert start!65974)

(declare-fun b!760096 () Bool)

(declare-fun res!514410 () Bool)

(declare-fun e!423745 () Bool)

(assert (=> b!760096 (=> (not res!514410) (not e!423745))))

(declare-datatypes ((array!42037 0))(
  ( (array!42038 (arr!20127 (Array (_ BitVec 32) (_ BitVec 64))) (size!20548 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42037)

(declare-datatypes ((List!14182 0))(
  ( (Nil!14179) (Cons!14178 (h!15253 (_ BitVec 64)) (t!20505 List!14182)) )
))
(declare-fun arrayNoDuplicates!0 (array!42037 (_ BitVec 32) List!14182) Bool)

(assert (=> b!760096 (= res!514410 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14179))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!423747 () Bool)

(declare-fun b!760097 () Bool)

(declare-datatypes ((SeekEntryResult!7734 0))(
  ( (MissingZero!7734 (index!33303 (_ BitVec 32))) (Found!7734 (index!33304 (_ BitVec 32))) (Intermediate!7734 (undefined!8546 Bool) (index!33305 (_ BitVec 32)) (x!64222 (_ BitVec 32))) (Undefined!7734) (MissingVacant!7734 (index!33306 (_ BitVec 32))) )
))
(declare-fun lt!338680 () SeekEntryResult!7734)

(assert (=> b!760097 (= e!423747 (not (or (not (is-Intermediate!7734 lt!338680)) (not (= x!1131 (x!64222 lt!338680))) (= index!1321 (index!33305 lt!338680)))))))

(declare-fun e!423741 () Bool)

(assert (=> b!760097 e!423741))

(declare-fun res!514406 () Bool)

(assert (=> b!760097 (=> (not res!514406) (not e!423741))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42037 (_ BitVec 32)) Bool)

(assert (=> b!760097 (= res!514406 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26308 0))(
  ( (Unit!26309) )
))
(declare-fun lt!338684 () Unit!26308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26308)

(assert (=> b!760097 (= lt!338684 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!760098 () Bool)

(declare-fun res!514411 () Bool)

(declare-fun e!423744 () Bool)

(assert (=> b!760098 (=> (not res!514411) (not e!423744))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760098 (= res!514411 (and (= (size!20548 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20548 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20548 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!760099 () Bool)

(declare-fun e!423740 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42037 (_ BitVec 32)) SeekEntryResult!7734)

(assert (=> b!760099 (= e!423740 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) (Found!7734 j!159)))))

(declare-fun b!760100 () Bool)

(declare-fun res!514412 () Bool)

(declare-fun e!423746 () Bool)

(assert (=> b!760100 (=> (not res!514412) (not e!423746))))

(assert (=> b!760100 (= res!514412 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20127 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760101 () Bool)

(declare-fun e!423742 () Bool)

(assert (=> b!760101 (= e!423741 e!423742)))

(declare-fun res!514414 () Bool)

(assert (=> b!760101 (=> (not res!514414) (not e!423742))))

(declare-fun lt!338681 () SeekEntryResult!7734)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42037 (_ BitVec 32)) SeekEntryResult!7734)

(assert (=> b!760101 (= res!514414 (= (seekEntryOrOpen!0 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338681))))

(assert (=> b!760101 (= lt!338681 (Found!7734 j!159))))

(declare-fun b!760102 () Bool)

(declare-fun res!514409 () Bool)

(assert (=> b!760102 (=> (not res!514409) (not e!423745))))

(assert (=> b!760102 (= res!514409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!760103 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!760103 (= e!423742 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338681))))

(declare-fun b!760104 () Bool)

(assert (=> b!760104 (= e!423744 e!423745)))

(declare-fun res!514405 () Bool)

(assert (=> b!760104 (=> (not res!514405) (not e!423745))))

(declare-fun lt!338686 () SeekEntryResult!7734)

(assert (=> b!760104 (= res!514405 (or (= lt!338686 (MissingZero!7734 i!1173)) (= lt!338686 (MissingVacant!7734 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!760104 (= lt!338686 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!760105 () Bool)

(declare-fun res!514413 () Bool)

(assert (=> b!760105 (=> (not res!514413) (not e!423744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760105 (= res!514413 (validKeyInArray!0 k!2102))))

(declare-fun b!760106 () Bool)

(declare-fun lt!338687 () SeekEntryResult!7734)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42037 (_ BitVec 32)) SeekEntryResult!7734)

(assert (=> b!760106 (= e!423740 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338687))))

(declare-fun b!760108 () Bool)

(assert (=> b!760108 (= e!423746 e!423747)))

(declare-fun res!514403 () Bool)

(assert (=> b!760108 (=> (not res!514403) (not e!423747))))

(declare-fun lt!338685 () SeekEntryResult!7734)

(assert (=> b!760108 (= res!514403 (= lt!338685 lt!338680))))

(declare-fun lt!338683 () array!42037)

(declare-fun lt!338682 () (_ BitVec 64))

(assert (=> b!760108 (= lt!338680 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338682 lt!338683 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760108 (= lt!338685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338682 mask!3328) lt!338682 lt!338683 mask!3328))))

(assert (=> b!760108 (= lt!338682 (select (store (arr!20127 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!760108 (= lt!338683 (array!42038 (store (arr!20127 a!3186) i!1173 k!2102) (size!20548 a!3186)))))

(declare-fun b!760109 () Bool)

(declare-fun res!514407 () Bool)

(assert (=> b!760109 (=> (not res!514407) (not e!423746))))

(assert (=> b!760109 (= res!514407 e!423740)))

(declare-fun c!83229 () Bool)

(assert (=> b!760109 (= c!83229 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!760110 () Bool)

(declare-fun res!514402 () Bool)

(assert (=> b!760110 (=> (not res!514402) (not e!423744))))

(assert (=> b!760110 (= res!514402 (validKeyInArray!0 (select (arr!20127 a!3186) j!159)))))

(declare-fun b!760111 () Bool)

(declare-fun res!514415 () Bool)

(assert (=> b!760111 (=> (not res!514415) (not e!423745))))

(assert (=> b!760111 (= res!514415 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20548 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20548 a!3186))))))

(declare-fun b!760112 () Bool)

(assert (=> b!760112 (= e!423745 e!423746)))

(declare-fun res!514408 () Bool)

(assert (=> b!760112 (=> (not res!514408) (not e!423746))))

(assert (=> b!760112 (= res!514408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338687))))

(assert (=> b!760112 (= lt!338687 (Intermediate!7734 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!760107 () Bool)

(declare-fun res!514416 () Bool)

(assert (=> b!760107 (=> (not res!514416) (not e!423744))))

(declare-fun arrayContainsKey!0 (array!42037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760107 (= res!514416 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!514404 () Bool)

(assert (=> start!65974 (=> (not res!514404) (not e!423744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65974 (= res!514404 (validMask!0 mask!3328))))

(assert (=> start!65974 e!423744))

(assert (=> start!65974 true))

(declare-fun array_inv!15901 (array!42037) Bool)

(assert (=> start!65974 (array_inv!15901 a!3186)))

(assert (= (and start!65974 res!514404) b!760098))

(assert (= (and b!760098 res!514411) b!760110))

(assert (= (and b!760110 res!514402) b!760105))

(assert (= (and b!760105 res!514413) b!760107))

(assert (= (and b!760107 res!514416) b!760104))

(assert (= (and b!760104 res!514405) b!760102))

(assert (= (and b!760102 res!514409) b!760096))

(assert (= (and b!760096 res!514410) b!760111))

(assert (= (and b!760111 res!514415) b!760112))

(assert (= (and b!760112 res!514408) b!760100))

(assert (= (and b!760100 res!514412) b!760109))

(assert (= (and b!760109 c!83229) b!760106))

(assert (= (and b!760109 (not c!83229)) b!760099))

(assert (= (and b!760109 res!514407) b!760108))

(assert (= (and b!760108 res!514403) b!760097))

(assert (= (and b!760097 res!514406) b!760101))

(assert (= (and b!760101 res!514414) b!760103))

(declare-fun m!707383 () Bool)

(assert (=> b!760107 m!707383))

(declare-fun m!707385 () Bool)

(assert (=> b!760102 m!707385))

(declare-fun m!707387 () Bool)

(assert (=> b!760106 m!707387))

(assert (=> b!760106 m!707387))

(declare-fun m!707389 () Bool)

(assert (=> b!760106 m!707389))

(declare-fun m!707391 () Bool)

(assert (=> b!760096 m!707391))

(assert (=> b!760101 m!707387))

(assert (=> b!760101 m!707387))

(declare-fun m!707393 () Bool)

(assert (=> b!760101 m!707393))

(declare-fun m!707395 () Bool)

(assert (=> b!760105 m!707395))

(declare-fun m!707397 () Bool)

(assert (=> b!760108 m!707397))

(declare-fun m!707399 () Bool)

(assert (=> b!760108 m!707399))

(declare-fun m!707401 () Bool)

(assert (=> b!760108 m!707401))

(assert (=> b!760108 m!707397))

(declare-fun m!707403 () Bool)

(assert (=> b!760108 m!707403))

(declare-fun m!707405 () Bool)

(assert (=> b!760108 m!707405))

(assert (=> b!760099 m!707387))

(assert (=> b!760099 m!707387))

(declare-fun m!707407 () Bool)

(assert (=> b!760099 m!707407))

(assert (=> b!760112 m!707387))

(assert (=> b!760112 m!707387))

(declare-fun m!707409 () Bool)

(assert (=> b!760112 m!707409))

(assert (=> b!760112 m!707409))

(assert (=> b!760112 m!707387))

(declare-fun m!707411 () Bool)

(assert (=> b!760112 m!707411))

(assert (=> b!760103 m!707387))

(assert (=> b!760103 m!707387))

(declare-fun m!707413 () Bool)

(assert (=> b!760103 m!707413))

(declare-fun m!707415 () Bool)

(assert (=> b!760100 m!707415))

(assert (=> b!760110 m!707387))

(assert (=> b!760110 m!707387))

(declare-fun m!707417 () Bool)

(assert (=> b!760110 m!707417))

(declare-fun m!707419 () Bool)

(assert (=> start!65974 m!707419))

(declare-fun m!707421 () Bool)

(assert (=> start!65974 m!707421))

(declare-fun m!707423 () Bool)

(assert (=> b!760097 m!707423))

(declare-fun m!707425 () Bool)

(assert (=> b!760097 m!707425))

(declare-fun m!707427 () Bool)

(assert (=> b!760104 m!707427))

(push 1)

(assert (not start!65974))

(assert (not b!760107))

(assert (not b!760110))

(assert (not b!760099))

(assert (not b!760097))

(assert (not b!760106))

(assert (not b!760104))

(assert (not b!760108))

(assert (not b!760096))

(assert (not b!760105))

(assert (not b!760103))

(assert (not b!760102))

(assert (not b!760112))

(assert (not b!760101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!760253 () Bool)

(declare-fun e!423820 () Bool)

(declare-fun call!34938 () Bool)

(assert (=> b!760253 (= e!423820 call!34938)))

(declare-fun d!100429 () Bool)

(declare-fun res!514518 () Bool)

(declare-fun e!423821 () Bool)

(assert (=> d!100429 (=> res!514518 e!423821)))

(assert (=> d!100429 (= res!514518 (bvsge #b00000000000000000000000000000000 (size!20548 a!3186)))))

(assert (=> d!100429 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!423821)))

(declare-fun b!760254 () Bool)

(declare-fun e!423822 () Bool)

(assert (=> b!760254 (= e!423822 call!34938)))

(declare-fun b!760255 () Bool)

(assert (=> b!760255 (= e!423820 e!423822)))

(declare-fun lt!338763 () (_ BitVec 64))

(assert (=> b!760255 (= lt!338763 (select (arr!20127 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!338764 () Unit!26308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42037 (_ BitVec 64) (_ BitVec 32)) Unit!26308)

(assert (=> b!760255 (= lt!338764 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338763 #b00000000000000000000000000000000))))

(assert (=> b!760255 (arrayContainsKey!0 a!3186 lt!338763 #b00000000000000000000000000000000)))

(declare-fun lt!338765 () Unit!26308)

(assert (=> b!760255 (= lt!338765 lt!338764)))

(declare-fun res!514517 () Bool)

(assert (=> b!760255 (= res!514517 (= (seekEntryOrOpen!0 (select (arr!20127 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7734 #b00000000000000000000000000000000)))))

(assert (=> b!760255 (=> (not res!514517) (not e!423822))))

(declare-fun bm!34935 () Bool)

(assert (=> bm!34935 (= call!34938 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760256 () Bool)

(assert (=> b!760256 (= e!423821 e!423820)))

(declare-fun c!83250 () Bool)

(assert (=> b!760256 (= c!83250 (validKeyInArray!0 (select (arr!20127 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100429 (not res!514518)) b!760256))

(assert (= (and b!760256 c!83250) b!760255))

(assert (= (and b!760256 (not c!83250)) b!760253))

(assert (= (and b!760255 res!514517) b!760254))

(assert (= (or b!760254 b!760253) bm!34935))

(declare-fun m!707539 () Bool)

(assert (=> b!760255 m!707539))

(declare-fun m!707541 () Bool)

(assert (=> b!760255 m!707541))

(declare-fun m!707543 () Bool)

(assert (=> b!760255 m!707543))

(assert (=> b!760255 m!707539))

(declare-fun m!707545 () Bool)

(assert (=> b!760255 m!707545))

(declare-fun m!707547 () Bool)

(assert (=> bm!34935 m!707547))

(assert (=> b!760256 m!707539))

(assert (=> b!760256 m!707539))

(declare-fun m!707549 () Bool)

(assert (=> b!760256 m!707549))

(assert (=> b!760102 d!100429))

(declare-fun b!760320 () Bool)

(declare-fun lt!338782 () SeekEntryResult!7734)

(assert (=> b!760320 (and (bvsge (index!33305 lt!338782) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338782) (size!20548 a!3186)))))

(declare-fun res!514535 () Bool)

(assert (=> b!760320 (= res!514535 (= (select (arr!20127 a!3186) (index!33305 lt!338782)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423861 () Bool)

(assert (=> b!760320 (=> res!514535 e!423861)))

(declare-fun d!100437 () Bool)

(declare-fun e!423858 () Bool)

(assert (=> d!100437 e!423858))

(declare-fun c!83277 () Bool)

(assert (=> d!100437 (= c!83277 (and (is-Intermediate!7734 lt!338782) (undefined!8546 lt!338782)))))

(declare-fun e!423860 () SeekEntryResult!7734)

(assert (=> d!100437 (= lt!338782 e!423860)))

(declare-fun c!83276 () Bool)

(assert (=> d!100437 (= c!83276 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338783 () (_ BitVec 64))

(assert (=> d!100437 (= lt!338783 (select (arr!20127 a!3186) (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328)))))

(assert (=> d!100437 (validMask!0 mask!3328)))

(assert (=> d!100437 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338782)))

(declare-fun b!760321 () Bool)

(declare-fun e!423857 () SeekEntryResult!7734)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760321 (= e!423857 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760322 () Bool)

(declare-fun e!423859 () Bool)

(assert (=> b!760322 (= e!423858 e!423859)))

(declare-fun res!514536 () Bool)

(assert (=> b!760322 (= res!514536 (and (is-Intermediate!7734 lt!338782) (not (undefined!8546 lt!338782)) (bvslt (x!64222 lt!338782) #b01111111111111111111111111111110) (bvsge (x!64222 lt!338782) #b00000000000000000000000000000000) (bvsge (x!64222 lt!338782) #b00000000000000000000000000000000)))))

(assert (=> b!760322 (=> (not res!514536) (not e!423859))))

(declare-fun b!760323 () Bool)

(assert (=> b!760323 (= e!423860 e!423857)))

(declare-fun c!83275 () Bool)

(assert (=> b!760323 (= c!83275 (or (= lt!338783 (select (arr!20127 a!3186) j!159)) (= (bvadd lt!338783 lt!338783) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760324 () Bool)

(assert (=> b!760324 (= e!423860 (Intermediate!7734 true (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760325 () Bool)

(assert (=> b!760325 (= e!423858 (bvsge (x!64222 lt!338782) #b01111111111111111111111111111110))))

(declare-fun b!760326 () Bool)

(assert (=> b!760326 (= e!423857 (Intermediate!7734 false (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760327 () Bool)

(assert (=> b!760327 (and (bvsge (index!33305 lt!338782) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338782) (size!20548 a!3186)))))

(assert (=> b!760327 (= e!423861 (= (select (arr!20127 a!3186) (index!33305 lt!338782)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760328 () Bool)

(assert (=> b!760328 (and (bvsge (index!33305 lt!338782) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338782) (size!20548 a!3186)))))

(declare-fun res!514537 () Bool)

(assert (=> b!760328 (= res!514537 (= (select (arr!20127 a!3186) (index!33305 lt!338782)) (select (arr!20127 a!3186) j!159)))))

(assert (=> b!760328 (=> res!514537 e!423861)))

(assert (=> b!760328 (= e!423859 e!423861)))

(assert (= (and d!100437 c!83276) b!760324))

(assert (= (and d!100437 (not c!83276)) b!760323))

(assert (= (and b!760323 c!83275) b!760326))

(assert (= (and b!760323 (not c!83275)) b!760321))

(assert (= (and d!100437 c!83277) b!760325))

(assert (= (and d!100437 (not c!83277)) b!760322))

(assert (= (and b!760322 res!514536) b!760328))

(assert (= (and b!760328 (not res!514537)) b!760320))

(assert (= (and b!760320 (not res!514535)) b!760327))

(declare-fun m!707567 () Bool)

(assert (=> b!760320 m!707567))

(assert (=> b!760321 m!707409))

(declare-fun m!707569 () Bool)

(assert (=> b!760321 m!707569))

(assert (=> b!760321 m!707569))

(assert (=> b!760321 m!707387))

(declare-fun m!707571 () Bool)

(assert (=> b!760321 m!707571))

(assert (=> b!760327 m!707567))

(assert (=> b!760328 m!707567))

(assert (=> d!100437 m!707409))

(declare-fun m!707573 () Bool)

(assert (=> d!100437 m!707573))

(assert (=> d!100437 m!707419))

(assert (=> b!760112 d!100437))

(declare-fun d!100443 () Bool)

(declare-fun lt!338799 () (_ BitVec 32))

(declare-fun lt!338798 () (_ BitVec 32))

(assert (=> d!100443 (= lt!338799 (bvmul (bvxor lt!338798 (bvlshr lt!338798 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100443 (= lt!338798 ((_ extract 31 0) (bvand (bvxor (select (arr!20127 a!3186) j!159) (bvlshr (select (arr!20127 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100443 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514538 (let ((h!15257 ((_ extract 31 0) (bvand (bvxor (select (arr!20127 a!3186) j!159) (bvlshr (select (arr!20127 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64229 (bvmul (bvxor h!15257 (bvlshr h!15257 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64229 (bvlshr x!64229 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514538 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514538 #b00000000000000000000000000000000))))))

(assert (=> d!100443 (= (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) (bvand (bvxor lt!338799 (bvlshr lt!338799 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760112 d!100443))

(declare-fun b!760441 () Bool)

(declare-fun e!423930 () SeekEntryResult!7734)

(declare-fun lt!338832 () SeekEntryResult!7734)

(assert (=> b!760441 (= e!423930 (MissingZero!7734 (index!33305 lt!338832)))))

(declare-fun d!100447 () Bool)

(declare-fun lt!338833 () SeekEntryResult!7734)

(assert (=> d!100447 (and (or (is-Undefined!7734 lt!338833) (not (is-Found!7734 lt!338833)) (and (bvsge (index!33304 lt!338833) #b00000000000000000000000000000000) (bvslt (index!33304 lt!338833) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338833) (is-Found!7734 lt!338833) (not (is-MissingZero!7734 lt!338833)) (and (bvsge (index!33303 lt!338833) #b00000000000000000000000000000000) (bvslt (index!33303 lt!338833) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338833) (is-Found!7734 lt!338833) (is-MissingZero!7734 lt!338833) (not (is-MissingVacant!7734 lt!338833)) (and (bvsge (index!33306 lt!338833) #b00000000000000000000000000000000) (bvslt (index!33306 lt!338833) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338833) (ite (is-Found!7734 lt!338833) (= (select (arr!20127 a!3186) (index!33304 lt!338833)) (select (arr!20127 a!3186) j!159)) (ite (is-MissingZero!7734 lt!338833) (= (select (arr!20127 a!3186) (index!33303 lt!338833)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7734 lt!338833) (= (select (arr!20127 a!3186) (index!33306 lt!338833)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!423929 () SeekEntryResult!7734)

(assert (=> d!100447 (= lt!338833 e!423929)))

(declare-fun c!83321 () Bool)

(assert (=> d!100447 (= c!83321 (and (is-Intermediate!7734 lt!338832) (undefined!8546 lt!338832)))))

(assert (=> d!100447 (= lt!338832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20127 a!3186) j!159) mask!3328) (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100447 (validMask!0 mask!3328)))

(assert (=> d!100447 (= (seekEntryOrOpen!0 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338833)))

(declare-fun b!760442 () Bool)

(declare-fun e!423928 () SeekEntryResult!7734)

(assert (=> b!760442 (= e!423928 (Found!7734 (index!33305 lt!338832)))))

(declare-fun b!760443 () Bool)

(declare-fun c!83319 () Bool)

(declare-fun lt!338831 () (_ BitVec 64))

(assert (=> b!760443 (= c!83319 (= lt!338831 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760443 (= e!423928 e!423930)))

(declare-fun b!760444 () Bool)

(assert (=> b!760444 (= e!423929 Undefined!7734)))

(declare-fun b!760445 () Bool)

(assert (=> b!760445 (= e!423929 e!423928)))

(assert (=> b!760445 (= lt!338831 (select (arr!20127 a!3186) (index!33305 lt!338832)))))

(declare-fun c!83320 () Bool)

(assert (=> b!760445 (= c!83320 (= lt!338831 (select (arr!20127 a!3186) j!159)))))

(declare-fun b!760446 () Bool)

(assert (=> b!760446 (= e!423930 (seekKeyOrZeroReturnVacant!0 (x!64222 lt!338832) (index!33305 lt!338832) (index!33305 lt!338832) (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100447 c!83321) b!760444))

(assert (= (and d!100447 (not c!83321)) b!760445))

(assert (= (and b!760445 c!83320) b!760442))

(assert (= (and b!760445 (not c!83320)) b!760443))

(assert (= (and b!760443 c!83319) b!760441))

(assert (= (and b!760443 (not c!83319)) b!760446))

(declare-fun m!707639 () Bool)

(assert (=> d!100447 m!707639))

(assert (=> d!100447 m!707387))

(assert (=> d!100447 m!707409))

(assert (=> d!100447 m!707419))

(declare-fun m!707641 () Bool)

(assert (=> d!100447 m!707641))

(assert (=> d!100447 m!707409))

(assert (=> d!100447 m!707387))

(assert (=> d!100447 m!707411))

(declare-fun m!707643 () Bool)

(assert (=> d!100447 m!707643))

(declare-fun m!707645 () Bool)

(assert (=> b!760445 m!707645))

(assert (=> b!760446 m!707387))

(declare-fun m!707647 () Bool)

(assert (=> b!760446 m!707647))

(assert (=> b!760101 d!100447))

(declare-fun b!760452 () Bool)

(declare-fun e!423937 () SeekEntryResult!7734)

(declare-fun lt!338835 () SeekEntryResult!7734)

(assert (=> b!760452 (= e!423937 (MissingZero!7734 (index!33305 lt!338835)))))

(declare-fun d!100467 () Bool)

(declare-fun lt!338836 () SeekEntryResult!7734)

(assert (=> d!100467 (and (or (is-Undefined!7734 lt!338836) (not (is-Found!7734 lt!338836)) (and (bvsge (index!33304 lt!338836) #b00000000000000000000000000000000) (bvslt (index!33304 lt!338836) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338836) (is-Found!7734 lt!338836) (not (is-MissingZero!7734 lt!338836)) (and (bvsge (index!33303 lt!338836) #b00000000000000000000000000000000) (bvslt (index!33303 lt!338836) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338836) (is-Found!7734 lt!338836) (is-MissingZero!7734 lt!338836) (not (is-MissingVacant!7734 lt!338836)) (and (bvsge (index!33306 lt!338836) #b00000000000000000000000000000000) (bvslt (index!33306 lt!338836) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338836) (ite (is-Found!7734 lt!338836) (= (select (arr!20127 a!3186) (index!33304 lt!338836)) k!2102) (ite (is-MissingZero!7734 lt!338836) (= (select (arr!20127 a!3186) (index!33303 lt!338836)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7734 lt!338836) (= (select (arr!20127 a!3186) (index!33306 lt!338836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!423936 () SeekEntryResult!7734)

(assert (=> d!100467 (= lt!338836 e!423936)))

(declare-fun c!83325 () Bool)

(assert (=> d!100467 (= c!83325 (and (is-Intermediate!7734 lt!338835) (undefined!8546 lt!338835)))))

(assert (=> d!100467 (= lt!338835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100467 (validMask!0 mask!3328)))

(assert (=> d!100467 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!338836)))

(declare-fun b!760453 () Bool)

(declare-fun e!423935 () SeekEntryResult!7734)

(assert (=> b!760453 (= e!423935 (Found!7734 (index!33305 lt!338835)))))

(declare-fun b!760454 () Bool)

(declare-fun c!83323 () Bool)

(declare-fun lt!338834 () (_ BitVec 64))

(assert (=> b!760454 (= c!83323 (= lt!338834 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760454 (= e!423935 e!423937)))

(declare-fun b!760455 () Bool)

(assert (=> b!760455 (= e!423936 Undefined!7734)))

(declare-fun b!760456 () Bool)

(assert (=> b!760456 (= e!423936 e!423935)))

(assert (=> b!760456 (= lt!338834 (select (arr!20127 a!3186) (index!33305 lt!338835)))))

(declare-fun c!83324 () Bool)

(assert (=> b!760456 (= c!83324 (= lt!338834 k!2102))))

(declare-fun b!760457 () Bool)

(assert (=> b!760457 (= e!423937 (seekKeyOrZeroReturnVacant!0 (x!64222 lt!338835) (index!33305 lt!338835) (index!33305 lt!338835) k!2102 a!3186 mask!3328))))

(assert (= (and d!100467 c!83325) b!760455))

(assert (= (and d!100467 (not c!83325)) b!760456))

(assert (= (and b!760456 c!83324) b!760453))

(assert (= (and b!760456 (not c!83324)) b!760454))

(assert (= (and b!760454 c!83323) b!760452))

(assert (= (and b!760454 (not c!83323)) b!760457))

(declare-fun m!707655 () Bool)

(assert (=> d!100467 m!707655))

(declare-fun m!707657 () Bool)

(assert (=> d!100467 m!707657))

(assert (=> d!100467 m!707419))

(declare-fun m!707659 () Bool)

(assert (=> d!100467 m!707659))

(assert (=> d!100467 m!707657))

(declare-fun m!707663 () Bool)

(assert (=> d!100467 m!707663))

(declare-fun m!707665 () Bool)

(assert (=> d!100467 m!707665))

(declare-fun m!707667 () Bool)

(assert (=> b!760456 m!707667))

(declare-fun m!707669 () Bool)

(assert (=> b!760457 m!707669))

(assert (=> b!760104 d!100467))

(declare-fun e!423966 () SeekEntryResult!7734)

(declare-fun b!760506 () Bool)

(assert (=> b!760506 (= e!423966 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760507 () Bool)

(declare-fun e!423965 () SeekEntryResult!7734)

(declare-fun e!423964 () SeekEntryResult!7734)

(assert (=> b!760507 (= e!423965 e!423964)))

(declare-fun c!83344 () Bool)

(declare-fun lt!338851 () (_ BitVec 64))

(assert (=> b!760507 (= c!83344 (= lt!338851 (select (arr!20127 a!3186) j!159)))))

(declare-fun b!760508 () Bool)

(assert (=> b!760508 (= e!423966 (MissingVacant!7734 resIntermediateIndex!5))))

(declare-fun b!760509 () Bool)

(declare-fun c!83346 () Bool)

(assert (=> b!760509 (= c!83346 (= lt!338851 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760509 (= e!423964 e!423966)))

(declare-fun b!760511 () Bool)

(assert (=> b!760511 (= e!423965 Undefined!7734)))

(declare-fun d!100473 () Bool)

(declare-fun lt!338852 () SeekEntryResult!7734)

(assert (=> d!100473 (and (or (is-Undefined!7734 lt!338852) (not (is-Found!7734 lt!338852)) (and (bvsge (index!33304 lt!338852) #b00000000000000000000000000000000) (bvslt (index!33304 lt!338852) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338852) (is-Found!7734 lt!338852) (not (is-MissingVacant!7734 lt!338852)) (not (= (index!33306 lt!338852) resIntermediateIndex!5)) (and (bvsge (index!33306 lt!338852) #b00000000000000000000000000000000) (bvslt (index!33306 lt!338852) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338852) (ite (is-Found!7734 lt!338852) (= (select (arr!20127 a!3186) (index!33304 lt!338852)) (select (arr!20127 a!3186) j!159)) (and (is-MissingVacant!7734 lt!338852) (= (index!33306 lt!338852) resIntermediateIndex!5) (= (select (arr!20127 a!3186) (index!33306 lt!338852)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100473 (= lt!338852 e!423965)))

(declare-fun c!83345 () Bool)

(assert (=> d!100473 (= c!83345 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100473 (= lt!338851 (select (arr!20127 a!3186) resIntermediateIndex!5))))

(assert (=> d!100473 (validMask!0 mask!3328)))

(assert (=> d!100473 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338852)))

(declare-fun b!760510 () Bool)

(assert (=> b!760510 (= e!423964 (Found!7734 resIntermediateIndex!5))))

(assert (= (and d!100473 c!83345) b!760511))

(assert (= (and d!100473 (not c!83345)) b!760507))

(assert (= (and b!760507 c!83344) b!760510))

(assert (= (and b!760507 (not c!83344)) b!760509))

(assert (= (and b!760509 c!83346) b!760508))

(assert (= (and b!760509 (not c!83346)) b!760506))

(declare-fun m!707693 () Bool)

(assert (=> b!760506 m!707693))

(assert (=> b!760506 m!707693))

(assert (=> b!760506 m!707387))

(declare-fun m!707695 () Bool)

(assert (=> b!760506 m!707695))

(declare-fun m!707697 () Bool)

(assert (=> d!100473 m!707697))

(declare-fun m!707699 () Bool)

(assert (=> d!100473 m!707699))

(assert (=> d!100473 m!707415))

(assert (=> d!100473 m!707419))

(assert (=> b!760103 d!100473))

(declare-fun d!100485 () Bool)

(assert (=> d!100485 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65974 d!100485))

(declare-fun d!100497 () Bool)

(assert (=> d!100497 (= (array_inv!15901 a!3186) (bvsge (size!20548 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65974 d!100497))

(declare-fun d!100501 () Bool)

(declare-fun res!514603 () Bool)

(declare-fun e!423998 () Bool)

(assert (=> d!100501 (=> res!514603 e!423998)))

(assert (=> d!100501 (= res!514603 (= (select (arr!20127 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100501 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!423998)))

(declare-fun b!760556 () Bool)

(declare-fun e!423999 () Bool)

(assert (=> b!760556 (= e!423998 e!423999)))

(declare-fun res!514604 () Bool)

(assert (=> b!760556 (=> (not res!514604) (not e!423999))))

(assert (=> b!760556 (= res!514604 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20548 a!3186)))))

(declare-fun b!760557 () Bool)

(assert (=> b!760557 (= e!423999 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100501 (not res!514603)) b!760556))

(assert (= (and b!760556 res!514604) b!760557))

(assert (=> d!100501 m!707539))

(declare-fun m!707731 () Bool)

(assert (=> b!760557 m!707731))

(assert (=> b!760107 d!100501))

(declare-fun bm!34947 () Bool)

(declare-fun call!34950 () Bool)

(declare-fun c!83364 () Bool)

(assert (=> bm!34947 (= call!34950 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83364 (Cons!14178 (select (arr!20127 a!3186) #b00000000000000000000000000000000) Nil!14179) Nil!14179)))))

(declare-fun d!100507 () Bool)

(declare-fun res!514617 () Bool)

(declare-fun e!424015 () Bool)

(assert (=> d!100507 (=> res!514617 e!424015)))

(assert (=> d!100507 (= res!514617 (bvsge #b00000000000000000000000000000000 (size!20548 a!3186)))))

(assert (=> d!100507 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14179) e!424015)))

(declare-fun b!760576 () Bool)

(declare-fun e!424017 () Bool)

(declare-fun contains!4067 (List!14182 (_ BitVec 64)) Bool)

(assert (=> b!760576 (= e!424017 (contains!4067 Nil!14179 (select (arr!20127 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760577 () Bool)

(declare-fun e!424014 () Bool)

(assert (=> b!760577 (= e!424015 e!424014)))

(declare-fun res!514616 () Bool)

(assert (=> b!760577 (=> (not res!514616) (not e!424014))))

(assert (=> b!760577 (= res!514616 (not e!424017))))

(declare-fun res!514615 () Bool)

(assert (=> b!760577 (=> (not res!514615) (not e!424017))))

(assert (=> b!760577 (= res!514615 (validKeyInArray!0 (select (arr!20127 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760578 () Bool)

(declare-fun e!424016 () Bool)

(assert (=> b!760578 (= e!424014 e!424016)))

(assert (=> b!760578 (= c!83364 (validKeyInArray!0 (select (arr!20127 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760579 () Bool)

(assert (=> b!760579 (= e!424016 call!34950)))

(declare-fun b!760580 () Bool)

(assert (=> b!760580 (= e!424016 call!34950)))

(assert (= (and d!100507 (not res!514617)) b!760577))

(assert (= (and b!760577 res!514615) b!760576))

(assert (= (and b!760577 res!514616) b!760578))

(assert (= (and b!760578 c!83364) b!760579))

(assert (= (and b!760578 (not c!83364)) b!760580))

(assert (= (or b!760579 b!760580) bm!34947))

(assert (=> bm!34947 m!707539))

(declare-fun m!707733 () Bool)

(assert (=> bm!34947 m!707733))

(assert (=> b!760576 m!707539))

(assert (=> b!760576 m!707539))

(declare-fun m!707735 () Bool)

(assert (=> b!760576 m!707735))

(assert (=> b!760577 m!707539))

(assert (=> b!760577 m!707539))

(assert (=> b!760577 m!707549))

(assert (=> b!760578 m!707539))

(assert (=> b!760578 m!707539))

(assert (=> b!760578 m!707549))

(assert (=> b!760096 d!100507))

(declare-fun b!760585 () Bool)

(declare-fun lt!338876 () SeekEntryResult!7734)

(assert (=> b!760585 (and (bvsge (index!33305 lt!338876) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338876) (size!20548 a!3186)))))

(declare-fun res!514620 () Bool)

(assert (=> b!760585 (= res!514620 (= (select (arr!20127 a!3186) (index!33305 lt!338876)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424025 () Bool)

(assert (=> b!760585 (=> res!514620 e!424025)))

(declare-fun d!100509 () Bool)

(declare-fun e!424022 () Bool)

(assert (=> d!100509 e!424022))

(declare-fun c!83368 () Bool)

(assert (=> d!100509 (= c!83368 (and (is-Intermediate!7734 lt!338876) (undefined!8546 lt!338876)))))

(declare-fun e!424024 () SeekEntryResult!7734)

(assert (=> d!100509 (= lt!338876 e!424024)))

(declare-fun c!83367 () Bool)

(assert (=> d!100509 (= c!83367 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338877 () (_ BitVec 64))

(assert (=> d!100509 (= lt!338877 (select (arr!20127 a!3186) index!1321))))

(assert (=> d!100509 (validMask!0 mask!3328)))

(assert (=> d!100509 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338876)))

(declare-fun e!424021 () SeekEntryResult!7734)

(declare-fun b!760586 () Bool)

(assert (=> b!760586 (= e!424021 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760587 () Bool)

(declare-fun e!424023 () Bool)

(assert (=> b!760587 (= e!424022 e!424023)))

(declare-fun res!514621 () Bool)

(assert (=> b!760587 (= res!514621 (and (is-Intermediate!7734 lt!338876) (not (undefined!8546 lt!338876)) (bvslt (x!64222 lt!338876) #b01111111111111111111111111111110) (bvsge (x!64222 lt!338876) #b00000000000000000000000000000000) (bvsge (x!64222 lt!338876) x!1131)))))

(assert (=> b!760587 (=> (not res!514621) (not e!424023))))

(declare-fun b!760588 () Bool)

(assert (=> b!760588 (= e!424024 e!424021)))

(declare-fun c!83366 () Bool)

(assert (=> b!760588 (= c!83366 (or (= lt!338877 (select (arr!20127 a!3186) j!159)) (= (bvadd lt!338877 lt!338877) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760589 () Bool)

(assert (=> b!760589 (= e!424024 (Intermediate!7734 true index!1321 x!1131))))

(declare-fun b!760590 () Bool)

(assert (=> b!760590 (= e!424022 (bvsge (x!64222 lt!338876) #b01111111111111111111111111111110))))

(declare-fun b!760591 () Bool)

(assert (=> b!760591 (= e!424021 (Intermediate!7734 false index!1321 x!1131))))

(declare-fun b!760592 () Bool)

(assert (=> b!760592 (and (bvsge (index!33305 lt!338876) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338876) (size!20548 a!3186)))))

(assert (=> b!760592 (= e!424025 (= (select (arr!20127 a!3186) (index!33305 lt!338876)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760593 () Bool)

(assert (=> b!760593 (and (bvsge (index!33305 lt!338876) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338876) (size!20548 a!3186)))))

(declare-fun res!514622 () Bool)

(assert (=> b!760593 (= res!514622 (= (select (arr!20127 a!3186) (index!33305 lt!338876)) (select (arr!20127 a!3186) j!159)))))

(assert (=> b!760593 (=> res!514622 e!424025)))

(assert (=> b!760593 (= e!424023 e!424025)))

(assert (= (and d!100509 c!83367) b!760589))

(assert (= (and d!100509 (not c!83367)) b!760588))

(assert (= (and b!760588 c!83366) b!760591))

(assert (= (and b!760588 (not c!83366)) b!760586))

(assert (= (and d!100509 c!83368) b!760590))

(assert (= (and d!100509 (not c!83368)) b!760587))

(assert (= (and b!760587 res!514621) b!760593))

(assert (= (and b!760593 (not res!514622)) b!760585))

(assert (= (and b!760585 (not res!514620)) b!760592))

(declare-fun m!707745 () Bool)

(assert (=> b!760585 m!707745))

(declare-fun m!707747 () Bool)

(assert (=> b!760586 m!707747))

(assert (=> b!760586 m!707747))

(assert (=> b!760586 m!707387))

(declare-fun m!707749 () Bool)

(assert (=> b!760586 m!707749))

(assert (=> b!760592 m!707745))

(assert (=> b!760593 m!707745))

(declare-fun m!707751 () Bool)

(assert (=> d!100509 m!707751))

(assert (=> d!100509 m!707419))

(assert (=> b!760106 d!100509))

(declare-fun d!100513 () Bool)

(assert (=> d!100513 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760105 d!100513))

(declare-fun d!100515 () Bool)

(assert (=> d!100515 (= (validKeyInArray!0 (select (arr!20127 a!3186) j!159)) (and (not (= (select (arr!20127 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20127 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760110 d!100515))

(declare-fun b!760594 () Bool)

(declare-fun e!424028 () SeekEntryResult!7734)

(assert (=> b!760594 (= e!424028 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760595 () Bool)

(declare-fun e!424027 () SeekEntryResult!7734)

(declare-fun e!424026 () SeekEntryResult!7734)

(assert (=> b!760595 (= e!424027 e!424026)))

(declare-fun lt!338878 () (_ BitVec 64))

(declare-fun c!83369 () Bool)

(assert (=> b!760595 (= c!83369 (= lt!338878 (select (arr!20127 a!3186) j!159)))))

(declare-fun b!760596 () Bool)

(assert (=> b!760596 (= e!424028 (MissingVacant!7734 resIntermediateIndex!5))))

(declare-fun b!760597 () Bool)

(declare-fun c!83371 () Bool)

(assert (=> b!760597 (= c!83371 (= lt!338878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760597 (= e!424026 e!424028)))

(declare-fun b!760599 () Bool)

(assert (=> b!760599 (= e!424027 Undefined!7734)))

(declare-fun lt!338879 () SeekEntryResult!7734)

(declare-fun d!100517 () Bool)

(assert (=> d!100517 (and (or (is-Undefined!7734 lt!338879) (not (is-Found!7734 lt!338879)) (and (bvsge (index!33304 lt!338879) #b00000000000000000000000000000000) (bvslt (index!33304 lt!338879) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338879) (is-Found!7734 lt!338879) (not (is-MissingVacant!7734 lt!338879)) (not (= (index!33306 lt!338879) resIntermediateIndex!5)) (and (bvsge (index!33306 lt!338879) #b00000000000000000000000000000000) (bvslt (index!33306 lt!338879) (size!20548 a!3186)))) (or (is-Undefined!7734 lt!338879) (ite (is-Found!7734 lt!338879) (= (select (arr!20127 a!3186) (index!33304 lt!338879)) (select (arr!20127 a!3186) j!159)) (and (is-MissingVacant!7734 lt!338879) (= (index!33306 lt!338879) resIntermediateIndex!5) (= (select (arr!20127 a!3186) (index!33306 lt!338879)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100517 (= lt!338879 e!424027)))

(declare-fun c!83370 () Bool)

(assert (=> d!100517 (= c!83370 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100517 (= lt!338878 (select (arr!20127 a!3186) index!1321))))

(assert (=> d!100517 (validMask!0 mask!3328)))

(assert (=> d!100517 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) lt!338879)))

(declare-fun b!760598 () Bool)

(assert (=> b!760598 (= e!424026 (Found!7734 index!1321))))

(assert (= (and d!100517 c!83370) b!760599))

(assert (= (and d!100517 (not c!83370)) b!760595))

(assert (= (and b!760595 c!83369) b!760598))

(assert (= (and b!760595 (not c!83369)) b!760597))

(assert (= (and b!760597 c!83371) b!760596))

(assert (= (and b!760597 (not c!83371)) b!760594))

(assert (=> b!760594 m!707747))

(assert (=> b!760594 m!707747))

(assert (=> b!760594 m!707387))

(declare-fun m!707753 () Bool)

(assert (=> b!760594 m!707753))

(declare-fun m!707755 () Bool)

(assert (=> d!100517 m!707755))

(declare-fun m!707757 () Bool)

(assert (=> d!100517 m!707757))

(assert (=> d!100517 m!707751))

(assert (=> d!100517 m!707419))

(assert (=> b!760099 d!100517))

(declare-fun b!760600 () Bool)

(declare-fun lt!338880 () SeekEntryResult!7734)

(assert (=> b!760600 (and (bvsge (index!33305 lt!338880) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338880) (size!20548 lt!338683)))))

(declare-fun res!514623 () Bool)

(assert (=> b!760600 (= res!514623 (= (select (arr!20127 lt!338683) (index!33305 lt!338880)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424033 () Bool)

(assert (=> b!760600 (=> res!514623 e!424033)))

(declare-fun d!100519 () Bool)

(declare-fun e!424030 () Bool)

(assert (=> d!100519 e!424030))

(declare-fun c!83374 () Bool)

(assert (=> d!100519 (= c!83374 (and (is-Intermediate!7734 lt!338880) (undefined!8546 lt!338880)))))

(declare-fun e!424032 () SeekEntryResult!7734)

(assert (=> d!100519 (= lt!338880 e!424032)))

(declare-fun c!83373 () Bool)

(assert (=> d!100519 (= c!83373 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338881 () (_ BitVec 64))

(assert (=> d!100519 (= lt!338881 (select (arr!20127 lt!338683) index!1321))))

(assert (=> d!100519 (validMask!0 mask!3328)))

(assert (=> d!100519 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338682 lt!338683 mask!3328) lt!338880)))

(declare-fun b!760601 () Bool)

(declare-fun e!424029 () SeekEntryResult!7734)

(assert (=> b!760601 (= e!424029 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338682 lt!338683 mask!3328))))

(declare-fun b!760602 () Bool)

(declare-fun e!424031 () Bool)

(assert (=> b!760602 (= e!424030 e!424031)))

(declare-fun res!514624 () Bool)

(assert (=> b!760602 (= res!514624 (and (is-Intermediate!7734 lt!338880) (not (undefined!8546 lt!338880)) (bvslt (x!64222 lt!338880) #b01111111111111111111111111111110) (bvsge (x!64222 lt!338880) #b00000000000000000000000000000000) (bvsge (x!64222 lt!338880) x!1131)))))

(assert (=> b!760602 (=> (not res!514624) (not e!424031))))

(declare-fun b!760603 () Bool)

(assert (=> b!760603 (= e!424032 e!424029)))

(declare-fun c!83372 () Bool)

(assert (=> b!760603 (= c!83372 (or (= lt!338881 lt!338682) (= (bvadd lt!338881 lt!338881) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760604 () Bool)

(assert (=> b!760604 (= e!424032 (Intermediate!7734 true index!1321 x!1131))))

(declare-fun b!760605 () Bool)

(assert (=> b!760605 (= e!424030 (bvsge (x!64222 lt!338880) #b01111111111111111111111111111110))))

(declare-fun b!760606 () Bool)

(assert (=> b!760606 (= e!424029 (Intermediate!7734 false index!1321 x!1131))))

(declare-fun b!760607 () Bool)

(assert (=> b!760607 (and (bvsge (index!33305 lt!338880) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338880) (size!20548 lt!338683)))))

(assert (=> b!760607 (= e!424033 (= (select (arr!20127 lt!338683) (index!33305 lt!338880)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760608 () Bool)

(assert (=> b!760608 (and (bvsge (index!33305 lt!338880) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338880) (size!20548 lt!338683)))))

(declare-fun res!514625 () Bool)

(assert (=> b!760608 (= res!514625 (= (select (arr!20127 lt!338683) (index!33305 lt!338880)) lt!338682))))

(assert (=> b!760608 (=> res!514625 e!424033)))

(assert (=> b!760608 (= e!424031 e!424033)))

(assert (= (and d!100519 c!83373) b!760604))

(assert (= (and d!100519 (not c!83373)) b!760603))

(assert (= (and b!760603 c!83372) b!760606))

(assert (= (and b!760603 (not c!83372)) b!760601))

(assert (= (and d!100519 c!83374) b!760605))

(assert (= (and d!100519 (not c!83374)) b!760602))

(assert (= (and b!760602 res!514624) b!760608))

(assert (= (and b!760608 (not res!514625)) b!760600))

(assert (= (and b!760600 (not res!514623)) b!760607))

(declare-fun m!707759 () Bool)

(assert (=> b!760600 m!707759))

(assert (=> b!760601 m!707747))

(assert (=> b!760601 m!707747))

(declare-fun m!707761 () Bool)

(assert (=> b!760601 m!707761))

(assert (=> b!760607 m!707759))

(assert (=> b!760608 m!707759))

(declare-fun m!707763 () Bool)

(assert (=> d!100519 m!707763))

(assert (=> d!100519 m!707419))

(assert (=> b!760108 d!100519))

(declare-fun b!760609 () Bool)

(declare-fun lt!338882 () SeekEntryResult!7734)

(assert (=> b!760609 (and (bvsge (index!33305 lt!338882) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338882) (size!20548 lt!338683)))))

(declare-fun res!514626 () Bool)

(assert (=> b!760609 (= res!514626 (= (select (arr!20127 lt!338683) (index!33305 lt!338882)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424038 () Bool)

(assert (=> b!760609 (=> res!514626 e!424038)))

(declare-fun d!100521 () Bool)

(declare-fun e!424035 () Bool)

(assert (=> d!100521 e!424035))

(declare-fun c!83377 () Bool)

(assert (=> d!100521 (= c!83377 (and (is-Intermediate!7734 lt!338882) (undefined!8546 lt!338882)))))

(declare-fun e!424037 () SeekEntryResult!7734)

(assert (=> d!100521 (= lt!338882 e!424037)))

(declare-fun c!83376 () Bool)

(assert (=> d!100521 (= c!83376 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338883 () (_ BitVec 64))

(assert (=> d!100521 (= lt!338883 (select (arr!20127 lt!338683) (toIndex!0 lt!338682 mask!3328)))))

(assert (=> d!100521 (validMask!0 mask!3328)))

(assert (=> d!100521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338682 mask!3328) lt!338682 lt!338683 mask!3328) lt!338882)))

(declare-fun b!760610 () Bool)

(declare-fun e!424034 () SeekEntryResult!7734)

(assert (=> b!760610 (= e!424034 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338682 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338682 lt!338683 mask!3328))))

(declare-fun b!760611 () Bool)

(declare-fun e!424036 () Bool)

(assert (=> b!760611 (= e!424035 e!424036)))

(declare-fun res!514627 () Bool)

(assert (=> b!760611 (= res!514627 (and (is-Intermediate!7734 lt!338882) (not (undefined!8546 lt!338882)) (bvslt (x!64222 lt!338882) #b01111111111111111111111111111110) (bvsge (x!64222 lt!338882) #b00000000000000000000000000000000) (bvsge (x!64222 lt!338882) #b00000000000000000000000000000000)))))

(assert (=> b!760611 (=> (not res!514627) (not e!424036))))

(declare-fun b!760612 () Bool)

(assert (=> b!760612 (= e!424037 e!424034)))

(declare-fun c!83375 () Bool)

(assert (=> b!760612 (= c!83375 (or (= lt!338883 lt!338682) (= (bvadd lt!338883 lt!338883) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760613 () Bool)

(assert (=> b!760613 (= e!424037 (Intermediate!7734 true (toIndex!0 lt!338682 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760614 () Bool)

(assert (=> b!760614 (= e!424035 (bvsge (x!64222 lt!338882) #b01111111111111111111111111111110))))

(declare-fun b!760615 () Bool)

(assert (=> b!760615 (= e!424034 (Intermediate!7734 false (toIndex!0 lt!338682 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760616 () Bool)

(assert (=> b!760616 (and (bvsge (index!33305 lt!338882) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338882) (size!20548 lt!338683)))))

(assert (=> b!760616 (= e!424038 (= (select (arr!20127 lt!338683) (index!33305 lt!338882)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760617 () Bool)

(assert (=> b!760617 (and (bvsge (index!33305 lt!338882) #b00000000000000000000000000000000) (bvslt (index!33305 lt!338882) (size!20548 lt!338683)))))

(declare-fun res!514628 () Bool)

(assert (=> b!760617 (= res!514628 (= (select (arr!20127 lt!338683) (index!33305 lt!338882)) lt!338682))))

(assert (=> b!760617 (=> res!514628 e!424038)))

(assert (=> b!760617 (= e!424036 e!424038)))

(assert (= (and d!100521 c!83376) b!760613))

(assert (= (and d!100521 (not c!83376)) b!760612))

(assert (= (and b!760612 c!83375) b!760615))

(assert (= (and b!760612 (not c!83375)) b!760610))

(assert (= (and d!100521 c!83377) b!760614))

(assert (= (and d!100521 (not c!83377)) b!760611))

(assert (= (and b!760611 res!514627) b!760617))

(assert (= (and b!760617 (not res!514628)) b!760609))

(assert (= (and b!760609 (not res!514626)) b!760616))

(declare-fun m!707765 () Bool)

(assert (=> b!760609 m!707765))

(assert (=> b!760610 m!707397))

(declare-fun m!707767 () Bool)

(assert (=> b!760610 m!707767))

(assert (=> b!760610 m!707767))

(declare-fun m!707769 () Bool)

(assert (=> b!760610 m!707769))

(assert (=> b!760616 m!707765))

(assert (=> b!760617 m!707765))

(assert (=> d!100521 m!707397))

(declare-fun m!707771 () Bool)

(assert (=> d!100521 m!707771))

(assert (=> d!100521 m!707419))

(assert (=> b!760108 d!100521))

(declare-fun d!100523 () Bool)

(declare-fun lt!338885 () (_ BitVec 32))

(declare-fun lt!338884 () (_ BitVec 32))

(assert (=> d!100523 (= lt!338885 (bvmul (bvxor lt!338884 (bvlshr lt!338884 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100523 (= lt!338884 ((_ extract 31 0) (bvand (bvxor lt!338682 (bvlshr lt!338682 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100523 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514538 (let ((h!15257 ((_ extract 31 0) (bvand (bvxor lt!338682 (bvlshr lt!338682 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64229 (bvmul (bvxor h!15257 (bvlshr h!15257 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64229 (bvlshr x!64229 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514538 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514538 #b00000000000000000000000000000000))))))

(assert (=> d!100523 (= (toIndex!0 lt!338682 mask!3328) (bvand (bvxor lt!338885 (bvlshr lt!338885 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760108 d!100523))

(declare-fun b!760618 () Bool)

(declare-fun e!424039 () Bool)

(declare-fun call!34952 () Bool)

(assert (=> b!760618 (= e!424039 call!34952)))

(declare-fun d!100525 () Bool)

(declare-fun res!514630 () Bool)

(declare-fun e!424040 () Bool)

(assert (=> d!100525 (=> res!514630 e!424040)))

(assert (=> d!100525 (= res!514630 (bvsge j!159 (size!20548 a!3186)))))

(assert (=> d!100525 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424040)))

(declare-fun b!760619 () Bool)

(declare-fun e!424041 () Bool)

(assert (=> b!760619 (= e!424041 call!34952)))

(declare-fun b!760620 () Bool)

(assert (=> b!760620 (= e!424039 e!424041)))

(declare-fun lt!338886 () (_ BitVec 64))

(assert (=> b!760620 (= lt!338886 (select (arr!20127 a!3186) j!159))))

(declare-fun lt!338887 () Unit!26308)

(assert (=> b!760620 (= lt!338887 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338886 j!159))))

(assert (=> b!760620 (arrayContainsKey!0 a!3186 lt!338886 #b00000000000000000000000000000000)))

(declare-fun lt!338888 () Unit!26308)

(assert (=> b!760620 (= lt!338888 lt!338887)))

(declare-fun res!514629 () Bool)

(assert (=> b!760620 (= res!514629 (= (seekEntryOrOpen!0 (select (arr!20127 a!3186) j!159) a!3186 mask!3328) (Found!7734 j!159)))))

(assert (=> b!760620 (=> (not res!514629) (not e!424041))))

(declare-fun bm!34949 () Bool)

(assert (=> bm!34949 (= call!34952 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760621 () Bool)

(assert (=> b!760621 (= e!424040 e!424039)))

(declare-fun c!83378 () Bool)

(assert (=> b!760621 (= c!83378 (validKeyInArray!0 (select (arr!20127 a!3186) j!159)))))

(assert (= (and d!100525 (not res!514630)) b!760621))

(assert (= (and b!760621 c!83378) b!760620))

(assert (= (and b!760621 (not c!83378)) b!760618))

(assert (= (and b!760620 res!514629) b!760619))

(assert (= (or b!760619 b!760618) bm!34949))

(assert (=> b!760620 m!707387))

(declare-fun m!707773 () Bool)

(assert (=> b!760620 m!707773))

(declare-fun m!707775 () Bool)

(assert (=> b!760620 m!707775))

(assert (=> b!760620 m!707387))

(assert (=> b!760620 m!707393))

(declare-fun m!707777 () Bool)

(assert (=> bm!34949 m!707777))

(assert (=> b!760621 m!707387))

(assert (=> b!760621 m!707387))

(assert (=> b!760621 m!707417))

(assert (=> b!760097 d!100525))

(declare-fun d!100527 () Bool)

(assert (=> d!100527 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338891 () Unit!26308)

(declare-fun choose!38 (array!42037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26308)

(assert (=> d!100527 (= lt!338891 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100527 (validMask!0 mask!3328)))

(assert (=> d!100527 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!338891)))

(declare-fun bs!21381 () Bool)

(assert (= bs!21381 d!100527))

(assert (=> bs!21381 m!707423))

(declare-fun m!707779 () Bool)

(assert (=> bs!21381 m!707779))

(assert (=> bs!21381 m!707419))

(assert (=> b!760097 d!100527))

(push 1)

(assert (not b!760321))

(assert (not b!760620))

(assert (not b!760586))

(assert (not b!760601))

(assert (not b!760557))

(assert (not d!100521))

(assert (not b!760255))

(assert (not d!100473))

(assert (not d!100519))

(assert (not b!760594))

(assert (not d!100517))

(assert (not b!760457))

(assert (not b!760621))

(assert (not d!100527))

(assert (not d!100467))

(assert (not d!100447))

(assert (not b!760506))

(assert (not bm!34947))

(assert (not d!100437))

(assert (not b!760256))

(assert (not b!760577))

(assert (not b!760576))

(assert (not bm!34949))

(assert (not b!760446))

(assert (not b!760578))

(assert (not d!100509))

(assert (not bm!34935))

(assert (not b!760610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

