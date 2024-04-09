; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26758 () Bool)

(assert start!26758)

(declare-fun b!277854 () Bool)

(declare-fun res!141699 () Bool)

(declare-fun e!177234 () Bool)

(assert (=> b!277854 (=> (not res!141699) (not e!177234))))

(declare-datatypes ((array!13844 0))(
  ( (array!13845 (arr!6571 (Array (_ BitVec 32) (_ BitVec 64))) (size!6923 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13844)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277854 (= res!141699 (and (= (size!6923 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6923 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6923 a!3325))))))

(declare-fun b!277855 () Bool)

(declare-fun e!177236 () Bool)

(assert (=> b!277855 (= e!177234 e!177236)))

(declare-fun res!141704 () Bool)

(assert (=> b!277855 (=> (not res!141704) (not e!177236))))

(declare-datatypes ((SeekEntryResult!1740 0))(
  ( (MissingZero!1740 (index!9130 (_ BitVec 32))) (Found!1740 (index!9131 (_ BitVec 32))) (Intermediate!1740 (undefined!2552 Bool) (index!9132 (_ BitVec 32)) (x!27345 (_ BitVec 32))) (Undefined!1740) (MissingVacant!1740 (index!9133 (_ BitVec 32))) )
))
(declare-fun lt!138138 () SeekEntryResult!1740)

(assert (=> b!277855 (= res!141704 (or (= lt!138138 (MissingZero!1740 i!1267)) (= lt!138138 (MissingVacant!1740 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13844 (_ BitVec 32)) SeekEntryResult!1740)

(assert (=> b!277855 (= lt!138138 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277856 () Bool)

(declare-fun res!141701 () Bool)

(assert (=> b!277856 (=> (not res!141701) (not e!177234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277856 (= res!141701 (validKeyInArray!0 k!2581))))

(declare-fun b!277857 () Bool)

(declare-fun e!177238 () Bool)

(assert (=> b!277857 (= e!177236 e!177238)))

(declare-fun res!141700 () Bool)

(assert (=> b!277857 (=> (not res!141700) (not e!177238))))

(assert (=> b!277857 (= res!141700 (= startIndex!26 i!1267))))

(declare-fun lt!138137 () array!13844)

(assert (=> b!277857 (= lt!138137 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)))))

(declare-fun b!277858 () Bool)

(declare-datatypes ((Unit!8790 0))(
  ( (Unit!8791) )
))
(declare-fun e!177237 () Unit!8790)

(declare-fun lt!138140 () Unit!8790)

(assert (=> b!277858 (= e!177237 lt!138140)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13844 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8790)

(assert (=> b!277858 (= lt!138140 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13844 (_ BitVec 32)) Bool)

(assert (=> b!277858 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138137 mask!3868)))

(declare-fun b!277859 () Bool)

(declare-fun res!141703 () Bool)

(assert (=> b!277859 (=> (not res!141703) (not e!177236))))

(assert (=> b!277859 (= res!141703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277860 () Bool)

(assert (=> b!277860 (= e!177238 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138137 mask!3868)))))

(assert (=> b!277860 (= (seekEntryOrOpen!0 k!2581 lt!138137 mask!3868) (Found!1740 i!1267))))

(declare-fun lt!138139 () Unit!8790)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13844 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8790)

(assert (=> b!277860 (= lt!138139 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138136 () Unit!8790)

(assert (=> b!277860 (= lt!138136 e!177237)))

(declare-fun c!45629 () Bool)

(assert (=> b!277860 (= c!45629 (bvslt startIndex!26 (bvsub (size!6923 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277861 () Bool)

(declare-fun Unit!8792 () Unit!8790)

(assert (=> b!277861 (= e!177237 Unit!8792)))

(declare-fun res!141698 () Bool)

(assert (=> start!26758 (=> (not res!141698) (not e!177234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26758 (= res!141698 (validMask!0 mask!3868))))

(assert (=> start!26758 e!177234))

(declare-fun array_inv!4525 (array!13844) Bool)

(assert (=> start!26758 (array_inv!4525 a!3325)))

(assert (=> start!26758 true))

(declare-fun b!277862 () Bool)

(declare-fun res!141702 () Bool)

(assert (=> b!277862 (=> (not res!141702) (not e!177234))))

(declare-datatypes ((List!4400 0))(
  ( (Nil!4397) (Cons!4396 (h!5063 (_ BitVec 64)) (t!9490 List!4400)) )
))
(declare-fun arrayNoDuplicates!0 (array!13844 (_ BitVec 32) List!4400) Bool)

(assert (=> b!277862 (= res!141702 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4397))))

(declare-fun b!277863 () Bool)

(declare-fun res!141705 () Bool)

(assert (=> b!277863 (=> (not res!141705) (not e!177234))))

(declare-fun arrayContainsKey!0 (array!13844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277863 (= res!141705 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26758 res!141698) b!277854))

(assert (= (and b!277854 res!141699) b!277856))

(assert (= (and b!277856 res!141701) b!277862))

(assert (= (and b!277862 res!141702) b!277863))

(assert (= (and b!277863 res!141705) b!277855))

(assert (= (and b!277855 res!141704) b!277859))

(assert (= (and b!277859 res!141703) b!277857))

(assert (= (and b!277857 res!141700) b!277860))

(assert (= (and b!277860 c!45629) b!277858))

(assert (= (and b!277860 (not c!45629)) b!277861))

(declare-fun m!292813 () Bool)

(assert (=> b!277856 m!292813))

(declare-fun m!292815 () Bool)

(assert (=> b!277862 m!292815))

(declare-fun m!292817 () Bool)

(assert (=> b!277859 m!292817))

(declare-fun m!292819 () Bool)

(assert (=> b!277863 m!292819))

(declare-fun m!292821 () Bool)

(assert (=> b!277857 m!292821))

(declare-fun m!292823 () Bool)

(assert (=> b!277858 m!292823))

(declare-fun m!292825 () Bool)

(assert (=> b!277858 m!292825))

(declare-fun m!292827 () Bool)

(assert (=> start!26758 m!292827))

(declare-fun m!292829 () Bool)

(assert (=> start!26758 m!292829))

(declare-fun m!292831 () Bool)

(assert (=> b!277855 m!292831))

(declare-fun m!292833 () Bool)

(assert (=> b!277860 m!292833))

(declare-fun m!292835 () Bool)

(assert (=> b!277860 m!292835))

(declare-fun m!292837 () Bool)

(assert (=> b!277860 m!292837))

(push 1)

(assert (not b!277859))

(assert (not start!26758))

(assert (not b!277862))

(assert (not b!277863))

(assert (not b!277855))

(assert (not b!277856))

(assert (not b!277860))

(assert (not b!277858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64613 () Bool)

(assert (=> d!64613 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26758 d!64613))

(declare-fun d!64619 () Bool)

(assert (=> d!64619 (= (array_inv!4525 a!3325) (bvsge (size!6923 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26758 d!64619))

(declare-fun d!64621 () Bool)

(assert (=> d!64621 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!277856 d!64621))

(declare-fun b!278006 () Bool)

(declare-fun e!177331 () Bool)

(declare-fun call!25358 () Bool)

(assert (=> b!278006 (= e!177331 call!25358)))

(declare-fun b!278007 () Bool)

(declare-fun e!177332 () Bool)

(assert (=> b!278007 (= e!177332 e!177331)))

(declare-fun c!45656 () Bool)

(assert (=> b!278007 (= c!45656 (validKeyInArray!0 (select (arr!6571 lt!138137) startIndex!26)))))

(declare-fun bm!25355 () Bool)

(assert (=> bm!25355 (= call!25358 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!138137 mask!3868))))

(declare-fun b!278008 () Bool)

(declare-fun e!177333 () Bool)

(assert (=> b!278008 (= e!177331 e!177333)))

(declare-fun lt!138214 () (_ BitVec 64))

(assert (=> b!278008 (= lt!138214 (select (arr!6571 lt!138137) startIndex!26))))

(declare-fun lt!138213 () Unit!8790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13844 (_ BitVec 64) (_ BitVec 32)) Unit!8790)

(assert (=> b!278008 (= lt!138213 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138214 startIndex!26))))

(assert (=> b!278008 (arrayContainsKey!0 lt!138137 lt!138214 #b00000000000000000000000000000000)))

(declare-fun lt!138215 () Unit!8790)

(assert (=> b!278008 (= lt!138215 lt!138213)))

(declare-fun res!141797 () Bool)

(assert (=> b!278008 (= res!141797 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) startIndex!26) lt!138137 mask!3868) (Found!1740 startIndex!26)))))

(assert (=> b!278008 (=> (not res!141797) (not e!177333))))

(declare-fun d!64625 () Bool)

(declare-fun res!141796 () Bool)

(assert (=> d!64625 (=> res!141796 e!177332)))

(assert (=> d!64625 (= res!141796 (bvsge startIndex!26 (size!6923 lt!138137)))))

(assert (=> d!64625 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!138137 mask!3868) e!177332)))

(declare-fun b!278009 () Bool)

(assert (=> b!278009 (= e!177333 call!25358)))

(assert (= (and d!64625 (not res!141796)) b!278007))

(assert (= (and b!278007 c!45656) b!278008))

(assert (= (and b!278007 (not c!45656)) b!278006))

(assert (= (and b!278008 res!141797) b!278009))

(assert (= (or b!278009 b!278006) bm!25355))

(declare-fun m!292957 () Bool)

(assert (=> b!278007 m!292957))

(assert (=> b!278007 m!292957))

(declare-fun m!292959 () Bool)

(assert (=> b!278007 m!292959))

(declare-fun m!292961 () Bool)

(assert (=> bm!25355 m!292961))

(assert (=> b!278008 m!292957))

(declare-fun m!292963 () Bool)

(assert (=> b!278008 m!292963))

(declare-fun m!292965 () Bool)

(assert (=> b!278008 m!292965))

(assert (=> b!278008 m!292957))

(declare-fun m!292967 () Bool)

(assert (=> b!278008 m!292967))

(assert (=> b!277860 d!64625))

(declare-fun b!278064 () Bool)

(declare-fun e!177368 () SeekEntryResult!1740)

(declare-fun lt!138245 () SeekEntryResult!1740)

(assert (=> b!278064 (= e!177368 (Found!1740 (index!9132 lt!138245)))))

(declare-fun b!278065 () Bool)

(declare-fun e!177367 () SeekEntryResult!1740)

(assert (=> b!278065 (= e!177367 e!177368)))

(declare-fun lt!138247 () (_ BitVec 64))

(assert (=> b!278065 (= lt!138247 (select (arr!6571 lt!138137) (index!9132 lt!138245)))))

(declare-fun c!45680 () Bool)

(assert (=> b!278065 (= c!45680 (= lt!138247 k!2581))))

(declare-fun b!278066 () Bool)

(declare-fun c!45678 () Bool)

(assert (=> b!278066 (= c!45678 (= lt!138247 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177369 () SeekEntryResult!1740)

(assert (=> b!278066 (= e!177368 e!177369)))

(declare-fun b!278067 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13844 (_ BitVec 32)) SeekEntryResult!1740)

(assert (=> b!278067 (= e!177369 (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138245) (index!9132 lt!138245) (index!9132 lt!138245) k!2581 lt!138137 mask!3868))))

(declare-fun d!64635 () Bool)

(declare-fun lt!138246 () SeekEntryResult!1740)

(assert (=> d!64635 (and (or (is-Undefined!1740 lt!138246) (not (is-Found!1740 lt!138246)) (and (bvsge (index!9131 lt!138246) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138246) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138246) (is-Found!1740 lt!138246) (not (is-MissingZero!1740 lt!138246)) (and (bvsge (index!9130 lt!138246) #b00000000000000000000000000000000) (bvslt (index!9130 lt!138246) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138246) (is-Found!1740 lt!138246) (is-MissingZero!1740 lt!138246) (not (is-MissingVacant!1740 lt!138246)) (and (bvsge (index!9133 lt!138246) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138246) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138246) (ite (is-Found!1740 lt!138246) (= (select (arr!6571 lt!138137) (index!9131 lt!138246)) k!2581) (ite (is-MissingZero!1740 lt!138246) (= (select (arr!6571 lt!138137) (index!9130 lt!138246)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1740 lt!138246) (= (select (arr!6571 lt!138137) (index!9133 lt!138246)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64635 (= lt!138246 e!177367)))

(declare-fun c!45679 () Bool)

(assert (=> d!64635 (= c!45679 (and (is-Intermediate!1740 lt!138245) (undefined!2552 lt!138245)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13844 (_ BitVec 32)) SeekEntryResult!1740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64635 (= lt!138245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 lt!138137 mask!3868))))

(assert (=> d!64635 (validMask!0 mask!3868)))

(assert (=> d!64635 (= (seekEntryOrOpen!0 k!2581 lt!138137 mask!3868) lt!138246)))

(declare-fun b!278068 () Bool)

(assert (=> b!278068 (= e!177369 (MissingZero!1740 (index!9132 lt!138245)))))

(declare-fun b!278069 () Bool)

(assert (=> b!278069 (= e!177367 Undefined!1740)))

(assert (= (and d!64635 c!45679) b!278069))

(assert (= (and d!64635 (not c!45679)) b!278065))

(assert (= (and b!278065 c!45680) b!278064))

(assert (= (and b!278065 (not c!45680)) b!278066))

(assert (= (and b!278066 c!45678) b!278068))

(assert (= (and b!278066 (not c!45678)) b!278067))

(declare-fun m!293027 () Bool)

(assert (=> b!278065 m!293027))

(declare-fun m!293029 () Bool)

(assert (=> b!278067 m!293029))

(declare-fun m!293033 () Bool)

(assert (=> d!64635 m!293033))

(assert (=> d!64635 m!292827))

(declare-fun m!293035 () Bool)

(assert (=> d!64635 m!293035))

(declare-fun m!293037 () Bool)

(assert (=> d!64635 m!293037))

(declare-fun m!293039 () Bool)

(assert (=> d!64635 m!293039))

(assert (=> d!64635 m!293035))

(declare-fun m!293041 () Bool)

(assert (=> d!64635 m!293041))

(assert (=> b!277860 d!64635))

(declare-fun d!64651 () Bool)

(declare-fun e!177373 () Bool)

(assert (=> d!64651 e!177373))

(declare-fun res!141813 () Bool)

(assert (=> d!64651 (=> (not res!141813) (not e!177373))))

(assert (=> d!64651 (= res!141813 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6923 a!3325))))))

(declare-fun lt!138251 () Unit!8790)

(declare-fun choose!8 (array!13844 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8790)

(assert (=> d!64651 (= lt!138251 (choose!8 a!3325 i!1267 k!2581 mask!3868))))

(assert (=> d!64651 (validMask!0 mask!3868)))

(assert (=> d!64651 (= (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868) lt!138251)))

(declare-fun b!278073 () Bool)

(assert (=> b!278073 (= e!177373 (= (seekEntryOrOpen!0 k!2581 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868) (Found!1740 i!1267)))))

(assert (= (and d!64651 res!141813) b!278073))

(declare-fun m!293043 () Bool)

(assert (=> d!64651 m!293043))

(assert (=> d!64651 m!292827))

(assert (=> b!278073 m!292821))

(declare-fun m!293045 () Bool)

(assert (=> b!278073 m!293045))

(assert (=> b!277860 d!64651))

(declare-fun b!278074 () Bool)

(declare-fun e!177375 () SeekEntryResult!1740)

(declare-fun lt!138252 () SeekEntryResult!1740)

(assert (=> b!278074 (= e!177375 (Found!1740 (index!9132 lt!138252)))))

(declare-fun b!278075 () Bool)

(declare-fun e!177374 () SeekEntryResult!1740)

(assert (=> b!278075 (= e!177374 e!177375)))

(declare-fun lt!138254 () (_ BitVec 64))

(assert (=> b!278075 (= lt!138254 (select (arr!6571 a!3325) (index!9132 lt!138252)))))

(declare-fun c!45683 () Bool)

(assert (=> b!278075 (= c!45683 (= lt!138254 k!2581))))

(declare-fun b!278076 () Bool)

(declare-fun c!45681 () Bool)

(assert (=> b!278076 (= c!45681 (= lt!138254 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177376 () SeekEntryResult!1740)

(assert (=> b!278076 (= e!177375 e!177376)))

(declare-fun b!278077 () Bool)

(assert (=> b!278077 (= e!177376 (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138252) (index!9132 lt!138252) (index!9132 lt!138252) k!2581 a!3325 mask!3868))))

(declare-fun d!64655 () Bool)

(declare-fun lt!138253 () SeekEntryResult!1740)

(assert (=> d!64655 (and (or (is-Undefined!1740 lt!138253) (not (is-Found!1740 lt!138253)) (and (bvsge (index!9131 lt!138253) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138253) (size!6923 a!3325)))) (or (is-Undefined!1740 lt!138253) (is-Found!1740 lt!138253) (not (is-MissingZero!1740 lt!138253)) (and (bvsge (index!9130 lt!138253) #b00000000000000000000000000000000) (bvslt (index!9130 lt!138253) (size!6923 a!3325)))) (or (is-Undefined!1740 lt!138253) (is-Found!1740 lt!138253) (is-MissingZero!1740 lt!138253) (not (is-MissingVacant!1740 lt!138253)) (and (bvsge (index!9133 lt!138253) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138253) (size!6923 a!3325)))) (or (is-Undefined!1740 lt!138253) (ite (is-Found!1740 lt!138253) (= (select (arr!6571 a!3325) (index!9131 lt!138253)) k!2581) (ite (is-MissingZero!1740 lt!138253) (= (select (arr!6571 a!3325) (index!9130 lt!138253)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1740 lt!138253) (= (select (arr!6571 a!3325) (index!9133 lt!138253)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64655 (= lt!138253 e!177374)))

(declare-fun c!45682 () Bool)

(assert (=> d!64655 (= c!45682 (and (is-Intermediate!1740 lt!138252) (undefined!2552 lt!138252)))))

(assert (=> d!64655 (= lt!138252 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64655 (validMask!0 mask!3868)))

(assert (=> d!64655 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138253)))

(declare-fun b!278078 () Bool)

(assert (=> b!278078 (= e!177376 (MissingZero!1740 (index!9132 lt!138252)))))

(declare-fun b!278079 () Bool)

(assert (=> b!278079 (= e!177374 Undefined!1740)))

(assert (= (and d!64655 c!45682) b!278079))

(assert (= (and d!64655 (not c!45682)) b!278075))

(assert (= (and b!278075 c!45683) b!278074))

(assert (= (and b!278075 (not c!45683)) b!278076))

(assert (= (and b!278076 c!45681) b!278078))

(assert (= (and b!278076 (not c!45681)) b!278077))

(declare-fun m!293047 () Bool)

(assert (=> b!278075 m!293047))

(declare-fun m!293049 () Bool)

(assert (=> b!278077 m!293049))

(declare-fun m!293051 () Bool)

(assert (=> d!64655 m!293051))

(assert (=> d!64655 m!292827))

(assert (=> d!64655 m!293035))

(declare-fun m!293053 () Bool)

(assert (=> d!64655 m!293053))

(declare-fun m!293055 () Bool)

(assert (=> d!64655 m!293055))

(assert (=> d!64655 m!293035))

(declare-fun m!293057 () Bool)

(assert (=> d!64655 m!293057))

(assert (=> b!277855 d!64655))

(declare-fun b!278080 () Bool)

(declare-fun e!177377 () Bool)

(declare-fun call!25362 () Bool)

(assert (=> b!278080 (= e!177377 call!25362)))

(declare-fun b!278081 () Bool)

(declare-fun e!177378 () Bool)

(assert (=> b!278081 (= e!177378 e!177377)))

(declare-fun c!45684 () Bool)

(assert (=> b!278081 (= c!45684 (validKeyInArray!0 (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25359 () Bool)

(assert (=> bm!25359 (= call!25362 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!278082 () Bool)

(declare-fun e!177379 () Bool)

(assert (=> b!278082 (= e!177377 e!177379)))

(declare-fun lt!138256 () (_ BitVec 64))

(assert (=> b!278082 (= lt!138256 (select (arr!6571 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!138255 () Unit!8790)

(assert (=> b!278082 (= lt!138255 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138256 #b00000000000000000000000000000000))))

(assert (=> b!278082 (arrayContainsKey!0 a!3325 lt!138256 #b00000000000000000000000000000000)))

(declare-fun lt!138257 () Unit!8790)

(assert (=> b!278082 (= lt!138257 lt!138255)))

(declare-fun res!141815 () Bool)

(assert (=> b!278082 (= res!141815 (= (seekEntryOrOpen!0 (select (arr!6571 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1740 #b00000000000000000000000000000000)))))

(assert (=> b!278082 (=> (not res!141815) (not e!177379))))

(declare-fun d!64657 () Bool)

(declare-fun res!141814 () Bool)

(assert (=> d!64657 (=> res!141814 e!177378)))

(assert (=> d!64657 (= res!141814 (bvsge #b00000000000000000000000000000000 (size!6923 a!3325)))))

(assert (=> d!64657 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177378)))

(declare-fun b!278083 () Bool)

(assert (=> b!278083 (= e!177379 call!25362)))

(assert (= (and d!64657 (not res!141814)) b!278081))

(assert (= (and b!278081 c!45684) b!278082))

(assert (= (and b!278081 (not c!45684)) b!278080))

(assert (= (and b!278082 res!141815) b!278083))

(assert (= (or b!278083 b!278080) bm!25359))

(declare-fun m!293059 () Bool)

(assert (=> b!278081 m!293059))

(assert (=> b!278081 m!293059))

(declare-fun m!293061 () Bool)

(assert (=> b!278081 m!293061))

(declare-fun m!293063 () Bool)

(assert (=> bm!25359 m!293063))

(assert (=> b!278082 m!293059))

(declare-fun m!293065 () Bool)

(assert (=> b!278082 m!293065))

(declare-fun m!293067 () Bool)

(assert (=> b!278082 m!293067))

(assert (=> b!278082 m!293059))

(declare-fun m!293069 () Bool)

(assert (=> b!278082 m!293069))

(assert (=> b!277859 d!64657))

(declare-fun d!64659 () Bool)

(declare-fun e!177394 () Bool)

(assert (=> d!64659 e!177394))

(declare-fun res!141827 () Bool)

(assert (=> d!64659 (=> (not res!141827) (not e!177394))))

(assert (=> d!64659 (= res!141827 (and (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6923 a!3325))))))

(declare-fun lt!138260 () Unit!8790)

(declare-fun choose!98 (array!13844 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8790)

(assert (=> d!64659 (= lt!138260 (choose!98 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> d!64659 (validMask!0 mask!3868)))

(assert (=> d!64659 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) lt!138260)))

(declare-fun b!278101 () Bool)

(assert (=> b!278101 (= e!177394 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868))))

(assert (= (and d!64659 res!141827) b!278101))

(declare-fun m!293077 () Bool)

(assert (=> d!64659 m!293077))

(assert (=> d!64659 m!292827))

(assert (=> b!278101 m!292821))

(declare-fun m!293079 () Bool)

(assert (=> b!278101 m!293079))

(assert (=> b!277858 d!64659))

(declare-fun b!278108 () Bool)

(declare-fun e!177398 () Bool)

(declare-fun call!25366 () Bool)

(assert (=> b!278108 (= e!177398 call!25366)))

(declare-fun b!278109 () Bool)

(declare-fun e!177399 () Bool)

(assert (=> b!278109 (= e!177399 e!177398)))

(declare-fun c!45691 () Bool)

(assert (=> b!278109 (= c!45691 (validKeyInArray!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun bm!25363 () Bool)

(assert (=> bm!25363 (= call!25366 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!138137 mask!3868))))

(declare-fun b!278110 () Bool)

(declare-fun e!177400 () Bool)

(assert (=> b!278110 (= e!177398 e!177400)))

(declare-fun lt!138265 () (_ BitVec 64))

(assert (=> b!278110 (= lt!138265 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138264 () Unit!8790)

(assert (=> b!278110 (= lt!138264 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138265 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!278110 (arrayContainsKey!0 lt!138137 lt!138265 #b00000000000000000000000000000000)))

(declare-fun lt!138266 () Unit!8790)

(assert (=> b!278110 (= lt!138266 lt!138264)))

(declare-fun res!141829 () Bool)

(assert (=> b!278110 (= res!141829 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138137 mask!3868) (Found!1740 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!278110 (=> (not res!141829) (not e!177400))))

(declare-fun d!64667 () Bool)

(declare-fun res!141828 () Bool)

(assert (=> d!64667 (=> res!141828 e!177399)))

(assert (=> d!64667 (= res!141828 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6923 lt!138137)))))

(assert (=> d!64667 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138137 mask!3868) e!177399)))

(declare-fun b!278111 () Bool)

(assert (=> b!278111 (= e!177400 call!25366)))

(assert (= (and d!64667 (not res!141828)) b!278109))

(assert (= (and b!278109 c!45691) b!278110))

(assert (= (and b!278109 (not c!45691)) b!278108))

(assert (= (and b!278110 res!141829) b!278111))

(assert (= (or b!278111 b!278108) bm!25363))

(declare-fun m!293089 () Bool)

(assert (=> b!278109 m!293089))

(assert (=> b!278109 m!293089))

(declare-fun m!293095 () Bool)

(assert (=> b!278109 m!293095))

(declare-fun m!293097 () Bool)

(assert (=> bm!25363 m!293097))

(assert (=> b!278110 m!293089))

(declare-fun m!293099 () Bool)

(assert (=> b!278110 m!293099))

(declare-fun m!293101 () Bool)

(assert (=> b!278110 m!293101))

(assert (=> b!278110 m!293089))

(declare-fun m!293103 () Bool)

(assert (=> b!278110 m!293103))

(assert (=> b!277858 d!64667))

(declare-fun d!64671 () Bool)

(declare-fun res!141836 () Bool)

(declare-fun e!177408 () Bool)

(assert (=> d!64671 (=> res!141836 e!177408)))

(assert (=> d!64671 (= res!141836 (= (select (arr!6571 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64671 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!177408)))

(declare-fun b!278120 () Bool)

(declare-fun e!177409 () Bool)

(assert (=> b!278120 (= e!177408 e!177409)))

(declare-fun res!141837 () Bool)

(assert (=> b!278120 (=> (not res!141837) (not e!177409))))

(assert (=> b!278120 (= res!141837 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6923 a!3325)))))

(declare-fun b!278121 () Bool)

(assert (=> b!278121 (= e!177409 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64671 (not res!141836)) b!278120))

(assert (= (and b!278120 res!141837) b!278121))

(assert (=> d!64671 m!293059))

(declare-fun m!293113 () Bool)

(assert (=> b!278121 m!293113))

(assert (=> b!277863 d!64671))

(declare-fun d!64675 () Bool)

(declare-fun res!141846 () Bool)

(declare-fun e!177421 () Bool)

(assert (=> d!64675 (=> res!141846 e!177421)))

(assert (=> d!64675 (= res!141846 (bvsge #b00000000000000000000000000000000 (size!6923 a!3325)))))

(assert (=> d!64675 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4397) e!177421)))

(declare-fun b!278132 () Bool)

(declare-fun e!177419 () Bool)

(declare-fun e!177420 () Bool)

(assert (=> b!278132 (= e!177419 e!177420)))

(declare-fun c!45695 () Bool)

(assert (=> b!278132 (= c!45695 (validKeyInArray!0 (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278133 () Bool)

(assert (=> b!278133 (= e!177421 e!177419)))

(declare-fun res!141845 () Bool)

(assert (=> b!278133 (=> (not res!141845) (not e!177419))))

(declare-fun e!177418 () Bool)

(assert (=> b!278133 (= res!141845 (not e!177418))))

(declare-fun res!141844 () Bool)

(assert (=> b!278133 (=> (not res!141844) (not e!177418))))

(assert (=> b!278133 (= res!141844 (validKeyInArray!0 (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278134 () Bool)

(declare-fun call!25370 () Bool)

(assert (=> b!278134 (= e!177420 call!25370)))

(declare-fun bm!25367 () Bool)

(assert (=> bm!25367 (= call!25370 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45695 (Cons!4396 (select (arr!6571 a!3325) #b00000000000000000000000000000000) Nil!4397) Nil!4397)))))

(declare-fun b!278135 () Bool)

(assert (=> b!278135 (= e!177420 call!25370)))

(declare-fun b!278136 () Bool)

(declare-fun contains!1962 (List!4400 (_ BitVec 64)) Bool)

(assert (=> b!278136 (= e!177418 (contains!1962 Nil!4397 (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64675 (not res!141846)) b!278133))

(assert (= (and b!278133 res!141844) b!278136))

(assert (= (and b!278133 res!141845) b!278132))

(assert (= (and b!278132 c!45695) b!278134))

(assert (= (and b!278132 (not c!45695)) b!278135))

(assert (= (or b!278134 b!278135) bm!25367))

(assert (=> b!278132 m!293059))

(assert (=> b!278132 m!293059))

(assert (=> b!278132 m!293061))

(assert (=> b!278133 m!293059))

(assert (=> b!278133 m!293059))

(assert (=> b!278133 m!293061))

(assert (=> bm!25367 m!293059))

(declare-fun m!293115 () Bool)

(assert (=> bm!25367 m!293115))

(assert (=> b!278136 m!293059))

(assert (=> b!278136 m!293059))

(declare-fun m!293117 () Bool)

(assert (=> b!278136 m!293117))

(assert (=> b!277862 d!64675))

(push 1)

(assert (not b!278136))

(assert (not d!64635))

(assert (not bm!25363))

(assert (not b!278081))

(assert (not b!278110))

(assert (not b!278007))

(assert (not b!278082))

(assert (not b!278132))

(assert (not b!278109))

(assert (not b!278133))

(assert (not b!278121))

(assert (not b!278101))

(assert (not b!278008))

(assert (not bm!25367))

(assert (not d!64651))

(assert (not d!64655))

(assert (not d!64659))

(assert (not bm!25355))

(assert (not bm!25359))

(assert (not b!278077))

(assert (not b!278067))

(assert (not b!278073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64731 () Bool)

(declare-fun res!141885 () Bool)

(declare-fun e!177496 () Bool)

(assert (=> d!64731 (=> res!141885 e!177496)))

(assert (=> d!64731 (= res!141885 (= (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2581))))

(assert (=> d!64731 (= (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!177496)))

(declare-fun b!278256 () Bool)

(declare-fun e!177497 () Bool)

(assert (=> b!278256 (= e!177496 e!177497)))

(declare-fun res!141886 () Bool)

(assert (=> b!278256 (=> (not res!141886) (not e!177497))))

(assert (=> b!278256 (= res!141886 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6923 a!3325)))))

(declare-fun b!278257 () Bool)

(assert (=> b!278257 (= e!177497 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!64731 (not res!141885)) b!278256))

(assert (= (and b!278256 res!141886) b!278257))

(declare-fun m!293277 () Bool)

(assert (=> d!64731 m!293277))

(declare-fun m!293279 () Bool)

(assert (=> b!278257 m!293279))

(assert (=> b!278121 d!64731))

(declare-fun b!278270 () Bool)

(declare-fun e!177506 () SeekEntryResult!1740)

(assert (=> b!278270 (= e!177506 (MissingVacant!1740 (index!9132 lt!138245)))))

(declare-fun b!278271 () Bool)

(declare-fun e!177504 () SeekEntryResult!1740)

(assert (=> b!278271 (= e!177504 (Found!1740 (index!9132 lt!138245)))))

(declare-fun lt!138328 () SeekEntryResult!1740)

(declare-fun d!64733 () Bool)

(assert (=> d!64733 (and (or (is-Undefined!1740 lt!138328) (not (is-Found!1740 lt!138328)) (and (bvsge (index!9131 lt!138328) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138328) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138328) (is-Found!1740 lt!138328) (not (is-MissingVacant!1740 lt!138328)) (not (= (index!9133 lt!138328) (index!9132 lt!138245))) (and (bvsge (index!9133 lt!138328) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138328) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138328) (ite (is-Found!1740 lt!138328) (= (select (arr!6571 lt!138137) (index!9131 lt!138328)) k!2581) (and (is-MissingVacant!1740 lt!138328) (= (index!9133 lt!138328) (index!9132 lt!138245)) (= (select (arr!6571 lt!138137) (index!9133 lt!138328)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!177505 () SeekEntryResult!1740)

(assert (=> d!64733 (= lt!138328 e!177505)))

(declare-fun c!45744 () Bool)

(assert (=> d!64733 (= c!45744 (bvsge (x!27345 lt!138245) #b01111111111111111111111111111110))))

(declare-fun lt!138329 () (_ BitVec 64))

(assert (=> d!64733 (= lt!138329 (select (arr!6571 lt!138137) (index!9132 lt!138245)))))

(assert (=> d!64733 (validMask!0 mask!3868)))

(assert (=> d!64733 (= (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138245) (index!9132 lt!138245) (index!9132 lt!138245) k!2581 lt!138137 mask!3868) lt!138328)))

(declare-fun b!278272 () Bool)

(declare-fun c!45745 () Bool)

(assert (=> b!278272 (= c!45745 (= lt!138329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278272 (= e!177504 e!177506)))

(declare-fun b!278273 () Bool)

(assert (=> b!278273 (= e!177505 e!177504)))

(declare-fun c!45743 () Bool)

(assert (=> b!278273 (= c!45743 (= lt!138329 k!2581))))

(declare-fun b!278274 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!278274 (= e!177506 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27345 lt!138245) #b00000000000000000000000000000001) (nextIndex!0 (index!9132 lt!138245) (x!27345 lt!138245) mask!3868) (index!9132 lt!138245) k!2581 lt!138137 mask!3868))))

(declare-fun b!278275 () Bool)

(assert (=> b!278275 (= e!177505 Undefined!1740)))

(assert (= (and d!64733 c!45744) b!278275))

(assert (= (and d!64733 (not c!45744)) b!278273))

(assert (= (and b!278273 c!45743) b!278271))

(assert (= (and b!278273 (not c!45743)) b!278272))

(assert (= (and b!278272 c!45745) b!278270))

(assert (= (and b!278272 (not c!45745)) b!278274))

(declare-fun m!293281 () Bool)

(assert (=> d!64733 m!293281))

(declare-fun m!293283 () Bool)

(assert (=> d!64733 m!293283))

(assert (=> d!64733 m!293027))

(assert (=> d!64733 m!292827))

(declare-fun m!293285 () Bool)

(assert (=> b!278274 m!293285))

(assert (=> b!278274 m!293285))

(declare-fun m!293287 () Bool)

(assert (=> b!278274 m!293287))

(assert (=> b!278067 d!64733))

(declare-fun d!64735 () Bool)

(declare-fun res!141889 () Bool)

(declare-fun e!177510 () Bool)

(assert (=> d!64735 (=> res!141889 e!177510)))

(assert (=> d!64735 (= res!141889 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6923 a!3325)))))

(assert (=> d!64735 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45695 (Cons!4396 (select (arr!6571 a!3325) #b00000000000000000000000000000000) Nil!4397) Nil!4397)) e!177510)))

(declare-fun b!278276 () Bool)

(declare-fun e!177508 () Bool)

(declare-fun e!177509 () Bool)

(assert (=> b!278276 (= e!177508 e!177509)))

(declare-fun c!45746 () Bool)

(assert (=> b!278276 (= c!45746 (validKeyInArray!0 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!278277 () Bool)

(assert (=> b!278277 (= e!177510 e!177508)))

(declare-fun res!141888 () Bool)

(assert (=> b!278277 (=> (not res!141888) (not e!177508))))

(declare-fun e!177507 () Bool)

(assert (=> b!278277 (= res!141888 (not e!177507))))

(declare-fun res!141887 () Bool)

(assert (=> b!278277 (=> (not res!141887) (not e!177507))))

(assert (=> b!278277 (= res!141887 (validKeyInArray!0 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!278278 () Bool)

(declare-fun call!25376 () Bool)

(assert (=> b!278278 (= e!177509 call!25376)))

(declare-fun bm!25373 () Bool)

(assert (=> bm!25373 (= call!25376 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!45746 (Cons!4396 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!45695 (Cons!4396 (select (arr!6571 a!3325) #b00000000000000000000000000000000) Nil!4397) Nil!4397)) (ite c!45695 (Cons!4396 (select (arr!6571 a!3325) #b00000000000000000000000000000000) Nil!4397) Nil!4397))))))

(declare-fun b!278279 () Bool)

(assert (=> b!278279 (= e!177509 call!25376)))

(declare-fun b!278280 () Bool)

(assert (=> b!278280 (= e!177507 (contains!1962 (ite c!45695 (Cons!4396 (select (arr!6571 a!3325) #b00000000000000000000000000000000) Nil!4397) Nil!4397) (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!64735 (not res!141889)) b!278277))

(assert (= (and b!278277 res!141887) b!278280))

(assert (= (and b!278277 res!141888) b!278276))

(assert (= (and b!278276 c!45746) b!278278))

(assert (= (and b!278276 (not c!45746)) b!278279))

(assert (= (or b!278278 b!278279) bm!25373))

(assert (=> b!278276 m!293277))

(assert (=> b!278276 m!293277))

(declare-fun m!293289 () Bool)

(assert (=> b!278276 m!293289))

(assert (=> b!278277 m!293277))

(assert (=> b!278277 m!293277))

(assert (=> b!278277 m!293289))

(assert (=> bm!25373 m!293277))

(declare-fun m!293291 () Bool)

(assert (=> bm!25373 m!293291))

(assert (=> b!278280 m!293277))

(assert (=> b!278280 m!293277))

(declare-fun m!293293 () Bool)

(assert (=> b!278280 m!293293))

(assert (=> bm!25367 d!64735))

(declare-fun b!278281 () Bool)

(declare-fun e!177512 () SeekEntryResult!1740)

(declare-fun lt!138330 () SeekEntryResult!1740)

(assert (=> b!278281 (= e!177512 (Found!1740 (index!9132 lt!138330)))))

(declare-fun b!278282 () Bool)

(declare-fun e!177511 () SeekEntryResult!1740)

(assert (=> b!278282 (= e!177511 e!177512)))

(declare-fun lt!138332 () (_ BitVec 64))

(assert (=> b!278282 (= lt!138332 (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (index!9132 lt!138330)))))

(declare-fun c!45749 () Bool)

(assert (=> b!278282 (= c!45749 (= lt!138332 k!2581))))

(declare-fun b!278283 () Bool)

(declare-fun c!45747 () Bool)

(assert (=> b!278283 (= c!45747 (= lt!138332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177513 () SeekEntryResult!1740)

(assert (=> b!278283 (= e!177512 e!177513)))

(declare-fun b!278284 () Bool)

(assert (=> b!278284 (= e!177513 (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138330) (index!9132 lt!138330) (index!9132 lt!138330) k!2581 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868))))

(declare-fun lt!138331 () SeekEntryResult!1740)

(declare-fun d!64737 () Bool)

(assert (=> d!64737 (and (or (is-Undefined!1740 lt!138331) (not (is-Found!1740 lt!138331)) (and (bvsge (index!9131 lt!138331) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138331) (size!6923 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)))))) (or (is-Undefined!1740 lt!138331) (is-Found!1740 lt!138331) (not (is-MissingZero!1740 lt!138331)) (and (bvsge (index!9130 lt!138331) #b00000000000000000000000000000000) (bvslt (index!9130 lt!138331) (size!6923 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)))))) (or (is-Undefined!1740 lt!138331) (is-Found!1740 lt!138331) (is-MissingZero!1740 lt!138331) (not (is-MissingVacant!1740 lt!138331)) (and (bvsge (index!9133 lt!138331) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138331) (size!6923 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)))))) (or (is-Undefined!1740 lt!138331) (ite (is-Found!1740 lt!138331) (= (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (index!9131 lt!138331)) k!2581) (ite (is-MissingZero!1740 lt!138331) (= (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (index!9130 lt!138331)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1740 lt!138331) (= (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (index!9133 lt!138331)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64737 (= lt!138331 e!177511)))

(declare-fun c!45748 () Bool)

(assert (=> d!64737 (= c!45748 (and (is-Intermediate!1740 lt!138330) (undefined!2552 lt!138330)))))

(assert (=> d!64737 (= lt!138330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868))))

(assert (=> d!64737 (validMask!0 mask!3868)))

(assert (=> d!64737 (= (seekEntryOrOpen!0 k!2581 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868) lt!138331)))

(declare-fun b!278285 () Bool)

(assert (=> b!278285 (= e!177513 (MissingZero!1740 (index!9132 lt!138330)))))

(declare-fun b!278286 () Bool)

(assert (=> b!278286 (= e!177511 Undefined!1740)))

(assert (= (and d!64737 c!45748) b!278286))

(assert (= (and d!64737 (not c!45748)) b!278282))

(assert (= (and b!278282 c!45749) b!278281))

(assert (= (and b!278282 (not c!45749)) b!278283))

(assert (= (and b!278283 c!45747) b!278285))

(assert (= (and b!278283 (not c!45747)) b!278284))

(declare-fun m!293295 () Bool)

(assert (=> b!278282 m!293295))

(declare-fun m!293297 () Bool)

(assert (=> b!278284 m!293297))

(declare-fun m!293299 () Bool)

(assert (=> d!64737 m!293299))

(assert (=> d!64737 m!292827))

(assert (=> d!64737 m!293035))

(declare-fun m!293301 () Bool)

(assert (=> d!64737 m!293301))

(declare-fun m!293303 () Bool)

(assert (=> d!64737 m!293303))

(assert (=> d!64737 m!293035))

(declare-fun m!293305 () Bool)

(assert (=> d!64737 m!293305))

(assert (=> b!278073 d!64737))

(declare-fun d!64739 () Bool)

(assert (=> d!64739 (arrayContainsKey!0 lt!138137 lt!138214 #b00000000000000000000000000000000)))

(declare-fun lt!138335 () Unit!8790)

(declare-fun choose!13 (array!13844 (_ BitVec 64) (_ BitVec 32)) Unit!8790)

(assert (=> d!64739 (= lt!138335 (choose!13 lt!138137 lt!138214 startIndex!26))))

(assert (=> d!64739 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!64739 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138214 startIndex!26) lt!138335)))

(declare-fun bs!9918 () Bool)

(assert (= bs!9918 d!64739))

(assert (=> bs!9918 m!292965))

(declare-fun m!293307 () Bool)

(assert (=> bs!9918 m!293307))

(assert (=> b!278008 d!64739))

(declare-fun d!64741 () Bool)

(declare-fun res!141890 () Bool)

(declare-fun e!177514 () Bool)

(assert (=> d!64741 (=> res!141890 e!177514)))

(assert (=> d!64741 (= res!141890 (= (select (arr!6571 lt!138137) #b00000000000000000000000000000000) lt!138214))))

(assert (=> d!64741 (= (arrayContainsKey!0 lt!138137 lt!138214 #b00000000000000000000000000000000) e!177514)))

(declare-fun b!278287 () Bool)

(declare-fun e!177515 () Bool)

(assert (=> b!278287 (= e!177514 e!177515)))

(declare-fun res!141891 () Bool)

(assert (=> b!278287 (=> (not res!141891) (not e!177515))))

(assert (=> b!278287 (= res!141891 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6923 lt!138137)))))

(declare-fun b!278288 () Bool)

(assert (=> b!278288 (= e!177515 (arrayContainsKey!0 lt!138137 lt!138214 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64741 (not res!141890)) b!278287))

(assert (= (and b!278287 res!141891) b!278288))

(declare-fun m!293309 () Bool)

(assert (=> d!64741 m!293309))

(declare-fun m!293311 () Bool)

(assert (=> b!278288 m!293311))

(assert (=> b!278008 d!64741))

(declare-fun b!278289 () Bool)

(declare-fun e!177517 () SeekEntryResult!1740)

(declare-fun lt!138336 () SeekEntryResult!1740)

(assert (=> b!278289 (= e!177517 (Found!1740 (index!9132 lt!138336)))))

(declare-fun b!278290 () Bool)

(declare-fun e!177516 () SeekEntryResult!1740)

(assert (=> b!278290 (= e!177516 e!177517)))

(declare-fun lt!138338 () (_ BitVec 64))

(assert (=> b!278290 (= lt!138338 (select (arr!6571 lt!138137) (index!9132 lt!138336)))))

(declare-fun c!45752 () Bool)

(assert (=> b!278290 (= c!45752 (= lt!138338 (select (arr!6571 lt!138137) startIndex!26)))))

(declare-fun b!278291 () Bool)

(declare-fun c!45750 () Bool)

(assert (=> b!278291 (= c!45750 (= lt!138338 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177518 () SeekEntryResult!1740)

(assert (=> b!278291 (= e!177517 e!177518)))

(declare-fun b!278292 () Bool)

(assert (=> b!278292 (= e!177518 (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138336) (index!9132 lt!138336) (index!9132 lt!138336) (select (arr!6571 lt!138137) startIndex!26) lt!138137 mask!3868))))

(declare-fun d!64743 () Bool)

(declare-fun lt!138337 () SeekEntryResult!1740)

(assert (=> d!64743 (and (or (is-Undefined!1740 lt!138337) (not (is-Found!1740 lt!138337)) (and (bvsge (index!9131 lt!138337) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138337) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138337) (is-Found!1740 lt!138337) (not (is-MissingZero!1740 lt!138337)) (and (bvsge (index!9130 lt!138337) #b00000000000000000000000000000000) (bvslt (index!9130 lt!138337) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138337) (is-Found!1740 lt!138337) (is-MissingZero!1740 lt!138337) (not (is-MissingVacant!1740 lt!138337)) (and (bvsge (index!9133 lt!138337) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138337) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138337) (ite (is-Found!1740 lt!138337) (= (select (arr!6571 lt!138137) (index!9131 lt!138337)) (select (arr!6571 lt!138137) startIndex!26)) (ite (is-MissingZero!1740 lt!138337) (= (select (arr!6571 lt!138137) (index!9130 lt!138337)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1740 lt!138337) (= (select (arr!6571 lt!138137) (index!9133 lt!138337)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64743 (= lt!138337 e!177516)))

(declare-fun c!45751 () Bool)

(assert (=> d!64743 (= c!45751 (and (is-Intermediate!1740 lt!138336) (undefined!2552 lt!138336)))))

(assert (=> d!64743 (= lt!138336 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6571 lt!138137) startIndex!26) mask!3868) (select (arr!6571 lt!138137) startIndex!26) lt!138137 mask!3868))))

(assert (=> d!64743 (validMask!0 mask!3868)))

(assert (=> d!64743 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) startIndex!26) lt!138137 mask!3868) lt!138337)))

(declare-fun b!278293 () Bool)

(assert (=> b!278293 (= e!177518 (MissingZero!1740 (index!9132 lt!138336)))))

(declare-fun b!278294 () Bool)

(assert (=> b!278294 (= e!177516 Undefined!1740)))

(assert (= (and d!64743 c!45751) b!278294))

(assert (= (and d!64743 (not c!45751)) b!278290))

(assert (= (and b!278290 c!45752) b!278289))

(assert (= (and b!278290 (not c!45752)) b!278291))

(assert (= (and b!278291 c!45750) b!278293))

(assert (= (and b!278291 (not c!45750)) b!278292))

(declare-fun m!293313 () Bool)

(assert (=> b!278290 m!293313))

(assert (=> b!278292 m!292957))

(declare-fun m!293315 () Bool)

(assert (=> b!278292 m!293315))

(declare-fun m!293317 () Bool)

(assert (=> d!64743 m!293317))

(assert (=> d!64743 m!292827))

(declare-fun m!293319 () Bool)

(assert (=> d!64743 m!293319))

(assert (=> d!64743 m!292957))

(declare-fun m!293321 () Bool)

(assert (=> d!64743 m!293321))

(declare-fun m!293323 () Bool)

(assert (=> d!64743 m!293323))

(assert (=> d!64743 m!292957))

(assert (=> d!64743 m!293319))

(declare-fun m!293325 () Bool)

(assert (=> d!64743 m!293325))

(assert (=> b!278008 d!64743))

(declare-fun b!278295 () Bool)

(declare-fun e!177521 () SeekEntryResult!1740)

(assert (=> b!278295 (= e!177521 (MissingVacant!1740 (index!9132 lt!138252)))))

(declare-fun b!278296 () Bool)

(declare-fun e!177519 () SeekEntryResult!1740)

(assert (=> b!278296 (= e!177519 (Found!1740 (index!9132 lt!138252)))))

(declare-fun d!64745 () Bool)

(declare-fun lt!138339 () SeekEntryResult!1740)

(assert (=> d!64745 (and (or (is-Undefined!1740 lt!138339) (not (is-Found!1740 lt!138339)) (and (bvsge (index!9131 lt!138339) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138339) (size!6923 a!3325)))) (or (is-Undefined!1740 lt!138339) (is-Found!1740 lt!138339) (not (is-MissingVacant!1740 lt!138339)) (not (= (index!9133 lt!138339) (index!9132 lt!138252))) (and (bvsge (index!9133 lt!138339) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138339) (size!6923 a!3325)))) (or (is-Undefined!1740 lt!138339) (ite (is-Found!1740 lt!138339) (= (select (arr!6571 a!3325) (index!9131 lt!138339)) k!2581) (and (is-MissingVacant!1740 lt!138339) (= (index!9133 lt!138339) (index!9132 lt!138252)) (= (select (arr!6571 a!3325) (index!9133 lt!138339)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!177520 () SeekEntryResult!1740)

(assert (=> d!64745 (= lt!138339 e!177520)))

(declare-fun c!45754 () Bool)

(assert (=> d!64745 (= c!45754 (bvsge (x!27345 lt!138252) #b01111111111111111111111111111110))))

(declare-fun lt!138340 () (_ BitVec 64))

(assert (=> d!64745 (= lt!138340 (select (arr!6571 a!3325) (index!9132 lt!138252)))))

(assert (=> d!64745 (validMask!0 mask!3868)))

(assert (=> d!64745 (= (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138252) (index!9132 lt!138252) (index!9132 lt!138252) k!2581 a!3325 mask!3868) lt!138339)))

(declare-fun b!278297 () Bool)

(declare-fun c!45755 () Bool)

(assert (=> b!278297 (= c!45755 (= lt!138340 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278297 (= e!177519 e!177521)))

(declare-fun b!278298 () Bool)

(assert (=> b!278298 (= e!177520 e!177519)))

(declare-fun c!45753 () Bool)

(assert (=> b!278298 (= c!45753 (= lt!138340 k!2581))))

(declare-fun b!278299 () Bool)

(assert (=> b!278299 (= e!177521 (seekKeyOrZeroReturnVacant!0 (bvadd (x!27345 lt!138252) #b00000000000000000000000000000001) (nextIndex!0 (index!9132 lt!138252) (x!27345 lt!138252) mask!3868) (index!9132 lt!138252) k!2581 a!3325 mask!3868))))

(declare-fun b!278300 () Bool)

(assert (=> b!278300 (= e!177520 Undefined!1740)))

(assert (= (and d!64745 c!45754) b!278300))

(assert (= (and d!64745 (not c!45754)) b!278298))

(assert (= (and b!278298 c!45753) b!278296))

(assert (= (and b!278298 (not c!45753)) b!278297))

(assert (= (and b!278297 c!45755) b!278295))

(assert (= (and b!278297 (not c!45755)) b!278299))

(declare-fun m!293327 () Bool)

(assert (=> d!64745 m!293327))

(declare-fun m!293329 () Bool)

(assert (=> d!64745 m!293329))

(assert (=> d!64745 m!293047))

(assert (=> d!64745 m!292827))

(declare-fun m!293331 () Bool)

(assert (=> b!278299 m!293331))

(assert (=> b!278299 m!293331))

(declare-fun m!293333 () Bool)

(assert (=> b!278299 m!293333))

(assert (=> b!278077 d!64745))

(declare-fun d!64747 () Bool)

(assert (=> d!64747 (= (validKeyInArray!0 (select (arr!6571 lt!138137) startIndex!26)) (and (not (= (select (arr!6571 lt!138137) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6571 lt!138137) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278007 d!64747))

(declare-fun b!278301 () Bool)

(declare-fun e!177522 () Bool)

(declare-fun call!25377 () Bool)

(assert (=> b!278301 (= e!177522 call!25377)))

(declare-fun b!278302 () Bool)

(declare-fun e!177523 () Bool)

(assert (=> b!278302 (= e!177523 e!177522)))

(declare-fun c!45756 () Bool)

(assert (=> b!278302 (= c!45756 (validKeyInArray!0 (select (arr!6571 lt!138137) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun bm!25374 () Bool)

(assert (=> bm!25374 (= call!25377 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!138137 mask!3868))))

(declare-fun b!278303 () Bool)

(declare-fun e!177524 () Bool)

(assert (=> b!278303 (= e!177522 e!177524)))

(declare-fun lt!138342 () (_ BitVec 64))

(assert (=> b!278303 (= lt!138342 (select (arr!6571 lt!138137) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!138341 () Unit!8790)

(assert (=> b!278303 (= lt!138341 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138342 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!278303 (arrayContainsKey!0 lt!138137 lt!138342 #b00000000000000000000000000000000)))

(declare-fun lt!138343 () Unit!8790)

(assert (=> b!278303 (= lt!138343 lt!138341)))

(declare-fun res!141893 () Bool)

(assert (=> b!278303 (= res!141893 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) (bvadd startIndex!26 #b00000000000000000000000000000001)) lt!138137 mask!3868) (Found!1740 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!278303 (=> (not res!141893) (not e!177524))))

(declare-fun d!64749 () Bool)

(declare-fun res!141892 () Bool)

(assert (=> d!64749 (=> res!141892 e!177523)))

(assert (=> d!64749 (= res!141892 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!6923 lt!138137)))))

(assert (=> d!64749 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!138137 mask!3868) e!177523)))

(declare-fun b!278304 () Bool)

(assert (=> b!278304 (= e!177524 call!25377)))

(assert (= (and d!64749 (not res!141892)) b!278302))

(assert (= (and b!278302 c!45756) b!278303))

(assert (= (and b!278302 (not c!45756)) b!278301))

(assert (= (and b!278303 res!141893) b!278304))

(assert (= (or b!278304 b!278301) bm!25374))

(declare-fun m!293335 () Bool)

(assert (=> b!278302 m!293335))

(assert (=> b!278302 m!293335))

(declare-fun m!293337 () Bool)

(assert (=> b!278302 m!293337))

(declare-fun m!293339 () Bool)

(assert (=> bm!25374 m!293339))

(assert (=> b!278303 m!293335))

(declare-fun m!293341 () Bool)

(assert (=> b!278303 m!293341))

(declare-fun m!293343 () Bool)

(assert (=> b!278303 m!293343))

(assert (=> b!278303 m!293335))

(declare-fun m!293345 () Bool)

(assert (=> b!278303 m!293345))

(assert (=> bm!25355 d!64749))

(declare-fun d!64751 () Bool)

(assert (=> d!64751 (= (seekEntryOrOpen!0 k!2581 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868) (Found!1740 i!1267))))

(assert (=> d!64751 true))

(declare-fun _$54!20 () Unit!8790)

(assert (=> d!64751 (= (choose!8 a!3325 i!1267 k!2581 mask!3868) _$54!20)))

(declare-fun bs!9919 () Bool)

(assert (= bs!9919 d!64751))

(assert (=> bs!9919 m!292821))

(assert (=> bs!9919 m!293045))

(assert (=> d!64651 d!64751))

(assert (=> d!64651 d!64613))

(declare-fun d!64761 () Bool)

(assert (=> d!64761 (= (validKeyInArray!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26))) (and (not (= (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278109 d!64761))

(declare-fun d!64763 () Bool)

(declare-fun lt!138352 () Bool)

(declare-fun content!184 (List!4400) (Set (_ BitVec 64)))

(assert (=> d!64763 (= lt!138352 (set.member (select (arr!6571 a!3325) #b00000000000000000000000000000000) (content!184 Nil!4397)))))

(declare-fun e!177537 () Bool)

(assert (=> d!64763 (= lt!138352 e!177537)))

(declare-fun res!141905 () Bool)

(assert (=> d!64763 (=> (not res!141905) (not e!177537))))

(assert (=> d!64763 (= res!141905 (is-Cons!4396 Nil!4397))))

(assert (=> d!64763 (= (contains!1962 Nil!4397 (select (arr!6571 a!3325) #b00000000000000000000000000000000)) lt!138352)))

(declare-fun b!278319 () Bool)

(declare-fun e!177538 () Bool)

(assert (=> b!278319 (= e!177537 e!177538)))

(declare-fun res!141904 () Bool)

(assert (=> b!278319 (=> res!141904 e!177538)))

(assert (=> b!278319 (= res!141904 (= (h!5063 Nil!4397) (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278320 () Bool)

(assert (=> b!278320 (= e!177538 (contains!1962 (t!9490 Nil!4397) (select (arr!6571 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64763 res!141905) b!278319))

(assert (= (and b!278319 (not res!141904)) b!278320))

(declare-fun m!293373 () Bool)

(assert (=> d!64763 m!293373))

(assert (=> d!64763 m!293059))

(declare-fun m!293375 () Bool)

(assert (=> d!64763 m!293375))

(assert (=> b!278320 m!293059))

(declare-fun m!293377 () Bool)

(assert (=> b!278320 m!293377))

(assert (=> b!278136 d!64763))

(declare-fun d!64767 () Bool)

(assert (=> d!64767 (arrayContainsKey!0 lt!138137 lt!138265 #b00000000000000000000000000000000)))

(declare-fun lt!138353 () Unit!8790)

(assert (=> d!64767 (= lt!138353 (choose!13 lt!138137 lt!138265 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> d!64767 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))

(assert (=> d!64767 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138265 (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138353)))

(declare-fun bs!9921 () Bool)

(assert (= bs!9921 d!64767))

(assert (=> bs!9921 m!293101))

(declare-fun m!293379 () Bool)

(assert (=> bs!9921 m!293379))

(assert (=> b!278110 d!64767))

(declare-fun d!64769 () Bool)

(declare-fun res!141906 () Bool)

(declare-fun e!177539 () Bool)

(assert (=> d!64769 (=> res!141906 e!177539)))

(assert (=> d!64769 (= res!141906 (= (select (arr!6571 lt!138137) #b00000000000000000000000000000000) lt!138265))))

(assert (=> d!64769 (= (arrayContainsKey!0 lt!138137 lt!138265 #b00000000000000000000000000000000) e!177539)))

(declare-fun b!278321 () Bool)

(declare-fun e!177540 () Bool)

(assert (=> b!278321 (= e!177539 e!177540)))

(declare-fun res!141907 () Bool)

(assert (=> b!278321 (=> (not res!141907) (not e!177540))))

(assert (=> b!278321 (= res!141907 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6923 lt!138137)))))

(declare-fun b!278322 () Bool)

(assert (=> b!278322 (= e!177540 (arrayContainsKey!0 lt!138137 lt!138265 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64769 (not res!141906)) b!278321))

(assert (= (and b!278321 res!141907) b!278322))

(assert (=> d!64769 m!293309))

(declare-fun m!293381 () Bool)

(assert (=> b!278322 m!293381))

(assert (=> b!278110 d!64769))

(declare-fun b!278323 () Bool)

(declare-fun e!177542 () SeekEntryResult!1740)

(declare-fun lt!138354 () SeekEntryResult!1740)

(assert (=> b!278323 (= e!177542 (Found!1740 (index!9132 lt!138354)))))

(declare-fun b!278324 () Bool)

(declare-fun e!177541 () SeekEntryResult!1740)

(assert (=> b!278324 (= e!177541 e!177542)))

(declare-fun lt!138356 () (_ BitVec 64))

(assert (=> b!278324 (= lt!138356 (select (arr!6571 lt!138137) (index!9132 lt!138354)))))

(declare-fun c!45761 () Bool)

(assert (=> b!278324 (= c!45761 (= lt!138356 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun b!278325 () Bool)

(declare-fun c!45759 () Bool)

(assert (=> b!278325 (= c!45759 (= lt!138356 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!177543 () SeekEntryResult!1740)

(assert (=> b!278325 (= e!177542 e!177543)))

(declare-fun b!278326 () Bool)

(assert (=> b!278326 (= e!177543 (seekKeyOrZeroReturnVacant!0 (x!27345 lt!138354) (index!9132 lt!138354) (index!9132 lt!138354) (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138137 mask!3868))))

(declare-fun d!64771 () Bool)

(declare-fun lt!138355 () SeekEntryResult!1740)

(assert (=> d!64771 (and (or (is-Undefined!1740 lt!138355) (not (is-Found!1740 lt!138355)) (and (bvsge (index!9131 lt!138355) #b00000000000000000000000000000000) (bvslt (index!9131 lt!138355) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138355) (is-Found!1740 lt!138355) (not (is-MissingZero!1740 lt!138355)) (and (bvsge (index!9130 lt!138355) #b00000000000000000000000000000000) (bvslt (index!9130 lt!138355) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138355) (is-Found!1740 lt!138355) (is-MissingZero!1740 lt!138355) (not (is-MissingVacant!1740 lt!138355)) (and (bvsge (index!9133 lt!138355) #b00000000000000000000000000000000) (bvslt (index!9133 lt!138355) (size!6923 lt!138137)))) (or (is-Undefined!1740 lt!138355) (ite (is-Found!1740 lt!138355) (= (select (arr!6571 lt!138137) (index!9131 lt!138355)) (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26))) (ite (is-MissingZero!1740 lt!138355) (= (select (arr!6571 lt!138137) (index!9130 lt!138355)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1740 lt!138355) (= (select (arr!6571 lt!138137) (index!9133 lt!138355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64771 (= lt!138355 e!177541)))

(declare-fun c!45760 () Bool)

(assert (=> d!64771 (= c!45760 (and (is-Intermediate!1740 lt!138354) (undefined!2552 lt!138354)))))

(assert (=> d!64771 (= lt!138354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) mask!3868) (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138137 mask!3868))))

(assert (=> d!64771 (validMask!0 mask!3868)))

(assert (=> d!64771 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26)) lt!138137 mask!3868) lt!138355)))

(declare-fun b!278327 () Bool)

(assert (=> b!278327 (= e!177543 (MissingZero!1740 (index!9132 lt!138354)))))

(declare-fun b!278328 () Bool)

(assert (=> b!278328 (= e!177541 Undefined!1740)))

(assert (= (and d!64771 c!45760) b!278328))

(assert (= (and d!64771 (not c!45760)) b!278324))

(assert (= (and b!278324 c!45761) b!278323))

(assert (= (and b!278324 (not c!45761)) b!278325))

(assert (= (and b!278325 c!45759) b!278327))

(assert (= (and b!278325 (not c!45759)) b!278326))

(declare-fun m!293383 () Bool)

(assert (=> b!278324 m!293383))

(assert (=> b!278326 m!293089))

(declare-fun m!293385 () Bool)

(assert (=> b!278326 m!293385))

(declare-fun m!293387 () Bool)

(assert (=> d!64771 m!293387))

(assert (=> d!64771 m!292827))

(declare-fun m!293389 () Bool)

(assert (=> d!64771 m!293389))

(assert (=> d!64771 m!293089))

(declare-fun m!293391 () Bool)

(assert (=> d!64771 m!293391))

(declare-fun m!293393 () Bool)

(assert (=> d!64771 m!293393))

(assert (=> d!64771 m!293089))

(assert (=> d!64771 m!293389))

(declare-fun m!293395 () Bool)

(assert (=> d!64771 m!293395))

(assert (=> b!278110 d!64771))

(declare-fun b!278329 () Bool)

(declare-fun e!177544 () Bool)

(declare-fun call!25380 () Bool)

(assert (=> b!278329 (= e!177544 call!25380)))

(declare-fun b!278330 () Bool)

(declare-fun e!177545 () Bool)

(assert (=> b!278330 (= e!177545 e!177544)))

(declare-fun c!45762 () Bool)

(assert (=> b!278330 (= c!45762 (validKeyInArray!0 (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(declare-fun bm!25377 () Bool)

(assert (=> bm!25377 (= call!25380 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868))))

(declare-fun b!278331 () Bool)

(declare-fun e!177546 () Bool)

(assert (=> b!278331 (= e!177544 e!177546)))

(declare-fun lt!138358 () (_ BitVec 64))

(assert (=> b!278331 (= lt!138358 (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(declare-fun lt!138357 () Unit!8790)

(assert (=> b!278331 (= lt!138357 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) lt!138358 (bvadd #b00000000000000000000000000000001 startIndex!26)))))

(assert (=> b!278331 (arrayContainsKey!0 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) lt!138358 #b00000000000000000000000000000000)))

(declare-fun lt!138359 () Unit!8790)

(assert (=> b!278331 (= lt!138359 lt!138357)))

(declare-fun res!141909 () Bool)

(assert (=> b!278331 (= res!141909 (= (seekEntryOrOpen!0 (select (arr!6571 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325))) (bvadd #b00000000000000000000000000000001 startIndex!26)) (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868) (Found!1740 (bvadd #b00000000000000000000000000000001 startIndex!26))))))

(assert (=> b!278331 (=> (not res!141909) (not e!177546))))

(declare-fun d!64773 () Bool)

(declare-fun res!141908 () Bool)

(assert (=> d!64773 (=> res!141908 e!177545)))

(assert (=> d!64773 (= res!141908 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) (size!6923 (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)))))))

(assert (=> d!64773 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868) e!177545)))

(declare-fun b!278332 () Bool)

(assert (=> b!278332 (= e!177546 call!25380)))

(assert (= (and d!64773 (not res!141908)) b!278330))

(assert (= (and b!278330 c!45762) b!278331))

(assert (= (and b!278330 (not c!45762)) b!278329))

(assert (= (and b!278331 res!141909) b!278332))

(assert (= (or b!278332 b!278329) bm!25377))

(declare-fun m!293397 () Bool)

(assert (=> b!278330 m!293397))

(assert (=> b!278330 m!293397))

(declare-fun m!293399 () Bool)

(assert (=> b!278330 m!293399))

(declare-fun m!293401 () Bool)

(assert (=> bm!25377 m!293401))

(assert (=> b!278331 m!293397))

(declare-fun m!293403 () Bool)

(assert (=> b!278331 m!293403))

(declare-fun m!293405 () Bool)

(assert (=> b!278331 m!293405))

(assert (=> b!278331 m!293397))

(declare-fun m!293407 () Bool)

(assert (=> b!278331 m!293407))

(assert (=> b!278101 d!64773))

(declare-fun d!64775 () Bool)

(assert (=> d!64775 (= (validKeyInArray!0 (select (arr!6571 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6571 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6571 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278081 d!64775))

(declare-fun b!278333 () Bool)

(declare-fun e!177547 () Bool)

(declare-fun call!25381 () Bool)

(assert (=> b!278333 (= e!177547 call!25381)))

(declare-fun b!278334 () Bool)

(declare-fun e!177548 () Bool)

(assert (=> b!278334 (= e!177548 e!177547)))

(declare-fun c!45763 () Bool)

(assert (=> b!278334 (= c!45763 (validKeyInArray!0 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!25378 () Bool)

(assert (=> bm!25378 (= call!25381 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!278335 () Bool)

(declare-fun e!177549 () Bool)

(assert (=> b!278335 (= e!177547 e!177549)))

(declare-fun lt!138361 () (_ BitVec 64))

(assert (=> b!278335 (= lt!138361 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!138360 () Unit!8790)

(assert (=> b!278335 (= lt!138360 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138361 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!278335 (arrayContainsKey!0 a!3325 lt!138361 #b00000000000000000000000000000000)))

(declare-fun lt!138362 () Unit!8790)

(assert (=> b!278335 (= lt!138362 lt!138360)))

(declare-fun res!141911 () Bool)

(assert (=> b!278335 (= res!141911 (= (seekEntryOrOpen!0 (select (arr!6571 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1740 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!278335 (=> (not res!141911) (not e!177549))))

(declare-fun d!64777 () Bool)

(declare-fun res!141910 () Bool)

(assert (=> d!64777 (=> res!141910 e!177548)))

(assert (=> d!64777 (= res!141910 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6923 a!3325)))))

(assert (=> d!64777 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!177548)))

(declare-fun b!278336 () Bool)

(assert (=> b!278336 (= e!177549 call!25381)))

(assert (= (and d!64777 (not res!141910)) b!278334))

(assert (= (and b!278334 c!45763) b!278335))

(assert (= (and b!278334 (not c!45763)) b!278333))

(assert (= (and b!278335 res!141911) b!278336))

(assert (= (or b!278336 b!278333) bm!25378))

(assert (=> b!278334 m!293277))

(assert (=> b!278334 m!293277))

(assert (=> b!278334 m!293289))

(declare-fun m!293409 () Bool)

(assert (=> bm!25378 m!293409))

(assert (=> b!278335 m!293277))

(declare-fun m!293411 () Bool)

(assert (=> b!278335 m!293411))

(declare-fun m!293413 () Bool)

(assert (=> b!278335 m!293413))

(assert (=> b!278335 m!293277))

(declare-fun m!293415 () Bool)

(assert (=> b!278335 m!293415))

(assert (=> bm!25359 d!64777))

(declare-fun d!64779 () Bool)

(assert (=> d!64779 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13845 (store (arr!6571 a!3325) i!1267 k!2581) (size!6923 a!3325)) mask!3868)))

(assert (=> d!64779 true))

(declare-fun _$55!39 () Unit!8790)

(assert (=> d!64779 (= (choose!98 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868) _$55!39)))

(declare-fun bs!9922 () Bool)

(assert (= bs!9922 d!64779))

(assert (=> bs!9922 m!292821))

(assert (=> bs!9922 m!293079))

(assert (=> d!64659 d!64779))

(assert (=> d!64659 d!64613))

(declare-fun b!278382 () Bool)

(declare-fun e!177577 () SeekEntryResult!1740)

(assert (=> b!278382 (= e!177577 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 lt!138137 mask!3868))))

(declare-fun b!278384 () Bool)

(assert (=> b!278384 (= e!177577 (Intermediate!1740 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278385 () Bool)

(declare-fun e!177579 () Bool)

(declare-fun e!177578 () Bool)

(assert (=> b!278385 (= e!177579 e!177578)))

(declare-fun res!141930 () Bool)

(declare-fun lt!138379 () SeekEntryResult!1740)

(assert (=> b!278385 (= res!141930 (and (is-Intermediate!1740 lt!138379) (not (undefined!2552 lt!138379)) (bvslt (x!27345 lt!138379) #b01111111111111111111111111111110) (bvsge (x!27345 lt!138379) #b00000000000000000000000000000000) (bvsge (x!27345 lt!138379) #b00000000000000000000000000000000)))))

(assert (=> b!278385 (=> (not res!141930) (not e!177578))))

(declare-fun b!278386 () Bool)

(assert (=> b!278386 (and (bvsge (index!9132 lt!138379) #b00000000000000000000000000000000) (bvslt (index!9132 lt!138379) (size!6923 lt!138137)))))

(declare-fun e!177576 () Bool)

(assert (=> b!278386 (= e!177576 (= (select (arr!6571 lt!138137) (index!9132 lt!138379)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!278387 () Bool)

(declare-fun e!177575 () SeekEntryResult!1740)

(assert (=> b!278387 (= e!177575 e!177577)))

(declare-fun c!45779 () Bool)

(declare-fun lt!138380 () (_ BitVec 64))

(assert (=> b!278387 (= c!45779 (or (= lt!138380 k!2581) (= (bvadd lt!138380 lt!138380) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!278388 () Bool)

(assert (=> b!278388 (and (bvsge (index!9132 lt!138379) #b00000000000000000000000000000000) (bvslt (index!9132 lt!138379) (size!6923 lt!138137)))))

(declare-fun res!141929 () Bool)

(assert (=> b!278388 (= res!141929 (= (select (arr!6571 lt!138137) (index!9132 lt!138379)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278388 (=> res!141929 e!177576)))

(declare-fun d!64781 () Bool)

(assert (=> d!64781 e!177579))

(declare-fun c!45781 () Bool)

(assert (=> d!64781 (= c!45781 (and (is-Intermediate!1740 lt!138379) (undefined!2552 lt!138379)))))

(assert (=> d!64781 (= lt!138379 e!177575)))

(declare-fun c!45780 () Bool)

(assert (=> d!64781 (= c!45780 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!64781 (= lt!138380 (select (arr!6571 lt!138137) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!64781 (validMask!0 mask!3868)))

(assert (=> d!64781 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 lt!138137 mask!3868) lt!138379)))

(declare-fun b!278383 () Bool)

(assert (=> b!278383 (= e!177579 (bvsge (x!27345 lt!138379) #b01111111111111111111111111111110))))

(declare-fun b!278389 () Bool)

(assert (=> b!278389 (= e!177575 (Intermediate!1740 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!278390 () Bool)

(assert (=> b!278390 (and (bvsge (index!9132 lt!138379) #b00000000000000000000000000000000) (bvslt (index!9132 lt!138379) (size!6923 lt!138137)))))

(declare-fun res!141928 () Bool)

(assert (=> b!278390 (= res!141928 (= (select (arr!6571 lt!138137) (index!9132 lt!138379)) k!2581))))

(assert (=> b!278390 (=> res!141928 e!177576)))

(assert (=> b!278390 (= e!177578 e!177576)))

(assert (= (and d!64781 c!45780) b!278389))

(assert (= (and d!64781 (not c!45780)) b!278387))

(assert (= (and b!278387 c!45779) b!278384))

(assert (= (and b!278387 (not c!45779)) b!278382))

(assert (= (and d!64781 c!45781) b!278383))

(assert (= (and d!64781 (not c!45781)) b!278385))

(assert (= (and b!278385 res!141930) b!278390))

(assert (= (and b!278390 (not res!141928)) b!278388))

(assert (= (and b!278388 (not res!141929)) b!278386))

(declare-fun m!293425 () Bool)

(assert (=> b!278388 m!293425))

(assert (=> b!278390 m!293425))

(assert (=> b!278382 m!293035))

(declare-fun m!293427 () Bool)

(assert (=> b!278382 m!293427))

(assert (=> b!278382 m!293427))

(declare-fun m!293429 () Bool)

(assert (=> b!278382 m!293429))

(assert (=> d!64781 m!293035))

(declare-fun m!293431 () Bool)

(assert (=> d!64781 m!293431))

(assert (=> d!64781 m!292827))

(assert (=> b!278386 m!293425))

(assert (=> d!64635 d!64781))

(declare-fun d!64787 () Bool)

(declare-fun lt!138396 () (_ BitVec 32))

(declare-fun lt!138395 () (_ BitVec 32))

(assert (=> d!64787 (= lt!138396 (bvmul (bvxor lt!138395 (bvlshr lt!138395 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!64787 (= lt!138395 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!64787 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!141933 (let ((h!5068 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!27355 (bvmul (bvxor h!5068 (bvlshr h!5068 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!27355 (bvlshr x!27355 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!141933 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!141933 #b00000000000000000000000000000000))))))

(assert (=> d!64787 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!138396 (bvlshr lt!138396 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!64635 d!64787))

(assert (=> d!64635 d!64613))

(declare-fun b!278407 () Bool)

(declare-fun e!177590 () Bool)

(declare-fun call!25382 () Bool)

(assert (=> b!278407 (= e!177590 call!25382)))

(declare-fun b!278408 () Bool)

(declare-fun e!177591 () Bool)

(assert (=> b!278408 (= e!177591 e!177590)))

(declare-fun c!45788 () Bool)

(assert (=> b!278408 (= c!45788 (validKeyInArray!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun bm!25379 () Bool)

(assert (=> bm!25379 (= call!25382 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!138137 mask!3868))))

(declare-fun b!278409 () Bool)

(declare-fun e!177592 () Bool)

(assert (=> b!278409 (= e!177590 e!177592)))

(declare-fun lt!138398 () (_ BitVec 64))

(assert (=> b!278409 (= lt!138398 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!138397 () Unit!8790)

(assert (=> b!278409 (= lt!138397 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!138137 lt!138398 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!278409 (arrayContainsKey!0 lt!138137 lt!138398 #b00000000000000000000000000000000)))

(declare-fun lt!138399 () Unit!8790)

(assert (=> b!278409 (= lt!138399 lt!138397)))

(declare-fun res!141937 () Bool)

(assert (=> b!278409 (= res!141937 (= (seekEntryOrOpen!0 (select (arr!6571 lt!138137) (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001)) lt!138137 mask!3868) (Found!1740 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!278409 (=> (not res!141937) (not e!177592))))

(declare-fun d!64803 () Bool)

(declare-fun res!141936 () Bool)

(assert (=> d!64803 (=> res!141936 e!177591)))

(assert (=> d!64803 (= res!141936 (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) (size!6923 lt!138137)))))

