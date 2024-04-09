; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92966 () Bool)

(assert start!92966)

(declare-fun b!1055018 () Bool)

(declare-fun e!599563 () Bool)

(declare-fun e!599558 () Bool)

(assert (=> b!1055018 (= e!599563 (not e!599558))))

(declare-fun res!704032 () Bool)

(assert (=> b!1055018 (=> res!704032 e!599558)))

(declare-fun lt!465640 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055018 (= res!704032 (bvsle lt!465640 i!1381))))

(declare-fun e!599559 () Bool)

(assert (=> b!1055018 e!599559))

(declare-fun res!704030 () Bool)

(assert (=> b!1055018 (=> (not res!704030) (not e!599559))))

(declare-datatypes ((array!66535 0))(
  ( (array!66536 (arr!31994 (Array (_ BitVec 32) (_ BitVec 64))) (size!32531 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66535)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1055018 (= res!704030 (= (select (store (arr!31994 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465640) k0!2747))))

(declare-fun b!1055019 () Bool)

(declare-fun e!599562 () Bool)

(declare-fun arrayContainsKey!0 (array!66535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055019 (= e!599562 (arrayContainsKey!0 a!3488 k0!2747 lt!465640))))

(declare-fun res!704027 () Bool)

(declare-fun e!599557 () Bool)

(assert (=> start!92966 (=> (not res!704027) (not e!599557))))

(assert (=> start!92966 (= res!704027 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32531 a!3488)) (bvslt (size!32531 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92966 e!599557))

(assert (=> start!92966 true))

(declare-fun array_inv!24616 (array!66535) Bool)

(assert (=> start!92966 (array_inv!24616 a!3488)))

(declare-fun b!1055020 () Bool)

(assert (=> b!1055020 (= e!599559 e!599562)))

(declare-fun res!704033 () Bool)

(assert (=> b!1055020 (=> res!704033 e!599562)))

(assert (=> b!1055020 (= res!704033 (bvsle lt!465640 i!1381))))

(declare-fun b!1055021 () Bool)

(declare-fun e!599561 () Bool)

(assert (=> b!1055021 (= e!599557 e!599561)))

(declare-fun res!704029 () Bool)

(assert (=> b!1055021 (=> (not res!704029) (not e!599561))))

(declare-fun lt!465638 () array!66535)

(assert (=> b!1055021 (= res!704029 (arrayContainsKey!0 lt!465638 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055021 (= lt!465638 (array!66536 (store (arr!31994 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32531 a!3488)))))

(declare-fun b!1055022 () Bool)

(declare-fun res!704028 () Bool)

(assert (=> b!1055022 (=> (not res!704028) (not e!599557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055022 (= res!704028 (validKeyInArray!0 k0!2747))))

(declare-fun b!1055023 () Bool)

(declare-fun res!704034 () Bool)

(assert (=> b!1055023 (=> (not res!704034) (not e!599557))))

(assert (=> b!1055023 (= res!704034 (= (select (arr!31994 a!3488) i!1381) k0!2747))))

(declare-fun b!1055024 () Bool)

(declare-fun e!599560 () Bool)

(assert (=> b!1055024 (= e!599558 e!599560)))

(declare-fun res!704025 () Bool)

(assert (=> b!1055024 (=> res!704025 e!599560)))

(assert (=> b!1055024 (= res!704025 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32531 a!3488)))))

(assert (=> b!1055024 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34555 0))(
  ( (Unit!34556) )
))
(declare-fun lt!465639 () Unit!34555)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34555)

(assert (=> b!1055024 (= lt!465639 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465640 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22437 0))(
  ( (Nil!22434) (Cons!22433 (h!23642 (_ BitVec 64)) (t!31751 List!22437)) )
))
(declare-fun arrayNoDuplicates!0 (array!66535 (_ BitVec 32) List!22437) Bool)

(assert (=> b!1055024 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22434)))

(declare-fun lt!465637 () Unit!34555)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66535 (_ BitVec 32) (_ BitVec 32)) Unit!34555)

(assert (=> b!1055024 (= lt!465637 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055025 () Bool)

(declare-fun res!704031 () Bool)

(assert (=> b!1055025 (=> (not res!704031) (not e!599557))))

(assert (=> b!1055025 (= res!704031 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22434))))

(declare-fun b!1055026 () Bool)

(declare-fun noDuplicate!1564 (List!22437) Bool)

(assert (=> b!1055026 (= e!599560 (noDuplicate!1564 Nil!22434))))

(declare-fun b!1055027 () Bool)

(assert (=> b!1055027 (= e!599561 e!599563)))

(declare-fun res!704026 () Bool)

(assert (=> b!1055027 (=> (not res!704026) (not e!599563))))

(assert (=> b!1055027 (= res!704026 (not (= lt!465640 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66535 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055027 (= lt!465640 (arrayScanForKey!0 lt!465638 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92966 res!704027) b!1055025))

(assert (= (and b!1055025 res!704031) b!1055022))

(assert (= (and b!1055022 res!704028) b!1055023))

(assert (= (and b!1055023 res!704034) b!1055021))

(assert (= (and b!1055021 res!704029) b!1055027))

(assert (= (and b!1055027 res!704026) b!1055018))

(assert (= (and b!1055018 res!704030) b!1055020))

(assert (= (and b!1055020 (not res!704033)) b!1055019))

(assert (= (and b!1055018 (not res!704032)) b!1055024))

(assert (= (and b!1055024 (not res!704025)) b!1055026))

(declare-fun m!975187 () Bool)

(assert (=> b!1055021 m!975187))

(declare-fun m!975189 () Bool)

(assert (=> b!1055021 m!975189))

(declare-fun m!975191 () Bool)

(assert (=> b!1055019 m!975191))

(declare-fun m!975193 () Bool)

(assert (=> start!92966 m!975193))

(declare-fun m!975195 () Bool)

(assert (=> b!1055024 m!975195))

(declare-fun m!975197 () Bool)

(assert (=> b!1055024 m!975197))

(declare-fun m!975199 () Bool)

(assert (=> b!1055024 m!975199))

(declare-fun m!975201 () Bool)

(assert (=> b!1055024 m!975201))

(declare-fun m!975203 () Bool)

(assert (=> b!1055022 m!975203))

(declare-fun m!975205 () Bool)

(assert (=> b!1055023 m!975205))

(assert (=> b!1055018 m!975189))

(declare-fun m!975207 () Bool)

(assert (=> b!1055018 m!975207))

(declare-fun m!975209 () Bool)

(assert (=> b!1055025 m!975209))

(declare-fun m!975211 () Bool)

(assert (=> b!1055027 m!975211))

(declare-fun m!975213 () Bool)

(assert (=> b!1055026 m!975213))

(check-sat (not b!1055026) (not b!1055022) (not b!1055025) (not start!92966) (not b!1055024) (not b!1055021) (not b!1055019) (not b!1055027))
(check-sat)
(get-model)

(declare-fun d!128035 () Bool)

(declare-fun res!704069 () Bool)

(declare-fun e!599593 () Bool)

(assert (=> d!128035 (=> res!704069 e!599593)))

(get-info :version)

(assert (=> d!128035 (= res!704069 ((_ is Nil!22434) Nil!22434))))

(assert (=> d!128035 (= (noDuplicate!1564 Nil!22434) e!599593)))

(declare-fun b!1055062 () Bool)

(declare-fun e!599594 () Bool)

(assert (=> b!1055062 (= e!599593 e!599594)))

(declare-fun res!704070 () Bool)

(assert (=> b!1055062 (=> (not res!704070) (not e!599594))))

(declare-fun contains!6195 (List!22437 (_ BitVec 64)) Bool)

(assert (=> b!1055062 (= res!704070 (not (contains!6195 (t!31751 Nil!22434) (h!23642 Nil!22434))))))

(declare-fun b!1055063 () Bool)

(assert (=> b!1055063 (= e!599594 (noDuplicate!1564 (t!31751 Nil!22434)))))

(assert (= (and d!128035 (not res!704069)) b!1055062))

(assert (= (and b!1055062 res!704070) b!1055063))

(declare-fun m!975243 () Bool)

(assert (=> b!1055062 m!975243))

(declare-fun m!975245 () Bool)

(assert (=> b!1055063 m!975245))

(assert (=> b!1055026 d!128035))

(declare-fun d!128037 () Bool)

(declare-fun res!704075 () Bool)

(declare-fun e!599599 () Bool)

(assert (=> d!128037 (=> res!704075 e!599599)))

(assert (=> d!128037 (= res!704075 (= (select (arr!31994 lt!465638) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128037 (= (arrayContainsKey!0 lt!465638 k0!2747 #b00000000000000000000000000000000) e!599599)))

(declare-fun b!1055068 () Bool)

(declare-fun e!599600 () Bool)

(assert (=> b!1055068 (= e!599599 e!599600)))

(declare-fun res!704076 () Bool)

(assert (=> b!1055068 (=> (not res!704076) (not e!599600))))

(assert (=> b!1055068 (= res!704076 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32531 lt!465638)))))

(declare-fun b!1055069 () Bool)

(assert (=> b!1055069 (= e!599600 (arrayContainsKey!0 lt!465638 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128037 (not res!704075)) b!1055068))

(assert (= (and b!1055068 res!704076) b!1055069))

(declare-fun m!975247 () Bool)

(assert (=> d!128037 m!975247))

(declare-fun m!975249 () Bool)

(assert (=> b!1055069 m!975249))

(assert (=> b!1055021 d!128037))

(declare-fun d!128039 () Bool)

(assert (=> d!128039 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055022 d!128039))

(declare-fun d!128041 () Bool)

(assert (=> d!128041 (= (array_inv!24616 a!3488) (bvsge (size!32531 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92966 d!128041))

(declare-fun d!128043 () Bool)

(declare-fun lt!465655 () (_ BitVec 32))

(assert (=> d!128043 (and (or (bvslt lt!465655 #b00000000000000000000000000000000) (bvsge lt!465655 (size!32531 lt!465638)) (and (bvsge lt!465655 #b00000000000000000000000000000000) (bvslt lt!465655 (size!32531 lt!465638)))) (bvsge lt!465655 #b00000000000000000000000000000000) (bvslt lt!465655 (size!32531 lt!465638)) (= (select (arr!31994 lt!465638) lt!465655) k0!2747))))

(declare-fun e!599603 () (_ BitVec 32))

(assert (=> d!128043 (= lt!465655 e!599603)))

(declare-fun c!106961 () Bool)

(assert (=> d!128043 (= c!106961 (= (select (arr!31994 lt!465638) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128043 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32531 lt!465638)) (bvslt (size!32531 lt!465638) #b01111111111111111111111111111111))))

(assert (=> d!128043 (= (arrayScanForKey!0 lt!465638 k0!2747 #b00000000000000000000000000000000) lt!465655)))

(declare-fun b!1055074 () Bool)

(assert (=> b!1055074 (= e!599603 #b00000000000000000000000000000000)))

(declare-fun b!1055075 () Bool)

(assert (=> b!1055075 (= e!599603 (arrayScanForKey!0 lt!465638 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128043 c!106961) b!1055074))

(assert (= (and d!128043 (not c!106961)) b!1055075))

(declare-fun m!975251 () Bool)

(assert (=> d!128043 m!975251))

(assert (=> d!128043 m!975247))

(declare-fun m!975253 () Bool)

(assert (=> b!1055075 m!975253))

(assert (=> b!1055027 d!128043))

(declare-fun d!128051 () Bool)

(declare-fun res!704077 () Bool)

(declare-fun e!599604 () Bool)

(assert (=> d!128051 (=> res!704077 e!599604)))

(assert (=> d!128051 (= res!704077 (= (select (arr!31994 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k0!2747))))

(assert (=> d!128051 (= (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599604)))

(declare-fun b!1055076 () Bool)

(declare-fun e!599605 () Bool)

(assert (=> b!1055076 (= e!599604 e!599605)))

(declare-fun res!704078 () Bool)

(assert (=> b!1055076 (=> (not res!704078) (not e!599605))))

(assert (=> b!1055076 (= res!704078 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32531 a!3488)))))

(declare-fun b!1055077 () Bool)

(assert (=> b!1055077 (= e!599605 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128051 (not res!704077)) b!1055076))

(assert (= (and b!1055076 res!704078) b!1055077))

(declare-fun m!975255 () Bool)

(assert (=> d!128051 m!975255))

(declare-fun m!975257 () Bool)

(assert (=> b!1055077 m!975257))

(assert (=> b!1055024 d!128051))

(declare-fun d!128053 () Bool)

(assert (=> d!128053 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465658 () Unit!34555)

(declare-fun choose!114 (array!66535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34555)

(assert (=> d!128053 (= lt!465658 (choose!114 a!3488 k0!2747 lt!465640 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!128053 (bvsge lt!465640 #b00000000000000000000000000000000)))

(assert (=> d!128053 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465640 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465658)))

(declare-fun bs!30921 () Bool)

(assert (= bs!30921 d!128053))

(assert (=> bs!30921 m!975195))

(declare-fun m!975259 () Bool)

(assert (=> bs!30921 m!975259))

(assert (=> b!1055024 d!128053))

(declare-fun bm!44783 () Bool)

(declare-fun c!106969 () Bool)

(declare-fun call!44786 () Bool)

(assert (=> bm!44783 (= call!44786 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106969 (Cons!22433 (select (arr!31994 a!3488) i!1381) Nil!22434) Nil!22434)))))

(declare-fun b!1055101 () Bool)

(declare-fun e!599623 () Bool)

(declare-fun e!599625 () Bool)

(assert (=> b!1055101 (= e!599623 e!599625)))

(assert (=> b!1055101 (= c!106969 (validKeyInArray!0 (select (arr!31994 a!3488) i!1381)))))

(declare-fun b!1055102 () Bool)

(assert (=> b!1055102 (= e!599625 call!44786)))

(declare-fun b!1055103 () Bool)

(declare-fun e!599628 () Bool)

(assert (=> b!1055103 (= e!599628 (contains!6195 Nil!22434 (select (arr!31994 a!3488) i!1381)))))

(declare-fun b!1055104 () Bool)

(assert (=> b!1055104 (= e!599625 call!44786)))

(declare-fun d!128057 () Bool)

(declare-fun res!704091 () Bool)

(declare-fun e!599624 () Bool)

(assert (=> d!128057 (=> res!704091 e!599624)))

(assert (=> d!128057 (= res!704091 (bvsge i!1381 (size!32531 a!3488)))))

(assert (=> d!128057 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22434) e!599624)))

(declare-fun b!1055100 () Bool)

(assert (=> b!1055100 (= e!599624 e!599623)))

(declare-fun res!704089 () Bool)

(assert (=> b!1055100 (=> (not res!704089) (not e!599623))))

(assert (=> b!1055100 (= res!704089 (not e!599628))))

(declare-fun res!704090 () Bool)

(assert (=> b!1055100 (=> (not res!704090) (not e!599628))))

(assert (=> b!1055100 (= res!704090 (validKeyInArray!0 (select (arr!31994 a!3488) i!1381)))))

(assert (= (and d!128057 (not res!704091)) b!1055100))

(assert (= (and b!1055100 res!704090) b!1055103))

(assert (= (and b!1055100 res!704089) b!1055101))

(assert (= (and b!1055101 c!106969) b!1055104))

(assert (= (and b!1055101 (not c!106969)) b!1055102))

(assert (= (or b!1055104 b!1055102) bm!44783))

(assert (=> bm!44783 m!975205))

(declare-fun m!975267 () Bool)

(assert (=> bm!44783 m!975267))

(assert (=> b!1055101 m!975205))

(assert (=> b!1055101 m!975205))

(declare-fun m!975269 () Bool)

(assert (=> b!1055101 m!975269))

(assert (=> b!1055103 m!975205))

(assert (=> b!1055103 m!975205))

(declare-fun m!975271 () Bool)

(assert (=> b!1055103 m!975271))

(assert (=> b!1055100 m!975205))

(assert (=> b!1055100 m!975205))

(assert (=> b!1055100 m!975269))

(assert (=> b!1055024 d!128057))

(declare-fun d!128063 () Bool)

(assert (=> d!128063 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22434)))

(declare-fun lt!465667 () Unit!34555)

(declare-fun choose!39 (array!66535 (_ BitVec 32) (_ BitVec 32)) Unit!34555)

(assert (=> d!128063 (= lt!465667 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!128063 (bvslt (size!32531 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128063 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465667)))

(declare-fun bs!30922 () Bool)

(assert (= bs!30922 d!128063))

(assert (=> bs!30922 m!975199))

(declare-fun m!975283 () Bool)

(assert (=> bs!30922 m!975283))

(assert (=> b!1055024 d!128063))

(declare-fun d!128069 () Bool)

(declare-fun res!704101 () Bool)

(declare-fun e!599640 () Bool)

(assert (=> d!128069 (=> res!704101 e!599640)))

(assert (=> d!128069 (= res!704101 (= (select (arr!31994 a!3488) lt!465640) k0!2747))))

(assert (=> d!128069 (= (arrayContainsKey!0 a!3488 k0!2747 lt!465640) e!599640)))

(declare-fun b!1055124 () Bool)

(declare-fun e!599641 () Bool)

(assert (=> b!1055124 (= e!599640 e!599641)))

(declare-fun res!704102 () Bool)

(assert (=> b!1055124 (=> (not res!704102) (not e!599641))))

(assert (=> b!1055124 (= res!704102 (bvslt (bvadd lt!465640 #b00000000000000000000000000000001) (size!32531 a!3488)))))

(declare-fun b!1055125 () Bool)

(assert (=> b!1055125 (= e!599641 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!465640 #b00000000000000000000000000000001)))))

(assert (= (and d!128069 (not res!704101)) b!1055124))

(assert (= (and b!1055124 res!704102) b!1055125))

(declare-fun m!975289 () Bool)

(assert (=> d!128069 m!975289))

(declare-fun m!975291 () Bool)

(assert (=> b!1055125 m!975291))

(assert (=> b!1055019 d!128069))

(declare-fun bm!44787 () Bool)

(declare-fun call!44790 () Bool)

(declare-fun c!106974 () Bool)

(assert (=> bm!44787 (= call!44790 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106974 (Cons!22433 (select (arr!31994 a!3488) #b00000000000000000000000000000000) Nil!22434) Nil!22434)))))

(declare-fun b!1055127 () Bool)

(declare-fun e!599642 () Bool)

(declare-fun e!599644 () Bool)

(assert (=> b!1055127 (= e!599642 e!599644)))

(assert (=> b!1055127 (= c!106974 (validKeyInArray!0 (select (arr!31994 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055128 () Bool)

(assert (=> b!1055128 (= e!599644 call!44790)))

(declare-fun b!1055129 () Bool)

(declare-fun e!599645 () Bool)

(assert (=> b!1055129 (= e!599645 (contains!6195 Nil!22434 (select (arr!31994 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1055130 () Bool)

(assert (=> b!1055130 (= e!599644 call!44790)))

(declare-fun d!128073 () Bool)

(declare-fun res!704105 () Bool)

(declare-fun e!599643 () Bool)

(assert (=> d!128073 (=> res!704105 e!599643)))

(assert (=> d!128073 (= res!704105 (bvsge #b00000000000000000000000000000000 (size!32531 a!3488)))))

(assert (=> d!128073 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22434) e!599643)))

(declare-fun b!1055126 () Bool)

(assert (=> b!1055126 (= e!599643 e!599642)))

(declare-fun res!704103 () Bool)

(assert (=> b!1055126 (=> (not res!704103) (not e!599642))))

(assert (=> b!1055126 (= res!704103 (not e!599645))))

(declare-fun res!704104 () Bool)

(assert (=> b!1055126 (=> (not res!704104) (not e!599645))))

(assert (=> b!1055126 (= res!704104 (validKeyInArray!0 (select (arr!31994 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!128073 (not res!704105)) b!1055126))

(assert (= (and b!1055126 res!704104) b!1055129))

(assert (= (and b!1055126 res!704103) b!1055127))

(assert (= (and b!1055127 c!106974) b!1055130))

(assert (= (and b!1055127 (not c!106974)) b!1055128))

(assert (= (or b!1055130 b!1055128) bm!44787))

(declare-fun m!975293 () Bool)

(assert (=> bm!44787 m!975293))

(declare-fun m!975297 () Bool)

(assert (=> bm!44787 m!975297))

(assert (=> b!1055127 m!975293))

(assert (=> b!1055127 m!975293))

(declare-fun m!975299 () Bool)

(assert (=> b!1055127 m!975299))

(assert (=> b!1055129 m!975293))

(assert (=> b!1055129 m!975293))

(declare-fun m!975301 () Bool)

(assert (=> b!1055129 m!975301))

(assert (=> b!1055126 m!975293))

(assert (=> b!1055126 m!975293))

(assert (=> b!1055126 m!975299))

(assert (=> b!1055025 d!128073))

(check-sat (not b!1055077) (not b!1055075) (not d!128063) (not b!1055062) (not b!1055069) (not b!1055125) (not d!128053) (not bm!44787) (not bm!44783) (not b!1055129) (not b!1055101) (not b!1055127) (not b!1055100) (not b!1055103) (not b!1055063) (not b!1055126))
(check-sat)
