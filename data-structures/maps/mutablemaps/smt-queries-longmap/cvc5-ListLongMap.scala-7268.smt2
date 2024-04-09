; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92826 () Bool)

(assert start!92826)

(declare-fun b!1053967 () Bool)

(declare-fun res!703059 () Bool)

(declare-fun e!598735 () Bool)

(assert (=> b!1053967 (=> (not res!703059) (not e!598735))))

(declare-datatypes ((array!66467 0))(
  ( (array!66468 (arr!31963 (Array (_ BitVec 32) (_ BitVec 64))) (size!32500 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66467)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053967 (= res!703059 (= (select (arr!31963 a!3488) i!1381) k!2747))))

(declare-fun b!1053968 () Bool)

(declare-fun e!598739 () Bool)

(declare-fun e!598733 () Bool)

(assert (=> b!1053968 (= e!598739 (not e!598733))))

(declare-fun res!703063 () Bool)

(assert (=> b!1053968 (=> res!703063 e!598733)))

(declare-fun lt!465264 () (_ BitVec 32))

(assert (=> b!1053968 (= res!703063 (bvsle lt!465264 i!1381))))

(declare-fun e!598737 () Bool)

(assert (=> b!1053968 e!598737))

(declare-fun res!703062 () Bool)

(assert (=> b!1053968 (=> (not res!703062) (not e!598737))))

(assert (=> b!1053968 (= res!703062 (= (select (store (arr!31963 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465264) k!2747))))

(declare-fun b!1053969 () Bool)

(declare-fun res!703058 () Bool)

(assert (=> b!1053969 (=> (not res!703058) (not e!598735))))

(declare-datatypes ((List!22406 0))(
  ( (Nil!22403) (Cons!22402 (h!23611 (_ BitVec 64)) (t!31720 List!22406)) )
))
(declare-fun arrayNoDuplicates!0 (array!66467 (_ BitVec 32) List!22406) Bool)

(assert (=> b!1053969 (= res!703058 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22403))))

(declare-fun b!1053970 () Bool)

(declare-fun res!703060 () Bool)

(assert (=> b!1053970 (=> (not res!703060) (not e!598735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053970 (= res!703060 (validKeyInArray!0 k!2747))))

(declare-fun e!598736 () Bool)

(declare-fun b!1053966 () Bool)

(declare-fun arrayContainsKey!0 (array!66467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053966 (= e!598736 (arrayContainsKey!0 a!3488 k!2747 lt!465264))))

(declare-fun res!703061 () Bool)

(assert (=> start!92826 (=> (not res!703061) (not e!598735))))

(assert (=> start!92826 (= res!703061 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32500 a!3488)) (bvslt (size!32500 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92826 e!598735))

(assert (=> start!92826 true))

(declare-fun array_inv!24585 (array!66467) Bool)

(assert (=> start!92826 (array_inv!24585 a!3488)))

(declare-fun b!1053971 () Bool)

(assert (=> b!1053971 (= e!598737 e!598736)))

(declare-fun res!703064 () Bool)

(assert (=> b!1053971 (=> res!703064 e!598736)))

(assert (=> b!1053971 (= res!703064 (bvsle lt!465264 i!1381))))

(declare-fun b!1053972 () Bool)

(declare-fun e!598734 () Bool)

(assert (=> b!1053972 (= e!598735 e!598734)))

(declare-fun res!703065 () Bool)

(assert (=> b!1053972 (=> (not res!703065) (not e!598734))))

(declare-fun lt!465265 () array!66467)

(assert (=> b!1053972 (= res!703065 (arrayContainsKey!0 lt!465265 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053972 (= lt!465265 (array!66468 (store (arr!31963 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32500 a!3488)))))

(declare-fun b!1053973 () Bool)

(assert (=> b!1053973 (= e!598733 (or (bvslt lt!465264 #b00000000000000000000000000000000) (bvslt lt!465264 (size!32500 a!3488))))))

(assert (=> b!1053973 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22403)))

(declare-datatypes ((Unit!34493 0))(
  ( (Unit!34494) )
))
(declare-fun lt!465263 () Unit!34493)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66467 (_ BitVec 32) (_ BitVec 32)) Unit!34493)

(assert (=> b!1053973 (= lt!465263 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1053974 () Bool)

(assert (=> b!1053974 (= e!598734 e!598739)))

(declare-fun res!703057 () Bool)

(assert (=> b!1053974 (=> (not res!703057) (not e!598739))))

(assert (=> b!1053974 (= res!703057 (not (= lt!465264 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66467 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053974 (= lt!465264 (arrayScanForKey!0 lt!465265 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92826 res!703061) b!1053969))

(assert (= (and b!1053969 res!703058) b!1053970))

(assert (= (and b!1053970 res!703060) b!1053967))

(assert (= (and b!1053967 res!703059) b!1053972))

(assert (= (and b!1053972 res!703065) b!1053974))

(assert (= (and b!1053974 res!703057) b!1053968))

(assert (= (and b!1053968 res!703062) b!1053971))

(assert (= (and b!1053971 (not res!703064)) b!1053966))

(assert (= (and b!1053968 (not res!703063)) b!1053973))

(declare-fun m!974253 () Bool)

(assert (=> b!1053968 m!974253))

(declare-fun m!974255 () Bool)

(assert (=> b!1053968 m!974255))

(declare-fun m!974257 () Bool)

(assert (=> b!1053967 m!974257))

(declare-fun m!974259 () Bool)

(assert (=> b!1053966 m!974259))

(declare-fun m!974261 () Bool)

(assert (=> b!1053974 m!974261))

(declare-fun m!974263 () Bool)

(assert (=> b!1053973 m!974263))

(declare-fun m!974265 () Bool)

(assert (=> b!1053973 m!974265))

(declare-fun m!974267 () Bool)

(assert (=> b!1053972 m!974267))

(assert (=> b!1053972 m!974253))

(declare-fun m!974269 () Bool)

(assert (=> start!92826 m!974269))

(declare-fun m!974271 () Bool)

(assert (=> b!1053970 m!974271))

(declare-fun m!974273 () Bool)

(assert (=> b!1053969 m!974273))

(push 1)

(assert (not b!1053970))

(assert (not b!1053972))

(assert (not start!92826))

(assert (not b!1053966))

(assert (not b!1053973))

(assert (not b!1053974))

(assert (not b!1053969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1054068 () Bool)

(declare-fun e!598815 () Bool)

(declare-fun e!598813 () Bool)

(assert (=> b!1054068 (= e!598815 e!598813)))

(declare-fun res!703143 () Bool)

(assert (=> b!1054068 (=> (not res!703143) (not e!598813))))

(declare-fun e!598814 () Bool)

(assert (=> b!1054068 (= res!703143 (not e!598814))))

(declare-fun res!703144 () Bool)

(assert (=> b!1054068 (=> (not res!703144) (not e!598814))))

(assert (=> b!1054068 (= res!703144 (validKeyInArray!0 (select (arr!31963 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054069 () Bool)

(declare-fun contains!6190 (List!22406 (_ BitVec 64)) Bool)

(assert (=> b!1054069 (= e!598814 (contains!6190 Nil!22403 (select (arr!31963 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054070 () Bool)

(declare-fun e!598816 () Bool)

(declare-fun call!44765 () Bool)

(assert (=> b!1054070 (= e!598816 call!44765)))

(declare-fun b!1054071 () Bool)

(assert (=> b!1054071 (= e!598813 e!598816)))

(declare-fun c!106925 () Bool)

(assert (=> b!1054071 (= c!106925 (validKeyInArray!0 (select (arr!31963 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44762 () Bool)

(assert (=> bm!44762 (= call!44765 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106925 (Cons!22402 (select (arr!31963 a!3488) #b00000000000000000000000000000000) Nil!22403) Nil!22403)))))

(declare-fun b!1054072 () Bool)

(assert (=> b!1054072 (= e!598816 call!44765)))

(declare-fun d!127911 () Bool)

(declare-fun res!703145 () Bool)

(assert (=> d!127911 (=> res!703145 e!598815)))

(assert (=> d!127911 (= res!703145 (bvsge #b00000000000000000000000000000000 (size!32500 a!3488)))))

(assert (=> d!127911 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22403) e!598815)))

(assert (= (and d!127911 (not res!703145)) b!1054068))

(assert (= (and b!1054068 res!703144) b!1054069))

(assert (= (and b!1054068 res!703143) b!1054071))

(assert (= (and b!1054071 c!106925) b!1054070))

(assert (= (and b!1054071 (not c!106925)) b!1054072))

(assert (= (or b!1054070 b!1054072) bm!44762))

(declare-fun m!974337 () Bool)

(assert (=> b!1054068 m!974337))

(assert (=> b!1054068 m!974337))

(declare-fun m!974339 () Bool)

(assert (=> b!1054068 m!974339))

(assert (=> b!1054069 m!974337))

(assert (=> b!1054069 m!974337))

(declare-fun m!974341 () Bool)

(assert (=> b!1054069 m!974341))

(assert (=> b!1054071 m!974337))

(assert (=> b!1054071 m!974337))

(assert (=> b!1054071 m!974339))

(assert (=> bm!44762 m!974337))

(declare-fun m!974343 () Bool)

(assert (=> bm!44762 m!974343))

(assert (=> b!1053969 d!127911))

(declare-fun d!127923 () Bool)

(declare-fun lt!465292 () (_ BitVec 32))

(assert (=> d!127923 (and (or (bvslt lt!465292 #b00000000000000000000000000000000) (bvsge lt!465292 (size!32500 lt!465265)) (and (bvsge lt!465292 #b00000000000000000000000000000000) (bvslt lt!465292 (size!32500 lt!465265)))) (bvsge lt!465292 #b00000000000000000000000000000000) (bvslt lt!465292 (size!32500 lt!465265)) (= (select (arr!31963 lt!465265) lt!465292) k!2747))))

(declare-fun e!598829 () (_ BitVec 32))

(assert (=> d!127923 (= lt!465292 e!598829)))

(declare-fun c!106929 () Bool)

(assert (=> d!127923 (= c!106929 (= (select (arr!31963 lt!465265) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127923 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32500 lt!465265)) (bvslt (size!32500 lt!465265) #b01111111111111111111111111111111))))

(assert (=> d!127923 (= (arrayScanForKey!0 lt!465265 k!2747 #b00000000000000000000000000000000) lt!465292)))

(declare-fun b!1054088 () Bool)

(assert (=> b!1054088 (= e!598829 #b00000000000000000000000000000000)))

(declare-fun b!1054089 () Bool)

(assert (=> b!1054089 (= e!598829 (arrayScanForKey!0 lt!465265 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127923 c!106929) b!1054088))

(assert (= (and d!127923 (not c!106929)) b!1054089))

(declare-fun m!974359 () Bool)

(assert (=> d!127923 m!974359))

(declare-fun m!974361 () Bool)

(assert (=> d!127923 m!974361))

(declare-fun m!974363 () Bool)

(assert (=> b!1054089 m!974363))

(assert (=> b!1053974 d!127923))

(declare-fun b!1054090 () Bool)

(declare-fun e!598832 () Bool)

(declare-fun e!598830 () Bool)

(assert (=> b!1054090 (= e!598832 e!598830)))

(declare-fun res!703155 () Bool)

(assert (=> b!1054090 (=> (not res!703155) (not e!598830))))

(declare-fun e!598831 () Bool)

(assert (=> b!1054090 (= res!703155 (not e!598831))))

(declare-fun res!703156 () Bool)

(assert (=> b!1054090 (=> (not res!703156) (not e!598831))))

(assert (=> b!1054090 (= res!703156 (validKeyInArray!0 (select (arr!31963 a!3488) i!1381)))))

(declare-fun b!1054091 () Bool)

(assert (=> b!1054091 (= e!598831 (contains!6190 Nil!22403 (select (arr!31963 a!3488) i!1381)))))

(declare-fun b!1054092 () Bool)

(declare-fun e!598833 () Bool)

(declare-fun call!44767 () Bool)

(assert (=> b!1054092 (= e!598833 call!44767)))

(declare-fun b!1054093 () Bool)

(assert (=> b!1054093 (= e!598830 e!598833)))

(declare-fun c!106930 () Bool)

(assert (=> b!1054093 (= c!106930 (validKeyInArray!0 (select (arr!31963 a!3488) i!1381)))))

(declare-fun bm!44764 () Bool)

(assert (=> bm!44764 (= call!44767 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106930 (Cons!22402 (select (arr!31963 a!3488) i!1381) Nil!22403) Nil!22403)))))

(declare-fun b!1054094 () Bool)

(assert (=> b!1054094 (= e!598833 call!44767)))

(declare-fun d!127931 () Bool)

(declare-fun res!703157 () Bool)

(assert (=> d!127931 (=> res!703157 e!598832)))

(assert (=> d!127931 (= res!703157 (bvsge i!1381 (size!32500 a!3488)))))

(assert (=> d!127931 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22403) e!598832)))

(assert (= (and d!127931 (not res!703157)) b!1054090))

(assert (= (and b!1054090 res!703156) b!1054091))

(assert (= (and b!1054090 res!703155) b!1054093))

(assert (= (and b!1054093 c!106930) b!1054092))

(assert (= (and b!1054093 (not c!106930)) b!1054094))

(assert (= (or b!1054092 b!1054094) bm!44764))

(assert (=> b!1054090 m!974257))

(assert (=> b!1054090 m!974257))

(declare-fun m!974365 () Bool)

(assert (=> b!1054090 m!974365))

(assert (=> b!1054091 m!974257))

(assert (=> b!1054091 m!974257))

(declare-fun m!974367 () Bool)

(assert (=> b!1054091 m!974367))

(assert (=> b!1054093 m!974257))

(assert (=> b!1054093 m!974257))

(assert (=> b!1054093 m!974365))

(assert (=> bm!44764 m!974257))

(declare-fun m!974369 () Bool)

(assert (=> bm!44764 m!974369))

(assert (=> b!1053973 d!127931))

(declare-fun d!127933 () Bool)

(assert (=> d!127933 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22403)))

(declare-fun lt!465298 () Unit!34493)

(declare-fun choose!39 (array!66467 (_ BitVec 32) (_ BitVec 32)) Unit!34493)

(assert (=> d!127933 (= lt!465298 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!127933 (bvslt (size!32500 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!127933 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465298)))

(declare-fun bs!30883 () Bool)

(assert (= bs!30883 d!127933))

(assert (=> bs!30883 m!974263))

(declare-fun m!974379 () Bool)

(assert (=> bs!30883 m!974379))

(assert (=> b!1053973 d!127933))

(declare-fun d!127939 () Bool)

(declare-fun res!703164 () Bool)

(declare-fun e!598843 () Bool)

(assert (=> d!127939 (=> res!703164 e!598843)))

(assert (=> d!127939 (= res!703164 (= (select (arr!31963 lt!465265) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127939 (= (arrayContainsKey!0 lt!465265 k!2747 #b00000000000000000000000000000000) e!598843)))

(declare-fun b!1054107 () Bool)

(declare-fun e!598844 () Bool)

(assert (=> b!1054107 (= e!598843 e!598844)))

(declare-fun res!703165 () Bool)

(assert (=> b!1054107 (=> (not res!703165) (not e!598844))))

(assert (=> b!1054107 (= res!703165 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32500 lt!465265)))))

(declare-fun b!1054108 () Bool)

(assert (=> b!1054108 (= e!598844 (arrayContainsKey!0 lt!465265 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127939 (not res!703164)) b!1054107))

(assert (= (and b!1054107 res!703165) b!1054108))

(assert (=> d!127939 m!974361))

(declare-fun m!974381 () Bool)

(assert (=> b!1054108 m!974381))

(assert (=> b!1053972 d!127939))

(declare-fun d!127943 () Bool)

(declare-fun res!703166 () Bool)

(declare-fun e!598845 () Bool)

(assert (=> d!127943 (=> res!703166 e!598845)))

(assert (=> d!127943 (= res!703166 (= (select (arr!31963 a!3488) lt!465264) k!2747))))

(assert (=> d!127943 (= (arrayContainsKey!0 a!3488 k!2747 lt!465264) e!598845)))

(declare-fun b!1054109 () Bool)

(declare-fun e!598846 () Bool)

(assert (=> b!1054109 (= e!598845 e!598846)))

(declare-fun res!703167 () Bool)

(assert (=> b!1054109 (=> (not res!703167) (not e!598846))))

(assert (=> b!1054109 (= res!703167 (bvslt (bvadd lt!465264 #b00000000000000000000000000000001) (size!32500 a!3488)))))

(declare-fun b!1054110 () Bool)

(assert (=> b!1054110 (= e!598846 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465264 #b00000000000000000000000000000001)))))

(assert (= (and d!127943 (not res!703166)) b!1054109))

(assert (= (and b!1054109 res!703167) b!1054110))

(declare-fun m!974383 () Bool)

(assert (=> d!127943 m!974383))

(declare-fun m!974385 () Bool)

(assert (=> b!1054110 m!974385))

(assert (=> b!1053966 d!127943))

(declare-fun d!127945 () Bool)

(assert (=> d!127945 (= (array_inv!24585 a!3488) (bvsge (size!32500 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92826 d!127945))

(declare-fun d!127947 () Bool)

(assert (=> d!127947 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053970 d!127947))

(push 1)

(assert (not b!1054110))

(assert (not b!1054091))

(assert (not b!1054090))

(assert (not b!1054108))

(assert (not b!1054093))

(assert (not bm!44762))

(assert (not bm!44764))

(assert (not b!1054068))

(assert (not b!1054071))

(assert (not d!127933))

(assert (not b!1054069))

(assert (not b!1054089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

