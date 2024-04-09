; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31204 () Bool)

(assert start!31204)

(declare-fun b!313300 () Bool)

(declare-fun e!195258 () Bool)

(declare-fun e!195256 () Bool)

(assert (=> b!313300 (= e!195258 e!195256)))

(declare-fun res!169632 () Bool)

(assert (=> b!313300 (=> (not res!169632) (not e!195256))))

(declare-datatypes ((array!16014 0))(
  ( (array!16015 (arr!7584 (Array (_ BitVec 32) (_ BitVec 64))) (size!7936 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16014)

(declare-datatypes ((SeekEntryResult!2735 0))(
  ( (MissingZero!2735 (index!13116 (_ BitVec 32))) (Found!2735 (index!13117 (_ BitVec 32))) (Intermediate!2735 (undefined!3547 Bool) (index!13118 (_ BitVec 32)) (x!31291 (_ BitVec 32))) (Undefined!2735) (MissingVacant!2735 (index!13119 (_ BitVec 32))) )
))
(declare-fun lt!153540 () SeekEntryResult!2735)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!153542 () SeekEntryResult!2735)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!313300 (= res!169632 (and (= lt!153540 lt!153542) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7584 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7584 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7584 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16014 (_ BitVec 32)) SeekEntryResult!2735)

(assert (=> b!313300 (= lt!153540 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!313301 () Bool)

(declare-fun res!169631 () Bool)

(declare-fun e!195259 () Bool)

(assert (=> b!313301 (=> (not res!169631) (not e!195259))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!313301 (= res!169631 (and (= (size!7936 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7936 a!3293))))))

(declare-fun b!313302 () Bool)

(declare-fun res!169637 () Bool)

(assert (=> b!313302 (=> (not res!169637) (not e!195259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313302 (= res!169637 (validKeyInArray!0 k!2441))))

(declare-fun b!313303 () Bool)

(declare-fun res!169635 () Bool)

(assert (=> b!313303 (=> (not res!169635) (not e!195258))))

(assert (=> b!313303 (= res!169635 (and (= (select (arr!7584 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7936 a!3293))))))

(declare-fun b!313304 () Bool)

(declare-fun res!169633 () Bool)

(assert (=> b!313304 (=> (not res!169633) (not e!195259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16014 (_ BitVec 32)) Bool)

(assert (=> b!313304 (= res!169633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!169636 () Bool)

(assert (=> start!31204 (=> (not res!169636) (not e!195259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31204 (= res!169636 (validMask!0 mask!3709))))

(assert (=> start!31204 e!195259))

(declare-fun array_inv!5538 (array!16014) Bool)

(assert (=> start!31204 (array_inv!5538 a!3293)))

(assert (=> start!31204 true))

(declare-fun b!313305 () Bool)

(assert (=> b!313305 (= e!195259 e!195258)))

(declare-fun res!169638 () Bool)

(assert (=> b!313305 (=> (not res!169638) (not e!195258))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313305 (= res!169638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153542))))

(assert (=> b!313305 (= lt!153542 (Intermediate!2735 false resIndex!52 resX!52))))

(declare-fun b!313306 () Bool)

(declare-fun res!169630 () Bool)

(assert (=> b!313306 (=> (not res!169630) (not e!195259))))

(declare-fun arrayContainsKey!0 (array!16014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313306 (= res!169630 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313307 () Bool)

(declare-fun res!169634 () Bool)

(assert (=> b!313307 (=> (not res!169634) (not e!195259))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16014 (_ BitVec 32)) SeekEntryResult!2735)

(assert (=> b!313307 (= res!169634 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2735 i!1240)))))

(declare-fun b!313308 () Bool)

(declare-fun lt!153541 () SeekEntryResult!2735)

(assert (=> b!313308 (= e!195256 (not (or (not (is-Intermediate!2735 lt!153541)) (bvsge (x!31291 lt!153541) (bvadd #b00000000000000000000000000000001 x!1427)))))))

(assert (=> b!313308 (= lt!153540 lt!153541)))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313308 (= lt!153541 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(assert (= (and start!31204 res!169636) b!313301))

(assert (= (and b!313301 res!169631) b!313302))

(assert (= (and b!313302 res!169637) b!313306))

(assert (= (and b!313306 res!169630) b!313307))

(assert (= (and b!313307 res!169634) b!313304))

(assert (= (and b!313304 res!169633) b!313305))

(assert (= (and b!313305 res!169638) b!313303))

(assert (= (and b!313303 res!169635) b!313300))

(assert (= (and b!313300 res!169632) b!313308))

(declare-fun m!323249 () Bool)

(assert (=> b!313306 m!323249))

(declare-fun m!323251 () Bool)

(assert (=> b!313304 m!323251))

(declare-fun m!323253 () Bool)

(assert (=> b!313307 m!323253))

(declare-fun m!323255 () Bool)

(assert (=> b!313303 m!323255))

(declare-fun m!323257 () Bool)

(assert (=> b!313308 m!323257))

(assert (=> b!313308 m!323257))

(declare-fun m!323259 () Bool)

(assert (=> b!313308 m!323259))

(declare-fun m!323261 () Bool)

(assert (=> b!313305 m!323261))

(assert (=> b!313305 m!323261))

(declare-fun m!323263 () Bool)

(assert (=> b!313305 m!323263))

(declare-fun m!323265 () Bool)

(assert (=> b!313300 m!323265))

(declare-fun m!323267 () Bool)

(assert (=> b!313300 m!323267))

(declare-fun m!323269 () Bool)

(assert (=> start!31204 m!323269))

(declare-fun m!323271 () Bool)

(assert (=> start!31204 m!323271))

(declare-fun m!323273 () Bool)

(assert (=> b!313302 m!323273))

(push 1)

(assert (not b!313307))

(assert (not b!313306))

(assert (not b!313304))

(assert (not b!313308))

(assert (not start!31204))

(assert (not b!313302))

(assert (not b!313300))

(assert (not b!313305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!313380 () Bool)

(declare-fun e!195303 () Bool)

(declare-fun e!195302 () Bool)

(assert (=> b!313380 (= e!195303 e!195302)))

(declare-fun lt!153568 () (_ BitVec 64))

(assert (=> b!313380 (= lt!153568 (select (arr!7584 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9666 0))(
  ( (Unit!9667) )
))
(declare-fun lt!153566 () Unit!9666)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16014 (_ BitVec 64) (_ BitVec 32)) Unit!9666)

(assert (=> b!313380 (= lt!153566 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153568 #b00000000000000000000000000000000))))

(assert (=> b!313380 (arrayContainsKey!0 a!3293 lt!153568 #b00000000000000000000000000000000)))

(declare-fun lt!153567 () Unit!9666)

(assert (=> b!313380 (= lt!153567 lt!153566)))

(declare-fun res!169664 () Bool)

(assert (=> b!313380 (= res!169664 (= (seekEntryOrOpen!0 (select (arr!7584 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2735 #b00000000000000000000000000000000)))))

(assert (=> b!313380 (=> (not res!169664) (not e!195302))))

(declare-fun b!313381 () Bool)

(declare-fun call!25943 () Bool)

(assert (=> b!313381 (= e!195303 call!25943)))

(declare-fun bm!25940 () Bool)

(assert (=> bm!25940 (= call!25943 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313382 () Bool)

(declare-fun e!195301 () Bool)

(assert (=> b!313382 (= e!195301 e!195303)))

(declare-fun c!49466 () Bool)

(assert (=> b!313382 (= c!49466 (validKeyInArray!0 (select (arr!7584 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!68463 () Bool)

(declare-fun res!169665 () Bool)

(assert (=> d!68463 (=> res!169665 e!195301)))

(assert (=> d!68463 (= res!169665 (bvsge #b00000000000000000000000000000000 (size!7936 a!3293)))))

(assert (=> d!68463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195301)))

(declare-fun b!313383 () Bool)

(assert (=> b!313383 (= e!195302 call!25943)))

(assert (= (and d!68463 (not res!169665)) b!313382))

(assert (= (and b!313382 c!49466) b!313380))

(assert (= (and b!313382 (not c!49466)) b!313381))

(assert (= (and b!313380 res!169664) b!313383))

(assert (= (or b!313383 b!313381) bm!25940))

(declare-fun m!323297 () Bool)

(assert (=> b!313380 m!323297))

(declare-fun m!323299 () Bool)

(assert (=> b!313380 m!323299))

(declare-fun m!323301 () Bool)

(assert (=> b!313380 m!323301))

(assert (=> b!313380 m!323297))

(declare-fun m!323303 () Bool)

(assert (=> b!313380 m!323303))

(declare-fun m!323305 () Bool)

(assert (=> bm!25940 m!323305))

(assert (=> b!313382 m!323297))

(assert (=> b!313382 m!323297))

(declare-fun m!323307 () Bool)

(assert (=> b!313382 m!323307))

(assert (=> b!313304 d!68463))

(declare-fun b!313432 () Bool)

(declare-fun e!195333 () SeekEntryResult!2735)

(assert (=> b!313432 (= e!195333 (Intermediate!2735 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313433 () Bool)

(declare-fun e!195329 () Bool)

(declare-fun lt!153595 () SeekEntryResult!2735)

(assert (=> b!313433 (= e!195329 (bvsge (x!31291 lt!153595) #b01111111111111111111111111111110))))

(declare-fun b!313434 () Bool)

(assert (=> b!313434 (and (bvsge (index!13118 lt!153595) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153595) (size!7936 a!3293)))))

(declare-fun e!195332 () Bool)

(assert (=> b!313434 (= e!195332 (= (select (arr!7584 a!3293) (index!13118 lt!153595)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313436 () Bool)

(assert (=> b!313436 (and (bvsge (index!13118 lt!153595) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153595) (size!7936 a!3293)))))

(declare-fun res!169675 () Bool)

(assert (=> b!313436 (= res!169675 (= (select (arr!7584 a!3293) (index!13118 lt!153595)) k!2441))))

(assert (=> b!313436 (=> res!169675 e!195332)))

(declare-fun e!195330 () Bool)

(assert (=> b!313436 (= e!195330 e!195332)))

(declare-fun b!313437 () Bool)

(declare-fun e!195331 () SeekEntryResult!2735)

(assert (=> b!313437 (= e!195333 e!195331)))

(declare-fun c!49489 () Bool)

(declare-fun lt!153594 () (_ BitVec 64))

(assert (=> b!313437 (= c!49489 (or (= lt!153594 k!2441) (= (bvadd lt!153594 lt!153594) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313438 () Bool)

(assert (=> b!313438 (= e!195329 e!195330)))

(declare-fun res!169673 () Bool)

(assert (=> b!313438 (= res!169673 (and (is-Intermediate!2735 lt!153595) (not (undefined!3547 lt!153595)) (bvslt (x!31291 lt!153595) #b01111111111111111111111111111110) (bvsge (x!31291 lt!153595) #b00000000000000000000000000000000) (bvsge (x!31291 lt!153595) #b00000000000000000000000000000000)))))

(assert (=> b!313438 (=> (not res!169673) (not e!195330))))

(declare-fun b!313439 () Bool)

(assert (=> b!313439 (= e!195331 (Intermediate!2735 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313440 () Bool)

(assert (=> b!313440 (= e!195331 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68469 () Bool)

(assert (=> d!68469 e!195329))

(declare-fun c!49490 () Bool)

(assert (=> d!68469 (= c!49490 (and (is-Intermediate!2735 lt!153595) (undefined!3547 lt!153595)))))

(assert (=> d!68469 (= lt!153595 e!195333)))

(declare-fun c!49488 () Bool)

(assert (=> d!68469 (= c!49488 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68469 (= lt!153594 (select (arr!7584 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68469 (validMask!0 mask!3709)))

(assert (=> d!68469 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153595)))

(declare-fun b!313435 () Bool)

(assert (=> b!313435 (and (bvsge (index!13118 lt!153595) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153595) (size!7936 a!3293)))))

(declare-fun res!169674 () Bool)

(assert (=> b!313435 (= res!169674 (= (select (arr!7584 a!3293) (index!13118 lt!153595)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313435 (=> res!169674 e!195332)))

(assert (= (and d!68469 c!49488) b!313432))

(assert (= (and d!68469 (not c!49488)) b!313437))

(assert (= (and b!313437 c!49489) b!313439))

(assert (= (and b!313437 (not c!49489)) b!313440))

(assert (= (and d!68469 c!49490) b!313433))

(assert (= (and d!68469 (not c!49490)) b!313438))

(assert (= (and b!313438 res!169673) b!313436))

(assert (= (and b!313436 (not res!169675)) b!313435))

(assert (= (and b!313435 (not res!169674)) b!313434))

(declare-fun m!323319 () Bool)

(assert (=> b!313434 m!323319))

(assert (=> b!313436 m!323319))

(assert (=> d!68469 m!323261))

(declare-fun m!323321 () Bool)

(assert (=> d!68469 m!323321))

(assert (=> d!68469 m!323269))

(assert (=> b!313435 m!323319))

(assert (=> b!313440 m!323261))

(declare-fun m!323323 () Bool)

(assert (=> b!313440 m!323323))

(assert (=> b!313440 m!323323))

(declare-fun m!323325 () Bool)

(assert (=> b!313440 m!323325))

(assert (=> b!313305 d!68469))

(declare-fun d!68479 () Bool)

(declare-fun lt!153604 () (_ BitVec 32))

(declare-fun lt!153603 () (_ BitVec 32))

(assert (=> d!68479 (= lt!153604 (bvmul (bvxor lt!153603 (bvlshr lt!153603 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68479 (= lt!153603 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68479 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169678 (let ((h!5373 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31297 (bvmul (bvxor h!5373 (bvlshr h!5373 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31297 (bvlshr x!31297 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169678 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169678 #b00000000000000000000000000000000))))))

(assert (=> d!68479 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153604 (bvlshr lt!153604 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313305 d!68479))

(declare-fun b!313453 () Bool)

(declare-fun e!195347 () SeekEntryResult!2735)

(assert (=> b!313453 (= e!195347 (Intermediate!2735 true index!1781 x!1427))))

(declare-fun b!313454 () Bool)

(declare-fun e!195343 () Bool)

(declare-fun lt!153606 () SeekEntryResult!2735)

(assert (=> b!313454 (= e!195343 (bvsge (x!31291 lt!153606) #b01111111111111111111111111111110))))

(declare-fun b!313455 () Bool)

(assert (=> b!313455 (and (bvsge (index!13118 lt!153606) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153606) (size!7936 a!3293)))))

(declare-fun e!195346 () Bool)

(assert (=> b!313455 (= e!195346 (= (select (arr!7584 a!3293) (index!13118 lt!153606)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313457 () Bool)

(assert (=> b!313457 (and (bvsge (index!13118 lt!153606) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153606) (size!7936 a!3293)))))

(declare-fun res!169685 () Bool)

(assert (=> b!313457 (= res!169685 (= (select (arr!7584 a!3293) (index!13118 lt!153606)) k!2441))))

(assert (=> b!313457 (=> res!169685 e!195346)))

(declare-fun e!195344 () Bool)

(assert (=> b!313457 (= e!195344 e!195346)))

(declare-fun b!313458 () Bool)

(declare-fun e!195345 () SeekEntryResult!2735)

(assert (=> b!313458 (= e!195347 e!195345)))

(declare-fun c!49495 () Bool)

(declare-fun lt!153605 () (_ BitVec 64))

(assert (=> b!313458 (= c!49495 (or (= lt!153605 k!2441) (= (bvadd lt!153605 lt!153605) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313459 () Bool)

(assert (=> b!313459 (= e!195343 e!195344)))

(declare-fun res!169683 () Bool)

(assert (=> b!313459 (= res!169683 (and (is-Intermediate!2735 lt!153606) (not (undefined!3547 lt!153606)) (bvslt (x!31291 lt!153606) #b01111111111111111111111111111110) (bvsge (x!31291 lt!153606) #b00000000000000000000000000000000) (bvsge (x!31291 lt!153606) x!1427)))))

(assert (=> b!313459 (=> (not res!169683) (not e!195344))))

(declare-fun b!313460 () Bool)

(assert (=> b!313460 (= e!195345 (Intermediate!2735 false index!1781 x!1427))))

(declare-fun b!313461 () Bool)

(assert (=> b!313461 (= e!195345 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68489 () Bool)

(assert (=> d!68489 e!195343))

(declare-fun c!49496 () Bool)

(assert (=> d!68489 (= c!49496 (and (is-Intermediate!2735 lt!153606) (undefined!3547 lt!153606)))))

(assert (=> d!68489 (= lt!153606 e!195347)))

(declare-fun c!49494 () Bool)

(assert (=> d!68489 (= c!49494 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68489 (= lt!153605 (select (arr!7584 a!3293) index!1781))))

(assert (=> d!68489 (validMask!0 mask!3709)))

(assert (=> d!68489 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153606)))

(declare-fun b!313456 () Bool)

(assert (=> b!313456 (and (bvsge (index!13118 lt!153606) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153606) (size!7936 a!3293)))))

(declare-fun res!169684 () Bool)

(assert (=> b!313456 (= res!169684 (= (select (arr!7584 a!3293) (index!13118 lt!153606)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313456 (=> res!169684 e!195346)))

(assert (= (and d!68489 c!49494) b!313453))

(assert (= (and d!68489 (not c!49494)) b!313458))

(assert (= (and b!313458 c!49495) b!313460))

(assert (= (and b!313458 (not c!49495)) b!313461))

(assert (= (and d!68489 c!49496) b!313454))

(assert (= (and d!68489 (not c!49496)) b!313459))

(assert (= (and b!313459 res!169683) b!313457))

(assert (= (and b!313457 (not res!169685)) b!313456))

(assert (= (and b!313456 (not res!169684)) b!313455))

(declare-fun m!323341 () Bool)

(assert (=> b!313455 m!323341))

(assert (=> b!313457 m!323341))

(assert (=> d!68489 m!323265))

(assert (=> d!68489 m!323269))

(assert (=> b!313456 m!323341))

(assert (=> b!313461 m!323257))

(assert (=> b!313461 m!323257))

(declare-fun m!323343 () Bool)

(assert (=> b!313461 m!323343))

(assert (=> b!313300 d!68489))

(declare-fun d!68491 () Bool)

(declare-fun res!169692 () Bool)

(declare-fun e!195356 () Bool)

(assert (=> d!68491 (=> res!169692 e!195356)))

(assert (=> d!68491 (= res!169692 (= (select (arr!7584 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68491 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195356)))

(declare-fun b!313472 () Bool)

(declare-fun e!195357 () Bool)

(assert (=> b!313472 (= e!195356 e!195357)))

(declare-fun res!169693 () Bool)

(assert (=> b!313472 (=> (not res!169693) (not e!195357))))

(assert (=> b!313472 (= res!169693 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7936 a!3293)))))

(declare-fun b!313473 () Bool)

(assert (=> b!313473 (= e!195357 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68491 (not res!169692)) b!313472))

(assert (= (and b!313472 res!169693) b!313473))

(assert (=> d!68491 m!323297))

(declare-fun m!323345 () Bool)

(assert (=> b!313473 m!323345))

(assert (=> b!313306 d!68491))

(declare-fun d!68493 () Bool)

(assert (=> d!68493 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31204 d!68493))

(declare-fun d!68507 () Bool)

(assert (=> d!68507 (= (array_inv!5538 a!3293) (bvsge (size!7936 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31204 d!68507))

(declare-fun b!313507 () Bool)

(declare-fun e!195382 () SeekEntryResult!2735)

(assert (=> b!313507 (= e!195382 (Intermediate!2735 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313508 () Bool)

(declare-fun e!195378 () Bool)

(declare-fun lt!153632 () SeekEntryResult!2735)

(assert (=> b!313508 (= e!195378 (bvsge (x!31291 lt!153632) #b01111111111111111111111111111110))))

(declare-fun b!313509 () Bool)

(assert (=> b!313509 (and (bvsge (index!13118 lt!153632) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153632) (size!7936 a!3293)))))

(declare-fun e!195381 () Bool)

(assert (=> b!313509 (= e!195381 (= (select (arr!7584 a!3293) (index!13118 lt!153632)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313511 () Bool)

(assert (=> b!313511 (and (bvsge (index!13118 lt!153632) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153632) (size!7936 a!3293)))))

(declare-fun res!169710 () Bool)

(assert (=> b!313511 (= res!169710 (= (select (arr!7584 a!3293) (index!13118 lt!153632)) k!2441))))

(assert (=> b!313511 (=> res!169710 e!195381)))

(declare-fun e!195379 () Bool)

(assert (=> b!313511 (= e!195379 e!195381)))

(declare-fun b!313512 () Bool)

(declare-fun e!195380 () SeekEntryResult!2735)

(assert (=> b!313512 (= e!195382 e!195380)))

(declare-fun c!49510 () Bool)

(declare-fun lt!153631 () (_ BitVec 64))

(assert (=> b!313512 (= c!49510 (or (= lt!153631 k!2441) (= (bvadd lt!153631 lt!153631) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313513 () Bool)

(assert (=> b!313513 (= e!195378 e!195379)))

(declare-fun res!169708 () Bool)

(assert (=> b!313513 (= res!169708 (and (is-Intermediate!2735 lt!153632) (not (undefined!3547 lt!153632)) (bvslt (x!31291 lt!153632) #b01111111111111111111111111111110) (bvsge (x!31291 lt!153632) #b00000000000000000000000000000000) (bvsge (x!31291 lt!153632) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!313513 (=> (not res!169708) (not e!195379))))

(declare-fun b!313514 () Bool)

(assert (=> b!313514 (= e!195380 (Intermediate!2735 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313515 () Bool)

(assert (=> b!313515 (= e!195380 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!68511 () Bool)

(assert (=> d!68511 e!195378))

(declare-fun c!49511 () Bool)

(assert (=> d!68511 (= c!49511 (and (is-Intermediate!2735 lt!153632) (undefined!3547 lt!153632)))))

(assert (=> d!68511 (= lt!153632 e!195382)))

(declare-fun c!49509 () Bool)

(assert (=> d!68511 (= c!49509 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68511 (= lt!153631 (select (arr!7584 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68511 (validMask!0 mask!3709)))

(assert (=> d!68511 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!153632)))

(declare-fun b!313510 () Bool)

(assert (=> b!313510 (and (bvsge (index!13118 lt!153632) #b00000000000000000000000000000000) (bvslt (index!13118 lt!153632) (size!7936 a!3293)))))

(declare-fun res!169709 () Bool)

(assert (=> b!313510 (= res!169709 (= (select (arr!7584 a!3293) (index!13118 lt!153632)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313510 (=> res!169709 e!195381)))

(assert (= (and d!68511 c!49509) b!313507))

(assert (= (and d!68511 (not c!49509)) b!313512))

(assert (= (and b!313512 c!49510) b!313514))

(assert (= (and b!313512 (not c!49510)) b!313515))

(assert (= (and d!68511 c!49511) b!313508))

(assert (= (and d!68511 (not c!49511)) b!313513))

(assert (= (and b!313513 res!169708) b!313511))

(assert (= (and b!313511 (not res!169710)) b!313510))

(assert (= (and b!313510 (not res!169709)) b!313509))

(declare-fun m!323379 () Bool)

(assert (=> b!313509 m!323379))

(assert (=> b!313511 m!323379))

(assert (=> d!68511 m!323257))

(declare-fun m!323381 () Bool)

(assert (=> d!68511 m!323381))

(assert (=> d!68511 m!323269))

(assert (=> b!313510 m!323379))

(assert (=> b!313515 m!323257))

(declare-fun m!323383 () Bool)

(assert (=> b!313515 m!323383))

(assert (=> b!313515 m!323383))

(declare-fun m!323385 () Bool)

(assert (=> b!313515 m!323385))

(assert (=> b!313308 d!68511))

(declare-fun d!68513 () Bool)

(declare-fun lt!153635 () (_ BitVec 32))

(assert (=> d!68513 (and (bvsge lt!153635 #b00000000000000000000000000000000) (bvslt lt!153635 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68513 (= lt!153635 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68513 (validMask!0 mask!3709)))

(assert (=> d!68513 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!153635)))

(declare-fun bs!10989 () Bool)

(assert (= bs!10989 d!68513))

(declare-fun m!323391 () Bool)

(assert (=> bs!10989 m!323391))

(assert (=> bs!10989 m!323269))

(assert (=> b!313308 d!68513))

(declare-fun b!313546 () Bool)

(declare-fun e!195405 () SeekEntryResult!2735)

(declare-fun lt!153653 () SeekEntryResult!2735)

(assert (=> b!313546 (= e!195405 (Found!2735 (index!13118 lt!153653)))))

(declare-fun b!313547 () Bool)

(declare-fun e!195406 () SeekEntryResult!2735)

(assert (=> b!313547 (= e!195406 e!195405)))

(declare-fun lt!153652 () (_ BitVec 64))

(assert (=> b!313547 (= lt!153652 (select (arr!7584 a!3293) (index!13118 lt!153653)))))

(declare-fun c!49521 () Bool)

(assert (=> b!313547 (= c!49521 (= lt!153652 k!2441))))

(declare-fun d!68517 () Bool)

(declare-fun lt!153651 () SeekEntryResult!2735)

(assert (=> d!68517 (and (or (is-Undefined!2735 lt!153651) (not (is-Found!2735 lt!153651)) (and (bvsge (index!13117 lt!153651) #b00000000000000000000000000000000) (bvslt (index!13117 lt!153651) (size!7936 a!3293)))) (or (is-Undefined!2735 lt!153651) (is-Found!2735 lt!153651) (not (is-MissingZero!2735 lt!153651)) (and (bvsge (index!13116 lt!153651) #b00000000000000000000000000000000) (bvslt (index!13116 lt!153651) (size!7936 a!3293)))) (or (is-Undefined!2735 lt!153651) (is-Found!2735 lt!153651) (is-MissingZero!2735 lt!153651) (not (is-MissingVacant!2735 lt!153651)) (and (bvsge (index!13119 lt!153651) #b00000000000000000000000000000000) (bvslt (index!13119 lt!153651) (size!7936 a!3293)))) (or (is-Undefined!2735 lt!153651) (ite (is-Found!2735 lt!153651) (= (select (arr!7584 a!3293) (index!13117 lt!153651)) k!2441) (ite (is-MissingZero!2735 lt!153651) (= (select (arr!7584 a!3293) (index!13116 lt!153651)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2735 lt!153651) (= (select (arr!7584 a!3293) (index!13119 lt!153651)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68517 (= lt!153651 e!195406)))

(declare-fun c!49523 () Bool)

(assert (=> d!68517 (= c!49523 (and (is-Intermediate!2735 lt!153653) (undefined!3547 lt!153653)))))

(assert (=> d!68517 (= lt!153653 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68517 (validMask!0 mask!3709)))

(assert (=> d!68517 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153651)))

(declare-fun e!195404 () SeekEntryResult!2735)

(declare-fun b!313548 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16014 (_ BitVec 32)) SeekEntryResult!2735)

(assert (=> b!313548 (= e!195404 (seekKeyOrZeroReturnVacant!0 (x!31291 lt!153653) (index!13118 lt!153653) (index!13118 lt!153653) k!2441 a!3293 mask!3709))))

(declare-fun b!313549 () Bool)

(assert (=> b!313549 (= e!195406 Undefined!2735)))

(declare-fun b!313550 () Bool)

(assert (=> b!313550 (= e!195404 (MissingZero!2735 (index!13118 lt!153653)))))

(declare-fun b!313551 () Bool)

(declare-fun c!49522 () Bool)

(assert (=> b!313551 (= c!49522 (= lt!153652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313551 (= e!195405 e!195404)))

(assert (= (and d!68517 c!49523) b!313549))

(assert (= (and d!68517 (not c!49523)) b!313547))

(assert (= (and b!313547 c!49521) b!313546))

(assert (= (and b!313547 (not c!49521)) b!313551))

(assert (= (and b!313551 c!49522) b!313550))

(assert (= (and b!313551 (not c!49522)) b!313548))

(declare-fun m!323403 () Bool)

(assert (=> b!313547 m!323403))

(declare-fun m!323405 () Bool)

(assert (=> d!68517 m!323405))

(assert (=> d!68517 m!323261))

(declare-fun m!323407 () Bool)

(assert (=> d!68517 m!323407))

(assert (=> d!68517 m!323261))

(assert (=> d!68517 m!323263))

(assert (=> d!68517 m!323269))

(declare-fun m!323409 () Bool)

(assert (=> d!68517 m!323409))

(declare-fun m!323411 () Bool)

(assert (=> b!313548 m!323411))

(assert (=> b!313307 d!68517))

(declare-fun d!68519 () Bool)

(assert (=> d!68519 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313302 d!68519))

(push 1)

