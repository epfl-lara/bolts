; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50872 () Bool)

(assert start!50872)

(declare-fun res!348957 () Bool)

(declare-fun e!320533 () Bool)

(assert (=> start!50872 (=> (not res!348957) (not e!320533))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50872 (= res!348957 (validMask!0 mask!3119))))

(assert (=> start!50872 e!320533))

(assert (=> start!50872 true))

(declare-datatypes ((array!35051 0))(
  ( (array!35052 (arr!16831 (Array (_ BitVec 32) (_ BitVec 64))) (size!17195 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35051)

(declare-fun array_inv!12605 (array!35051) Bool)

(assert (=> start!50872 (array_inv!12605 a!3118)))

(declare-fun b!556394 () Bool)

(declare-fun res!348959 () Bool)

(assert (=> b!556394 (=> (not res!348959) (not e!320533))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556394 (= res!348959 (validKeyInArray!0 k0!1914))))

(declare-fun b!556395 () Bool)

(declare-fun res!348956 () Bool)

(assert (=> b!556395 (=> (not res!348956) (not e!320533))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!556395 (= res!348956 (validKeyInArray!0 (select (arr!16831 a!3118) j!142)))))

(declare-fun e!320532 () Bool)

(declare-fun b!556396 () Bool)

(declare-datatypes ((SeekEntryResult!5287 0))(
  ( (MissingZero!5287 (index!23375 (_ BitVec 32))) (Found!5287 (index!23376 (_ BitVec 32))) (Intermediate!5287 (undefined!6099 Bool) (index!23377 (_ BitVec 32)) (x!52292 (_ BitVec 32))) (Undefined!5287) (MissingVacant!5287 (index!23378 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35051 (_ BitVec 32)) SeekEntryResult!5287)

(assert (=> b!556396 (= e!320532 (= (seekEntryOrOpen!0 (select (arr!16831 a!3118) j!142) a!3118 mask!3119) (Found!5287 j!142)))))

(declare-fun b!556397 () Bool)

(declare-fun res!348964 () Bool)

(assert (=> b!556397 (=> (not res!348964) (not e!320533))))

(declare-fun arrayContainsKey!0 (array!35051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556397 (= res!348964 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun e!320536 () Bool)

(declare-fun lt!252895 () SeekEntryResult!5287)

(declare-fun b!556398 () Bool)

(get-info :version)

(assert (=> b!556398 (= e!320536 (not (or (not ((_ is Intermediate!5287) lt!252895)) (undefined!6099 lt!252895) (= (select (arr!16831 a!3118) (index!23377 lt!252895)) (select (arr!16831 a!3118) j!142)) (= (select (arr!16831 a!3118) (index!23377 lt!252895)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge (index!23377 lt!252895) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252895) (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(assert (=> b!556398 e!320532))

(declare-fun res!348958 () Bool)

(assert (=> b!556398 (=> (not res!348958) (not e!320532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35051 (_ BitVec 32)) Bool)

(assert (=> b!556398 (= res!348958 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17348 0))(
  ( (Unit!17349) )
))
(declare-fun lt!252897 () Unit!17348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17348)

(assert (=> b!556398 (= lt!252897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556399 () Bool)

(declare-fun res!348961 () Bool)

(declare-fun e!320534 () Bool)

(assert (=> b!556399 (=> (not res!348961) (not e!320534))))

(declare-datatypes ((List!10964 0))(
  ( (Nil!10961) (Cons!10960 (h!11945 (_ BitVec 64)) (t!17200 List!10964)) )
))
(declare-fun arrayNoDuplicates!0 (array!35051 (_ BitVec 32) List!10964) Bool)

(assert (=> b!556399 (= res!348961 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10961))))

(declare-fun b!556400 () Bool)

(declare-fun res!348965 () Bool)

(assert (=> b!556400 (=> (not res!348965) (not e!320534))))

(assert (=> b!556400 (= res!348965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!556401 () Bool)

(declare-fun res!348962 () Bool)

(assert (=> b!556401 (=> (not res!348962) (not e!320533))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!556401 (= res!348962 (and (= (size!17195 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17195 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17195 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556402 () Bool)

(assert (=> b!556402 (= e!320534 e!320536)))

(declare-fun res!348963 () Bool)

(assert (=> b!556402 (=> (not res!348963) (not e!320536))))

(declare-fun lt!252896 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35051 (_ BitVec 32)) SeekEntryResult!5287)

(assert (=> b!556402 (= res!348963 (= lt!252895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252896 (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)) mask!3119)))))

(declare-fun lt!252898 () (_ BitVec 32))

(assert (=> b!556402 (= lt!252895 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252898 (select (arr!16831 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556402 (= lt!252896 (toIndex!0 (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!556402 (= lt!252898 (toIndex!0 (select (arr!16831 a!3118) j!142) mask!3119))))

(declare-fun b!556403 () Bool)

(assert (=> b!556403 (= e!320533 e!320534)))

(declare-fun res!348960 () Bool)

(assert (=> b!556403 (=> (not res!348960) (not e!320534))))

(declare-fun lt!252899 () SeekEntryResult!5287)

(assert (=> b!556403 (= res!348960 (or (= lt!252899 (MissingZero!5287 i!1132)) (= lt!252899 (MissingVacant!5287 i!1132))))))

(assert (=> b!556403 (= lt!252899 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50872 res!348957) b!556401))

(assert (= (and b!556401 res!348962) b!556395))

(assert (= (and b!556395 res!348956) b!556394))

(assert (= (and b!556394 res!348959) b!556397))

(assert (= (and b!556397 res!348964) b!556403))

(assert (= (and b!556403 res!348960) b!556400))

(assert (= (and b!556400 res!348965) b!556399))

(assert (= (and b!556399 res!348961) b!556402))

(assert (= (and b!556402 res!348963) b!556398))

(assert (= (and b!556398 res!348958) b!556396))

(declare-fun m!534459 () Bool)

(assert (=> b!556395 m!534459))

(assert (=> b!556395 m!534459))

(declare-fun m!534461 () Bool)

(assert (=> b!556395 m!534461))

(declare-fun m!534463 () Bool)

(assert (=> b!556398 m!534463))

(assert (=> b!556398 m!534459))

(declare-fun m!534465 () Bool)

(assert (=> b!556398 m!534465))

(declare-fun m!534467 () Bool)

(assert (=> b!556398 m!534467))

(declare-fun m!534469 () Bool)

(assert (=> b!556403 m!534469))

(declare-fun m!534471 () Bool)

(assert (=> start!50872 m!534471))

(declare-fun m!534473 () Bool)

(assert (=> start!50872 m!534473))

(assert (=> b!556402 m!534459))

(declare-fun m!534475 () Bool)

(assert (=> b!556402 m!534475))

(assert (=> b!556402 m!534459))

(declare-fun m!534477 () Bool)

(assert (=> b!556402 m!534477))

(assert (=> b!556402 m!534459))

(declare-fun m!534479 () Bool)

(assert (=> b!556402 m!534479))

(declare-fun m!534481 () Bool)

(assert (=> b!556402 m!534481))

(assert (=> b!556402 m!534479))

(declare-fun m!534483 () Bool)

(assert (=> b!556402 m!534483))

(assert (=> b!556402 m!534479))

(declare-fun m!534485 () Bool)

(assert (=> b!556402 m!534485))

(assert (=> b!556396 m!534459))

(assert (=> b!556396 m!534459))

(declare-fun m!534487 () Bool)

(assert (=> b!556396 m!534487))

(declare-fun m!534489 () Bool)

(assert (=> b!556400 m!534489))

(declare-fun m!534491 () Bool)

(assert (=> b!556397 m!534491))

(declare-fun m!534493 () Bool)

(assert (=> b!556394 m!534493))

(declare-fun m!534495 () Bool)

(assert (=> b!556399 m!534495))

(check-sat (not b!556397) (not start!50872) (not b!556394) (not b!556400) (not b!556399) (not b!556403) (not b!556402) (not b!556395) (not b!556396) (not b!556398))
(check-sat)
(get-model)

(declare-fun d!83175 () Bool)

(assert (=> d!83175 (= (validKeyInArray!0 (select (arr!16831 a!3118) j!142)) (and (not (= (select (arr!16831 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16831 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556395 d!83175))

(declare-fun bm!32327 () Bool)

(declare-fun call!32330 () Bool)

(assert (=> bm!32327 (= call!32330 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556442 () Bool)

(declare-fun e!320559 () Bool)

(assert (=> b!556442 (= e!320559 call!32330)))

(declare-fun b!556443 () Bool)

(declare-fun e!320558 () Bool)

(assert (=> b!556443 (= e!320558 e!320559)))

(declare-fun c!64058 () Bool)

(assert (=> b!556443 (= c!64058 (validKeyInArray!0 (select (arr!16831 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83177 () Bool)

(declare-fun res!349000 () Bool)

(assert (=> d!83177 (=> res!349000 e!320558)))

(assert (=> d!83177 (= res!349000 (bvsge #b00000000000000000000000000000000 (size!17195 a!3118)))))

(assert (=> d!83177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!320558)))

(declare-fun b!556444 () Bool)

(declare-fun e!320560 () Bool)

(assert (=> b!556444 (= e!320560 call!32330)))

(declare-fun b!556445 () Bool)

(assert (=> b!556445 (= e!320559 e!320560)))

(declare-fun lt!252921 () (_ BitVec 64))

(assert (=> b!556445 (= lt!252921 (select (arr!16831 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!252922 () Unit!17348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35051 (_ BitVec 64) (_ BitVec 32)) Unit!17348)

(assert (=> b!556445 (= lt!252922 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!252921 #b00000000000000000000000000000000))))

(assert (=> b!556445 (arrayContainsKey!0 a!3118 lt!252921 #b00000000000000000000000000000000)))

(declare-fun lt!252923 () Unit!17348)

(assert (=> b!556445 (= lt!252923 lt!252922)))

(declare-fun res!349001 () Bool)

(assert (=> b!556445 (= res!349001 (= (seekEntryOrOpen!0 (select (arr!16831 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5287 #b00000000000000000000000000000000)))))

(assert (=> b!556445 (=> (not res!349001) (not e!320560))))

(assert (= (and d!83177 (not res!349000)) b!556443))

(assert (= (and b!556443 c!64058) b!556445))

(assert (= (and b!556443 (not c!64058)) b!556442))

(assert (= (and b!556445 res!349001) b!556444))

(assert (= (or b!556444 b!556442) bm!32327))

(declare-fun m!534535 () Bool)

(assert (=> bm!32327 m!534535))

(declare-fun m!534537 () Bool)

(assert (=> b!556443 m!534537))

(assert (=> b!556443 m!534537))

(declare-fun m!534539 () Bool)

(assert (=> b!556443 m!534539))

(assert (=> b!556445 m!534537))

(declare-fun m!534541 () Bool)

(assert (=> b!556445 m!534541))

(declare-fun m!534543 () Bool)

(assert (=> b!556445 m!534543))

(assert (=> b!556445 m!534537))

(declare-fun m!534545 () Bool)

(assert (=> b!556445 m!534545))

(assert (=> b!556400 d!83177))

(declare-fun lt!252945 () SeekEntryResult!5287)

(declare-fun b!556500 () Bool)

(assert (=> b!556500 (and (bvsge (index!23377 lt!252945) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252945) (size!17195 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)))))))

(declare-fun res!349022 () Bool)

(assert (=> b!556500 (= res!349022 (= (select (arr!16831 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118))) (index!23377 lt!252945)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320594 () Bool)

(assert (=> b!556500 (=> res!349022 e!320594)))

(declare-fun d!83181 () Bool)

(declare-fun e!320593 () Bool)

(assert (=> d!83181 e!320593))

(declare-fun c!64078 () Bool)

(assert (=> d!83181 (= c!64078 (and ((_ is Intermediate!5287) lt!252945) (undefined!6099 lt!252945)))))

(declare-fun e!320595 () SeekEntryResult!5287)

(assert (=> d!83181 (= lt!252945 e!320595)))

(declare-fun c!64077 () Bool)

(assert (=> d!83181 (= c!64077 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!252944 () (_ BitVec 64))

(assert (=> d!83181 (= lt!252944 (select (arr!16831 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118))) lt!252896))))

(assert (=> d!83181 (validMask!0 mask!3119)))

(assert (=> d!83181 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252896 (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)) mask!3119) lt!252945)))

(declare-fun b!556501 () Bool)

(declare-fun e!320591 () SeekEntryResult!5287)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556501 (= e!320591 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252896 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)) mask!3119))))

(declare-fun b!556502 () Bool)

(declare-fun e!320592 () Bool)

(assert (=> b!556502 (= e!320593 e!320592)))

(declare-fun res!349023 () Bool)

(assert (=> b!556502 (= res!349023 (and ((_ is Intermediate!5287) lt!252945) (not (undefined!6099 lt!252945)) (bvslt (x!52292 lt!252945) #b01111111111111111111111111111110) (bvsge (x!52292 lt!252945) #b00000000000000000000000000000000) (bvsge (x!52292 lt!252945) #b00000000000000000000000000000000)))))

(assert (=> b!556502 (=> (not res!349023) (not e!320592))))

(declare-fun b!556503 () Bool)

(assert (=> b!556503 (and (bvsge (index!23377 lt!252945) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252945) (size!17195 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)))))))

(declare-fun res!349021 () Bool)

(assert (=> b!556503 (= res!349021 (= (select (arr!16831 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118))) (index!23377 lt!252945)) (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!556503 (=> res!349021 e!320594)))

(assert (=> b!556503 (= e!320592 e!320594)))

(declare-fun b!556504 () Bool)

(assert (=> b!556504 (= e!320591 (Intermediate!5287 false lt!252896 #b00000000000000000000000000000000))))

(declare-fun b!556505 () Bool)

(assert (=> b!556505 (= e!320593 (bvsge (x!52292 lt!252945) #b01111111111111111111111111111110))))

(declare-fun b!556506 () Bool)

(assert (=> b!556506 (= e!320595 e!320591)))

(declare-fun c!64079 () Bool)

(assert (=> b!556506 (= c!64079 (or (= lt!252944 (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!252944 lt!252944) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556507 () Bool)

(assert (=> b!556507 (= e!320595 (Intermediate!5287 true lt!252896 #b00000000000000000000000000000000))))

(declare-fun b!556508 () Bool)

(assert (=> b!556508 (and (bvsge (index!23377 lt!252945) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252945) (size!17195 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118)))))))

(assert (=> b!556508 (= e!320594 (= (select (arr!16831 (array!35052 (store (arr!16831 a!3118) i!1132 k0!1914) (size!17195 a!3118))) (index!23377 lt!252945)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!83181 c!64077) b!556507))

(assert (= (and d!83181 (not c!64077)) b!556506))

(assert (= (and b!556506 c!64079) b!556504))

(assert (= (and b!556506 (not c!64079)) b!556501))

(assert (= (and d!83181 c!64078) b!556505))

(assert (= (and d!83181 (not c!64078)) b!556502))

(assert (= (and b!556502 res!349023) b!556503))

(assert (= (and b!556503 (not res!349021)) b!556500))

(assert (= (and b!556500 (not res!349022)) b!556508))

(declare-fun m!534563 () Bool)

(assert (=> d!83181 m!534563))

(assert (=> d!83181 m!534471))

(declare-fun m!534565 () Bool)

(assert (=> b!556508 m!534565))

(assert (=> b!556500 m!534565))

(assert (=> b!556503 m!534565))

(declare-fun m!534567 () Bool)

(assert (=> b!556501 m!534567))

(assert (=> b!556501 m!534567))

(assert (=> b!556501 m!534479))

(declare-fun m!534569 () Bool)

(assert (=> b!556501 m!534569))

(assert (=> b!556402 d!83181))

(declare-fun b!556517 () Bool)

(declare-fun lt!252953 () SeekEntryResult!5287)

(assert (=> b!556517 (and (bvsge (index!23377 lt!252953) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252953) (size!17195 a!3118)))))

(declare-fun res!349029 () Bool)

(assert (=> b!556517 (= res!349029 (= (select (arr!16831 a!3118) (index!23377 lt!252953)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!320605 () Bool)

(assert (=> b!556517 (=> res!349029 e!320605)))

(declare-fun d!83195 () Bool)

(declare-fun e!320604 () Bool)

(assert (=> d!83195 e!320604))

(declare-fun c!64083 () Bool)

(assert (=> d!83195 (= c!64083 (and ((_ is Intermediate!5287) lt!252953) (undefined!6099 lt!252953)))))

(declare-fun e!320606 () SeekEntryResult!5287)

(assert (=> d!83195 (= lt!252953 e!320606)))

(declare-fun c!64082 () Bool)

(assert (=> d!83195 (= c!64082 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!252952 () (_ BitVec 64))

(assert (=> d!83195 (= lt!252952 (select (arr!16831 a!3118) lt!252898))))

(assert (=> d!83195 (validMask!0 mask!3119)))

(assert (=> d!83195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252898 (select (arr!16831 a!3118) j!142) a!3118 mask!3119) lt!252953)))

(declare-fun e!320602 () SeekEntryResult!5287)

(declare-fun b!556518 () Bool)

(assert (=> b!556518 (= e!320602 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!252898 #b00000000000000000000000000000000 mask!3119) (select (arr!16831 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556519 () Bool)

(declare-fun e!320603 () Bool)

(assert (=> b!556519 (= e!320604 e!320603)))

(declare-fun res!349030 () Bool)

(assert (=> b!556519 (= res!349030 (and ((_ is Intermediate!5287) lt!252953) (not (undefined!6099 lt!252953)) (bvslt (x!52292 lt!252953) #b01111111111111111111111111111110) (bvsge (x!52292 lt!252953) #b00000000000000000000000000000000) (bvsge (x!52292 lt!252953) #b00000000000000000000000000000000)))))

(assert (=> b!556519 (=> (not res!349030) (not e!320603))))

(declare-fun b!556520 () Bool)

(assert (=> b!556520 (and (bvsge (index!23377 lt!252953) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252953) (size!17195 a!3118)))))

(declare-fun res!349028 () Bool)

(assert (=> b!556520 (= res!349028 (= (select (arr!16831 a!3118) (index!23377 lt!252953)) (select (arr!16831 a!3118) j!142)))))

(assert (=> b!556520 (=> res!349028 e!320605)))

(assert (=> b!556520 (= e!320603 e!320605)))

(declare-fun b!556521 () Bool)

(assert (=> b!556521 (= e!320602 (Intermediate!5287 false lt!252898 #b00000000000000000000000000000000))))

(declare-fun b!556522 () Bool)

(assert (=> b!556522 (= e!320604 (bvsge (x!52292 lt!252953) #b01111111111111111111111111111110))))

(declare-fun b!556523 () Bool)

(assert (=> b!556523 (= e!320606 e!320602)))

(declare-fun c!64084 () Bool)

(assert (=> b!556523 (= c!64084 (or (= lt!252952 (select (arr!16831 a!3118) j!142)) (= (bvadd lt!252952 lt!252952) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!556524 () Bool)

(assert (=> b!556524 (= e!320606 (Intermediate!5287 true lt!252898 #b00000000000000000000000000000000))))

(declare-fun b!556525 () Bool)

(assert (=> b!556525 (and (bvsge (index!23377 lt!252953) #b00000000000000000000000000000000) (bvslt (index!23377 lt!252953) (size!17195 a!3118)))))

(assert (=> b!556525 (= e!320605 (= (select (arr!16831 a!3118) (index!23377 lt!252953)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!83195 c!64082) b!556524))

(assert (= (and d!83195 (not c!64082)) b!556523))

(assert (= (and b!556523 c!64084) b!556521))

(assert (= (and b!556523 (not c!64084)) b!556518))

(assert (= (and d!83195 c!64083) b!556522))

(assert (= (and d!83195 (not c!64083)) b!556519))

(assert (= (and b!556519 res!349030) b!556520))

(assert (= (and b!556520 (not res!349028)) b!556517))

(assert (= (and b!556517 (not res!349029)) b!556525))

(declare-fun m!534571 () Bool)

(assert (=> d!83195 m!534571))

(assert (=> d!83195 m!534471))

(declare-fun m!534573 () Bool)

(assert (=> b!556525 m!534573))

(assert (=> b!556517 m!534573))

(assert (=> b!556520 m!534573))

(declare-fun m!534575 () Bool)

(assert (=> b!556518 m!534575))

(assert (=> b!556518 m!534575))

(assert (=> b!556518 m!534459))

(declare-fun m!534577 () Bool)

(assert (=> b!556518 m!534577))

(assert (=> b!556402 d!83195))

(declare-fun d!83197 () Bool)

(declare-fun lt!252962 () (_ BitVec 32))

(declare-fun lt!252961 () (_ BitVec 32))

(assert (=> d!83197 (= lt!252962 (bvmul (bvxor lt!252961 (bvlshr lt!252961 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83197 (= lt!252961 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83197 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349031 (let ((h!11948 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52297 (bvmul (bvxor h!11948 (bvlshr h!11948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52297 (bvlshr x!52297 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349031 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349031 #b00000000000000000000000000000000))))))

(assert (=> d!83197 (= (toIndex!0 (select (store (arr!16831 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!252962 (bvlshr lt!252962 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556402 d!83197))

(declare-fun d!83201 () Bool)

(declare-fun lt!252964 () (_ BitVec 32))

(declare-fun lt!252963 () (_ BitVec 32))

(assert (=> d!83201 (= lt!252964 (bvmul (bvxor lt!252963 (bvlshr lt!252963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83201 (= lt!252963 ((_ extract 31 0) (bvand (bvxor (select (arr!16831 a!3118) j!142) (bvlshr (select (arr!16831 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83201 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349031 (let ((h!11948 ((_ extract 31 0) (bvand (bvxor (select (arr!16831 a!3118) j!142) (bvlshr (select (arr!16831 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52297 (bvmul (bvxor h!11948 (bvlshr h!11948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52297 (bvlshr x!52297 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349031 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349031 #b00000000000000000000000000000000))))))

(assert (=> d!83201 (= (toIndex!0 (select (arr!16831 a!3118) j!142) mask!3119) (bvand (bvxor lt!252964 (bvlshr lt!252964 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!556402 d!83201))

(declare-fun b!556590 () Bool)

(declare-fun e!320644 () SeekEntryResult!5287)

(declare-fun lt!252992 () SeekEntryResult!5287)

(assert (=> b!556590 (= e!320644 (Found!5287 (index!23377 lt!252992)))))

(declare-fun b!556591 () Bool)

(declare-fun e!320645 () SeekEntryResult!5287)

(assert (=> b!556591 (= e!320645 e!320644)))

(declare-fun lt!252990 () (_ BitVec 64))

(assert (=> b!556591 (= lt!252990 (select (arr!16831 a!3118) (index!23377 lt!252992)))))

(declare-fun c!64110 () Bool)

(assert (=> b!556591 (= c!64110 (= lt!252990 (select (arr!16831 a!3118) j!142)))))

(declare-fun b!556592 () Bool)

(assert (=> b!556592 (= e!320645 Undefined!5287)))

(declare-fun d!83203 () Bool)

(declare-fun lt!252991 () SeekEntryResult!5287)

(assert (=> d!83203 (and (or ((_ is Undefined!5287) lt!252991) (not ((_ is Found!5287) lt!252991)) (and (bvsge (index!23376 lt!252991) #b00000000000000000000000000000000) (bvslt (index!23376 lt!252991) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252991) ((_ is Found!5287) lt!252991) (not ((_ is MissingZero!5287) lt!252991)) (and (bvsge (index!23375 lt!252991) #b00000000000000000000000000000000) (bvslt (index!23375 lt!252991) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252991) ((_ is Found!5287) lt!252991) ((_ is MissingZero!5287) lt!252991) (not ((_ is MissingVacant!5287) lt!252991)) (and (bvsge (index!23378 lt!252991) #b00000000000000000000000000000000) (bvslt (index!23378 lt!252991) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252991) (ite ((_ is Found!5287) lt!252991) (= (select (arr!16831 a!3118) (index!23376 lt!252991)) (select (arr!16831 a!3118) j!142)) (ite ((_ is MissingZero!5287) lt!252991) (= (select (arr!16831 a!3118) (index!23375 lt!252991)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5287) lt!252991) (= (select (arr!16831 a!3118) (index!23378 lt!252991)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83203 (= lt!252991 e!320645)))

(declare-fun c!64112 () Bool)

(assert (=> d!83203 (= c!64112 (and ((_ is Intermediate!5287) lt!252992) (undefined!6099 lt!252992)))))

(assert (=> d!83203 (= lt!252992 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16831 a!3118) j!142) mask!3119) (select (arr!16831 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83203 (validMask!0 mask!3119)))

(assert (=> d!83203 (= (seekEntryOrOpen!0 (select (arr!16831 a!3118) j!142) a!3118 mask!3119) lt!252991)))

(declare-fun b!556593 () Bool)

(declare-fun e!320646 () SeekEntryResult!5287)

(assert (=> b!556593 (= e!320646 (MissingZero!5287 (index!23377 lt!252992)))))

(declare-fun b!556594 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35051 (_ BitVec 32)) SeekEntryResult!5287)

(assert (=> b!556594 (= e!320646 (seekKeyOrZeroReturnVacant!0 (x!52292 lt!252992) (index!23377 lt!252992) (index!23377 lt!252992) (select (arr!16831 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!556595 () Bool)

(declare-fun c!64111 () Bool)

(assert (=> b!556595 (= c!64111 (= lt!252990 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556595 (= e!320644 e!320646)))

(assert (= (and d!83203 c!64112) b!556592))

(assert (= (and d!83203 (not c!64112)) b!556591))

(assert (= (and b!556591 c!64110) b!556590))

(assert (= (and b!556591 (not c!64110)) b!556595))

(assert (= (and b!556595 c!64111) b!556593))

(assert (= (and b!556595 (not c!64111)) b!556594))

(declare-fun m!534617 () Bool)

(assert (=> b!556591 m!534617))

(declare-fun m!534619 () Bool)

(assert (=> d!83203 m!534619))

(assert (=> d!83203 m!534459))

(assert (=> d!83203 m!534477))

(assert (=> d!83203 m!534471))

(declare-fun m!534621 () Bool)

(assert (=> d!83203 m!534621))

(declare-fun m!534623 () Bool)

(assert (=> d!83203 m!534623))

(assert (=> d!83203 m!534477))

(assert (=> d!83203 m!534459))

(declare-fun m!534625 () Bool)

(assert (=> d!83203 m!534625))

(assert (=> b!556594 m!534459))

(declare-fun m!534627 () Bool)

(assert (=> b!556594 m!534627))

(assert (=> b!556396 d!83203))

(declare-fun b!556606 () Bool)

(declare-fun e!320655 () SeekEntryResult!5287)

(declare-fun lt!252995 () SeekEntryResult!5287)

(assert (=> b!556606 (= e!320655 (Found!5287 (index!23377 lt!252995)))))

(declare-fun b!556607 () Bool)

(declare-fun e!320656 () SeekEntryResult!5287)

(assert (=> b!556607 (= e!320656 e!320655)))

(declare-fun lt!252993 () (_ BitVec 64))

(assert (=> b!556607 (= lt!252993 (select (arr!16831 a!3118) (index!23377 lt!252995)))))

(declare-fun c!64115 () Bool)

(assert (=> b!556607 (= c!64115 (= lt!252993 k0!1914))))

(declare-fun b!556608 () Bool)

(assert (=> b!556608 (= e!320656 Undefined!5287)))

(declare-fun d!83215 () Bool)

(declare-fun lt!252994 () SeekEntryResult!5287)

(assert (=> d!83215 (and (or ((_ is Undefined!5287) lt!252994) (not ((_ is Found!5287) lt!252994)) (and (bvsge (index!23376 lt!252994) #b00000000000000000000000000000000) (bvslt (index!23376 lt!252994) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252994) ((_ is Found!5287) lt!252994) (not ((_ is MissingZero!5287) lt!252994)) (and (bvsge (index!23375 lt!252994) #b00000000000000000000000000000000) (bvslt (index!23375 lt!252994) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252994) ((_ is Found!5287) lt!252994) ((_ is MissingZero!5287) lt!252994) (not ((_ is MissingVacant!5287) lt!252994)) (and (bvsge (index!23378 lt!252994) #b00000000000000000000000000000000) (bvslt (index!23378 lt!252994) (size!17195 a!3118)))) (or ((_ is Undefined!5287) lt!252994) (ite ((_ is Found!5287) lt!252994) (= (select (arr!16831 a!3118) (index!23376 lt!252994)) k0!1914) (ite ((_ is MissingZero!5287) lt!252994) (= (select (arr!16831 a!3118) (index!23375 lt!252994)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5287) lt!252994) (= (select (arr!16831 a!3118) (index!23378 lt!252994)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83215 (= lt!252994 e!320656)))

(declare-fun c!64117 () Bool)

(assert (=> d!83215 (= c!64117 (and ((_ is Intermediate!5287) lt!252995) (undefined!6099 lt!252995)))))

(assert (=> d!83215 (= lt!252995 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83215 (validMask!0 mask!3119)))

(assert (=> d!83215 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!252994)))

(declare-fun b!556609 () Bool)

(declare-fun e!320657 () SeekEntryResult!5287)

(assert (=> b!556609 (= e!320657 (MissingZero!5287 (index!23377 lt!252995)))))

(declare-fun b!556610 () Bool)

(assert (=> b!556610 (= e!320657 (seekKeyOrZeroReturnVacant!0 (x!52292 lt!252995) (index!23377 lt!252995) (index!23377 lt!252995) k0!1914 a!3118 mask!3119))))

(declare-fun b!556611 () Bool)

(declare-fun c!64116 () Bool)

(assert (=> b!556611 (= c!64116 (= lt!252993 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!556611 (= e!320655 e!320657)))

(assert (= (and d!83215 c!64117) b!556608))

(assert (= (and d!83215 (not c!64117)) b!556607))

(assert (= (and b!556607 c!64115) b!556606))

(assert (= (and b!556607 (not c!64115)) b!556611))

(assert (= (and b!556611 c!64116) b!556609))

(assert (= (and b!556611 (not c!64116)) b!556610))

(declare-fun m!534629 () Bool)

(assert (=> b!556607 m!534629))

(declare-fun m!534631 () Bool)

(assert (=> d!83215 m!534631))

(declare-fun m!534633 () Bool)

(assert (=> d!83215 m!534633))

(assert (=> d!83215 m!534471))

(declare-fun m!534635 () Bool)

(assert (=> d!83215 m!534635))

(declare-fun m!534637 () Bool)

(assert (=> d!83215 m!534637))

(assert (=> d!83215 m!534633))

(declare-fun m!534639 () Bool)

(assert (=> d!83215 m!534639))

(declare-fun m!534641 () Bool)

(assert (=> b!556610 m!534641))

(assert (=> b!556403 d!83215))

(declare-fun call!32336 () Bool)

(declare-fun bm!32333 () Bool)

(assert (=> bm!32333 (= call!32336 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!556612 () Bool)

(declare-fun e!320659 () Bool)

(assert (=> b!556612 (= e!320659 call!32336)))

(declare-fun b!556613 () Bool)

(declare-fun e!320658 () Bool)

(assert (=> b!556613 (= e!320658 e!320659)))

(declare-fun c!64118 () Bool)

(assert (=> b!556613 (= c!64118 (validKeyInArray!0 (select (arr!16831 a!3118) j!142)))))

(declare-fun d!83217 () Bool)

(declare-fun res!349052 () Bool)

(assert (=> d!83217 (=> res!349052 e!320658)))

(assert (=> d!83217 (= res!349052 (bvsge j!142 (size!17195 a!3118)))))

(assert (=> d!83217 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!320658)))

(declare-fun b!556614 () Bool)

(declare-fun e!320660 () Bool)

(assert (=> b!556614 (= e!320660 call!32336)))

(declare-fun b!556615 () Bool)

(assert (=> b!556615 (= e!320659 e!320660)))

(declare-fun lt!252996 () (_ BitVec 64))

(assert (=> b!556615 (= lt!252996 (select (arr!16831 a!3118) j!142))))

(declare-fun lt!252997 () Unit!17348)

(assert (=> b!556615 (= lt!252997 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!252996 j!142))))

(assert (=> b!556615 (arrayContainsKey!0 a!3118 lt!252996 #b00000000000000000000000000000000)))

(declare-fun lt!252998 () Unit!17348)

(assert (=> b!556615 (= lt!252998 lt!252997)))

(declare-fun res!349053 () Bool)

(assert (=> b!556615 (= res!349053 (= (seekEntryOrOpen!0 (select (arr!16831 a!3118) j!142) a!3118 mask!3119) (Found!5287 j!142)))))

(assert (=> b!556615 (=> (not res!349053) (not e!320660))))

(assert (= (and d!83217 (not res!349052)) b!556613))

(assert (= (and b!556613 c!64118) b!556615))

(assert (= (and b!556613 (not c!64118)) b!556612))

(assert (= (and b!556615 res!349053) b!556614))

(assert (= (or b!556614 b!556612) bm!32333))

(declare-fun m!534643 () Bool)

(assert (=> bm!32333 m!534643))

(assert (=> b!556613 m!534459))

(assert (=> b!556613 m!534459))

(assert (=> b!556613 m!534461))

(assert (=> b!556615 m!534459))

(declare-fun m!534645 () Bool)

(assert (=> b!556615 m!534645))

(declare-fun m!534647 () Bool)

(assert (=> b!556615 m!534647))

(assert (=> b!556615 m!534459))

(assert (=> b!556615 m!534487))

(assert (=> b!556398 d!83217))

(declare-fun d!83219 () Bool)

(assert (=> d!83219 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253005 () Unit!17348)

(declare-fun choose!38 (array!35051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17348)

(assert (=> d!83219 (= lt!253005 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83219 (validMask!0 mask!3119)))

(assert (=> d!83219 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253005)))

(declare-fun bs!17338 () Bool)

(assert (= bs!17338 d!83219))

(assert (=> bs!17338 m!534465))

(declare-fun m!534671 () Bool)

(assert (=> bs!17338 m!534671))

(assert (=> bs!17338 m!534471))

(assert (=> b!556398 d!83219))

(declare-fun d!83227 () Bool)

(declare-fun res!349070 () Bool)

(declare-fun e!320681 () Bool)

(assert (=> d!83227 (=> res!349070 e!320681)))

(assert (=> d!83227 (= res!349070 (= (select (arr!16831 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83227 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!320681)))

(declare-fun b!556647 () Bool)

(declare-fun e!320682 () Bool)

(assert (=> b!556647 (= e!320681 e!320682)))

(declare-fun res!349071 () Bool)

(assert (=> b!556647 (=> (not res!349071) (not e!320682))))

(assert (=> b!556647 (= res!349071 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17195 a!3118)))))

(declare-fun b!556648 () Bool)

(assert (=> b!556648 (= e!320682 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83227 (not res!349070)) b!556647))

(assert (= (and b!556647 res!349071) b!556648))

(assert (=> d!83227 m!534537))

(declare-fun m!534673 () Bool)

(assert (=> b!556648 m!534673))

(assert (=> b!556397 d!83227))

(declare-fun b!556677 () Bool)

(declare-fun e!320709 () Bool)

(declare-fun e!320706 () Bool)

(assert (=> b!556677 (= e!320709 e!320706)))

(declare-fun c!64133 () Bool)

(assert (=> b!556677 (= c!64133 (validKeyInArray!0 (select (arr!16831 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556678 () Bool)

(declare-fun e!320708 () Bool)

(declare-fun contains!2850 (List!10964 (_ BitVec 64)) Bool)

(assert (=> b!556678 (= e!320708 (contains!2850 Nil!10961 (select (arr!16831 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32342 () Bool)

(declare-fun call!32345 () Bool)

(assert (=> bm!32342 (= call!32345 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64133 (Cons!10960 (select (arr!16831 a!3118) #b00000000000000000000000000000000) Nil!10961) Nil!10961)))))

(declare-fun b!556679 () Bool)

(assert (=> b!556679 (= e!320706 call!32345)))

(declare-fun d!83231 () Bool)

(declare-fun res!349089 () Bool)

(declare-fun e!320707 () Bool)

(assert (=> d!83231 (=> res!349089 e!320707)))

(assert (=> d!83231 (= res!349089 (bvsge #b00000000000000000000000000000000 (size!17195 a!3118)))))

(assert (=> d!83231 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10961) e!320707)))

(declare-fun b!556680 () Bool)

(assert (=> b!556680 (= e!320707 e!320709)))

(declare-fun res!349088 () Bool)

(assert (=> b!556680 (=> (not res!349088) (not e!320709))))

(assert (=> b!556680 (= res!349088 (not e!320708))))

(declare-fun res!349090 () Bool)

(assert (=> b!556680 (=> (not res!349090) (not e!320708))))

(assert (=> b!556680 (= res!349090 (validKeyInArray!0 (select (arr!16831 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!556681 () Bool)

(assert (=> b!556681 (= e!320706 call!32345)))

(assert (= (and d!83231 (not res!349089)) b!556680))

(assert (= (and b!556680 res!349090) b!556678))

(assert (= (and b!556680 res!349088) b!556677))

(assert (= (and b!556677 c!64133) b!556679))

(assert (= (and b!556677 (not c!64133)) b!556681))

(assert (= (or b!556679 b!556681) bm!32342))

(assert (=> b!556677 m!534537))

(assert (=> b!556677 m!534537))

(assert (=> b!556677 m!534539))

(assert (=> b!556678 m!534537))

(assert (=> b!556678 m!534537))

(declare-fun m!534681 () Bool)

(assert (=> b!556678 m!534681))

(assert (=> bm!32342 m!534537))

(declare-fun m!534685 () Bool)

(assert (=> bm!32342 m!534685))

(assert (=> b!556680 m!534537))

(assert (=> b!556680 m!534537))

(assert (=> b!556680 m!534539))

(assert (=> b!556399 d!83231))

(declare-fun d!83237 () Bool)

(assert (=> d!83237 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!556394 d!83237))

(declare-fun d!83239 () Bool)

(assert (=> d!83239 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50872 d!83239))

(declare-fun d!83247 () Bool)

(assert (=> d!83247 (= (array_inv!12605 a!3118) (bvsge (size!17195 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50872 d!83247))

(check-sat (not b!556613) (not b!556501) (not b!556677) (not b!556518) (not d!83215) (not b!556680) (not bm!32333) (not d!83195) (not bm!32327) (not b!556594) (not b!556648) (not d!83203) (not b!556443) (not b!556445) (not bm!32342) (not b!556610) (not b!556615) (not d!83181) (not b!556678) (not d!83219))
(check-sat)
