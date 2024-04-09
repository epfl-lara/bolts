; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50086 () Bool)

(assert start!50086)

(declare-fun b!548443 () Bool)

(declare-fun res!341920 () Bool)

(declare-fun e!316828 () Bool)

(assert (=> b!548443 (=> (not res!341920) (not e!316828))))

(declare-datatypes ((array!34577 0))(
  ( (array!34578 (arr!16603 (Array (_ BitVec 32) (_ BitVec 64))) (size!16967 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34577)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548443 (= res!341920 (validKeyInArray!0 (select (arr!16603 a!3118) j!142)))))

(declare-fun b!548444 () Bool)

(declare-fun e!316826 () Bool)

(assert (=> b!548444 (= e!316828 e!316826)))

(declare-fun res!341921 () Bool)

(assert (=> b!548444 (=> (not res!341921) (not e!316826))))

(declare-datatypes ((SeekEntryResult!5059 0))(
  ( (MissingZero!5059 (index!22463 (_ BitVec 32))) (Found!5059 (index!22464 (_ BitVec 32))) (Intermediate!5059 (undefined!5871 Bool) (index!22465 (_ BitVec 32)) (x!51429 (_ BitVec 32))) (Undefined!5059) (MissingVacant!5059 (index!22466 (_ BitVec 32))) )
))
(declare-fun lt!249839 () SeekEntryResult!5059)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548444 (= res!341921 (or (= lt!249839 (MissingZero!5059 i!1132)) (= lt!249839 (MissingVacant!5059 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34577 (_ BitVec 32)) SeekEntryResult!5059)

(assert (=> b!548444 (= lt!249839 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!548445 () Bool)

(declare-fun res!341917 () Bool)

(assert (=> b!548445 (=> (not res!341917) (not e!316826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34577 (_ BitVec 32)) Bool)

(assert (=> b!548445 (= res!341917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548446 () Bool)

(assert (=> b!548446 (= e!316826 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(declare-fun b!548448 () Bool)

(declare-fun res!341914 () Bool)

(assert (=> b!548448 (=> (not res!341914) (not e!316828))))

(assert (=> b!548448 (= res!341914 (and (= (size!16967 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16967 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16967 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548447 () Bool)

(declare-fun res!341915 () Bool)

(assert (=> b!548447 (=> (not res!341915) (not e!316828))))

(assert (=> b!548447 (= res!341915 (validKeyInArray!0 k0!1914))))

(declare-fun res!341919 () Bool)

(assert (=> start!50086 (=> (not res!341919) (not e!316828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50086 (= res!341919 (validMask!0 mask!3119))))

(assert (=> start!50086 e!316828))

(assert (=> start!50086 true))

(declare-fun array_inv!12377 (array!34577) Bool)

(assert (=> start!50086 (array_inv!12377 a!3118)))

(declare-fun b!548449 () Bool)

(declare-fun res!341916 () Bool)

(assert (=> b!548449 (=> (not res!341916) (not e!316828))))

(declare-fun arrayContainsKey!0 (array!34577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548449 (= res!341916 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548450 () Bool)

(declare-fun res!341918 () Bool)

(assert (=> b!548450 (=> (not res!341918) (not e!316826))))

(declare-datatypes ((List!10736 0))(
  ( (Nil!10733) (Cons!10732 (h!11702 (_ BitVec 64)) (t!16972 List!10736)) )
))
(declare-fun arrayNoDuplicates!0 (array!34577 (_ BitVec 32) List!10736) Bool)

(assert (=> b!548450 (= res!341918 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10733))))

(assert (= (and start!50086 res!341919) b!548448))

(assert (= (and b!548448 res!341914) b!548443))

(assert (= (and b!548443 res!341920) b!548447))

(assert (= (and b!548447 res!341915) b!548449))

(assert (= (and b!548449 res!341916) b!548444))

(assert (= (and b!548444 res!341921) b!548445))

(assert (= (and b!548445 res!341917) b!548450))

(assert (= (and b!548450 res!341918) b!548446))

(declare-fun m!525457 () Bool)

(assert (=> b!548449 m!525457))

(declare-fun m!525459 () Bool)

(assert (=> b!548445 m!525459))

(declare-fun m!525461 () Bool)

(assert (=> b!548444 m!525461))

(declare-fun m!525463 () Bool)

(assert (=> b!548443 m!525463))

(assert (=> b!548443 m!525463))

(declare-fun m!525465 () Bool)

(assert (=> b!548443 m!525465))

(declare-fun m!525467 () Bool)

(assert (=> start!50086 m!525467))

(declare-fun m!525469 () Bool)

(assert (=> start!50086 m!525469))

(declare-fun m!525471 () Bool)

(assert (=> b!548447 m!525471))

(declare-fun m!525473 () Bool)

(assert (=> b!548450 m!525473))

(check-sat (not start!50086) (not b!548449) (not b!548444) (not b!548450) (not b!548443) (not b!548445) (not b!548447))
(check-sat)
(get-model)

(declare-fun d!82561 () Bool)

(assert (=> d!82561 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548447 d!82561))

(declare-fun d!82563 () Bool)

(assert (=> d!82563 (= (validKeyInArray!0 (select (arr!16603 a!3118) j!142)) (and (not (= (select (arr!16603 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16603 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548443 d!82563))

(declare-fun d!82565 () Bool)

(assert (=> d!82565 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50086 d!82565))

(declare-fun d!82571 () Bool)

(assert (=> d!82571 (= (array_inv!12377 a!3118) (bvsge (size!16967 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50086 d!82571))

(declare-fun d!82573 () Bool)

(declare-fun res!341952 () Bool)

(declare-fun e!316846 () Bool)

(assert (=> d!82573 (=> res!341952 e!316846)))

(assert (=> d!82573 (= res!341952 (= (select (arr!16603 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82573 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!316846)))

(declare-fun b!548485 () Bool)

(declare-fun e!316847 () Bool)

(assert (=> b!548485 (= e!316846 e!316847)))

(declare-fun res!341953 () Bool)

(assert (=> b!548485 (=> (not res!341953) (not e!316847))))

(assert (=> b!548485 (= res!341953 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16967 a!3118)))))

(declare-fun b!548486 () Bool)

(assert (=> b!548486 (= e!316847 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82573 (not res!341952)) b!548485))

(assert (= (and b!548485 res!341953) b!548486))

(declare-fun m!525493 () Bool)

(assert (=> d!82573 m!525493))

(declare-fun m!525495 () Bool)

(assert (=> b!548486 m!525495))

(assert (=> b!548449 d!82573))

(declare-fun d!82575 () Bool)

(declare-fun lt!249867 () SeekEntryResult!5059)

(get-info :version)

(assert (=> d!82575 (and (or ((_ is Undefined!5059) lt!249867) (not ((_ is Found!5059) lt!249867)) (and (bvsge (index!22464 lt!249867) #b00000000000000000000000000000000) (bvslt (index!22464 lt!249867) (size!16967 a!3118)))) (or ((_ is Undefined!5059) lt!249867) ((_ is Found!5059) lt!249867) (not ((_ is MissingZero!5059) lt!249867)) (and (bvsge (index!22463 lt!249867) #b00000000000000000000000000000000) (bvslt (index!22463 lt!249867) (size!16967 a!3118)))) (or ((_ is Undefined!5059) lt!249867) ((_ is Found!5059) lt!249867) ((_ is MissingZero!5059) lt!249867) (not ((_ is MissingVacant!5059) lt!249867)) (and (bvsge (index!22466 lt!249867) #b00000000000000000000000000000000) (bvslt (index!22466 lt!249867) (size!16967 a!3118)))) (or ((_ is Undefined!5059) lt!249867) (ite ((_ is Found!5059) lt!249867) (= (select (arr!16603 a!3118) (index!22464 lt!249867)) k0!1914) (ite ((_ is MissingZero!5059) lt!249867) (= (select (arr!16603 a!3118) (index!22463 lt!249867)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5059) lt!249867) (= (select (arr!16603 a!3118) (index!22466 lt!249867)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!316894 () SeekEntryResult!5059)

(assert (=> d!82575 (= lt!249867 e!316894)))

(declare-fun c!63609 () Bool)

(declare-fun lt!249868 () SeekEntryResult!5059)

(assert (=> d!82575 (= c!63609 (and ((_ is Intermediate!5059) lt!249868) (undefined!5871 lt!249868)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34577 (_ BitVec 32)) SeekEntryResult!5059)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82575 (= lt!249868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82575 (validMask!0 mask!3119)))

(assert (=> d!82575 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!249867)))

(declare-fun b!548544 () Bool)

(declare-fun e!316893 () SeekEntryResult!5059)

(assert (=> b!548544 (= e!316894 e!316893)))

(declare-fun lt!249869 () (_ BitVec 64))

(assert (=> b!548544 (= lt!249869 (select (arr!16603 a!3118) (index!22465 lt!249868)))))

(declare-fun c!63610 () Bool)

(assert (=> b!548544 (= c!63610 (= lt!249869 k0!1914))))

(declare-fun b!548545 () Bool)

(declare-fun e!316892 () SeekEntryResult!5059)

(assert (=> b!548545 (= e!316892 (MissingZero!5059 (index!22465 lt!249868)))))

(declare-fun b!548546 () Bool)

(assert (=> b!548546 (= e!316894 Undefined!5059)))

(declare-fun b!548547 () Bool)

(declare-fun c!63611 () Bool)

(assert (=> b!548547 (= c!63611 (= lt!249869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!548547 (= e!316893 e!316892)))

(declare-fun b!548548 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34577 (_ BitVec 32)) SeekEntryResult!5059)

(assert (=> b!548548 (= e!316892 (seekKeyOrZeroReturnVacant!0 (x!51429 lt!249868) (index!22465 lt!249868) (index!22465 lt!249868) k0!1914 a!3118 mask!3119))))

(declare-fun b!548549 () Bool)

(assert (=> b!548549 (= e!316893 (Found!5059 (index!22465 lt!249868)))))

(assert (= (and d!82575 c!63609) b!548546))

(assert (= (and d!82575 (not c!63609)) b!548544))

(assert (= (and b!548544 c!63610) b!548549))

(assert (= (and b!548544 (not c!63610)) b!548547))

(assert (= (and b!548547 c!63611) b!548545))

(assert (= (and b!548547 (not c!63611)) b!548548))

(declare-fun m!525529 () Bool)

(assert (=> d!82575 m!525529))

(declare-fun m!525531 () Bool)

(assert (=> d!82575 m!525531))

(declare-fun m!525533 () Bool)

(assert (=> d!82575 m!525533))

(assert (=> d!82575 m!525533))

(declare-fun m!525535 () Bool)

(assert (=> d!82575 m!525535))

(declare-fun m!525537 () Bool)

(assert (=> d!82575 m!525537))

(assert (=> d!82575 m!525467))

(declare-fun m!525539 () Bool)

(assert (=> b!548544 m!525539))

(declare-fun m!525541 () Bool)

(assert (=> b!548548 m!525541))

(assert (=> b!548444 d!82575))

(declare-fun b!548560 () Bool)

(declare-fun e!316903 () Bool)

(declare-fun call!32219 () Bool)

(assert (=> b!548560 (= e!316903 call!32219)))

(declare-fun b!548561 () Bool)

(declare-fun e!316904 () Bool)

(assert (=> b!548561 (= e!316904 e!316903)))

(declare-fun c!63614 () Bool)

(assert (=> b!548561 (= c!63614 (validKeyInArray!0 (select (arr!16603 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32216 () Bool)

(assert (=> bm!32216 (= call!32219 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63614 (Cons!10732 (select (arr!16603 a!3118) #b00000000000000000000000000000000) Nil!10733) Nil!10733)))))

(declare-fun b!548563 () Bool)

(declare-fun e!316906 () Bool)

(assert (=> b!548563 (= e!316906 e!316904)))

(declare-fun res!341991 () Bool)

(assert (=> b!548563 (=> (not res!341991) (not e!316904))))

(declare-fun e!316905 () Bool)

(assert (=> b!548563 (= res!341991 (not e!316905))))

(declare-fun res!341993 () Bool)

(assert (=> b!548563 (=> (not res!341993) (not e!316905))))

(assert (=> b!548563 (= res!341993 (validKeyInArray!0 (select (arr!16603 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548564 () Bool)

(assert (=> b!548564 (= e!316903 call!32219)))

(declare-fun b!548562 () Bool)

(declare-fun contains!2831 (List!10736 (_ BitVec 64)) Bool)

(assert (=> b!548562 (= e!316905 (contains!2831 Nil!10733 (select (arr!16603 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82597 () Bool)

(declare-fun res!341992 () Bool)

(assert (=> d!82597 (=> res!341992 e!316906)))

(assert (=> d!82597 (= res!341992 (bvsge #b00000000000000000000000000000000 (size!16967 a!3118)))))

(assert (=> d!82597 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10733) e!316906)))

(assert (= (and d!82597 (not res!341992)) b!548563))

(assert (= (and b!548563 res!341993) b!548562))

(assert (= (and b!548563 res!341991) b!548561))

(assert (= (and b!548561 c!63614) b!548560))

(assert (= (and b!548561 (not c!63614)) b!548564))

(assert (= (or b!548560 b!548564) bm!32216))

(assert (=> b!548561 m!525493))

(assert (=> b!548561 m!525493))

(declare-fun m!525543 () Bool)

(assert (=> b!548561 m!525543))

(assert (=> bm!32216 m!525493))

(declare-fun m!525545 () Bool)

(assert (=> bm!32216 m!525545))

(assert (=> b!548563 m!525493))

(assert (=> b!548563 m!525493))

(assert (=> b!548563 m!525543))

(assert (=> b!548562 m!525493))

(assert (=> b!548562 m!525493))

(declare-fun m!525547 () Bool)

(assert (=> b!548562 m!525547))

(assert (=> b!548450 d!82597))

(declare-fun b!548585 () Bool)

(declare-fun e!316920 () Bool)

(declare-fun e!316919 () Bool)

(assert (=> b!548585 (= e!316920 e!316919)))

(declare-fun c!63623 () Bool)

(assert (=> b!548585 (= c!63623 (validKeyInArray!0 (select (arr!16603 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548586 () Bool)

(declare-fun e!316921 () Bool)

(declare-fun call!32222 () Bool)

(assert (=> b!548586 (= e!316921 call!32222)))

(declare-fun b!548587 () Bool)

(assert (=> b!548587 (= e!316919 call!32222)))

(declare-fun b!548588 () Bool)

(assert (=> b!548588 (= e!316919 e!316921)))

(declare-fun lt!249884 () (_ BitVec 64))

(assert (=> b!548588 (= lt!249884 (select (arr!16603 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16954 0))(
  ( (Unit!16955) )
))
(declare-fun lt!249882 () Unit!16954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34577 (_ BitVec 64) (_ BitVec 32)) Unit!16954)

(assert (=> b!548588 (= lt!249882 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249884 #b00000000000000000000000000000000))))

(assert (=> b!548588 (arrayContainsKey!0 a!3118 lt!249884 #b00000000000000000000000000000000)))

(declare-fun lt!249883 () Unit!16954)

(assert (=> b!548588 (= lt!249883 lt!249882)))

(declare-fun res!341998 () Bool)

(assert (=> b!548588 (= res!341998 (= (seekEntryOrOpen!0 (select (arr!16603 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5059 #b00000000000000000000000000000000)))))

(assert (=> b!548588 (=> (not res!341998) (not e!316921))))

(declare-fun bm!32219 () Bool)

(assert (=> bm!32219 (= call!32222 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!82603 () Bool)

(declare-fun res!341999 () Bool)

(assert (=> d!82603 (=> res!341999 e!316920)))

(assert (=> d!82603 (= res!341999 (bvsge #b00000000000000000000000000000000 (size!16967 a!3118)))))

(assert (=> d!82603 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316920)))

(assert (= (and d!82603 (not res!341999)) b!548585))

(assert (= (and b!548585 c!63623) b!548588))

(assert (= (and b!548585 (not c!63623)) b!548587))

(assert (= (and b!548588 res!341998) b!548586))

(assert (= (or b!548586 b!548587) bm!32219))

(assert (=> b!548585 m!525493))

(assert (=> b!548585 m!525493))

(assert (=> b!548585 m!525543))

(assert (=> b!548588 m!525493))

(declare-fun m!525549 () Bool)

(assert (=> b!548588 m!525549))

(declare-fun m!525551 () Bool)

(assert (=> b!548588 m!525551))

(assert (=> b!548588 m!525493))

(declare-fun m!525553 () Bool)

(assert (=> b!548588 m!525553))

(declare-fun m!525555 () Bool)

(assert (=> bm!32219 m!525555))

(assert (=> b!548445 d!82603))

(check-sat (not b!548486) (not b!548548) (not b!548562) (not bm!32216) (not d!82575) (not bm!32219) (not b!548561) (not b!548563) (not b!548585) (not b!548588))
(check-sat)
