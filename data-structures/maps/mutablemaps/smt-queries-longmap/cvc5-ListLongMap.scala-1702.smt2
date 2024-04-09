; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31200 () Bool)

(assert start!31200)

(declare-fun b!313246 () Bool)

(declare-fun res!169581 () Bool)

(declare-fun e!195235 () Bool)

(assert (=> b!313246 (=> (not res!169581) (not e!195235))))

(declare-datatypes ((array!16010 0))(
  ( (array!16011 (arr!7582 (Array (_ BitVec 32) (_ BitVec 64))) (size!7934 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16010)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2733 0))(
  ( (MissingZero!2733 (index!13108 (_ BitVec 32))) (Found!2733 (index!13109 (_ BitVec 32))) (Intermediate!2733 (undefined!3545 Bool) (index!13110 (_ BitVec 32)) (x!31289 (_ BitVec 32))) (Undefined!2733) (MissingVacant!2733 (index!13111 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16010 (_ BitVec 32)) SeekEntryResult!2733)

(assert (=> b!313246 (= res!169581 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2733 i!1240)))))

(declare-fun b!313247 () Bool)

(declare-fun res!169582 () Bool)

(assert (=> b!313247 (=> (not res!169582) (not e!195235))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313247 (= res!169582 (validKeyInArray!0 k!2441))))

(declare-fun b!313248 () Bool)

(declare-fun res!169580 () Bool)

(assert (=> b!313248 (=> (not res!169580) (not e!195235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16010 (_ BitVec 32)) Bool)

(assert (=> b!313248 (= res!169580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313249 () Bool)

(declare-fun e!195233 () Bool)

(declare-fun e!195232 () Bool)

(assert (=> b!313249 (= e!195233 e!195232)))

(declare-fun res!169577 () Bool)

(assert (=> b!313249 (=> (not res!169577) (not e!195232))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!153522 () SeekEntryResult!2733)

(declare-fun lt!153524 () SeekEntryResult!2733)

(assert (=> b!313249 (= res!169577 (and (= lt!153522 lt!153524) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7582 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7582 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7582 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16010 (_ BitVec 32)) SeekEntryResult!2733)

(assert (=> b!313249 (= lt!153522 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!313250 () Bool)

(declare-fun res!169583 () Bool)

(assert (=> b!313250 (=> (not res!169583) (not e!195235))))

(assert (=> b!313250 (= res!169583 (and (= (size!7934 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7934 a!3293))))))

(declare-fun b!313251 () Bool)

(assert (=> b!313251 (= e!195235 e!195233)))

(declare-fun res!169578 () Bool)

(assert (=> b!313251 (=> (not res!169578) (not e!195233))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313251 (= res!169578 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153524))))

(assert (=> b!313251 (= lt!153524 (Intermediate!2733 false resIndex!52 resX!52))))

(declare-fun res!169576 () Bool)

(assert (=> start!31200 (=> (not res!169576) (not e!195235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31200 (= res!169576 (validMask!0 mask!3709))))

(assert (=> start!31200 e!195235))

(declare-fun array_inv!5536 (array!16010) Bool)

(assert (=> start!31200 (array_inv!5536 a!3293)))

(assert (=> start!31200 true))

(declare-fun b!313252 () Bool)

(declare-fun res!169579 () Bool)

(assert (=> b!313252 (=> (not res!169579) (not e!195233))))

(assert (=> b!313252 (= res!169579 (and (= (select (arr!7582 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7934 a!3293))))))

(declare-fun b!313253 () Bool)

(declare-fun res!169584 () Bool)

(assert (=> b!313253 (=> (not res!169584) (not e!195235))))

(declare-fun arrayContainsKey!0 (array!16010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313253 (= res!169584 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313254 () Bool)

(declare-fun lt!153523 () SeekEntryResult!2733)

(assert (=> b!313254 (= e!195232 (not (or (not (is-Intermediate!2733 lt!153523)) (bvsge (x!31289 lt!153523) (bvadd #b00000000000000000000000000000001 x!1427)))))))

(assert (=> b!313254 (= lt!153522 lt!153523)))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313254 (= lt!153523 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!31200 res!169576) b!313250))

(assert (= (and b!313250 res!169583) b!313247))

(assert (= (and b!313247 res!169582) b!313253))

(assert (= (and b!313253 res!169584) b!313246))

(assert (= (and b!313246 res!169581) b!313248))

(assert (= (and b!313248 res!169580) b!313251))

(assert (= (and b!313251 res!169578) b!313252))

(assert (= (and b!313252 res!169579) b!313249))

(assert (= (and b!313249 res!169577) b!313254))

(declare-fun m!323197 () Bool)

(assert (=> b!313252 m!323197))

(declare-fun m!323199 () Bool)

(assert (=> b!313254 m!323199))

(assert (=> b!313254 m!323199))

(declare-fun m!323201 () Bool)

(assert (=> b!313254 m!323201))

(declare-fun m!323203 () Bool)

(assert (=> b!313246 m!323203))

(declare-fun m!323205 () Bool)

(assert (=> b!313251 m!323205))

(assert (=> b!313251 m!323205))

(declare-fun m!323207 () Bool)

(assert (=> b!313251 m!323207))

(declare-fun m!323209 () Bool)

(assert (=> b!313249 m!323209))

(declare-fun m!323211 () Bool)

(assert (=> b!313249 m!323211))

(declare-fun m!323213 () Bool)

(assert (=> b!313253 m!323213))

(declare-fun m!323215 () Bool)

(assert (=> b!313248 m!323215))

(declare-fun m!323217 () Bool)

(assert (=> start!31200 m!323217))

(declare-fun m!323219 () Bool)

(assert (=> start!31200 m!323219))

(declare-fun m!323221 () Bool)

(assert (=> b!313247 m!323221))

(push 1)

(assert (not b!313248))

(assert (not b!313254))

(assert (not b!313251))

(assert (not start!31200))

(assert (not b!313253))

(assert (not b!313247))

(assert (not b!313249))

(assert (not b!313246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!313362 () Bool)

(declare-fun lt!153562 () SeekEntryResult!2733)

(assert (=> b!313362 (and (bvsge (index!13110 lt!153562) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153562) (size!7934 a!3293)))))

(declare-fun res!169658 () Bool)

(assert (=> b!313362 (= res!169658 (= (select (arr!7582 a!3293) (index!13110 lt!153562)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195295 () Bool)

(assert (=> b!313362 (=> res!169658 e!195295)))

(declare-fun b!313363 () Bool)

(declare-fun e!195291 () SeekEntryResult!2733)

(assert (=> b!313363 (= e!195291 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68457 () Bool)

(declare-fun e!195294 () Bool)

(assert (=> d!68457 e!195294))

(declare-fun c!49460 () Bool)

(assert (=> d!68457 (= c!49460 (and (is-Intermediate!2733 lt!153562) (undefined!3545 lt!153562)))))

(declare-fun e!195293 () SeekEntryResult!2733)

(assert (=> d!68457 (= lt!153562 e!195293)))

(declare-fun c!49461 () Bool)

(assert (=> d!68457 (= c!49461 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153563 () (_ BitVec 64))

(assert (=> d!68457 (= lt!153563 (select (arr!7582 a!3293) index!1781))))

(assert (=> d!68457 (validMask!0 mask!3709)))

(assert (=> d!68457 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153562)))

(declare-fun b!313364 () Bool)

(declare-fun e!195292 () Bool)

(assert (=> b!313364 (= e!195294 e!195292)))

(declare-fun res!169660 () Bool)

(assert (=> b!313364 (= res!169660 (and (is-Intermediate!2733 lt!153562) (not (undefined!3545 lt!153562)) (bvslt (x!31289 lt!153562) #b01111111111111111111111111111110) (bvsge (x!31289 lt!153562) #b00000000000000000000000000000000) (bvsge (x!31289 lt!153562) x!1427)))))

(assert (=> b!313364 (=> (not res!169660) (not e!195292))))

(declare-fun b!313365 () Bool)

(assert (=> b!313365 (= e!195294 (bvsge (x!31289 lt!153562) #b01111111111111111111111111111110))))

(declare-fun b!313366 () Bool)

(assert (=> b!313366 (= e!195293 e!195291)))

(declare-fun c!49462 () Bool)

(assert (=> b!313366 (= c!49462 (or (= lt!153563 k!2441) (= (bvadd lt!153563 lt!153563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313367 () Bool)

(assert (=> b!313367 (= e!195291 (Intermediate!2733 false index!1781 x!1427))))

(declare-fun b!313368 () Bool)

(assert (=> b!313368 (= e!195293 (Intermediate!2733 true index!1781 x!1427))))

(declare-fun b!313369 () Bool)

(assert (=> b!313369 (and (bvsge (index!13110 lt!153562) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153562) (size!7934 a!3293)))))

(declare-fun res!169659 () Bool)

(assert (=> b!313369 (= res!169659 (= (select (arr!7582 a!3293) (index!13110 lt!153562)) k!2441))))

(assert (=> b!313369 (=> res!169659 e!195295)))

(assert (=> b!313369 (= e!195292 e!195295)))

(declare-fun b!313370 () Bool)

(assert (=> b!313370 (and (bvsge (index!13110 lt!153562) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153562) (size!7934 a!3293)))))

(assert (=> b!313370 (= e!195295 (= (select (arr!7582 a!3293) (index!13110 lt!153562)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68457 c!49461) b!313368))

(assert (= (and d!68457 (not c!49461)) b!313366))

(assert (= (and b!313366 c!49462) b!313367))

(assert (= (and b!313366 (not c!49462)) b!313363))

(assert (= (and d!68457 c!49460) b!313365))

(assert (= (and d!68457 (not c!49460)) b!313364))

(assert (= (and b!313364 res!169660) b!313369))

(assert (= (and b!313369 (not res!169659)) b!313362))

(assert (= (and b!313362 (not res!169658)) b!313370))

(declare-fun m!323285 () Bool)

(assert (=> b!313362 m!323285))

(assert (=> b!313369 m!323285))

(assert (=> d!68457 m!323209))

(assert (=> d!68457 m!323217))

(assert (=> b!313363 m!323199))

(assert (=> b!313363 m!323199))

(declare-fun m!323287 () Bool)

(assert (=> b!313363 m!323287))

(assert (=> b!313370 m!323285))

(assert (=> b!313249 d!68457))

(declare-fun b!313371 () Bool)

(declare-fun lt!153564 () SeekEntryResult!2733)

(assert (=> b!313371 (and (bvsge (index!13110 lt!153564) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153564) (size!7934 a!3293)))))

(declare-fun res!169661 () Bool)

(assert (=> b!313371 (= res!169661 (= (select (arr!7582 a!3293) (index!13110 lt!153564)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195300 () Bool)

(assert (=> b!313371 (=> res!169661 e!195300)))

(declare-fun e!195296 () SeekEntryResult!2733)

(declare-fun b!313372 () Bool)

(assert (=> b!313372 (= e!195296 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68465 () Bool)

(declare-fun e!195299 () Bool)

(assert (=> d!68465 e!195299))

(declare-fun c!49463 () Bool)

(assert (=> d!68465 (= c!49463 (and (is-Intermediate!2733 lt!153564) (undefined!3545 lt!153564)))))

(declare-fun e!195298 () SeekEntryResult!2733)

(assert (=> d!68465 (= lt!153564 e!195298)))

(declare-fun c!49464 () Bool)

(assert (=> d!68465 (= c!49464 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153565 () (_ BitVec 64))

(assert (=> d!68465 (= lt!153565 (select (arr!7582 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68465 (validMask!0 mask!3709)))

(assert (=> d!68465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153564)))

(declare-fun b!313373 () Bool)

(declare-fun e!195297 () Bool)

(assert (=> b!313373 (= e!195299 e!195297)))

(declare-fun res!169663 () Bool)

(assert (=> b!313373 (= res!169663 (and (is-Intermediate!2733 lt!153564) (not (undefined!3545 lt!153564)) (bvslt (x!31289 lt!153564) #b01111111111111111111111111111110) (bvsge (x!31289 lt!153564) #b00000000000000000000000000000000) (bvsge (x!31289 lt!153564) #b00000000000000000000000000000000)))))

(assert (=> b!313373 (=> (not res!169663) (not e!195297))))

(declare-fun b!313374 () Bool)

(assert (=> b!313374 (= e!195299 (bvsge (x!31289 lt!153564) #b01111111111111111111111111111110))))

(declare-fun b!313375 () Bool)

(assert (=> b!313375 (= e!195298 e!195296)))

(declare-fun c!49465 () Bool)

(assert (=> b!313375 (= c!49465 (or (= lt!153565 k!2441) (= (bvadd lt!153565 lt!153565) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313376 () Bool)

(assert (=> b!313376 (= e!195296 (Intermediate!2733 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313377 () Bool)

(assert (=> b!313377 (= e!195298 (Intermediate!2733 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313378 () Bool)

(assert (=> b!313378 (and (bvsge (index!13110 lt!153564) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153564) (size!7934 a!3293)))))

(declare-fun res!169662 () Bool)

(assert (=> b!313378 (= res!169662 (= (select (arr!7582 a!3293) (index!13110 lt!153564)) k!2441))))

(assert (=> b!313378 (=> res!169662 e!195300)))

(assert (=> b!313378 (= e!195297 e!195300)))

(declare-fun b!313379 () Bool)

(assert (=> b!313379 (and (bvsge (index!13110 lt!153564) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153564) (size!7934 a!3293)))))

(assert (=> b!313379 (= e!195300 (= (select (arr!7582 a!3293) (index!13110 lt!153564)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68465 c!49464) b!313377))

(assert (= (and d!68465 (not c!49464)) b!313375))

(assert (= (and b!313375 c!49465) b!313376))

(assert (= (and b!313375 (not c!49465)) b!313372))

(assert (= (and d!68465 c!49463) b!313374))

(assert (= (and d!68465 (not c!49463)) b!313373))

(assert (= (and b!313373 res!169663) b!313378))

(assert (= (and b!313378 (not res!169662)) b!313371))

(assert (= (and b!313371 (not res!169661)) b!313379))

(declare-fun m!323289 () Bool)

(assert (=> b!313371 m!323289))

(assert (=> b!313378 m!323289))

(assert (=> d!68465 m!323205))

(declare-fun m!323291 () Bool)

(assert (=> d!68465 m!323291))

(assert (=> d!68465 m!323217))

(assert (=> b!313372 m!323205))

(declare-fun m!323293 () Bool)

(assert (=> b!313372 m!323293))

(assert (=> b!313372 m!323293))

(declare-fun m!323295 () Bool)

(assert (=> b!313372 m!323295))

(assert (=> b!313379 m!323289))

(assert (=> b!313251 d!68465))

(declare-fun d!68467 () Bool)

(declare-fun lt!153578 () (_ BitVec 32))

(declare-fun lt!153577 () (_ BitVec 32))

(assert (=> d!68467 (= lt!153578 (bvmul (bvxor lt!153577 (bvlshr lt!153577 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68467 (= lt!153577 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68467 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169666 (let ((h!5372 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31295 (bvmul (bvxor h!5372 (bvlshr h!5372 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31295 (bvlshr x!31295 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169666 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169666 #b00000000000000000000000000000000))))))

(assert (=> d!68467 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153578 (bvlshr lt!153578 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313251 d!68467))

(declare-fun b!313447 () Bool)

(declare-fun e!195342 () SeekEntryResult!2733)

(declare-fun lt!153598 () SeekEntryResult!2733)

(assert (=> b!313447 (= e!195342 (Found!2733 (index!13110 lt!153598)))))

(declare-fun e!195340 () SeekEntryResult!2733)

(declare-fun b!313448 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16010 (_ BitVec 32)) SeekEntryResult!2733)

(assert (=> b!313448 (= e!195340 (seekKeyOrZeroReturnVacant!0 (x!31289 lt!153598) (index!13110 lt!153598) (index!13110 lt!153598) k!2441 a!3293 mask!3709))))

(declare-fun b!313449 () Bool)

(assert (=> b!313449 (= e!195340 (MissingZero!2733 (index!13110 lt!153598)))))

(declare-fun b!313450 () Bool)

(declare-fun e!195341 () SeekEntryResult!2733)

(assert (=> b!313450 (= e!195341 Undefined!2733)))

(declare-fun b!313452 () Bool)

(declare-fun c!49492 () Bool)

(declare-fun lt!153597 () (_ BitVec 64))

(assert (=> b!313452 (= c!49492 (= lt!153597 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313452 (= e!195342 e!195340)))

(declare-fun b!313451 () Bool)

(assert (=> b!313451 (= e!195341 e!195342)))

(assert (=> b!313451 (= lt!153597 (select (arr!7582 a!3293) (index!13110 lt!153598)))))

(declare-fun c!49491 () Bool)

(assert (=> b!313451 (= c!49491 (= lt!153597 k!2441))))

(declare-fun d!68471 () Bool)

(declare-fun lt!153596 () SeekEntryResult!2733)

(assert (=> d!68471 (and (or (is-Undefined!2733 lt!153596) (not (is-Found!2733 lt!153596)) (and (bvsge (index!13109 lt!153596) #b00000000000000000000000000000000) (bvslt (index!13109 lt!153596) (size!7934 a!3293)))) (or (is-Undefined!2733 lt!153596) (is-Found!2733 lt!153596) (not (is-MissingZero!2733 lt!153596)) (and (bvsge (index!13108 lt!153596) #b00000000000000000000000000000000) (bvslt (index!13108 lt!153596) (size!7934 a!3293)))) (or (is-Undefined!2733 lt!153596) (is-Found!2733 lt!153596) (is-MissingZero!2733 lt!153596) (not (is-MissingVacant!2733 lt!153596)) (and (bvsge (index!13111 lt!153596) #b00000000000000000000000000000000) (bvslt (index!13111 lt!153596) (size!7934 a!3293)))) (or (is-Undefined!2733 lt!153596) (ite (is-Found!2733 lt!153596) (= (select (arr!7582 a!3293) (index!13109 lt!153596)) k!2441) (ite (is-MissingZero!2733 lt!153596) (= (select (arr!7582 a!3293) (index!13108 lt!153596)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2733 lt!153596) (= (select (arr!7582 a!3293) (index!13111 lt!153596)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68471 (= lt!153596 e!195341)))

(declare-fun c!49493 () Bool)

(assert (=> d!68471 (= c!49493 (and (is-Intermediate!2733 lt!153598) (undefined!3545 lt!153598)))))

(assert (=> d!68471 (= lt!153598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68471 (validMask!0 mask!3709)))

(assert (=> d!68471 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153596)))

(assert (= (and d!68471 c!49493) b!313450))

(assert (= (and d!68471 (not c!49493)) b!313451))

(assert (= (and b!313451 c!49491) b!313447))

(assert (= (and b!313451 (not c!49491)) b!313452))

(assert (= (and b!313452 c!49492) b!313449))

(assert (= (and b!313452 (not c!49492)) b!313448))

(declare-fun m!323331 () Bool)

(assert (=> b!313448 m!323331))

(declare-fun m!323333 () Bool)

(assert (=> b!313451 m!323333))

(declare-fun m!323335 () Bool)

(assert (=> d!68471 m!323335))

(declare-fun m!323337 () Bool)

(assert (=> d!68471 m!323337))

(declare-fun m!323339 () Bool)

(assert (=> d!68471 m!323339))

(assert (=> d!68471 m!323217))

(assert (=> d!68471 m!323205))

(assert (=> d!68471 m!323205))

(assert (=> d!68471 m!323207))

(assert (=> b!313246 d!68471))

(declare-fun d!68485 () Bool)

(assert (=> d!68485 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313247 d!68485))

(declare-fun d!68487 () Bool)

(assert (=> d!68487 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31200 d!68487))

(declare-fun d!68501 () Bool)

(assert (=> d!68501 (= (array_inv!5536 a!3293) (bvsge (size!7934 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31200 d!68501))

(declare-fun b!313498 () Bool)

(declare-fun lt!153620 () SeekEntryResult!2733)

(assert (=> b!313498 (and (bvsge (index!13110 lt!153620) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153620) (size!7934 a!3293)))))

(declare-fun res!169705 () Bool)

(assert (=> b!313498 (= res!169705 (= (select (arr!7582 a!3293) (index!13110 lt!153620)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195377 () Bool)

(assert (=> b!313498 (=> res!169705 e!195377)))

(declare-fun e!195373 () SeekEntryResult!2733)

(declare-fun b!313499 () Bool)

(assert (=> b!313499 (= e!195373 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68503 () Bool)

(declare-fun e!195376 () Bool)

(assert (=> d!68503 e!195376))

(declare-fun c!49506 () Bool)

(assert (=> d!68503 (= c!49506 (and (is-Intermediate!2733 lt!153620) (undefined!3545 lt!153620)))))

(declare-fun e!195375 () SeekEntryResult!2733)

(assert (=> d!68503 (= lt!153620 e!195375)))

(declare-fun c!49507 () Bool)

(assert (=> d!68503 (= c!49507 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!153621 () (_ BitVec 64))

(assert (=> d!68503 (= lt!153621 (select (arr!7582 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68503 (validMask!0 mask!3709)))

(assert (=> d!68503 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!153620)))

(declare-fun b!313500 () Bool)

(declare-fun e!195374 () Bool)

(assert (=> b!313500 (= e!195376 e!195374)))

(declare-fun res!169707 () Bool)

(assert (=> b!313500 (= res!169707 (and (is-Intermediate!2733 lt!153620) (not (undefined!3545 lt!153620)) (bvslt (x!31289 lt!153620) #b01111111111111111111111111111110) (bvsge (x!31289 lt!153620) #b00000000000000000000000000000000) (bvsge (x!31289 lt!153620) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!313500 (=> (not res!169707) (not e!195374))))

(declare-fun b!313501 () Bool)

(assert (=> b!313501 (= e!195376 (bvsge (x!31289 lt!153620) #b01111111111111111111111111111110))))

(declare-fun b!313502 () Bool)

(assert (=> b!313502 (= e!195375 e!195373)))

(declare-fun c!49508 () Bool)

(assert (=> b!313502 (= c!49508 (or (= lt!153621 k!2441) (= (bvadd lt!153621 lt!153621) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313503 () Bool)

(assert (=> b!313503 (= e!195373 (Intermediate!2733 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313504 () Bool)

(assert (=> b!313504 (= e!195375 (Intermediate!2733 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313505 () Bool)

(assert (=> b!313505 (and (bvsge (index!13110 lt!153620) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153620) (size!7934 a!3293)))))

(declare-fun res!169706 () Bool)

(assert (=> b!313505 (= res!169706 (= (select (arr!7582 a!3293) (index!13110 lt!153620)) k!2441))))

(assert (=> b!313505 (=> res!169706 e!195377)))

(assert (=> b!313505 (= e!195374 e!195377)))

(declare-fun b!313506 () Bool)

(assert (=> b!313506 (and (bvsge (index!13110 lt!153620) #b00000000000000000000000000000000) (bvslt (index!13110 lt!153620) (size!7934 a!3293)))))

(assert (=> b!313506 (= e!195377 (= (select (arr!7582 a!3293) (index!13110 lt!153620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68503 c!49507) b!313504))

(assert (= (and d!68503 (not c!49507)) b!313502))

(assert (= (and b!313502 c!49508) b!313503))

(assert (= (and b!313502 (not c!49508)) b!313499))

(assert (= (and d!68503 c!49506) b!313501))

(assert (= (and d!68503 (not c!49506)) b!313500))

(assert (= (and b!313500 res!169707) b!313505))

(assert (= (and b!313505 (not res!169706)) b!313498))

(assert (= (and b!313498 (not res!169705)) b!313506))

(declare-fun m!323369 () Bool)

(assert (=> b!313498 m!323369))

(assert (=> b!313505 m!323369))

(assert (=> d!68503 m!323199))

(declare-fun m!323371 () Bool)

(assert (=> d!68503 m!323371))

(assert (=> d!68503 m!323217))

(assert (=> b!313499 m!323199))

(declare-fun m!323373 () Bool)

(assert (=> b!313499 m!323373))

(assert (=> b!313499 m!323373))

(declare-fun m!323375 () Bool)

(assert (=> b!313499 m!323375))

(assert (=> b!313506 m!323369))

(assert (=> b!313254 d!68503))

(declare-fun d!68505 () Bool)

(declare-fun lt!153628 () (_ BitVec 32))

(assert (=> d!68505 (and (bvsge lt!153628 #b00000000000000000000000000000000) (bvslt lt!153628 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68505 (= lt!153628 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68505 (validMask!0 mask!3709)))

(assert (=> d!68505 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!153628)))

(declare-fun bs!10988 () Bool)

(assert (= bs!10988 d!68505))

(declare-fun m!323377 () Bool)

(assert (=> bs!10988 m!323377))

(assert (=> bs!10988 m!323217))

(assert (=> b!313254 d!68505))

(declare-fun d!68509 () Bool)

(declare-fun res!169715 () Bool)

(declare-fun e!195387 () Bool)

(assert (=> d!68509 (=> res!169715 e!195387)))

(assert (=> d!68509 (= res!169715 (= (select (arr!7582 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68509 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195387)))

(declare-fun b!313520 () Bool)

(declare-fun e!195388 () Bool)

(assert (=> b!313520 (= e!195387 e!195388)))

(declare-fun res!169716 () Bool)

(assert (=> b!313520 (=> (not res!169716) (not e!195388))))

(assert (=> b!313520 (= res!169716 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7934 a!3293)))))

(declare-fun b!313521 () Bool)

(assert (=> b!313521 (= e!195388 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68509 (not res!169715)) b!313520))

(assert (= (and b!313520 res!169716) b!313521))

(declare-fun m!323387 () Bool)

(assert (=> d!68509 m!323387))

(declare-fun m!323389 () Bool)

(assert (=> b!313521 m!323389))

(assert (=> b!313253 d!68509))

(declare-fun b!313530 () Bool)

(declare-fun e!195397 () Bool)

(declare-fun call!25949 () Bool)

(assert (=> b!313530 (= e!195397 call!25949)))

(declare-fun bm!25946 () Bool)

(assert (=> bm!25946 (= call!25949 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313531 () Bool)

(declare-fun e!195395 () Bool)

(assert (=> b!313531 (= e!195395 call!25949)))

(declare-fun b!313533 () Bool)

(assert (=> b!313533 (= e!195395 e!195397)))

(declare-fun lt!153642 () (_ BitVec 64))

(assert (=> b!313533 (= lt!153642 (select (arr!7582 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9668 0))(
  ( (Unit!9669) )
))
(declare-fun lt!153644 () Unit!9668)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16010 (_ BitVec 64) (_ BitVec 32)) Unit!9668)

(assert (=> b!313533 (= lt!153644 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153642 #b00000000000000000000000000000000))))

(assert (=> b!313533 (arrayContainsKey!0 a!3293 lt!153642 #b00000000000000000000000000000000)))

(declare-fun lt!153643 () Unit!9668)

(assert (=> b!313533 (= lt!153643 lt!153644)))

(declare-fun res!169721 () Bool)

(assert (=> b!313533 (= res!169721 (= (seekEntryOrOpen!0 (select (arr!7582 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2733 #b00000000000000000000000000000000)))))

(assert (=> b!313533 (=> (not res!169721) (not e!195397))))

(declare-fun d!68515 () Bool)

(declare-fun res!169722 () Bool)

(declare-fun e!195396 () Bool)

(assert (=> d!68515 (=> res!169722 e!195396)))

(assert (=> d!68515 (= res!169722 (bvsge #b00000000000000000000000000000000 (size!7934 a!3293)))))

(assert (=> d!68515 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195396)))

(declare-fun b!313532 () Bool)

(assert (=> b!313532 (= e!195396 e!195395)))

(declare-fun c!49514 () Bool)

(assert (=> b!313532 (= c!49514 (validKeyInArray!0 (select (arr!7582 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68515 (not res!169722)) b!313532))

(assert (= (and b!313532 c!49514) b!313533))

(assert (= (and b!313532 (not c!49514)) b!313531))

(assert (= (and b!313533 res!169721) b!313530))

(assert (= (or b!313530 b!313531) bm!25946))

(declare-fun m!323393 () Bool)

(assert (=> bm!25946 m!323393))

(assert (=> b!313533 m!323387))

(declare-fun m!323395 () Bool)

(assert (=> b!313533 m!323395))

(declare-fun m!323397 () Bool)

(assert (=> b!313533 m!323397))

(assert (=> b!313533 m!323387))

(declare-fun m!323399 () Bool)

(assert (=> b!313533 m!323399))

(assert (=> b!313532 m!323387))

(assert (=> b!313532 m!323387))

(declare-fun m!323401 () Bool)

(assert (=> b!313532 m!323401))

(assert (=> b!313248 d!68515))

(push 1)

(assert (not b!313372))

(assert (not b!313363))

(assert (not b!313521))

(assert (not b!313533))

(assert (not bm!25946))

(assert (not b!313499))

(assert (not b!313448))

(assert (not d!68505))

(assert (not d!68465))

(assert (not d!68471))

(assert (not d!68457))

(assert (not d!68503))

(assert (not b!313532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

