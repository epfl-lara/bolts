; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27402 () Bool)

(assert start!27402)

(declare-fun b!283473 () Bool)

(declare-fun res!146433 () Bool)

(declare-fun e!179862 () Bool)

(assert (=> b!283473 (=> (not res!146433) (not e!179862))))

(declare-datatypes ((array!14146 0))(
  ( (array!14147 (arr!6713 (Array (_ BitVec 32) (_ BitVec 64))) (size!7065 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14146)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283473 (= res!146433 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283474 () Bool)

(declare-fun res!146434 () Bool)

(assert (=> b!283474 (=> (not res!146434) (not e!179862))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!283474 (= res!146434 (and (= (size!7065 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7065 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7065 a!3325))))))

(declare-fun b!283475 () Bool)

(declare-fun e!179861 () Bool)

(declare-fun e!179860 () Bool)

(assert (=> b!283475 (= e!179861 (not e!179860))))

(declare-fun res!146430 () Bool)

(assert (=> b!283475 (=> res!146430 e!179860)))

(assert (=> b!283475 (= res!146430 (bvslt startIndex!26 (bvsub (size!7065 a!3325) #b00000000000000000000000000000001)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14146 (_ BitVec 32)) Bool)

(assert (=> b!283475 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9027 0))(
  ( (Unit!9028) )
))
(declare-fun lt!140158 () Unit!9027)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9027)

(assert (=> b!283475 (= lt!140158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!140162 () array!14146)

(declare-datatypes ((SeekEntryResult!1882 0))(
  ( (MissingZero!1882 (index!9698 (_ BitVec 32))) (Found!1882 (index!9699 (_ BitVec 32))) (Intermediate!1882 (undefined!2694 Bool) (index!9700 (_ BitVec 32)) (x!27872 (_ BitVec 32))) (Undefined!1882) (MissingVacant!1882 (index!9701 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14146 (_ BitVec 32)) SeekEntryResult!1882)

(assert (=> b!283475 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868))))

(declare-fun lt!140161 () Unit!9027)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14146 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9027)

(assert (=> b!283475 (= lt!140161 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4542 0))(
  ( (Nil!4539) (Cons!4538 (h!5208 (_ BitVec 64)) (t!9632 List!4542)) )
))
(declare-fun arrayNoDuplicates!0 (array!14146 (_ BitVec 32) List!4542) Bool)

(assert (=> b!283475 (arrayNoDuplicates!0 lt!140162 #b00000000000000000000000000000000 Nil!4539)))

(declare-fun lt!140160 () Unit!9027)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14146 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4542) Unit!9027)

(assert (=> b!283475 (= lt!140160 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4539))))

(declare-fun b!283477 () Bool)

(declare-fun e!179863 () Bool)

(assert (=> b!283477 (= e!179862 e!179863)))

(declare-fun res!146431 () Bool)

(assert (=> b!283477 (=> (not res!146431) (not e!179863))))

(declare-fun lt!140159 () SeekEntryResult!1882)

(assert (=> b!283477 (= res!146431 (or (= lt!140159 (MissingZero!1882 i!1267)) (= lt!140159 (MissingVacant!1882 i!1267))))))

(assert (=> b!283477 (= lt!140159 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!283478 () Bool)

(declare-fun res!146435 () Bool)

(assert (=> b!283478 (=> (not res!146435) (not e!179862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283478 (= res!146435 (validKeyInArray!0 k0!2581))))

(declare-fun b!283479 () Bool)

(assert (=> b!283479 (= e!179860 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140162 mask!3868))))

(declare-fun b!283480 () Bool)

(declare-fun res!146439 () Bool)

(assert (=> b!283480 (=> (not res!146439) (not e!179863))))

(assert (=> b!283480 (= res!146439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283481 () Bool)

(declare-fun res!146436 () Bool)

(assert (=> b!283481 (=> (not res!146436) (not e!179861))))

(assert (=> b!283481 (= res!146436 (validKeyInArray!0 (select (arr!6713 a!3325) startIndex!26)))))

(declare-fun b!283482 () Bool)

(assert (=> b!283482 (= e!179863 e!179861)))

(declare-fun res!146432 () Bool)

(assert (=> b!283482 (=> (not res!146432) (not e!179861))))

(assert (=> b!283482 (= res!146432 (not (= startIndex!26 i!1267)))))

(assert (=> b!283482 (= lt!140162 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)))))

(declare-fun res!146438 () Bool)

(assert (=> start!27402 (=> (not res!146438) (not e!179862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27402 (= res!146438 (validMask!0 mask!3868))))

(assert (=> start!27402 e!179862))

(declare-fun array_inv!4667 (array!14146) Bool)

(assert (=> start!27402 (array_inv!4667 a!3325)))

(assert (=> start!27402 true))

(declare-fun b!283476 () Bool)

(declare-fun res!146437 () Bool)

(assert (=> b!283476 (=> (not res!146437) (not e!179862))))

(assert (=> b!283476 (= res!146437 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4539))))

(assert (= (and start!27402 res!146438) b!283474))

(assert (= (and b!283474 res!146434) b!283478))

(assert (= (and b!283478 res!146435) b!283476))

(assert (= (and b!283476 res!146437) b!283473))

(assert (= (and b!283473 res!146433) b!283477))

(assert (= (and b!283477 res!146431) b!283480))

(assert (= (and b!283480 res!146439) b!283482))

(assert (= (and b!283482 res!146432) b!283481))

(assert (= (and b!283481 res!146436) b!283475))

(assert (= (and b!283475 (not res!146430)) b!283479))

(declare-fun m!298425 () Bool)

(assert (=> b!283481 m!298425))

(assert (=> b!283481 m!298425))

(declare-fun m!298427 () Bool)

(assert (=> b!283481 m!298427))

(declare-fun m!298429 () Bool)

(assert (=> b!283478 m!298429))

(declare-fun m!298431 () Bool)

(assert (=> b!283473 m!298431))

(declare-fun m!298433 () Bool)

(assert (=> b!283477 m!298433))

(declare-fun m!298435 () Bool)

(assert (=> b!283479 m!298435))

(declare-fun m!298437 () Bool)

(assert (=> b!283482 m!298437))

(declare-fun m!298439 () Bool)

(assert (=> b!283480 m!298439))

(declare-fun m!298441 () Bool)

(assert (=> b!283476 m!298441))

(declare-fun m!298443 () Bool)

(assert (=> start!27402 m!298443))

(declare-fun m!298445 () Bool)

(assert (=> start!27402 m!298445))

(declare-fun m!298447 () Bool)

(assert (=> b!283475 m!298447))

(declare-fun m!298449 () Bool)

(assert (=> b!283475 m!298449))

(declare-fun m!298451 () Bool)

(assert (=> b!283475 m!298451))

(declare-fun m!298453 () Bool)

(assert (=> b!283475 m!298453))

(assert (=> b!283475 m!298449))

(assert (=> b!283475 m!298437))

(declare-fun m!298455 () Bool)

(assert (=> b!283475 m!298455))

(assert (=> b!283475 m!298425))

(declare-fun m!298457 () Bool)

(assert (=> b!283475 m!298457))

(declare-fun m!298459 () Bool)

(assert (=> b!283475 m!298459))

(assert (=> b!283475 m!298425))

(declare-fun m!298461 () Bool)

(assert (=> b!283475 m!298461))

(check-sat (not b!283478) (not b!283480) (not b!283481) (not b!283475) (not start!27402) (not b!283476) (not b!283479) (not b!283473) (not b!283477))
(check-sat)
(get-model)

(declare-fun e!179885 () SeekEntryResult!1882)

(declare-fun b!283525 () Bool)

(declare-fun lt!140184 () SeekEntryResult!1882)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14146 (_ BitVec 32)) SeekEntryResult!1882)

(assert (=> b!283525 (= e!179885 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140184) (index!9700 lt!140184) (index!9700 lt!140184) k0!2581 a!3325 mask!3868))))

(declare-fun b!283527 () Bool)

(declare-fun c!46081 () Bool)

(declare-fun lt!140185 () (_ BitVec 64))

(assert (=> b!283527 (= c!46081 (= lt!140185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!179887 () SeekEntryResult!1882)

(assert (=> b!283527 (= e!179887 e!179885)))

(declare-fun b!283528 () Bool)

(assert (=> b!283528 (= e!179887 (Found!1882 (index!9700 lt!140184)))))

(declare-fun b!283529 () Bool)

(declare-fun e!179886 () SeekEntryResult!1882)

(assert (=> b!283529 (= e!179886 e!179887)))

(assert (=> b!283529 (= lt!140185 (select (arr!6713 a!3325) (index!9700 lt!140184)))))

(declare-fun c!46080 () Bool)

(assert (=> b!283529 (= c!46080 (= lt!140185 k0!2581))))

(declare-fun b!283530 () Bool)

(assert (=> b!283530 (= e!179886 Undefined!1882)))

(declare-fun d!65281 () Bool)

(declare-fun lt!140186 () SeekEntryResult!1882)

(get-info :version)

(assert (=> d!65281 (and (or ((_ is Undefined!1882) lt!140186) (not ((_ is Found!1882) lt!140186)) (and (bvsge (index!9699 lt!140186) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140186) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140186) ((_ is Found!1882) lt!140186) (not ((_ is MissingZero!1882) lt!140186)) (and (bvsge (index!9698 lt!140186) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140186) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140186) ((_ is Found!1882) lt!140186) ((_ is MissingZero!1882) lt!140186) (not ((_ is MissingVacant!1882) lt!140186)) (and (bvsge (index!9701 lt!140186) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140186) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140186) (ite ((_ is Found!1882) lt!140186) (= (select (arr!6713 a!3325) (index!9699 lt!140186)) k0!2581) (ite ((_ is MissingZero!1882) lt!140186) (= (select (arr!6713 a!3325) (index!9698 lt!140186)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140186) (= (select (arr!6713 a!3325) (index!9701 lt!140186)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65281 (= lt!140186 e!179886)))

(declare-fun c!46082 () Bool)

(assert (=> d!65281 (= c!46082 (and ((_ is Intermediate!1882) lt!140184) (undefined!2694 lt!140184)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14146 (_ BitVec 32)) SeekEntryResult!1882)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65281 (= lt!140184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!65281 (validMask!0 mask!3868)))

(assert (=> d!65281 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!140186)))

(declare-fun b!283526 () Bool)

(assert (=> b!283526 (= e!179885 (MissingZero!1882 (index!9700 lt!140184)))))

(assert (= (and d!65281 c!46082) b!283530))

(assert (= (and d!65281 (not c!46082)) b!283529))

(assert (= (and b!283529 c!46080) b!283528))

(assert (= (and b!283529 (not c!46080)) b!283527))

(assert (= (and b!283527 c!46081) b!283526))

(assert (= (and b!283527 (not c!46081)) b!283525))

(declare-fun m!298501 () Bool)

(assert (=> b!283525 m!298501))

(declare-fun m!298503 () Bool)

(assert (=> b!283529 m!298503))

(declare-fun m!298505 () Bool)

(assert (=> d!65281 m!298505))

(declare-fun m!298507 () Bool)

(assert (=> d!65281 m!298507))

(declare-fun m!298509 () Bool)

(assert (=> d!65281 m!298509))

(declare-fun m!298511 () Bool)

(assert (=> d!65281 m!298511))

(assert (=> d!65281 m!298505))

(assert (=> d!65281 m!298443))

(declare-fun m!298513 () Bool)

(assert (=> d!65281 m!298513))

(assert (=> b!283477 d!65281))

(declare-fun b!283545 () Bool)

(declare-fun e!179901 () Bool)

(declare-fun e!179903 () Bool)

(assert (=> b!283545 (= e!179901 e!179903)))

(declare-fun c!46085 () Bool)

(assert (=> b!283545 (= c!46085 (validKeyInArray!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283546 () Bool)

(declare-fun call!25490 () Bool)

(assert (=> b!283546 (= e!179903 call!25490)))

(declare-fun bm!25487 () Bool)

(assert (=> bm!25487 (= call!25490 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46085 (Cons!4538 (select (arr!6713 a!3325) #b00000000000000000000000000000000) Nil!4539) Nil!4539)))))

(declare-fun b!283547 () Bool)

(declare-fun e!179902 () Bool)

(declare-fun contains!1992 (List!4542 (_ BitVec 64)) Bool)

(assert (=> b!283547 (= e!179902 (contains!1992 Nil!4539 (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65285 () Bool)

(declare-fun res!146481 () Bool)

(declare-fun e!179900 () Bool)

(assert (=> d!65285 (=> res!146481 e!179900)))

(assert (=> d!65285 (= res!146481 (bvsge #b00000000000000000000000000000000 (size!7065 a!3325)))))

(assert (=> d!65285 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4539) e!179900)))

(declare-fun b!283548 () Bool)

(assert (=> b!283548 (= e!179903 call!25490)))

(declare-fun b!283549 () Bool)

(assert (=> b!283549 (= e!179900 e!179901)))

(declare-fun res!146482 () Bool)

(assert (=> b!283549 (=> (not res!146482) (not e!179901))))

(assert (=> b!283549 (= res!146482 (not e!179902))))

(declare-fun res!146480 () Bool)

(assert (=> b!283549 (=> (not res!146480) (not e!179902))))

(assert (=> b!283549 (= res!146480 (validKeyInArray!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65285 (not res!146481)) b!283549))

(assert (= (and b!283549 res!146480) b!283547))

(assert (= (and b!283549 res!146482) b!283545))

(assert (= (and b!283545 c!46085) b!283548))

(assert (= (and b!283545 (not c!46085)) b!283546))

(assert (= (or b!283548 b!283546) bm!25487))

(declare-fun m!298515 () Bool)

(assert (=> b!283545 m!298515))

(assert (=> b!283545 m!298515))

(declare-fun m!298517 () Bool)

(assert (=> b!283545 m!298517))

(assert (=> bm!25487 m!298515))

(declare-fun m!298519 () Bool)

(assert (=> bm!25487 m!298519))

(assert (=> b!283547 m!298515))

(assert (=> b!283547 m!298515))

(declare-fun m!298521 () Bool)

(assert (=> b!283547 m!298521))

(assert (=> b!283549 m!298515))

(assert (=> b!283549 m!298515))

(assert (=> b!283549 m!298517))

(assert (=> b!283476 d!65285))

(declare-fun d!65293 () Bool)

(assert (=> d!65293 (= (validKeyInArray!0 (select (arr!6713 a!3325) startIndex!26)) (and (not (= (select (arr!6713 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6713 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283481 d!65293))

(declare-fun d!65297 () Bool)

(declare-fun e!179944 () Bool)

(assert (=> d!65297 e!179944))

(declare-fun res!146512 () Bool)

(assert (=> d!65297 (=> (not res!146512) (not e!179944))))

(assert (=> d!65297 (= res!146512 (and (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7065 a!3325)) (and (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7065 a!3325)))) (or (bvslt i!1267 #b00000000000000000000000000000000) (bvsge i!1267 (size!7065 a!3325)) (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7065 a!3325)))) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7065 a!3325))))))

(declare-fun lt!140213 () Unit!9027)

(declare-fun choose!83 (array!14146 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9027)

(assert (=> d!65297 (= lt!140213 (choose!83 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> d!65297 (validMask!0 mask!3868)))

(assert (=> d!65297 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868) lt!140213)))

(declare-fun b!283601 () Bool)

(assert (=> b!283601 (= e!179944 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) mask!3868)))))

(assert (= (and d!65297 res!146512) b!283601))

(declare-fun m!298577 () Bool)

(assert (=> d!65297 m!298577))

(assert (=> d!65297 m!298443))

(assert (=> b!283601 m!298425))

(assert (=> b!283601 m!298461))

(assert (=> b!283601 m!298425))

(assert (=> b!283601 m!298437))

(assert (=> b!283601 m!298449))

(assert (=> b!283601 m!298449))

(declare-fun m!298579 () Bool)

(assert (=> b!283601 m!298579))

(assert (=> b!283475 d!65297))

(declare-fun lt!140214 () SeekEntryResult!1882)

(declare-fun e!179945 () SeekEntryResult!1882)

(declare-fun b!283602 () Bool)

(assert (=> b!283602 (= e!179945 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140214) (index!9700 lt!140214) (index!9700 lt!140214) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283604 () Bool)

(declare-fun c!46098 () Bool)

(declare-fun lt!140215 () (_ BitVec 64))

(assert (=> b!283604 (= c!46098 (= lt!140215 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!179947 () SeekEntryResult!1882)

(assert (=> b!283604 (= e!179947 e!179945)))

(declare-fun b!283605 () Bool)

(assert (=> b!283605 (= e!179947 (Found!1882 (index!9700 lt!140214)))))

(declare-fun b!283606 () Bool)

(declare-fun e!179946 () SeekEntryResult!1882)

(assert (=> b!283606 (= e!179946 e!179947)))

(assert (=> b!283606 (= lt!140215 (select (arr!6713 a!3325) (index!9700 lt!140214)))))

(declare-fun c!46097 () Bool)

(assert (=> b!283606 (= c!46097 (= lt!140215 (select (arr!6713 a!3325) startIndex!26)))))

(declare-fun b!283607 () Bool)

(assert (=> b!283607 (= e!179946 Undefined!1882)))

(declare-fun d!65311 () Bool)

(declare-fun lt!140216 () SeekEntryResult!1882)

(assert (=> d!65311 (and (or ((_ is Undefined!1882) lt!140216) (not ((_ is Found!1882) lt!140216)) (and (bvsge (index!9699 lt!140216) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140216) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140216) ((_ is Found!1882) lt!140216) (not ((_ is MissingZero!1882) lt!140216)) (and (bvsge (index!9698 lt!140216) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140216) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140216) ((_ is Found!1882) lt!140216) ((_ is MissingZero!1882) lt!140216) (not ((_ is MissingVacant!1882) lt!140216)) (and (bvsge (index!9701 lt!140216) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140216) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140216) (ite ((_ is Found!1882) lt!140216) (= (select (arr!6713 a!3325) (index!9699 lt!140216)) (select (arr!6713 a!3325) startIndex!26)) (ite ((_ is MissingZero!1882) lt!140216) (= (select (arr!6713 a!3325) (index!9698 lt!140216)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140216) (= (select (arr!6713 a!3325) (index!9701 lt!140216)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65311 (= lt!140216 e!179946)))

(declare-fun c!46099 () Bool)

(assert (=> d!65311 (= c!46099 (and ((_ is Intermediate!1882) lt!140214) (undefined!2694 lt!140214)))))

(assert (=> d!65311 (= lt!140214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868))))

(assert (=> d!65311 (validMask!0 mask!3868)))

(assert (=> d!65311 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) lt!140216)))

(declare-fun b!283603 () Bool)

(assert (=> b!283603 (= e!179945 (MissingZero!1882 (index!9700 lt!140214)))))

(assert (= (and d!65311 c!46099) b!283607))

(assert (= (and d!65311 (not c!46099)) b!283606))

(assert (= (and b!283606 c!46097) b!283605))

(assert (= (and b!283606 (not c!46097)) b!283604))

(assert (= (and b!283604 c!46098) b!283603))

(assert (= (and b!283604 (not c!46098)) b!283602))

(assert (=> b!283602 m!298425))

(declare-fun m!298581 () Bool)

(assert (=> b!283602 m!298581))

(declare-fun m!298583 () Bool)

(assert (=> b!283606 m!298583))

(declare-fun m!298585 () Bool)

(assert (=> d!65311 m!298585))

(assert (=> d!65311 m!298425))

(declare-fun m!298587 () Bool)

(assert (=> d!65311 m!298587))

(declare-fun m!298589 () Bool)

(assert (=> d!65311 m!298589))

(declare-fun m!298591 () Bool)

(assert (=> d!65311 m!298591))

(assert (=> d!65311 m!298425))

(assert (=> d!65311 m!298585))

(assert (=> d!65311 m!298443))

(declare-fun m!298593 () Bool)

(assert (=> d!65311 m!298593))

(assert (=> b!283475 d!65311))

(declare-fun d!65313 () Bool)

(declare-fun e!179956 () Bool)

(assert (=> d!65313 e!179956))

(declare-fun res!146521 () Bool)

(assert (=> d!65313 (=> (not res!146521) (not e!179956))))

(assert (=> d!65313 (= res!146521 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7065 a!3325))))))

(declare-fun lt!140219 () Unit!9027)

(declare-fun choose!41 (array!14146 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4542) Unit!9027)

(assert (=> d!65313 (= lt!140219 (choose!41 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4539))))

(assert (=> d!65313 (bvslt (size!7065 a!3325) #b01111111111111111111111111111111)))

(assert (=> d!65313 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4539) lt!140219)))

(declare-fun b!283616 () Bool)

(assert (=> b!283616 (= e!179956 (arrayNoDuplicates!0 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) #b00000000000000000000000000000000 Nil!4539))))

(assert (= (and d!65313 res!146521) b!283616))

(declare-fun m!298597 () Bool)

(assert (=> d!65313 m!298597))

(assert (=> b!283616 m!298437))

(declare-fun m!298599 () Bool)

(assert (=> b!283616 m!298599))

(assert (=> b!283475 d!65313))

(declare-fun d!65319 () Bool)

(assert (=> d!65319 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!140225 () Unit!9027)

(declare-fun choose!38 (array!14146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9027)

(assert (=> d!65319 (= lt!140225 (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> d!65319 (validMask!0 mask!3868)))

(assert (=> d!65319 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) lt!140225)))

(declare-fun bs!10072 () Bool)

(assert (= bs!10072 d!65319))

(assert (=> bs!10072 m!298455))

(declare-fun m!298605 () Bool)

(assert (=> bs!10072 m!298605))

(assert (=> bs!10072 m!298443))

(assert (=> b!283475 d!65319))

(declare-fun b!283620 () Bool)

(declare-fun e!179961 () Bool)

(declare-fun e!179963 () Bool)

(assert (=> b!283620 (= e!179961 e!179963)))

(declare-fun c!46100 () Bool)

(assert (=> b!283620 (= c!46100 (validKeyInArray!0 (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(declare-fun b!283621 () Bool)

(declare-fun call!25502 () Bool)

(assert (=> b!283621 (= e!179963 call!25502)))

(declare-fun bm!25499 () Bool)

(assert (=> bm!25499 (= call!25502 (arrayNoDuplicates!0 lt!140162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46100 (Cons!4538 (select (arr!6713 lt!140162) #b00000000000000000000000000000000) Nil!4539) Nil!4539)))))

(declare-fun b!283622 () Bool)

(declare-fun e!179962 () Bool)

(assert (=> b!283622 (= e!179962 (contains!1992 Nil!4539 (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(declare-fun d!65323 () Bool)

(declare-fun res!146526 () Bool)

(declare-fun e!179960 () Bool)

(assert (=> d!65323 (=> res!146526 e!179960)))

(assert (=> d!65323 (= res!146526 (bvsge #b00000000000000000000000000000000 (size!7065 lt!140162)))))

(assert (=> d!65323 (= (arrayNoDuplicates!0 lt!140162 #b00000000000000000000000000000000 Nil!4539) e!179960)))

(declare-fun b!283623 () Bool)

(assert (=> b!283623 (= e!179963 call!25502)))

(declare-fun b!283624 () Bool)

(assert (=> b!283624 (= e!179960 e!179961)))

(declare-fun res!146527 () Bool)

(assert (=> b!283624 (=> (not res!146527) (not e!179961))))

(assert (=> b!283624 (= res!146527 (not e!179962))))

(declare-fun res!146525 () Bool)

(assert (=> b!283624 (=> (not res!146525) (not e!179962))))

(assert (=> b!283624 (= res!146525 (validKeyInArray!0 (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(assert (= (and d!65323 (not res!146526)) b!283624))

(assert (= (and b!283624 res!146525) b!283622))

(assert (= (and b!283624 res!146527) b!283620))

(assert (= (and b!283620 c!46100) b!283623))

(assert (= (and b!283620 (not c!46100)) b!283621))

(assert (= (or b!283623 b!283621) bm!25499))

(declare-fun m!298607 () Bool)

(assert (=> b!283620 m!298607))

(assert (=> b!283620 m!298607))

(declare-fun m!298609 () Bool)

(assert (=> b!283620 m!298609))

(assert (=> bm!25499 m!298607))

(declare-fun m!298611 () Bool)

(assert (=> bm!25499 m!298611))

(assert (=> b!283622 m!298607))

(assert (=> b!283622 m!298607))

(declare-fun m!298613 () Bool)

(assert (=> b!283622 m!298613))

(assert (=> b!283624 m!298607))

(assert (=> b!283624 m!298607))

(assert (=> b!283624 m!298609))

(assert (=> b!283475 d!65323))

(declare-fun b!283636 () Bool)

(declare-fun e!179975 () Bool)

(declare-fun e!179973 () Bool)

(assert (=> b!283636 (= e!179975 e!179973)))

(declare-fun c!46103 () Bool)

(assert (=> b!283636 (= c!46103 (validKeyInArray!0 (select (arr!6713 a!3325) startIndex!26)))))

(declare-fun b!283637 () Bool)

(declare-fun e!179974 () Bool)

(assert (=> b!283637 (= e!179973 e!179974)))

(declare-fun lt!140235 () (_ BitVec 64))

(assert (=> b!283637 (= lt!140235 (select (arr!6713 a!3325) startIndex!26))))

(declare-fun lt!140237 () Unit!9027)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14146 (_ BitVec 64) (_ BitVec 32)) Unit!9027)

(assert (=> b!283637 (= lt!140237 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140235 startIndex!26))))

(assert (=> b!283637 (arrayContainsKey!0 a!3325 lt!140235 #b00000000000000000000000000000000)))

(declare-fun lt!140236 () Unit!9027)

(assert (=> b!283637 (= lt!140236 lt!140237)))

(declare-fun res!146536 () Bool)

(assert (=> b!283637 (= res!146536 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) (Found!1882 startIndex!26)))))

(assert (=> b!283637 (=> (not res!146536) (not e!179974))))

(declare-fun b!283638 () Bool)

(declare-fun call!25505 () Bool)

(assert (=> b!283638 (= e!179973 call!25505)))

(declare-fun bm!25502 () Bool)

(assert (=> bm!25502 (= call!25505 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65325 () Bool)

(declare-fun res!146535 () Bool)

(assert (=> d!65325 (=> res!146535 e!179975)))

(assert (=> d!65325 (= res!146535 (bvsge startIndex!26 (size!7065 a!3325)))))

(assert (=> d!65325 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868) e!179975)))

(declare-fun b!283639 () Bool)

(assert (=> b!283639 (= e!179974 call!25505)))

(assert (= (and d!65325 (not res!146535)) b!283636))

(assert (= (and b!283636 c!46103) b!283637))

(assert (= (and b!283636 (not c!46103)) b!283638))

(assert (= (and b!283637 res!146536) b!283639))

(assert (= (or b!283639 b!283638) bm!25502))

(assert (=> b!283636 m!298425))

(assert (=> b!283636 m!298425))

(assert (=> b!283636 m!298427))

(assert (=> b!283637 m!298425))

(declare-fun m!298619 () Bool)

(assert (=> b!283637 m!298619))

(declare-fun m!298621 () Bool)

(assert (=> b!283637 m!298621))

(assert (=> b!283637 m!298425))

(assert (=> b!283637 m!298461))

(declare-fun m!298623 () Bool)

(assert (=> bm!25502 m!298623))

(assert (=> b!283475 d!65325))

(declare-fun e!179976 () SeekEntryResult!1882)

(declare-fun b!283640 () Bool)

(declare-fun lt!140238 () SeekEntryResult!1882)

(assert (=> b!283640 (= e!179976 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140238) (index!9700 lt!140238) (index!9700 lt!140238) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868))))

(declare-fun b!283642 () Bool)

(declare-fun c!46105 () Bool)

(declare-fun lt!140239 () (_ BitVec 64))

(assert (=> b!283642 (= c!46105 (= lt!140239 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!179978 () SeekEntryResult!1882)

(assert (=> b!283642 (= e!179978 e!179976)))

(declare-fun b!283643 () Bool)

(assert (=> b!283643 (= e!179978 (Found!1882 (index!9700 lt!140238)))))

(declare-fun b!283644 () Bool)

(declare-fun e!179977 () SeekEntryResult!1882)

(assert (=> b!283644 (= e!179977 e!179978)))

(assert (=> b!283644 (= lt!140239 (select (arr!6713 lt!140162) (index!9700 lt!140238)))))

(declare-fun c!46104 () Bool)

(assert (=> b!283644 (= c!46104 (= lt!140239 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)))))

(declare-fun b!283645 () Bool)

(assert (=> b!283645 (= e!179977 Undefined!1882)))

(declare-fun lt!140240 () SeekEntryResult!1882)

(declare-fun d!65329 () Bool)

(assert (=> d!65329 (and (or ((_ is Undefined!1882) lt!140240) (not ((_ is Found!1882) lt!140240)) (and (bvsge (index!9699 lt!140240) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140240) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140240) ((_ is Found!1882) lt!140240) (not ((_ is MissingZero!1882) lt!140240)) (and (bvsge (index!9698 lt!140240) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140240) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140240) ((_ is Found!1882) lt!140240) ((_ is MissingZero!1882) lt!140240) (not ((_ is MissingVacant!1882) lt!140240)) (and (bvsge (index!9701 lt!140240) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140240) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140240) (ite ((_ is Found!1882) lt!140240) (= (select (arr!6713 lt!140162) (index!9699 lt!140240)) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)) (ite ((_ is MissingZero!1882) lt!140240) (= (select (arr!6713 lt!140162) (index!9698 lt!140240)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140240) (= (select (arr!6713 lt!140162) (index!9701 lt!140240)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65329 (= lt!140240 e!179977)))

(declare-fun c!46106 () Bool)

(assert (=> d!65329 (= c!46106 (and ((_ is Intermediate!1882) lt!140238) (undefined!2694 lt!140238)))))

(assert (=> d!65329 (= lt!140238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868))))

(assert (=> d!65329 (validMask!0 mask!3868)))

(assert (=> d!65329 (= (seekEntryOrOpen!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868) lt!140240)))

(declare-fun b!283641 () Bool)

(assert (=> b!283641 (= e!179976 (MissingZero!1882 (index!9700 lt!140238)))))

(assert (= (and d!65329 c!46106) b!283645))

(assert (= (and d!65329 (not c!46106)) b!283644))

(assert (= (and b!283644 c!46104) b!283643))

(assert (= (and b!283644 (not c!46104)) b!283642))

(assert (= (and b!283642 c!46105) b!283641))

(assert (= (and b!283642 (not c!46105)) b!283640))

(assert (=> b!283640 m!298449))

(declare-fun m!298625 () Bool)

(assert (=> b!283640 m!298625))

(declare-fun m!298627 () Bool)

(assert (=> b!283644 m!298627))

(declare-fun m!298629 () Bool)

(assert (=> d!65329 m!298629))

(assert (=> d!65329 m!298449))

(declare-fun m!298631 () Bool)

(assert (=> d!65329 m!298631))

(declare-fun m!298633 () Bool)

(assert (=> d!65329 m!298633))

(declare-fun m!298635 () Bool)

(assert (=> d!65329 m!298635))

(assert (=> d!65329 m!298449))

(assert (=> d!65329 m!298629))

(assert (=> d!65329 m!298443))

(declare-fun m!298637 () Bool)

(assert (=> d!65329 m!298637))

(assert (=> b!283475 d!65329))

(declare-fun b!283646 () Bool)

(declare-fun e!179981 () Bool)

(declare-fun e!179979 () Bool)

(assert (=> b!283646 (= e!179981 e!179979)))

(declare-fun c!46107 () Bool)

(assert (=> b!283646 (= c!46107 (validKeyInArray!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283647 () Bool)

(declare-fun e!179980 () Bool)

(assert (=> b!283647 (= e!179979 e!179980)))

(declare-fun lt!140241 () (_ BitVec 64))

(assert (=> b!283647 (= lt!140241 (select (arr!6713 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140243 () Unit!9027)

(assert (=> b!283647 (= lt!140243 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140241 #b00000000000000000000000000000000))))

(assert (=> b!283647 (arrayContainsKey!0 a!3325 lt!140241 #b00000000000000000000000000000000)))

(declare-fun lt!140242 () Unit!9027)

(assert (=> b!283647 (= lt!140242 lt!140243)))

(declare-fun res!146538 () Bool)

(assert (=> b!283647 (= res!146538 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1882 #b00000000000000000000000000000000)))))

(assert (=> b!283647 (=> (not res!146538) (not e!179980))))

(declare-fun b!283648 () Bool)

(declare-fun call!25506 () Bool)

(assert (=> b!283648 (= e!179979 call!25506)))

(declare-fun bm!25503 () Bool)

(assert (=> bm!25503 (= call!25506 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65331 () Bool)

(declare-fun res!146537 () Bool)

(assert (=> d!65331 (=> res!146537 e!179981)))

(assert (=> d!65331 (= res!146537 (bvsge #b00000000000000000000000000000000 (size!7065 a!3325)))))

(assert (=> d!65331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!179981)))

(declare-fun b!283649 () Bool)

(assert (=> b!283649 (= e!179980 call!25506)))

(assert (= (and d!65331 (not res!146537)) b!283646))

(assert (= (and b!283646 c!46107) b!283647))

(assert (= (and b!283646 (not c!46107)) b!283648))

(assert (= (and b!283647 res!146538) b!283649))

(assert (= (or b!283649 b!283648) bm!25503))

(assert (=> b!283646 m!298515))

(assert (=> b!283646 m!298515))

(assert (=> b!283646 m!298517))

(assert (=> b!283647 m!298515))

(declare-fun m!298639 () Bool)

(assert (=> b!283647 m!298639))

(declare-fun m!298641 () Bool)

(assert (=> b!283647 m!298641))

(assert (=> b!283647 m!298515))

(declare-fun m!298643 () Bool)

(assert (=> b!283647 m!298643))

(declare-fun m!298645 () Bool)

(assert (=> bm!25503 m!298645))

(assert (=> b!283480 d!65331))

(declare-fun b!283650 () Bool)

(declare-fun e!179984 () Bool)

(declare-fun e!179982 () Bool)

(assert (=> b!283650 (= e!179984 e!179982)))

(declare-fun c!46108 () Bool)

(assert (=> b!283650 (= c!46108 (validKeyInArray!0 (select (arr!6713 lt!140162) startIndex!26)))))

(declare-fun b!283651 () Bool)

(declare-fun e!179983 () Bool)

(assert (=> b!283651 (= e!179982 e!179983)))

(declare-fun lt!140244 () (_ BitVec 64))

(assert (=> b!283651 (= lt!140244 (select (arr!6713 lt!140162) startIndex!26))))

(declare-fun lt!140246 () Unit!9027)

(assert (=> b!283651 (= lt!140246 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140162 lt!140244 startIndex!26))))

(assert (=> b!283651 (arrayContainsKey!0 lt!140162 lt!140244 #b00000000000000000000000000000000)))

(declare-fun lt!140245 () Unit!9027)

(assert (=> b!283651 (= lt!140245 lt!140246)))

(declare-fun res!146540 () Bool)

(assert (=> b!283651 (= res!146540 (= (seekEntryOrOpen!0 (select (arr!6713 lt!140162) startIndex!26) lt!140162 mask!3868) (Found!1882 startIndex!26)))))

(assert (=> b!283651 (=> (not res!146540) (not e!179983))))

(declare-fun b!283652 () Bool)

(declare-fun call!25507 () Bool)

(assert (=> b!283652 (= e!179982 call!25507)))

(declare-fun bm!25504 () Bool)

(assert (=> bm!25504 (= call!25507 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140162 mask!3868))))

(declare-fun d!65333 () Bool)

(declare-fun res!146539 () Bool)

(assert (=> d!65333 (=> res!146539 e!179984)))

(assert (=> d!65333 (= res!146539 (bvsge startIndex!26 (size!7065 lt!140162)))))

(assert (=> d!65333 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140162 mask!3868) e!179984)))

(declare-fun b!283653 () Bool)

(assert (=> b!283653 (= e!179983 call!25507)))

(assert (= (and d!65333 (not res!146539)) b!283650))

(assert (= (and b!283650 c!46108) b!283651))

(assert (= (and b!283650 (not c!46108)) b!283652))

(assert (= (and b!283651 res!146540) b!283653))

(assert (= (or b!283653 b!283652) bm!25504))

(declare-fun m!298647 () Bool)

(assert (=> b!283650 m!298647))

(assert (=> b!283650 m!298647))

(declare-fun m!298649 () Bool)

(assert (=> b!283650 m!298649))

(assert (=> b!283651 m!298647))

(declare-fun m!298651 () Bool)

(assert (=> b!283651 m!298651))

(declare-fun m!298653 () Bool)

(assert (=> b!283651 m!298653))

(assert (=> b!283651 m!298647))

(declare-fun m!298655 () Bool)

(assert (=> b!283651 m!298655))

(declare-fun m!298657 () Bool)

(assert (=> bm!25504 m!298657))

(assert (=> b!283479 d!65333))

(declare-fun d!65335 () Bool)

(declare-fun res!146545 () Bool)

(declare-fun e!179995 () Bool)

(assert (=> d!65335 (=> res!146545 e!179995)))

(assert (=> d!65335 (= res!146545 (= (select (arr!6713 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65335 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!179995)))

(declare-fun b!283670 () Bool)

(declare-fun e!179996 () Bool)

(assert (=> b!283670 (= e!179995 e!179996)))

(declare-fun res!146546 () Bool)

(assert (=> b!283670 (=> (not res!146546) (not e!179996))))

(assert (=> b!283670 (= res!146546 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(declare-fun b!283671 () Bool)

(assert (=> b!283671 (= e!179996 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65335 (not res!146545)) b!283670))

(assert (= (and b!283670 res!146546) b!283671))

(assert (=> d!65335 m!298515))

(declare-fun m!298659 () Bool)

(assert (=> b!283671 m!298659))

(assert (=> b!283473 d!65335))

(declare-fun d!65337 () Bool)

(assert (=> d!65337 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283478 d!65337))

(declare-fun d!65339 () Bool)

(assert (=> d!65339 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27402 d!65339))

(declare-fun d!65347 () Bool)

(assert (=> d!65347 (= (array_inv!4667 a!3325) (bvsge (size!7065 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27402 d!65347))

(check-sat (not b!283647) (not b!283525) (not b!283671) (not bm!25499) (not d!65297) (not bm!25504) (not b!283650) (not b!283602) (not d!65311) (not d!65319) (not b!283640) (not b!283622) (not bm!25503) (not b!283646) (not bm!25502) (not b!283547) (not d!65313) (not b!283549) (not b!283545) (not d!65281) (not d!65329) (not bm!25487) (not b!283651) (not b!283616) (not b!283637) (not b!283620) (not b!283636) (not b!283624) (not b!283601))
(check-sat)
(get-model)

(assert (=> d!65319 d!65325))

(declare-fun d!65377 () Bool)

(assert (=> d!65377 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(assert (=> d!65377 true))

(declare-fun _$72!98 () Unit!9027)

(assert (=> d!65377 (= (choose!38 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26) _$72!98)))

(declare-fun bs!10075 () Bool)

(assert (= bs!10075 d!65377))

(assert (=> bs!10075 m!298455))

(assert (=> d!65319 d!65377))

(assert (=> d!65319 d!65339))

(declare-fun d!65379 () Bool)

(declare-fun res!146572 () Bool)

(declare-fun e!180053 () Bool)

(assert (=> d!65379 (=> res!146572 e!180053)))

(assert (=> d!65379 (= res!146572 (= (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2581))))

(assert (=> d!65379 (= (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!180053)))

(declare-fun b!283759 () Bool)

(declare-fun e!180054 () Bool)

(assert (=> b!283759 (= e!180053 e!180054)))

(declare-fun res!146573 () Bool)

(assert (=> b!283759 (=> (not res!146573) (not e!180054))))

(assert (=> b!283759 (= res!146573 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(declare-fun b!283760 () Bool)

(assert (=> b!283760 (= e!180054 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!65379 (not res!146572)) b!283759))

(assert (= (and b!283759 res!146573) b!283760))

(declare-fun m!298789 () Bool)

(assert (=> d!65379 m!298789))

(declare-fun m!298791 () Bool)

(assert (=> b!283760 m!298791))

(assert (=> b!283671 d!65379))

(declare-fun d!65381 () Bool)

(declare-fun lt!140299 () SeekEntryResult!1882)

(assert (=> d!65381 (and (or ((_ is Undefined!1882) lt!140299) (not ((_ is Found!1882) lt!140299)) (and (bvsge (index!9699 lt!140299) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140299) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140299) ((_ is Found!1882) lt!140299) (not ((_ is MissingVacant!1882) lt!140299)) (not (= (index!9701 lt!140299) (index!9700 lt!140184))) (and (bvsge (index!9701 lt!140299) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140299) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140299) (ite ((_ is Found!1882) lt!140299) (= (select (arr!6713 a!3325) (index!9699 lt!140299)) k0!2581) (and ((_ is MissingVacant!1882) lt!140299) (= (index!9701 lt!140299) (index!9700 lt!140184)) (= (select (arr!6713 a!3325) (index!9701 lt!140299)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180062 () SeekEntryResult!1882)

(assert (=> d!65381 (= lt!140299 e!180062)))

(declare-fun c!46153 () Bool)

(assert (=> d!65381 (= c!46153 (bvsge (x!27872 lt!140184) #b01111111111111111111111111111110))))

(declare-fun lt!140300 () (_ BitVec 64))

(assert (=> d!65381 (= lt!140300 (select (arr!6713 a!3325) (index!9700 lt!140184)))))

(assert (=> d!65381 (validMask!0 mask!3868)))

(assert (=> d!65381 (= (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140184) (index!9700 lt!140184) (index!9700 lt!140184) k0!2581 a!3325 mask!3868) lt!140299)))

(declare-fun b!283773 () Bool)

(declare-fun e!180063 () SeekEntryResult!1882)

(assert (=> b!283773 (= e!180063 (Found!1882 (index!9700 lt!140184)))))

(declare-fun b!283774 () Bool)

(declare-fun c!46154 () Bool)

(assert (=> b!283774 (= c!46154 (= lt!140300 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180061 () SeekEntryResult!1882)

(assert (=> b!283774 (= e!180063 e!180061)))

(declare-fun b!283775 () Bool)

(assert (=> b!283775 (= e!180061 (MissingVacant!1882 (index!9700 lt!140184)))))

(declare-fun b!283776 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!283776 (= e!180061 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27872 lt!140184) #b00000000000000000000000000000001) (nextIndex!0 (index!9700 lt!140184) (x!27872 lt!140184) mask!3868) (index!9700 lt!140184) k0!2581 a!3325 mask!3868))))

(declare-fun b!283777 () Bool)

(assert (=> b!283777 (= e!180062 e!180063)))

(declare-fun c!46152 () Bool)

(assert (=> b!283777 (= c!46152 (= lt!140300 k0!2581))))

(declare-fun b!283778 () Bool)

(assert (=> b!283778 (= e!180062 Undefined!1882)))

(assert (= (and d!65381 c!46153) b!283778))

(assert (= (and d!65381 (not c!46153)) b!283777))

(assert (= (and b!283777 c!46152) b!283773))

(assert (= (and b!283777 (not c!46152)) b!283774))

(assert (= (and b!283774 c!46154) b!283775))

(assert (= (and b!283774 (not c!46154)) b!283776))

(declare-fun m!298793 () Bool)

(assert (=> d!65381 m!298793))

(declare-fun m!298795 () Bool)

(assert (=> d!65381 m!298795))

(assert (=> d!65381 m!298503))

(assert (=> d!65381 m!298443))

(declare-fun m!298797 () Bool)

(assert (=> b!283776 m!298797))

(assert (=> b!283776 m!298797))

(declare-fun m!298799 () Bool)

(assert (=> b!283776 m!298799))

(assert (=> b!283525 d!65381))

(declare-fun d!65383 () Bool)

(assert (=> d!65383 (= (validKeyInArray!0 (select (arr!6713 lt!140162) #b00000000000000000000000000000000)) (and (not (= (select (arr!6713 lt!140162) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6713 lt!140162) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283624 d!65383))

(declare-fun d!65385 () Bool)

(assert (=> d!65385 (= (validKeyInArray!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6713 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6713 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283549 d!65385))

(declare-fun lt!140301 () SeekEntryResult!1882)

(declare-fun d!65387 () Bool)

(assert (=> d!65387 (and (or ((_ is Undefined!1882) lt!140301) (not ((_ is Found!1882) lt!140301)) (and (bvsge (index!9699 lt!140301) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140301) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140301) ((_ is Found!1882) lt!140301) (not ((_ is MissingVacant!1882) lt!140301)) (not (= (index!9701 lt!140301) (index!9700 lt!140238))) (and (bvsge (index!9701 lt!140301) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140301) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140301) (ite ((_ is Found!1882) lt!140301) (= (select (arr!6713 lt!140162) (index!9699 lt!140301)) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)) (and ((_ is MissingVacant!1882) lt!140301) (= (index!9701 lt!140301) (index!9700 lt!140238)) (= (select (arr!6713 lt!140162) (index!9701 lt!140301)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180065 () SeekEntryResult!1882)

(assert (=> d!65387 (= lt!140301 e!180065)))

(declare-fun c!46156 () Bool)

(assert (=> d!65387 (= c!46156 (bvsge (x!27872 lt!140238) #b01111111111111111111111111111110))))

(declare-fun lt!140302 () (_ BitVec 64))

(assert (=> d!65387 (= lt!140302 (select (arr!6713 lt!140162) (index!9700 lt!140238)))))

(assert (=> d!65387 (validMask!0 mask!3868)))

(assert (=> d!65387 (= (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140238) (index!9700 lt!140238) (index!9700 lt!140238) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868) lt!140301)))

(declare-fun b!283779 () Bool)

(declare-fun e!180066 () SeekEntryResult!1882)

(assert (=> b!283779 (= e!180066 (Found!1882 (index!9700 lt!140238)))))

(declare-fun b!283780 () Bool)

(declare-fun c!46157 () Bool)

(assert (=> b!283780 (= c!46157 (= lt!140302 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180064 () SeekEntryResult!1882)

(assert (=> b!283780 (= e!180066 e!180064)))

(declare-fun b!283781 () Bool)

(assert (=> b!283781 (= e!180064 (MissingVacant!1882 (index!9700 lt!140238)))))

(declare-fun b!283782 () Bool)

(assert (=> b!283782 (= e!180064 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27872 lt!140238) #b00000000000000000000000000000001) (nextIndex!0 (index!9700 lt!140238) (x!27872 lt!140238) mask!3868) (index!9700 lt!140238) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868))))

(declare-fun b!283783 () Bool)

(assert (=> b!283783 (= e!180065 e!180066)))

(declare-fun c!46155 () Bool)

(assert (=> b!283783 (= c!46155 (= lt!140302 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)))))

(declare-fun b!283784 () Bool)

(assert (=> b!283784 (= e!180065 Undefined!1882)))

(assert (= (and d!65387 c!46156) b!283784))

(assert (= (and d!65387 (not c!46156)) b!283783))

(assert (= (and b!283783 c!46155) b!283779))

(assert (= (and b!283783 (not c!46155)) b!283780))

(assert (= (and b!283780 c!46157) b!283781))

(assert (= (and b!283780 (not c!46157)) b!283782))

(declare-fun m!298801 () Bool)

(assert (=> d!65387 m!298801))

(declare-fun m!298803 () Bool)

(assert (=> d!65387 m!298803))

(assert (=> d!65387 m!298627))

(assert (=> d!65387 m!298443))

(declare-fun m!298805 () Bool)

(assert (=> b!283782 m!298805))

(assert (=> b!283782 m!298805))

(assert (=> b!283782 m!298449))

(declare-fun m!298807 () Bool)

(assert (=> b!283782 m!298807))

(assert (=> b!283640 d!65387))

(declare-fun d!65389 () Bool)

(declare-fun e!180078 () Bool)

(assert (=> d!65389 e!180078))

(declare-fun c!46164 () Bool)

(declare-fun lt!140307 () SeekEntryResult!1882)

(assert (=> d!65389 (= c!46164 (and ((_ is Intermediate!1882) lt!140307) (undefined!2694 lt!140307)))))

(declare-fun e!180079 () SeekEntryResult!1882)

(assert (=> d!65389 (= lt!140307 e!180079)))

(declare-fun c!46166 () Bool)

(assert (=> d!65389 (= c!46166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140308 () (_ BitVec 64))

(assert (=> d!65389 (= lt!140308 (select (arr!6713 a!3325) (toIndex!0 k0!2581 mask!3868)))))

(assert (=> d!65389 (validMask!0 mask!3868)))

(assert (=> d!65389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868) lt!140307)))

(declare-fun b!283803 () Bool)

(assert (=> b!283803 (and (bvsge (index!9700 lt!140307) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140307) (size!7065 a!3325)))))

(declare-fun e!180080 () Bool)

(assert (=> b!283803 (= e!180080 (= (select (arr!6713 a!3325) (index!9700 lt!140307)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!283804 () Bool)

(assert (=> b!283804 (= e!180079 (Intermediate!1882 true (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!283805 () Bool)

(assert (=> b!283805 (and (bvsge (index!9700 lt!140307) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140307) (size!7065 a!3325)))))

(declare-fun res!146582 () Bool)

(assert (=> b!283805 (= res!146582 (= (select (arr!6713 a!3325) (index!9700 lt!140307)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283805 (=> res!146582 e!180080)))

(declare-fun b!283806 () Bool)

(assert (=> b!283806 (= e!180078 (bvsge (x!27872 lt!140307) #b01111111111111111111111111111110))))

(declare-fun e!180077 () SeekEntryResult!1882)

(declare-fun b!283807 () Bool)

(assert (=> b!283807 (= e!180077 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k0!2581 a!3325 mask!3868))))

(declare-fun b!283808 () Bool)

(declare-fun e!180081 () Bool)

(assert (=> b!283808 (= e!180078 e!180081)))

(declare-fun res!146581 () Bool)

(assert (=> b!283808 (= res!146581 (and ((_ is Intermediate!1882) lt!140307) (not (undefined!2694 lt!140307)) (bvslt (x!27872 lt!140307) #b01111111111111111111111111111110) (bvsge (x!27872 lt!140307) #b00000000000000000000000000000000) (bvsge (x!27872 lt!140307) #b00000000000000000000000000000000)))))

(assert (=> b!283808 (=> (not res!146581) (not e!180081))))

(declare-fun b!283809 () Bool)

(assert (=> b!283809 (and (bvsge (index!9700 lt!140307) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140307) (size!7065 a!3325)))))

(declare-fun res!146580 () Bool)

(assert (=> b!283809 (= res!146580 (= (select (arr!6713 a!3325) (index!9700 lt!140307)) k0!2581))))

(assert (=> b!283809 (=> res!146580 e!180080)))

(assert (=> b!283809 (= e!180081 e!180080)))

(declare-fun b!283810 () Bool)

(assert (=> b!283810 (= e!180079 e!180077)))

(declare-fun c!46165 () Bool)

(assert (=> b!283810 (= c!46165 (or (= lt!140308 k0!2581) (= (bvadd lt!140308 lt!140308) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!283811 () Bool)

(assert (=> b!283811 (= e!180077 (Intermediate!1882 false (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(assert (= (and d!65389 c!46166) b!283804))

(assert (= (and d!65389 (not c!46166)) b!283810))

(assert (= (and b!283810 c!46165) b!283811))

(assert (= (and b!283810 (not c!46165)) b!283807))

(assert (= (and d!65389 c!46164) b!283806))

(assert (= (and d!65389 (not c!46164)) b!283808))

(assert (= (and b!283808 res!146581) b!283809))

(assert (= (and b!283809 (not res!146580)) b!283805))

(assert (= (and b!283805 (not res!146582)) b!283803))

(declare-fun m!298809 () Bool)

(assert (=> b!283805 m!298809))

(assert (=> b!283809 m!298809))

(assert (=> b!283803 m!298809))

(assert (=> b!283807 m!298505))

(declare-fun m!298811 () Bool)

(assert (=> b!283807 m!298811))

(assert (=> b!283807 m!298811))

(declare-fun m!298813 () Bool)

(assert (=> b!283807 m!298813))

(assert (=> d!65389 m!298505))

(declare-fun m!298815 () Bool)

(assert (=> d!65389 m!298815))

(assert (=> d!65389 m!298443))

(assert (=> d!65281 d!65389))

(declare-fun d!65391 () Bool)

(declare-fun lt!140314 () (_ BitVec 32))

(declare-fun lt!140313 () (_ BitVec 32))

(assert (=> d!65391 (= lt!140314 (bvmul (bvxor lt!140313 (bvlshr lt!140313 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65391 (= lt!140313 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65391 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146583 (let ((h!5210 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27876 (bvmul (bvxor h!5210 (bvlshr h!5210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27876 (bvlshr x!27876 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146583 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146583 #b00000000000000000000000000000000))))))

(assert (=> d!65391 (= (toIndex!0 k0!2581 mask!3868) (bvand (bvxor lt!140314 (bvlshr lt!140314 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65281 d!65391))

(assert (=> d!65281 d!65339))

(declare-fun d!65393 () Bool)

(assert (=> d!65393 (arrayContainsKey!0 a!3325 lt!140235 #b00000000000000000000000000000000)))

(declare-fun lt!140317 () Unit!9027)

(declare-fun choose!13 (array!14146 (_ BitVec 64) (_ BitVec 32)) Unit!9027)

(assert (=> d!65393 (= lt!140317 (choose!13 a!3325 lt!140235 startIndex!26))))

(assert (=> d!65393 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65393 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140235 startIndex!26) lt!140317)))

(declare-fun bs!10076 () Bool)

(assert (= bs!10076 d!65393))

(assert (=> bs!10076 m!298621))

(declare-fun m!298817 () Bool)

(assert (=> bs!10076 m!298817))

(assert (=> b!283637 d!65393))

(declare-fun d!65395 () Bool)

(declare-fun res!146584 () Bool)

(declare-fun e!180082 () Bool)

(assert (=> d!65395 (=> res!146584 e!180082)))

(assert (=> d!65395 (= res!146584 (= (select (arr!6713 a!3325) #b00000000000000000000000000000000) lt!140235))))

(assert (=> d!65395 (= (arrayContainsKey!0 a!3325 lt!140235 #b00000000000000000000000000000000) e!180082)))

(declare-fun b!283812 () Bool)

(declare-fun e!180083 () Bool)

(assert (=> b!283812 (= e!180082 e!180083)))

(declare-fun res!146585 () Bool)

(assert (=> b!283812 (=> (not res!146585) (not e!180083))))

(assert (=> b!283812 (= res!146585 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(declare-fun b!283813 () Bool)

(assert (=> b!283813 (= e!180083 (arrayContainsKey!0 a!3325 lt!140235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65395 (not res!146584)) b!283812))

(assert (= (and b!283812 res!146585) b!283813))

(assert (=> d!65395 m!298515))

(declare-fun m!298819 () Bool)

(assert (=> b!283813 m!298819))

(assert (=> b!283637 d!65395))

(assert (=> b!283637 d!65311))

(assert (=> b!283636 d!65293))

(declare-fun d!65397 () Bool)

(declare-fun lt!140320 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!190 (List!4542) (InoxSet (_ BitVec 64)))

(assert (=> d!65397 (= lt!140320 (select (content!190 Nil!4539) (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(declare-fun e!180089 () Bool)

(assert (=> d!65397 (= lt!140320 e!180089)))

(declare-fun res!146590 () Bool)

(assert (=> d!65397 (=> (not res!146590) (not e!180089))))

(assert (=> d!65397 (= res!146590 ((_ is Cons!4538) Nil!4539))))

(assert (=> d!65397 (= (contains!1992 Nil!4539 (select (arr!6713 lt!140162) #b00000000000000000000000000000000)) lt!140320)))

(declare-fun b!283818 () Bool)

(declare-fun e!180088 () Bool)

(assert (=> b!283818 (= e!180089 e!180088)))

(declare-fun res!146591 () Bool)

(assert (=> b!283818 (=> res!146591 e!180088)))

(assert (=> b!283818 (= res!146591 (= (h!5208 Nil!4539) (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(declare-fun b!283819 () Bool)

(assert (=> b!283819 (= e!180088 (contains!1992 (t!9632 Nil!4539) (select (arr!6713 lt!140162) #b00000000000000000000000000000000)))))

(assert (= (and d!65397 res!146590) b!283818))

(assert (= (and b!283818 (not res!146591)) b!283819))

(declare-fun m!298821 () Bool)

(assert (=> d!65397 m!298821))

(assert (=> d!65397 m!298607))

(declare-fun m!298823 () Bool)

(assert (=> d!65397 m!298823))

(assert (=> b!283819 m!298607))

(declare-fun m!298825 () Bool)

(assert (=> b!283819 m!298825))

(assert (=> b!283622 d!65397))

(declare-fun b!283820 () Bool)

(declare-fun e!180091 () Bool)

(declare-fun e!180093 () Bool)

(assert (=> b!283820 (= e!180091 e!180093)))

(declare-fun c!46167 () Bool)

(assert (=> b!283820 (= c!46167 (validKeyInArray!0 (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun b!283821 () Bool)

(declare-fun call!25515 () Bool)

(assert (=> b!283821 (= e!180093 call!25515)))

(declare-fun bm!25512 () Bool)

(assert (=> bm!25512 (= call!25515 (arrayNoDuplicates!0 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46167 (Cons!4538 (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) #b00000000000000000000000000000000) Nil!4539) Nil!4539)))))

(declare-fun b!283822 () Bool)

(declare-fun e!180092 () Bool)

(assert (=> b!283822 (= e!180092 (contains!1992 Nil!4539 (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) #b00000000000000000000000000000000)))))

(declare-fun d!65399 () Bool)

(declare-fun res!146593 () Bool)

(declare-fun e!180090 () Bool)

(assert (=> d!65399 (=> res!146593 e!180090)))

(assert (=> d!65399 (= res!146593 (bvsge #b00000000000000000000000000000000 (size!7065 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)))))))

(assert (=> d!65399 (= (arrayNoDuplicates!0 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) #b00000000000000000000000000000000 Nil!4539) e!180090)))

(declare-fun b!283823 () Bool)

(assert (=> b!283823 (= e!180093 call!25515)))

(declare-fun b!283824 () Bool)

(assert (=> b!283824 (= e!180090 e!180091)))

(declare-fun res!146594 () Bool)

(assert (=> b!283824 (=> (not res!146594) (not e!180091))))

(assert (=> b!283824 (= res!146594 (not e!180092))))

(declare-fun res!146592 () Bool)

(assert (=> b!283824 (=> (not res!146592) (not e!180092))))

(assert (=> b!283824 (= res!146592 (validKeyInArray!0 (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) #b00000000000000000000000000000000)))))

(assert (= (and d!65399 (not res!146593)) b!283824))

(assert (= (and b!283824 res!146592) b!283822))

(assert (= (and b!283824 res!146594) b!283820))

(assert (= (and b!283820 c!46167) b!283823))

(assert (= (and b!283820 (not c!46167)) b!283821))

(assert (= (or b!283823 b!283821) bm!25512))

(declare-fun m!298827 () Bool)

(assert (=> b!283820 m!298827))

(assert (=> b!283820 m!298827))

(declare-fun m!298829 () Bool)

(assert (=> b!283820 m!298829))

(assert (=> bm!25512 m!298827))

(declare-fun m!298831 () Bool)

(assert (=> bm!25512 m!298831))

(assert (=> b!283822 m!298827))

(assert (=> b!283822 m!298827))

(declare-fun m!298833 () Bool)

(assert (=> b!283822 m!298833))

(assert (=> b!283824 m!298827))

(assert (=> b!283824 m!298827))

(assert (=> b!283824 m!298829))

(assert (=> b!283616 d!65399))

(declare-fun d!65401 () Bool)

(declare-fun lt!140321 () Bool)

(assert (=> d!65401 (= lt!140321 (select (content!190 Nil!4539) (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun e!180095 () Bool)

(assert (=> d!65401 (= lt!140321 e!180095)))

(declare-fun res!146595 () Bool)

(assert (=> d!65401 (=> (not res!146595) (not e!180095))))

(assert (=> d!65401 (= res!146595 ((_ is Cons!4538) Nil!4539))))

(assert (=> d!65401 (= (contains!1992 Nil!4539 (select (arr!6713 a!3325) #b00000000000000000000000000000000)) lt!140321)))

(declare-fun b!283825 () Bool)

(declare-fun e!180094 () Bool)

(assert (=> b!283825 (= e!180095 e!180094)))

(declare-fun res!146596 () Bool)

(assert (=> b!283825 (=> res!146596 e!180094)))

(assert (=> b!283825 (= res!146596 (= (h!5208 Nil!4539) (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283826 () Bool)

(assert (=> b!283826 (= e!180094 (contains!1992 (t!9632 Nil!4539) (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65401 res!146595) b!283825))

(assert (= (and b!283825 (not res!146596)) b!283826))

(assert (=> d!65401 m!298821))

(assert (=> d!65401 m!298515))

(declare-fun m!298835 () Bool)

(assert (=> d!65401 m!298835))

(assert (=> b!283826 m!298515))

(declare-fun m!298837 () Bool)

(assert (=> b!283826 m!298837))

(assert (=> b!283547 d!65401))

(declare-fun d!65403 () Bool)

(declare-fun e!180097 () Bool)

(assert (=> d!65403 e!180097))

(declare-fun c!46168 () Bool)

(declare-fun lt!140322 () SeekEntryResult!1882)

(assert (=> d!65403 (= c!46168 (and ((_ is Intermediate!1882) lt!140322) (undefined!2694 lt!140322)))))

(declare-fun e!180098 () SeekEntryResult!1882)

(assert (=> d!65403 (= lt!140322 e!180098)))

(declare-fun c!46170 () Bool)

(assert (=> d!65403 (= c!46170 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140323 () (_ BitVec 64))

(assert (=> d!65403 (= lt!140323 (select (arr!6713 a!3325) (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868)))))

(assert (=> d!65403 (validMask!0 mask!3868)))

(assert (=> d!65403 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) lt!140322)))

(declare-fun b!283827 () Bool)

(assert (=> b!283827 (and (bvsge (index!9700 lt!140322) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140322) (size!7065 a!3325)))))

(declare-fun e!180099 () Bool)

(assert (=> b!283827 (= e!180099 (= (select (arr!6713 a!3325) (index!9700 lt!140322)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!283828 () Bool)

(assert (=> b!283828 (= e!180098 (Intermediate!1882 true (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!283829 () Bool)

(assert (=> b!283829 (and (bvsge (index!9700 lt!140322) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140322) (size!7065 a!3325)))))

(declare-fun res!146599 () Bool)

(assert (=> b!283829 (= res!146599 (= (select (arr!6713 a!3325) (index!9700 lt!140322)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283829 (=> res!146599 e!180099)))

(declare-fun b!283830 () Bool)

(assert (=> b!283830 (= e!180097 (bvsge (x!27872 lt!140322) #b01111111111111111111111111111110))))

(declare-fun e!180096 () SeekEntryResult!1882)

(declare-fun b!283831 () Bool)

(assert (=> b!283831 (= e!180096 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000 mask!3868) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283832 () Bool)

(declare-fun e!180100 () Bool)

(assert (=> b!283832 (= e!180097 e!180100)))

(declare-fun res!146598 () Bool)

(assert (=> b!283832 (= res!146598 (and ((_ is Intermediate!1882) lt!140322) (not (undefined!2694 lt!140322)) (bvslt (x!27872 lt!140322) #b01111111111111111111111111111110) (bvsge (x!27872 lt!140322) #b00000000000000000000000000000000) (bvsge (x!27872 lt!140322) #b00000000000000000000000000000000)))))

(assert (=> b!283832 (=> (not res!146598) (not e!180100))))

(declare-fun b!283833 () Bool)

(assert (=> b!283833 (and (bvsge (index!9700 lt!140322) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140322) (size!7065 a!3325)))))

(declare-fun res!146597 () Bool)

(assert (=> b!283833 (= res!146597 (= (select (arr!6713 a!3325) (index!9700 lt!140322)) (select (arr!6713 a!3325) startIndex!26)))))

(assert (=> b!283833 (=> res!146597 e!180099)))

(assert (=> b!283833 (= e!180100 e!180099)))

(declare-fun b!283834 () Bool)

(assert (=> b!283834 (= e!180098 e!180096)))

(declare-fun c!46169 () Bool)

(assert (=> b!283834 (= c!46169 (or (= lt!140323 (select (arr!6713 a!3325) startIndex!26)) (= (bvadd lt!140323 lt!140323) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!283835 () Bool)

(assert (=> b!283835 (= e!180096 (Intermediate!1882 false (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(assert (= (and d!65403 c!46170) b!283828))

(assert (= (and d!65403 (not c!46170)) b!283834))

(assert (= (and b!283834 c!46169) b!283835))

(assert (= (and b!283834 (not c!46169)) b!283831))

(assert (= (and d!65403 c!46168) b!283830))

(assert (= (and d!65403 (not c!46168)) b!283832))

(assert (= (and b!283832 res!146598) b!283833))

(assert (= (and b!283833 (not res!146597)) b!283829))

(assert (= (and b!283829 (not res!146599)) b!283827))

(declare-fun m!298839 () Bool)

(assert (=> b!283829 m!298839))

(assert (=> b!283833 m!298839))

(assert (=> b!283827 m!298839))

(assert (=> b!283831 m!298585))

(declare-fun m!298841 () Bool)

(assert (=> b!283831 m!298841))

(assert (=> b!283831 m!298841))

(assert (=> b!283831 m!298425))

(declare-fun m!298843 () Bool)

(assert (=> b!283831 m!298843))

(assert (=> d!65403 m!298585))

(declare-fun m!298845 () Bool)

(assert (=> d!65403 m!298845))

(assert (=> d!65403 m!298443))

(assert (=> d!65311 d!65403))

(declare-fun d!65405 () Bool)

(declare-fun lt!140325 () (_ BitVec 32))

(declare-fun lt!140324 () (_ BitVec 32))

(assert (=> d!65405 (= lt!140325 (bvmul (bvxor lt!140324 (bvlshr lt!140324 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65405 (= lt!140324 ((_ extract 31 0) (bvand (bvxor (select (arr!6713 a!3325) startIndex!26) (bvlshr (select (arr!6713 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65405 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146583 (let ((h!5210 ((_ extract 31 0) (bvand (bvxor (select (arr!6713 a!3325) startIndex!26) (bvlshr (select (arr!6713 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27876 (bvmul (bvxor h!5210 (bvlshr h!5210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27876 (bvlshr x!27876 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146583 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146583 #b00000000000000000000000000000000))))))

(assert (=> d!65405 (= (toIndex!0 (select (arr!6713 a!3325) startIndex!26) mask!3868) (bvand (bvxor lt!140325 (bvlshr lt!140325 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65311 d!65405))

(assert (=> d!65311 d!65339))

(declare-fun b!283836 () Bool)

(declare-fun e!180103 () Bool)

(declare-fun e!180101 () Bool)

(assert (=> b!283836 (= e!180103 e!180101)))

(declare-fun c!46171 () Bool)

(assert (=> b!283836 (= c!46171 (validKeyInArray!0 (select (arr!6713 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun b!283837 () Bool)

(declare-fun e!180102 () Bool)

(assert (=> b!283837 (= e!180101 e!180102)))

(declare-fun lt!140326 () (_ BitVec 64))

(assert (=> b!283837 (= lt!140326 (select (arr!6713 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140328 () Unit!9027)

(assert (=> b!283837 (= lt!140328 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140326 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!283837 (arrayContainsKey!0 a!3325 lt!140326 #b00000000000000000000000000000000)))

(declare-fun lt!140327 () Unit!9027)

(assert (=> b!283837 (= lt!140327 lt!140328)))

(declare-fun res!146601 () Bool)

(assert (=> b!283837 (= res!146601 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) (bvadd startIndex!26 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1882 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!283837 (=> (not res!146601) (not e!180102))))

(declare-fun b!283838 () Bool)

(declare-fun call!25516 () Bool)

(assert (=> b!283838 (= e!180101 call!25516)))

(declare-fun bm!25513 () Bool)

(assert (=> bm!25513 (= call!25516 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65407 () Bool)

(declare-fun res!146600 () Bool)

(assert (=> d!65407 (=> res!146600 e!180103)))

(assert (=> d!65407 (= res!146600 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(assert (=> d!65407 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) a!3325 mask!3868) e!180103)))

(declare-fun b!283839 () Bool)

(assert (=> b!283839 (= e!180102 call!25516)))

(assert (= (and d!65407 (not res!146600)) b!283836))

(assert (= (and b!283836 c!46171) b!283837))

(assert (= (and b!283836 (not c!46171)) b!283838))

(assert (= (and b!283837 res!146601) b!283839))

(assert (= (or b!283839 b!283838) bm!25513))

(declare-fun m!298847 () Bool)

(assert (=> b!283836 m!298847))

(assert (=> b!283836 m!298847))

(declare-fun m!298849 () Bool)

(assert (=> b!283836 m!298849))

(assert (=> b!283837 m!298847))

(declare-fun m!298851 () Bool)

(assert (=> b!283837 m!298851))

(declare-fun m!298853 () Bool)

(assert (=> b!283837 m!298853))

(assert (=> b!283837 m!298847))

(declare-fun m!298855 () Bool)

(assert (=> b!283837 m!298855))

(declare-fun m!298857 () Bool)

(assert (=> bm!25513 m!298857))

(assert (=> bm!25502 d!65407))

(assert (=> b!283545 d!65385))

(assert (=> b!283620 d!65383))

(declare-fun d!65409 () Bool)

(assert (=> d!65409 (arrayContainsKey!0 lt!140162 lt!140244 #b00000000000000000000000000000000)))

(declare-fun lt!140329 () Unit!9027)

(assert (=> d!65409 (= lt!140329 (choose!13 lt!140162 lt!140244 startIndex!26))))

(assert (=> d!65409 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65409 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140162 lt!140244 startIndex!26) lt!140329)))

(declare-fun bs!10077 () Bool)

(assert (= bs!10077 d!65409))

(assert (=> bs!10077 m!298653))

(declare-fun m!298859 () Bool)

(assert (=> bs!10077 m!298859))

(assert (=> b!283651 d!65409))

(declare-fun d!65411 () Bool)

(declare-fun res!146602 () Bool)

(declare-fun e!180104 () Bool)

(assert (=> d!65411 (=> res!146602 e!180104)))

(assert (=> d!65411 (= res!146602 (= (select (arr!6713 lt!140162) #b00000000000000000000000000000000) lt!140244))))

(assert (=> d!65411 (= (arrayContainsKey!0 lt!140162 lt!140244 #b00000000000000000000000000000000) e!180104)))

(declare-fun b!283840 () Bool)

(declare-fun e!180105 () Bool)

(assert (=> b!283840 (= e!180104 e!180105)))

(declare-fun res!146603 () Bool)

(assert (=> b!283840 (=> (not res!146603) (not e!180105))))

(assert (=> b!283840 (= res!146603 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 lt!140162)))))

(declare-fun b!283841 () Bool)

(assert (=> b!283841 (= e!180105 (arrayContainsKey!0 lt!140162 lt!140244 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65411 (not res!146602)) b!283840))

(assert (= (and b!283840 res!146603) b!283841))

(assert (=> d!65411 m!298607))

(declare-fun m!298861 () Bool)

(assert (=> b!283841 m!298861))

(assert (=> b!283651 d!65411))

(declare-fun e!180106 () SeekEntryResult!1882)

(declare-fun lt!140330 () SeekEntryResult!1882)

(declare-fun b!283842 () Bool)

(assert (=> b!283842 (= e!180106 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140330) (index!9700 lt!140330) (index!9700 lt!140330) (select (arr!6713 lt!140162) startIndex!26) lt!140162 mask!3868))))

(declare-fun b!283844 () Bool)

(declare-fun c!46173 () Bool)

(declare-fun lt!140331 () (_ BitVec 64))

(assert (=> b!283844 (= c!46173 (= lt!140331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180108 () SeekEntryResult!1882)

(assert (=> b!283844 (= e!180108 e!180106)))

(declare-fun b!283845 () Bool)

(assert (=> b!283845 (= e!180108 (Found!1882 (index!9700 lt!140330)))))

(declare-fun b!283846 () Bool)

(declare-fun e!180107 () SeekEntryResult!1882)

(assert (=> b!283846 (= e!180107 e!180108)))

(assert (=> b!283846 (= lt!140331 (select (arr!6713 lt!140162) (index!9700 lt!140330)))))

(declare-fun c!46172 () Bool)

(assert (=> b!283846 (= c!46172 (= lt!140331 (select (arr!6713 lt!140162) startIndex!26)))))

(declare-fun b!283847 () Bool)

(assert (=> b!283847 (= e!180107 Undefined!1882)))

(declare-fun d!65413 () Bool)

(declare-fun lt!140332 () SeekEntryResult!1882)

(assert (=> d!65413 (and (or ((_ is Undefined!1882) lt!140332) (not ((_ is Found!1882) lt!140332)) (and (bvsge (index!9699 lt!140332) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140332) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140332) ((_ is Found!1882) lt!140332) (not ((_ is MissingZero!1882) lt!140332)) (and (bvsge (index!9698 lt!140332) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140332) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140332) ((_ is Found!1882) lt!140332) ((_ is MissingZero!1882) lt!140332) (not ((_ is MissingVacant!1882) lt!140332)) (and (bvsge (index!9701 lt!140332) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140332) (size!7065 lt!140162)))) (or ((_ is Undefined!1882) lt!140332) (ite ((_ is Found!1882) lt!140332) (= (select (arr!6713 lt!140162) (index!9699 lt!140332)) (select (arr!6713 lt!140162) startIndex!26)) (ite ((_ is MissingZero!1882) lt!140332) (= (select (arr!6713 lt!140162) (index!9698 lt!140332)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140332) (= (select (arr!6713 lt!140162) (index!9701 lt!140332)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65413 (= lt!140332 e!180107)))

(declare-fun c!46174 () Bool)

(assert (=> d!65413 (= c!46174 (and ((_ is Intermediate!1882) lt!140330) (undefined!2694 lt!140330)))))

(assert (=> d!65413 (= lt!140330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6713 lt!140162) startIndex!26) mask!3868) (select (arr!6713 lt!140162) startIndex!26) lt!140162 mask!3868))))

(assert (=> d!65413 (validMask!0 mask!3868)))

(assert (=> d!65413 (= (seekEntryOrOpen!0 (select (arr!6713 lt!140162) startIndex!26) lt!140162 mask!3868) lt!140332)))

(declare-fun b!283843 () Bool)

(assert (=> b!283843 (= e!180106 (MissingZero!1882 (index!9700 lt!140330)))))

(assert (= (and d!65413 c!46174) b!283847))

(assert (= (and d!65413 (not c!46174)) b!283846))

(assert (= (and b!283846 c!46172) b!283845))

(assert (= (and b!283846 (not c!46172)) b!283844))

(assert (= (and b!283844 c!46173) b!283843))

(assert (= (and b!283844 (not c!46173)) b!283842))

(assert (=> b!283842 m!298647))

(declare-fun m!298863 () Bool)

(assert (=> b!283842 m!298863))

(declare-fun m!298865 () Bool)

(assert (=> b!283846 m!298865))

(declare-fun m!298867 () Bool)

(assert (=> d!65413 m!298867))

(assert (=> d!65413 m!298647))

(declare-fun m!298869 () Bool)

(assert (=> d!65413 m!298869))

(declare-fun m!298871 () Bool)

(assert (=> d!65413 m!298871))

(declare-fun m!298873 () Bool)

(assert (=> d!65413 m!298873))

(assert (=> d!65413 m!298647))

(assert (=> d!65413 m!298867))

(assert (=> d!65413 m!298443))

(declare-fun m!298875 () Bool)

(assert (=> d!65413 m!298875))

(assert (=> b!283651 d!65413))

(declare-fun lt!140333 () SeekEntryResult!1882)

(declare-fun d!65415 () Bool)

(assert (=> d!65415 (and (or ((_ is Undefined!1882) lt!140333) (not ((_ is Found!1882) lt!140333)) (and (bvsge (index!9699 lt!140333) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140333) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140333) ((_ is Found!1882) lt!140333) (not ((_ is MissingVacant!1882) lt!140333)) (not (= (index!9701 lt!140333) (index!9700 lt!140214))) (and (bvsge (index!9701 lt!140333) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140333) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140333) (ite ((_ is Found!1882) lt!140333) (= (select (arr!6713 a!3325) (index!9699 lt!140333)) (select (arr!6713 a!3325) startIndex!26)) (and ((_ is MissingVacant!1882) lt!140333) (= (index!9701 lt!140333) (index!9700 lt!140214)) (= (select (arr!6713 a!3325) (index!9701 lt!140333)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!180110 () SeekEntryResult!1882)

(assert (=> d!65415 (= lt!140333 e!180110)))

(declare-fun c!46176 () Bool)

(assert (=> d!65415 (= c!46176 (bvsge (x!27872 lt!140214) #b01111111111111111111111111111110))))

(declare-fun lt!140334 () (_ BitVec 64))

(assert (=> d!65415 (= lt!140334 (select (arr!6713 a!3325) (index!9700 lt!140214)))))

(assert (=> d!65415 (validMask!0 mask!3868)))

(assert (=> d!65415 (= (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140214) (index!9700 lt!140214) (index!9700 lt!140214) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) lt!140333)))

(declare-fun b!283848 () Bool)

(declare-fun e!180111 () SeekEntryResult!1882)

(assert (=> b!283848 (= e!180111 (Found!1882 (index!9700 lt!140214)))))

(declare-fun b!283849 () Bool)

(declare-fun c!46177 () Bool)

(assert (=> b!283849 (= c!46177 (= lt!140334 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180109 () SeekEntryResult!1882)

(assert (=> b!283849 (= e!180111 e!180109)))

(declare-fun b!283850 () Bool)

(assert (=> b!283850 (= e!180109 (MissingVacant!1882 (index!9700 lt!140214)))))

(declare-fun b!283851 () Bool)

(assert (=> b!283851 (= e!180109 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27872 lt!140214) #b00000000000000000000000000000001) (nextIndex!0 (index!9700 lt!140214) (x!27872 lt!140214) mask!3868) (index!9700 lt!140214) (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868))))

(declare-fun b!283852 () Bool)

(assert (=> b!283852 (= e!180110 e!180111)))

(declare-fun c!46175 () Bool)

(assert (=> b!283852 (= c!46175 (= lt!140334 (select (arr!6713 a!3325) startIndex!26)))))

(declare-fun b!283853 () Bool)

(assert (=> b!283853 (= e!180110 Undefined!1882)))

(assert (= (and d!65415 c!46176) b!283853))

(assert (= (and d!65415 (not c!46176)) b!283852))

(assert (= (and b!283852 c!46175) b!283848))

(assert (= (and b!283852 (not c!46175)) b!283849))

(assert (= (and b!283849 c!46177) b!283850))

(assert (= (and b!283849 (not c!46177)) b!283851))

(declare-fun m!298877 () Bool)

(assert (=> d!65415 m!298877))

(declare-fun m!298879 () Bool)

(assert (=> d!65415 m!298879))

(assert (=> d!65415 m!298583))

(assert (=> d!65415 m!298443))

(declare-fun m!298881 () Bool)

(assert (=> b!283851 m!298881))

(assert (=> b!283851 m!298881))

(assert (=> b!283851 m!298425))

(declare-fun m!298883 () Bool)

(assert (=> b!283851 m!298883))

(assert (=> b!283602 d!65415))

(declare-fun b!283854 () Bool)

(declare-fun e!180113 () Bool)

(declare-fun e!180115 () Bool)

(assert (=> b!283854 (= e!180113 e!180115)))

(declare-fun c!46178 () Bool)

(assert (=> b!283854 (= c!46178 (validKeyInArray!0 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!283855 () Bool)

(declare-fun call!25517 () Bool)

(assert (=> b!283855 (= e!180115 call!25517)))

(declare-fun bm!25514 () Bool)

(assert (=> bm!25514 (= call!25517 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46178 (Cons!4538 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46085 (Cons!4538 (select (arr!6713 a!3325) #b00000000000000000000000000000000) Nil!4539) Nil!4539)) (ite c!46085 (Cons!4538 (select (arr!6713 a!3325) #b00000000000000000000000000000000) Nil!4539) Nil!4539))))))

(declare-fun b!283856 () Bool)

(declare-fun e!180114 () Bool)

(assert (=> b!283856 (= e!180114 (contains!1992 (ite c!46085 (Cons!4538 (select (arr!6713 a!3325) #b00000000000000000000000000000000) Nil!4539) Nil!4539) (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65417 () Bool)

(declare-fun res!146605 () Bool)

(declare-fun e!180112 () Bool)

(assert (=> d!65417 (=> res!146605 e!180112)))

(assert (=> d!65417 (= res!146605 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(assert (=> d!65417 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46085 (Cons!4538 (select (arr!6713 a!3325) #b00000000000000000000000000000000) Nil!4539) Nil!4539)) e!180112)))

(declare-fun b!283857 () Bool)

(assert (=> b!283857 (= e!180115 call!25517)))

(declare-fun b!283858 () Bool)

(assert (=> b!283858 (= e!180112 e!180113)))

(declare-fun res!146606 () Bool)

(assert (=> b!283858 (=> (not res!146606) (not e!180113))))

(assert (=> b!283858 (= res!146606 (not e!180114))))

(declare-fun res!146604 () Bool)

(assert (=> b!283858 (=> (not res!146604) (not e!180114))))

(assert (=> b!283858 (= res!146604 (validKeyInArray!0 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65417 (not res!146605)) b!283858))

(assert (= (and b!283858 res!146604) b!283856))

(assert (= (and b!283858 res!146606) b!283854))

(assert (= (and b!283854 c!46178) b!283857))

(assert (= (and b!283854 (not c!46178)) b!283855))

(assert (= (or b!283857 b!283855) bm!25514))

(assert (=> b!283854 m!298789))

(assert (=> b!283854 m!298789))

(declare-fun m!298885 () Bool)

(assert (=> b!283854 m!298885))

(assert (=> bm!25514 m!298789))

(declare-fun m!298887 () Bool)

(assert (=> bm!25514 m!298887))

(assert (=> b!283856 m!298789))

(assert (=> b!283856 m!298789))

(declare-fun m!298889 () Bool)

(assert (=> b!283856 m!298889))

(assert (=> b!283858 m!298789))

(assert (=> b!283858 m!298789))

(assert (=> b!283858 m!298885))

(assert (=> bm!25487 d!65417))

(declare-fun b!283859 () Bool)

(declare-fun e!180117 () Bool)

(declare-fun e!180119 () Bool)

(assert (=> b!283859 (= e!180117 e!180119)))

(declare-fun c!46179 () Bool)

(assert (=> b!283859 (= c!46179 (validKeyInArray!0 (select (arr!6713 lt!140162) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!283860 () Bool)

(declare-fun call!25518 () Bool)

(assert (=> b!283860 (= e!180119 call!25518)))

(declare-fun bm!25515 () Bool)

(assert (=> bm!25515 (= call!25518 (arrayNoDuplicates!0 lt!140162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46179 (Cons!4538 (select (arr!6713 lt!140162) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46100 (Cons!4538 (select (arr!6713 lt!140162) #b00000000000000000000000000000000) Nil!4539) Nil!4539)) (ite c!46100 (Cons!4538 (select (arr!6713 lt!140162) #b00000000000000000000000000000000) Nil!4539) Nil!4539))))))

(declare-fun b!283861 () Bool)

(declare-fun e!180118 () Bool)

(assert (=> b!283861 (= e!180118 (contains!1992 (ite c!46100 (Cons!4538 (select (arr!6713 lt!140162) #b00000000000000000000000000000000) Nil!4539) Nil!4539) (select (arr!6713 lt!140162) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65419 () Bool)

(declare-fun res!146608 () Bool)

(declare-fun e!180116 () Bool)

(assert (=> d!65419 (=> res!146608 e!180116)))

(assert (=> d!65419 (= res!146608 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 lt!140162)))))

(assert (=> d!65419 (= (arrayNoDuplicates!0 lt!140162 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46100 (Cons!4538 (select (arr!6713 lt!140162) #b00000000000000000000000000000000) Nil!4539) Nil!4539)) e!180116)))

(declare-fun b!283862 () Bool)

(assert (=> b!283862 (= e!180119 call!25518)))

(declare-fun b!283863 () Bool)

(assert (=> b!283863 (= e!180116 e!180117)))

(declare-fun res!146609 () Bool)

(assert (=> b!283863 (=> (not res!146609) (not e!180117))))

(assert (=> b!283863 (= res!146609 (not e!180118))))

(declare-fun res!146607 () Bool)

(assert (=> b!283863 (=> (not res!146607) (not e!180118))))

(assert (=> b!283863 (= res!146607 (validKeyInArray!0 (select (arr!6713 lt!140162) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65419 (not res!146608)) b!283863))

(assert (= (and b!283863 res!146607) b!283861))

(assert (= (and b!283863 res!146609) b!283859))

(assert (= (and b!283859 c!46179) b!283862))

(assert (= (and b!283859 (not c!46179)) b!283860))

(assert (= (or b!283862 b!283860) bm!25515))

(declare-fun m!298891 () Bool)

(assert (=> b!283859 m!298891))

(assert (=> b!283859 m!298891))

(declare-fun m!298893 () Bool)

(assert (=> b!283859 m!298893))

(assert (=> bm!25515 m!298891))

(declare-fun m!298895 () Bool)

(assert (=> bm!25515 m!298895))

(assert (=> b!283861 m!298891))

(assert (=> b!283861 m!298891))

(declare-fun m!298897 () Bool)

(assert (=> b!283861 m!298897))

(assert (=> b!283863 m!298891))

(assert (=> b!283863 m!298891))

(assert (=> b!283863 m!298893))

(assert (=> bm!25499 d!65419))

(declare-fun b!283864 () Bool)

(declare-fun e!180122 () Bool)

(declare-fun e!180120 () Bool)

(assert (=> b!283864 (= e!180122 e!180120)))

(declare-fun c!46180 () Bool)

(assert (=> b!283864 (= c!46180 (validKeyInArray!0 (select (arr!6713 lt!140162) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun b!283865 () Bool)

(declare-fun e!180121 () Bool)

(assert (=> b!283865 (= e!180120 e!180121)))

(declare-fun lt!140335 () (_ BitVec 64))

(assert (=> b!283865 (= lt!140335 (select (arr!6713 lt!140162) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140337 () Unit!9027)

(assert (=> b!283865 (= lt!140337 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140162 lt!140335 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!283865 (arrayContainsKey!0 lt!140162 lt!140335 #b00000000000000000000000000000000)))

(declare-fun lt!140336 () Unit!9027)

(assert (=> b!283865 (= lt!140336 lt!140337)))

(declare-fun res!146611 () Bool)

(assert (=> b!283865 (= res!146611 (= (seekEntryOrOpen!0 (select (arr!6713 lt!140162) (bvadd startIndex!26 #b00000000000000000000000000000001)) lt!140162 mask!3868) (Found!1882 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!283865 (=> (not res!146611) (not e!180121))))

(declare-fun b!283866 () Bool)

(declare-fun call!25519 () Bool)

(assert (=> b!283866 (= e!180120 call!25519)))

(declare-fun bm!25516 () Bool)

(assert (=> bm!25516 (= call!25519 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!140162 mask!3868))))

(declare-fun d!65421 () Bool)

(declare-fun res!146610 () Bool)

(assert (=> d!65421 (=> res!146610 e!180122)))

(assert (=> d!65421 (= res!146610 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7065 lt!140162)))))

(assert (=> d!65421 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140162 mask!3868) e!180122)))

(declare-fun b!283867 () Bool)

(assert (=> b!283867 (= e!180121 call!25519)))

(assert (= (and d!65421 (not res!146610)) b!283864))

(assert (= (and b!283864 c!46180) b!283865))

(assert (= (and b!283864 (not c!46180)) b!283866))

(assert (= (and b!283865 res!146611) b!283867))

(assert (= (or b!283867 b!283866) bm!25516))

(declare-fun m!298899 () Bool)

(assert (=> b!283864 m!298899))

(assert (=> b!283864 m!298899))

(declare-fun m!298901 () Bool)

(assert (=> b!283864 m!298901))

(assert (=> b!283865 m!298899))

(declare-fun m!298903 () Bool)

(assert (=> b!283865 m!298903))

(declare-fun m!298905 () Bool)

(assert (=> b!283865 m!298905))

(assert (=> b!283865 m!298899))

(declare-fun m!298907 () Bool)

(assert (=> b!283865 m!298907))

(declare-fun m!298909 () Bool)

(assert (=> bm!25516 m!298909))

(assert (=> bm!25504 d!65421))

(assert (=> b!283601 d!65311))

(declare-fun b!283868 () Bool)

(declare-fun lt!140338 () SeekEntryResult!1882)

(declare-fun e!180123 () SeekEntryResult!1882)

(assert (=> b!283868 (= e!180123 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140338) (index!9700 lt!140338) (index!9700 lt!140338) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) mask!3868))))

(declare-fun b!283870 () Bool)

(declare-fun c!46182 () Bool)

(declare-fun lt!140339 () (_ BitVec 64))

(assert (=> b!283870 (= c!46182 (= lt!140339 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180125 () SeekEntryResult!1882)

(assert (=> b!283870 (= e!180125 e!180123)))

(declare-fun b!283871 () Bool)

(assert (=> b!283871 (= e!180125 (Found!1882 (index!9700 lt!140338)))))

(declare-fun b!283872 () Bool)

(declare-fun e!180124 () SeekEntryResult!1882)

(assert (=> b!283872 (= e!180124 e!180125)))

(assert (=> b!283872 (= lt!140339 (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) (index!9700 lt!140338)))))

(declare-fun c!46181 () Bool)

(assert (=> b!283872 (= c!46181 (= lt!140339 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)))))

(declare-fun b!283873 () Bool)

(assert (=> b!283873 (= e!180124 Undefined!1882)))

(declare-fun d!65423 () Bool)

(declare-fun lt!140340 () SeekEntryResult!1882)

(assert (=> d!65423 (and (or ((_ is Undefined!1882) lt!140340) (not ((_ is Found!1882) lt!140340)) (and (bvsge (index!9699 lt!140340) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140340) (size!7065 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)))))) (or ((_ is Undefined!1882) lt!140340) ((_ is Found!1882) lt!140340) (not ((_ is MissingZero!1882) lt!140340)) (and (bvsge (index!9698 lt!140340) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140340) (size!7065 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)))))) (or ((_ is Undefined!1882) lt!140340) ((_ is Found!1882) lt!140340) ((_ is MissingZero!1882) lt!140340) (not ((_ is MissingVacant!1882) lt!140340)) (and (bvsge (index!9701 lt!140340) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140340) (size!7065 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)))))) (or ((_ is Undefined!1882) lt!140340) (ite ((_ is Found!1882) lt!140340) (= (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) (index!9699 lt!140340)) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)) (ite ((_ is MissingZero!1882) lt!140340) (= (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) (index!9698 lt!140340)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140340) (= (select (arr!6713 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325))) (index!9701 lt!140340)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65423 (= lt!140340 e!180124)))

(declare-fun c!46183 () Bool)

(assert (=> d!65423 (= c!46183 (and ((_ is Intermediate!1882) lt!140338) (undefined!2694 lt!140338)))))

(assert (=> d!65423 (= lt!140338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) mask!3868))))

(assert (=> d!65423 (validMask!0 mask!3868)))

(assert (=> d!65423 (= (seekEntryOrOpen!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) mask!3868) lt!140340)))

(declare-fun b!283869 () Bool)

(assert (=> b!283869 (= e!180123 (MissingZero!1882 (index!9700 lt!140338)))))

(assert (= (and d!65423 c!46183) b!283873))

(assert (= (and d!65423 (not c!46183)) b!283872))

(assert (= (and b!283872 c!46181) b!283871))

(assert (= (and b!283872 (not c!46181)) b!283870))

(assert (= (and b!283870 c!46182) b!283869))

(assert (= (and b!283870 (not c!46182)) b!283868))

(assert (=> b!283868 m!298449))

(declare-fun m!298911 () Bool)

(assert (=> b!283868 m!298911))

(declare-fun m!298913 () Bool)

(assert (=> b!283872 m!298913))

(assert (=> d!65423 m!298629))

(assert (=> d!65423 m!298449))

(declare-fun m!298915 () Bool)

(assert (=> d!65423 m!298915))

(declare-fun m!298917 () Bool)

(assert (=> d!65423 m!298917))

(declare-fun m!298919 () Bool)

(assert (=> d!65423 m!298919))

(assert (=> d!65423 m!298449))

(assert (=> d!65423 m!298629))

(assert (=> d!65423 m!298443))

(declare-fun m!298921 () Bool)

(assert (=> d!65423 m!298921))

(assert (=> b!283601 d!65423))

(declare-fun d!65425 () Bool)

(declare-fun e!180127 () Bool)

(assert (=> d!65425 e!180127))

(declare-fun c!46184 () Bool)

(declare-fun lt!140341 () SeekEntryResult!1882)

(assert (=> d!65425 (= c!46184 (and ((_ is Intermediate!1882) lt!140341) (undefined!2694 lt!140341)))))

(declare-fun e!180128 () SeekEntryResult!1882)

(assert (=> d!65425 (= lt!140341 e!180128)))

(declare-fun c!46186 () Bool)

(assert (=> d!65425 (= c!46186 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140342 () (_ BitVec 64))

(assert (=> d!65425 (= lt!140342 (select (arr!6713 lt!140162) (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868)))))

(assert (=> d!65425 (validMask!0 mask!3868)))

(assert (=> d!65425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868) lt!140341)))

(declare-fun b!283874 () Bool)

(assert (=> b!283874 (and (bvsge (index!9700 lt!140341) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140341) (size!7065 lt!140162)))))

(declare-fun e!180129 () Bool)

(assert (=> b!283874 (= e!180129 (= (select (arr!6713 lt!140162) (index!9700 lt!140341)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!283875 () Bool)

(assert (=> b!283875 (= e!180128 (Intermediate!1882 true (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!283876 () Bool)

(assert (=> b!283876 (and (bvsge (index!9700 lt!140341) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140341) (size!7065 lt!140162)))))

(declare-fun res!146614 () Bool)

(assert (=> b!283876 (= res!146614 (= (select (arr!6713 lt!140162) (index!9700 lt!140341)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!283876 (=> res!146614 e!180129)))

(declare-fun b!283877 () Bool)

(assert (=> b!283877 (= e!180127 (bvsge (x!27872 lt!140341) #b01111111111111111111111111111110))))

(declare-fun b!283878 () Bool)

(declare-fun e!180126 () SeekEntryResult!1882)

(assert (=> b!283878 (= e!180126 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000 mask!3868) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) lt!140162 mask!3868))))

(declare-fun b!283879 () Bool)

(declare-fun e!180130 () Bool)

(assert (=> b!283879 (= e!180127 e!180130)))

(declare-fun res!146613 () Bool)

(assert (=> b!283879 (= res!146613 (and ((_ is Intermediate!1882) lt!140341) (not (undefined!2694 lt!140341)) (bvslt (x!27872 lt!140341) #b01111111111111111111111111111110) (bvsge (x!27872 lt!140341) #b00000000000000000000000000000000) (bvsge (x!27872 lt!140341) #b00000000000000000000000000000000)))))

(assert (=> b!283879 (=> (not res!146613) (not e!180130))))

(declare-fun b!283880 () Bool)

(assert (=> b!283880 (and (bvsge (index!9700 lt!140341) #b00000000000000000000000000000000) (bvslt (index!9700 lt!140341) (size!7065 lt!140162)))))

(declare-fun res!146612 () Bool)

(assert (=> b!283880 (= res!146612 (= (select (arr!6713 lt!140162) (index!9700 lt!140341)) (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)))))

(assert (=> b!283880 (=> res!146612 e!180129)))

(assert (=> b!283880 (= e!180130 e!180129)))

(declare-fun b!283881 () Bool)

(assert (=> b!283881 (= e!180128 e!180126)))

(declare-fun c!46185 () Bool)

(assert (=> b!283881 (= c!46185 (or (= lt!140342 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26)) (= (bvadd lt!140342 lt!140342) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!283882 () Bool)

(assert (=> b!283882 (= e!180126 (Intermediate!1882 false (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) #b00000000000000000000000000000000))))

(assert (= (and d!65425 c!46186) b!283875))

(assert (= (and d!65425 (not c!46186)) b!283881))

(assert (= (and b!283881 c!46185) b!283882))

(assert (= (and b!283881 (not c!46185)) b!283878))

(assert (= (and d!65425 c!46184) b!283877))

(assert (= (and d!65425 (not c!46184)) b!283879))

(assert (= (and b!283879 res!146613) b!283880))

(assert (= (and b!283880 (not res!146612)) b!283876))

(assert (= (and b!283876 (not res!146614)) b!283874))

(declare-fun m!298923 () Bool)

(assert (=> b!283876 m!298923))

(assert (=> b!283880 m!298923))

(assert (=> b!283874 m!298923))

(assert (=> b!283878 m!298629))

(declare-fun m!298925 () Bool)

(assert (=> b!283878 m!298925))

(assert (=> b!283878 m!298925))

(assert (=> b!283878 m!298449))

(declare-fun m!298927 () Bool)

(assert (=> b!283878 m!298927))

(assert (=> d!65425 m!298629))

(declare-fun m!298929 () Bool)

(assert (=> d!65425 m!298929))

(assert (=> d!65425 m!298443))

(assert (=> d!65329 d!65425))

(declare-fun d!65427 () Bool)

(declare-fun lt!140344 () (_ BitVec 32))

(declare-fun lt!140343 () (_ BitVec 32))

(assert (=> d!65427 (= lt!140344 (bvmul (bvxor lt!140343 (bvlshr lt!140343 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65427 (= lt!140343 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (bvlshr (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65427 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!146583 (let ((h!5210 ((_ extract 31 0) (bvand (bvxor (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (bvlshr (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27876 (bvmul (bvxor h!5210 (bvlshr h!5210 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27876 (bvlshr x!27876 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!146583 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!146583 #b00000000000000000000000000000000))))))

(assert (=> d!65427 (= (toIndex!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) mask!3868) (bvand (bvxor lt!140344 (bvlshr lt!140344 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65329 d!65427))

(assert (=> d!65329 d!65339))

(declare-fun d!65429 () Bool)

(assert (=> d!65429 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6713 a!3325) i!1267 k0!2581) startIndex!26) (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) mask!3868))))

(assert (=> d!65429 true))

(declare-fun _$51!15 () Unit!9027)

(assert (=> d!65429 (= (choose!83 a!3325 i!1267 k0!2581 startIndex!26 mask!3868) _$51!15)))

(declare-fun bs!10078 () Bool)

(assert (= bs!10078 d!65429))

(assert (=> bs!10078 m!298425))

(assert (=> bs!10078 m!298461))

(assert (=> bs!10078 m!298425))

(assert (=> bs!10078 m!298449))

(assert (=> bs!10078 m!298449))

(assert (=> bs!10078 m!298579))

(assert (=> bs!10078 m!298437))

(assert (=> d!65297 d!65429))

(assert (=> d!65297 d!65339))

(declare-fun d!65431 () Bool)

(assert (=> d!65431 (arrayContainsKey!0 a!3325 lt!140241 #b00000000000000000000000000000000)))

(declare-fun lt!140345 () Unit!9027)

(assert (=> d!65431 (= lt!140345 (choose!13 a!3325 lt!140241 #b00000000000000000000000000000000))))

(assert (=> d!65431 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!65431 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140241 #b00000000000000000000000000000000) lt!140345)))

(declare-fun bs!10079 () Bool)

(assert (= bs!10079 d!65431))

(assert (=> bs!10079 m!298641))

(declare-fun m!298931 () Bool)

(assert (=> bs!10079 m!298931))

(assert (=> b!283647 d!65431))

(declare-fun d!65433 () Bool)

(declare-fun res!146615 () Bool)

(declare-fun e!180131 () Bool)

(assert (=> d!65433 (=> res!146615 e!180131)))

(assert (=> d!65433 (= res!146615 (= (select (arr!6713 a!3325) #b00000000000000000000000000000000) lt!140241))))

(assert (=> d!65433 (= (arrayContainsKey!0 a!3325 lt!140241 #b00000000000000000000000000000000) e!180131)))

(declare-fun b!283883 () Bool)

(declare-fun e!180132 () Bool)

(assert (=> b!283883 (= e!180131 e!180132)))

(declare-fun res!146616 () Bool)

(assert (=> b!283883 (=> (not res!146616) (not e!180132))))

(assert (=> b!283883 (= res!146616 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(declare-fun b!283884 () Bool)

(assert (=> b!283884 (= e!180132 (arrayContainsKey!0 a!3325 lt!140241 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65433 (not res!146615)) b!283883))

(assert (= (and b!283883 res!146616) b!283884))

(assert (=> d!65433 m!298515))

(declare-fun m!298933 () Bool)

(assert (=> b!283884 m!298933))

(assert (=> b!283647 d!65433))

(declare-fun b!283885 () Bool)

(declare-fun e!180133 () SeekEntryResult!1882)

(declare-fun lt!140346 () SeekEntryResult!1882)

(assert (=> b!283885 (= e!180133 (seekKeyOrZeroReturnVacant!0 (x!27872 lt!140346) (index!9700 lt!140346) (index!9700 lt!140346) (select (arr!6713 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(declare-fun b!283887 () Bool)

(declare-fun c!46188 () Bool)

(declare-fun lt!140347 () (_ BitVec 64))

(assert (=> b!283887 (= c!46188 (= lt!140347 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!180135 () SeekEntryResult!1882)

(assert (=> b!283887 (= e!180135 e!180133)))

(declare-fun b!283888 () Bool)

(assert (=> b!283888 (= e!180135 (Found!1882 (index!9700 lt!140346)))))

(declare-fun b!283889 () Bool)

(declare-fun e!180134 () SeekEntryResult!1882)

(assert (=> b!283889 (= e!180134 e!180135)))

(assert (=> b!283889 (= lt!140347 (select (arr!6713 a!3325) (index!9700 lt!140346)))))

(declare-fun c!46187 () Bool)

(assert (=> b!283889 (= c!46187 (= lt!140347 (select (arr!6713 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!283890 () Bool)

(assert (=> b!283890 (= e!180134 Undefined!1882)))

(declare-fun d!65435 () Bool)

(declare-fun lt!140348 () SeekEntryResult!1882)

(assert (=> d!65435 (and (or ((_ is Undefined!1882) lt!140348) (not ((_ is Found!1882) lt!140348)) (and (bvsge (index!9699 lt!140348) #b00000000000000000000000000000000) (bvslt (index!9699 lt!140348) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140348) ((_ is Found!1882) lt!140348) (not ((_ is MissingZero!1882) lt!140348)) (and (bvsge (index!9698 lt!140348) #b00000000000000000000000000000000) (bvslt (index!9698 lt!140348) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140348) ((_ is Found!1882) lt!140348) ((_ is MissingZero!1882) lt!140348) (not ((_ is MissingVacant!1882) lt!140348)) (and (bvsge (index!9701 lt!140348) #b00000000000000000000000000000000) (bvslt (index!9701 lt!140348) (size!7065 a!3325)))) (or ((_ is Undefined!1882) lt!140348) (ite ((_ is Found!1882) lt!140348) (= (select (arr!6713 a!3325) (index!9699 lt!140348)) (select (arr!6713 a!3325) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1882) lt!140348) (= (select (arr!6713 a!3325) (index!9698 lt!140348)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1882) lt!140348) (= (select (arr!6713 a!3325) (index!9701 lt!140348)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65435 (= lt!140348 e!180134)))

(declare-fun c!46189 () Bool)

(assert (=> d!65435 (= c!46189 (and ((_ is Intermediate!1882) lt!140346) (undefined!2694 lt!140346)))))

(assert (=> d!65435 (= lt!140346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6713 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!65435 (validMask!0 mask!3868)))

(assert (=> d!65435 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!140348)))

(declare-fun b!283886 () Bool)

(assert (=> b!283886 (= e!180133 (MissingZero!1882 (index!9700 lt!140346)))))

(assert (= (and d!65435 c!46189) b!283890))

(assert (= (and d!65435 (not c!46189)) b!283889))

(assert (= (and b!283889 c!46187) b!283888))

(assert (= (and b!283889 (not c!46187)) b!283887))

(assert (= (and b!283887 c!46188) b!283886))

(assert (= (and b!283887 (not c!46188)) b!283885))

(assert (=> b!283885 m!298515))

(declare-fun m!298935 () Bool)

(assert (=> b!283885 m!298935))

(declare-fun m!298937 () Bool)

(assert (=> b!283889 m!298937))

(declare-fun m!298939 () Bool)

(assert (=> d!65435 m!298939))

(assert (=> d!65435 m!298515))

(declare-fun m!298941 () Bool)

(assert (=> d!65435 m!298941))

(declare-fun m!298943 () Bool)

(assert (=> d!65435 m!298943))

(declare-fun m!298945 () Bool)

(assert (=> d!65435 m!298945))

(assert (=> d!65435 m!298515))

(assert (=> d!65435 m!298939))

(assert (=> d!65435 m!298443))

(declare-fun m!298947 () Bool)

(assert (=> d!65435 m!298947))

(assert (=> b!283647 d!65435))

(assert (=> b!283646 d!65385))

(declare-fun d!65437 () Bool)

(assert (=> d!65437 (arrayNoDuplicates!0 (array!14147 (store (arr!6713 a!3325) i!1267 k0!2581) (size!7065 a!3325)) #b00000000000000000000000000000000 Nil!4539)))

(assert (=> d!65437 true))

(declare-fun _$65!101 () Unit!9027)

(assert (=> d!65437 (= (choose!41 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4539) _$65!101)))

(declare-fun bs!10080 () Bool)

(assert (= bs!10080 d!65437))

(assert (=> bs!10080 m!298437))

(assert (=> bs!10080 m!298599))

(assert (=> d!65313 d!65437))

(declare-fun d!65439 () Bool)

(assert (=> d!65439 (= (validKeyInArray!0 (select (arr!6713 lt!140162) startIndex!26)) (and (not (= (select (arr!6713 lt!140162) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6713 lt!140162) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!283650 d!65439))

(declare-fun b!283891 () Bool)

(declare-fun e!180138 () Bool)

(declare-fun e!180136 () Bool)

(assert (=> b!283891 (= e!180138 e!180136)))

(declare-fun c!46190 () Bool)

(assert (=> b!283891 (= c!46190 (validKeyInArray!0 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!283892 () Bool)

(declare-fun e!180137 () Bool)

(assert (=> b!283892 (= e!180136 e!180137)))

(declare-fun lt!140349 () (_ BitVec 64))

(assert (=> b!283892 (= lt!140349 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!140351 () Unit!9027)

(assert (=> b!283892 (= lt!140351 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140349 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!283892 (arrayContainsKey!0 a!3325 lt!140349 #b00000000000000000000000000000000)))

(declare-fun lt!140350 () Unit!9027)

(assert (=> b!283892 (= lt!140350 lt!140351)))

(declare-fun res!146618 () Bool)

(assert (=> b!283892 (= res!146618 (= (seekEntryOrOpen!0 (select (arr!6713 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1882 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!283892 (=> (not res!146618) (not e!180137))))

(declare-fun b!283893 () Bool)

(declare-fun call!25520 () Bool)

(assert (=> b!283893 (= e!180136 call!25520)))

(declare-fun bm!25517 () Bool)

(assert (=> bm!25517 (= call!25520 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65441 () Bool)

(declare-fun res!146617 () Bool)

(assert (=> d!65441 (=> res!146617 e!180138)))

(assert (=> d!65441 (= res!146617 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7065 a!3325)))))

(assert (=> d!65441 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!180138)))

(declare-fun b!283894 () Bool)

(assert (=> b!283894 (= e!180137 call!25520)))

(assert (= (and d!65441 (not res!146617)) b!283891))

(assert (= (and b!283891 c!46190) b!283892))

(assert (= (and b!283891 (not c!46190)) b!283893))

(assert (= (and b!283892 res!146618) b!283894))

(assert (= (or b!283894 b!283893) bm!25517))

(assert (=> b!283891 m!298789))

(assert (=> b!283891 m!298789))

(assert (=> b!283891 m!298885))

(assert (=> b!283892 m!298789))

(declare-fun m!298949 () Bool)

(assert (=> b!283892 m!298949))

(declare-fun m!298951 () Bool)

(assert (=> b!283892 m!298951))

(assert (=> b!283892 m!298789))

(declare-fun m!298953 () Bool)

(assert (=> b!283892 m!298953))

(declare-fun m!298955 () Bool)

(assert (=> bm!25517 m!298955))

(assert (=> bm!25503 d!65441))

(check-sat (not b!283851) (not bm!25512) (not b!283813) (not b!283858) (not b!283885) (not b!283884) (not d!65425) (not b!283836) (not d!65389) (not d!65429) (not d!65401) (not b!283819) (not d!65377) (not bm!25514) (not d!65415) (not b!283776) (not b!283865) (not d!65431) (not b!283841) (not d!65409) (not b!283859) (not d!65403) (not b!283863) (not d!65381) (not d!65387) (not d!65435) (not b!283878) (not bm!25513) (not b!283782) (not b!283807) (not b!283826) (not b!283868) (not b!283864) (not b!283856) (not d!65397) (not d!65423) (not d!65393) (not b!283837) (not b!283824) (not d!65413) (not b!283820) (not bm!25516) (not d!65437) (not b!283822) (not bm!25515) (not b!283891) (not b!283760) (not b!283842) (not b!283854) (not b!283861) (not bm!25517) (not b!283831) (not b!283892))
(check-sat)
