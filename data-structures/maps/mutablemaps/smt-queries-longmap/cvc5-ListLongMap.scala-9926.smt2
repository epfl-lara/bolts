; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117368 () Bool)

(assert start!117368)

(declare-fun res!922209 () Bool)

(declare-fun e!781669 () Bool)

(assert (=> start!117368 (=> (not res!922209) (not e!781669))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93880 0))(
  ( (array!93881 (arr!45334 (Array (_ BitVec 32) (_ BitVec 64))) (size!45885 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93880)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117368 (= res!922209 (and (bvslt (size!45885 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45885 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117368 e!781669))

(declare-fun array_inv!34279 (array!93880) Bool)

(assert (=> start!117368 (array_inv!34279 a!4010)))

(assert (=> start!117368 true))

(declare-fun b!1379662 () Bool)

(declare-fun isPivot!0 (array!93880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379662 (= e!781669 (not (isPivot!0 a!4010 from!3388 to!184 from!3388)))))

(assert (= (and start!117368 res!922209) b!1379662))

(declare-fun m!1264941 () Bool)

(assert (=> start!117368 m!1264941))

(declare-fun m!1264943 () Bool)

(assert (=> b!1379662 m!1264943))

(push 1)

(assert (not b!1379662))

(assert (not start!117368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148557 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93880 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!148557 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39777 () Bool)

(assert (= bs!39777 d!148557))

(declare-fun m!1264957 () Bool)

(assert (=> bs!39777 m!1264957))

(declare-fun m!1264959 () Bool)

(assert (=> bs!39777 m!1264959))

(assert (=> bs!39777 m!1264959))

(assert (=> b!1379662 d!148557))

(declare-fun d!148559 () Bool)

(assert (=> d!148559 (= (array_inv!34279 a!4010) (bvsge (size!45885 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117368 d!148559))

(push 1)

(assert (not d!148557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1379693 () Bool)

(declare-fun e!781695 () (_ BitVec 32))

(assert (=> b!1379693 (= e!781695 #b00000000000000000000000000000000)))

(declare-fun b!1379694 () Bool)

(declare-fun e!781696 () (_ BitVec 32))

(assert (=> b!1379694 (= e!781695 e!781696)))

(declare-fun c!128182 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379694 (= c!128182 (validKeyInArray!0 (select (arr!45334 a!4010) from!3388)))))

(declare-fun b!1379695 () Bool)

(declare-fun call!66091 () (_ BitVec 32))

(assert (=> b!1379695 (= e!781696 (bvadd #b00000000000000000000000000000001 call!66091))))

(declare-fun bm!66088 () Bool)

(assert (=> bm!66088 (= call!66091 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) from!3388))))

(declare-fun b!1379696 () Bool)

(assert (=> b!1379696 (= e!781696 call!66091)))

(declare-fun d!148567 () Bool)

(declare-fun lt!607688 () (_ BitVec 32))

(assert (=> d!148567 (and (bvsge lt!607688 #b00000000000000000000000000000000) (bvsle lt!607688 (bvsub (size!45885 a!4010) from!3388)))))

(assert (=> d!148567 (= lt!607688 e!781695)))

(declare-fun c!128181 () Bool)

(assert (=> d!148567 (= c!128181 (bvsge from!3388 from!3388))))

(assert (=> d!148567 (and (bvsle from!3388 from!3388) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle from!3388 (size!45885 a!4010)))))

(assert (=> d!148567 (= (arrayCountValidKeys!0 a!4010 from!3388 from!3388) lt!607688)))

(assert (= (and d!148567 c!128181) b!1379693))

(assert (= (and d!148567 (not c!128181)) b!1379694))

(assert (= (and b!1379694 c!128182) b!1379695))

(assert (= (and b!1379694 (not c!128182)) b!1379696))

(assert (= (or b!1379695 b!1379696) bm!66088))

(declare-fun m!1264973 () Bool)

(assert (=> b!1379694 m!1264973))

(assert (=> b!1379694 m!1264973))

(declare-fun m!1264975 () Bool)

(assert (=> b!1379694 m!1264975))

(declare-fun m!1264977 () Bool)

(assert (=> bm!66088 m!1264977))

(assert (=> d!148557 d!148567))

(declare-fun b!1379705 () Bool)

(declare-fun e!781701 () (_ BitVec 32))

(assert (=> b!1379705 (= e!781701 #b00000000000000000000000000000000)))

(declare-fun b!1379706 () Bool)

(declare-fun e!781702 () (_ BitVec 32))

(assert (=> b!1379706 (= e!781701 e!781702)))

(declare-fun c!128188 () Bool)

(assert (=> b!1379706 (= c!128188 (validKeyInArray!0 (select (arr!45334 a!4010) from!3388)))))

(declare-fun b!1379707 () Bool)

(declare-fun call!66094 () (_ BitVec 32))

(assert (=> b!1379707 (= e!781702 (bvadd #b00000000000000000000000000000001 call!66094))))

(declare-fun bm!66091 () Bool)

(assert (=> bm!66091 (= call!66094 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun b!1379708 () Bool)

(assert (=> b!1379708 (= e!781702 call!66094)))

(declare-fun d!148573 () Bool)

(declare-fun lt!607691 () (_ BitVec 32))

(assert (=> d!148573 (and (bvsge lt!607691 #b00000000000000000000000000000000) (bvsle lt!607691 (bvsub (size!45885 a!4010) from!3388)))))

(assert (=> d!148573 (= lt!607691 e!781701)))

(declare-fun c!128187 () Bool)

(assert (=> d!148573 (= c!128187 (bvsge from!3388 to!184))))

(assert (=> d!148573 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45885 a!4010)))))

(assert (=> d!148573 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607691)))

