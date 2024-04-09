; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49948 () Bool)

(assert start!49948)

(declare-fun res!341212 () Bool)

(declare-fun e!316394 () Bool)

(assert (=> start!49948 (=> (not res!341212) (not e!316394))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49948 (= res!341212 (validMask!0 mask!3119))))

(assert (=> start!49948 e!316394))

(assert (=> start!49948 true))

(declare-datatypes ((array!34523 0))(
  ( (array!34524 (arr!16579 (Array (_ BitVec 32) (_ BitVec 64))) (size!16943 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34523)

(declare-fun array_inv!12353 (array!34523) Bool)

(assert (=> start!49948 (array_inv!12353 a!3118)))

(declare-fun b!547561 () Bool)

(declare-fun res!341211 () Bool)

(assert (=> b!547561 (=> (not res!341211) (not e!316394))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547561 (= res!341211 (and (= (size!16943 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16943 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16943 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547562 () Bool)

(declare-fun res!341213 () Bool)

(declare-fun e!316396 () Bool)

(assert (=> b!547562 (=> (not res!341213) (not e!316396))))

(declare-datatypes ((List!10712 0))(
  ( (Nil!10709) (Cons!10708 (h!11675 (_ BitVec 64)) (t!16948 List!10712)) )
))
(declare-fun arrayNoDuplicates!0 (array!34523 (_ BitVec 32) List!10712) Bool)

(assert (=> b!547562 (= res!341213 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10709))))

(declare-fun b!547563 () Bool)

(declare-fun res!341215 () Bool)

(assert (=> b!547563 (=> (not res!341215) (not e!316394))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547563 (= res!341215 (validKeyInArray!0 k0!1914))))

(declare-fun b!547564 () Bool)

(declare-fun res!341210 () Bool)

(assert (=> b!547564 (=> (not res!341210) (not e!316394))))

(declare-fun arrayContainsKey!0 (array!34523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547564 (= res!341210 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547565 () Bool)

(declare-fun res!341216 () Bool)

(assert (=> b!547565 (=> (not res!341216) (not e!316394))))

(assert (=> b!547565 (= res!341216 (validKeyInArray!0 (select (arr!16579 a!3118) j!142)))))

(declare-fun b!547566 () Bool)

(assert (=> b!547566 (= e!316394 e!316396)))

(declare-fun res!341214 () Bool)

(assert (=> b!547566 (=> (not res!341214) (not e!316396))))

(declare-datatypes ((SeekEntryResult!5035 0))(
  ( (MissingZero!5035 (index!22367 (_ BitVec 32))) (Found!5035 (index!22368 (_ BitVec 32))) (Intermediate!5035 (undefined!5847 Bool) (index!22369 (_ BitVec 32)) (x!51338 (_ BitVec 32))) (Undefined!5035) (MissingVacant!5035 (index!22370 (_ BitVec 32))) )
))
(declare-fun lt!249587 () SeekEntryResult!5035)

(assert (=> b!547566 (= res!341214 (or (= lt!249587 (MissingZero!5035 i!1132)) (= lt!249587 (MissingVacant!5035 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34523 (_ BitVec 32)) SeekEntryResult!5035)

(assert (=> b!547566 (= lt!249587 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!547567 () Bool)

(declare-fun res!341209 () Bool)

(assert (=> b!547567 (=> (not res!341209) (not e!316396))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34523 (_ BitVec 32)) Bool)

(assert (=> b!547567 (= res!341209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547568 () Bool)

(assert (=> b!547568 (= e!316396 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(assert (= (and start!49948 res!341212) b!547561))

(assert (= (and b!547561 res!341211) b!547565))

(assert (= (and b!547565 res!341216) b!547563))

(assert (= (and b!547563 res!341215) b!547564))

(assert (= (and b!547564 res!341210) b!547566))

(assert (= (and b!547566 res!341214) b!547567))

(assert (= (and b!547567 res!341209) b!547562))

(assert (= (and b!547562 res!341213) b!547568))

(declare-fun m!524797 () Bool)

(assert (=> b!547565 m!524797))

(assert (=> b!547565 m!524797))

(declare-fun m!524799 () Bool)

(assert (=> b!547565 m!524799))

(declare-fun m!524801 () Bool)

(assert (=> b!547567 m!524801))

(declare-fun m!524803 () Bool)

(assert (=> b!547566 m!524803))

(declare-fun m!524805 () Bool)

(assert (=> b!547562 m!524805))

(declare-fun m!524807 () Bool)

(assert (=> b!547564 m!524807))

(declare-fun m!524809 () Bool)

(assert (=> b!547563 m!524809))

(declare-fun m!524811 () Bool)

(assert (=> start!49948 m!524811))

(declare-fun m!524813 () Bool)

(assert (=> start!49948 m!524813))

(check-sat (not b!547564) (not start!49948) (not b!547563) (not b!547566) (not b!547567) (not b!547562) (not b!547565))
(check-sat)
(get-model)

(declare-fun b!547601 () Bool)

(declare-fun e!316412 () Bool)

(declare-fun call!32174 () Bool)

(assert (=> b!547601 (= e!316412 call!32174)))

(declare-fun b!547602 () Bool)

(declare-fun e!316413 () Bool)

(assert (=> b!547602 (= e!316413 call!32174)))

(declare-fun b!547603 () Bool)

(declare-fun e!316414 () Bool)

(assert (=> b!547603 (= e!316414 e!316413)))

(declare-fun c!63506 () Bool)

(assert (=> b!547603 (= c!63506 (validKeyInArray!0 (select (arr!16579 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82443 () Bool)

(declare-fun res!341245 () Bool)

(assert (=> d!82443 (=> res!341245 e!316414)))

(assert (=> d!82443 (= res!341245 (bvsge #b00000000000000000000000000000000 (size!16943 a!3118)))))

(assert (=> d!82443 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316414)))

(declare-fun b!547604 () Bool)

(assert (=> b!547604 (= e!316413 e!316412)))

(declare-fun lt!249598 () (_ BitVec 64))

(assert (=> b!547604 (= lt!249598 (select (arr!16579 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16938 0))(
  ( (Unit!16939) )
))
(declare-fun lt!249597 () Unit!16938)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34523 (_ BitVec 64) (_ BitVec 32)) Unit!16938)

(assert (=> b!547604 (= lt!249597 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249598 #b00000000000000000000000000000000))))

(assert (=> b!547604 (arrayContainsKey!0 a!3118 lt!249598 #b00000000000000000000000000000000)))

(declare-fun lt!249599 () Unit!16938)

(assert (=> b!547604 (= lt!249599 lt!249597)))

(declare-fun res!341246 () Bool)

(assert (=> b!547604 (= res!341246 (= (seekEntryOrOpen!0 (select (arr!16579 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5035 #b00000000000000000000000000000000)))))

(assert (=> b!547604 (=> (not res!341246) (not e!316412))))

(declare-fun bm!32171 () Bool)

(assert (=> bm!32171 (= call!32174 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!82443 (not res!341245)) b!547603))

(assert (= (and b!547603 c!63506) b!547604))

(assert (= (and b!547603 (not c!63506)) b!547602))

(assert (= (and b!547604 res!341246) b!547601))

(assert (= (or b!547601 b!547602) bm!32171))

(declare-fun m!524833 () Bool)

(assert (=> b!547603 m!524833))

(assert (=> b!547603 m!524833))

(declare-fun m!524835 () Bool)

(assert (=> b!547603 m!524835))

(assert (=> b!547604 m!524833))

(declare-fun m!524837 () Bool)

(assert (=> b!547604 m!524837))

(declare-fun m!524839 () Bool)

(assert (=> b!547604 m!524839))

(assert (=> b!547604 m!524833))

(declare-fun m!524841 () Bool)

(assert (=> b!547604 m!524841))

(declare-fun m!524843 () Bool)

(assert (=> bm!32171 m!524843))

(assert (=> b!547567 d!82443))

(declare-fun d!82449 () Bool)

(assert (=> d!82449 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49948 d!82449))

(declare-fun d!82455 () Bool)

(assert (=> d!82455 (= (array_inv!12353 a!3118) (bvsge (size!16943 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49948 d!82455))

(declare-fun b!547655 () Bool)

(declare-fun e!316457 () Bool)

(declare-fun contains!2826 (List!10712 (_ BitVec 64)) Bool)

(assert (=> b!547655 (= e!316457 (contains!2826 Nil!10709 (select (arr!16579 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547656 () Bool)

(declare-fun e!316456 () Bool)

(declare-fun call!32185 () Bool)

(assert (=> b!547656 (= e!316456 call!32185)))

(declare-fun d!82463 () Bool)

(declare-fun res!341277 () Bool)

(declare-fun e!316458 () Bool)

(assert (=> d!82463 (=> res!341277 e!316458)))

(assert (=> d!82463 (= res!341277 (bvsge #b00000000000000000000000000000000 (size!16943 a!3118)))))

(assert (=> d!82463 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10709) e!316458)))

(declare-fun b!547657 () Bool)

(declare-fun e!316455 () Bool)

(assert (=> b!547657 (= e!316455 e!316456)))

(declare-fun c!63517 () Bool)

(assert (=> b!547657 (= c!63517 (validKeyInArray!0 (select (arr!16579 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547658 () Bool)

(assert (=> b!547658 (= e!316458 e!316455)))

(declare-fun res!341278 () Bool)

(assert (=> b!547658 (=> (not res!341278) (not e!316455))))

(assert (=> b!547658 (= res!341278 (not e!316457))))

(declare-fun res!341279 () Bool)

(assert (=> b!547658 (=> (not res!341279) (not e!316457))))

(assert (=> b!547658 (= res!341279 (validKeyInArray!0 (select (arr!16579 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547659 () Bool)

(assert (=> b!547659 (= e!316456 call!32185)))

(declare-fun bm!32182 () Bool)

(assert (=> bm!32182 (= call!32185 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63517 (Cons!10708 (select (arr!16579 a!3118) #b00000000000000000000000000000000) Nil!10709) Nil!10709)))))

(assert (= (and d!82463 (not res!341277)) b!547658))

(assert (= (and b!547658 res!341279) b!547655))

(assert (= (and b!547658 res!341278) b!547657))

(assert (= (and b!547657 c!63517) b!547656))

(assert (= (and b!547657 (not c!63517)) b!547659))

(assert (= (or b!547656 b!547659) bm!32182))

(assert (=> b!547655 m!524833))

(assert (=> b!547655 m!524833))

(declare-fun m!524871 () Bool)

(assert (=> b!547655 m!524871))

(assert (=> b!547657 m!524833))

(assert (=> b!547657 m!524833))

(assert (=> b!547657 m!524835))

(assert (=> b!547658 m!524833))

(assert (=> b!547658 m!524833))

(assert (=> b!547658 m!524835))

(assert (=> bm!32182 m!524833))

(declare-fun m!524873 () Bool)

(assert (=> bm!32182 m!524873))

(assert (=> b!547562 d!82463))

(declare-fun b!547689 () Bool)

(declare-fun e!316475 () SeekEntryResult!5035)

(declare-fun e!316477 () SeekEntryResult!5035)

(assert (=> b!547689 (= e!316475 e!316477)))

(declare-fun lt!249631 () (_ BitVec 64))

(declare-fun lt!249632 () SeekEntryResult!5035)

(assert (=> b!547689 (= lt!249631 (select (arr!16579 a!3118) (index!22369 lt!249632)))))

(declare-fun c!63533 () Bool)

(assert (=> b!547689 (= c!63533 (= lt!249631 k0!1914))))

(declare-fun d!82467 () Bool)

(declare-fun lt!249630 () SeekEntryResult!5035)

(get-info :version)

(assert (=> d!82467 (and (or ((_ is Undefined!5035) lt!249630) (not ((_ is Found!5035) lt!249630)) (and (bvsge (index!22368 lt!249630) #b00000000000000000000000000000000) (bvslt (index!22368 lt!249630) (size!16943 a!3118)))) (or ((_ is Undefined!5035) lt!249630) ((_ is Found!5035) lt!249630) (not ((_ is MissingZero!5035) lt!249630)) (and (bvsge (index!22367 lt!249630) #b00000000000000000000000000000000) (bvslt (index!22367 lt!249630) (size!16943 a!3118)))) (or ((_ is Undefined!5035) lt!249630) ((_ is Found!5035) lt!249630) ((_ is MissingZero!5035) lt!249630) (not ((_ is MissingVacant!5035) lt!249630)) (and (bvsge (index!22370 lt!249630) #b00000000000000000000000000000000) (bvslt (index!22370 lt!249630) (size!16943 a!3118)))) (or ((_ is Undefined!5035) lt!249630) (ite ((_ is Found!5035) lt!249630) (= (select (arr!16579 a!3118) (index!22368 lt!249630)) k0!1914) (ite ((_ is MissingZero!5035) lt!249630) (= (select (arr!16579 a!3118) (index!22367 lt!249630)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5035) lt!249630) (= (select (arr!16579 a!3118) (index!22370 lt!249630)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82467 (= lt!249630 e!316475)))

(declare-fun c!63532 () Bool)

(assert (=> d!82467 (= c!63532 (and ((_ is Intermediate!5035) lt!249632) (undefined!5847 lt!249632)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34523 (_ BitVec 32)) SeekEntryResult!5035)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82467 (= lt!249632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82467 (validMask!0 mask!3119)))

(assert (=> d!82467 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!249630)))

(declare-fun b!547690 () Bool)

(declare-fun c!63531 () Bool)

(assert (=> b!547690 (= c!63531 (= lt!249631 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316476 () SeekEntryResult!5035)

(assert (=> b!547690 (= e!316477 e!316476)))

(declare-fun b!547691 () Bool)

(assert (=> b!547691 (= e!316477 (Found!5035 (index!22369 lt!249632)))))

(declare-fun b!547692 () Bool)

(assert (=> b!547692 (= e!316476 (MissingZero!5035 (index!22369 lt!249632)))))

(declare-fun b!547693 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34523 (_ BitVec 32)) SeekEntryResult!5035)

(assert (=> b!547693 (= e!316476 (seekKeyOrZeroReturnVacant!0 (x!51338 lt!249632) (index!22369 lt!249632) (index!22369 lt!249632) k0!1914 a!3118 mask!3119))))

(declare-fun b!547694 () Bool)

(assert (=> b!547694 (= e!316475 Undefined!5035)))

(assert (= (and d!82467 c!63532) b!547694))

(assert (= (and d!82467 (not c!63532)) b!547689))

(assert (= (and b!547689 c!63533) b!547691))

(assert (= (and b!547689 (not c!63533)) b!547690))

(assert (= (and b!547690 c!63531) b!547692))

(assert (= (and b!547690 (not c!63531)) b!547693))

(declare-fun m!524879 () Bool)

(assert (=> b!547689 m!524879))

(assert (=> d!82467 m!524811))

(declare-fun m!524881 () Bool)

(assert (=> d!82467 m!524881))

(declare-fun m!524883 () Bool)

(assert (=> d!82467 m!524883))

(assert (=> d!82467 m!524883))

(declare-fun m!524885 () Bool)

(assert (=> d!82467 m!524885))

(declare-fun m!524887 () Bool)

(assert (=> d!82467 m!524887))

(declare-fun m!524889 () Bool)

(assert (=> d!82467 m!524889))

(declare-fun m!524891 () Bool)

(assert (=> b!547693 m!524891))

(assert (=> b!547566 d!82467))

(declare-fun d!82481 () Bool)

(declare-fun res!341287 () Bool)

(declare-fun e!316485 () Bool)

(assert (=> d!82481 (=> res!341287 e!316485)))

(assert (=> d!82481 (= res!341287 (= (select (arr!16579 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82481 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!316485)))

(declare-fun b!547705 () Bool)

(declare-fun e!316486 () Bool)

(assert (=> b!547705 (= e!316485 e!316486)))

(declare-fun res!341288 () Bool)

(assert (=> b!547705 (=> (not res!341288) (not e!316486))))

(assert (=> b!547705 (= res!341288 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16943 a!3118)))))

(declare-fun b!547706 () Bool)

(assert (=> b!547706 (= e!316486 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82481 (not res!341287)) b!547705))

(assert (= (and b!547705 res!341288) b!547706))

(assert (=> d!82481 m!524833))

(declare-fun m!524907 () Bool)

(assert (=> b!547706 m!524907))

(assert (=> b!547564 d!82481))

(declare-fun d!82485 () Bool)

(assert (=> d!82485 (= (validKeyInArray!0 (select (arr!16579 a!3118) j!142)) (and (not (= (select (arr!16579 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16579 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547565 d!82485))

(declare-fun d!82487 () Bool)

(assert (=> d!82487 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547563 d!82487))

(check-sat (not b!547706) (not bm!32182) (not d!82467) (not b!547658) (not b!547655) (not b!547693) (not bm!32171) (not b!547603) (not b!547657) (not b!547604))
(check-sat)
