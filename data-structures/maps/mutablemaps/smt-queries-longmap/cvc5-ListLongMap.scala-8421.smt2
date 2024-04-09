; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102554 () Bool)

(assert start!102554)

(declare-fun b!1232745 () Bool)

(declare-fun res!821156 () Bool)

(declare-fun e!699292 () Bool)

(assert (=> b!1232745 (=> (not res!821156) (not e!699292))))

(declare-datatypes ((array!79475 0))(
  ( (array!79476 (arr!38346 (Array (_ BitVec 32) (_ BitVec 64))) (size!38883 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79475)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232745 (= res!821156 (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)))))

(declare-fun b!1232746 () Bool)

(declare-fun e!699291 () Bool)

(assert (=> b!1232746 (= e!699292 (not e!699291))))

(declare-fun res!821162 () Bool)

(assert (=> b!1232746 (=> res!821162 e!699291)))

(assert (=> b!1232746 (= res!821162 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27297 0))(
  ( (Nil!27294) (Cons!27293 (h!28502 (_ BitVec 64)) (t!40767 List!27297)) )
))
(declare-fun lt!559512 () List!27297)

(assert (=> b!1232746 (= lt!559512 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294))))

(declare-fun e!699290 () Bool)

(assert (=> b!1232746 e!699290))

(declare-fun res!821160 () Bool)

(assert (=> b!1232746 (=> (not res!821160) (not e!699290))))

(declare-fun arrayNoDuplicates!0 (array!79475 (_ BitVec 32) List!27297) Bool)

(assert (=> b!1232746 (= res!821160 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27294))))

(declare-datatypes ((Unit!40772 0))(
  ( (Unit!40773) )
))
(declare-fun lt!559513 () Unit!40772)

(declare-fun acc!823 () List!27297)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79475 List!27297 List!27297 (_ BitVec 32)) Unit!40772)

(assert (=> b!1232746 (= lt!559513 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27294 from!3184))))

(assert (=> b!1232746 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823))))

(declare-fun b!1232747 () Bool)

(declare-fun res!821165 () Bool)

(assert (=> b!1232747 (=> (not res!821165) (not e!699292))))

(assert (=> b!1232747 (= res!821165 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232748 () Bool)

(assert (=> b!1232748 (= e!699290 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)))))

(declare-fun b!1232749 () Bool)

(declare-fun res!821167 () Bool)

(assert (=> b!1232749 (=> res!821167 e!699291)))

(declare-fun noDuplicate!1819 (List!27297) Bool)

(assert (=> b!1232749 (= res!821167 (not (noDuplicate!1819 lt!559512)))))

(declare-fun b!1232750 () Bool)

(declare-fun res!821163 () Bool)

(assert (=> b!1232750 (=> (not res!821163) (not e!699292))))

(declare-fun contains!7212 (List!27297 (_ BitVec 64)) Bool)

