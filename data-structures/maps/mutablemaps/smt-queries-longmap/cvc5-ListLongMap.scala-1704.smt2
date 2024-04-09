; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31314 () Bool)

(assert start!31314)

(declare-fun b!313822 () Bool)

(declare-fun res!169876 () Bool)

(declare-fun e!195550 () Bool)

(assert (=> b!313822 (=> (not res!169876) (not e!195550))))

(declare-datatypes ((array!16028 0))(
  ( (array!16029 (arr!7588 (Array (_ BitVec 32) (_ BitVec 64))) (size!7940 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16028)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!313822 (= res!169876 (and (= (select (arr!7588 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7940 a!3293))))))

(declare-fun res!169875 () Bool)

(declare-fun e!195548 () Bool)

(assert (=> start!31314 (=> (not res!169875) (not e!195548))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31314 (= res!169875 (validMask!0 mask!3709))))

(assert (=> start!31314 e!195548))

(declare-fun array_inv!5542 (array!16028) Bool)

(assert (=> start!31314 (array_inv!5542 a!3293)))

(assert (=> start!31314 true))

(declare-fun b!313823 () Bool)

(declare-fun res!169878 () Bool)

(assert (=> b!313823 (=> (not res!169878) (not e!195548))))

(assert (=> b!313823 (= res!169878 (and (= (size!7940 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7940 a!3293))))))

(declare-fun b!313824 () Bool)

(declare-fun res!169872 () Bool)

(assert (=> b!313824 (=> (not res!169872) (not e!195548))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313824 (= res!169872 (validKeyInArray!0 k!2441))))

(declare-fun b!313825 () Bool)

(declare-fun res!169874 () Bool)

(assert (=> b!313825 (=> (not res!169874) (not e!195548))))

(declare-fun arrayContainsKey!0 (array!16028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313825 (= res!169874 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313826 () Bool)

(assert (=> b!313826 (= e!195548 e!195550)))

(declare-fun res!169871 () Bool)

(assert (=> b!313826 (=> (not res!169871) (not e!195550))))

(declare-datatypes ((SeekEntryResult!2739 0))(
  ( (MissingZero!2739 (index!13132 (_ BitVec 32))) (Found!2739 (index!13133 (_ BitVec 32))) (Intermediate!2739 (undefined!3551 Bool) (index!13134 (_ BitVec 32)) (x!31326 (_ BitVec 32))) (Undefined!2739) (MissingVacant!2739 (index!13135 (_ BitVec 32))) )
))
(declare-fun lt!153746 () SeekEntryResult!2739)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16028 (_ BitVec 32)) SeekEntryResult!2739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313826 (= res!169871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153746))))

(assert (=> b!313826 (= lt!153746 (Intermediate!2739 false resIndex!52 resX!52))))

(declare-fun b!313827 () Bool)

(declare-fun res!169873 () Bool)

(assert (=> b!313827 (=> (not res!169873) (not e!195550))))

(assert (=> b!313827 (= res!169873 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153746))))

(declare-fun b!313828 () Bool)

(declare-fun res!169877 () Bool)

(assert (=> b!313828 (=> (not res!169877) (not e!195548))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16028 (_ BitVec 32)) SeekEntryResult!2739)

(assert (=> b!313828 (= res!169877 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2739 i!1240)))))

(declare-fun b!313829 () Bool)

(declare-fun res!169870 () Bool)

