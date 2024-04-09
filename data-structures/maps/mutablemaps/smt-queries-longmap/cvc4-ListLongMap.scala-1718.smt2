; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31660 () Bool)

(assert start!31660)

(declare-fun b!316387 () Bool)

(declare-fun res!171480 () Bool)

(declare-fun e!196790 () Bool)

(assert (=> b!316387 (=> (not res!171480) (not e!196790))))

(declare-datatypes ((array!16131 0))(
  ( (array!16132 (arr!7632 (Array (_ BitVec 32) (_ BitVec 64))) (size!7984 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16131)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!316387 (= res!171480 (and (= (size!7984 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7984 a!3293))))))

(declare-fun e!196792 () Bool)

(declare-fun b!316388 () Bool)

(declare-datatypes ((SeekEntryResult!2783 0))(
  ( (MissingZero!2783 (index!13308 (_ BitVec 32))) (Found!2783 (index!13309 (_ BitVec 32))) (Intermediate!2783 (undefined!3595 Bool) (index!13310 (_ BitVec 32)) (x!31521 (_ BitVec 32))) (Undefined!2783) (MissingVacant!2783 (index!13311 (_ BitVec 32))) )
))
(declare-fun lt!154579 () SeekEntryResult!2783)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16131 (_ BitVec 32)) SeekEntryResult!2783)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316388 (= e!196792 (not (= lt!154579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))))

(declare-fun b!316389 () Bool)

(declare-fun res!171479 () Bool)

