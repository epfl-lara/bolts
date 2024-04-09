; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32298 () Bool)

(assert start!32298)

(declare-fun b!321591 () Bool)

(declare-fun res!175875 () Bool)

(declare-fun e!199172 () Bool)

(assert (=> b!321591 (=> (not res!175875) (not e!199172))))

(declare-datatypes ((array!16484 0))(
  ( (array!16485 (arr!7798 (Array (_ BitVec 32) (_ BitVec 64))) (size!8150 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16484)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!321591 (= res!175875 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7798 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7798 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7798 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321592 () Bool)

(declare-fun res!175877 () Bool)

(declare-fun e!199173 () Bool)

(assert (=> b!321592 (=> (not res!175877) (not e!199173))))

(declare-fun arrayContainsKey!0 (array!16484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321592 (= res!175877 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321593 () Bool)

(declare-fun res!175876 () Bool)

(assert (=> b!321593 (=> (not res!175876) (not e!199173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321593 (= res!175876 (validKeyInArray!0 k!2497))))

(declare-fun b!321594 () Bool)

(declare-fun res!175870 () Bool)

(assert (=> b!321594 (=> (not res!175870) (not e!199173))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321594 (= res!175870 (and (= (size!8150 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8150 a!3305))))))

(declare-fun b!321595 () Bool)

(declare-fun lt!156220 () (_ BitVec 32))

(assert (=> b!321595 (= e!199172 (and (bvsge mask!3777 #b00000000000000000000000000000000) (or (bvslt lt!156220 #b00000000000000000000000000000000) (bvsge lt!156220 (bvadd #b00000000000000000000000000000001 mask!3777)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321595 (= lt!156220 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321596 () Bool)

(declare-fun res!175872 () Bool)

(assert (=> b!321596 (=> (not res!175872) (not e!199173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16484 (_ BitVec 32)) Bool)

(assert (=> b!321596 (= res!175872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!321597 () Bool)

(assert (=> b!321597 (= e!199173 e!199172)))

(declare-fun res!175874 () Bool)

(assert (=> b!321597 (=> (not res!175874) (not e!199172))))

(declare-datatypes ((SeekEntryResult!2940 0))(
  ( (MissingZero!2940 (index!13936 (_ BitVec 32))) (Found!2940 (index!13937 (_ BitVec 32))) (Intermediate!2940 (undefined!3752 Bool) (index!13938 (_ BitVec 32)) (x!32162 (_ BitVec 32))) (Undefined!2940) (MissingVacant!2940 (index!13939 (_ BitVec 32))) )
))
(declare-fun lt!156221 () SeekEntryResult!2940)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16484 (_ BitVec 32)) SeekEntryResult!2940)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321597 (= res!175874 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156221))))

(assert (=> b!321597 (= lt!156221 (Intermediate!2940 false resIndex!58 resX!58))))

(declare-fun res!175871 () Bool)

(assert (=> start!32298 (=> (not res!175871) (not e!199173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32298 (= res!175871 (validMask!0 mask!3777))))

(assert (=> start!32298 e!199173))

(declare-fun array_inv!5752 (array!16484) Bool)

(assert (=> start!32298 (array_inv!5752 a!3305)))

(assert (=> start!32298 true))

(declare-fun b!321598 () Bool)

(declare-fun res!175878 () Bool)

(assert (=> b!321598 (=> (not res!175878) (not e!199172))))

(assert (=> b!321598 (= res!175878 (and (= (select (arr!7798 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8150 a!3305))))))

(declare-fun b!321599 () Bool)

(declare-fun res!175873 () Bool)

(assert (=> b!321599 (=> (not res!175873) (not e!199173))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16484 (_ BitVec 32)) SeekEntryResult!2940)

(assert (=> b!321599 (= res!175873 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2940 i!1250)))))

(declare-fun b!321600 () Bool)

(declare-fun res!175869 () Bool)

(assert (=> b!321600 (=> (not res!175869) (not e!199172))))

(assert (=> b!321600 (= res!175869 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156221))))

(assert (= (and start!32298 res!175871) b!321594))

(assert (= (and b!321594 res!175870) b!321593))

(assert (= (and b!321593 res!175876) b!321592))

(assert (= (and b!321592 res!175877) b!321599))

(assert (= (and b!321599 res!175873) b!321596))

(assert (= (and b!321596 res!175872) b!321597))

(assert (= (and b!321597 res!175874) b!321598))

(assert (= (and b!321598 res!175878) b!321600))

(assert (= (and b!321600 res!175869) b!321591))

(assert (= (and b!321591 res!175875) b!321595))

(declare-fun m!329707 () Bool)

(assert (=> b!321597 m!329707))

(assert (=> b!321597 m!329707))

(declare-fun m!329709 () Bool)

(assert (=> b!321597 m!329709))

(declare-fun m!329711 () Bool)

(assert (=> b!321600 m!329711))

(declare-fun m!329713 () Bool)

(assert (=> b!321592 m!329713))

(declare-fun m!329715 () Bool)

(assert (=> b!321599 m!329715))

(declare-fun m!329717 () Bool)

(assert (=> b!321598 m!329717))

(declare-fun m!329719 () Bool)

(assert (=> b!321595 m!329719))

(declare-fun m!329721 () Bool)

(assert (=> b!321591 m!329721))

(declare-fun m!329723 () Bool)

(assert (=> start!32298 m!329723))

(declare-fun m!329725 () Bool)

(assert (=> start!32298 m!329725))

(declare-fun m!329727 () Bool)

(assert (=> b!321596 m!329727))

(declare-fun m!329729 () Bool)

(assert (=> b!321593 m!329729))

(push 1)

(assert (not b!321593))

(assert (not b!321597))

(assert (not b!321599))

(assert (not b!321592))

(assert (not b!321595))

(assert (not b!321596))

(assert (not b!321600))

(assert (not start!32298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69391 () Bool)

(declare-fun lt!156236 () (_ BitVec 32))

(assert (=> d!69391 (and (bvsge lt!156236 #b00000000000000000000000000000000) (bvslt lt!156236 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69391 (= lt!156236 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69391 (validMask!0 mask!3777)))

(assert (=> d!69391 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!156236)))

(declare-fun bs!11224 () Bool)

(assert (= bs!11224 d!69391))

(declare-fun m!329779 () Bool)

(assert (=> bs!11224 m!329779))

(assert (=> bs!11224 m!329723))

(assert (=> b!321595 d!69391))

(declare-fun d!69393 () Bool)

(declare-fun res!175943 () Bool)

(declare-fun e!199200 () Bool)

(assert (=> d!69393 (=> res!175943 e!199200)))

(assert (=> d!69393 (= res!175943 (bvsge #b00000000000000000000000000000000 (size!8150 a!3305)))))

(assert (=> d!69393 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!199200)))

(declare-fun b!321669 () Bool)

(declare-fun e!199201 () Bool)

(declare-fun e!199199 () Bool)

(assert (=> b!321669 (= e!199201 e!199199)))

(declare-fun lt!156245 () (_ BitVec 64))

(assert (=> b!321669 (= lt!156245 (select (arr!7798 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9823 0))(
  ( (Unit!9824) )
))
(declare-fun lt!156244 () Unit!9823)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16484 (_ BitVec 64) (_ BitVec 32)) Unit!9823)

(assert (=> b!321669 (= lt!156244 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!156245 #b00000000000000000000000000000000))))

(assert (=> b!321669 (arrayContainsKey!0 a!3305 lt!156245 #b00000000000000000000000000000000)))

(declare-fun lt!156243 () Unit!9823)

(assert (=> b!321669 (= lt!156243 lt!156244)))

(declare-fun res!175944 () Bool)

(assert (=> b!321669 (= res!175944 (= (seekEntryOrOpen!0 (select (arr!7798 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!2940 #b00000000000000000000000000000000)))))

(assert (=> b!321669 (=> (not res!175944) (not e!199199))))

(declare-fun b!321670 () Bool)

(assert (=> b!321670 (= e!199200 e!199201)))

(declare-fun c!50489 () Bool)

(assert (=> b!321670 (= c!50489 (validKeyInArray!0 (select (arr!7798 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26057 () Bool)

(declare-fun call!26060 () Bool)

(assert (=> bm!26057 (= call!26060 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!321671 () Bool)

(assert (=> b!321671 (= e!199199 call!26060)))

(declare-fun b!321672 () Bool)

(assert (=> b!321672 (= e!199201 call!26060)))

(assert (= (and d!69393 (not res!175943)) b!321670))

(assert (= (and b!321670 c!50489) b!321669))

(assert (= (and b!321670 (not c!50489)) b!321672))

(assert (= (and b!321669 res!175944) b!321671))

(assert (= (or b!321671 b!321672) bm!26057))

(declare-fun m!329781 () Bool)

(assert (=> b!321669 m!329781))

(declare-fun m!329783 () Bool)

(assert (=> b!321669 m!329783))

(declare-fun m!329785 () Bool)

(assert (=> b!321669 m!329785))

(assert (=> b!321669 m!329781))

(declare-fun m!329787 () Bool)

(assert (=> b!321669 m!329787))

(assert (=> b!321670 m!329781))

(assert (=> b!321670 m!329781))

(declare-fun m!329789 () Bool)

(assert (=> b!321670 m!329789))

(declare-fun m!329791 () Bool)

(assert (=> bm!26057 m!329791))

(assert (=> b!321596 d!69393))

(declare-fun d!69399 () Bool)

(declare-fun e!199245 () Bool)

(assert (=> d!69399 e!199245))

(declare-fun c!50509 () Bool)

(declare-fun lt!156275 () SeekEntryResult!2940)

(assert (=> d!69399 (= c!50509 (and (is-Intermediate!2940 lt!156275) (undefined!3752 lt!156275)))))

(declare-fun e!199246 () SeekEntryResult!2940)

(assert (=> d!69399 (= lt!156275 e!199246)))

(declare-fun c!50508 () Bool)

(assert (=> d!69399 (= c!50508 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!156274 () (_ BitVec 64))

(assert (=> d!69399 (= lt!156274 (select (arr!7798 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69399 (validMask!0 mask!3777)))

(assert (=> d!69399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156275)))

(declare-fun b!321733 () Bool)

(declare-fun e!199244 () SeekEntryResult!2940)

(assert (=> b!321733 (= e!199244 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!321734 () Bool)

(declare-fun e!199243 () Bool)

(assert (=> b!321734 (= e!199245 e!199243)))

(declare-fun res!175970 () Bool)

(assert (=> b!321734 (= res!175970 (and (is-Intermediate!2940 lt!156275) (not (undefined!3752 lt!156275)) (bvslt (x!32162 lt!156275) #b01111111111111111111111111111110) (bvsge (x!32162 lt!156275) #b00000000000000000000000000000000) (bvsge (x!32162 lt!156275) #b00000000000000000000000000000000)))))

(assert (=> b!321734 (=> (not res!175970) (not e!199243))))

(declare-fun b!321735 () Bool)

(assert (=> b!321735 (and (bvsge (index!13938 lt!156275) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156275) (size!8150 a!3305)))))

(declare-fun res!175969 () Bool)

(assert (=> b!321735 (= res!175969 (= (select (arr!7798 a!3305) (index!13938 lt!156275)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!199242 () Bool)

(assert (=> b!321735 (=> res!175969 e!199242)))

(declare-fun b!321736 () Bool)

(assert (=> b!321736 (and (bvsge (index!13938 lt!156275) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156275) (size!8150 a!3305)))))

(declare-fun res!175971 () Bool)

(assert (=> b!321736 (= res!175971 (= (select (arr!7798 a!3305) (index!13938 lt!156275)) k!2497))))

(assert (=> b!321736 (=> res!175971 e!199242)))

(assert (=> b!321736 (= e!199243 e!199242)))

(declare-fun b!321737 () Bool)

(assert (=> b!321737 (and (bvsge (index!13938 lt!156275) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156275) (size!8150 a!3305)))))

(assert (=> b!321737 (= e!199242 (= (select (arr!7798 a!3305) (index!13938 lt!156275)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321738 () Bool)

(assert (=> b!321738 (= e!199244 (Intermediate!2940 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!321739 () Bool)

(assert (=> b!321739 (= e!199246 e!199244)))

(declare-fun c!50510 () Bool)

(assert (=> b!321739 (= c!50510 (or (= lt!156274 k!2497) (= (bvadd lt!156274 lt!156274) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321740 () Bool)

(assert (=> b!321740 (= e!199246 (Intermediate!2940 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!321741 () Bool)

(assert (=> b!321741 (= e!199245 (bvsge (x!32162 lt!156275) #b01111111111111111111111111111110))))

(assert (= (and d!69399 c!50508) b!321740))

(assert (= (and d!69399 (not c!50508)) b!321739))

(assert (= (and b!321739 c!50510) b!321738))

(assert (= (and b!321739 (not c!50510)) b!321733))

(assert (= (and d!69399 c!50509) b!321741))

(assert (= (and d!69399 (not c!50509)) b!321734))

(assert (= (and b!321734 res!175970) b!321736))

(assert (= (and b!321736 (not res!175971)) b!321735))

(assert (= (and b!321735 (not res!175969)) b!321737))

(declare-fun m!329819 () Bool)

(assert (=> b!321736 m!329819))

(assert (=> b!321733 m!329707))

(declare-fun m!329821 () Bool)

(assert (=> b!321733 m!329821))

(assert (=> b!321733 m!329821))

(declare-fun m!329823 () Bool)

(assert (=> b!321733 m!329823))

(assert (=> b!321737 m!329819))

(assert (=> b!321735 m!329819))

(assert (=> d!69399 m!329707))

(declare-fun m!329825 () Bool)

(assert (=> d!69399 m!329825))

(assert (=> d!69399 m!329723))

(assert (=> b!321597 d!69399))

(declare-fun d!69411 () Bool)

(declare-fun lt!156284 () (_ BitVec 32))

(declare-fun lt!156283 () (_ BitVec 32))

(assert (=> d!69411 (= lt!156284 (bvmul (bvxor lt!156283 (bvlshr lt!156283 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69411 (= lt!156283 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69411 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!175972 (let ((h!5408 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32167 (bvmul (bvxor h!5408 (bvlshr h!5408 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32167 (bvlshr x!32167 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!175972 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!175972 #b00000000000000000000000000000000))))))

(assert (=> d!69411 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!156284 (bvlshr lt!156284 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!321597 d!69411))

(declare-fun d!69415 () Bool)

(declare-fun res!175977 () Bool)

(declare-fun e!199258 () Bool)

(assert (=> d!69415 (=> res!175977 e!199258)))

(assert (=> d!69415 (= res!175977 (= (select (arr!7798 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69415 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!199258)))

(declare-fun b!321760 () Bool)

(declare-fun e!199259 () Bool)

(assert (=> b!321760 (= e!199258 e!199259)))

(declare-fun res!175978 () Bool)

(assert (=> b!321760 (=> (not res!175978) (not e!199259))))

(assert (=> b!321760 (= res!175978 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8150 a!3305)))))

(declare-fun b!321761 () Bool)

(assert (=> b!321761 (= e!199259 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69415 (not res!175977)) b!321760))

(assert (= (and b!321760 res!175978) b!321761))

(assert (=> d!69415 m!329781))

(declare-fun m!329837 () Bool)

(assert (=> b!321761 m!329837))

(assert (=> b!321592 d!69415))

(declare-fun d!69417 () Bool)

(assert (=> d!69417 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!321593 d!69417))

(declare-fun d!69419 () Bool)

(declare-fun lt!156309 () SeekEntryResult!2940)

(assert (=> d!69419 (and (or (is-Undefined!2940 lt!156309) (not (is-Found!2940 lt!156309)) (and (bvsge (index!13937 lt!156309) #b00000000000000000000000000000000) (bvslt (index!13937 lt!156309) (size!8150 a!3305)))) (or (is-Undefined!2940 lt!156309) (is-Found!2940 lt!156309) (not (is-MissingZero!2940 lt!156309)) (and (bvsge (index!13936 lt!156309) #b00000000000000000000000000000000) (bvslt (index!13936 lt!156309) (size!8150 a!3305)))) (or (is-Undefined!2940 lt!156309) (is-Found!2940 lt!156309) (is-MissingZero!2940 lt!156309) (not (is-MissingVacant!2940 lt!156309)) (and (bvsge (index!13939 lt!156309) #b00000000000000000000000000000000) (bvslt (index!13939 lt!156309) (size!8150 a!3305)))) (or (is-Undefined!2940 lt!156309) (ite (is-Found!2940 lt!156309) (= (select (arr!7798 a!3305) (index!13937 lt!156309)) k!2497) (ite (is-MissingZero!2940 lt!156309) (= (select (arr!7798 a!3305) (index!13936 lt!156309)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2940 lt!156309) (= (select (arr!7798 a!3305) (index!13939 lt!156309)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!199304 () SeekEntryResult!2940)

(assert (=> d!69419 (= lt!156309 e!199304)))

(declare-fun c!50541 () Bool)

(declare-fun lt!156311 () SeekEntryResult!2940)

(assert (=> d!69419 (= c!50541 (and (is-Intermediate!2940 lt!156311) (undefined!3752 lt!156311)))))

(assert (=> d!69419 (= lt!156311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69419 (validMask!0 mask!3777)))

(assert (=> d!69419 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!156309)))

(declare-fun b!321837 () Bool)

(declare-fun c!50542 () Bool)

(declare-fun lt!156310 () (_ BitVec 64))

(assert (=> b!321837 (= c!50542 (= lt!156310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!199305 () SeekEntryResult!2940)

(declare-fun e!199303 () SeekEntryResult!2940)

(assert (=> b!321837 (= e!199305 e!199303)))

(declare-fun b!321838 () Bool)

(assert (=> b!321838 (= e!199304 Undefined!2940)))

(declare-fun b!321839 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16484 (_ BitVec 32)) SeekEntryResult!2940)

(assert (=> b!321839 (= e!199303 (seekKeyOrZeroReturnVacant!0 (x!32162 lt!156311) (index!13938 lt!156311) (index!13938 lt!156311) k!2497 a!3305 mask!3777))))

(declare-fun b!321840 () Bool)

(assert (=> b!321840 (= e!199304 e!199305)))

(assert (=> b!321840 (= lt!156310 (select (arr!7798 a!3305) (index!13938 lt!156311)))))

(declare-fun c!50543 () Bool)

(assert (=> b!321840 (= c!50543 (= lt!156310 k!2497))))

(declare-fun b!321841 () Bool)

(assert (=> b!321841 (= e!199303 (MissingZero!2940 (index!13938 lt!156311)))))

(declare-fun b!321842 () Bool)

(assert (=> b!321842 (= e!199305 (Found!2940 (index!13938 lt!156311)))))

(assert (= (and d!69419 c!50541) b!321838))

(assert (= (and d!69419 (not c!50541)) b!321840))

(assert (= (and b!321840 c!50543) b!321842))

(assert (= (and b!321840 (not c!50543)) b!321837))

(assert (= (and b!321837 c!50542) b!321841))

(assert (= (and b!321837 (not c!50542)) b!321839))

(assert (=> d!69419 m!329707))

(assert (=> d!69419 m!329723))

(declare-fun m!329857 () Bool)

(assert (=> d!69419 m!329857))

(declare-fun m!329859 () Bool)

(assert (=> d!69419 m!329859))

(declare-fun m!329861 () Bool)

(assert (=> d!69419 m!329861))

(assert (=> d!69419 m!329707))

(assert (=> d!69419 m!329709))

(declare-fun m!329863 () Bool)

(assert (=> b!321839 m!329863))

(declare-fun m!329865 () Bool)

(assert (=> b!321840 m!329865))

(assert (=> b!321599 d!69419))

(declare-fun d!69429 () Bool)

(assert (=> d!69429 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32298 d!69429))

(declare-fun d!69441 () Bool)

(assert (=> d!69441 (= (array_inv!5752 a!3305) (bvsge (size!8150 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32298 d!69441))

(declare-fun d!69443 () Bool)

(declare-fun e!199323 () Bool)

(assert (=> d!69443 e!199323))

(declare-fun c!50557 () Bool)

(declare-fun lt!156328 () SeekEntryResult!2940)

(assert (=> d!69443 (= c!50557 (and (is-Intermediate!2940 lt!156328) (undefined!3752 lt!156328)))))

(declare-fun e!199324 () SeekEntryResult!2940)

(assert (=> d!69443 (= lt!156328 e!199324)))

(declare-fun c!50556 () Bool)

(assert (=> d!69443 (= c!50556 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!156325 () (_ BitVec 64))

(assert (=> d!69443 (= lt!156325 (select (arr!7798 a!3305) index!1840))))

(assert (=> d!69443 (validMask!0 mask!3777)))

(assert (=> d!69443 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156328)))

(declare-fun b!321868 () Bool)

(declare-fun e!199322 () SeekEntryResult!2940)

(assert (=> b!321868 (= e!199322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!321869 () Bool)

(declare-fun e!199321 () Bool)

(assert (=> b!321869 (= e!199323 e!199321)))

(declare-fun res!176012 () Bool)

(assert (=> b!321869 (= res!176012 (and (is-Intermediate!2940 lt!156328) (not (undefined!3752 lt!156328)) (bvslt (x!32162 lt!156328) #b01111111111111111111111111111110) (bvsge (x!32162 lt!156328) #b00000000000000000000000000000000) (bvsge (x!32162 lt!156328) x!1490)))))

(assert (=> b!321869 (=> (not res!176012) (not e!199321))))

(declare-fun b!321870 () Bool)

(assert (=> b!321870 (and (bvsge (index!13938 lt!156328) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156328) (size!8150 a!3305)))))

(declare-fun res!176011 () Bool)

(assert (=> b!321870 (= res!176011 (= (select (arr!7798 a!3305) (index!13938 lt!156328)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!199320 () Bool)

(assert (=> b!321870 (=> res!176011 e!199320)))

(declare-fun b!321871 () Bool)

(assert (=> b!321871 (and (bvsge (index!13938 lt!156328) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156328) (size!8150 a!3305)))))

(declare-fun res!176013 () Bool)

(assert (=> b!321871 (= res!176013 (= (select (arr!7798 a!3305) (index!13938 lt!156328)) k!2497))))

(assert (=> b!321871 (=> res!176013 e!199320)))

(assert (=> b!321871 (= e!199321 e!199320)))

(declare-fun b!321872 () Bool)

(assert (=> b!321872 (and (bvsge (index!13938 lt!156328) #b00000000000000000000000000000000) (bvslt (index!13938 lt!156328) (size!8150 a!3305)))))

(assert (=> b!321872 (= e!199320 (= (select (arr!7798 a!3305) (index!13938 lt!156328)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!321873 () Bool)

(assert (=> b!321873 (= e!199322 (Intermediate!2940 false index!1840 x!1490))))

(declare-fun b!321874 () Bool)

(assert (=> b!321874 (= e!199324 e!199322)))

(declare-fun c!50558 () Bool)

(assert (=> b!321874 (= c!50558 (or (= lt!156325 k!2497) (= (bvadd lt!156325 lt!156325) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!321875 () Bool)

(assert (=> b!321875 (= e!199324 (Intermediate!2940 true index!1840 x!1490))))

(declare-fun b!321876 () Bool)

(assert (=> b!321876 (= e!199323 (bvsge (x!32162 lt!156328) #b01111111111111111111111111111110))))

(assert (= (and d!69443 c!50556) b!321875))

(assert (= (and d!69443 (not c!50556)) b!321874))

(assert (= (and b!321874 c!50558) b!321873))

(assert (= (and b!321874 (not c!50558)) b!321868))

(assert (= (and d!69443 c!50557) b!321876))

(assert (= (and d!69443 (not c!50557)) b!321869))

(assert (= (and b!321869 res!176012) b!321871))

(assert (= (and b!321871 (not res!176013)) b!321870))

(assert (= (and b!321870 (not res!176011)) b!321872))

(declare-fun m!329885 () Bool)

(assert (=> b!321871 m!329885))

(assert (=> b!321868 m!329719))

(assert (=> b!321868 m!329719))

(declare-fun m!329887 () Bool)

(assert (=> b!321868 m!329887))

(assert (=> b!321872 m!329885))

(assert (=> b!321870 m!329885))

(assert (=> d!69443 m!329721))

(assert (=> d!69443 m!329723))

(assert (=> b!321600 d!69443))

(push 1)

(assert (not d!69391))

(assert (not b!321839))

(assert (not b!321868))

(assert (not bm!26057))

(assert (not d!69399))

(assert (not b!321761))

(assert (not b!321733))

(assert (not b!321670))

(assert (not d!69443))

(assert (not d!69419))

(assert (not b!321669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

