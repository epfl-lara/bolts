; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32790 () Bool)

(assert start!32790)

(declare-fun b!327313 () Bool)

(declare-fun res!180362 () Bool)

(declare-fun e!201309 () Bool)

(assert (=> b!327313 (=> (not res!180362) (not e!201309))))

(declare-datatypes ((array!16778 0))(
  ( (array!16779 (arr!7939 (Array (_ BitVec 32) (_ BitVec 64))) (size!8291 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16778)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16778 (_ BitVec 32)) Bool)

(assert (=> b!327313 (= res!180362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327314 () Bool)

(declare-fun res!180365 () Bool)

(assert (=> b!327314 (=> (not res!180365) (not e!201309))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3081 0))(
  ( (MissingZero!3081 (index!14500 (_ BitVec 32))) (Found!3081 (index!14501 (_ BitVec 32))) (Intermediate!3081 (undefined!3893 Bool) (index!14502 (_ BitVec 32)) (x!32712 (_ BitVec 32))) (Undefined!3081) (MissingVacant!3081 (index!14503 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16778 (_ BitVec 32)) SeekEntryResult!3081)

(assert (=> b!327314 (= res!180365 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3081 i!1250)))))

(declare-fun b!327315 () Bool)

(declare-fun e!201308 () Bool)

(assert (=> b!327315 (= e!201309 e!201308)))

(declare-fun res!180361 () Bool)

(assert (=> b!327315 (=> (not res!180361) (not e!201308))))

(declare-fun lt!157544 () SeekEntryResult!3081)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16778 (_ BitVec 32)) SeekEntryResult!3081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327315 (= res!180361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157544))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!327315 (= lt!157544 (Intermediate!3081 false resIndex!58 resX!58))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!327316 () Bool)

(assert (=> b!327316 (= e!201308 (and (bvslt resX!58 #b01111111111111111111111111111110) (= (select (arr!7939 a!3305) index!1840) k!2497)))))

(declare-fun b!327317 () Bool)

(declare-fun res!180363 () Bool)

(assert (=> b!327317 (=> (not res!180363) (not e!201308))))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!327317 (= res!180363 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157544))))

(declare-fun b!327318 () Bool)

(declare-fun res!180366 () Bool)

(assert (=> b!327318 (=> (not res!180366) (not e!201309))))

(declare-fun arrayContainsKey!0 (array!16778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327318 (= res!180366 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327319 () Bool)

(declare-fun res!180368 () Bool)

(assert (=> b!327319 (=> (not res!180368) (not e!201308))))

(assert (=> b!327319 (= res!180368 (and (= (select (arr!7939 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8291 a!3305))))))

(declare-fun b!327320 () Bool)

(declare-fun res!180364 () Bool)

(assert (=> b!327320 (=> (not res!180364) (not e!201309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327320 (= res!180364 (validKeyInArray!0 k!2497))))

(declare-fun res!180369 () Bool)

(assert (=> start!32790 (=> (not res!180369) (not e!201309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32790 (= res!180369 (validMask!0 mask!3777))))

(assert (=> start!32790 e!201309))

(declare-fun array_inv!5893 (array!16778) Bool)

(assert (=> start!32790 (array_inv!5893 a!3305)))

(assert (=> start!32790 true))

(declare-fun b!327321 () Bool)

(declare-fun res!180367 () Bool)

(assert (=> b!327321 (=> (not res!180367) (not e!201309))))

(assert (=> b!327321 (= res!180367 (and (= (size!8291 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8291 a!3305))))))

(assert (= (and start!32790 res!180369) b!327321))

(assert (= (and b!327321 res!180367) b!327320))

(assert (= (and b!327320 res!180364) b!327318))

(assert (= (and b!327318 res!180366) b!327314))

(assert (= (and b!327314 res!180365) b!327313))

(assert (= (and b!327313 res!180362) b!327315))

(assert (= (and b!327315 res!180361) b!327319))

(assert (= (and b!327319 res!180368) b!327317))

(assert (= (and b!327317 res!180363) b!327316))

(declare-fun m!333685 () Bool)

(assert (=> start!32790 m!333685))

(declare-fun m!333687 () Bool)

(assert (=> start!32790 m!333687))

(declare-fun m!333689 () Bool)

(assert (=> b!327317 m!333689))

(declare-fun m!333691 () Bool)

(assert (=> b!327316 m!333691))

(declare-fun m!333693 () Bool)

(assert (=> b!327319 m!333693))

(declare-fun m!333695 () Bool)

(assert (=> b!327314 m!333695))

(declare-fun m!333697 () Bool)

(assert (=> b!327313 m!333697))

(declare-fun m!333699 () Bool)

(assert (=> b!327320 m!333699))

(declare-fun m!333701 () Bool)

(assert (=> b!327318 m!333701))

(declare-fun m!333703 () Bool)

(assert (=> b!327315 m!333703))

(assert (=> b!327315 m!333703))

(declare-fun m!333705 () Bool)

(assert (=> b!327315 m!333705))

(push 1)

(assert (not b!327313))

(assert (not b!327320))

(assert (not b!327314))

(assert (not start!32790))

(assert (not b!327317))

(assert (not b!327318))

(assert (not b!327315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!327433 () Bool)

(declare-fun e!201365 () SeekEntryResult!3081)

(assert (=> b!327433 (= e!201365 (Intermediate!3081 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327434 () Bool)

(declare-fun e!201366 () SeekEntryResult!3081)

(assert (=> b!327434 (= e!201366 e!201365)))

(declare-fun c!51127 () Bool)

(declare-fun lt!157571 () (_ BitVec 64))

(assert (=> b!327434 (= c!51127 (or (= lt!157571 k!2497) (= (bvadd lt!157571 lt!157571) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327435 () Bool)

(declare-fun e!201363 () Bool)

(declare-fun lt!157570 () SeekEntryResult!3081)

(assert (=> b!327435 (= e!201363 (bvsge (x!32712 lt!157570) #b01111111111111111111111111111110))))

(declare-fun b!327436 () Bool)

(assert (=> b!327436 (= e!201366 (Intermediate!3081 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327437 () Bool)

(declare-fun e!201367 () Bool)

(assert (=> b!327437 (= e!201363 e!201367)))

(declare-fun res!180445 () Bool)

(assert (=> b!327437 (= res!180445 (and (is-Intermediate!3081 lt!157570) (not (undefined!3893 lt!157570)) (bvslt (x!32712 lt!157570) #b01111111111111111111111111111110) (bvsge (x!32712 lt!157570) #b00000000000000000000000000000000) (bvsge (x!32712 lt!157570) #b00000000000000000000000000000000)))))

(assert (=> b!327437 (=> (not res!180445) (not e!201367))))

(declare-fun b!327438 () Bool)

(assert (=> b!327438 (and (bvsge (index!14502 lt!157570) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157570) (size!8291 a!3305)))))

(declare-fun res!180446 () Bool)

(assert (=> b!327438 (= res!180446 (= (select (arr!7939 a!3305) (index!14502 lt!157570)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201364 () Bool)

(assert (=> b!327438 (=> res!180446 e!201364)))

(declare-fun d!69727 () Bool)

(assert (=> d!69727 e!201363))

(declare-fun c!51128 () Bool)

(assert (=> d!69727 (= c!51128 (and (is-Intermediate!3081 lt!157570) (undefined!3893 lt!157570)))))

(assert (=> d!69727 (= lt!157570 e!201366)))

(declare-fun c!51126 () Bool)

(assert (=> d!69727 (= c!51126 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!69727 (= lt!157571 (select (arr!7939 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69727 (validMask!0 mask!3777)))

(assert (=> d!69727 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157570)))

(declare-fun b!327439 () Bool)

(assert (=> b!327439 (and (bvsge (index!14502 lt!157570) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157570) (size!8291 a!3305)))))

(declare-fun res!180447 () Bool)

(assert (=> b!327439 (= res!180447 (= (select (arr!7939 a!3305) (index!14502 lt!157570)) k!2497))))

(assert (=> b!327439 (=> res!180447 e!201364)))

(assert (=> b!327439 (= e!201367 e!201364)))

(declare-fun b!327440 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327440 (= e!201365 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327441 () Bool)

(assert (=> b!327441 (and (bvsge (index!14502 lt!157570) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157570) (size!8291 a!3305)))))

(assert (=> b!327441 (= e!201364 (= (select (arr!7939 a!3305) (index!14502 lt!157570)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69727 c!51126) b!327436))

(assert (= (and d!69727 (not c!51126)) b!327434))

(assert (= (and b!327434 c!51127) b!327433))

(assert (= (and b!327434 (not c!51127)) b!327440))

(assert (= (and d!69727 c!51128) b!327435))

(assert (= (and d!69727 (not c!51128)) b!327437))

(assert (= (and b!327437 res!180445) b!327439))

(assert (= (and b!327439 (not res!180447)) b!327438))

(assert (= (and b!327438 (not res!180446)) b!327441))

(declare-fun m!333769 () Bool)

(assert (=> b!327438 m!333769))

(assert (=> b!327441 m!333769))

(assert (=> d!69727 m!333703))

(declare-fun m!333771 () Bool)

(assert (=> d!69727 m!333771))

(assert (=> d!69727 m!333685))

(assert (=> b!327440 m!333703))

(declare-fun m!333773 () Bool)

(assert (=> b!327440 m!333773))

(assert (=> b!327440 m!333773))

(declare-fun m!333775 () Bool)

(assert (=> b!327440 m!333775))

(assert (=> b!327439 m!333769))

(assert (=> b!327315 d!69727))

(declare-fun d!69737 () Bool)

(declare-fun lt!157583 () (_ BitVec 32))

(declare-fun lt!157582 () (_ BitVec 32))

(assert (=> d!69737 (= lt!157583 (bvmul (bvxor lt!157582 (bvlshr lt!157582 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69737 (= lt!157582 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69737 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180448 (let ((h!5420 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32717 (bvmul (bvxor h!5420 (bvlshr h!5420 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32717 (bvlshr x!32717 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180448 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180448 #b00000000000000000000000000000000))))))

(assert (=> d!69737 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157583 (bvlshr lt!157583 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327315 d!69737))

(declare-fun d!69739 () Bool)

(declare-fun lt!157601 () SeekEntryResult!3081)

(assert (=> d!69739 (and (or (is-Undefined!3081 lt!157601) (not (is-Found!3081 lt!157601)) (and (bvsge (index!14501 lt!157601) #b00000000000000000000000000000000) (bvslt (index!14501 lt!157601) (size!8291 a!3305)))) (or (is-Undefined!3081 lt!157601) (is-Found!3081 lt!157601) (not (is-MissingZero!3081 lt!157601)) (and (bvsge (index!14500 lt!157601) #b00000000000000000000000000000000) (bvslt (index!14500 lt!157601) (size!8291 a!3305)))) (or (is-Undefined!3081 lt!157601) (is-Found!3081 lt!157601) (is-MissingZero!3081 lt!157601) (not (is-MissingVacant!3081 lt!157601)) (and (bvsge (index!14503 lt!157601) #b00000000000000000000000000000000) (bvslt (index!14503 lt!157601) (size!8291 a!3305)))) (or (is-Undefined!3081 lt!157601) (ite (is-Found!3081 lt!157601) (= (select (arr!7939 a!3305) (index!14501 lt!157601)) k!2497) (ite (is-MissingZero!3081 lt!157601) (= (select (arr!7939 a!3305) (index!14500 lt!157601)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3081 lt!157601) (= (select (arr!7939 a!3305) (index!14503 lt!157601)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!201400 () SeekEntryResult!3081)

(assert (=> d!69739 (= lt!157601 e!201400)))

(declare-fun c!51147 () Bool)

(declare-fun lt!157602 () SeekEntryResult!3081)

(assert (=> d!69739 (= c!51147 (and (is-Intermediate!3081 lt!157602) (undefined!3893 lt!157602)))))

(assert (=> d!69739 (= lt!157602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69739 (validMask!0 mask!3777)))

(assert (=> d!69739 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157601)))

(declare-fun b!327493 () Bool)

(declare-fun c!51148 () Bool)

(declare-fun lt!157603 () (_ BitVec 64))

(assert (=> b!327493 (= c!51148 (= lt!157603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201402 () SeekEntryResult!3081)

(declare-fun e!201401 () SeekEntryResult!3081)

(assert (=> b!327493 (= e!201402 e!201401)))

(declare-fun b!327494 () Bool)

(assert (=> b!327494 (= e!201401 (MissingZero!3081 (index!14502 lt!157602)))))

(declare-fun b!327495 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16778 (_ BitVec 32)) SeekEntryResult!3081)

(assert (=> b!327495 (= e!201401 (seekKeyOrZeroReturnVacant!0 (x!32712 lt!157602) (index!14502 lt!157602) (index!14502 lt!157602) k!2497 a!3305 mask!3777))))

(declare-fun b!327496 () Bool)

(assert (=> b!327496 (= e!201400 Undefined!3081)))

(declare-fun b!327497 () Bool)

(assert (=> b!327497 (= e!201402 (Found!3081 (index!14502 lt!157602)))))

(declare-fun b!327498 () Bool)

(assert (=> b!327498 (= e!201400 e!201402)))

(assert (=> b!327498 (= lt!157603 (select (arr!7939 a!3305) (index!14502 lt!157602)))))

(declare-fun c!51149 () Bool)

(assert (=> b!327498 (= c!51149 (= lt!157603 k!2497))))

(assert (= (and d!69739 c!51147) b!327496))

(assert (= (and d!69739 (not c!51147)) b!327498))

(assert (= (and b!327498 c!51149) b!327497))

(assert (= (and b!327498 (not c!51149)) b!327493))

(assert (= (and b!327493 c!51148) b!327494))

(assert (= (and b!327493 (not c!51148)) b!327495))

(assert (=> d!69739 m!333703))

(declare-fun m!333801 () Bool)

(assert (=> d!69739 m!333801))

(declare-fun m!333803 () Bool)

(assert (=> d!69739 m!333803))

(declare-fun m!333805 () Bool)

(assert (=> d!69739 m!333805))

(assert (=> d!69739 m!333685))

(assert (=> d!69739 m!333703))

(assert (=> d!69739 m!333705))

(declare-fun m!333807 () Bool)

(assert (=> b!327495 m!333807))

(declare-fun m!333809 () Bool)

(assert (=> b!327498 m!333809))

(assert (=> b!327314 d!69739))

(declare-fun d!69759 () Bool)

(assert (=> d!69759 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32790 d!69759))

(declare-fun d!69761 () Bool)

(assert (=> d!69761 (= (array_inv!5893 a!3305) (bvsge (size!8291 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32790 d!69761))

(declare-fun d!69763 () Bool)

(assert (=> d!69763 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327320 d!69763))

(declare-fun d!69765 () Bool)

(declare-fun res!180478 () Bool)

(declare-fun e!201431 () Bool)

(assert (=> d!69765 (=> res!180478 e!201431)))

(assert (=> d!69765 (= res!180478 (= (select (arr!7939 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69765 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201431)))

(declare-fun b!327548 () Bool)

(declare-fun e!201432 () Bool)

(assert (=> b!327548 (= e!201431 e!201432)))

(declare-fun res!180479 () Bool)

(assert (=> b!327548 (=> (not res!180479) (not e!201432))))

(assert (=> b!327548 (= res!180479 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8291 a!3305)))))

(declare-fun b!327549 () Bool)

(assert (=> b!327549 (= e!201432 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69765 (not res!180478)) b!327548))

(assert (= (and b!327548 res!180479) b!327549))

(declare-fun m!333821 () Bool)

(assert (=> d!69765 m!333821))

(declare-fun m!333823 () Bool)

(assert (=> b!327549 m!333823))

(assert (=> b!327318 d!69765))

(declare-fun b!327567 () Bool)

(declare-fun e!201445 () Bool)

(declare-fun e!201444 () Bool)

(assert (=> b!327567 (= e!201445 e!201444)))

(declare-fun lt!157633 () (_ BitVec 64))

(assert (=> b!327567 (= lt!157633 (select (arr!7939 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10173 0))(
  ( (Unit!10174) )
))
(declare-fun lt!157635 () Unit!10173)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16778 (_ BitVec 64) (_ BitVec 32)) Unit!10173)

(assert (=> b!327567 (= lt!157635 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157633 #b00000000000000000000000000000000))))

(assert (=> b!327567 (arrayContainsKey!0 a!3305 lt!157633 #b00000000000000000000000000000000)))

(declare-fun lt!157634 () Unit!10173)

(assert (=> b!327567 (= lt!157634 lt!157635)))

(declare-fun res!180488 () Bool)

(assert (=> b!327567 (= res!180488 (= (seekEntryOrOpen!0 (select (arr!7939 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3081 #b00000000000000000000000000000000)))))

(assert (=> b!327567 (=> (not res!180488) (not e!201444))))

(declare-fun d!69769 () Bool)

(declare-fun res!180489 () Bool)

(declare-fun e!201446 () Bool)

(assert (=> d!69769 (=> res!180489 e!201446)))

(assert (=> d!69769 (= res!180489 (bvsge #b00000000000000000000000000000000 (size!8291 a!3305)))))

(assert (=> d!69769 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201446)))

(declare-fun bm!26096 () Bool)

(declare-fun call!26099 () Bool)

(assert (=> bm!26096 (= call!26099 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327568 () Bool)

(assert (=> b!327568 (= e!201444 call!26099)))

(declare-fun b!327569 () Bool)

(assert (=> b!327569 (= e!201446 e!201445)))

(declare-fun c!51173 () Bool)

(assert (=> b!327569 (= c!51173 (validKeyInArray!0 (select (arr!7939 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!327570 () Bool)

(assert (=> b!327570 (= e!201445 call!26099)))

(assert (= (and d!69769 (not res!180489)) b!327569))

(assert (= (and b!327569 c!51173) b!327567))

(assert (= (and b!327569 (not c!51173)) b!327570))

(assert (= (and b!327567 res!180488) b!327568))

(assert (= (or b!327568 b!327570) bm!26096))

(assert (=> b!327567 m!333821))

(declare-fun m!333839 () Bool)

(assert (=> b!327567 m!333839))

(declare-fun m!333841 () Bool)

(assert (=> b!327567 m!333841))

(assert (=> b!327567 m!333821))

(declare-fun m!333843 () Bool)

(assert (=> b!327567 m!333843))

(declare-fun m!333845 () Bool)

(assert (=> bm!26096 m!333845))

(assert (=> b!327569 m!333821))

(assert (=> b!327569 m!333821))

(declare-fun m!333847 () Bool)

(assert (=> b!327569 m!333847))

(assert (=> b!327313 d!69769))

(declare-fun b!327571 () Bool)

(declare-fun e!201449 () SeekEntryResult!3081)

(assert (=> b!327571 (= e!201449 (Intermediate!3081 false index!1840 x!1490))))

(declare-fun b!327572 () Bool)

(declare-fun e!201450 () SeekEntryResult!3081)

(assert (=> b!327572 (= e!201450 e!201449)))

(declare-fun c!51175 () Bool)

(declare-fun lt!157637 () (_ BitVec 64))

(assert (=> b!327572 (= c!51175 (or (= lt!157637 k!2497) (= (bvadd lt!157637 lt!157637) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327573 () Bool)

(declare-fun e!201447 () Bool)

(declare-fun lt!157636 () SeekEntryResult!3081)

(assert (=> b!327573 (= e!201447 (bvsge (x!32712 lt!157636) #b01111111111111111111111111111110))))

(declare-fun b!327574 () Bool)

(assert (=> b!327574 (= e!201450 (Intermediate!3081 true index!1840 x!1490))))

(declare-fun b!327575 () Bool)

(declare-fun e!201451 () Bool)

(assert (=> b!327575 (= e!201447 e!201451)))

(declare-fun res!180490 () Bool)

(assert (=> b!327575 (= res!180490 (and (is-Intermediate!3081 lt!157636) (not (undefined!3893 lt!157636)) (bvslt (x!32712 lt!157636) #b01111111111111111111111111111110) (bvsge (x!32712 lt!157636) #b00000000000000000000000000000000) (bvsge (x!32712 lt!157636) x!1490)))))

(assert (=> b!327575 (=> (not res!180490) (not e!201451))))

(declare-fun b!327576 () Bool)

(assert (=> b!327576 (and (bvsge (index!14502 lt!157636) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157636) (size!8291 a!3305)))))

(declare-fun res!180491 () Bool)

(assert (=> b!327576 (= res!180491 (= (select (arr!7939 a!3305) (index!14502 lt!157636)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201448 () Bool)

(assert (=> b!327576 (=> res!180491 e!201448)))

(declare-fun d!69777 () Bool)

(assert (=> d!69777 e!201447))

(declare-fun c!51176 () Bool)

(assert (=> d!69777 (= c!51176 (and (is-Intermediate!3081 lt!157636) (undefined!3893 lt!157636)))))

(assert (=> d!69777 (= lt!157636 e!201450)))

(declare-fun c!51174 () Bool)

(assert (=> d!69777 (= c!51174 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!69777 (= lt!157637 (select (arr!7939 a!3305) index!1840))))

(assert (=> d!69777 (validMask!0 mask!3777)))

(assert (=> d!69777 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157636)))

(declare-fun b!327577 () Bool)

(assert (=> b!327577 (and (bvsge (index!14502 lt!157636) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157636) (size!8291 a!3305)))))

(declare-fun res!180492 () Bool)

(assert (=> b!327577 (= res!180492 (= (select (arr!7939 a!3305) (index!14502 lt!157636)) k!2497))))

(assert (=> b!327577 (=> res!180492 e!201448)))

(assert (=> b!327577 (= e!201451 e!201448)))

(declare-fun b!327578 () Bool)

(assert (=> b!327578 (= e!201449 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327579 () Bool)

(assert (=> b!327579 (and (bvsge (index!14502 lt!157636) #b00000000000000000000000000000000) (bvslt (index!14502 lt!157636) (size!8291 a!3305)))))

(assert (=> b!327579 (= e!201448 (= (select (arr!7939 a!3305) (index!14502 lt!157636)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!69777 c!51174) b!327574))

(assert (= (and d!69777 (not c!51174)) b!327572))

(assert (= (and b!327572 c!51175) b!327571))

(assert (= (and b!327572 (not c!51175)) b!327578))

(assert (= (and d!69777 c!51176) b!327573))

(assert (= (and d!69777 (not c!51176)) b!327575))

(assert (= (and b!327575 res!180490) b!327577))

(assert (= (and b!327577 (not res!180492)) b!327576))

(assert (= (and b!327576 (not res!180491)) b!327579))

(declare-fun m!333849 () Bool)

(assert (=> b!327576 m!333849))

(assert (=> b!327579 m!333849))

(assert (=> d!69777 m!333691))

(assert (=> d!69777 m!333685))

(declare-fun m!333851 () Bool)

(assert (=> b!327578 m!333851))

(assert (=> b!327578 m!333851))

(declare-fun m!333853 () Bool)

(assert (=> b!327578 m!333853))

(assert (=> b!327577 m!333849))

(assert (=> b!327317 d!69777))

(push 1)

