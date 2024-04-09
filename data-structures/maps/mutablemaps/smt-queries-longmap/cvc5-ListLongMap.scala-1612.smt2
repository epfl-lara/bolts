; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30348 () Bool)

(assert start!30348)

(declare-fun b!303744 () Bool)

(declare-fun res!161388 () Bool)

(declare-fun e!191007 () Bool)

(assert (=> b!303744 (=> (not res!161388) (not e!191007))))

(declare-datatypes ((array!15452 0))(
  ( (array!15453 (arr!7312 (Array (_ BitVec 32) (_ BitVec 64))) (size!7664 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15452)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303744 (= res!161388 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7312 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7312 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7312 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303745 () Bool)

(declare-fun res!161395 () Bool)

(assert (=> b!303745 (=> (not res!161395) (not e!191007))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303745 (= res!161395 (and (= (select (arr!7312 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7664 a!3293))))))

(declare-fun b!303746 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!150251 () (_ BitVec 32))

(assert (=> b!303746 (= e!191007 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!150251 #b00000000000000000000000000000000) (bvsge lt!150251 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303746 (= lt!150251 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303747 () Bool)

(declare-fun res!161391 () Bool)

(declare-fun e!191008 () Bool)

(assert (=> b!303747 (=> (not res!161391) (not e!191008))))

(declare-fun arrayContainsKey!0 (array!15452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303747 (= res!161391 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303748 () Bool)

(declare-fun res!161394 () Bool)

(assert (=> b!303748 (=> (not res!161394) (not e!191008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15452 (_ BitVec 32)) Bool)

(assert (=> b!303748 (= res!161394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303749 () Bool)

(declare-fun res!161389 () Bool)

(assert (=> b!303749 (=> (not res!161389) (not e!191008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303749 (= res!161389 (validKeyInArray!0 k!2441))))

(declare-fun b!303750 () Bool)

(declare-fun res!161392 () Bool)

(assert (=> b!303750 (=> (not res!161392) (not e!191007))))

(declare-datatypes ((SeekEntryResult!2463 0))(
  ( (MissingZero!2463 (index!12028 (_ BitVec 32))) (Found!2463 (index!12029 (_ BitVec 32))) (Intermediate!2463 (undefined!3275 Bool) (index!12030 (_ BitVec 32)) (x!30251 (_ BitVec 32))) (Undefined!2463) (MissingVacant!2463 (index!12031 (_ BitVec 32))) )
))
(declare-fun lt!150250 () SeekEntryResult!2463)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15452 (_ BitVec 32)) SeekEntryResult!2463)

(assert (=> b!303750 (= res!161392 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150250))))

(declare-fun b!303751 () Bool)

(declare-fun res!161390 () Bool)

(assert (=> b!303751 (=> (not res!161390) (not e!191008))))

(assert (=> b!303751 (= res!161390 (and (= (size!7664 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7664 a!3293))))))

(declare-fun b!303753 () Bool)

(declare-fun res!161396 () Bool)

(assert (=> b!303753 (=> (not res!161396) (not e!191008))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15452 (_ BitVec 32)) SeekEntryResult!2463)

(assert (=> b!303753 (= res!161396 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2463 i!1240)))))

(declare-fun b!303752 () Bool)

(assert (=> b!303752 (= e!191008 e!191007)))

(declare-fun res!161397 () Bool)

(assert (=> b!303752 (=> (not res!161397) (not e!191007))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303752 (= res!161397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150250))))

(assert (=> b!303752 (= lt!150250 (Intermediate!2463 false resIndex!52 resX!52))))

(declare-fun res!161393 () Bool)

(assert (=> start!30348 (=> (not res!161393) (not e!191008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30348 (= res!161393 (validMask!0 mask!3709))))

(assert (=> start!30348 e!191008))

(declare-fun array_inv!5266 (array!15452) Bool)

(assert (=> start!30348 (array_inv!5266 a!3293)))

(assert (=> start!30348 true))

(assert (= (and start!30348 res!161393) b!303751))

(assert (= (and b!303751 res!161390) b!303749))

(assert (= (and b!303749 res!161389) b!303747))

(assert (= (and b!303747 res!161391) b!303753))

(assert (= (and b!303753 res!161396) b!303748))

(assert (= (and b!303748 res!161394) b!303752))

(assert (= (and b!303752 res!161397) b!303745))

(assert (= (and b!303745 res!161395) b!303750))

(assert (= (and b!303750 res!161392) b!303744))

(assert (= (and b!303744 res!161388) b!303746))

(declare-fun m!315037 () Bool)

(assert (=> b!303750 m!315037))

(declare-fun m!315039 () Bool)

(assert (=> b!303744 m!315039))

(declare-fun m!315041 () Bool)

(assert (=> b!303749 m!315041))

(declare-fun m!315043 () Bool)

(assert (=> b!303752 m!315043))

(assert (=> b!303752 m!315043))

(declare-fun m!315045 () Bool)

(assert (=> b!303752 m!315045))

(declare-fun m!315047 () Bool)

(assert (=> b!303745 m!315047))

(declare-fun m!315049 () Bool)

(assert (=> start!30348 m!315049))

(declare-fun m!315051 () Bool)

(assert (=> start!30348 m!315051))

(declare-fun m!315053 () Bool)

(assert (=> b!303753 m!315053))

(declare-fun m!315055 () Bool)

(assert (=> b!303747 m!315055))

(declare-fun m!315057 () Bool)

(assert (=> b!303748 m!315057))

(declare-fun m!315059 () Bool)

(assert (=> b!303746 m!315059))

(push 1)

(assert (not b!303748))

(assert (not b!303746))

(assert (not start!30348))

(assert (not b!303753))

(assert (not b!303750))

(assert (not b!303747))

(assert (not b!303749))

(assert (not b!303752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67917 () Bool)

(declare-fun lt!150270 () (_ BitVec 32))

(assert (=> d!67917 (and (bvsge lt!150270 #b00000000000000000000000000000000) (bvslt lt!150270 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67917 (= lt!150270 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!67917 (validMask!0 mask!3709)))

(assert (=> d!67917 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!150270)))

(declare-fun bs!10705 () Bool)

(assert (= bs!10705 d!67917))

(declare-fun m!315109 () Bool)

(assert (=> bs!10705 m!315109))

(assert (=> bs!10705 m!315049))

(assert (=> b!303746 d!67917))

(declare-fun b!303859 () Bool)

(declare-fun e!191056 () SeekEntryResult!2463)

(assert (=> b!303859 (= e!191056 (Intermediate!2463 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun e!191053 () SeekEntryResult!2463)

(declare-fun b!303860 () Bool)

(assert (=> b!303860 (= e!191053 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!67919 () Bool)

(declare-fun e!191054 () Bool)

(assert (=> d!67919 e!191054))

(declare-fun c!48794 () Bool)

(declare-fun lt!150284 () SeekEntryResult!2463)

(assert (=> d!67919 (= c!48794 (and (is-Intermediate!2463 lt!150284) (undefined!3275 lt!150284)))))

(assert (=> d!67919 (= lt!150284 e!191056)))

(declare-fun c!48792 () Bool)

(assert (=> d!67919 (= c!48792 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!150283 () (_ BitVec 64))

(assert (=> d!67919 (= lt!150283 (select (arr!7312 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!67919 (validMask!0 mask!3709)))

(assert (=> d!67919 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150284)))

(declare-fun b!303861 () Bool)

(declare-fun e!191055 () Bool)

(assert (=> b!303861 (= e!191054 e!191055)))

(declare-fun res!161473 () Bool)

(assert (=> b!303861 (= res!161473 (and (is-Intermediate!2463 lt!150284) (not (undefined!3275 lt!150284)) (bvslt (x!30251 lt!150284) #b01111111111111111111111111111110) (bvsge (x!30251 lt!150284) #b00000000000000000000000000000000) (bvsge (x!30251 lt!150284) #b00000000000000000000000000000000)))))

(assert (=> b!303861 (=> (not res!161473) (not e!191055))))

(declare-fun b!303862 () Bool)

(assert (=> b!303862 (and (bvsge (index!12030 lt!150284) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150284) (size!7664 a!3293)))))

(declare-fun e!191052 () Bool)

(assert (=> b!303862 (= e!191052 (= (select (arr!7312 a!3293) (index!12030 lt!150284)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303863 () Bool)

(assert (=> b!303863 (and (bvsge (index!12030 lt!150284) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150284) (size!7664 a!3293)))))

(declare-fun res!161475 () Bool)

(assert (=> b!303863 (= res!161475 (= (select (arr!7312 a!3293) (index!12030 lt!150284)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303863 (=> res!161475 e!191052)))

(declare-fun b!303864 () Bool)

(assert (=> b!303864 (= e!191053 (Intermediate!2463 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!303865 () Bool)

(assert (=> b!303865 (and (bvsge (index!12030 lt!150284) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150284) (size!7664 a!3293)))))

(declare-fun res!161474 () Bool)

(assert (=> b!303865 (= res!161474 (= (select (arr!7312 a!3293) (index!12030 lt!150284)) k!2441))))

(assert (=> b!303865 (=> res!161474 e!191052)))

(assert (=> b!303865 (= e!191055 e!191052)))

(declare-fun b!303866 () Bool)

(assert (=> b!303866 (= e!191054 (bvsge (x!30251 lt!150284) #b01111111111111111111111111111110))))

(declare-fun b!303867 () Bool)

(assert (=> b!303867 (= e!191056 e!191053)))

(declare-fun c!48793 () Bool)

(assert (=> b!303867 (= c!48793 (or (= lt!150283 k!2441) (= (bvadd lt!150283 lt!150283) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67919 c!48792) b!303859))

(assert (= (and d!67919 (not c!48792)) b!303867))

(assert (= (and b!303867 c!48793) b!303864))

(assert (= (and b!303867 (not c!48793)) b!303860))

(assert (= (and d!67919 c!48794) b!303866))

(assert (= (and d!67919 (not c!48794)) b!303861))

(assert (= (and b!303861 res!161473) b!303865))

(assert (= (and b!303865 (not res!161474)) b!303863))

(assert (= (and b!303863 (not res!161475)) b!303862))

(declare-fun m!315119 () Bool)

(assert (=> b!303865 m!315119))

(assert (=> b!303863 m!315119))

(assert (=> b!303860 m!315043))

(declare-fun m!315121 () Bool)

(assert (=> b!303860 m!315121))

(assert (=> b!303860 m!315121))

(declare-fun m!315123 () Bool)

(assert (=> b!303860 m!315123))

(assert (=> d!67919 m!315043))

(declare-fun m!315125 () Bool)

(assert (=> d!67919 m!315125))

(assert (=> d!67919 m!315049))

(assert (=> b!303862 m!315119))

(assert (=> b!303752 d!67919))

(declare-fun d!67929 () Bool)

(declare-fun lt!150300 () (_ BitVec 32))

(declare-fun lt!150299 () (_ BitVec 32))

(assert (=> d!67929 (= lt!150300 (bvmul (bvxor lt!150299 (bvlshr lt!150299 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67929 (= lt!150299 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67929 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!161476 (let ((h!5354 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30259 (bvmul (bvxor h!5354 (bvlshr h!5354 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30259 (bvlshr x!30259 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!161476 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!161476 #b00000000000000000000000000000000))))))

(assert (=> d!67929 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!150300 (bvlshr lt!150300 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!303752 d!67929))

(declare-fun d!67931 () Bool)

(declare-fun res!161487 () Bool)

(declare-fun e!191080 () Bool)

(assert (=> d!67931 (=> res!161487 e!191080)))

(assert (=> d!67931 (= res!161487 (= (select (arr!7312 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67931 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!191080)))

(declare-fun b!303908 () Bool)

(declare-fun e!191081 () Bool)

(assert (=> b!303908 (= e!191080 e!191081)))

(declare-fun res!161488 () Bool)

(assert (=> b!303908 (=> (not res!161488) (not e!191081))))

(assert (=> b!303908 (= res!161488 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7664 a!3293)))))

(declare-fun b!303909 () Bool)

(assert (=> b!303909 (= e!191081 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67931 (not res!161487)) b!303908))

(assert (= (and b!303908 res!161488) b!303909))

(declare-fun m!315137 () Bool)

(assert (=> d!67931 m!315137))

(declare-fun m!315139 () Bool)

(assert (=> b!303909 m!315139))

(assert (=> b!303747 d!67931))

(declare-fun b!303910 () Bool)

(declare-fun e!191086 () SeekEntryResult!2463)

(assert (=> b!303910 (= e!191086 (Intermediate!2463 true index!1781 x!1427))))

(declare-fun b!303911 () Bool)

(declare-fun e!191083 () SeekEntryResult!2463)

(assert (=> b!303911 (= e!191083 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun d!67935 () Bool)

(declare-fun e!191084 () Bool)

(assert (=> d!67935 e!191084))

(declare-fun c!48812 () Bool)

(declare-fun lt!150305 () SeekEntryResult!2463)

(assert (=> d!67935 (= c!48812 (and (is-Intermediate!2463 lt!150305) (undefined!3275 lt!150305)))))

(assert (=> d!67935 (= lt!150305 e!191086)))

(declare-fun c!48810 () Bool)

(assert (=> d!67935 (= c!48810 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!150304 () (_ BitVec 64))

(assert (=> d!67935 (= lt!150304 (select (arr!7312 a!3293) index!1781))))

(assert (=> d!67935 (validMask!0 mask!3709)))

(assert (=> d!67935 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150305)))

(declare-fun b!303912 () Bool)

(declare-fun e!191085 () Bool)

(assert (=> b!303912 (= e!191084 e!191085)))

(declare-fun res!161489 () Bool)

(assert (=> b!303912 (= res!161489 (and (is-Intermediate!2463 lt!150305) (not (undefined!3275 lt!150305)) (bvslt (x!30251 lt!150305) #b01111111111111111111111111111110) (bvsge (x!30251 lt!150305) #b00000000000000000000000000000000) (bvsge (x!30251 lt!150305) x!1427)))))

(assert (=> b!303912 (=> (not res!161489) (not e!191085))))

(declare-fun b!303913 () Bool)

(assert (=> b!303913 (and (bvsge (index!12030 lt!150305) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150305) (size!7664 a!3293)))))

(declare-fun e!191082 () Bool)

(assert (=> b!303913 (= e!191082 (= (select (arr!7312 a!3293) (index!12030 lt!150305)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!303914 () Bool)

(assert (=> b!303914 (and (bvsge (index!12030 lt!150305) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150305) (size!7664 a!3293)))))

(declare-fun res!161491 () Bool)

(assert (=> b!303914 (= res!161491 (= (select (arr!7312 a!3293) (index!12030 lt!150305)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303914 (=> res!161491 e!191082)))

(declare-fun b!303915 () Bool)

(assert (=> b!303915 (= e!191083 (Intermediate!2463 false index!1781 x!1427))))

(declare-fun b!303916 () Bool)

(assert (=> b!303916 (and (bvsge (index!12030 lt!150305) #b00000000000000000000000000000000) (bvslt (index!12030 lt!150305) (size!7664 a!3293)))))

(declare-fun res!161490 () Bool)

(assert (=> b!303916 (= res!161490 (= (select (arr!7312 a!3293) (index!12030 lt!150305)) k!2441))))

(assert (=> b!303916 (=> res!161490 e!191082)))

(assert (=> b!303916 (= e!191085 e!191082)))

(declare-fun b!303917 () Bool)

(assert (=> b!303917 (= e!191084 (bvsge (x!30251 lt!150305) #b01111111111111111111111111111110))))

(declare-fun b!303918 () Bool)

(assert (=> b!303918 (= e!191086 e!191083)))

(declare-fun c!48811 () Bool)

(assert (=> b!303918 (= c!48811 (or (= lt!150304 k!2441) (= (bvadd lt!150304 lt!150304) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67935 c!48810) b!303910))

(assert (= (and d!67935 (not c!48810)) b!303918))

(assert (= (and b!303918 c!48811) b!303915))

(assert (= (and b!303918 (not c!48811)) b!303911))

(assert (= (and d!67935 c!48812) b!303917))

(assert (= (and d!67935 (not c!48812)) b!303912))

(assert (= (and b!303912 res!161489) b!303916))

(assert (= (and b!303916 (not res!161490)) b!303914))

(assert (= (and b!303914 (not res!161491)) b!303913))

(declare-fun m!315141 () Bool)

(assert (=> b!303916 m!315141))

(assert (=> b!303914 m!315141))

(assert (=> b!303911 m!315059))

(assert (=> b!303911 m!315059))

(declare-fun m!315143 () Bool)

(assert (=> b!303911 m!315143))

(assert (=> d!67935 m!315039))

(assert (=> d!67935 m!315049))

(assert (=> b!303913 m!315141))

(assert (=> b!303750 d!67935))

(declare-fun d!67937 () Bool)

(assert (=> d!67937 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!303749 d!67937))

(declare-fun d!67939 () Bool)

(assert (=> d!67939 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30348 d!67939))

(declare-fun d!67953 () Bool)

(assert (=> d!67953 (= (array_inv!5266 a!3293) (bvsge (size!7664 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30348 d!67953))

(declare-fun b!303994 () Bool)

(declare-fun e!191135 () SeekEntryResult!2463)

(declare-fun lt!150345 () SeekEntryResult!2463)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15452 (_ BitVec 32)) SeekEntryResult!2463)

(assert (=> b!303994 (= e!191135 (seekKeyOrZeroReturnVacant!0 (x!30251 lt!150345) (index!12030 lt!150345) (index!12030 lt!150345) k!2441 a!3293 mask!3709))))

(declare-fun d!67957 () Bool)

(declare-fun lt!150347 () SeekEntryResult!2463)

(assert (=> d!67957 (and (or (is-Undefined!2463 lt!150347) (not (is-Found!2463 lt!150347)) (and (bvsge (index!12029 lt!150347) #b00000000000000000000000000000000) (bvslt (index!12029 lt!150347) (size!7664 a!3293)))) (or (is-Undefined!2463 lt!150347) (is-Found!2463 lt!150347) (not (is-MissingZero!2463 lt!150347)) (and (bvsge (index!12028 lt!150347) #b00000000000000000000000000000000) (bvslt (index!12028 lt!150347) (size!7664 a!3293)))) (or (is-Undefined!2463 lt!150347) (is-Found!2463 lt!150347) (is-MissingZero!2463 lt!150347) (not (is-MissingVacant!2463 lt!150347)) (and (bvsge (index!12031 lt!150347) #b00000000000000000000000000000000) (bvslt (index!12031 lt!150347) (size!7664 a!3293)))) (or (is-Undefined!2463 lt!150347) (ite (is-Found!2463 lt!150347) (= (select (arr!7312 a!3293) (index!12029 lt!150347)) k!2441) (ite (is-MissingZero!2463 lt!150347) (= (select (arr!7312 a!3293) (index!12028 lt!150347)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2463 lt!150347) (= (select (arr!7312 a!3293) (index!12031 lt!150347)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!191136 () SeekEntryResult!2463)

(assert (=> d!67957 (= lt!150347 e!191136)))

(declare-fun c!48839 () Bool)

(assert (=> d!67957 (= c!48839 (and (is-Intermediate!2463 lt!150345) (undefined!3275 lt!150345)))))

(assert (=> d!67957 (= lt!150345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67957 (validMask!0 mask!3709)))

(assert (=> d!67957 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!150347)))

(declare-fun b!303995 () Bool)

(assert (=> b!303995 (= e!191136 Undefined!2463)))

(declare-fun b!303996 () Bool)

(declare-fun e!191137 () SeekEntryResult!2463)

(assert (=> b!303996 (= e!191136 e!191137)))

(declare-fun lt!150346 () (_ BitVec 64))

(assert (=> b!303996 (= lt!150346 (select (arr!7312 a!3293) (index!12030 lt!150345)))))

(declare-fun c!48837 () Bool)

(assert (=> b!303996 (= c!48837 (= lt!150346 k!2441))))

(declare-fun b!303997 () Bool)

(assert (=> b!303997 (= e!191137 (Found!2463 (index!12030 lt!150345)))))

(declare-fun b!303998 () Bool)

(declare-fun c!48838 () Bool)

(assert (=> b!303998 (= c!48838 (= lt!150346 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!303998 (= e!191137 e!191135)))

(declare-fun b!303999 () Bool)

(assert (=> b!303999 (= e!191135 (MissingZero!2463 (index!12030 lt!150345)))))

(assert (= (and d!67957 c!48839) b!303995))

(assert (= (and d!67957 (not c!48839)) b!303996))

(assert (= (and b!303996 c!48837) b!303997))

(assert (= (and b!303996 (not c!48837)) b!303998))

(assert (= (and b!303998 c!48838) b!303999))

(assert (= (and b!303998 (not c!48838)) b!303994))

(declare-fun m!315183 () Bool)

(assert (=> b!303994 m!315183))

(declare-fun m!315187 () Bool)

(assert (=> d!67957 m!315187))

(assert (=> d!67957 m!315043))

(assert (=> d!67957 m!315045))

(assert (=> d!67957 m!315049))

(assert (=> d!67957 m!315043))

(declare-fun m!315195 () Bool)

(assert (=> d!67957 m!315195))

(declare-fun m!315199 () Bool)

(assert (=> d!67957 m!315199))

(declare-fun m!315201 () Bool)

(assert (=> b!303996 m!315201))

(assert (=> b!303753 d!67957))

(declare-fun b!304026 () Bool)

(declare-fun e!191156 () Bool)

(declare-fun e!191158 () Bool)

(assert (=> b!304026 (= e!191156 e!191158)))

(declare-fun c!48848 () Bool)

(assert (=> b!304026 (= c!48848 (validKeyInArray!0 (select (arr!7312 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!304027 () Bool)

(declare-fun call!25895 () Bool)

(assert (=> b!304027 (= e!191158 call!25895)))

(declare-fun b!304029 () Bool)

(declare-fun e!191157 () Bool)

(assert (=> b!304029 (= e!191157 call!25895)))

(declare-fun bm!25892 () Bool)

(assert (=> bm!25892 (= call!25895 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!304028 () Bool)

(assert (=> b!304028 (= e!191158 e!191157)))

(declare-fun lt!150367 () (_ BitVec 64))

(assert (=> b!304028 (= lt!150367 (select (arr!7312 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9380 0))(
  ( (Unit!9381) )
))
(declare-fun lt!150368 () Unit!9380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15452 (_ BitVec 64) (_ BitVec 32)) Unit!9380)

(assert (=> b!304028 (= lt!150368 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!150367 #b00000000000000000000000000000000))))

(assert (=> b!304028 (arrayContainsKey!0 a!3293 lt!150367 #b00000000000000000000000000000000)))

(declare-fun lt!150366 () Unit!9380)

(assert (=> b!304028 (= lt!150366 lt!150368)))

(declare-fun res!161532 () Bool)

(assert (=> b!304028 (= res!161532 (= (seekEntryOrOpen!0 (select (arr!7312 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2463 #b00000000000000000000000000000000)))))

(assert (=> b!304028 (=> (not res!161532) (not e!191157))))

(declare-fun d!67971 () Bool)

(declare-fun res!161531 () Bool)

(assert (=> d!67971 (=> res!161531 e!191156)))

(assert (=> d!67971 (= res!161531 (bvsge #b00000000000000000000000000000000 (size!7664 a!3293)))))

(assert (=> d!67971 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!191156)))

(assert (= (and d!67971 (not res!161531)) b!304026))

(assert (= (and b!304026 c!48848) b!304028))

(assert (= (and b!304026 (not c!48848)) b!304027))

(assert (= (and b!304028 res!161532) b!304029))

(assert (= (or b!304029 b!304027) bm!25892))

(assert (=> b!304026 m!315137))

(assert (=> b!304026 m!315137))

(declare-fun m!315213 () Bool)

(assert (=> b!304026 m!315213))

(declare-fun m!315215 () Bool)

(assert (=> bm!25892 m!315215))

(assert (=> b!304028 m!315137))

(declare-fun m!315217 () Bool)

(assert (=> b!304028 m!315217))

(declare-fun m!315219 () Bool)

(assert (=> b!304028 m!315219))

(assert (=> b!304028 m!315137))

(declare-fun m!315221 () Bool)

(assert (=> b!304028 m!315221))

(assert (=> b!303748 d!67971))

(push 1)