(assert (=> b!313829 (=> (not res!169870) (not e!195548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16028 (_ BitVec 32)) Bool)

(assert (=> b!313829 (= res!169870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313830 () Bool)

(assert (=> b!313830 (= e!195550 (bvslt (bvsub #b01111111111111111111111111111110 x!1427) #b00000000000000000000000000000000))))

(assert (= (and start!31314 res!169875) b!313823))

(assert (= (and b!313823 res!169878) b!313824))

(assert (= (and b!313824 res!169872) b!313825))

(assert (= (and b!313825 res!169874) b!313828))

(assert (= (and b!313828 res!169877) b!313829))

(assert (= (and b!313829 res!169870) b!313826))

(assert (= (and b!313826 res!169871) b!313822))

(assert (= (and b!313822 res!169876) b!313827))

(assert (= (and b!313827 res!169873) b!313830))

(declare-fun m!323557 () Bool)

(assert (=> b!313828 m!323557))

(declare-fun m!323559 () Bool)

(assert (=> start!31314 m!323559))

(declare-fun m!323561 () Bool)

(assert (=> start!31314 m!323561))

(declare-fun m!323563 () Bool)

(assert (=> b!313826 m!323563))

(assert (=> b!313826 m!323563))

(declare-fun m!323565 () Bool)

(assert (=> b!313826 m!323565))

(declare-fun m!323567 () Bool)

(assert (=> b!313825 m!323567))

(declare-fun m!323569 () Bool)

(assert (=> b!313827 m!323569))

(declare-fun m!323571 () Bool)

(assert (=> b!313824 m!323571))

(declare-fun m!323573 () Bool)

(assert (=> b!313829 m!323573))

(declare-fun m!323575 () Bool)

(assert (=> b!313822 m!323575))

(push 1)

(assert (not start!31314))

(assert (not b!313828))

(assert (not b!313827))

(assert (not b!313825))

(assert (not b!313829))

(assert (not b!313824))

(assert (not b!313826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!313911 () Bool)

(declare-fun e!195591 () Bool)

(declare-fun call!25964 () Bool)

(assert (=> b!313911 (= e!195591 call!25964)))

(declare-fun b!313913 () Bool)

(declare-fun e!195590 () Bool)

(assert (=> b!313913 (= e!195590 call!25964)))

(declare-fun b!313914 () Bool)

(assert (=> b!313914 (= e!195590 e!195591)))

(declare-fun lt!153768 () (_ BitVec 64))

(assert (=> b!313914 (= lt!153768 (select (arr!7588 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9678 0))(
  ( (Unit!9679) )
))
(declare-fun lt!153769 () Unit!9678)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16028 (_ BitVec 64) (_ BitVec 32)) Unit!9678)

(assert (=> b!313914 (= lt!153769 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153768 #b00000000000000000000000000000000))))

(assert (=> b!313914 (arrayContainsKey!0 a!3293 lt!153768 #b00000000000000000000000000000000)))

(declare-fun lt!153770 () Unit!9678)

(assert (=> b!313914 (= lt!153770 lt!153769)))

(declare-fun res!169950 () Bool)

(assert (=> b!313914 (= res!169950 (= (seekEntryOrOpen!0 (select (arr!7588 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2739 #b00000000000000000000000000000000)))))

(assert (=> b!313914 (=> (not res!169950) (not e!195591))))

(declare-fun bm!25961 () Bool)

(assert (=> bm!25961 (= call!25964 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68577 () Bool)

(declare-fun res!169949 () Bool)

(declare-fun e!195592 () Bool)

(assert (=> d!68577 (=> res!169949 e!195592)))

(assert (=> d!68577 (= res!169949 (bvsge #b00000000000000000000000000000000 (size!7940 a!3293)))))

(assert (=> d!68577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195592)))

(declare-fun b!313912 () Bool)

(assert (=> b!313912 (= e!195592 e!195590)))

(declare-fun c!49592 () Bool)

(assert (=> b!313912 (= c!49592 (validKeyInArray!0 (select (arr!7588 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!68577 (not res!169949)) b!313912))

(assert (= (and b!313912 c!49592) b!313914))

(assert (= (and b!313912 (not c!49592)) b!313913))

(assert (= (and b!313914 res!169950) b!313911))

(assert (= (or b!313911 b!313913) bm!25961))

(declare-fun m!323631 () Bool)

(assert (=> b!313914 m!323631))

(declare-fun m!323633 () Bool)

(assert (=> b!313914 m!323633))

(declare-fun m!323635 () Bool)

(assert (=> b!313914 m!323635))

(assert (=> b!313914 m!323631))

(declare-fun m!323637 () Bool)

(assert (=> b!313914 m!323637))

(declare-fun m!323639 () Bool)

(assert (=> bm!25961 m!323639))

(assert (=> b!313912 m!323631))

(assert (=> b!313912 m!323631))

(declare-fun m!323641 () Bool)

(assert (=> b!313912 m!323641))

(assert (=> b!313829 d!68577))

(declare-fun d!68587 () Bool)

(assert (=> d!68587 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313824 d!68587))

(declare-fun d!68589 () Bool)

(declare-fun res!169955 () Bool)

(declare-fun e!195597 () Bool)

(assert (=> d!68589 (=> res!169955 e!195597)))

(assert (=> d!68589 (= res!169955 (= (select (arr!7588 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68589 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195597)))

(declare-fun b!313919 () Bool)

(declare-fun e!195598 () Bool)

(assert (=> b!313919 (= e!195597 e!195598)))

(declare-fun res!169956 () Bool)

(assert (=> b!313919 (=> (not res!169956) (not e!195598))))

(assert (=> b!313919 (= res!169956 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7940 a!3293)))))

(declare-fun b!313920 () Bool)

(assert (=> b!313920 (= e!195598 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68589 (not res!169955)) b!313919))

(assert (= (and b!313919 res!169956) b!313920))

(assert (=> d!68589 m!323631))

(declare-fun m!323643 () Bool)

(assert (=> b!313920 m!323643))

(assert (=> b!313825 d!68589))

(declare-fun b!313978 () Bool)

(declare-fun lt!153794 () SeekEntryResult!2739)

(assert (=> b!313978 (and (bvsge (index!13134 lt!153794) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153794) (size!7940 a!3293)))))

(declare-fun res!169974 () Bool)

(assert (=> b!313978 (= res!169974 (= (select (arr!7588 a!3293) (index!13134 lt!153794)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195632 () Bool)

(assert (=> b!313978 (=> res!169974 e!195632)))

(declare-fun b!313979 () Bool)

(assert (=> b!313979 (and (bvsge (index!13134 lt!153794) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153794) (size!7940 a!3293)))))

(assert (=> b!313979 (= e!195632 (= (select (arr!7588 a!3293) (index!13134 lt!153794)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313980 () Bool)

(assert (=> b!313980 (and (bvsge (index!13134 lt!153794) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153794) (size!7940 a!3293)))))

(declare-fun res!169975 () Bool)

(assert (=> b!313980 (= res!169975 (= (select (arr!7588 a!3293) (index!13134 lt!153794)) k!2441))))

(assert (=> b!313980 (=> res!169975 e!195632)))

(declare-fun e!195630 () Bool)

(assert (=> b!313980 (= e!195630 e!195632)))

(declare-fun d!68591 () Bool)

(declare-fun e!195634 () Bool)

(assert (=> d!68591 e!195634))

(declare-fun c!49615 () Bool)

(assert (=> d!68591 (= c!49615 (and (is-Intermediate!2739 lt!153794) (undefined!3551 lt!153794)))))

(declare-fun e!195631 () SeekEntryResult!2739)

(assert (=> d!68591 (= lt!153794 e!195631)))

(declare-fun c!49616 () Bool)

(assert (=> d!68591 (= c!49616 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153793 () (_ BitVec 64))

(assert (=> d!68591 (= lt!153793 (select (arr!7588 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68591 (validMask!0 mask!3709)))

(assert (=> d!68591 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153794)))

(declare-fun b!313981 () Bool)

(assert (=> b!313981 (= e!195631 (Intermediate!2739 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313982 () Bool)

(assert (=> b!313982 (= e!195634 (bvsge (x!31326 lt!153794) #b01111111111111111111111111111110))))

(declare-fun b!313983 () Bool)

(declare-fun e!195633 () SeekEntryResult!2739)

(assert (=> b!313983 (= e!195631 e!195633)))

(declare-fun c!49614 () Bool)

(assert (=> b!313983 (= c!49614 (or (= lt!153793 k!2441) (= (bvadd lt!153793 lt!153793) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313984 () Bool)

(assert (=> b!313984 (= e!195634 e!195630)))

(declare-fun res!169973 () Bool)

(assert (=> b!313984 (= res!169973 (and (is-Intermediate!2739 lt!153794) (not (undefined!3551 lt!153794)) (bvslt (x!31326 lt!153794) #b01111111111111111111111111111110) (bvsge (x!31326 lt!153794) #b00000000000000000000000000000000) (bvsge (x!31326 lt!153794) #b00000000000000000000000000000000)))))

(assert (=> b!313984 (=> (not res!169973) (not e!195630))))

(declare-fun b!313985 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313985 (= e!195633 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313986 () Bool)

(assert (=> b!313986 (= e!195633 (Intermediate!2739 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68591 c!49616) b!313981))

(assert (= (and d!68591 (not c!49616)) b!313983))

(assert (= (and b!313983 c!49614) b!313986))

(assert (= (and b!313983 (not c!49614)) b!313985))

(assert (= (and d!68591 c!49615) b!313982))

(assert (= (and d!68591 (not c!49615)) b!313984))

(assert (= (and b!313984 res!169973) b!313980))

(assert (= (and b!313980 (not res!169975)) b!313978))

(assert (= (and b!313978 (not res!169974)) b!313979))

(assert (=> d!68591 m!323563))

(declare-fun m!323653 () Bool)

(assert (=> d!68591 m!323653))

(assert (=> d!68591 m!323559))

(declare-fun m!323655 () Bool)

(assert (=> b!313980 m!323655))

(assert (=> b!313985 m!323563))

(declare-fun m!323657 () Bool)

(assert (=> b!313985 m!323657))

(assert (=> b!313985 m!323657))

(declare-fun m!323659 () Bool)

(assert (=> b!313985 m!323659))

(assert (=> b!313979 m!323655))

(assert (=> b!313978 m!323655))

(assert (=> b!313826 d!68591))

(declare-fun d!68601 () Bool)

(declare-fun lt!153803 () (_ BitVec 32))

(declare-fun lt!153802 () (_ BitVec 32))

(assert (=> d!68601 (= lt!153803 (bvmul (bvxor lt!153802 (bvlshr lt!153802 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68601 (= lt!153802 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68601 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169976 (let ((h!5379 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31332 (bvmul (bvxor h!5379 (bvlshr h!5379 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31332 (bvlshr x!31332 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169976 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169976 #b00000000000000000000000000000000))))))

(assert (=> d!68601 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153803 (bvlshr lt!153803 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313826 d!68601))

(declare-fun b!313993 () Bool)

(declare-fun lt!153805 () SeekEntryResult!2739)

(assert (=> b!313993 (and (bvsge (index!13134 lt!153805) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153805) (size!7940 a!3293)))))

(declare-fun res!169978 () Bool)

(assert (=> b!313993 (= res!169978 (= (select (arr!7588 a!3293) (index!13134 lt!153805)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195640 () Bool)

(assert (=> b!313993 (=> res!169978 e!195640)))

(declare-fun b!313994 () Bool)

(assert (=> b!313994 (and (bvsge (index!13134 lt!153805) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153805) (size!7940 a!3293)))))

(assert (=> b!313994 (= e!195640 (= (select (arr!7588 a!3293) (index!13134 lt!153805)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313995 () Bool)

(assert (=> b!313995 (and (bvsge (index!13134 lt!153805) #b00000000000000000000000000000000) (bvslt (index!13134 lt!153805) (size!7940 a!3293)))))

(declare-fun res!169979 () Bool)

(assert (=> b!313995 (= res!169979 (= (select (arr!7588 a!3293) (index!13134 lt!153805)) k!2441))))

(assert (=> b!313995 (=> res!169979 e!195640)))

(declare-fun e!195638 () Bool)

(assert (=> b!313995 (= e!195638 e!195640)))

(declare-fun d!68605 () Bool)

(declare-fun e!195642 () Bool)

(assert (=> d!68605 e!195642))

(declare-fun c!49621 () Bool)

(assert (=> d!68605 (= c!49621 (and (is-Intermediate!2739 lt!153805) (undefined!3551 lt!153805)))))

(declare-fun e!195639 () SeekEntryResult!2739)

(assert (=> d!68605 (= lt!153805 e!195639)))

(declare-fun c!49622 () Bool)

(assert (=> d!68605 (= c!49622 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153804 () (_ BitVec 64))

(assert (=> d!68605 (= lt!153804 (select (arr!7588 a!3293) index!1781))))

(assert (=> d!68605 (validMask!0 mask!3709)))

(assert (=> d!68605 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153805)))

(declare-fun b!313996 () Bool)

(assert (=> b!313996 (= e!195639 (Intermediate!2739 true index!1781 x!1427))))

(declare-fun b!313997 () Bool)

(assert (=> b!313997 (= e!195642 (bvsge (x!31326 lt!153805) #b01111111111111111111111111111110))))

(declare-fun b!313998 () Bool)

(declare-fun e!195641 () SeekEntryResult!2739)

(assert (=> b!313998 (= e!195639 e!195641)))

(declare-fun c!49620 () Bool)

(assert (=> b!313998 (= c!49620 (or (= lt!153804 k!2441) (= (bvadd lt!153804 lt!153804) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313999 () Bool)

(assert (=> b!313999 (= e!195642 e!195638)))

(declare-fun res!169977 () Bool)

(assert (=> b!313999 (= res!169977 (and (is-Intermediate!2739 lt!153805) (not (undefined!3551 lt!153805)) (bvslt (x!31326 lt!153805) #b01111111111111111111111111111110) (bvsge (x!31326 lt!153805) #b00000000000000000000000000000000) (bvsge (x!31326 lt!153805) x!1427)))))

(assert (=> b!313999 (=> (not res!169977) (not e!195638))))

(declare-fun b!314000 () Bool)

(assert (=> b!314000 (= e!195641 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314001 () Bool)

(assert (=> b!314001 (= e!195641 (Intermediate!2739 false index!1781 x!1427))))

(assert (= (and d!68605 c!49622) b!313996))

(assert (= (and d!68605 (not c!49622)) b!313998))

(assert (= (and b!313998 c!49620) b!314001))

(assert (= (and b!313998 (not c!49620)) b!314000))

(assert (= (and d!68605 c!49621) b!313997))

(assert (= (and d!68605 (not c!49621)) b!313999))

(assert (= (and b!313999 res!169977) b!313995))

(assert (= (and b!313995 (not res!169979)) b!313993))

(assert (= (and b!313993 (not res!169978)) b!313994))

(declare-fun m!323671 () Bool)

(assert (=> d!68605 m!323671))

(assert (=> d!68605 m!323559))

(declare-fun m!323673 () Bool)

(assert (=> b!313995 m!323673))

(declare-fun m!323675 () Bool)

(assert (=> b!314000 m!323675))

(assert (=> b!314000 m!323675))

(declare-fun m!323677 () Bool)

(assert (=> b!314000 m!323677))

(assert (=> b!313994 m!323673))

(assert (=> b!313993 m!323673))

(assert (=> b!313827 d!68605))

(declare-fun d!68607 () Bool)

(assert (=> d!68607 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31314 d!68607))

(declare-fun d!68617 () Bool)

(assert (=> d!68617 (= (array_inv!5542 a!3293) (bvsge (size!7940 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31314 d!68617))

(declare-fun b!314083 () Bool)

(declare-fun e!195690 () SeekEntryResult!2739)

(assert (=> b!314083 (= e!195690 Undefined!2739)))

(declare-fun b!314084 () Bool)

(declare-fun e!195689 () SeekEntryResult!2739)

(assert (=> b!314084 (= e!195690 e!195689)))

(declare-fun lt!153838 () (_ BitVec 64))

(declare-fun lt!153839 () SeekEntryResult!2739)

(assert (=> b!314084 (= lt!153838 (select (arr!7588 a!3293) (index!13134 lt!153839)))))

(declare-fun c!49655 () Bool)

(assert (=> b!314084 (= c!49655 (= lt!153838 k!2441))))

(declare-fun b!314085 () Bool)

(declare-fun e!195691 () SeekEntryResult!2739)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16028 (_ BitVec 32)) SeekEntryResult!2739)

(assert (=> b!314085 (= e!195691 (seekKeyOrZeroReturnVacant!0 (x!31326 lt!153839) (index!13134 lt!153839) (index!13134 lt!153839) k!2441 a!3293 mask!3709))))

(declare-fun b!314086 () Bool)

(assert (=> b!314086 (= e!195689 (Found!2739 (index!13134 lt!153839)))))

(declare-fun b!314087 () Bool)

(assert (=> b!314087 (= e!195691 (MissingZero!2739 (index!13134 lt!153839)))))

(declare-fun d!68619 () Bool)

(declare-fun lt!153837 () SeekEntryResult!2739)

(assert (=> d!68619 (and (or (is-Undefined!2739 lt!153837) (not (is-Found!2739 lt!153837)) (and (bvsge (index!13133 lt!153837) #b00000000000000000000000000000000) (bvslt (index!13133 lt!153837) (size!7940 a!3293)))) (or (is-Undefined!2739 lt!153837) (is-Found!2739 lt!153837) (not (is-MissingZero!2739 lt!153837)) (and (bvsge (index!13132 lt!153837) #b00000000000000000000000000000000) (bvslt (index!13132 lt!153837) (size!7940 a!3293)))) (or (is-Undefined!2739 lt!153837) (is-Found!2739 lt!153837) (is-MissingZero!2739 lt!153837) (not (is-MissingVacant!2739 lt!153837)) (and (bvsge (index!13135 lt!153837) #b00000000000000000000000000000000) (bvslt (index!13135 lt!153837) (size!7940 a!3293)))) (or (is-Undefined!2739 lt!153837) (ite (is-Found!2739 lt!153837) (= (select (arr!7588 a!3293) (index!13133 lt!153837)) k!2441) (ite (is-MissingZero!2739 lt!153837) (= (select (arr!7588 a!3293) (index!13132 lt!153837)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2739 lt!153837) (= (select (arr!7588 a!3293) (index!13135 lt!153837)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68619 (= lt!153837 e!195690)))

(declare-fun c!49654 () Bool)

(assert (=> d!68619 (= c!49654 (and (is-Intermediate!2739 lt!153839) (undefined!3551 lt!153839)))))

(assert (=> d!68619 (= lt!153839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68619 (validMask!0 mask!3709)))

(assert (=> d!68619 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153837)))

(declare-fun b!314088 () Bool)

(declare-fun c!49653 () Bool)

(assert (=> b!314088 (= c!49653 (= lt!153838 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314088 (= e!195689 e!195691)))

(assert (= (and d!68619 c!49654) b!314083))

(assert (= (and d!68619 (not c!49654)) b!314084))

(assert (= (and b!314084 c!49655) b!314086))

(assert (= (and b!314084 (not c!49655)) b!314088))

(assert (= (and b!314088 c!49653) b!314087))

(assert (= (and b!314088 (not c!49653)) b!314085))

(declare-fun m!323717 () Bool)

(assert (=> b!314084 m!323717))

(declare-fun m!323719 () Bool)

(assert (=> b!314085 m!323719))

(declare-fun m!323721 () Bool)

(assert (=> d!68619 m!323721))

(assert (=> d!68619 m!323563))

(assert (=> d!68619 m!323565))

(declare-fun m!323723 () Bool)

(assert (=> d!68619 m!323723))

(declare-fun m!323725 () Bool)

(assert (=> d!68619 m!323725))

(assert (=> d!68619 m!323559))

(assert (=> d!68619 m!323563))

(assert (=> b!313828 d!68619))

(push 1)

(assert (not b!313912))

(assert (not b!314000))

(assert (not b!314085))

(assert (not b!313985))

(assert (not bm!25961))

(assert (not b!313914))

(assert (not d!68591))

(assert (not b!313920))

(assert (not d!68619))

(assert (not d!68605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

