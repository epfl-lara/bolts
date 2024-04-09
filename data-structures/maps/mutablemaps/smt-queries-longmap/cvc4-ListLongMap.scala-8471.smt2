; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103162 () Bool)

(assert start!103162)

(declare-fun b!1238263 () Bool)

(declare-fun res!826116 () Bool)

(declare-fun e!701780 () Bool)

(assert (=> b!1238263 (=> (not res!826116) (not e!701780))))

(declare-datatypes ((List!27449 0))(
  ( (Nil!27446) (Cons!27445 (h!28654 (_ BitVec 64)) (t!40919 List!27449)) )
))
(declare-fun acc!846 () List!27449)

(declare-fun noDuplicate!1971 (List!27449) Bool)

(assert (=> b!1238263 (= res!826116 (noDuplicate!1971 acc!846))))

(declare-fun b!1238264 () Bool)

(declare-fun res!826123 () Bool)

(assert (=> b!1238264 (=> (not res!826123) (not e!701780))))

(declare-fun contains!7364 (List!27449 (_ BitVec 64)) Bool)

(assert (=> b!1238264 (= res!826123 (not (contains!7364 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!561229 () List!27449)

(declare-fun e!701778 () Bool)

(declare-datatypes ((array!79797 0))(
  ( (array!79798 (arr!38498 (Array (_ BitVec 32) (_ BitVec 64))) (size!39035 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79797)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun b!1238265 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79797 (_ BitVec 32) List!27449) Bool)

(assert (=> b!1238265 (= e!701778 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561229))))

(declare-datatypes ((Unit!41050 0))(
  ( (Unit!41051) )
))
(declare-fun lt!561228 () Unit!41050)

(declare-fun noDuplicateSubseq!82 (List!27449 List!27449) Unit!41050)

(assert (=> b!1238265 (= lt!561228 (noDuplicateSubseq!82 acc!846 lt!561229))))

(declare-fun b!1238266 () Bool)

(assert (=> b!1238266 (= e!701780 (not e!701778))))

(declare-fun res!826115 () Bool)

(assert (=> b!1238266 (=> res!826115 e!701778)))

(assert (=> b!1238266 (= res!826115 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!601 (List!27449 List!27449) Bool)

(assert (=> b!1238266 (subseq!601 acc!846 lt!561229)))

(declare-fun lt!561226 () Unit!41050)

(declare-fun subseqTail!88 (List!27449 List!27449) Unit!41050)

(assert (=> b!1238266 (= lt!561226 (subseqTail!88 lt!561229 lt!561229))))

(assert (=> b!1238266 (subseq!601 lt!561229 lt!561229)))

(declare-fun lt!561227 () Unit!41050)

(declare-fun lemmaListSubSeqRefl!0 (List!27449) Unit!41050)

(assert (=> b!1238266 (= lt!561227 (lemmaListSubSeqRefl!0 lt!561229))))

(assert (=> b!1238266 (= lt!561229 (Cons!27445 (select (arr!38498 a!3835) from!3213) acc!846))))

(declare-fun b!1238267 () Bool)

(declare-fun res!826114 () Bool)

(assert (=> b!1238267 (=> (not res!826114) (not e!701780))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238267 (= res!826114 (contains!7364 acc!846 k!2925))))

(declare-fun b!1238268 () Bool)

(declare-fun res!826120 () Bool)

(assert (=> b!1238268 (=> (not res!826120) (not e!701780))))

(assert (=> b!1238268 (= res!826120 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238269 () Bool)

(declare-fun res!826121 () Bool)

(assert (=> b!1238269 (=> (not res!826121) (not e!701780))))

(assert (=> b!1238269 (= res!826121 (not (contains!7364 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238270 () Bool)

(declare-fun res!826113 () Bool)

(assert (=> b!1238270 (=> (not res!826113) (not e!701780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238270 (= res!826113 (validKeyInArray!0 (select (arr!38498 a!3835) from!3213)))))

(declare-fun b!1238271 () Bool)

(declare-fun res!826118 () Bool)

(assert (=> b!1238271 (=> res!826118 e!701778)))

(assert (=> b!1238271 (= res!826118 (not (noDuplicate!1971 lt!561229)))))

(declare-fun b!1238272 () Bool)

(declare-fun res!826119 () Bool)

(assert (=> b!1238272 (=> res!826119 e!701778)))

(assert (=> b!1238272 (= res!826119 (contains!7364 lt!561229 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238273 () Bool)

(declare-fun res!826117 () Bool)

(assert (=> b!1238273 (=> (not res!826117) (not e!701780))))

(assert (=> b!1238273 (= res!826117 (not (= from!3213 (bvsub (size!39035 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!826122 () Bool)

(assert (=> start!103162 (=> (not res!826122) (not e!701780))))

(assert (=> start!103162 (= res!826122 (and (bvslt (size!39035 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39035 a!3835))))))

(assert (=> start!103162 e!701780))

(declare-fun array_inv!29274 (array!79797) Bool)

(assert (=> start!103162 (array_inv!29274 a!3835)))

(assert (=> start!103162 true))

(declare-fun b!1238274 () Bool)

(declare-fun res!826112 () Bool)

(assert (=> b!1238274 (=> res!826112 e!701778)))

(assert (=> b!1238274 (= res!826112 (contains!7364 lt!561229 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!103162 res!826122) b!1238263))

(assert (= (and b!1238263 res!826116) b!1238264))

(assert (= (and b!1238264 res!826123) b!1238269))

(assert (= (and b!1238269 res!826121) b!1238268))

(assert (= (and b!1238268 res!826120) b!1238267))

(assert (= (and b!1238267 res!826114) b!1238273))

(assert (= (and b!1238273 res!826117) b!1238270))

(assert (= (and b!1238270 res!826113) b!1238266))

(assert (= (and b!1238266 (not res!826115)) b!1238271))

(assert (= (and b!1238271 (not res!826118)) b!1238272))

(assert (= (and b!1238272 (not res!826119)) b!1238274))

(assert (= (and b!1238274 (not res!826112)) b!1238265))

(declare-fun m!1141849 () Bool)

(assert (=> b!1238272 m!1141849))

(declare-fun m!1141851 () Bool)

(assert (=> b!1238266 m!1141851))

(declare-fun m!1141853 () Bool)

(assert (=> b!1238266 m!1141853))

(declare-fun m!1141855 () Bool)

(assert (=> b!1238266 m!1141855))

(declare-fun m!1141857 () Bool)

(assert (=> b!1238266 m!1141857))

(declare-fun m!1141859 () Bool)

(assert (=> b!1238266 m!1141859))

(declare-fun m!1141861 () Bool)

(assert (=> b!1238271 m!1141861))

(declare-fun m!1141863 () Bool)

(assert (=> start!103162 m!1141863))

(declare-fun m!1141865 () Bool)

(assert (=> b!1238265 m!1141865))

(declare-fun m!1141867 () Bool)

(assert (=> b!1238265 m!1141867))

(declare-fun m!1141869 () Bool)

(assert (=> b!1238269 m!1141869))

(declare-fun m!1141871 () Bool)

(assert (=> b!1238267 m!1141871))

(assert (=> b!1238270 m!1141859))

(assert (=> b!1238270 m!1141859))

(declare-fun m!1141873 () Bool)

(assert (=> b!1238270 m!1141873))

(declare-fun m!1141875 () Bool)

(assert (=> b!1238274 m!1141875))

(declare-fun m!1141877 () Bool)

(assert (=> b!1238264 m!1141877))

(declare-fun m!1141879 () Bool)

(assert (=> b!1238263 m!1141879))

(declare-fun m!1141881 () Bool)

(assert (=> b!1238268 m!1141881))

(push 1)

(assert (not b!1238268))

(assert (not start!103162))

(assert (not b!1238265))

(assert (not b!1238263))

(assert (not b!1238266))

(assert (not b!1238272))

(assert (not b!1238267))

(assert (not b!1238269))

(assert (not b!1238274))

(assert (not b!1238271))

(assert (not b!1238270))

(assert (not b!1238264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1238301 () Bool)

(declare-fun e!701805 () Bool)

(declare-fun e!701806 () Bool)

(assert (=> b!1238301 (= e!701805 e!701806)))

(declare-fun res!826144 () Bool)

(assert (=> b!1238301 (=> (not res!826144) (not e!701806))))

(declare-fun e!701803 () Bool)

(assert (=> b!1238301 (= res!826144 (not e!701803))))

(declare-fun res!826143 () Bool)

(assert (=> b!1238301 (=> (not res!826143) (not e!701803))))

(assert (=> b!1238301 (= res!826143 (validKeyInArray!0 (select (arr!38498 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135761 () Bool)

(declare-fun res!826142 () Bool)

(assert (=> d!135761 (=> res!826142 e!701805)))

(assert (=> d!135761 (= res!826142 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39035 a!3835)))))

(assert (=> d!135761 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!561229) e!701805)))

(declare-fun b!1238302 () Bool)

(declare-fun e!701804 () Bool)

(declare-fun call!61055 () Bool)

(assert (=> b!1238302 (= e!701804 call!61055)))

(declare-fun b!1238303 () Bool)

(assert (=> b!1238303 (= e!701804 call!61055)))

(declare-fun b!1238304 () Bool)

(assert (=> b!1238304 (= e!701803 (contains!7364 lt!561229 (select (arr!38498 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1238305 () Bool)

(assert (=> b!1238305 (= e!701806 e!701804)))

(declare-fun c!120942 () Bool)

(assert (=> b!1238305 (= c!120942 (validKeyInArray!0 (select (arr!38498 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun bm!61052 () Bool)

(assert (=> bm!61052 (= call!61055 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!120942 (Cons!27445 (select (arr!38498 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) lt!561229) lt!561229)))))

(assert (= (and d!135761 (not res!826142)) b!1238301))

(assert (= (and b!1238301 res!826143) b!1238304))

(assert (= (and b!1238301 res!826144) b!1238305))

(assert (= (and b!1238305 c!120942) b!1238302))

(assert (= (and b!1238305 (not c!120942)) b!1238303))

(assert (= (or b!1238302 b!1238303) bm!61052))

(declare-fun m!1141889 () Bool)

(assert (=> b!1238301 m!1141889))

(assert (=> b!1238301 m!1141889))

(declare-fun m!1141891 () Bool)

(assert (=> b!1238301 m!1141891))

(assert (=> b!1238304 m!1141889))

(assert (=> b!1238304 m!1141889))

(declare-fun m!1141893 () Bool)

(assert (=> b!1238304 m!1141893))

(assert (=> b!1238305 m!1141889))

(assert (=> b!1238305 m!1141889))

(assert (=> b!1238305 m!1141891))

(assert (=> bm!61052 m!1141889))

(declare-fun m!1141895 () Bool)

(assert (=> bm!61052 m!1141895))

(assert (=> b!1238265 d!135761))

(declare-fun d!135765 () Bool)

(assert (=> d!135765 (noDuplicate!1971 acc!846)))

(declare-fun lt!561235 () Unit!41050)

(declare-fun choose!1837 (List!27449 List!27449) Unit!41050)

(assert (=> d!135765 (= lt!561235 (choose!1837 acc!846 lt!561229))))

(declare-fun e!701825 () Bool)

(assert (=> d!135765 e!701825))

(declare-fun res!826160 () Bool)

(assert (=> d!135765 (=> (not res!826160) (not e!701825))))

(assert (=> d!135765 (= res!826160 (subseq!601 acc!846 lt!561229))))

(assert (=> d!135765 (= (noDuplicateSubseq!82 acc!846 lt!561229) lt!561235)))

(declare-fun b!1238327 () Bool)

(assert (=> b!1238327 (= e!701825 (noDuplicate!1971 lt!561229))))

(assert (= (and d!135765 res!826160) b!1238327))

(assert (=> d!135765 m!1141879))

(declare-fun m!1141901 () Bool)

(assert (=> d!135765 m!1141901))

(assert (=> d!135765 m!1141855))

(assert (=> b!1238327 m!1141861))

(assert (=> b!1238265 d!135765))

(declare-fun d!135769 () Bool)

(declare-fun res!826173 () Bool)

(declare-fun e!701840 () Bool)

(assert (=> d!135769 (=> res!826173 e!701840)))

(assert (=> d!135769 (= res!826173 (is-Nil!27446 acc!846))))

(assert (=> d!135769 (= (noDuplicate!1971 acc!846) e!701840)))

(declare-fun b!1238344 () Bool)

(declare-fun e!701841 () Bool)

(assert (=> b!1238344 (= e!701840 e!701841)))

(declare-fun res!826174 () Bool)

(assert (=> b!1238344 (=> (not res!826174) (not e!701841))))

(assert (=> b!1238344 (= res!826174 (not (contains!7364 (t!40919 acc!846) (h!28654 acc!846))))))

(declare-fun b!1238345 () Bool)

(assert (=> b!1238345 (= e!701841 (noDuplicate!1971 (t!40919 acc!846)))))

(assert (= (and d!135769 (not res!826173)) b!1238344))

(assert (= (and b!1238344 res!826174) b!1238345))

(declare-fun m!1141915 () Bool)

(assert (=> b!1238344 m!1141915))

(declare-fun m!1141917 () Bool)

(assert (=> b!1238345 m!1141917))

(assert (=> b!1238263 d!135769))

(declare-fun d!135775 () Bool)

(declare-fun lt!561242 () Bool)

(declare-fun content!597 (List!27449) (Set (_ BitVec 64)))

(assert (=> d!135775 (= lt!561242 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!597 lt!561229)))))

(declare-fun e!701858 () Bool)

(assert (=> d!135775 (= lt!561242 e!701858)))

(declare-fun res!826191 () Bool)

(assert (=> d!135775 (=> (not res!826191) (not e!701858))))

(assert (=> d!135775 (= res!826191 (is-Cons!27445 lt!561229))))

(assert (=> d!135775 (= (contains!7364 lt!561229 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561242)))

(declare-fun b!1238361 () Bool)

(declare-fun e!701857 () Bool)

(assert (=> b!1238361 (= e!701858 e!701857)))

(declare-fun res!826190 () Bool)

(assert (=> b!1238361 (=> res!826190 e!701857)))

(assert (=> b!1238361 (= res!826190 (= (h!28654 lt!561229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238362 () Bool)

(assert (=> b!1238362 (= e!701857 (contains!7364 (t!40919 lt!561229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135775 res!826191) b!1238361))

(assert (= (and b!1238361 (not res!826190)) b!1238362))

(declare-fun m!1141935 () Bool)

(assert (=> d!135775 m!1141935))

(declare-fun m!1141937 () Bool)

(assert (=> d!135775 m!1141937))

(declare-fun m!1141939 () Bool)

(assert (=> b!1238362 m!1141939))

(assert (=> b!1238274 d!135775))

(declare-fun d!135787 () Bool)

(declare-fun lt!561244 () Bool)

(assert (=> d!135787 (= lt!561244 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!597 acc!846)))))

(declare-fun e!701862 () Bool)

(assert (=> d!135787 (= lt!561244 e!701862)))

(declare-fun res!826195 () Bool)

(assert (=> d!135787 (=> (not res!826195) (not e!701862))))

(assert (=> d!135787 (= res!826195 (is-Cons!27445 acc!846))))

(assert (=> d!135787 (= (contains!7364 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561244)))

(declare-fun b!1238365 () Bool)

(declare-fun e!701861 () Bool)

(assert (=> b!1238365 (= e!701862 e!701861)))

(declare-fun res!826194 () Bool)

(assert (=> b!1238365 (=> res!826194 e!701861)))

(assert (=> b!1238365 (= res!826194 (= (h!28654 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238366 () Bool)

(assert (=> b!1238366 (= e!701861 (contains!7364 (t!40919 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135787 res!826195) b!1238365))

(assert (= (and b!1238365 (not res!826194)) b!1238366))

(declare-fun m!1141945 () Bool)

(assert (=> d!135787 m!1141945))

(declare-fun m!1141947 () Bool)

(assert (=> d!135787 m!1141947))

(declare-fun m!1141949 () Bool)

(assert (=> b!1238366 m!1141949))

(assert (=> b!1238264 d!135787))

(declare-fun d!135791 () Bool)

(declare-fun lt!561245 () Bool)

(assert (=> d!135791 (= lt!561245 (member k!2925 (content!597 acc!846)))))

(declare-fun e!701866 () Bool)

(assert (=> d!135791 (= lt!561245 e!701866)))

(declare-fun res!826199 () Bool)

(assert (=> d!135791 (=> (not res!826199) (not e!701866))))

(assert (=> d!135791 (= res!826199 (is-Cons!27445 acc!846))))

(assert (=> d!135791 (= (contains!7364 acc!846 k!2925) lt!561245)))

(declare-fun b!1238369 () Bool)

(declare-fun e!701865 () Bool)

(assert (=> b!1238369 (= e!701866 e!701865)))

(declare-fun res!826198 () Bool)

(assert (=> b!1238369 (=> res!826198 e!701865)))

(assert (=> b!1238369 (= res!826198 (= (h!28654 acc!846) k!2925))))

(declare-fun b!1238370 () Bool)

(assert (=> b!1238370 (= e!701865 (contains!7364 (t!40919 acc!846) k!2925))))

(assert (= (and d!135791 res!826199) b!1238369))

(assert (= (and b!1238369 (not res!826198)) b!1238370))

(assert (=> d!135791 m!1141945))

(declare-fun m!1141955 () Bool)

(assert (=> d!135791 m!1141955))

(declare-fun m!1141957 () Bool)

(assert (=> b!1238370 m!1141957))

(assert (=> b!1238267 d!135791))

(declare-fun b!1238373 () Bool)

(declare-fun e!701871 () Bool)

(declare-fun e!701872 () Bool)

(assert (=> b!1238373 (= e!701871 e!701872)))

(declare-fun res!826204 () Bool)

(assert (=> b!1238373 (=> (not res!826204) (not e!701872))))

(declare-fun e!701869 () Bool)

(assert (=> b!1238373 (= res!826204 (not e!701869))))

(declare-fun res!826203 () Bool)

(assert (=> b!1238373 (=> (not res!826203) (not e!701869))))

(assert (=> b!1238373 (= res!826203 (validKeyInArray!0 (select (arr!38498 a!3835) from!3213)))))

(declare-fun d!135795 () Bool)

(declare-fun res!826202 () Bool)

(assert (=> d!135795 (=> res!826202 e!701871)))

(assert (=> d!135795 (= res!826202 (bvsge from!3213 (size!39035 a!3835)))))

(assert (=> d!135795 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701871)))

(declare-fun b!1238374 () Bool)

(declare-fun e!701870 () Bool)

(declare-fun call!61061 () Bool)

(assert (=> b!1238374 (= e!701870 call!61061)))

(declare-fun b!1238375 () Bool)

(assert (=> b!1238375 (= e!701870 call!61061)))

(declare-fun b!1238376 () Bool)

(assert (=> b!1238376 (= e!701869 (contains!7364 acc!846 (select (arr!38498 a!3835) from!3213)))))

(declare-fun b!1238377 () Bool)

(assert (=> b!1238377 (= e!701872 e!701870)))

(declare-fun c!120948 () Bool)

(assert (=> b!1238377 (= c!120948 (validKeyInArray!0 (select (arr!38498 a!3835) from!3213)))))

(declare-fun bm!61058 () Bool)

(assert (=> bm!61058 (= call!61061 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120948 (Cons!27445 (select (arr!38498 a!3835) from!3213) acc!846) acc!846)))))

(assert (= (and d!135795 (not res!826202)) b!1238373))

(assert (= (and b!1238373 res!826203) b!1238376))

(assert (= (and b!1238373 res!826204) b!1238377))

(assert (= (and b!1238377 c!120948) b!1238374))

(assert (= (and b!1238377 (not c!120948)) b!1238375))

(assert (= (or b!1238374 b!1238375) bm!61058))

(assert (=> b!1238373 m!1141859))

(assert (=> b!1238373 m!1141859))

(assert (=> b!1238373 m!1141873))

(assert (=> b!1238376 m!1141859))

(assert (=> b!1238376 m!1141859))

(declare-fun m!1141963 () Bool)

(assert (=> b!1238376 m!1141963))

(assert (=> b!1238377 m!1141859))

(assert (=> b!1238377 m!1141859))

(assert (=> b!1238377 m!1141873))

(assert (=> bm!61058 m!1141859))

(declare-fun m!1141965 () Bool)

(assert (=> bm!61058 m!1141965))

(assert (=> b!1238268 d!135795))

(declare-fun b!1238411 () Bool)

(declare-fun e!701904 () Bool)

(assert (=> b!1238411 (= e!701904 (subseq!601 acc!846 (t!40919 lt!561229)))))

(declare-fun b!1238408 () Bool)

(declare-fun e!701905 () Bool)

(declare-fun e!701903 () Bool)

(assert (=> b!1238408 (= e!701905 e!701903)))

(declare-fun res!826235 () Bool)

(assert (=> b!1238408 (=> (not res!826235) (not e!701903))))

(assert (=> b!1238408 (= res!826235 (is-Cons!27445 lt!561229))))

(declare-fun d!135799 () Bool)

(declare-fun res!826236 () Bool)

(assert (=> d!135799 (=> res!826236 e!701905)))

(assert (=> d!135799 (= res!826236 (is-Nil!27446 acc!846))))

(assert (=> d!135799 (= (subseq!601 acc!846 lt!561229) e!701905)))

(declare-fun b!1238410 () Bool)

(declare-fun e!701906 () Bool)

(assert (=> b!1238410 (= e!701906 (subseq!601 (t!40919 acc!846) (t!40919 lt!561229)))))

(declare-fun b!1238409 () Bool)

(assert (=> b!1238409 (= e!701903 e!701904)))

(declare-fun res!826237 () Bool)

(assert (=> b!1238409 (=> res!826237 e!701904)))

(assert (=> b!1238409 (= res!826237 e!701906)))

(declare-fun res!826238 () Bool)

(assert (=> b!1238409 (=> (not res!826238) (not e!701906))))

(assert (=> b!1238409 (= res!826238 (= (h!28654 acc!846) (h!28654 lt!561229)))))

(assert (= (and d!135799 (not res!826236)) b!1238408))

(assert (= (and b!1238408 res!826235) b!1238409))

(assert (= (and b!1238409 res!826238) b!1238410))

(assert (= (and b!1238409 (not res!826237)) b!1238411))

(declare-fun m!1141975 () Bool)

(assert (=> b!1238411 m!1141975))

(declare-fun m!1141977 () Bool)

(assert (=> b!1238410 m!1141977))

(assert (=> b!1238266 d!135799))

(declare-fun b!1238469 () Bool)

(declare-fun c!120972 () Bool)

(declare-fun isEmpty!1017 (List!27449) Bool)

(assert (=> b!1238469 (= c!120972 (not (isEmpty!1017 (t!40919 lt!561229))))))

(declare-fun e!701946 () Unit!41050)

(declare-fun e!701944 () Unit!41050)

(assert (=> b!1238469 (= e!701946 e!701944)))

(declare-fun b!1238470 () Bool)

(declare-fun call!61069 () Unit!41050)

(assert (=> b!1238470 (= e!701944 call!61069)))

(declare-fun b!1238471 () Bool)

(declare-fun Unit!41054 () Unit!41050)

(assert (=> b!1238471 (= e!701944 Unit!41054)))

(declare-fun b!1238472 () Bool)

(assert (=> b!1238472 (= e!701946 call!61069)))

(declare-fun b!1238473 () Bool)

(declare-fun e!701943 () Bool)

(assert (=> b!1238473 (= e!701943 (subseq!601 lt!561229 lt!561229))))

(declare-fun d!135807 () Bool)

(declare-fun tail!167 (List!27449) List!27449)

(assert (=> d!135807 (subseq!601 (tail!167 lt!561229) lt!561229)))

(declare-fun lt!561258 () Unit!41050)

(declare-fun e!701945 () Unit!41050)

(assert (=> d!135807 (= lt!561258 e!701945)))

(declare-fun c!120971 () Bool)

(assert (=> d!135807 (= c!120971 (and (is-Cons!27445 lt!561229) (is-Cons!27445 lt!561229)))))

(assert (=> d!135807 e!701943))

(declare-fun res!826254 () Bool)

(assert (=> d!135807 (=> (not res!826254) (not e!701943))))

(assert (=> d!135807 (= res!826254 (not (isEmpty!1017 lt!561229)))))

(assert (=> d!135807 (= (subseqTail!88 lt!561229 lt!561229) lt!561258)))

(declare-fun bm!61066 () Bool)

(declare-fun c!120970 () Bool)

(assert (=> bm!61066 (= call!61069 (subseqTail!88 (ite c!120970 lt!561229 (t!40919 lt!561229)) (t!40919 lt!561229)))))

(declare-fun b!1238474 () Bool)

(assert (=> b!1238474 (= e!701945 e!701946)))

(assert (=> b!1238474 (= c!120970 (subseq!601 lt!561229 (t!40919 lt!561229)))))

(declare-fun b!1238475 () Bool)

(declare-fun Unit!41057 () Unit!41050)

(assert (=> b!1238475 (= e!701945 Unit!41057)))

(assert (= (and d!135807 res!826254) b!1238473))

(assert (= (and d!135807 c!120971) b!1238474))

(assert (= (and d!135807 (not c!120971)) b!1238475))

(assert (= (and b!1238474 c!120970) b!1238472))

(assert (= (and b!1238474 (not c!120970)) b!1238469))

(assert (= (and b!1238469 c!120972) b!1238470))

(assert (= (and b!1238469 (not c!120972)) b!1238471))

(assert (= (or b!1238472 b!1238470) bm!61066))

(declare-fun m!1142003 () Bool)

(assert (=> d!135807 m!1142003))

(assert (=> d!135807 m!1142003))

(declare-fun m!1142005 () Bool)

(assert (=> d!135807 m!1142005))

(declare-fun m!1142007 () Bool)

(assert (=> d!135807 m!1142007))

(declare-fun m!1142009 () Bool)

(assert (=> b!1238474 m!1142009))

(assert (=> b!1238473 m!1141857))

(declare-fun m!1142011 () Bool)

(assert (=> bm!61066 m!1142011))

(declare-fun m!1142013 () Bool)

(assert (=> b!1238469 m!1142013))

(assert (=> b!1238266 d!135807))

(declare-fun b!1238488 () Bool)

(declare-fun e!701954 () Bool)

(assert (=> b!1238488 (= e!701954 (subseq!601 lt!561229 (t!40919 lt!561229)))))

(declare-fun b!1238485 () Bool)

(declare-fun e!701955 () Bool)

(declare-fun e!701953 () Bool)

(assert (=> b!1238485 (= e!701955 e!701953)))

(declare-fun res!826258 () Bool)

(assert (=> b!1238485 (=> (not res!826258) (not e!701953))))

(assert (=> b!1238485 (= res!826258 (is-Cons!27445 lt!561229))))

(declare-fun d!135819 () Bool)

(declare-fun res!826259 () Bool)

(assert (=> d!135819 (=> res!826259 e!701955)))

(assert (=> d!135819 (= res!826259 (is-Nil!27446 lt!561229))))

(assert (=> d!135819 (= (subseq!601 lt!561229 lt!561229) e!701955)))

(declare-fun b!1238487 () Bool)

(declare-fun e!701956 () Bool)

(assert (=> b!1238487 (= e!701956 (subseq!601 (t!40919 lt!561229) (t!40919 lt!561229)))))

(declare-fun b!1238486 () Bool)

(assert (=> b!1238486 (= e!701953 e!701954)))

(declare-fun res!826260 () Bool)

(assert (=> b!1238486 (=> res!826260 e!701954)))

(assert (=> b!1238486 (= res!826260 e!701956)))

(declare-fun res!826261 () Bool)

(assert (=> b!1238486 (=> (not res!826261) (not e!701956))))

(assert (=> b!1238486 (= res!826261 (= (h!28654 lt!561229) (h!28654 lt!561229)))))

(assert (= (and d!135819 (not res!826259)) b!1238485))

(assert (= (and b!1238485 res!826258) b!1238486))

(assert (= (and b!1238486 res!826261) b!1238487))

(assert (= (and b!1238486 (not res!826260)) b!1238488))

(assert (=> b!1238488 m!1142009))

(declare-fun m!1142017 () Bool)

(assert (=> b!1238487 m!1142017))

(assert (=> b!1238266 d!135819))

(declare-fun d!135821 () Bool)

(assert (=> d!135821 (subseq!601 lt!561229 lt!561229)))

(declare-fun lt!561262 () Unit!41050)

(declare-fun choose!36 (List!27449) Unit!41050)

(assert (=> d!135821 (= lt!561262 (choose!36 lt!561229))))

(assert (=> d!135821 (= (lemmaListSubSeqRefl!0 lt!561229) lt!561262)))

(declare-fun bs!34814 () Bool)

(assert (= bs!34814 d!135821))

(assert (=> bs!34814 m!1141857))

(declare-fun m!1142031 () Bool)

(assert (=> bs!34814 m!1142031))

(assert (=> b!1238266 d!135821))

(declare-fun d!135829 () Bool)

(assert (=> d!135829 (= (array_inv!29274 a!3835) (bvsge (size!39035 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103162 d!135829))

(declare-fun d!135831 () Bool)

(assert (=> d!135831 (= (validKeyInArray!0 (select (arr!38498 a!3835) from!3213)) (and (not (= (select (arr!38498 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38498 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1238270 d!135831))

(declare-fun d!135833 () Bool)

(declare-fun lt!561268 () Bool)

(assert (=> d!135833 (= lt!561268 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!597 acc!846)))))

(declare-fun e!701966 () Bool)

(assert (=> d!135833 (= lt!561268 e!701966)))

(declare-fun res!826271 () Bool)

(assert (=> d!135833 (=> (not res!826271) (not e!701966))))

(assert (=> d!135833 (= res!826271 (is-Cons!27445 acc!846))))

(assert (=> d!135833 (= (contains!7364 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561268)))

(declare-fun b!1238497 () Bool)

(declare-fun e!701965 () Bool)

(assert (=> b!1238497 (= e!701966 e!701965)))

(declare-fun res!826270 () Bool)

(assert (=> b!1238497 (=> res!826270 e!701965)))

(assert (=> b!1238497 (= res!826270 (= (h!28654 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1238498 () Bool)

(assert (=> b!1238498 (= e!701965 (contains!7364 (t!40919 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135833 res!826271) b!1238497))

(assert (= (and b!1238497 (not res!826270)) b!1238498))

(assert (=> d!135833 m!1141945))

(declare-fun m!1142035 () Bool)

(assert (=> d!135833 m!1142035))

(declare-fun m!1142037 () Bool)

(assert (=> b!1238498 m!1142037))

(assert (=> b!1238269 d!135833))

(declare-fun d!135835 () Bool)

(declare-fun res!826272 () Bool)

(declare-fun e!701967 () Bool)

(assert (=> d!135835 (=> res!826272 e!701967)))

(assert (=> d!135835 (= res!826272 (is-Nil!27446 lt!561229))))

(assert (=> d!135835 (= (noDuplicate!1971 lt!561229) e!701967)))

(declare-fun b!1238499 () Bool)

(declare-fun e!701968 () Bool)

(assert (=> b!1238499 (= e!701967 e!701968)))

(declare-fun res!826273 () Bool)

(assert (=> b!1238499 (=> (not res!826273) (not e!701968))))

(assert (=> b!1238499 (= res!826273 (not (contains!7364 (t!40919 lt!561229) (h!28654 lt!561229))))))

(declare-fun b!1238500 () Bool)

(assert (=> b!1238500 (= e!701968 (noDuplicate!1971 (t!40919 lt!561229)))))

(assert (= (and d!135835 (not res!826272)) b!1238499))

(assert (= (and b!1238499 res!826273) b!1238500))

(declare-fun m!1142039 () Bool)

(assert (=> b!1238499 m!1142039))

(declare-fun m!1142041 () Bool)

(assert (=> b!1238500 m!1142041))

(assert (=> b!1238271 d!135835))

(declare-fun d!135837 () Bool)

(declare-fun lt!561269 () Bool)

