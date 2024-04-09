; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117396 () Bool)

(assert start!117396)

(declare-fun res!922232 () Bool)

(declare-fun e!781724 () Bool)

(assert (=> start!117396 (=> (not res!922232) (not e!781724))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93893 0))(
  ( (array!93894 (arr!45339 (Array (_ BitVec 32) (_ BitVec 64))) (size!45890 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93893)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117396 (= res!922232 (and (bvslt (size!45890 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45890 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117396 e!781724))

(declare-fun array_inv!34284 (array!93893) Bool)

(assert (=> start!117396 (array_inv!34284 a!4010)))

(assert (=> start!117396 true))

(declare-fun b!1379733 () Bool)

(declare-fun res!922233 () Bool)

(assert (=> b!1379733 (=> (not res!922233) (not e!781724))))

(declare-fun isPivot!0 (array!93893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379733 (= res!922233 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(declare-fun b!1379734 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93893 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379734 (= e!781724 (not (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184))))))

(assert (=> b!1379734 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-datatypes ((Unit!45867 0))(
  ( (Unit!45868) )
))
(declare-fun lt!607702 () Unit!45867)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 (array!93893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45867)

(assert (=> b!1379734 (= lt!607702 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388))))

(assert (= (and start!117396 res!922232) b!1379733))

(assert (= (and b!1379733 res!922233) b!1379734))

(declare-fun m!1265017 () Bool)

(assert (=> start!117396 m!1265017))

(declare-fun m!1265019 () Bool)

(assert (=> b!1379733 m!1265019))

(declare-fun m!1265021 () Bool)

(assert (=> b!1379734 m!1265021))

(declare-fun m!1265023 () Bool)

(assert (=> b!1379734 m!1265023))

(declare-fun m!1265025 () Bool)

(assert (=> b!1379734 m!1265025))

(declare-fun m!1265027 () Bool)

(assert (=> b!1379734 m!1265027))

(declare-fun m!1265029 () Bool)

(assert (=> b!1379734 m!1265029))

(push 1)

(assert (not b!1379733))

(assert (not b!1379734))

(assert (not start!117396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148585 () Bool)

(assert (=> d!148585 (= (isPivot!0 a!4010 from!3388 to!184 from!3388) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 from!3388) (arrayCountValidKeys!0 a!4010 from!3388 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39784 () Bool)

(assert (= bs!39784 d!148585))

(declare-fun m!1265031 () Bool)

(assert (=> bs!39784 m!1265031))

(assert (=> bs!39784 m!1265021))

(assert (=> bs!39784 m!1265021))

(assert (=> b!1379733 d!148585))

(declare-fun d!148589 () Bool)

(assert (=> d!148589 (= (isPivot!0 a!4010 from!3388 to!184 pivot!64) (= (bvadd (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) (arrayCountValidKeys!0 a!4010 pivot!64 to!184)) (arrayCountValidKeys!0 a!4010 from!3388 to!184)))))

(declare-fun bs!39785 () Bool)

(assert (= bs!39785 d!148589))

(assert (=> bs!39785 m!1265023))

(assert (=> bs!39785 m!1265025))

(assert (=> bs!39785 m!1265021))

(assert (=> b!1379734 d!148589))

(declare-fun d!148591 () Bool)

(assert (=> d!148591 (isPivot!0 a!4010 from!3388 to!184 pivot!64)))

(declare-fun lt!607710 () Unit!45867)

(declare-fun choose!124 (array!93893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45867)

(assert (=> d!148591 (= lt!607710 (choose!124 a!4010 from!3388 to!184 pivot!64 from!3388))))

(declare-fun e!781732 () Bool)

(assert (=> d!148591 e!781732))

(declare-fun res!922241 () Bool)

(assert (=> d!148591 (=> (not res!922241) (not e!781732))))

(assert (=> d!148591 (= res!922241 (and (bvslt (size!45890 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45890 a!4010)) (bvsge pivot!64 from!3388) (bvslt pivot!64 to!184) (bvsle from!3388 pivot!64) (bvsge from!3388 from!3388)))))

(assert (=> d!148591 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWholeFromTo!0 a!4010 from!3388 to!184 pivot!64 from!3388) lt!607710)))

(declare-fun b!1379742 () Bool)

(assert (=> b!1379742 (= e!781732 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and d!148591 res!922241) b!1379742))

(assert (=> d!148591 m!1265029))

(declare-fun m!1265035 () Bool)

(assert (=> d!148591 m!1265035))

(assert (=> b!1379742 m!1265019))

(assert (=> b!1379734 d!148591))

(declare-fun bm!66098 () Bool)

(declare-fun call!66101 () (_ BitVec 32))

(assert (=> bm!66098 (= call!66101 (arrayCountValidKeys!0 a!4010 (bvadd pivot!64 #b00000000000000000000000000000001) to!184))))

(declare-fun d!148595 () Bool)

(declare-fun lt!607716 () (_ BitVec 32))

(assert (=> d!148595 (and (bvsge lt!607716 #b00000000000000000000000000000000) (bvsle lt!607716 (bvsub (size!45890 a!4010) pivot!64)))))

(declare-fun e!781742 () (_ BitVec 32))

(assert (=> d!148595 (= lt!607716 e!781742)))

(declare-fun c!128202 () Bool)

(assert (=> d!148595 (= c!128202 (bvsge pivot!64 to!184))))

(assert (=> d!148595 (and (bvsle pivot!64 to!184) (bvsge pivot!64 #b00000000000000000000000000000000) (bvsle to!184 (size!45890 a!4010)))))

(assert (=> d!148595 (= (arrayCountValidKeys!0 a!4010 pivot!64 to!184) lt!607716)))

(declare-fun b!1379760 () Bool)

(declare-fun e!781743 () (_ BitVec 32))

(assert (=> b!1379760 (= e!781743 (bvadd #b00000000000000000000000000000001 call!66101))))

(declare-fun b!1379761 () Bool)

(assert (=> b!1379761 (= e!781742 e!781743)))

(declare-fun c!128201 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379761 (= c!128201 (validKeyInArray!0 (select (arr!45339 a!4010) pivot!64)))))

(declare-fun b!1379762 () Bool)

(assert (=> b!1379762 (= e!781742 #b00000000000000000000000000000000)))

(declare-fun b!1379763 () Bool)

(assert (=> b!1379763 (= e!781743 call!66101)))

(assert (= (and d!148595 c!128202) b!1379762))

(assert (= (and d!148595 (not c!128202)) b!1379761))

(assert (= (and b!1379761 c!128201) b!1379760))

(assert (= (and b!1379761 (not c!128201)) b!1379763))

(assert (= (or b!1379760 b!1379763) bm!66098))

(declare-fun m!1265039 () Bool)

(assert (=> bm!66098 m!1265039))

(declare-fun m!1265041 () Bool)

(assert (=> b!1379761 m!1265041))

(assert (=> b!1379761 m!1265041))

(declare-fun m!1265043 () Bool)

(assert (=> b!1379761 m!1265043))

(assert (=> b!1379734 d!148595))

(declare-fun call!66102 () (_ BitVec 32))

(declare-fun bm!66099 () Bool)

(assert (=> bm!66099 (= call!66102 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) to!184))))

(declare-fun d!148599 () Bool)

(declare-fun lt!607717 () (_ BitVec 32))

(assert (=> d!148599 (and (bvsge lt!607717 #b00000000000000000000000000000000) (bvsle lt!607717 (bvsub (size!45890 a!4010) from!3388)))))

(declare-fun e!781744 () (_ BitVec 32))

(assert (=> d!148599 (= lt!607717 e!781744)))

(declare-fun c!128204 () Bool)

(assert (=> d!148599 (= c!128204 (bvsge from!3388 to!184))))

(assert (=> d!148599 (and (bvsle from!3388 to!184) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle to!184 (size!45890 a!4010)))))

(assert (=> d!148599 (= (arrayCountValidKeys!0 a!4010 from!3388 to!184) lt!607717)))

(declare-fun b!1379764 () Bool)

(declare-fun e!781745 () (_ BitVec 32))

(assert (=> b!1379764 (= e!781745 (bvadd #b00000000000000000000000000000001 call!66102))))

(declare-fun b!1379765 () Bool)

(assert (=> b!1379765 (= e!781744 e!781745)))

(declare-fun c!128203 () Bool)

(assert (=> b!1379765 (= c!128203 (validKeyInArray!0 (select (arr!45339 a!4010) from!3388)))))

(declare-fun b!1379766 () Bool)

(assert (=> b!1379766 (= e!781744 #b00000000000000000000000000000000)))

(declare-fun b!1379767 () Bool)

(assert (=> b!1379767 (= e!781745 call!66102)))

(assert (= (and d!148599 c!128204) b!1379766))

(assert (= (and d!148599 (not c!128204)) b!1379765))

(assert (= (and b!1379765 c!128203) b!1379764))

(assert (= (and b!1379765 (not c!128203)) b!1379767))

(assert (= (or b!1379764 b!1379767) bm!66099))

(declare-fun m!1265045 () Bool)

(assert (=> bm!66099 m!1265045))

(declare-fun m!1265047 () Bool)

(assert (=> b!1379765 m!1265047))

(assert (=> b!1379765 m!1265047))

(declare-fun m!1265049 () Bool)

(assert (=> b!1379765 m!1265049))

(assert (=> b!1379734 d!148599))

(declare-fun call!66103 () (_ BitVec 32))

(declare-fun bm!66100 () Bool)

(assert (=> bm!66100 (= call!66103 (arrayCountValidKeys!0 a!4010 (bvadd from!3388 #b00000000000000000000000000000001) pivot!64))))

(declare-fun d!148601 () Bool)

(declare-fun lt!607718 () (_ BitVec 32))

(assert (=> d!148601 (and (bvsge lt!607718 #b00000000000000000000000000000000) (bvsle lt!607718 (bvsub (size!45890 a!4010) from!3388)))))

(declare-fun e!781746 () (_ BitVec 32))

(assert (=> d!148601 (= lt!607718 e!781746)))

(declare-fun c!128206 () Bool)

(assert (=> d!148601 (= c!128206 (bvsge from!3388 pivot!64))))

(assert (=> d!148601 (and (bvsle from!3388 pivot!64) (bvsge from!3388 #b00000000000000000000000000000000) (bvsle pivot!64 (size!45890 a!4010)))))

(assert (=> d!148601 (= (arrayCountValidKeys!0 a!4010 from!3388 pivot!64) lt!607718)))

(declare-fun b!1379768 () Bool)

(declare-fun e!781747 () (_ BitVec 32))

(assert (=> b!1379768 (= e!781747 (bvadd #b00000000000000000000000000000001 call!66103))))

(declare-fun b!1379769 () Bool)

(assert (=> b!1379769 (= e!781746 e!781747)))

(declare-fun c!128205 () Bool)

(assert (=> b!1379769 (= c!128205 (validKeyInArray!0 (select (arr!45339 a!4010) from!3388)))))

(declare-fun b!1379770 () Bool)

(assert (=> b!1379770 (= e!781746 #b00000000000000000000000000000000)))

(declare-fun b!1379771 () Bool)

(assert (=> b!1379771 (= e!781747 call!66103)))

(assert (= (and d!148601 c!128206) b!1379770))

(assert (= (and d!148601 (not c!128206)) b!1379769))

(assert (= (and b!1379769 c!128205) b!1379768))

(assert (= (and b!1379769 (not c!128205)) b!1379771))

(assert (= (or b!1379768 b!1379771) bm!66100))

(declare-fun m!1265051 () Bool)

(assert (=> bm!66100 m!1265051))

(assert (=> b!1379769 m!1265047))

(assert (=> b!1379769 m!1265047))

(assert (=> b!1379769 m!1265049))

(assert (=> b!1379734 d!148601))

(declare-fun d!148603 () Bool)

(assert (=> d!148603 (= (array_inv!34284 a!4010) (bvsge (size!45890 a!4010) #b00000000000000000000000000000000))))

(assert (=> start!117396 d!148603))

(push 1)

