; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50088 () Bool)

(assert start!50088)

(declare-fun b!548467 () Bool)

(declare-fun res!341944 () Bool)

(declare-fun e!316837 () Bool)

(assert (=> b!548467 (=> (not res!341944) (not e!316837))))

(declare-datatypes ((array!34579 0))(
  ( (array!34580 (arr!16604 (Array (_ BitVec 32) (_ BitVec 64))) (size!16968 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34579)

(declare-datatypes ((List!10737 0))(
  ( (Nil!10734) (Cons!10733 (h!11703 (_ BitVec 64)) (t!16973 List!10737)) )
))
(declare-fun arrayNoDuplicates!0 (array!34579 (_ BitVec 32) List!10737) Bool)

(assert (=> b!548467 (= res!341944 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10734))))

(declare-fun b!548468 () Bool)

(declare-fun e!316836 () Bool)

(assert (=> b!548468 (= e!316836 e!316837)))

(declare-fun res!341938 () Bool)

(assert (=> b!548468 (=> (not res!341938) (not e!316837))))

(declare-datatypes ((SeekEntryResult!5060 0))(
  ( (MissingZero!5060 (index!22467 (_ BitVec 32))) (Found!5060 (index!22468 (_ BitVec 32))) (Intermediate!5060 (undefined!5872 Bool) (index!22469 (_ BitVec 32)) (x!51430 (_ BitVec 32))) (Undefined!5060) (MissingVacant!5060 (index!22470 (_ BitVec 32))) )
))
(declare-fun lt!249842 () SeekEntryResult!5060)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548468 (= res!341938 (or (= lt!249842 (MissingZero!5060 i!1132)) (= lt!249842 (MissingVacant!5060 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34579 (_ BitVec 32)) SeekEntryResult!5060)

(assert (=> b!548468 (= lt!249842 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548469 () Bool)

(declare-fun res!341943 () Bool)

(assert (=> b!548469 (=> (not res!341943) (not e!316836))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!548469 (= res!341943 (and (= (size!16968 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16968 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16968 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548470 () Bool)

(declare-fun res!341939 () Bool)

(assert (=> b!548470 (=> (not res!341939) (not e!316837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34579 (_ BitVec 32)) Bool)

(assert (=> b!548470 (= res!341939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548471 () Bool)

(declare-fun res!341945 () Bool)

(assert (=> b!548471 (=> (not res!341945) (not e!316836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548471 (= res!341945 (validKeyInArray!0 k!1914))))

(declare-fun b!548472 () Bool)

(declare-fun res!341941 () Bool)

(assert (=> b!548472 (=> (not res!341941) (not e!316836))))

(declare-fun arrayContainsKey!0 (array!34579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548472 (= res!341941 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!548473 () Bool)

(assert (=> b!548473 (= e!316837 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsgt mask!3119 #b00111111111111111111111111111111)))))

(declare-fun b!548474 () Bool)

(declare-fun res!341942 () Bool)

(assert (=> b!548474 (=> (not res!341942) (not e!316836))))

(assert (=> b!548474 (= res!341942 (validKeyInArray!0 (select (arr!16604 a!3118) j!142)))))

(declare-fun res!341940 () Bool)

(assert (=> start!50088 (=> (not res!341940) (not e!316836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50088 (= res!341940 (validMask!0 mask!3119))))

(assert (=> start!50088 e!316836))

(assert (=> start!50088 true))

(declare-fun array_inv!12378 (array!34579) Bool)

(assert (=> start!50088 (array_inv!12378 a!3118)))

(assert (= (and start!50088 res!341940) b!548469))

(assert (= (and b!548469 res!341943) b!548474))

(assert (= (and b!548474 res!341942) b!548471))

(assert (= (and b!548471 res!341945) b!548472))

(assert (= (and b!548472 res!341941) b!548468))

(assert (= (and b!548468 res!341938) b!548470))

(assert (= (and b!548470 res!341939) b!548467))

(assert (= (and b!548467 res!341944) b!548473))

(declare-fun m!525475 () Bool)

(assert (=> start!50088 m!525475))

(declare-fun m!525477 () Bool)

(assert (=> start!50088 m!525477))

(declare-fun m!525479 () Bool)

(assert (=> b!548471 m!525479))

(declare-fun m!525481 () Bool)

(assert (=> b!548467 m!525481))

(declare-fun m!525483 () Bool)

(assert (=> b!548474 m!525483))

(assert (=> b!548474 m!525483))

(declare-fun m!525485 () Bool)

(assert (=> b!548474 m!525485))

(declare-fun m!525487 () Bool)

(assert (=> b!548472 m!525487))

(declare-fun m!525489 () Bool)

(assert (=> b!548470 m!525489))

(declare-fun m!525491 () Bool)

(assert (=> b!548468 m!525491))

(push 1)

(assert (not b!548468))

(assert (not b!548467))

(assert (not b!548471))

(assert (not start!50088))

(assert (not b!548470))

(assert (not b!548474))

(assert (not b!548472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!548501 () Bool)

(declare-fun e!316861 () Bool)

(declare-fun e!316860 () Bool)

(assert (=> b!548501 (= e!316861 e!316860)))

(declare-fun c!63599 () Bool)

(assert (=> b!548501 (= c!63599 (validKeyInArray!0 (select (arr!16604 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548502 () Bool)

(declare-fun e!316859 () Bool)

(declare-fun call!32213 () Bool)

(assert (=> b!548502 (= e!316859 call!32213)))

(declare-fun bm!32210 () Bool)

(assert (=> bm!32210 (= call!32213 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!82569 () Bool)

(declare-fun res!341963 () Bool)

(assert (=> d!82569 (=> res!341963 e!316861)))

(assert (=> d!82569 (= res!341963 (bvsge #b00000000000000000000000000000000 (size!16968 a!3118)))))

(assert (=> d!82569 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316861)))

(declare-fun b!548503 () Bool)

(assert (=> b!548503 (= e!316860 e!316859)))

(declare-fun lt!249859 () (_ BitVec 64))

(assert (=> b!548503 (= lt!249859 (select (arr!16604 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16952 0))(
  ( (Unit!16953) )
))
(declare-fun lt!249860 () Unit!16952)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34579 (_ BitVec 64) (_ BitVec 32)) Unit!16952)

(assert (=> b!548503 (= lt!249860 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249859 #b00000000000000000000000000000000))))

(assert (=> b!548503 (arrayContainsKey!0 a!3118 lt!249859 #b00000000000000000000000000000000)))

(declare-fun lt!249858 () Unit!16952)

(assert (=> b!548503 (= lt!249858 lt!249860)))

(declare-fun res!341962 () Bool)

(assert (=> b!548503 (= res!341962 (= (seekEntryOrOpen!0 (select (arr!16604 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5060 #b00000000000000000000000000000000)))))

(assert (=> b!548503 (=> (not res!341962) (not e!316859))))

(declare-fun b!548504 () Bool)

(assert (=> b!548504 (= e!316860 call!32213)))

(assert (= (and d!82569 (not res!341963)) b!548501))

(assert (= (and b!548501 c!63599) b!548503))

(assert (= (and b!548501 (not c!63599)) b!548504))

(assert (= (and b!548503 res!341962) b!548502))

(assert (= (or b!548502 b!548504) bm!32210))

(declare-fun m!525509 () Bool)

(assert (=> b!548501 m!525509))

(assert (=> b!548501 m!525509))

(declare-fun m!525511 () Bool)

(assert (=> b!548501 m!525511))

(declare-fun m!525513 () Bool)

(assert (=> bm!32210 m!525513))

(assert (=> b!548503 m!525509))

(declare-fun m!525515 () Bool)

(assert (=> b!548503 m!525515))

(declare-fun m!525517 () Bool)

(assert (=> b!548503 m!525517))

(assert (=> b!548503 m!525509))

(declare-fun m!525519 () Bool)

(assert (=> b!548503 m!525519))

(assert (=> b!548470 d!82569))

(declare-fun d!82581 () Bool)

(assert (=> d!82581 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548471 d!82581))

(declare-fun d!82583 () Bool)

(declare-fun res!341968 () Bool)

(declare-fun e!316866 () Bool)

(assert (=> d!82583 (=> res!341968 e!316866)))

(assert (=> d!82583 (= res!341968 (= (select (arr!16604 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82583 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316866)))

(declare-fun b!548509 () Bool)

(declare-fun e!316867 () Bool)

(assert (=> b!548509 (= e!316866 e!316867)))

(declare-fun res!341969 () Bool)

(assert (=> b!548509 (=> (not res!341969) (not e!316867))))

(assert (=> b!548509 (= res!341969 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16968 a!3118)))))

(declare-fun b!548510 () Bool)

(assert (=> b!548510 (= e!316867 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82583 (not res!341968)) b!548509))

(assert (= (and b!548509 res!341969) b!548510))

(assert (=> d!82583 m!525509))

(declare-fun m!525521 () Bool)

(assert (=> b!548510 m!525521))

(assert (=> b!548472 d!82583))

(declare-fun b!548521 () Bool)

(declare-fun e!316876 () Bool)

(declare-fun call!32216 () Bool)

(assert (=> b!548521 (= e!316876 call!32216)))

(declare-fun b!548522 () Bool)

(declare-fun e!316877 () Bool)

(assert (=> b!548522 (= e!316877 e!316876)))

(declare-fun c!63602 () Bool)

(assert (=> b!548522 (= c!63602 (validKeyInArray!0 (select (arr!16604 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548523 () Bool)

(declare-fun e!316879 () Bool)

(assert (=> b!548523 (= e!316879 e!316877)))

(declare-fun res!341977 () Bool)

(assert (=> b!548523 (=> (not res!341977) (not e!316877))))

(declare-fun e!316878 () Bool)

(assert (=> b!548523 (= res!341977 (not e!316878))))

(declare-fun res!341976 () Bool)

(assert (=> b!548523 (=> (not res!341976) (not e!316878))))

(assert (=> b!548523 (= res!341976 (validKeyInArray!0 (select (arr!16604 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32213 () Bool)

(assert (=> bm!32213 (= call!32216 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63602 (Cons!10733 (select (arr!16604 a!3118) #b00000000000000000000000000000000) Nil!10734) Nil!10734)))))

(declare-fun b!548524 () Bool)

(assert (=> b!548524 (= e!316876 call!32216)))

(declare-fun b!548525 () Bool)

(declare-fun contains!2832 (List!10737 (_ BitVec 64)) Bool)

(assert (=> b!548525 (= e!316878 (contains!2832 Nil!10734 (select (arr!16604 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82585 () Bool)

(declare-fun res!341978 () Bool)

(assert (=> d!82585 (=> res!341978 e!316879)))

(assert (=> d!82585 (= res!341978 (bvsge #b00000000000000000000000000000000 (size!16968 a!3118)))))

(assert (=> d!82585 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10734) e!316879)))

(assert (= (and d!82585 (not res!341978)) b!548523))

(assert (= (and b!548523 res!341976) b!548525))

(assert (= (and b!548523 res!341977) b!548522))

(assert (= (and b!548522 c!63602) b!548521))

(assert (= (and b!548522 (not c!63602)) b!548524))

(assert (= (or b!548521 b!548524) bm!32213))

(assert (=> b!548522 m!525509))

(assert (=> b!548522 m!525509))

(assert (=> b!548522 m!525511))

(assert (=> b!548523 m!525509))

(assert (=> b!548523 m!525509))

(assert (=> b!548523 m!525511))

(assert (=> bm!32213 m!525509))

(declare-fun m!525523 () Bool)

(assert (=> bm!32213 m!525523))

(assert (=> b!548525 m!525509))

(assert (=> b!548525 m!525509))

(declare-fun m!525525 () Bool)

(assert (=> b!548525 m!525525))

(assert (=> b!548467 d!82585))

(declare-fun d!82591 () Bool)

(assert (=> d!82591 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 