(assert (=> b!316389 (=> (not res!171479) (not e!196790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16131 (_ BitVec 32)) Bool)

(assert (=> b!316389 (= res!171479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316390 () Bool)

(declare-fun e!196789 () Bool)

(assert (=> b!316390 (= e!196789 e!196792)))

(declare-fun res!171485 () Bool)

(assert (=> b!316390 (=> (not res!171485) (not e!196792))))

(declare-fun lt!154580 () SeekEntryResult!2783)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316390 (= res!171485 (and (= lt!154579 lt!154580) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7632 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316390 (= lt!154579 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316391 () Bool)

(declare-fun res!171484 () Bool)

(assert (=> b!316391 (=> (not res!171484) (not e!196789))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!316391 (= res!171484 (and (= (select (arr!7632 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7984 a!3293))))))

(declare-fun b!316392 () Bool)

(declare-fun res!171481 () Bool)

(assert (=> b!316392 (=> (not res!171481) (not e!196790))))

(declare-fun arrayContainsKey!0 (array!16131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316392 (= res!171481 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!316393 () Bool)

(declare-fun res!171483 () Bool)

(assert (=> b!316393 (=> (not res!171483) (not e!196790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316393 (= res!171483 (validKeyInArray!0 k!2441))))

(declare-fun res!171486 () Bool)

(assert (=> start!31660 (=> (not res!171486) (not e!196790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31660 (= res!171486 (validMask!0 mask!3709))))

(assert (=> start!31660 e!196790))

(declare-fun array_inv!5586 (array!16131) Bool)

(assert (=> start!31660 (array_inv!5586 a!3293)))

(assert (=> start!31660 true))

(declare-fun b!316394 () Bool)

(declare-fun res!171482 () Bool)

(assert (=> b!316394 (=> (not res!171482) (not e!196790))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16131 (_ BitVec 32)) SeekEntryResult!2783)

(assert (=> b!316394 (= res!171482 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2783 i!1240)))))

(declare-fun b!316395 () Bool)

(assert (=> b!316395 (= e!196790 e!196789)))

(declare-fun res!171478 () Bool)

(assert (=> b!316395 (=> (not res!171478) (not e!196789))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316395 (= res!171478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154580))))

(assert (=> b!316395 (= lt!154580 (Intermediate!2783 false resIndex!52 resX!52))))

(assert (= (and start!31660 res!171486) b!316387))

(assert (= (and b!316387 res!171480) b!316393))

(assert (= (and b!316393 res!171483) b!316392))

(assert (= (and b!316392 res!171481) b!316394))

(assert (= (and b!316394 res!171482) b!316389))

(assert (= (and b!316389 res!171479) b!316395))

(assert (= (and b!316395 res!171478) b!316391))

(assert (= (and b!316391 res!171484) b!316390))

(assert (= (and b!316390 res!171485) b!316388))

(declare-fun m!325283 () Bool)

(assert (=> b!316390 m!325283))

(declare-fun m!325285 () Bool)

(assert (=> b!316390 m!325285))

(declare-fun m!325287 () Bool)

(assert (=> b!316388 m!325287))

(assert (=> b!316388 m!325287))

(declare-fun m!325289 () Bool)

(assert (=> b!316388 m!325289))

(declare-fun m!325291 () Bool)

(assert (=> b!316392 m!325291))

(declare-fun m!325293 () Bool)

(assert (=> b!316395 m!325293))

(assert (=> b!316395 m!325293))

(declare-fun m!325295 () Bool)

(assert (=> b!316395 m!325295))

(declare-fun m!325297 () Bool)

(assert (=> start!31660 m!325297))

(declare-fun m!325299 () Bool)

(assert (=> start!31660 m!325299))

(declare-fun m!325301 () Bool)

(assert (=> b!316389 m!325301))

(declare-fun m!325303 () Bool)

(assert (=> b!316391 m!325303))

(declare-fun m!325305 () Bool)

(assert (=> b!316393 m!325305))

(declare-fun m!325307 () Bool)

(assert (=> b!316394 m!325307))

(push 1)

(assert (not b!316390))

(assert (not b!316394))

(assert (not b!316389))

(assert (not b!316393))

(assert (not b!316392))

(assert (not start!31660))

(assert (not b!316395))

(assert (not b!316388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!316416 () Bool)

(declare-fun e!196806 () Bool)

(declare-fun call!26006 () Bool)

(assert (=> b!316416 (= e!196806 call!26006)))

(declare-fun d!68915 () Bool)

(declare-fun res!171491 () Bool)

(declare-fun e!196807 () Bool)

(assert (=> d!68915 (=> res!171491 e!196807)))

(assert (=> d!68915 (= res!171491 (bvsge #b00000000000000000000000000000000 (size!7984 a!3293)))))

(assert (=> d!68915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196807)))

(declare-fun b!316417 () Bool)

(declare-fun e!196805 () Bool)

(assert (=> b!316417 (= e!196807 e!196805)))

(declare-fun c!50081 () Bool)

(assert (=> b!316417 (= c!50081 (validKeyInArray!0 (select (arr!7632 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!316418 () Bool)

(assert (=> b!316418 (= e!196805 call!26006)))

(declare-fun b!316419 () Bool)

(assert (=> b!316419 (= e!196805 e!196806)))

(declare-fun lt!154595 () (_ BitVec 64))

(assert (=> b!316419 (= lt!154595 (select (arr!7632 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9776 0))(
  ( (Unit!9778) )
))
(declare-fun lt!154593 () Unit!9776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16131 (_ BitVec 64) (_ BitVec 32)) Unit!9776)

(assert (=> b!316419 (= lt!154593 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154595 #b00000000000000000000000000000000))))

(assert (=> b!316419 (arrayContainsKey!0 a!3293 lt!154595 #b00000000000000000000000000000000)))

(declare-fun lt!154594 () Unit!9776)

(assert (=> b!316419 (= lt!154594 lt!154593)))

(declare-fun res!171492 () Bool)

(assert (=> b!316419 (= res!171492 (= (seekEntryOrOpen!0 (select (arr!7632 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2783 #b00000000000000000000000000000000)))))

(assert (=> b!316419 (=> (not res!171492) (not e!196806))))

(declare-fun bm!26003 () Bool)

(assert (=> bm!26003 (= call!26006 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(assert (= (and d!68915 (not res!171491)) b!316417))

(assert (= (and b!316417 c!50081) b!316419))

(assert (= (and b!316417 (not c!50081)) b!316418))

(assert (= (and b!316419 res!171492) b!316416))

(assert (= (or b!316416 b!316418) bm!26003))

(declare-fun m!325309 () Bool)

(assert (=> b!316417 m!325309))

(assert (=> b!316417 m!325309))

(declare-fun m!325311 () Bool)

(assert (=> b!316417 m!325311))

(assert (=> b!316419 m!325309))

(declare-fun m!325313 () Bool)

(assert (=> b!316419 m!325313))

(declare-fun m!325315 () Bool)

(assert (=> b!316419 m!325315))

(assert (=> b!316419 m!325309))

(declare-fun m!325317 () Bool)

(assert (=> b!316419 m!325317))

(declare-fun m!325319 () Bool)

(assert (=> bm!26003 m!325319))

(assert (=> b!316389 d!68915))

(declare-fun b!316474 () Bool)

(declare-fun e!196839 () Bool)

(declare-fun e!196840 () Bool)

(assert (=> b!316474 (= e!196839 e!196840)))

(declare-fun res!171505 () Bool)

(declare-fun lt!154621 () SeekEntryResult!2783)

(assert (=> b!316474 (= res!171505 (and (is-Intermediate!2783 lt!154621) (not (undefined!3595 lt!154621)) (bvslt (x!31521 lt!154621) #b01111111111111111111111111111110) (bvsge (x!31521 lt!154621) #b00000000000000000000000000000000) (bvsge (x!31521 lt!154621) #b00000000000000000000000000000000)))))

(assert (=> b!316474 (=> (not res!171505) (not e!196840))))

(declare-fun b!316475 () Bool)

(assert (=> b!316475 (and (bvsge (index!13310 lt!154621) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154621) (size!7984 a!3293)))))

(declare-fun res!171506 () Bool)

(assert (=> b!316475 (= res!171506 (= (select (arr!7632 a!3293) (index!13310 lt!154621)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196843 () Bool)

(assert (=> b!316475 (=> res!171506 e!196843)))

(declare-fun b!316476 () Bool)

(declare-fun e!196841 () SeekEntryResult!2783)

(declare-fun e!196842 () SeekEntryResult!2783)

(assert (=> b!316476 (= e!196841 e!196842)))

(declare-fun c!50104 () Bool)

(declare-fun lt!154622 () (_ BitVec 64))

(assert (=> b!316476 (= c!50104 (or (= lt!154622 k!2441) (= (bvadd lt!154622 lt!154622) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316477 () Bool)

(assert (=> b!316477 (and (bvsge (index!13310 lt!154621) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154621) (size!7984 a!3293)))))

(assert (=> b!316477 (= e!196843 (= (select (arr!7632 a!3293) (index!13310 lt!154621)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316478 () Bool)

(assert (=> b!316478 (= e!196842 (Intermediate!2783 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316479 () Bool)

(assert (=> b!316479 (= e!196842 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68919 () Bool)

(assert (=> d!68919 e!196839))

(declare-fun c!50105 () Bool)

(assert (=> d!68919 (= c!50105 (and (is-Intermediate!2783 lt!154621) (undefined!3595 lt!154621)))))

(assert (=> d!68919 (= lt!154621 e!196841)))

(declare-fun c!50103 () Bool)

(assert (=> d!68919 (= c!50103 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68919 (= lt!154622 (select (arr!7632 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68919 (validMask!0 mask!3709)))

(assert (=> d!68919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154621)))

(declare-fun b!316480 () Bool)

(assert (=> b!316480 (and (bvsge (index!13310 lt!154621) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154621) (size!7984 a!3293)))))

(declare-fun res!171507 () Bool)

(assert (=> b!316480 (= res!171507 (= (select (arr!7632 a!3293) (index!13310 lt!154621)) k!2441))))

(assert (=> b!316480 (=> res!171507 e!196843)))

(assert (=> b!316480 (= e!196840 e!196843)))

(declare-fun b!316481 () Bool)

(assert (=> b!316481 (= e!196841 (Intermediate!2783 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316482 () Bool)

(assert (=> b!316482 (= e!196839 (bvsge (x!31521 lt!154621) #b01111111111111111111111111111110))))

(assert (= (and d!68919 c!50103) b!316481))

(assert (= (and d!68919 (not c!50103)) b!316476))

(assert (= (and b!316476 c!50104) b!316478))

(assert (= (and b!316476 (not c!50104)) b!316479))

(assert (= (and d!68919 c!50105) b!316482))

(assert (= (and d!68919 (not c!50105)) b!316474))

(assert (= (and b!316474 res!171505) b!316480))

(assert (= (and b!316480 (not res!171507)) b!316475))

(assert (= (and b!316475 (not res!171506)) b!316477))

(declare-fun m!325353 () Bool)

(assert (=> b!316480 m!325353))

(assert (=> b!316479 m!325293))

(declare-fun m!325355 () Bool)

(assert (=> b!316479 m!325355))

(assert (=> b!316479 m!325355))

(declare-fun m!325357 () Bool)

(assert (=> b!316479 m!325357))

(assert (=> b!316477 m!325353))

(assert (=> b!316475 m!325353))

(assert (=> d!68919 m!325293))

(declare-fun m!325359 () Bool)

(assert (=> d!68919 m!325359))

(assert (=> d!68919 m!325297))

(assert (=> b!316395 d!68919))

(declare-fun d!68929 () Bool)

(declare-fun lt!154628 () (_ BitVec 32))

(declare-fun lt!154627 () (_ BitVec 32))

(assert (=> d!68929 (= lt!154628 (bvmul (bvxor lt!154627 (bvlshr lt!154627 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68929 (= lt!154627 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68929 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171508 (let ((h!5393 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31523 (bvmul (bvxor h!5393 (bvlshr h!5393 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31523 (bvlshr x!31523 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171508 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171508 #b00000000000000000000000000000000))))))

(assert (=> d!68929 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154628 (bvlshr lt!154628 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!316395 d!68929))

(declare-fun b!316483 () Bool)

(declare-fun e!196844 () Bool)

(declare-fun e!196845 () Bool)

(assert (=> b!316483 (= e!196844 e!196845)))

(declare-fun res!171509 () Bool)

(declare-fun lt!154629 () SeekEntryResult!2783)

(assert (=> b!316483 (= res!171509 (and (is-Intermediate!2783 lt!154629) (not (undefined!3595 lt!154629)) (bvslt (x!31521 lt!154629) #b01111111111111111111111111111110) (bvsge (x!31521 lt!154629) #b00000000000000000000000000000000) (bvsge (x!31521 lt!154629) x!1427)))))

(assert (=> b!316483 (=> (not res!171509) (not e!196845))))

(declare-fun b!316484 () Bool)

(assert (=> b!316484 (and (bvsge (index!13310 lt!154629) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154629) (size!7984 a!3293)))))

(declare-fun res!171510 () Bool)

(assert (=> b!316484 (= res!171510 (= (select (arr!7632 a!3293) (index!13310 lt!154629)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196848 () Bool)

(assert (=> b!316484 (=> res!171510 e!196848)))

(declare-fun b!316485 () Bool)

(declare-fun e!196846 () SeekEntryResult!2783)

(declare-fun e!196847 () SeekEntryResult!2783)

(assert (=> b!316485 (= e!196846 e!196847)))

(declare-fun c!50107 () Bool)

(declare-fun lt!154630 () (_ BitVec 64))

(assert (=> b!316485 (= c!50107 (or (= lt!154630 k!2441) (= (bvadd lt!154630 lt!154630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316486 () Bool)

(assert (=> b!316486 (and (bvsge (index!13310 lt!154629) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154629) (size!7984 a!3293)))))

(assert (=> b!316486 (= e!196848 (= (select (arr!7632 a!3293) (index!13310 lt!154629)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316487 () Bool)

(assert (=> b!316487 (= e!196847 (Intermediate!2783 false index!1781 x!1427))))

(declare-fun b!316488 () Bool)

(assert (=> b!316488 (= e!196847 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68931 () Bool)

(assert (=> d!68931 e!196844))

(declare-fun c!50108 () Bool)

(assert (=> d!68931 (= c!50108 (and (is-Intermediate!2783 lt!154629) (undefined!3595 lt!154629)))))

(assert (=> d!68931 (= lt!154629 e!196846)))

(declare-fun c!50106 () Bool)

(assert (=> d!68931 (= c!50106 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68931 (= lt!154630 (select (arr!7632 a!3293) index!1781))))

(assert (=> d!68931 (validMask!0 mask!3709)))

(assert (=> d!68931 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154629)))

(declare-fun b!316489 () Bool)

(assert (=> b!316489 (and (bvsge (index!13310 lt!154629) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154629) (size!7984 a!3293)))))

(declare-fun res!171511 () Bool)

(assert (=> b!316489 (= res!171511 (= (select (arr!7632 a!3293) (index!13310 lt!154629)) k!2441))))

(assert (=> b!316489 (=> res!171511 e!196848)))

(assert (=> b!316489 (= e!196845 e!196848)))

(declare-fun b!316490 () Bool)

(assert (=> b!316490 (= e!196846 (Intermediate!2783 true index!1781 x!1427))))

(declare-fun b!316491 () Bool)

(assert (=> b!316491 (= e!196844 (bvsge (x!31521 lt!154629) #b01111111111111111111111111111110))))

(assert (= (and d!68931 c!50106) b!316490))

(assert (= (and d!68931 (not c!50106)) b!316485))

(assert (= (and b!316485 c!50107) b!316487))

(assert (= (and b!316485 (not c!50107)) b!316488))

(assert (= (and d!68931 c!50108) b!316491))

(assert (= (and d!68931 (not c!50108)) b!316483))

(assert (= (and b!316483 res!171509) b!316489))

(assert (= (and b!316489 (not res!171511)) b!316484))

(assert (= (and b!316484 (not res!171510)) b!316486))

(declare-fun m!325361 () Bool)

(assert (=> b!316489 m!325361))

(assert (=> b!316488 m!325287))

(assert (=> b!316488 m!325287))

(declare-fun m!325363 () Bool)

(assert (=> b!316488 m!325363))

(assert (=> b!316486 m!325361))

(assert (=> b!316484 m!325361))

(assert (=> d!68931 m!325283))

(assert (=> d!68931 m!325297))

(assert (=> b!316390 d!68931))

(declare-fun d!68933 () Bool)

(assert (=> d!68933 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316393 d!68933))

(declare-fun b!316500 () Bool)

(declare-fun e!196853 () Bool)

(declare-fun e!196854 () Bool)

(assert (=> b!316500 (= e!196853 e!196854)))

(declare-fun res!171512 () Bool)

(declare-fun lt!154635 () SeekEntryResult!2783)

(assert (=> b!316500 (= res!171512 (and (is-Intermediate!2783 lt!154635) (not (undefined!3595 lt!154635)) (bvslt (x!31521 lt!154635) #b01111111111111111111111111111110) (bvsge (x!31521 lt!154635) #b00000000000000000000000000000000) (bvsge (x!31521 lt!154635) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316500 (=> (not res!171512) (not e!196854))))

(declare-fun b!316501 () Bool)

(assert (=> b!316501 (and (bvsge (index!13310 lt!154635) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154635) (size!7984 a!3293)))))

(declare-fun res!171513 () Bool)

(assert (=> b!316501 (= res!171513 (= (select (arr!7632 a!3293) (index!13310 lt!154635)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196857 () Bool)

(assert (=> b!316501 (=> res!171513 e!196857)))

(declare-fun b!316502 () Bool)

(declare-fun e!196855 () SeekEntryResult!2783)

(declare-fun e!196856 () SeekEntryResult!2783)

(assert (=> b!316502 (= e!196855 e!196856)))

(declare-fun c!50114 () Bool)

(declare-fun lt!154636 () (_ BitVec 64))

(assert (=> b!316502 (= c!50114 (or (= lt!154636 k!2441) (= (bvadd lt!154636 lt!154636) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316503 () Bool)

(assert (=> b!316503 (and (bvsge (index!13310 lt!154635) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154635) (size!7984 a!3293)))))

(assert (=> b!316503 (= e!196857 (= (select (arr!7632 a!3293) (index!13310 lt!154635)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316504 () Bool)

(assert (=> b!316504 (= e!196856 (Intermediate!2783 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316505 () Bool)

(assert (=> b!316505 (= e!196856 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68935 () Bool)

(assert (=> d!68935 e!196853))

(declare-fun c!50115 () Bool)

(assert (=> d!68935 (= c!50115 (and (is-Intermediate!2783 lt!154635) (undefined!3595 lt!154635)))))

(assert (=> d!68935 (= lt!154635 e!196855)))

(declare-fun c!50113 () Bool)

(assert (=> d!68935 (= c!50113 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68935 (= lt!154636 (select (arr!7632 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68935 (validMask!0 mask!3709)))

(assert (=> d!68935 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154635)))

(declare-fun b!316506 () Bool)

(assert (=> b!316506 (and (bvsge (index!13310 lt!154635) #b00000000000000000000000000000000) (bvslt (index!13310 lt!154635) (size!7984 a!3293)))))

(declare-fun res!171514 () Bool)

(assert (=> b!316506 (= res!171514 (= (select (arr!7632 a!3293) (index!13310 lt!154635)) k!2441))))

(assert (=> b!316506 (=> res!171514 e!196857)))

(assert (=> b!316506 (= e!196854 e!196857)))

(declare-fun b!316507 () Bool)

(assert (=> b!316507 (= e!196855 (Intermediate!2783 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316508 () Bool)

(assert (=> b!316508 (= e!196853 (bvsge (x!31521 lt!154635) #b01111111111111111111111111111110))))

(assert (= (and d!68935 c!50113) b!316507))

(assert (= (and d!68935 (not c!50113)) b!316502))

(assert (= (and b!316502 c!50114) b!316504))

(assert (= (and b!316502 (not c!50114)) b!316505))

(assert (= (and d!68935 c!50115) b!316508))

(assert (= (and d!68935 (not c!50115)) b!316500))

(assert (= (and b!316500 res!171512) b!316506))

(assert (= (and b!316506 (not res!171514)) b!316501))

(assert (= (and b!316501 (not res!171513)) b!316503))

(declare-fun m!325365 () Bool)

(assert (=> b!316506 m!325365))

(assert (=> b!316505 m!325287))

(declare-fun m!325367 () Bool)

(assert (=> b!316505 m!325367))

(assert (=> b!316505 m!325367))

(declare-fun m!325369 () Bool)

(assert (=> b!316505 m!325369))

(assert (=> b!316503 m!325365))

(assert (=> b!316501 m!325365))

(assert (=> d!68935 m!325287))

(declare-fun m!325371 () Bool)

(assert (=> d!68935 m!325371))

(assert (=> d!68935 m!325297))

(assert (=> b!316388 d!68935))

(declare-fun d!68937 () Bool)

(declare-fun lt!154643 () (_ BitVec 32))

(assert (=> d!68937 (and (bvsge lt!154643 #b00000000000000000000000000000000) (bvslt lt!154643 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68937 (= lt!154643 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68937 (validMask!0 mask!3709)))

(assert (=> d!68937 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154643)))

(declare-fun bs!11047 () Bool)

(assert (= bs!11047 d!68937))

(declare-fun m!325373 () Bool)

(assert (=> bs!11047 m!325373))

(assert (=> bs!11047 m!325297))

(assert (=> b!316388 d!68937))

(declare-fun b!316608 () Bool)

(declare-fun c!50149 () Bool)

(declare-fun lt!154684 () (_ BitVec 64))

(assert (=> b!316608 (= c!50149 (= lt!154684 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196918 () SeekEntryResult!2783)

(declare-fun e!196917 () SeekEntryResult!2783)

(assert (=> b!316608 (= e!196918 e!196917)))

(declare-fun b!316610 () Bool)

(declare-fun lt!154685 () SeekEntryResult!2783)

(assert (=> b!316610 (= e!196917 (MissingZero!2783 (index!13310 lt!154685)))))

(declare-fun b!316611 () Bool)

(declare-fun e!196919 () SeekEntryResult!2783)

(assert (=> b!316611 (= e!196919 e!196918)))

(assert (=> b!316611 (= lt!154684 (select (arr!7632 a!3293) (index!13310 lt!154685)))))

(declare-fun c!50148 () Bool)

(assert (=> b!316611 (= c!50148 (= lt!154684 k!2441))))

(declare-fun b!316612 () Bool)

(assert (=> b!316612 (= e!196918 (Found!2783 (index!13310 lt!154685)))))

(declare-fun b!316613 () Bool)

(assert (=> b!316613 (= e!196919 Undefined!2783)))

(declare-fun b!316609 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16131 (_ BitVec 32)) SeekEntryResult!2783)

(assert (=> b!316609 (= e!196917 (seekKeyOrZeroReturnVacant!0 (x!31521 lt!154685) (index!13310 lt!154685) (index!13310 lt!154685) k!2441 a!3293 mask!3709))))

(declare-fun d!68939 () Bool)

(declare-fun lt!154686 () SeekEntryResult!2783)

(assert (=> d!68939 (and (or (is-Undefined!2783 lt!154686) (not (is-Found!2783 lt!154686)) (and (bvsge (index!13309 lt!154686) #b00000000000000000000000000000000) (bvslt (index!13309 lt!154686) (size!7984 a!3293)))) (or (is-Undefined!2783 lt!154686) (is-Found!2783 lt!154686) (not (is-MissingZero!2783 lt!154686)) (and (bvsge (index!13308 lt!154686) #b00000000000000000000000000000000) (bvslt (index!13308 lt!154686) (size!7984 a!3293)))) (or (is-Undefined!2783 lt!154686) (is-Found!2783 lt!154686) (is-MissingZero!2783 lt!154686) (not (is-MissingVacant!2783 lt!154686)) (and (bvsge (index!13311 lt!154686) #b00000000000000000000000000000000) (bvslt (index!13311 lt!154686) (size!7984 a!3293)))) (or (is-Undefined!2783 lt!154686) (ite (is-Found!2783 lt!154686) (= (select (arr!7632 a!3293) (index!13309 lt!154686)) k!2441) (ite (is-MissingZero!2783 lt!154686) (= (select (arr!7632 a!3293) (index!13308 lt!154686)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2783 lt!154686) (= (select (arr!7632 a!3293) (index!13311 lt!154686)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68939 (= lt!154686 e!196919)))

(declare-fun c!50147 () Bool)

(assert (=> d!68939 (= c!50147 (and (is-Intermediate!2783 lt!154685) (undefined!3595 lt!154685)))))

(assert (=> d!68939 (= lt!154685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68939 (validMask!0 mask!3709)))

(assert (=> d!68939 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154686)))

(assert (= (and d!68939 c!50147) b!316613))

(assert (= (and d!68939 (not c!50147)) b!316611))

(assert (= (and b!316611 c!50148) b!316612))

(assert (= (and b!316611 (not c!50148)) b!316608))

