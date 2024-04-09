; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49950 () Bool)

(assert start!49950)

(declare-fun b!547585 () Bool)

(declare-fun res!341238 () Bool)

(declare-fun e!316405 () Bool)

(assert (=> b!547585 (=> (not res!341238) (not e!316405))))

(declare-datatypes ((array!34525 0))(
  ( (array!34526 (arr!16580 (Array (_ BitVec 32) (_ BitVec 64))) (size!16944 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34525)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34525 (_ BitVec 32)) Bool)

(assert (=> b!547585 (= res!341238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547586 () Bool)

(declare-fun res!341237 () Bool)

(assert (=> b!547586 (=> (not res!341237) (not e!316405))))

(declare-datatypes ((List!10713 0))(
  ( (Nil!10710) (Cons!10709 (h!11676 (_ BitVec 64)) (t!16949 List!10713)) )
))
(declare-fun arrayNoDuplicates!0 (array!34525 (_ BitVec 32) List!10713) Bool)

(assert (=> b!547586 (= res!341237 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10710))))

(declare-fun b!547587 () Bool)

(declare-fun res!341240 () Bool)

(declare-fun e!316403 () Bool)

(assert (=> b!547587 (=> (not res!341240) (not e!316403))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547587 (= res!341240 (and (= (size!16944 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16944 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16944 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547588 () Bool)

(declare-fun res!341233 () Bool)

(assert (=> b!547588 (=> (not res!341233) (not e!316403))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547588 (= res!341233 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547589 () Bool)

(assert (=> b!547589 (= e!316403 e!316405)))

(declare-fun res!341235 () Bool)

(assert (=> b!547589 (=> (not res!341235) (not e!316405))))

(declare-datatypes ((SeekEntryResult!5036 0))(
  ( (MissingZero!5036 (index!22371 (_ BitVec 32))) (Found!5036 (index!22372 (_ BitVec 32))) (Intermediate!5036 (undefined!5848 Bool) (index!22373 (_ BitVec 32)) (x!51339 (_ BitVec 32))) (Undefined!5036) (MissingVacant!5036 (index!22374 (_ BitVec 32))) )
))
(declare-fun lt!249590 () SeekEntryResult!5036)

(assert (=> b!547589 (= res!341235 (or (= lt!249590 (MissingZero!5036 i!1132)) (= lt!249590 (MissingVacant!5036 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34525 (_ BitVec 32)) SeekEntryResult!5036)

(assert (=> b!547589 (= lt!249590 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547590 () Bool)

(declare-fun res!341236 () Bool)

(assert (=> b!547590 (=> (not res!341236) (not e!316403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547590 (= res!341236 (validKeyInArray!0 (select (arr!16580 a!3118) j!142)))))

(declare-fun res!341234 () Bool)

(assert (=> start!49950 (=> (not res!341234) (not e!316403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49950 (= res!341234 (validMask!0 mask!3119))))

(assert (=> start!49950 e!316403))

(assert (=> start!49950 true))

(declare-fun array_inv!12354 (array!34525) Bool)

(assert (=> start!49950 (array_inv!12354 a!3118)))

(declare-fun b!547591 () Bool)

(declare-fun res!341239 () Bool)

(assert (=> b!547591 (=> (not res!341239) (not e!316403))))

(assert (=> b!547591 (= res!341239 (validKeyInArray!0 k!1914))))

(declare-fun b!547592 () Bool)

(assert (=> b!547592 (= e!316405 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(assert (= (and start!49950 res!341234) b!547587))

(assert (= (and b!547587 res!341240) b!547590))

(assert (= (and b!547590 res!341236) b!547591))

(assert (= (and b!547591 res!341239) b!547588))

(assert (= (and b!547588 res!341233) b!547589))

(assert (= (and b!547589 res!341235) b!547585))

(assert (= (and b!547585 res!341238) b!547586))

(assert (= (and b!547586 res!341237) b!547592))

(declare-fun m!524815 () Bool)

(assert (=> start!49950 m!524815))

(declare-fun m!524817 () Bool)

(assert (=> start!49950 m!524817))

(declare-fun m!524819 () Bool)

(assert (=> b!547588 m!524819))

(declare-fun m!524821 () Bool)

(assert (=> b!547585 m!524821))

(declare-fun m!524823 () Bool)

(assert (=> b!547591 m!524823))

(declare-fun m!524825 () Bool)

(assert (=> b!547586 m!524825))

(declare-fun m!524827 () Bool)

(assert (=> b!547589 m!524827))

(declare-fun m!524829 () Bool)

(assert (=> b!547590 m!524829))

(assert (=> b!547590 m!524829))

(declare-fun m!524831 () Bool)

(assert (=> b!547590 m!524831))

(push 1)

(assert (not b!547588))

(assert (not b!547589))

(assert (not b!547586))

(assert (not b!547590))

(assert (not start!49950))

(assert (not b!547585))

(assert (not b!547591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!547625 () Bool)

(declare-fun e!316432 () Bool)

(declare-fun e!316430 () Bool)

(assert (=> b!547625 (= e!316432 e!316430)))

(declare-fun c!63512 () Bool)

(assert (=> b!547625 (= c!63512 (validKeyInArray!0 (select (arr!16580 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547626 () Bool)

(declare-fun e!316431 () Bool)

(assert (=> b!547626 (= e!316430 e!316431)))

(declare-fun lt!249616 () (_ BitVec 64))

(assert (=> b!547626 (= lt!249616 (select (arr!16580 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16942 0))(
  ( (Unit!16943) )
))
(declare-fun lt!249615 () Unit!16942)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34525 (_ BitVec 64) (_ BitVec 32)) Unit!16942)

(assert (=> b!547626 (= lt!249615 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249616 #b00000000000000000000000000000000))))

(assert (=> b!547626 (arrayContainsKey!0 a!3118 lt!249616 #b00000000000000000000000000000000)))

(declare-fun lt!249617 () Unit!16942)

(assert (=> b!547626 (= lt!249617 lt!249615)))

(declare-fun res!341257 () Bool)

(assert (=> b!547626 (= res!341257 (= (seekEntryOrOpen!0 (select (arr!16580 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5036 #b00000000000000000000000000000000)))))

(assert (=> b!547626 (=> (not res!341257) (not e!316431))))

(declare-fun bm!32177 () Bool)

(declare-fun call!32180 () Bool)

(assert (=> bm!32177 (= call!32180 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!82447 () Bool)

(declare-fun res!341258 () Bool)

(assert (=> d!82447 (=> res!341258 e!316432)))

(assert (=> d!82447 (= res!341258 (bvsge #b00000000000000000000000000000000 (size!16944 a!3118)))))

(assert (=> d!82447 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316432)))

(declare-fun b!547627 () Bool)

(assert (=> b!547627 (= e!316431 call!32180)))

(declare-fun b!547628 () Bool)

(assert (=> b!547628 (= e!316430 call!32180)))

(assert (= (and d!82447 (not res!341258)) b!547625))

(assert (= (and b!547625 c!63512) b!547626))

(assert (= (and b!547625 (not c!63512)) b!547628))

(assert (= (and b!547626 res!341257) b!547627))

(assert (= (or b!547627 b!547628) bm!32177))

(declare-fun m!524857 () Bool)

(assert (=> b!547625 m!524857))

(assert (=> b!547625 m!524857))

(declare-fun m!524859 () Bool)

(assert (=> b!547625 m!524859))

(assert (=> b!547626 m!524857))

(declare-fun m!524861 () Bool)

(assert (=> b!547626 m!524861))

(declare-fun m!524863 () Bool)

(assert (=> b!547626 m!524863))

(assert (=> b!547626 m!524857))

(declare-fun m!524865 () Bool)

(assert (=> b!547626 m!524865))

(declare-fun m!524867 () Bool)

(assert (=> bm!32177 m!524867))

(assert (=> b!547585 d!82447))

(declare-fun d!82453 () Bool)

(assert (=> d!82453 (= (validKeyInArray!0 (select (arr!16580 a!3118) j!142)) (and (not (= (select (arr!16580 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16580 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547590 d!82453))

(declare-fun d!82457 () Bool)

(assert (=> d!82457 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547591 d!82457))

(declare-fun d!82459 () Bool)

(assert (=> d!82459 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49950 d!82459))

(declare-fun d!82471 () Bool)

(assert (=> d!82471 (= (array_inv!12354 a!3118) (bvsge (size!16944 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49950 d!82471))

(declare-fun d!82473 () Bool)

(declare-fun lt!249633 () SeekEntryResult!5036)

(assert (=> d!82473 (and (or (is-Undefined!5036 lt!249633) (not (is-Found!5036 lt!249633)) (and (bvsge (index!22372 lt!249633) #b00000000000000000000000000000000) (bvslt (index!22372 lt!249633) (size!16944 a!3118)))) (or (is-Undefined!5036 lt!249633) (is-Found!5036 lt!249633) (not (is-MissingZero!5036 lt!249633)) (and (bvsge (index!22371 lt!249633) #b00000000000000000000000000000000) (bvslt (index!22371 lt!249633) (size!16944 a!3118)))) (or (is-Undefined!5036 lt!249633) (is-Found!5036 lt!249633) (is-MissingZero!5036 lt!249633) (not (is-MissingVacant!5036 lt!249633)) (and (bvsge (index!22374 lt!249633) #b00000000000000000000000000000000) (bvslt (index!22374 lt!249633) (size!16944 a!3118)))) (or (is-Undefined!5036 lt!249633) (ite (is-Found!5036 lt!249633) (= (select (arr!16580 a!3118) (index!22372 lt!249633)) k!1914) (ite (is-MissingZero!5036 lt!249633) (= (select (arr!16580 a!3118) (index!22371 lt!249633)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5036 lt!249633) (= (select (arr!16580 a!3118) (index!22374 lt!249633)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!316482 () SeekEntryResult!5036)

(assert (=> d!82473 (= lt!249633 e!316482)))

(declare-fun c!63534 () Bool)

(declare-fun lt!249635 () SeekEntryResult!5036)

(assert (=> d!82473 (= c!63534 (and (is-Intermediate!5036 lt!249635) (undefined!5848 lt!249635)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34525 (_ BitVec 32)) SeekEntryResult!5036)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82473 (= lt!249635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82473 (validMask!0 mask!3119)))

(assert (=> d!82473 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249633)))

(declare-fun e!316484 () SeekEntryResult!5036)

(declare-fun b!547699 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34525 (_ BitVec 32)) SeekEntryResult!5036)

(assert (=> b!547699 (= e!316484 (seekKeyOrZeroReturnVacant!0 (x!51339 lt!249635) (index!22373 lt!249635) (index!22373 lt!249635) k!1914 a!3118 mask!3119))))

(declare-fun b!547700 () Bool)

(declare-fun c!63535 () Bool)

(declare-fun lt!249634 () (_ BitVec 64))

(assert (=> b!547700 (= c!63535 (= lt!249634 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316483 () SeekEntryResult!5036)

(assert (=> b!547700 (= e!316483 e!316484)))

(declare-fun b!547701 () Bool)

(assert (=> b!547701 (= e!316482 Undefined!5036)))

(declare-fun b!547702 () Bool)

(assert (=> b!547702 (= e!316484 (MissingZero!5036 (index!22373 lt!249635)))))

(declare-fun b!547703 () Bool)

(assert (=> b!547703 (= e!316482 e!316483)))

(assert (=> b!547703 (= lt!249634 (select (arr!16580 a!3118) (index!22373 lt!249635)))))

(declare-fun c!63536 () Bool)

(assert (=> b!547703 (= c!63536 (= lt!249634 k!1914))))

(declare-fun b!547704 () Bool)

(assert (=> b!547704 (= e!316483 (Found!5036 (index!22373 lt!249635)))))

(assert (= (and d!82473 c!63534) b!547701))

(assert (= (and d!82473 (not c!63534)) b!547703))

(assert (= (and b!547703 c!63536) b!547704))

(assert (= (and b!547703 (not c!63536)) b!547700))

