; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49946 () Bool)

(assert start!49946)

(declare-fun b!547537 () Bool)

(declare-fun res!341186 () Bool)

(declare-fun e!316387 () Bool)

(assert (=> b!547537 (=> (not res!341186) (not e!316387))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547537 (= res!341186 (validKeyInArray!0 k!1914))))

(declare-fun b!547538 () Bool)

(declare-fun res!341189 () Bool)

(declare-fun e!316385 () Bool)

(assert (=> b!547538 (=> (not res!341189) (not e!316385))))

(declare-datatypes ((array!34521 0))(
  ( (array!34522 (arr!16578 (Array (_ BitVec 32) (_ BitVec 64))) (size!16942 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34521)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34521 (_ BitVec 32)) Bool)

(assert (=> b!547538 (= res!341189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547539 () Bool)

(declare-fun res!341190 () Bool)

(assert (=> b!547539 (=> (not res!341190) (not e!316387))))

(declare-fun arrayContainsKey!0 (array!34521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547539 (= res!341190 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547540 () Bool)

(assert (=> b!547540 (= e!316387 e!316385)))

(declare-fun res!341187 () Bool)

(assert (=> b!547540 (=> (not res!341187) (not e!316385))))

(declare-datatypes ((SeekEntryResult!5034 0))(
  ( (MissingZero!5034 (index!22363 (_ BitVec 32))) (Found!5034 (index!22364 (_ BitVec 32))) (Intermediate!5034 (undefined!5846 Bool) (index!22365 (_ BitVec 32)) (x!51337 (_ BitVec 32))) (Undefined!5034) (MissingVacant!5034 (index!22366 (_ BitVec 32))) )
))
(declare-fun lt!249584 () SeekEntryResult!5034)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547540 (= res!341187 (or (= lt!249584 (MissingZero!5034 i!1132)) (= lt!249584 (MissingVacant!5034 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34521 (_ BitVec 32)) SeekEntryResult!5034)

(assert (=> b!547540 (= lt!249584 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!547541 () Bool)

(declare-fun res!341191 () Bool)

(assert (=> b!547541 (=> (not res!341191) (not e!316387))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547541 (= res!341191 (validKeyInArray!0 (select (arr!16578 a!3118) j!142)))))

(declare-fun b!547542 () Bool)

(declare-fun res!341185 () Bool)

(assert (=> b!547542 (=> (not res!341185) (not e!316387))))

(assert (=> b!547542 (= res!341185 (and (= (size!16942 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16942 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16942 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!341192 () Bool)

(assert (=> start!49946 (=> (not res!341192) (not e!316387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49946 (= res!341192 (validMask!0 mask!3119))))

(assert (=> start!49946 e!316387))

(assert (=> start!49946 true))

(declare-fun array_inv!12352 (array!34521) Bool)

(assert (=> start!49946 (array_inv!12352 a!3118)))

(declare-fun b!547543 () Bool)

(declare-fun res!341188 () Bool)

(assert (=> b!547543 (=> (not res!341188) (not e!316385))))

(declare-datatypes ((List!10711 0))(
  ( (Nil!10708) (Cons!10707 (h!11674 (_ BitVec 64)) (t!16947 List!10711)) )
))
(declare-fun arrayNoDuplicates!0 (array!34521 (_ BitVec 32) List!10711) Bool)

(assert (=> b!547543 (= res!341188 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10708))))

(declare-fun b!547544 () Bool)

(assert (=> b!547544 (= e!316385 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(assert (= (and start!49946 res!341192) b!547542))

(assert (= (and b!547542 res!341185) b!547541))

(assert (= (and b!547541 res!341191) b!547537))

(assert (= (and b!547537 res!341186) b!547539))

(assert (= (and b!547539 res!341190) b!547540))

(assert (= (and b!547540 res!341187) b!547538))

(assert (= (and b!547538 res!341189) b!547543))

(assert (= (and b!547543 res!341188) b!547544))

(declare-fun m!524779 () Bool)

(assert (=> b!547541 m!524779))

(assert (=> b!547541 m!524779))

(declare-fun m!524781 () Bool)

(assert (=> b!547541 m!524781))

(declare-fun m!524783 () Bool)

(assert (=> b!547540 m!524783))

(declare-fun m!524785 () Bool)

(assert (=> b!547539 m!524785))

(declare-fun m!524787 () Bool)

(assert (=> b!547537 m!524787))

(declare-fun m!524789 () Bool)

(assert (=> b!547543 m!524789))

(declare-fun m!524791 () Bool)

(assert (=> start!49946 m!524791))

(declare-fun m!524793 () Bool)

(assert (=> start!49946 m!524793))

(declare-fun m!524795 () Bool)

(assert (=> b!547538 m!524795))

(push 1)

(assert (not b!547541))

(assert (not b!547543))

(assert (not b!547540))

(assert (not start!49946))

(assert (not b!547537))

(assert (not b!547538))

(assert (not b!547539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!547621 () Bool)

(declare-fun e!316429 () Bool)

(declare-fun call!32179 () Bool)

(assert (=> b!547621 (= e!316429 call!32179)))

(declare-fun bm!32176 () Bool)

(assert (=> bm!32176 (= call!32179 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!547622 () Bool)

(declare-fun e!316428 () Bool)

(assert (=> b!547622 (= e!316428 call!32179)))

(declare-fun b!547623 () Bool)

(assert (=> b!547623 (= e!316429 e!316428)))

(declare-fun lt!249614 () (_ BitVec 64))

(assert (=> b!547623 (= lt!249614 (select (arr!16578 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16940 0))(
  ( (Unit!16941) )
))
(declare-fun lt!249612 () Unit!16940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34521 (_ BitVec 64) (_ BitVec 32)) Unit!16940)

(assert (=> b!547623 (= lt!249612 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249614 #b00000000000000000000000000000000))))

(assert (=> b!547623 (arrayContainsKey!0 a!3118 lt!249614 #b00000000000000000000000000000000)))

(declare-fun lt!249613 () Unit!16940)

(assert (=> b!547623 (= lt!249613 lt!249612)))

(declare-fun res!341255 () Bool)

(assert (=> b!547623 (= res!341255 (= (seekEntryOrOpen!0 (select (arr!16578 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5034 #b00000000000000000000000000000000)))))

(assert (=> b!547623 (=> (not res!341255) (not e!316428))))

(declare-fun b!547624 () Bool)

(declare-fun e!316427 () Bool)

(assert (=> b!547624 (= e!316427 e!316429)))

(declare-fun c!63511 () Bool)

(assert (=> b!547624 (= c!63511 (validKeyInArray!0 (select (arr!16578 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82445 () Bool)

(declare-fun res!341256 () Bool)

(assert (=> d!82445 (=> res!341256 e!316427)))

(assert (=> d!82445 (= res!341256 (bvsge #b00000000000000000000000000000000 (size!16942 a!3118)))))

(assert (=> d!82445 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316427)))

(assert (= (and d!82445 (not res!341256)) b!547624))

(assert (= (and b!547624 c!63511) b!547623))

(assert (= (and b!547624 (not c!63511)) b!547621))

(assert (= (and b!547623 res!341255) b!547622))

(assert (= (or b!547622 b!547621) bm!32176))

(declare-fun m!524845 () Bool)

(assert (=> bm!32176 m!524845))

(declare-fun m!524847 () Bool)

(assert (=> b!547623 m!524847))

(declare-fun m!524849 () Bool)

(assert (=> b!547623 m!524849))

(declare-fun m!524851 () Bool)

(assert (=> b!547623 m!524851))

(assert (=> b!547623 m!524847))

(declare-fun m!524853 () Bool)

(assert (=> b!547623 m!524853))

(assert (=> b!547624 m!524847))

(assert (=> b!547624 m!524847))

(declare-fun m!524855 () Bool)

(assert (=> b!547624 m!524855))

(assert (=> b!547538 d!82445))

(declare-fun d!82451 () Bool)

(declare-fun res!341263 () Bool)

(declare-fun e!316437 () Bool)

(assert (=> d!82451 (=> res!341263 e!316437)))

(assert (=> d!82451 (= res!341263 (= (select (arr!16578 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82451 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316437)))

(declare-fun b!547633 () Bool)

(declare-fun e!316438 () Bool)

(assert (=> b!547633 (= e!316437 e!316438)))

(declare-fun res!341264 () Bool)

(assert (=> b!547633 (=> (not res!341264) (not e!316438))))

(assert (=> b!547633 (= res!341264 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16942 a!3118)))))

(declare-fun b!547634 () Bool)

(assert (=> b!547634 (= e!316438 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82451 (not res!341263)) b!547633))

(assert (= (and b!547633 res!341264) b!547634))

(assert (=> d!82451 m!524847))

(declare-fun m!524869 () Bool)

(assert (=> b!547634 m!524869))

(assert (=> b!547539 d!82451))

(declare-fun d!82461 () Bool)

(assert (=> d!82461 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547537 d!82461))

(declare-fun d!82465 () Bool)

(declare-fun res!341281 () Bool)

(declare-fun e!316460 () Bool)

(assert (=> d!82465 (=> res!341281 e!316460)))

(assert (=> d!82465 (= res!341281 (bvsge #b00000000000000000000000000000000 (size!16942 a!3118)))))

(assert (=> d!82465 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10708) e!316460)))

(declare-fun b!547660 () Bool)

(declare-fun e!316459 () Bool)

(assert (=> b!547660 (= e!316460 e!316459)))

(declare-fun res!341280 () Bool)

(assert (=> b!547660 (=> (not res!341280) (not e!316459))))

(declare-fun e!316461 () Bool)

(assert (=> b!547660 (= res!341280 (not e!316461))))

(declare-fun res!341282 () Bool)

(assert (=> b!547660 (=> (not res!341282) (not e!316461))))

(assert (=> b!547660 (= res!341282 (validKeyInArray!0 (select (arr!16578 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547661 () Bool)

(declare-fun e!316462 () Bool)

(assert (=> b!547661 (= e!316459 e!316462)))

(declare-fun c!63518 () Bool)

(assert (=> b!547661 (= c!63518 (validKeyInArray!0 (select (arr!16578 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!547662 () Bool)

(declare-fun call!32186 () Bool)

(assert (=> b!547662 (= e!316462 call!32186)))

(declare-fun bm!32183 () Bool)

(assert (=> bm!32183 (= call!32186 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63518 (Cons!10707 (select (arr!16578 a!3118) #b00000000000000000000000000000000) Nil!10708) Nil!10708)))))

(declare-fun b!547663 () Bool)

(assert (=> b!547663 (= e!316462 call!32186)))

(declare-fun b!547664 () Bool)

(declare-fun contains!2827 (List!10711 (_ BitVec 64)) Bool)

(assert (=> b!547664 (= e!316461 (contains!2827 Nil!10708 (select (arr!16578 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82465 (not res!341281)) b!547660))

(assert (= (and b!547660 res!341282) b!547664))

(assert (= (and b!547660 res!341280) b!547661))

(assert (= (and b!547661 c!63518) b!547663))

(assert (= (and b!547661 (not c!63518)) b!547662))

(assert (= (or b!547663 b!547662) bm!32183))

(assert (=> b!547660 m!524847))

(assert (=> b!547660 m!524847))

(assert (=> b!547660 m!524855))

(assert (=> b!547661 m!524847))

(assert (=> b!547661 m!524847))

(assert (=> b!547661 m!524855))

(assert (=> bm!32183 m!524847))

(declare-fun m!524875 () Bool)

(assert (=> bm!32183 m!524875))

(assert (=> b!547664 m!524847))

(assert (=> b!547664 m!524847))

(declare-fun m!524877 () Bool)

(assert (=> b!547664 m!524877))

(assert (=> b!547543 d!82465))

(declare-fun d!82469 () Bool)

(assert (=> d!82469 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!49946 d!82469))

(declare-fun d!82475 () Bool)

(assert (=> d!82475 (= (array_inv!12352 a!3118) (bvsge (size!16942 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!49946 d!82475))

(declare-fun d!82477 () Bool)

(assert (=> d!82477 (= (validKeyInArray!0 (select (arr!16578 a!3118) j!142)) (and (not (= (select (arr!16578 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16578 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!547541 d!82477))

(declare-fun b!547735 () Bool)

(declare-fun e!316507 () SeekEntryResult!5034)

(declare-fun lt!249643 () SeekEntryResult!5034)

(assert (=> b!547735 (= e!316507 (Found!5034 (index!22365 lt!249643)))))

(declare-fun b!547736 () Bool)

(declare-fun e!316509 () SeekEntryResult!5034)

(assert (=> b!547736 (= e!316509 Undefined!5034)))

(declare-fun b!547737 () Bool)

(declare-fun e!316508 () SeekEntryResult!5034)

(assert (=> b!547737 (= e!316508 (MissingZero!5034 (index!22365 lt!249643)))))

(declare-fun d!82479 () Bool)

(declare-fun lt!249644 () SeekEntryResult!5034)

(assert (=> d!82479 (and (or (is-Undefined!5034 lt!249644) (not (is-Found!5034 lt!249644)) (and (bvsge (index!22364 lt!249644) #b00000000000000000000000000000000) (bvslt (index!22364 lt!249644) (size!16942 a!3118)))) (or (is-Undefined!5034 lt!249644) (is-Found!5034 lt!249644) (not (is-MissingZero!5034 lt!249644)) (and (bvsge (index!22363 lt!249644) #b00000000000000000000000000000000) (bvslt (index!22363 lt!249644) (size!16942 a!3118)))) (or (is-Undefined!5034 lt!249644) (is-Found!5034 lt!249644) (is-MissingZero!5034 lt!249644) (not (is-MissingVacant!5034 lt!249644)) (and (bvsge (index!22366 lt!249644) #b00000000000000000000000000000000) (bvslt (index!22366 lt!249644) (size!16942 a!3118)))) (or (is-Undefined!5034 lt!249644) (ite (is-Found!5034 lt!249644) (= (select (arr!16578 a!3118) (index!22364 lt!249644)) k!1914) (ite (is-MissingZero!5034 lt!249644) (= (select (arr!16578 a!3118) (index!22363 lt!249644)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5034 lt!249644) (= (select (arr!16578 a!3118) (index!22366 lt!249644)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82479 (= lt!249644 e!316509)))

(declare-fun c!63545 () Bool)

(assert (=> d!82479 (= c!63545 (and (is-Intermediate!5034 lt!249643) (undefined!5846 lt!249643)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34521 (_ BitVec 32)) SeekEntryResult!5034)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82479 (= lt!249643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82479 (validMask!0 mask!3119)))

(assert (=> d!82479 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249644)))

(declare-fun b!547738 () Bool)

(assert (=> b!547738 (= e!316509 e!316507)))

(declare-fun lt!249642 () (_ BitVec 64))

(assert (=> b!547738 (= lt!249642 (select (arr!16578 a!3118) (index!22365 lt!249643)))))

(declare-fun c!63546 () Bool)

(assert (=> b!547738 (= c!63546 (= lt!249642 k!1914))))

(declare-fun b!547739 () Bool)

(declare-fun c!63547 () Bool)

(assert (=> b!547739 (= c!63547 (= lt!249642 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!547739 (= e!316507 e!316508)))

(declare-fun b!547740 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34521 (_ BitVec 32)) SeekEntryResult!5034)

(assert (=> b!547740 (= e!316508 (seekKeyOrZeroReturnVacant!0 (x!51337 lt!249643) (index!22365 lt!249643) (index!22365 lt!249643) k!1914 a!3118 mask!3119))))

(assert (= (and d!82479 c!63545) b!547736))

(assert (= (and d!82479 (not c!63545)) b!547738))

(assert (= (and b!547738 c!63546) b!547735))

(assert (= (and b!547738 (not c!63546)) b!547739))

(assert (= (and b!547739 c!63547) b!547737))

(assert (= (and b!547739 (not c!63547)) b!547740))

(declare-fun m!524911 () Bool)

(assert (=> d!82479 m!524911))

(declare-fun m!524913 () Bool)

(assert (=> d!82479 m!524913))

(assert (=> d!82479 m!524791))

(declare-fun m!524915 () Bool)

(assert (=> d!82479 m!524915))

(declare-fun m!524917 () Bool)

(assert (=> d!82479 m!524917))

(declare-fun m!524919 () Bool)

(assert (=> d!82479 m!524919))

(assert (=> d!82479 m!524917))

(declare-fun m!524921 () Bool)

