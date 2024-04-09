; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50874 () Bool)

(assert start!50874)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!556424 () Bool)

(declare-fun e!320549 () Bool)

(declare-datatypes ((array!35053 0))(
  ( (array!35054 (arr!16832 (Array (_ BitVec 32) (_ BitVec 64))) (size!17196 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35053)

(declare-datatypes ((SeekEntryResult!5288 0))(
  ( (MissingZero!5288 (index!23379 (_ BitVec 32))) (Found!5288 (index!23380 (_ BitVec 32))) (Intermediate!5288 (undefined!6100 Bool) (index!23381 (_ BitVec 32)) (x!52293 (_ BitVec 32))) (Undefined!5288) (MissingVacant!5288 (index!23382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35053 (_ BitVec 32)) SeekEntryResult!5288)

(assert (=> b!556424 (= e!320549 (= (seekEntryOrOpen!0 (select (arr!16832 a!3118) j!142) a!3118 mask!3119) (Found!5288 j!142)))))

(declare-fun res!348994 () Bool)

(declare-fun e!320548 () Bool)

(assert (=> start!50874 (=> (not res!348994) (not e!320548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50874 (= res!348994 (validMask!0 mask!3119))))

(assert (=> start!50874 e!320548))

(assert (=> start!50874 true))

(declare-fun array_inv!12606 (array!35053) Bool)

(assert (=> start!50874 (array_inv!12606 a!3118)))

(declare-fun b!556425 () Bool)

(declare-fun e!320547 () Bool)

(declare-fun e!320551 () Bool)

(assert (=> b!556425 (= e!320547 e!320551)))

(declare-fun res!348990 () Bool)

(assert (=> b!556425 (=> (not res!348990) (not e!320551))))

(declare-fun lt!252912 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!252910 () SeekEntryResult!5288)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35053 (_ BitVec 32)) SeekEntryResult!5288)

(assert (=> b!556425 (= res!348990 (= lt!252910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252912 (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)) mask!3119)))))

(declare-fun lt!252913 () (_ BitVec 32))

(assert (=> b!556425 (= lt!252910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252913 (select (arr!16832 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556425 (= lt!252912 (toIndex!0 (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!556425 (= lt!252913 (toIndex!0 (select (arr!16832 a!3118) j!142) mask!3119))))

(declare-fun b!556426 () Bool)

(assert (=> b!556426 (= e!320551 (not (or (not (is-Intermediate!5288 lt!252910)) (undefined!6100 lt!252910) (= (select (arr!16832 a!3118) (index!23381 lt!252910)) (select (arr!16832 a!3118) j!142)) (= (select (arr!16832 a!3118) (index!23381 lt!252910)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23381 lt!252910) #b00000000000000000000000000000000) (bvslt (index!23381 lt!252910) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(assert (=> b!556426 e!320549))

(declare-fun res!348986 () Bool)

(assert (=> b!556426 (=> (not res!348986) (not e!320549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35053 (_ BitVec 32)) Bool)

(assert (=> b!556426 (= res!348986 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17350 0))(
  ( (Unit!17351) )
))
(declare-fun lt!252911 () Unit!17350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17350)

(assert (=> b!556426 (= lt!252911 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556427 () Bool)

(declare-fun res!348993 () Bool)

(assert (=> b!556427 (=> (not res!348993) (not e!320547))))

(declare-datatypes ((List!10965 0))(
  ( (Nil!10962) (Cons!10961 (h!11946 (_ BitVec 64)) (t!17201 List!10965)) )
))
(declare-fun arrayNoDuplicates!0 (array!35053 (_ BitVec 32) List!10965) Bool)

(assert (=> b!556427 (= res!348993 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10962))))

(declare-fun b!556428 () Bool)

(declare-fun res!348995 () Bool)

(assert (=> b!556428 (=> (not res!348995) (not e!320548))))

(assert (=> b!556428 (= res!348995 (and (= (size!17196 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17196 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17196 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556429 () Bool)

(declare-fun res!348988 () Bool)

(assert (=> b!556429 (=> (not res!348988) (not e!320547))))

(assert (=> b!556429 (= res!348988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556430 () Bool)

(declare-fun res!348991 () Bool)

(assert (=> b!556430 (=> (not res!348991) (not e!320548))))

(declare-fun arrayContainsKey!0 (array!35053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556430 (= res!348991 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556431 () Bool)

(declare-fun res!348989 () Bool)

(assert (=> b!556431 (=> (not res!348989) (not e!320548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556431 (= res!348989 (validKeyInArray!0 (select (arr!16832 a!3118) j!142)))))

(declare-fun b!556432 () Bool)

(assert (=> b!556432 (= e!320548 e!320547)))

(declare-fun res!348987 () Bool)

(assert (=> b!556432 (=> (not res!348987) (not e!320547))))

(declare-fun lt!252914 () SeekEntryResult!5288)

(assert (=> b!556432 (= res!348987 (or (= lt!252914 (MissingZero!5288 i!1132)) (= lt!252914 (MissingVacant!5288 i!1132))))))

(assert (=> b!556432 (= lt!252914 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!556433 () Bool)

(declare-fun res!348992 () Bool)

(assert (=> b!556433 (=> (not res!348992) (not e!320548))))

(assert (=> b!556433 (= res!348992 (validKeyInArray!0 k!1914))))

(assert (= (and start!50874 res!348994) b!556428))

(assert (= (and b!556428 res!348995) b!556431))

(assert (= (and b!556431 res!348989) b!556433))

(assert (= (and b!556433 res!348992) b!556430))

(assert (= (and b!556430 res!348991) b!556432))

(assert (= (and b!556432 res!348987) b!556429))

(assert (= (and b!556429 res!348988) b!556427))

(assert (= (and b!556427 res!348993) b!556425))

(assert (= (and b!556425 res!348990) b!556426))

(assert (= (and b!556426 res!348986) b!556424))

(declare-fun m!534497 () Bool)

(assert (=> b!556429 m!534497))

(declare-fun m!534499 () Bool)

(assert (=> b!556433 m!534499))

(declare-fun m!534501 () Bool)

(assert (=> start!50874 m!534501))

(declare-fun m!534503 () Bool)

(assert (=> start!50874 m!534503))

(declare-fun m!534505 () Bool)

(assert (=> b!556425 m!534505))

(declare-fun m!534507 () Bool)

(assert (=> b!556425 m!534507))

(assert (=> b!556425 m!534505))

(declare-fun m!534509 () Bool)

(assert (=> b!556425 m!534509))

(declare-fun m!534511 () Bool)

(assert (=> b!556425 m!534511))

(declare-fun m!534513 () Bool)

(assert (=> b!556425 m!534513))

(assert (=> b!556425 m!534509))

(declare-fun m!534515 () Bool)

(assert (=> b!556425 m!534515))

(assert (=> b!556425 m!534509))

(assert (=> b!556425 m!534505))

(declare-fun m!534517 () Bool)

(assert (=> b!556425 m!534517))

(assert (=> b!556431 m!534505))

(assert (=> b!556431 m!534505))

(declare-fun m!534519 () Bool)

(assert (=> b!556431 m!534519))

(declare-fun m!534521 () Bool)

(assert (=> b!556427 m!534521))

(assert (=> b!556424 m!534505))

(assert (=> b!556424 m!534505))

(declare-fun m!534523 () Bool)

(assert (=> b!556424 m!534523))

(declare-fun m!534525 () Bool)

(assert (=> b!556432 m!534525))

(declare-fun m!534527 () Bool)

(assert (=> b!556426 m!534527))

(assert (=> b!556426 m!534505))

(declare-fun m!534529 () Bool)

(assert (=> b!556426 m!534529))

(declare-fun m!534531 () Bool)

(assert (=> b!556426 m!534531))

(declare-fun m!534533 () Bool)

(assert (=> b!556430 m!534533))

(push 1)

(assert (not b!556431))

(assert (not b!556425))

(assert (not b!556424))

(assert (not b!556432))

(assert (not b!556430))

(assert (not b!556429))

(assert (not b!556433))

(assert (not b!556427))

(assert (not b!556426))

(assert (not start!50874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83187 () Bool)

(assert (=> d!83187 (= (validKeyInArray!0 (select (arr!16832 a!3118) j!142)) (and (not (= (select (arr!16832 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16832 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556431 d!83187))

(declare-fun b!556526 () Bool)

(declare-fun e!320609 () Bool)

(declare-fun call!32333 () Bool)

(assert (=> b!556526 (= e!320609 call!32333)))

(declare-fun b!556527 () Bool)

(declare-fun e!320607 () Bool)

(declare-fun e!320608 () Bool)

(assert (=> b!556527 (= e!320607 e!320608)))

(declare-fun c!64085 () Bool)

(assert (=> b!556527 (= c!64085 (validKeyInArray!0 (select (arr!16832 a!3118) j!142)))))

(declare-fun d!83189 () Bool)

(declare-fun res!349032 () Bool)

(assert (=> d!83189 (=> res!349032 e!320607)))

(assert (=> d!83189 (= res!349032 (bvsge j!142 (size!17196 a!3118)))))

(assert (=> d!83189 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!320607)))

(declare-fun b!556528 () Bool)

(assert (=> b!556528 (= e!320608 e!320609)))

(declare-fun lt!252955 () (_ BitVec 64))

(assert (=> b!556528 (= lt!252955 (select (arr!16832 a!3118) j!142))))

(declare-fun lt!252956 () Unit!17350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35053 (_ BitVec 64) (_ BitVec 32)) Unit!17350)

(assert (=> b!556528 (= lt!252956 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!252955 j!142))))

(assert (=> b!556528 (arrayContainsKey!0 a!3118 lt!252955 #b00000000000000000000000000000000)))

(declare-fun lt!252954 () Unit!17350)

(assert (=> b!556528 (= lt!252954 lt!252956)))

(declare-fun res!349033 () Bool)

(assert (=> b!556528 (= res!349033 (= (seekEntryOrOpen!0 (select (arr!16832 a!3118) j!142) a!3118 mask!3119) (Found!5288 j!142)))))

(assert (=> b!556528 (=> (not res!349033) (not e!320609))))

(declare-fun b!556529 () Bool)

(assert (=> b!556529 (= e!320608 call!32333)))

(declare-fun bm!32330 () Bool)

(assert (=> bm!32330 (= call!32333 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83189 (not res!349032)) b!556527))

(assert (= (and b!556527 c!64085) b!556528))

(assert (= (and b!556527 (not c!64085)) b!556529))

(assert (= (and b!556528 res!349033) b!556526))

(assert (= (or b!556526 b!556529) bm!32330))

(assert (=> b!556527 m!534505))

(assert (=> b!556527 m!534505))

(assert (=> b!556527 m!534519))

(assert (=> b!556528 m!534505))

(declare-fun m!534579 () Bool)

(assert (=> b!556528 m!534579))

(declare-fun m!534581 () Bool)

(assert (=> b!556528 m!534581))

(assert (=> b!556528 m!534505))

(assert (=> b!556528 m!534523))

(declare-fun m!534583 () Bool)

(assert (=> bm!32330 m!534583))

(assert (=> b!556426 d!83189))

(declare-fun d!83199 () Bool)

(assert (=> d!83199 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!252967 () Unit!17350)

(declare-fun choose!38 (array!35053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17350)

(assert (=> d!83199 (= lt!252967 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83199 (validMask!0 mask!3119)))

(assert (=> d!83199 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!252967)))

(declare-fun bs!17337 () Bool)

(assert (= bs!17337 d!83199))

(assert (=> bs!17337 m!534529))

(declare-fun m!534585 () Bool)

(assert (=> bs!17337 m!534585))

(assert (=> bs!17337 m!534501))

(assert (=> b!556426 d!83199))

(declare-fun b!556616 () Bool)

(declare-fun e!320664 () SeekEntryResult!5288)

(declare-fun e!320661 () SeekEntryResult!5288)

(assert (=> b!556616 (= e!320664 e!320661)))

(declare-fun c!64120 () Bool)

(declare-fun lt!252999 () (_ BitVec 64))

(assert (=> b!556616 (= c!64120 (or (= lt!252999 (select (store (arr!16832 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!252999 lt!252999) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!253000 () SeekEntryResult!5288)

(declare-fun b!556617 () Bool)

(assert (=> b!556617 (and (bvsge (index!23381 lt!253000) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253000) (size!17196 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)))))))

(declare-fun e!320662 () Bool)

(assert (=> b!556617 (= e!320662 (= (select (arr!16832 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118))) (index!23381 lt!253000)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556618 () Bool)

(assert (=> b!556618 (and (bvsge (index!23381 lt!253000) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253000) (size!17196 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)))))))

(declare-fun res!349055 () Bool)

(assert (=> b!556618 (= res!349055 (= (select (arr!16832 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118))) (index!23381 lt!253000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556618 (=> res!349055 e!320662)))

(declare-fun b!556619 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556619 (= e!320661 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252912 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)) mask!3119))))

(declare-fun b!556620 () Bool)

(assert (=> b!556620 (and (bvsge (index!23381 lt!253000) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253000) (size!17196 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)))))))

(declare-fun res!349056 () Bool)

(assert (=> b!556620 (= res!349056 (= (select (arr!16832 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118))) (index!23381 lt!253000)) (select (store (arr!16832 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!556620 (=> res!349056 e!320662)))

(declare-fun e!320663 () Bool)

(assert (=> b!556620 (= e!320663 e!320662)))

(declare-fun b!556621 () Bool)

(declare-fun e!320665 () Bool)

(assert (=> b!556621 (= e!320665 e!320663)))

(declare-fun res!349054 () Bool)

(assert (=> b!556621 (= res!349054 (and (is-Intermediate!5288 lt!253000) (not (undefined!6100 lt!253000)) (bvslt (x!52293 lt!253000) #b01111111111111111111111111111110) (bvsge (x!52293 lt!253000) #b00000000000000000000000000000000) (bvsge (x!52293 lt!253000) #b00000000000000000000000000000000)))))

(assert (=> b!556621 (=> (not res!349054) (not e!320663))))

(declare-fun b!556622 () Bool)

(assert (=> b!556622 (= e!320664 (Intermediate!5288 true lt!252912 #b00000000000000000000000000000000))))

(declare-fun b!556623 () Bool)

(assert (=> b!556623 (= e!320661 (Intermediate!5288 false lt!252912 #b00000000000000000000000000000000))))

(declare-fun b!556624 () Bool)

(assert (=> b!556624 (= e!320665 (bvsge (x!52293 lt!253000) #b01111111111111111111111111111110))))

(declare-fun d!83205 () Bool)

(assert (=> d!83205 e!320665))

(declare-fun c!64119 () Bool)

(assert (=> d!83205 (= c!64119 (and (is-Intermediate!5288 lt!253000) (undefined!6100 lt!253000)))))

(assert (=> d!83205 (= lt!253000 e!320664)))

(declare-fun c!64121 () Bool)

(assert (=> d!83205 (= c!64121 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83205 (= lt!252999 (select (arr!16832 (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118))) lt!252912))))

(assert (=> d!83205 (validMask!0 mask!3119)))

(assert (=> d!83205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252912 (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) (array!35054 (store (arr!16832 a!3118) i!1132 k!1914) (size!17196 a!3118)) mask!3119) lt!253000)))

(assert (= (and d!83205 c!64121) b!556622))

(assert (= (and d!83205 (not c!64121)) b!556616))

(assert (= (and b!556616 c!64120) b!556623))

(assert (= (and b!556616 (not c!64120)) b!556619))

(assert (= (and d!83205 c!64119) b!556624))

(assert (= (and d!83205 (not c!64119)) b!556621))

(assert (= (and b!556621 res!349054) b!556620))

(assert (= (and b!556620 (not res!349056)) b!556618))

(assert (= (and b!556618 (not res!349055)) b!556617))

(declare-fun m!534649 () Bool)

(assert (=> b!556617 m!534649))

(assert (=> b!556618 m!534649))

(declare-fun m!534651 () Bool)

(assert (=> d!83205 m!534651))

(assert (=> d!83205 m!534501))

(declare-fun m!534653 () Bool)

(assert (=> b!556619 m!534653))

(assert (=> b!556619 m!534653))

(assert (=> b!556619 m!534509))

(declare-fun m!534655 () Bool)

(assert (=> b!556619 m!534655))

(assert (=> b!556620 m!534649))

(assert (=> b!556425 d!83205))

(declare-fun b!556630 () Bool)

(declare-fun e!320673 () SeekEntryResult!5288)

(declare-fun e!320670 () SeekEntryResult!5288)

(assert (=> b!556630 (= e!320673 e!320670)))

(declare-fun lt!253001 () (_ BitVec 64))

(declare-fun c!64124 () Bool)

(assert (=> b!556630 (= c!64124 (or (= lt!253001 (select (arr!16832 a!3118) j!142)) (= (bvadd lt!253001 lt!253001) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556631 () Bool)

(declare-fun lt!253002 () SeekEntryResult!5288)

(assert (=> b!556631 (and (bvsge (index!23381 lt!253002) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253002) (size!17196 a!3118)))))

(declare-fun e!320671 () Bool)

(assert (=> b!556631 (= e!320671 (= (select (arr!16832 a!3118) (index!23381 lt!253002)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!556632 () Bool)

(assert (=> b!556632 (and (bvsge (index!23381 lt!253002) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253002) (size!17196 a!3118)))))

(declare-fun res!349061 () Bool)

(assert (=> b!556632 (= res!349061 (= (select (arr!16832 a!3118) (index!23381 lt!253002)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556632 (=> res!349061 e!320671)))

(declare-fun b!556633 () Bool)

(assert (=> b!556633 (= e!320670 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252913 #b00000000000000000000000000000000 mask!3119) (select (arr!16832 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556634 () Bool)

(assert (=> b!556634 (and (bvsge (index!23381 lt!253002) #b00000000000000000000000000000000) (bvslt (index!23381 lt!253002) (size!17196 a!3118)))))

(declare-fun res!349062 () Bool)

(assert (=> b!556634 (= res!349062 (= (select (arr!16832 a!3118) (index!23381 lt!253002)) (select (arr!16832 a!3118) j!142)))))

(assert (=> b!556634 (=> res!349062 e!320671)))

(declare-fun e!320672 () Bool)

(assert (=> b!556634 (= e!320672 e!320671)))

(declare-fun b!556635 () Bool)

(declare-fun e!320674 () Bool)

(assert (=> b!556635 (= e!320674 e!320672)))

(declare-fun res!349060 () Bool)

(assert (=> b!556635 (= res!349060 (and (is-Intermediate!5288 lt!253002) (not (undefined!6100 lt!253002)) (bvslt (x!52293 lt!253002) #b01111111111111111111111111111110) (bvsge (x!52293 lt!253002) #b00000000000000000000000000000000) (bvsge (x!52293 lt!253002) #b00000000000000000000000000000000)))))

(assert (=> b!556635 (=> (not res!349060) (not e!320672))))

(declare-fun b!556636 () Bool)

(assert (=> b!556636 (= e!320673 (Intermediate!5288 true lt!252913 #b00000000000000000000000000000000))))

(declare-fun b!556637 () Bool)

(assert (=> b!556637 (= e!320670 (Intermediate!5288 false lt!252913 #b00000000000000000000000000000000))))

(declare-fun b!556638 () Bool)

(assert (=> b!556638 (= e!320674 (bvsge (x!52293 lt!253002) #b01111111111111111111111111111110))))

(declare-fun d!83221 () Bool)

(assert (=> d!83221 e!320674))

(declare-fun c!64123 () Bool)

(assert (=> d!83221 (= c!64123 (and (is-Intermediate!5288 lt!253002) (undefined!6100 lt!253002)))))

(assert (=> d!83221 (= lt!253002 e!320673)))

(declare-fun c!64125 () Bool)

(assert (=> d!83221 (= c!64125 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83221 (= lt!253001 (select (arr!16832 a!3118) lt!252913))))

(assert (=> d!83221 (validMask!0 mask!3119)))

(assert (=> d!83221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252913 (select (arr!16832 a!3118) j!142) a!3118 mask!3119) lt!253002)))

(assert (= (and d!83221 c!64125) b!556636))

(assert (= (and d!83221 (not c!64125)) b!556630))

(assert (= (and b!556630 c!64124) b!556637))

(assert (= (and b!556630 (not c!64124)) b!556633))

(assert (= (and d!83221 c!64123) b!556638))

(assert (= (and d!83221 (not c!64123)) b!556635))

(assert (= (and b!556635 res!349060) b!556634))

(assert (= (and b!556634 (not res!349062)) b!556632))

(assert (= (and b!556632 (not res!349061)) b!556631))

(declare-fun m!534663 () Bool)

(assert (=> b!556631 m!534663))

(assert (=> b!556632 m!534663))

(declare-fun m!534665 () Bool)

(assert (=> d!83221 m!534665))

(assert (=> d!83221 m!534501))

(declare-fun m!534667 () Bool)

(assert (=> b!556633 m!534667))

(assert (=> b!556633 m!534667))

(assert (=> b!556633 m!534505))

(declare-fun m!534669 () Bool)

(assert (=> b!556633 m!534669))

(assert (=> b!556634 m!534663))

(assert (=> b!556425 d!83221))

(declare-fun d!83225 () Bool)

(declare-fun lt!253011 () (_ BitVec 32))

(declare-fun lt!253010 () (_ BitVec 32))

(assert (=> d!83225 (= lt!253011 (bvmul (bvxor lt!253010 (bvlshr lt!253010 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83225 (= lt!253010 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83225 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349063 (let ((h!11949 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52299 (bvmul (bvxor h!11949 (bvlshr h!11949 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52299 (bvlshr x!52299 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349063 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349063 #b00000000000000000000000000000000))))))

(assert (=> d!83225 (= (toIndex!0 (select (store (arr!16832 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!253011 (bvlshr lt!253011 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556425 d!83225))

(declare-fun d!83229 () Bool)

(declare-fun lt!253019 () (_ BitVec 32))

(declare-fun lt!253018 () (_ BitVec 32))

(assert (=> d!83229 (= lt!253019 (bvmul (bvxor lt!253018 (bvlshr lt!253018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83229 (= lt!253018 ((_ extract 31 0) (bvand (bvxor (select (arr!16832 a!3118) j!142) (bvlshr (select (arr!16832 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83229 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349063 (let ((h!11949 ((_ extract 31 0) (bvand (bvxor (select (arr!16832 a!3118) j!142) (bvlshr (select (arr!16832 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52299 (bvmul (bvxor h!11949 (bvlshr h!11949 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52299 (bvlshr x!52299 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349063 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349063 #b00000000000000000000000000000000))))))

(assert (=> d!83229 (= (toIndex!0 (select (arr!16832 a!3118) j!142) mask!3119) (bvand (bvxor lt!253019 (bvlshr lt!253019 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556425 d!83229))

(declare-fun bm!32343 () Bool)

(declare-fun call!32346 () Bool)

(declare-fun c!64134 () Bool)

(assert (=> bm!32343 (= call!32346 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64134 (Cons!10961 (select (arr!16832 a!3118) #b00000000000000000000000000000000) Nil!10962) Nil!10962)))))

(declare-fun b!556682 () Bool)

(declare-fun e!320710 () Bool)

(declare-fun e!320712 () Bool)

(assert (=> b!556682 (= e!320710 e!320712)))

(assert (=> b!556682 (= c!64134 (validKeyInArray!0 (select (arr!16832 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556683 () Bool)

(declare-fun e!320713 () Bool)

(assert (=> b!556683 (= e!320713 e!320710)))

(declare-fun res!349092 () Bool)

(assert (=> b!556683 (=> (not res!349092) (not e!320710))))

(declare-fun e!320711 () Bool)

(assert (=> b!556683 (= res!349092 (not e!320711))))

(declare-fun res!349093 () Bool)

(assert (=> b!556683 (=> (not res!349093) (not e!320711))))

(assert (=> b!556683 (= res!349093 (validKeyInArray!0 (select (arr!16832 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556684 () Bool)

(assert (=> b!556684 (= e!320712 call!32346)))

(declare-fun b!556685 () Bool)

(assert (=> b!556685 (= e!320712 call!32346)))

(declare-fun b!556686 () Bool)

(declare-fun contains!2851 (List!10965 (_ BitVec 64)) Bool)

(assert (=> b!556686 (= e!320711 (contains!2851 Nil!10962 (select (arr!16832 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83233 () Bool)

(declare-fun res!349091 () Bool)

(assert (=> d!83233 (=> res!349091 e!320713)))

(assert (=> d!83233 (= res!349091 (bvsge #b00000000000000000000000000000000 (size!17196 a!3118)))))

(assert (=> d!83233 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10962) e!320713)))

(assert (= (and d!83233 (not res!349091)) b!556683))

(assert (= (and b!556683 res!349093) b!556686))

(assert (= (and b!556683 res!349092) b!556682))

(assert (= (and b!556682 c!64134) b!556684))

(assert (= (and b!556682 (not c!64134)) b!556685))

(assert (= (or b!556684 b!556685) bm!32343))

(declare-fun m!534683 () Bool)

(assert (=> bm!32343 m!534683))

(declare-fun m!534687 () Bool)

(assert (=> bm!32343 m!534687))

(assert (=> b!556682 m!534683))

(assert (=> b!556682 m!534683))

(declare-fun m!534689 () Bool)

(assert (=> b!556682 m!534689))

(assert (=> b!556683 m!534683))

(assert (=> b!556683 m!534683))

(assert (=> b!556683 m!534689))

(assert (=> b!556686 m!534683))

(assert (=> b!556686 m!534683))

(declare-fun m!534691 () Bool)

(assert (=> b!556686 m!534691))

(assert (=> b!556427 d!83233))

(declare-fun b!556703 () Bool)

(declare-fun c!64143 () Bool)

(declare-fun lt!253035 () (_ BitVec 64))

(assert (=> b!556703 (= c!64143 (= lt!253035 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320724 () SeekEntryResult!5288)

(declare-fun e!320725 () SeekEntryResult!5288)

(assert (=> b!556703 (= e!320724 e!320725)))

(declare-fun d!83241 () Bool)

(declare-fun lt!253037 () SeekEntryResult!5288)

(assert (=> d!83241 (and (or (is-Undefined!5288 lt!253037) (not (is-Found!5288 lt!253037)) (and (bvsge (index!23380 lt!253037) #b00000000000000000000000000000000) (bvslt (index!23380 lt!253037) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253037) (is-Found!5288 lt!253037) (not (is-MissingZero!5288 lt!253037)) (and (bvsge (index!23379 lt!253037) #b00000000000000000000000000000000) (bvslt (index!23379 lt!253037) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253037) (is-Found!5288 lt!253037) (is-MissingZero!5288 lt!253037) (not (is-MissingVacant!5288 lt!253037)) (and (bvsge (index!23382 lt!253037) #b00000000000000000000000000000000) (bvslt (index!23382 lt!253037) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253037) (ite (is-Found!5288 lt!253037) (= (select (arr!16832 a!3118) (index!23380 lt!253037)) k!1914) (ite (is-MissingZero!5288 lt!253037) (= (select (arr!16832 a!3118) (index!23379 lt!253037)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5288 lt!253037) (= (select (arr!16832 a!3118) (index!23382 lt!253037)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!320723 () SeekEntryResult!5288)

(assert (=> d!83241 (= lt!253037 e!320723)))

(declare-fun c!64144 () Bool)

(declare-fun lt!253036 () SeekEntryResult!5288)

(assert (=> d!83241 (= c!64144 (and (is-Intermediate!5288 lt!253036) (undefined!6100 lt!253036)))))

(assert (=> d!83241 (= lt!253036 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83241 (validMask!0 mask!3119)))

(assert (=> d!83241 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253037)))

(declare-fun b!556704 () Bool)

(assert (=> b!556704 (= e!320723 e!320724)))

(assert (=> b!556704 (= lt!253035 (select (arr!16832 a!3118) (index!23381 lt!253036)))))

(declare-fun c!64142 () Bool)

(assert (=> b!556704 (= c!64142 (= lt!253035 k!1914))))

(declare-fun b!556705 () Bool)

(assert (=> b!556705 (= e!320725 (MissingZero!5288 (index!23381 lt!253036)))))

(declare-fun b!556706 () Bool)

(assert (=> b!556706 (= e!320724 (Found!5288 (index!23381 lt!253036)))))

(declare-fun b!556707 () Bool)

(assert (=> b!556707 (= e!320723 Undefined!5288)))

(declare-fun b!556708 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35053 (_ BitVec 32)) SeekEntryResult!5288)

(assert (=> b!556708 (= e!320725 (seekKeyOrZeroReturnVacant!0 (x!52293 lt!253036) (index!23381 lt!253036) (index!23381 lt!253036) k!1914 a!3118 mask!3119))))

(assert (= (and d!83241 c!64144) b!556707))

(assert (= (and d!83241 (not c!64144)) b!556704))

(assert (= (and b!556704 c!64142) b!556706))

(assert (= (and b!556704 (not c!64142)) b!556703))

(assert (= (and b!556703 c!64143) b!556705))

(assert (= (and b!556703 (not c!64143)) b!556708))

(declare-fun m!534703 () Bool)

(assert (=> d!83241 m!534703))

(declare-fun m!534705 () Bool)

(assert (=> d!83241 m!534705))

(assert (=> d!83241 m!534501))

(declare-fun m!534707 () Bool)

(assert (=> d!83241 m!534707))

(declare-fun m!534709 () Bool)

(assert (=> d!83241 m!534709))

(declare-fun m!534711 () Bool)

(assert (=> d!83241 m!534711))

(assert (=> d!83241 m!534707))

(declare-fun m!534713 () Bool)

(assert (=> b!556704 m!534713))

(declare-fun m!534715 () Bool)

(assert (=> b!556708 m!534715))

(assert (=> b!556432 d!83241))

(declare-fun d!83253 () Bool)

(assert (=> d!83253 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50874 d!83253))

(declare-fun d!83255 () Bool)

(assert (=> d!83255 (= (array_inv!12606 a!3118) (bvsge (size!17196 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50874 d!83255))

(declare-fun d!83257 () Bool)

(assert (=> d!83257 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556433 d!83257))

(declare-fun d!83259 () Bool)

(declare-fun res!349100 () Bool)

(declare-fun e!320730 () Bool)

(assert (=> d!83259 (=> res!349100 e!320730)))

(assert (=> d!83259 (= res!349100 (= (select (arr!16832 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83259 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!320730)))

(declare-fun b!556713 () Bool)

(declare-fun e!320731 () Bool)

(assert (=> b!556713 (= e!320730 e!320731)))

(declare-fun res!349101 () Bool)

(assert (=> b!556713 (=> (not res!349101) (not e!320731))))

(assert (=> b!556713 (= res!349101 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17196 a!3118)))))

(declare-fun b!556714 () Bool)

(assert (=> b!556714 (= e!320731 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83259 (not res!349100)) b!556713))

(assert (= (and b!556713 res!349101) b!556714))

(assert (=> d!83259 m!534683))

(declare-fun m!534717 () Bool)

(assert (=> b!556714 m!534717))

(assert (=> b!556430 d!83259))

(declare-fun b!556715 () Bool)

(declare-fun e!320734 () Bool)

(declare-fun call!32348 () Bool)

(assert (=> b!556715 (= e!320734 call!32348)))

(declare-fun b!556716 () Bool)

(declare-fun e!320732 () Bool)

(declare-fun e!320733 () Bool)

(assert (=> b!556716 (= e!320732 e!320733)))

(declare-fun c!64145 () Bool)

(assert (=> b!556716 (= c!64145 (validKeyInArray!0 (select (arr!16832 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83261 () Bool)

(declare-fun res!349102 () Bool)

(assert (=> d!83261 (=> res!349102 e!320732)))

(assert (=> d!83261 (= res!349102 (bvsge #b00000000000000000000000000000000 (size!17196 a!3118)))))

(assert (=> d!83261 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320732)))

(declare-fun b!556717 () Bool)

(assert (=> b!556717 (= e!320733 e!320734)))

(declare-fun lt!253039 () (_ BitVec 64))

(assert (=> b!556717 (= lt!253039 (select (arr!16832 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253040 () Unit!17350)

(assert (=> b!556717 (= lt!253040 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253039 #b00000000000000000000000000000000))))

(assert (=> b!556717 (arrayContainsKey!0 a!3118 lt!253039 #b00000000000000000000000000000000)))

(declare-fun lt!253038 () Unit!17350)

(assert (=> b!556717 (= lt!253038 lt!253040)))

(declare-fun res!349103 () Bool)

(assert (=> b!556717 (= res!349103 (= (seekEntryOrOpen!0 (select (arr!16832 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5288 #b00000000000000000000000000000000)))))

(assert (=> b!556717 (=> (not res!349103) (not e!320734))))

(declare-fun b!556718 () Bool)

(assert (=> b!556718 (= e!320733 call!32348)))

(declare-fun bm!32345 () Bool)

(assert (=> bm!32345 (= call!32348 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83261 (not res!349102)) b!556716))

(assert (= (and b!556716 c!64145) b!556717))

(assert (= (and b!556716 (not c!64145)) b!556718))

(assert (= (and b!556717 res!349103) b!556715))

(assert (= (or b!556715 b!556718) bm!32345))

(assert (=> b!556716 m!534683))

(assert (=> b!556716 m!534683))

(assert (=> b!556716 m!534689))

(assert (=> b!556717 m!534683))

(declare-fun m!534719 () Bool)

(assert (=> b!556717 m!534719))

(declare-fun m!534721 () Bool)

(assert (=> b!556717 m!534721))

(assert (=> b!556717 m!534683))

(declare-fun m!534723 () Bool)

(assert (=> b!556717 m!534723))

(declare-fun m!534725 () Bool)

(assert (=> bm!32345 m!534725))

(assert (=> b!556429 d!83261))

(declare-fun b!556719 () Bool)

(declare-fun c!64147 () Bool)

(declare-fun lt!253041 () (_ BitVec 64))

(assert (=> b!556719 (= c!64147 (= lt!253041 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320736 () SeekEntryResult!5288)

(declare-fun e!320737 () SeekEntryResult!5288)

(assert (=> b!556719 (= e!320736 e!320737)))

(declare-fun d!83263 () Bool)

(declare-fun lt!253043 () SeekEntryResult!5288)

(assert (=> d!83263 (and (or (is-Undefined!5288 lt!253043) (not (is-Found!5288 lt!253043)) (and (bvsge (index!23380 lt!253043) #b00000000000000000000000000000000) (bvslt (index!23380 lt!253043) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253043) (is-Found!5288 lt!253043) (not (is-MissingZero!5288 lt!253043)) (and (bvsge (index!23379 lt!253043) #b00000000000000000000000000000000) (bvslt (index!23379 lt!253043) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253043) (is-Found!5288 lt!253043) (is-MissingZero!5288 lt!253043) (not (is-MissingVacant!5288 lt!253043)) (and (bvsge (index!23382 lt!253043) #b00000000000000000000000000000000) (bvslt (index!23382 lt!253043) (size!17196 a!3118)))) (or (is-Undefined!5288 lt!253043) (ite (is-Found!5288 lt!253043) (= (select (arr!16832 a!3118) (index!23380 lt!253043)) (select (arr!16832 a!3118) j!142)) (ite (is-MissingZero!5288 lt!253043) (= (select (arr!16832 a!3118) (index!23379 lt!253043)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5288 lt!253043) (= (select (arr!16832 a!3118) (index!23382 lt!253043)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!320735 () SeekEntryResult!5288)

(assert (=> d!83263 (= lt!253043 e!320735)))

(declare-fun c!64148 () Bool)

(declare-fun lt!253042 () SeekEntryResult!5288)

(assert (=> d!83263 (= c!64148 (and (is-Intermediate!5288 lt!253042) (undefined!6100 lt!253042)))))

(assert (=> d!83263 (= lt!253042 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16832 a!3118) j!142) mask!3119) (select (arr!16832 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83263 (validMask!0 mask!3119)))

(assert (=> d!83263 (= (seekEntryOrOpen!0 (select (arr!16832 a!3118) j!142) a!3118 mask!3119) lt!253043)))

(declare-fun b!556720 () Bool)

(assert (=> b!556720 (= e!320735 e!320736)))

(assert (=> b!556720 (= lt!253041 (select (arr!16832 a!3118) (index!23381 lt!253042)))))

(declare-fun c!64146 () Bool)

(assert (=> b!556720 (= c!64146 (= lt!253041 (select (arr!16832 a!3118) j!142)))))

(declare-fun b!556721 () Bool)

(assert (=> b!556721 (= e!320737 (MissingZero!5288 (index!23381 lt!253042)))))

(declare-fun b!556722 () Bool)

(assert (=> b!556722 (= e!320736 (Found!5288 (index!23381 lt!253042)))))

(declare-fun b!556723 () Bool)

(assert (=> b!556723 (= e!320735 Undefined!5288)))

(declare-fun b!556724 () Bool)

(assert (=> b!556724 (= e!320737 (seekKeyOrZeroReturnVacant!0 (x!52293 lt!253042) (index!23381 lt!253042) (index!23381 lt!253042) (select (arr!16832 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83263 c!64148) b!556723))

(assert (= (and d!83263 (not c!64148)) b!556720))

(assert (= (and b!556720 c!64146) b!556722))

(assert (= (and b!556720 (not c!64146)) b!556719))

(assert (= (and b!556719 c!64147) b!556721))

(assert (= (and b!556719 (not c!64147)) b!556724))

(declare-fun m!534727 () Bool)

(assert (=> d!83263 m!534727))

(declare-fun m!534729 () Bool)

(assert (=> d!83263 m!534729))

(assert (=> d!83263 m!534501))

(assert (=> d!83263 m!534507))

(assert (=> d!83263 m!534505))

(declare-fun m!534731 () Bool)