(assert (=> b!1232750 (= res!821163 (not (contains!7212 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232751 () Bool)

(declare-fun res!821158 () Bool)

(assert (=> b!1232751 (=> (not res!821158) (not e!699292))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1232751 (= res!821158 (validKeyInArray!0 k!2913))))

(declare-fun b!1232752 () Bool)

(declare-fun e!699288 () Bool)

(assert (=> b!1232752 (= e!699291 e!699288)))

(declare-fun res!821157 () Bool)

(assert (=> b!1232752 (=> (not res!821157) (not e!699288))))

(assert (=> b!1232752 (= res!821157 (not (contains!7212 lt!559512 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232753 () Bool)

(declare-fun res!821166 () Bool)

(assert (=> b!1232753 (=> (not res!821166) (not e!699292))))

(declare-fun arrayContainsKey!0 (array!79475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232753 (= res!821166 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232754 () Bool)

(declare-fun res!821161 () Bool)

(assert (=> b!1232754 (=> (not res!821161) (not e!699292))))

(assert (=> b!1232754 (= res!821161 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38883 a!3806)) (bvslt from!3184 (size!38883 a!3806))))))

(declare-fun b!1232755 () Bool)

(assert (=> b!1232755 (= e!699288 (not (contains!7212 lt!559512 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232756 () Bool)

(declare-fun res!821168 () Bool)

(assert (=> b!1232756 (=> (not res!821168) (not e!699292))))

(assert (=> b!1232756 (= res!821168 (not (contains!7212 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!821164 () Bool)

(assert (=> start!102554 (=> (not res!821164) (not e!699292))))

(assert (=> start!102554 (= res!821164 (bvslt (size!38883 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102554 e!699292))

(declare-fun array_inv!29122 (array!79475) Bool)

(assert (=> start!102554 (array_inv!29122 a!3806)))

(assert (=> start!102554 true))

(declare-fun b!1232757 () Bool)

(declare-fun res!821159 () Bool)

(assert (=> b!1232757 (=> (not res!821159) (not e!699292))))

(assert (=> b!1232757 (= res!821159 (noDuplicate!1819 acc!823))))

(assert (= (and start!102554 res!821164) b!1232751))

(assert (= (and b!1232751 res!821158) b!1232754))

(assert (= (and b!1232754 res!821161) b!1232757))

(assert (= (and b!1232757 res!821159) b!1232750))

(assert (= (and b!1232750 res!821163) b!1232756))

(assert (= (and b!1232756 res!821168) b!1232753))

(assert (= (and b!1232753 res!821166) b!1232747))

(assert (= (and b!1232747 res!821165) b!1232745))

(assert (= (and b!1232745 res!821156) b!1232746))

(assert (= (and b!1232746 res!821160) b!1232748))

(assert (= (and b!1232746 (not res!821162)) b!1232749))

(assert (= (and b!1232749 (not res!821167)) b!1232752))

(assert (= (and b!1232752 res!821157) b!1232755))

(declare-fun m!1136831 () Bool)

(assert (=> b!1232755 m!1136831))

(declare-fun m!1136833 () Bool)

(assert (=> b!1232745 m!1136833))

(assert (=> b!1232745 m!1136833))

(declare-fun m!1136835 () Bool)

(assert (=> b!1232745 m!1136835))

(declare-fun m!1136837 () Bool)

(assert (=> b!1232752 m!1136837))

(assert (=> b!1232748 m!1136833))

(declare-fun m!1136839 () Bool)

(assert (=> b!1232748 m!1136839))

(declare-fun m!1136841 () Bool)

(assert (=> b!1232756 m!1136841))

(declare-fun m!1136843 () Bool)

(assert (=> b!1232753 m!1136843))

(declare-fun m!1136845 () Bool)

(assert (=> b!1232750 m!1136845))

(declare-fun m!1136847 () Bool)

(assert (=> b!1232747 m!1136847))

(declare-fun m!1136849 () Bool)

(assert (=> b!1232749 m!1136849))

(assert (=> b!1232746 m!1136833))

(declare-fun m!1136851 () Bool)

(assert (=> b!1232746 m!1136851))

(declare-fun m!1136853 () Bool)

(assert (=> b!1232746 m!1136853))

(declare-fun m!1136855 () Bool)

(assert (=> b!1232746 m!1136855))

(declare-fun m!1136857 () Bool)

(assert (=> start!102554 m!1136857))

(declare-fun m!1136859 () Bool)

(assert (=> b!1232751 m!1136859))

(declare-fun m!1136861 () Bool)

(assert (=> b!1232757 m!1136861))

(push 1)

(assert (not start!102554))

(assert (not b!1232745))

(assert (not b!1232746))

(assert (not b!1232753))

(assert (not b!1232757))

(assert (not b!1232751))

(assert (not b!1232750))

(assert (not b!1232748))

(assert (not b!1232747))

(assert (not b!1232752))

(assert (not b!1232755))

(assert (not b!1232749))

(assert (not b!1232756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134995 () Bool)

(declare-fun lt!559531 () Bool)

(declare-fun content!579 (List!27297) (Set (_ BitVec 64)))

(assert (=> d!134995 (= lt!559531 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!579 lt!559512)))))

(declare-fun e!699345 () Bool)

(assert (=> d!134995 (= lt!559531 e!699345)))

(declare-fun res!821264 () Bool)

(assert (=> d!134995 (=> (not res!821264) (not e!699345))))

(assert (=> d!134995 (= res!821264 (is-Cons!27293 lt!559512))))

(assert (=> d!134995 (= (contains!7212 lt!559512 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559531)))

(declare-fun b!1232856 () Bool)

(declare-fun e!699341 () Bool)

(assert (=> b!1232856 (= e!699345 e!699341)))

(declare-fun res!821265 () Bool)

(assert (=> b!1232856 (=> res!821265 e!699341)))

(assert (=> b!1232856 (= res!821265 (= (h!28502 lt!559512) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232857 () Bool)

(assert (=> b!1232857 (= e!699341 (contains!7212 (t!40767 lt!559512) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134995 res!821264) b!1232856))

(assert (= (and b!1232856 (not res!821265)) b!1232857))

(declare-fun m!1136933 () Bool)

(assert (=> d!134995 m!1136933))

(declare-fun m!1136935 () Bool)

(assert (=> d!134995 m!1136935))

(declare-fun m!1136937 () Bool)

(assert (=> b!1232857 m!1136937))

(assert (=> b!1232752 d!134995))

(declare-fun d!134999 () Bool)

(assert (=> d!134999 (= (array_inv!29122 a!3806) (bvsge (size!38883 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102554 d!134999))

(declare-fun d!135001 () Bool)

(declare-fun res!821280 () Bool)

(declare-fun e!699359 () Bool)

(assert (=> d!135001 (=> res!821280 e!699359)))

(assert (=> d!135001 (= res!821280 (= (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!135001 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!699359)))

(declare-fun b!1232875 () Bool)

(declare-fun e!699360 () Bool)

(assert (=> b!1232875 (= e!699359 e!699360)))

(declare-fun res!821281 () Bool)

(assert (=> b!1232875 (=> (not res!821281) (not e!699360))))

(assert (=> b!1232875 (= res!821281 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38883 a!3806)))))

(declare-fun b!1232876 () Bool)

(assert (=> b!1232876 (= e!699360 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!135001 (not res!821280)) b!1232875))

(assert (= (and b!1232875 res!821281) b!1232876))

(declare-fun m!1136957 () Bool)

(assert (=> d!135001 m!1136957))

(declare-fun m!1136959 () Bool)

(assert (=> b!1232876 m!1136959))

(assert (=> b!1232753 d!135001))

(declare-fun d!135011 () Bool)

(declare-fun lt!559537 () Bool)

(assert (=> d!135011 (= lt!559537 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!579 lt!559512)))))

(declare-fun e!699364 () Bool)

(assert (=> d!135011 (= lt!559537 e!699364)))

(declare-fun res!821284 () Bool)

(assert (=> d!135011 (=> (not res!821284) (not e!699364))))

(assert (=> d!135011 (= res!821284 (is-Cons!27293 lt!559512))))

(assert (=> d!135011 (= (contains!7212 lt!559512 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559537)))

(declare-fun b!1232879 () Bool)

(declare-fun e!699363 () Bool)

(assert (=> b!1232879 (= e!699364 e!699363)))

(declare-fun res!821285 () Bool)

(assert (=> b!1232879 (=> res!821285 e!699363)))

(assert (=> b!1232879 (= res!821285 (= (h!28502 lt!559512) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232880 () Bool)

(assert (=> b!1232880 (= e!699363 (contains!7212 (t!40767 lt!559512) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135011 res!821284) b!1232879))

(assert (= (and b!1232879 (not res!821285)) b!1232880))

(assert (=> d!135011 m!1136933))

(declare-fun m!1136963 () Bool)

(assert (=> d!135011 m!1136963))

(declare-fun m!1136965 () Bool)

(assert (=> b!1232880 m!1136965))

(assert (=> b!1232755 d!135011))

(declare-fun d!135013 () Bool)

(assert (=> d!135013 (= (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)) (and (not (= (select (arr!38346 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38346 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232745 d!135013))

(declare-fun d!135017 () Bool)

(declare-fun lt!559538 () Bool)

(assert (=> d!135017 (= lt!559538 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!579 acc!823)))))

(declare-fun e!699366 () Bool)

(assert (=> d!135017 (= lt!559538 e!699366)))

(declare-fun res!821286 () Bool)

(assert (=> d!135017 (=> (not res!821286) (not e!699366))))

(assert (=> d!135017 (= res!821286 (is-Cons!27293 acc!823))))

(assert (=> d!135017 (= (contains!7212 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559538)))

(declare-fun b!1232881 () Bool)

(declare-fun e!699365 () Bool)

(assert (=> b!1232881 (= e!699366 e!699365)))

(declare-fun res!821287 () Bool)

(assert (=> b!1232881 (=> res!821287 e!699365)))

(assert (=> b!1232881 (= res!821287 (= (h!28502 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232882 () Bool)

(assert (=> b!1232882 (= e!699365 (contains!7212 (t!40767 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135017 res!821286) b!1232881))

(assert (= (and b!1232881 (not res!821287)) b!1232882))

(declare-fun m!1136971 () Bool)

(assert (=> d!135017 m!1136971))

(declare-fun m!1136973 () Bool)

(assert (=> d!135017 m!1136973))

(declare-fun m!1136975 () Bool)

(assert (=> b!1232882 m!1136975))

(assert (=> b!1232756 d!135017))

(declare-fun d!135019 () Bool)

(declare-fun res!821300 () Bool)

(declare-fun e!699379 () Bool)

(assert (=> d!135019 (=> res!821300 e!699379)))

(assert (=> d!135019 (= res!821300 (is-Nil!27294 acc!823))))

(assert (=> d!135019 (= (noDuplicate!1819 acc!823) e!699379)))

(declare-fun b!1232895 () Bool)

(declare-fun e!699380 () Bool)

(assert (=> b!1232895 (= e!699379 e!699380)))

(declare-fun res!821301 () Bool)

(assert (=> b!1232895 (=> (not res!821301) (not e!699380))))

(assert (=> b!1232895 (= res!821301 (not (contains!7212 (t!40767 acc!823) (h!28502 acc!823))))))

(declare-fun b!1232896 () Bool)

(assert (=> b!1232896 (= e!699380 (noDuplicate!1819 (t!40767 acc!823)))))

(assert (= (and d!135019 (not res!821300)) b!1232895))

(assert (= (and b!1232895 res!821301) b!1232896))

(declare-fun m!1136981 () Bool)

(assert (=> b!1232895 m!1136981))

(declare-fun m!1136985 () Bool)

(assert (=> b!1232896 m!1136985))

(assert (=> b!1232757 d!135019))

(declare-fun b!1232923 () Bool)

(declare-fun e!699403 () Bool)

(declare-fun e!699405 () Bool)

(assert (=> b!1232923 (= e!699403 e!699405)))

(declare-fun res!821321 () Bool)

(assert (=> b!1232923 (=> (not res!821321) (not e!699405))))

(declare-fun e!699404 () Bool)

(assert (=> b!1232923 (= res!821321 (not e!699404))))

(declare-fun res!821322 () Bool)

(assert (=> b!1232923 (=> (not res!821322) (not e!699404))))

(assert (=> b!1232923 (= res!821322 (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)))))

(declare-fun c!120664 () Bool)

(declare-fun bm!60940 () Bool)

(declare-fun call!60943 () Bool)

(assert (=> bm!60940 (= call!60943 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120664 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) Nil!27294)))))

(declare-fun b!1232924 () Bool)

(assert (=> b!1232924 (= e!699404 (contains!7212 Nil!27294 (select (arr!38346 a!3806) from!3184)))))

(declare-fun b!1232925 () Bool)

(declare-fun e!699406 () Bool)

(assert (=> b!1232925 (= e!699406 call!60943)))

(declare-fun d!135025 () Bool)

(declare-fun res!821320 () Bool)

(assert (=> d!135025 (=> res!821320 e!699403)))

(assert (=> d!135025 (= res!821320 (bvsge from!3184 (size!38883 a!3806)))))

(assert (=> d!135025 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27294) e!699403)))

(declare-fun b!1232926 () Bool)

(assert (=> b!1232926 (= e!699406 call!60943)))

(declare-fun b!1232927 () Bool)

(assert (=> b!1232927 (= e!699405 e!699406)))

(assert (=> b!1232927 (= c!120664 (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)))))

(assert (= (and d!135025 (not res!821320)) b!1232923))

(assert (= (and b!1232923 res!821322) b!1232924))

(assert (= (and b!1232923 res!821321) b!1232927))

(assert (= (and b!1232927 c!120664) b!1232925))

(assert (= (and b!1232927 (not c!120664)) b!1232926))

(assert (= (or b!1232925 b!1232926) bm!60940))

(assert (=> b!1232923 m!1136833))

(assert (=> b!1232923 m!1136833))

(assert (=> b!1232923 m!1136835))

(assert (=> bm!60940 m!1136833))

(declare-fun m!1136997 () Bool)

(assert (=> bm!60940 m!1136997))

(assert (=> b!1232924 m!1136833))

(assert (=> b!1232924 m!1136833))

(declare-fun m!1136999 () Bool)

(assert (=> b!1232924 m!1136999))

(assert (=> b!1232927 m!1136833))

(assert (=> b!1232927 m!1136833))

(assert (=> b!1232927 m!1136835))

(assert (=> b!1232746 d!135025))

(declare-fun d!135037 () Bool)

(assert (=> d!135037 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27294)))

(declare-fun lt!559545 () Unit!40772)

(declare-fun choose!80 (array!79475 List!27297 List!27297 (_ BitVec 32)) Unit!40772)

(assert (=> d!135037 (= lt!559545 (choose!80 a!3806 acc!823 Nil!27294 from!3184))))

(assert (=> d!135037 (bvslt (size!38883 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!135037 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27294 from!3184) lt!559545)))

(declare-fun bs!34641 () Bool)

(assert (= bs!34641 d!135037))

(assert (=> bs!34641 m!1136851))

(declare-fun m!1137005 () Bool)

(assert (=> bs!34641 m!1137005))

(assert (=> b!1232746 d!135037))

(declare-fun b!1232942 () Bool)

(declare-fun e!699419 () Bool)

(declare-fun e!699421 () Bool)

(assert (=> b!1232942 (= e!699419 e!699421)))

(declare-fun res!821334 () Bool)

(assert (=> b!1232942 (=> (not res!821334) (not e!699421))))

(declare-fun e!699420 () Bool)

(assert (=> b!1232942 (= res!821334 (not e!699420))))

(declare-fun res!821335 () Bool)

(assert (=> b!1232942 (=> (not res!821335) (not e!699420))))

(assert (=> b!1232942 (= res!821335 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun bm!60943 () Bool)

(declare-fun c!120667 () Bool)

(declare-fun call!60946 () Bool)

(assert (=> bm!60943 (= call!60946 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120667 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823))))))

(declare-fun b!1232943 () Bool)

(assert (=> b!1232943 (= e!699420 (contains!7212 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232944 () Bool)

(declare-fun e!699422 () Bool)

(assert (=> b!1232944 (= e!699422 call!60946)))

(declare-fun d!135041 () Bool)

(declare-fun res!821333 () Bool)

(assert (=> d!135041 (=> res!821333 e!699419)))

(assert (=> d!135041 (= res!821333 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38883 a!3806)))))

(assert (=> d!135041 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) e!699419)))

(declare-fun b!1232945 () Bool)

(assert (=> b!1232945 (= e!699422 call!60946)))

(declare-fun b!1232946 () Bool)

(assert (=> b!1232946 (= e!699421 e!699422)))

(assert (=> b!1232946 (= c!120667 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135041 (not res!821333)) b!1232942))

(assert (= (and b!1232942 res!821335) b!1232943))

(assert (= (and b!1232942 res!821334) b!1232946))

(assert (= (and b!1232946 c!120667) b!1232944))

(assert (= (and b!1232946 (not c!120667)) b!1232945))

(assert (= (or b!1232944 b!1232945) bm!60943))

(assert (=> b!1232942 m!1136957))

(assert (=> b!1232942 m!1136957))

(declare-fun m!1137007 () Bool)

(assert (=> b!1232942 m!1137007))

(assert (=> bm!60943 m!1136957))

(declare-fun m!1137009 () Bool)

(assert (=> bm!60943 m!1137009))

(assert (=> b!1232943 m!1136957))

(assert (=> b!1232943 m!1136957))

(declare-fun m!1137011 () Bool)

(assert (=> b!1232943 m!1137011))

(assert (=> b!1232946 m!1136957))

(assert (=> b!1232946 m!1136957))

(assert (=> b!1232946 m!1137007))

(assert (=> b!1232746 d!135041))

(declare-fun b!1232947 () Bool)

(declare-fun e!699423 () Bool)

(declare-fun e!699425 () Bool)

(assert (=> b!1232947 (= e!699423 e!699425)))

(declare-fun res!821337 () Bool)

(assert (=> b!1232947 (=> (not res!821337) (not e!699425))))

(declare-fun e!699424 () Bool)

(assert (=> b!1232947 (= res!821337 (not e!699424))))

(declare-fun res!821338 () Bool)

(assert (=> b!1232947 (=> (not res!821338) (not e!699424))))

(assert (=> b!1232947 (= res!821338 (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)))))

(declare-fun bm!60944 () Bool)

(declare-fun c!120668 () Bool)

(declare-fun call!60947 () Bool)

(assert (=> bm!60944 (= call!60947 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120668 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1232948 () Bool)

(assert (=> b!1232948 (= e!699424 (contains!7212 acc!823 (select (arr!38346 a!3806) from!3184)))))

(declare-fun b!1232949 () Bool)

(declare-fun e!699426 () Bool)

(assert (=> b!1232949 (= e!699426 call!60947)))

(declare-fun d!135043 () Bool)

(declare-fun res!821336 () Bool)

(assert (=> d!135043 (=> res!821336 e!699423)))

(assert (=> d!135043 (= res!821336 (bvsge from!3184 (size!38883 a!3806)))))

(assert (=> d!135043 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!699423)))

(declare-fun b!1232950 () Bool)

(assert (=> b!1232950 (= e!699426 call!60947)))

(declare-fun b!1232951 () Bool)

(assert (=> b!1232951 (= e!699425 e!699426)))

(assert (=> b!1232951 (= c!120668 (validKeyInArray!0 (select (arr!38346 a!3806) from!3184)))))

(assert (= (and d!135043 (not res!821336)) b!1232947))

(assert (= (and b!1232947 res!821338) b!1232948))

(assert (= (and b!1232947 res!821337) b!1232951))

(assert (= (and b!1232951 c!120668) b!1232949))

(assert (= (and b!1232951 (not c!120668)) b!1232950))

(assert (= (or b!1232949 b!1232950) bm!60944))

(assert (=> b!1232947 m!1136833))

(assert (=> b!1232947 m!1136833))

(assert (=> b!1232947 m!1136835))

(assert (=> bm!60944 m!1136833))

(declare-fun m!1137017 () Bool)

(assert (=> bm!60944 m!1137017))

(assert (=> b!1232948 m!1136833))

(assert (=> b!1232948 m!1136833))

(declare-fun m!1137019 () Bool)

(assert (=> b!1232948 m!1137019))

(assert (=> b!1232951 m!1136833))

(assert (=> b!1232951 m!1136833))

(assert (=> b!1232951 m!1136835))

(assert (=> b!1232747 d!135043))

(declare-fun b!1232961 () Bool)

(declare-fun e!699435 () Bool)

(declare-fun e!699437 () Bool)

(assert (=> b!1232961 (= e!699435 e!699437)))

(declare-fun res!821347 () Bool)

(assert (=> b!1232961 (=> (not res!821347) (not e!699437))))

(declare-fun e!699436 () Bool)

(assert (=> b!1232961 (= res!821347 (not e!699436))))

(declare-fun res!821348 () Bool)

(assert (=> b!1232961 (=> (not res!821348) (not e!699436))))

(assert (=> b!1232961 (= res!821348 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun c!120670 () Bool)

(declare-fun bm!60946 () Bool)

(declare-fun call!60949 () Bool)

(assert (=> bm!60946 (= call!60949 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120670 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294))))))

(declare-fun b!1232962 () Bool)

(assert (=> b!1232962 (= e!699436 (contains!7212 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1232963 () Bool)

(declare-fun e!699438 () Bool)

(assert (=> b!1232963 (= e!699438 call!60949)))

(declare-fun d!135047 () Bool)

(declare-fun res!821346 () Bool)

(assert (=> d!135047 (=> res!821346 e!699435)))

(assert (=> d!135047 (= res!821346 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38883 a!3806)))))

(assert (=> d!135047 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) e!699435)))

(declare-fun b!1232964 () Bool)

(assert (=> b!1232964 (= e!699438 call!60949)))

(declare-fun b!1232965 () Bool)

(assert (=> b!1232965 (= e!699437 e!699438)))

(assert (=> b!1232965 (= c!120670 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135047 (not res!821346)) b!1232961))

(assert (= (and b!1232961 res!821348) b!1232962))

(assert (= (and b!1232961 res!821347) b!1232965))

(assert (= (and b!1232965 c!120670) b!1232963))

(assert (= (and b!1232965 (not c!120670)) b!1232964))

(assert (= (or b!1232963 b!1232964) bm!60946))

(assert (=> b!1232961 m!1136957))

(assert (=> b!1232961 m!1136957))

(assert (=> b!1232961 m!1137007))

(assert (=> bm!60946 m!1136957))

(declare-fun m!1137033 () Bool)

(assert (=> bm!60946 m!1137033))

(assert (=> b!1232962 m!1136957))

(assert (=> b!1232962 m!1136957))

(declare-fun m!1137037 () Bool)

(assert (=> b!1232962 m!1137037))

(assert (=> b!1232965 m!1136957))

(assert (=> b!1232965 m!1136957))

(assert (=> b!1232965 m!1137007))

(assert (=> b!1232748 d!135047))

(declare-fun d!135053 () Bool)

(declare-fun res!821353 () Bool)

(declare-fun e!699443 () Bool)

(assert (=> d!135053 (=> res!821353 e!699443)))

(assert (=> d!135053 (= res!821353 (is-Nil!27294 lt!559512))))

(assert (=> d!135053 (= (noDuplicate!1819 lt!559512) e!699443)))

(declare-fun b!1232970 () Bool)

(declare-fun e!699444 () Bool)

(assert (=> b!1232970 (= e!699443 e!699444)))

(declare-fun res!821354 () Bool)

(assert (=> b!1232970 (=> (not res!821354) (not e!699444))))

(assert (=> b!1232970 (= res!821354 (not (contains!7212 (t!40767 lt!559512) (h!28502 lt!559512))))))

(declare-fun b!1232971 () Bool)

(assert (=> b!1232971 (= e!699444 (noDuplicate!1819 (t!40767 lt!559512)))))

(assert (= (and d!135053 (not res!821353)) b!1232970))

(assert (= (and b!1232970 res!821354) b!1232971))

(declare-fun m!1137043 () Bool)

(assert (=> b!1232970 m!1137043))

(declare-fun m!1137045 () Bool)

(assert (=> b!1232971 m!1137045))

(assert (=> b!1232749 d!135053))

(declare-fun d!135057 () Bool)

(declare-fun lt!559548 () Bool)

(assert (=> d!135057 (= lt!559548 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!579 acc!823)))))

(declare-fun e!699446 () Bool)

(assert (=> d!135057 (= lt!559548 e!699446)))

(declare-fun res!821355 () Bool)

(assert (=> d!135057 (=> (not res!821355) (not e!699446))))

(assert (=> d!135057 (= res!821355 (is-Cons!27293 acc!823))))

(assert (=> d!135057 (= (contains!7212 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559548)))

(declare-fun b!1232972 () Bool)

(declare-fun e!699445 () Bool)

(assert (=> b!1232972 (= e!699446 e!699445)))

(declare-fun res!821356 () Bool)

(assert (=> b!1232972 (=> res!821356 e!699445)))

(assert (=> b!1232972 (= res!821356 (= (h!28502 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1232973 () Bool)

(assert (=> b!1232973 (= e!699445 (contains!7212 (t!40767 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135057 res!821355) b!1232972))

(assert (= (and b!1232972 (not res!821356)) b!1232973))

(assert (=> d!135057 m!1136971))

(declare-fun m!1137051 () Bool)

(assert (=> d!135057 m!1137051))

(declare-fun m!1137053 () Bool)

(assert (=> b!1232973 m!1137053))

(assert (=> b!1232750 d!135057))

(declare-fun d!135061 () Bool)

(assert (=> d!135061 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232751 d!135061))

(push 1)

(assert (not b!1232962))

(assert (not b!1232857))

(assert (not b!1232973))

(assert (not b!1232948))

(assert (not bm!60944))

(assert (not d!135011))

(assert (not b!1232951))

(assert (not b!1232927))

(assert (not bm!60940))

(assert (not b!1232895))

(assert (not b!1232970))

(assert (not d!134995))

(assert (not b!1232924))

(assert (not b!1232880))

(assert (not b!1232965))

(assert (not b!1232923))

(assert (not b!1232961))

(assert (not b!1232971))

(assert (not b!1232943))

(assert (not d!135017))

(assert (not b!1232947))

(assert (not b!1232942))

(assert (not d!135057))

(assert (not bm!60946))

(assert (not b!1232882))

(assert (not bm!60943))

(assert (not b!1232946))

(assert (not d!135037))

(assert (not b!1232896))

(assert (not b!1232876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!559561 () Bool)

(declare-fun d!135115 () Bool)

(assert (=> d!135115 (= lt!559561 (set.member (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (content!579 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823))))))

(declare-fun e!699512 () Bool)

(assert (=> d!135115 (= lt!559561 e!699512)))

(declare-fun res!821410 () Bool)

(assert (=> d!135115 (=> (not res!821410) (not e!699512))))

(assert (=> d!135115 (= res!821410 (is-Cons!27293 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)))))

(assert (=> d!135115 (= (contains!7212 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559561)))

(declare-fun b!1233049 () Bool)

(declare-fun e!699511 () Bool)

(assert (=> b!1233049 (= e!699512 e!699511)))

(declare-fun res!821411 () Bool)

(assert (=> b!1233049 (=> res!821411 e!699511)))

(assert (=> b!1233049 (= res!821411 (= (h!28502 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233050 () Bool)

(assert (=> b!1233050 (= e!699511 (contains!7212 (t!40767 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135115 res!821410) b!1233049))

(assert (= (and b!1233049 (not res!821411)) b!1233050))

(declare-fun m!1137157 () Bool)

(assert (=> d!135115 m!1137157))

(assert (=> d!135115 m!1136957))

(declare-fun m!1137161 () Bool)

(assert (=> d!135115 m!1137161))

(assert (=> b!1233050 m!1136957))

(declare-fun m!1137163 () Bool)

(assert (=> b!1233050 m!1137163))

(assert (=> b!1232943 d!135115))

(declare-fun b!1233056 () Bool)

(declare-fun e!699517 () Bool)

(declare-fun e!699519 () Bool)

(assert (=> b!1233056 (= e!699517 e!699519)))

(declare-fun res!821416 () Bool)

(assert (=> b!1233056 (=> (not res!821416) (not e!699519))))

(declare-fun e!699518 () Bool)

(assert (=> b!1233056 (= res!821416 (not e!699518))))

(declare-fun res!821417 () Bool)

(assert (=> b!1233056 (=> (not res!821417) (not e!699518))))

(assert (=> b!1233056 (= res!821417 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun call!60958 () Bool)

(declare-fun bm!60955 () Bool)

(declare-fun c!120683 () Bool)

(assert (=> bm!60955 (= call!60958 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120683 (Cons!27293 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120668 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) acc!823)) (ite c!120668 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun b!1233057 () Bool)

(assert (=> b!1233057 (= e!699518 (contains!7212 (ite c!120668 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) acc!823) (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233058 () Bool)

(declare-fun e!699520 () Bool)

(assert (=> b!1233058 (= e!699520 call!60958)))

(declare-fun d!135119 () Bool)

(declare-fun res!821415 () Bool)

(assert (=> d!135119 (=> res!821415 e!699517)))

(assert (=> d!135119 (= res!821415 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38883 a!3806)))))

(assert (=> d!135119 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120668 (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823) acc!823)) e!699517)))

(declare-fun b!1233059 () Bool)

(assert (=> b!1233059 (= e!699520 call!60958)))

(declare-fun b!1233060 () Bool)

(assert (=> b!1233060 (= e!699519 e!699520)))

(assert (=> b!1233060 (= c!120683 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!135119 (not res!821415)) b!1233056))

(assert (= (and b!1233056 res!821417) b!1233057))

(assert (= (and b!1233056 res!821416) b!1233060))

(assert (= (and b!1233060 c!120683) b!1233058))

(assert (= (and b!1233060 (not c!120683)) b!1233059))

(assert (= (or b!1233058 b!1233059) bm!60955))

(declare-fun m!1137165 () Bool)

(assert (=> b!1233056 m!1137165))

(assert (=> b!1233056 m!1137165))

(declare-fun m!1137169 () Bool)

(assert (=> b!1233056 m!1137169))

(assert (=> bm!60955 m!1137165))

(declare-fun m!1137171 () Bool)

(assert (=> bm!60955 m!1137171))

(assert (=> b!1233057 m!1137165))

(assert (=> b!1233057 m!1137165))

(declare-fun m!1137175 () Bool)

(assert (=> b!1233057 m!1137175))

(assert (=> b!1233060 m!1137165))

(assert (=> b!1233060 m!1137165))

(assert (=> b!1233060 m!1137169))

(assert (=> bm!60944 d!135119))

(declare-fun lt!559563 () Bool)

(declare-fun d!135123 () Bool)

(assert (=> d!135123 (= lt!559563 (set.member (select (arr!38346 a!3806) from!3184) (content!579 acc!823)))))

(declare-fun e!699524 () Bool)

(assert (=> d!135123 (= lt!559563 e!699524)))

(declare-fun res!821420 () Bool)

(assert (=> d!135123 (=> (not res!821420) (not e!699524))))

(assert (=> d!135123 (= res!821420 (is-Cons!27293 acc!823))))

(assert (=> d!135123 (= (contains!7212 acc!823 (select (arr!38346 a!3806) from!3184)) lt!559563)))

(declare-fun b!1233063 () Bool)

(declare-fun e!699523 () Bool)

(assert (=> b!1233063 (= e!699524 e!699523)))

(declare-fun res!821421 () Bool)

(assert (=> b!1233063 (=> res!821421 e!699523)))

(assert (=> b!1233063 (= res!821421 (= (h!28502 acc!823) (select (arr!38346 a!3806) from!3184)))))

(declare-fun b!1233064 () Bool)

(assert (=> b!1233064 (= e!699523 (contains!7212 (t!40767 acc!823) (select (arr!38346 a!3806) from!3184)))))

(assert (= (and d!135123 res!821420) b!1233063))

(assert (= (and b!1233063 (not res!821421)) b!1233064))

(assert (=> d!135123 m!1136971))

(assert (=> d!135123 m!1136833))

(declare-fun m!1137181 () Bool)

(assert (=> d!135123 m!1137181))

(assert (=> b!1233064 m!1136833))

(declare-fun m!1137183 () Bool)

(assert (=> b!1233064 m!1137183))

(assert (=> b!1232948 d!135123))

(declare-fun d!135127 () Bool)

(declare-fun lt!559565 () Bool)

(assert (=> d!135127 (= lt!559565 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!579 (t!40767 lt!559512))))))

(declare-fun e!699528 () Bool)

(assert (=> d!135127 (= lt!559565 e!699528)))

(declare-fun res!821424 () Bool)

(assert (=> d!135127 (=> (not res!821424) (not e!699528))))

(assert (=> d!135127 (= res!821424 (is-Cons!27293 (t!40767 lt!559512)))))

(assert (=> d!135127 (= (contains!7212 (t!40767 lt!559512) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559565)))

(declare-fun b!1233067 () Bool)

(declare-fun e!699527 () Bool)

(assert (=> b!1233067 (= e!699528 e!699527)))

(declare-fun res!821425 () Bool)

(assert (=> b!1233067 (=> res!821425 e!699527)))

(assert (=> b!1233067 (= res!821425 (= (h!28502 (t!40767 lt!559512)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233068 () Bool)

(assert (=> b!1233068 (= e!699527 (contains!7212 (t!40767 (t!40767 lt!559512)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135127 res!821424) b!1233067))

(assert (= (and b!1233067 (not res!821425)) b!1233068))

(declare-fun m!1137189 () Bool)

(assert (=> d!135127 m!1137189))

(declare-fun m!1137191 () Bool)

(assert (=> d!135127 m!1137191))

(declare-fun m!1137193 () Bool)

(assert (=> b!1233068 m!1137193))

(assert (=> b!1232857 d!135127))

(declare-fun d!135129 () Bool)

(assert (=> d!135129 (= (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1232946 d!135129))

(declare-fun d!135131 () Bool)

(declare-fun lt!559566 () Bool)

(assert (=> d!135131 (= lt!559566 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!579 (t!40767 acc!823))))))

(declare-fun e!699530 () Bool)

(assert (=> d!135131 (= lt!559566 e!699530)))

(declare-fun res!821426 () Bool)

(assert (=> d!135131 (=> (not res!821426) (not e!699530))))

(assert (=> d!135131 (= res!821426 (is-Cons!27293 (t!40767 acc!823)))))

(assert (=> d!135131 (= (contains!7212 (t!40767 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559566)))

(declare-fun b!1233069 () Bool)

(declare-fun e!699529 () Bool)

(assert (=> b!1233069 (= e!699530 e!699529)))

(declare-fun res!821427 () Bool)

(assert (=> b!1233069 (=> res!821427 e!699529)))

(assert (=> b!1233069 (= res!821427 (= (h!28502 (t!40767 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233070 () Bool)

(assert (=> b!1233070 (= e!699529 (contains!7212 (t!40767 (t!40767 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135131 res!821426) b!1233069))

(assert (= (and b!1233069 (not res!821427)) b!1233070))

(declare-fun m!1137195 () Bool)

(assert (=> d!135131 m!1137195))

(declare-fun m!1137197 () Bool)

(assert (=> d!135131 m!1137197))

(declare-fun m!1137199 () Bool)

(assert (=> b!1233070 m!1137199))

(assert (=> b!1232882 d!135131))

(assert (=> b!1232951 d!135013))

(assert (=> b!1232965 d!135129))

(declare-fun d!135133 () Bool)

(declare-fun lt!559567 () Bool)

(assert (=> d!135133 (= lt!559567 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!579 (t!40767 acc!823))))))

(declare-fun e!699532 () Bool)

(assert (=> d!135133 (= lt!559567 e!699532)))

(declare-fun res!821428 () Bool)

(assert (=> d!135133 (=> (not res!821428) (not e!699532))))

(assert (=> d!135133 (= res!821428 (is-Cons!27293 (t!40767 acc!823)))))

(assert (=> d!135133 (= (contains!7212 (t!40767 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!559567)))

(declare-fun b!1233071 () Bool)

(declare-fun e!699531 () Bool)

(assert (=> b!1233071 (= e!699532 e!699531)))

(declare-fun res!821429 () Bool)

(assert (=> b!1233071 (=> res!821429 e!699531)))

(assert (=> b!1233071 (= res!821429 (= (h!28502 (t!40767 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233072 () Bool)

(assert (=> b!1233072 (= e!699531 (contains!7212 (t!40767 (t!40767 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135133 res!821428) b!1233071))

(assert (= (and b!1233071 (not res!821429)) b!1233072))

(assert (=> d!135133 m!1137195))

(declare-fun m!1137201 () Bool)

(assert (=> d!135133 m!1137201))

(declare-fun m!1137203 () Bool)

(assert (=> b!1233072 m!1137203))

(assert (=> b!1232973 d!135133))

(declare-fun d!135135 () Bool)

(declare-fun lt!559568 () Bool)

(assert (=> d!135135 (= lt!559568 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!579 (t!40767 lt!559512))))))

(declare-fun e!699534 () Bool)

(assert (=> d!135135 (= lt!559568 e!699534)))

(declare-fun res!821430 () Bool)

(assert (=> d!135135 (=> (not res!821430) (not e!699534))))

(assert (=> d!135135 (= res!821430 (is-Cons!27293 (t!40767 lt!559512)))))

(assert (=> d!135135 (= (contains!7212 (t!40767 lt!559512) #b1000000000000000000000000000000000000000000000000000000000000000) lt!559568)))

(declare-fun b!1233073 () Bool)

(declare-fun e!699533 () Bool)

(assert (=> b!1233073 (= e!699534 e!699533)))

(declare-fun res!821431 () Bool)

(assert (=> b!1233073 (=> res!821431 e!699533)))

(assert (=> b!1233073 (= res!821431 (= (h!28502 (t!40767 lt!559512)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233074 () Bool)

(assert (=> b!1233074 (= e!699533 (contains!7212 (t!40767 (t!40767 lt!559512)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135135 res!821430) b!1233073))

(assert (= (and b!1233073 (not res!821431)) b!1233074))

(assert (=> d!135135 m!1137189))

(declare-fun m!1137205 () Bool)

(assert (=> d!135135 m!1137205))

(declare-fun m!1137207 () Bool)

(assert (=> b!1233074 m!1137207))

(assert (=> b!1232880 d!135135))

(declare-fun d!135137 () Bool)

(declare-fun lt!559569 () Bool)

(assert (=> d!135137 (= lt!559569 (set.member (h!28502 lt!559512) (content!579 (t!40767 lt!559512))))))

(declare-fun e!699536 () Bool)

(assert (=> d!135137 (= lt!559569 e!699536)))

(declare-fun res!821432 () Bool)

(assert (=> d!135137 (=> (not res!821432) (not e!699536))))

(assert (=> d!135137 (= res!821432 (is-Cons!27293 (t!40767 lt!559512)))))

(assert (=> d!135137 (= (contains!7212 (t!40767 lt!559512) (h!28502 lt!559512)) lt!559569)))

(declare-fun b!1233075 () Bool)

(declare-fun e!699535 () Bool)

(assert (=> b!1233075 (= e!699536 e!699535)))

(declare-fun res!821433 () Bool)

(assert (=> b!1233075 (=> res!821433 e!699535)))

(assert (=> b!1233075 (= res!821433 (= (h!28502 (t!40767 lt!559512)) (h!28502 lt!559512)))))

(declare-fun b!1233076 () Bool)

(assert (=> b!1233076 (= e!699535 (contains!7212 (t!40767 (t!40767 lt!559512)) (h!28502 lt!559512)))))

(assert (= (and d!135137 res!821432) b!1233075))

(assert (= (and b!1233075 (not res!821433)) b!1233076))

(assert (=> d!135137 m!1137189))

(declare-fun m!1137209 () Bool)

(assert (=> d!135137 m!1137209))

(declare-fun m!1137211 () Bool)

(assert (=> b!1233076 m!1137211))

(assert (=> b!1232970 d!135137))

(assert (=> b!1232927 d!135013))

(declare-fun d!135139 () Bool)

(declare-fun c!120686 () Bool)

(assert (=> d!135139 (= c!120686 (is-Nil!27294 acc!823))))

(declare-fun e!699539 () (Set (_ BitVec 64)))

(assert (=> d!135139 (= (content!579 acc!823) e!699539)))

(declare-fun b!1233081 () Bool)

(assert (=> b!1233081 (= e!699539 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1233082 () Bool)

(assert (=> b!1233082 (= e!699539 (set.union (set.insert (h!28502 acc!823) (as set.empty (Set (_ BitVec 64)))) (content!579 (t!40767 acc!823))))))

(assert (= (and d!135139 c!120686) b!1233081))

(assert (= (and d!135139 (not c!120686)) b!1233082))

(declare-fun m!1137213 () Bool)

(assert (=> b!1233082 m!1137213))

(assert (=> b!1233082 m!1137195))

(assert (=> d!135017 d!135139))

(assert (=> b!1232942 d!135129))

(declare-fun d!135141 () Bool)

(declare-fun res!821434 () Bool)

(declare-fun e!699540 () Bool)

(assert (=> d!135141 (=> res!821434 e!699540)))

(assert (=> d!135141 (= res!821434 (is-Nil!27294 (t!40767 lt!559512)))))

(assert (=> d!135141 (= (noDuplicate!1819 (t!40767 lt!559512)) e!699540)))

(declare-fun b!1233083 () Bool)

(declare-fun e!699541 () Bool)

(assert (=> b!1233083 (= e!699540 e!699541)))

(declare-fun res!821435 () Bool)

(assert (=> b!1233083 (=> (not res!821435) (not e!699541))))

(assert (=> b!1233083 (= res!821435 (not (contains!7212 (t!40767 (t!40767 lt!559512)) (h!28502 (t!40767 lt!559512)))))))

(declare-fun b!1233084 () Bool)

(assert (=> b!1233084 (= e!699541 (noDuplicate!1819 (t!40767 (t!40767 lt!559512))))))

(assert (= (and d!135141 (not res!821434)) b!1233083))

(assert (= (and b!1233083 res!821435) b!1233084))

(declare-fun m!1137215 () Bool)

(assert (=> b!1233083 m!1137215))

(declare-fun m!1137217 () Bool)

(assert (=> b!1233084 m!1137217))

(assert (=> b!1232971 d!135141))

(declare-fun b!1233085 () Bool)

(declare-fun e!699542 () Bool)

(declare-fun e!699544 () Bool)

(assert (=> b!1233085 (= e!699542 e!699544)))

(declare-fun res!821437 () Bool)

(assert (=> b!1233085 (=> (not res!821437) (not e!699544))))

(declare-fun e!699543 () Bool)

(assert (=> b!1233085 (= res!821437 (not e!699543))))

(declare-fun res!821438 () Bool)

(assert (=> b!1233085 (=> (not res!821438) (not e!699543))))

(assert (=> b!1233085 (= res!821438 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60956 () Bool)

(declare-fun call!60959 () Bool)

(declare-fun c!120687 () Bool)

(assert (=> bm!60956 (= call!60959 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120687 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120667 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823))) (ite c!120667 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)))))))

(declare-fun b!1233086 () Bool)

(assert (=> b!1233086 (= e!699543 (contains!7212 (ite c!120667 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233087 () Bool)

(declare-fun e!699545 () Bool)

(assert (=> b!1233087 (= e!699545 call!60959)))

(declare-fun d!135143 () Bool)

(declare-fun res!821436 () Bool)

(assert (=> d!135143 (=> res!821436 e!699542)))

(assert (=> d!135143 (= res!821436 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38883 a!3806)))))

(assert (=> d!135143 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120667 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823)) (Cons!27293 (select (arr!38346 a!3806) from!3184) acc!823))) e!699542)))

(declare-fun b!1233088 () Bool)

(assert (=> b!1233088 (= e!699545 call!60959)))

(declare-fun b!1233089 () Bool)

(assert (=> b!1233089 (= e!699544 e!699545)))

(assert (=> b!1233089 (= c!120687 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!135143 (not res!821436)) b!1233085))

(assert (= (and b!1233085 res!821438) b!1233086))

(assert (= (and b!1233085 res!821437) b!1233089))

(assert (= (and b!1233089 c!120687) b!1233087))

(assert (= (and b!1233089 (not c!120687)) b!1233088))

(assert (= (or b!1233087 b!1233088) bm!60956))

(declare-fun m!1137219 () Bool)

(assert (=> b!1233085 m!1137219))

(assert (=> b!1233085 m!1137219))

(declare-fun m!1137221 () Bool)

(assert (=> b!1233085 m!1137221))

(assert (=> bm!60956 m!1137219))

(declare-fun m!1137223 () Bool)

(assert (=> bm!60956 m!1137223))

(assert (=> b!1233086 m!1137219))

(assert (=> b!1233086 m!1137219))

(declare-fun m!1137225 () Bool)

(assert (=> b!1233086 m!1137225))

(assert (=> b!1233089 m!1137219))

(assert (=> b!1233089 m!1137219))

(assert (=> b!1233089 m!1137221))

(assert (=> bm!60943 d!135143))

(assert (=> b!1232947 d!135013))

(assert (=> b!1232961 d!135129))

(declare-fun d!135145 () Bool)

(declare-fun c!120688 () Bool)

(assert (=> d!135145 (= c!120688 (is-Nil!27294 lt!559512))))

(declare-fun e!699546 () (Set (_ BitVec 64)))

(assert (=> d!135145 (= (content!579 lt!559512) e!699546)))

(declare-fun b!1233090 () Bool)

(assert (=> b!1233090 (= e!699546 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!1233091 () Bool)

(assert (=> b!1233091 (= e!699546 (set.union (set.insert (h!28502 lt!559512) (as set.empty (Set (_ BitVec 64)))) (content!579 (t!40767 lt!559512))))))

(assert (= (and d!135145 c!120688) b!1233090))

(assert (= (and d!135145 (not c!120688)) b!1233091))

(declare-fun m!1137227 () Bool)

(assert (=> b!1233091 m!1137227))

(assert (=> b!1233091 m!1137189))

(assert (=> d!135011 d!135145))

(declare-fun b!1233092 () Bool)

(declare-fun e!699547 () Bool)

(declare-fun e!699549 () Bool)

(assert (=> b!1233092 (= e!699547 e!699549)))

(declare-fun res!821440 () Bool)

(assert (=> b!1233092 (=> (not res!821440) (not e!699549))))

(declare-fun e!699548 () Bool)

(assert (=> b!1233092 (= res!821440 (not e!699548))))

(declare-fun res!821441 () Bool)

(assert (=> b!1233092 (=> (not res!821441) (not e!699548))))

(assert (=> b!1233092 (= res!821441 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun call!60960 () Bool)

(declare-fun bm!60957 () Bool)

(declare-fun c!120689 () Bool)

(assert (=> bm!60957 (= call!60960 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120689 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120670 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294))) (ite c!120670 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)))))))

(declare-fun b!1233093 () Bool)

(assert (=> b!1233093 (= e!699548 (contains!7212 (ite c!120670 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233094 () Bool)

(declare-fun e!699550 () Bool)

(assert (=> b!1233094 (= e!699550 call!60960)))

(declare-fun d!135147 () Bool)

(declare-fun res!821439 () Bool)

(assert (=> d!135147 (=> res!821439 e!699547)))

(assert (=> d!135147 (= res!821439 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38883 a!3806)))))

(assert (=> d!135147 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120670 (Cons!27293 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294))) e!699547)))

(declare-fun b!1233095 () Bool)

(assert (=> b!1233095 (= e!699550 call!60960)))

(declare-fun b!1233096 () Bool)

(assert (=> b!1233096 (= e!699549 e!699550)))

(assert (=> b!1233096 (= c!120689 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!135147 (not res!821439)) b!1233092))

(assert (= (and b!1233092 res!821441) b!1233093))

(assert (= (and b!1233092 res!821440) b!1233096))

(assert (= (and b!1233096 c!120689) b!1233094))

(assert (= (and b!1233096 (not c!120689)) b!1233095))

(assert (= (or b!1233094 b!1233095) bm!60957))

(assert (=> b!1233092 m!1137219))

(assert (=> b!1233092 m!1137219))

(assert (=> b!1233092 m!1137221))

(assert (=> bm!60957 m!1137219))

(declare-fun m!1137229 () Bool)

(assert (=> bm!60957 m!1137229))

(assert (=> b!1233093 m!1137219))

(assert (=> b!1233093 m!1137219))

(declare-fun m!1137231 () Bool)

(assert (=> b!1233093 m!1137231))

(assert (=> b!1233096 m!1137219))

(assert (=> b!1233096 m!1137219))

(assert (=> b!1233096 m!1137221))

(assert (=> bm!60946 d!135147))

(declare-fun d!135149 () Bool)

(declare-fun lt!559570 () Bool)

(assert (=> d!135149 (= lt!559570 (set.member (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (content!579 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294))))))

(declare-fun e!699552 () Bool)

(assert (=> d!135149 (= lt!559570 e!699552)))

(declare-fun res!821442 () Bool)

(assert (=> d!135149 (=> (not res!821442) (not e!699552))))

(assert (=> d!135149 (= res!821442 (is-Cons!27293 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)))))

(assert (=> d!135149 (= (contains!7212 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!559570)))

(declare-fun b!1233097 () Bool)

(declare-fun e!699551 () Bool)

(assert (=> b!1233097 (= e!699552 e!699551)))

(declare-fun res!821443 () Bool)

(assert (=> b!1233097 (=> res!821443 e!699551)))

(assert (=> b!1233097 (= res!821443 (= (h!28502 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1233098 () Bool)

(assert (=> b!1233098 (= e!699551 (contains!7212 (t!40767 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294)) (select (arr!38346 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!135149 res!821442) b!1233097))

(assert (= (and b!1233097 (not res!821443)) b!1233098))

(declare-fun m!1137233 () Bool)

(assert (=> d!135149 m!1137233))

(assert (=> d!135149 m!1136957))

(declare-fun m!1137235 () Bool)

(assert (=> d!135149 m!1137235))

(assert (=> b!1233098 m!1136957))

(declare-fun m!1137237 () Bool)

(assert (=> b!1233098 m!1137237))

(assert (=> b!1232962 d!135149))

(assert (=> b!1232923 d!135013))

(declare-fun b!1233099 () Bool)

(declare-fun e!699553 () Bool)

(declare-fun e!699555 () Bool)

(assert (=> b!1233099 (= e!699553 e!699555)))

(declare-fun res!821445 () Bool)

(assert (=> b!1233099 (=> (not res!821445) (not e!699555))))

(declare-fun e!699554 () Bool)

(assert (=> b!1233099 (= res!821445 (not e!699554))))

(declare-fun res!821446 () Bool)

(assert (=> b!1233099 (=> (not res!821446) (not e!699554))))

(assert (=> b!1233099 (= res!821446 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun bm!60958 () Bool)

(declare-fun c!120690 () Bool)

(declare-fun call!60961 () Bool)

(assert (=> bm!60958 (= call!60961 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120690 (Cons!27293 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120664 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) Nil!27294)) (ite c!120664 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) Nil!27294))))))

(declare-fun b!1233100 () Bool)

(assert (=> b!1233100 (= e!699554 (contains!7212 (ite c!120664 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) Nil!27294) (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1233101 () Bool)

(declare-fun e!699556 () Bool)

(assert (=> b!1233101 (= e!699556 call!60961)))

(declare-fun d!135151 () Bool)

(declare-fun res!821444 () Bool)

(assert (=> d!135151 (=> res!821444 e!699553)))

(assert (=> d!135151 (= res!821444 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38883 a!3806)))))

(assert (=> d!135151 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120664 (Cons!27293 (select (arr!38346 a!3806) from!3184) Nil!27294) Nil!27294)) e!699553)))

(declare-fun b!1233102 () Bool)

(assert (=> b!1233102 (= e!699556 call!60961)))

(declare-fun b!1233103 () Bool)

(assert (=> b!1233103 (= e!699555 e!699556)))

(assert (=> b!1233103 (= c!120690 (validKeyInArray!0 (select (arr!38346 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!135151 (not res!821444)) b!1233099))

(assert (= (and b!1233099 res!821446) b!1233100))

(assert (= (and b!1233099 res!821445) b!1233103))

(assert (= (and b!1233103 c!120690) b!1233101))

(assert (= (and b!1233103 (not c!120690)) b!1233102))

(assert (= (or b!1233101 b!1233102) bm!60958))

(assert (=> b!1233099 m!1137165))

(assert (=> b!1233099 m!1137165))

(assert (=> b!1233099 m!1137169))

(assert (=> bm!60958 m!1137165))

(declare-fun m!1137239 () Bool)

(assert (=> bm!60958 m!1137239))

(assert (=> b!1233100 m!1137165))

