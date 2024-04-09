; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114446 () Bool)

(assert start!114446)

(declare-fun b!1358034 () Bool)

(declare-fun res!902846 () Bool)

(declare-fun e!770792 () Bool)

(assert (=> b!1358034 (=> (not res!902846) (not e!770792))))

(declare-datatypes ((List!31868 0))(
  ( (Nil!31865) (Cons!31864 (h!33073 (_ BitVec 64)) (t!46542 List!31868)) )
))
(declare-fun acc!759 () List!31868)

(declare-fun contains!9433 (List!31868 (_ BitVec 64)) Bool)

(assert (=> b!1358034 (= res!902846 (not (contains!9433 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358035 () Bool)

(declare-fun res!902839 () Bool)

(assert (=> b!1358035 (=> (not res!902839) (not e!770792))))

(declare-datatypes ((array!92416 0))(
  ( (array!92417 (arr!44647 (Array (_ BitVec 32) (_ BitVec 64))) (size!45198 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92416)

(declare-fun arrayNoDuplicates!0 (array!92416 (_ BitVec 32) List!31868) Bool)

(assert (=> b!1358035 (= res!902839 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31865))))

(declare-fun b!1358036 () Bool)

(declare-fun e!770794 () Bool)

(declare-fun lt!599211 () List!31868)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1358036 (= e!770794 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!599211))))

(declare-datatypes ((Unit!44627 0))(
  ( (Unit!44628) )
))
(declare-fun lt!599212 () Unit!44627)

(declare-fun noDuplicateSubseq!134 (List!31868 List!31868) Unit!44627)

(assert (=> b!1358036 (= lt!599212 (noDuplicateSubseq!134 acc!759 lt!599211))))

(declare-fun res!902848 () Bool)

(assert (=> start!114446 (=> (not res!902848) (not e!770792))))

(assert (=> start!114446 (= res!902848 (and (bvslt (size!45198 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45198 a!3742))))))

(assert (=> start!114446 e!770792))

(assert (=> start!114446 true))

(declare-fun array_inv!33592 (array!92416) Bool)

(assert (=> start!114446 (array_inv!33592 a!3742)))

(declare-fun b!1358037 () Bool)

(declare-fun res!902847 () Bool)

(assert (=> b!1358037 (=> (not res!902847) (not e!770792))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358037 (= res!902847 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45198 a!3742))))))

(declare-fun b!1358038 () Bool)

(declare-fun res!902853 () Bool)

(assert (=> b!1358038 (=> (not res!902853) (not e!770792))))

(assert (=> b!1358038 (= res!902853 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45198 a!3742)))))

(declare-fun b!1358039 () Bool)

(assert (=> b!1358039 (= e!770792 (not e!770794))))

(declare-fun res!902851 () Bool)

(assert (=> b!1358039 (=> res!902851 e!770794)))

(assert (=> b!1358039 (= res!902851 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!829 (List!31868 (_ BitVec 64)) List!31868)

(assert (=> b!1358039 (= lt!599211 ($colon$colon!829 acc!759 (select (arr!44647 a!3742) from!3120)))))

(declare-fun subseq!824 (List!31868 List!31868) Bool)

(assert (=> b!1358039 (subseq!824 acc!759 acc!759)))

(declare-fun lt!599213 () Unit!44627)

(declare-fun lemmaListSubSeqRefl!0 (List!31868) Unit!44627)

(assert (=> b!1358039 (= lt!599213 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1358040 () Bool)

(declare-fun res!902850 () Bool)

(assert (=> b!1358040 (=> (not res!902850) (not e!770792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358040 (= res!902850 (validKeyInArray!0 (select (arr!44647 a!3742) from!3120)))))

(declare-fun b!1358041 () Bool)

(declare-fun res!902844 () Bool)

(assert (=> b!1358041 (=> res!902844 e!770794)))

(assert (=> b!1358041 (= res!902844 (contains!9433 lt!599211 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358042 () Bool)

(declare-fun res!902842 () Bool)

(assert (=> b!1358042 (=> res!902842 e!770794)))

(assert (=> b!1358042 (= res!902842 (contains!9433 lt!599211 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358043 () Bool)

(declare-fun res!902849 () Bool)

(assert (=> b!1358043 (=> res!902849 e!770794)))

(assert (=> b!1358043 (= res!902849 (not (subseq!824 acc!759 lt!599211)))))

(declare-fun b!1358044 () Bool)

(declare-fun res!902840 () Bool)

(assert (=> b!1358044 (=> (not res!902840) (not e!770792))))

(declare-fun noDuplicate!2312 (List!31868) Bool)

(assert (=> b!1358044 (= res!902840 (noDuplicate!2312 acc!759))))

(declare-fun b!1358045 () Bool)

(declare-fun res!902841 () Bool)

(assert (=> b!1358045 (=> (not res!902841) (not e!770792))))

(assert (=> b!1358045 (= res!902841 (not (contains!9433 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358046 () Bool)

(declare-fun res!902843 () Bool)

(assert (=> b!1358046 (=> (not res!902843) (not e!770792))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358046 (= res!902843 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358047 () Bool)

(declare-fun res!902852 () Bool)

(assert (=> b!1358047 (=> (not res!902852) (not e!770792))))

(assert (=> b!1358047 (= res!902852 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358048 () Bool)

(declare-fun res!902845 () Bool)

(assert (=> b!1358048 (=> res!902845 e!770794)))

(assert (=> b!1358048 (= res!902845 (not (noDuplicate!2312 lt!599211)))))

(assert (= (and start!114446 res!902848) b!1358044))

(assert (= (and b!1358044 res!902840) b!1358034))

(assert (= (and b!1358034 res!902846) b!1358045))

(assert (= (and b!1358045 res!902841) b!1358035))

(assert (= (and b!1358035 res!902839) b!1358047))

(assert (= (and b!1358047 res!902852) b!1358037))

(assert (= (and b!1358037 res!902847) b!1358046))

(assert (= (and b!1358046 res!902843) b!1358038))

(assert (= (and b!1358038 res!902853) b!1358040))

(assert (= (and b!1358040 res!902850) b!1358039))

(assert (= (and b!1358039 (not res!902851)) b!1358048))

(assert (= (and b!1358048 (not res!902845)) b!1358042))

(assert (= (and b!1358042 (not res!902842)) b!1358041))

(assert (= (and b!1358041 (not res!902844)) b!1358043))

(assert (= (and b!1358043 (not res!902849)) b!1358036))

(declare-fun m!1243687 () Bool)

(assert (=> b!1358044 m!1243687))

(declare-fun m!1243689 () Bool)

(assert (=> b!1358045 m!1243689))

(declare-fun m!1243691 () Bool)

(assert (=> b!1358047 m!1243691))

(declare-fun m!1243693 () Bool)

(assert (=> start!114446 m!1243693))

(declare-fun m!1243695 () Bool)

(assert (=> b!1358040 m!1243695))

(assert (=> b!1358040 m!1243695))

(declare-fun m!1243697 () Bool)

(assert (=> b!1358040 m!1243697))

(declare-fun m!1243699 () Bool)

(assert (=> b!1358043 m!1243699))

(declare-fun m!1243701 () Bool)

(assert (=> b!1358036 m!1243701))

(declare-fun m!1243703 () Bool)

(assert (=> b!1358036 m!1243703))

(assert (=> b!1358039 m!1243695))

(assert (=> b!1358039 m!1243695))

(declare-fun m!1243705 () Bool)

(assert (=> b!1358039 m!1243705))

(declare-fun m!1243707 () Bool)

(assert (=> b!1358039 m!1243707))

(declare-fun m!1243709 () Bool)

(assert (=> b!1358039 m!1243709))

(declare-fun m!1243711 () Bool)

(assert (=> b!1358048 m!1243711))

(declare-fun m!1243713 () Bool)

(assert (=> b!1358035 m!1243713))

(declare-fun m!1243715 () Bool)

(assert (=> b!1358046 m!1243715))

(declare-fun m!1243717 () Bool)

(assert (=> b!1358042 m!1243717))

(declare-fun m!1243719 () Bool)

(assert (=> b!1358041 m!1243719))

(declare-fun m!1243721 () Bool)

(assert (=> b!1358034 m!1243721))

(push 1)

(assert (not b!1358046))

(assert (not b!1358034))

(assert (not start!114446))

(assert (not b!1358036))

(assert (not b!1358039))

(assert (not b!1358041))

(assert (not b!1358042))

(assert (not b!1358045))

(assert (not b!1358040))

(assert (not b!1358043))

(assert (not b!1358047))

(assert (not b!1358048))

(assert (not b!1358035))

(assert (not b!1358044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145265 () Bool)

(assert (=> d!145265 (= (validKeyInArray!0 (select (arr!44647 a!3742) from!3120)) (and (not (= (select (arr!44647 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44647 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358040 d!145265))

(declare-fun d!145271 () Bool)

(declare-fun lt!599241 () Bool)

(declare-fun content!691 (List!31868) (Set (_ BitVec 64)))

(assert (=> d!145271 (= lt!599241 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!691 lt!599211)))))

(declare-fun e!770860 () Bool)

(assert (=> d!145271 (= lt!599241 e!770860)))

(declare-fun res!902988 () Bool)

(assert (=> d!145271 (=> (not res!902988) (not e!770860))))

(assert (=> d!145271 (= res!902988 (is-Cons!31864 lt!599211))))

(assert (=> d!145271 (= (contains!9433 lt!599211 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599241)))

(declare-fun b!1358188 () Bool)

(declare-fun e!770859 () Bool)

(assert (=> b!1358188 (= e!770860 e!770859)))

(declare-fun res!902987 () Bool)

(assert (=> b!1358188 (=> res!902987 e!770859)))

(assert (=> b!1358188 (= res!902987 (= (h!33073 lt!599211) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358189 () Bool)

(assert (=> b!1358189 (= e!770859 (contains!9433 (t!46542 lt!599211) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145271 res!902988) b!1358188))

(assert (= (and b!1358188 (not res!902987)) b!1358189))

(declare-fun m!1243829 () Bool)

(assert (=> d!145271 m!1243829))

(declare-fun m!1243831 () Bool)

(assert (=> d!145271 m!1243831))

(declare-fun m!1243833 () Bool)

(assert (=> b!1358189 m!1243833))

(assert (=> b!1358042 d!145271))

(declare-fun d!145277 () Bool)

(declare-fun lt!599242 () Bool)

(assert (=> d!145277 (= lt!599242 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!691 lt!599211)))))

(declare-fun e!770866 () Bool)

(assert (=> d!145277 (= lt!599242 e!770866)))

(declare-fun res!902994 () Bool)

(assert (=> d!145277 (=> (not res!902994) (not e!770866))))

(assert (=> d!145277 (= res!902994 (is-Cons!31864 lt!599211))))

(assert (=> d!145277 (= (contains!9433 lt!599211 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599242)))

(declare-fun b!1358194 () Bool)

(declare-fun e!770865 () Bool)

(assert (=> b!1358194 (= e!770866 e!770865)))

(declare-fun res!902993 () Bool)

(assert (=> b!1358194 (=> res!902993 e!770865)))

(assert (=> b!1358194 (= res!902993 (= (h!33073 lt!599211) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358195 () Bool)

(assert (=> b!1358195 (= e!770865 (contains!9433 (t!46542 lt!599211) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145277 res!902994) b!1358194))

(assert (= (and b!1358194 (not res!902993)) b!1358195))

(assert (=> d!145277 m!1243829))

(declare-fun m!1243839 () Bool)

(assert (=> d!145277 m!1243839))

(declare-fun m!1243841 () Bool)

(assert (=> b!1358195 m!1243841))

(assert (=> b!1358041 d!145277))

(declare-fun b!1358221 () Bool)

(declare-fun e!770892 () Bool)

(assert (=> b!1358221 (= e!770892 (subseq!824 (t!46542 acc!759) (t!46542 lt!599211)))))

(declare-fun d!145283 () Bool)

(declare-fun res!903019 () Bool)

(declare-fun e!770889 () Bool)

(assert (=> d!145283 (=> res!903019 e!770889)))

(assert (=> d!145283 (= res!903019 (is-Nil!31865 acc!759))))

(assert (=> d!145283 (= (subseq!824 acc!759 lt!599211) e!770889)))

(declare-fun b!1358220 () Bool)

(declare-fun e!770890 () Bool)

(declare-fun e!770891 () Bool)

(assert (=> b!1358220 (= e!770890 e!770891)))

(declare-fun res!903017 () Bool)

(assert (=> b!1358220 (=> res!903017 e!770891)))

(assert (=> b!1358220 (= res!903017 e!770892)))

(declare-fun res!903018 () Bool)

(assert (=> b!1358220 (=> (not res!903018) (not e!770892))))

(assert (=> b!1358220 (= res!903018 (= (h!33073 acc!759) (h!33073 lt!599211)))))

(declare-fun b!1358219 () Bool)

(assert (=> b!1358219 (= e!770889 e!770890)))

(declare-fun res!903016 () Bool)

(assert (=> b!1358219 (=> (not res!903016) (not e!770890))))

(assert (=> b!1358219 (= res!903016 (is-Cons!31864 lt!599211))))

(declare-fun b!1358222 () Bool)

(assert (=> b!1358222 (= e!770891 (subseq!824 acc!759 (t!46542 lt!599211)))))

(assert (= (and d!145283 (not res!903019)) b!1358219))

(assert (= (and b!1358219 res!903016) b!1358220))

(assert (= (and b!1358220 res!903018) b!1358221))

(assert (= (and b!1358220 (not res!903017)) b!1358222))

(declare-fun m!1243851 () Bool)

(assert (=> b!1358221 m!1243851))

(declare-fun m!1243853 () Bool)

(assert (=> b!1358222 m!1243853))

(assert (=> b!1358043 d!145283))

(declare-fun d!145291 () Bool)

(declare-fun lt!599245 () Bool)

(assert (=> d!145291 (= lt!599245 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!691 acc!759)))))

(declare-fun e!770894 () Bool)

(assert (=> d!145291 (= lt!599245 e!770894)))

(declare-fun res!903021 () Bool)

(assert (=> d!145291 (=> (not res!903021) (not e!770894))))

(assert (=> d!145291 (= res!903021 (is-Cons!31864 acc!759))))

(assert (=> d!145291 (= (contains!9433 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599245)))

(declare-fun b!1358223 () Bool)

(declare-fun e!770893 () Bool)

(assert (=> b!1358223 (= e!770894 e!770893)))

(declare-fun res!903020 () Bool)

(assert (=> b!1358223 (=> res!903020 e!770893)))

(assert (=> b!1358223 (= res!903020 (= (h!33073 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358224 () Bool)

(assert (=> b!1358224 (= e!770893 (contains!9433 (t!46542 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145291 res!903021) b!1358223))

(assert (= (and b!1358223 (not res!903020)) b!1358224))

(declare-fun m!1243855 () Bool)

(assert (=> d!145291 m!1243855))

(declare-fun m!1243857 () Bool)

(assert (=> d!145291 m!1243857))

(declare-fun m!1243859 () Bool)

(assert (=> b!1358224 m!1243859))

(assert (=> b!1358034 d!145291))

(declare-fun d!145293 () Bool)

(declare-fun res!903037 () Bool)

(declare-fun e!770910 () Bool)

(assert (=> d!145293 (=> res!903037 e!770910)))

(assert (=> d!145293 (= res!903037 (is-Nil!31865 acc!759))))

(assert (=> d!145293 (= (noDuplicate!2312 acc!759) e!770910)))

(declare-fun b!1358240 () Bool)

(declare-fun e!770911 () Bool)

(assert (=> b!1358240 (= e!770910 e!770911)))

(declare-fun res!903038 () Bool)

(assert (=> b!1358240 (=> (not res!903038) (not e!770911))))

(assert (=> b!1358240 (= res!903038 (not (contains!9433 (t!46542 acc!759) (h!33073 acc!759))))))

(declare-fun b!1358241 () Bool)

(assert (=> b!1358241 (= e!770911 (noDuplicate!2312 (t!46542 acc!759)))))

(assert (= (and d!145293 (not res!903037)) b!1358240))

(assert (= (and b!1358240 res!903038) b!1358241))

(declare-fun m!1243883 () Bool)

(assert (=> b!1358240 m!1243883))

(declare-fun m!1243885 () Bool)

(assert (=> b!1358241 m!1243885))

(assert (=> b!1358044 d!145293))

(declare-fun bm!65277 () Bool)

(declare-fun call!65280 () Bool)

(declare-fun c!127047 () Bool)

(assert (=> bm!65277 (= call!65280 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127047 (Cons!31864 (select (arr!44647 a!3742) #b00000000000000000000000000000000) Nil!31865) Nil!31865)))))

(declare-fun b!1358273 () Bool)

(declare-fun e!770943 () Bool)

(declare-fun e!770940 () Bool)

(assert (=> b!1358273 (= e!770943 e!770940)))

(declare-fun res!903064 () Bool)

(assert (=> b!1358273 (=> (not res!903064) (not e!770940))))

(declare-fun e!770942 () Bool)

(assert (=> b!1358273 (= res!903064 (not e!770942))))

(declare-fun res!903065 () Bool)

(assert (=> b!1358273 (=> (not res!903065) (not e!770942))))

(assert (=> b!1358273 (= res!903065 (validKeyInArray!0 (select (arr!44647 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145309 () Bool)

(declare-fun res!903066 () Bool)

(assert (=> d!145309 (=> res!903066 e!770943)))

(assert (=> d!145309 (= res!903066 (bvsge #b00000000000000000000000000000000 (size!45198 a!3742)))))

(assert (=> d!145309 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31865) e!770943)))

(declare-fun b!1358274 () Bool)

(declare-fun e!770941 () Bool)

(assert (=> b!1358274 (= e!770941 call!65280)))

(declare-fun b!1358275 () Bool)

(assert (=> b!1358275 (= e!770942 (contains!9433 Nil!31865 (select (arr!44647 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1358276 () Bool)

(assert (=> b!1358276 (= e!770940 e!770941)))

(assert (=> b!1358276 (= c!127047 (validKeyInArray!0 (select (arr!44647 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1358277 () Bool)

(assert (=> b!1358277 (= e!770941 call!65280)))

(assert (= (and d!145309 (not res!903066)) b!1358273))

(assert (= (and b!1358273 res!903065) b!1358275))

(assert (= (and b!1358273 res!903064) b!1358276))

(assert (= (and b!1358276 c!127047) b!1358277))

(assert (= (and b!1358276 (not c!127047)) b!1358274))

(assert (= (or b!1358277 b!1358274) bm!65277))

(declare-fun m!1243909 () Bool)

(assert (=> bm!65277 m!1243909))

(declare-fun m!1243911 () Bool)

(assert (=> bm!65277 m!1243911))

(assert (=> b!1358273 m!1243909))

(assert (=> b!1358273 m!1243909))

(declare-fun m!1243913 () Bool)

(assert (=> b!1358273 m!1243913))

(assert (=> b!1358275 m!1243909))

(assert (=> b!1358275 m!1243909))

(declare-fun m!1243915 () Bool)

(assert (=> b!1358275 m!1243915))

(assert (=> b!1358276 m!1243909))

(assert (=> b!1358276 m!1243909))

(assert (=> b!1358276 m!1243913))

(assert (=> b!1358035 d!145309))

(declare-fun d!145327 () Bool)

(assert (=> d!145327 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358046 d!145327))

(declare-fun d!145329 () Bool)

(declare-fun lt!599256 () Bool)

(assert (=> d!145329 (= lt!599256 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!691 acc!759)))))

(declare-fun e!770951 () Bool)

(assert (=> d!145329 (= lt!599256 e!770951)))

(declare-fun res!903074 () Bool)

(assert (=> d!145329 (=> (not res!903074) (not e!770951))))

(assert (=> d!145329 (= res!903074 (is-Cons!31864 acc!759))))

(assert (=> d!145329 (= (contains!9433 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599256)))

(declare-fun b!1358284 () Bool)

(declare-fun e!770950 () Bool)

(assert (=> b!1358284 (= e!770951 e!770950)))

(declare-fun res!903073 () Bool)

(assert (=> b!1358284 (=> res!903073 e!770950)))

(assert (=> b!1358284 (= res!903073 (= (h!33073 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358285 () Bool)

(assert (=> b!1358285 (= e!770950 (contains!9433 (t!46542 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145329 res!903074) b!1358284))

(assert (= (and b!1358284 (not res!903073)) b!1358285))

(assert (=> d!145329 m!1243855))

(declare-fun m!1243917 () Bool)

(assert (=> d!145329 m!1243917))

(declare-fun m!1243919 () Bool)

(assert (=> b!1358285 m!1243919))

(assert (=> b!1358045 d!145329))

(declare-fun bm!65278 () Bool)

(declare-fun c!127050 () Bool)

(declare-fun call!65281 () Bool)

(assert (=> bm!65278 (= call!65281 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127050 (Cons!31864 (select (arr!44647 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1358290 () Bool)

(declare-fun e!770957 () Bool)

(declare-fun e!770954 () Bool)

(assert (=> b!1358290 (= e!770957 e!770954)))

(declare-fun res!903075 () Bool)

(assert (=> b!1358290 (=> (not res!903075) (not e!770954))))

(declare-fun e!770956 () Bool)

(assert (=> b!1358290 (= res!903075 (not e!770956))))

(declare-fun res!903076 () Bool)

(assert (=> b!1358290 (=> (not res!903076) (not e!770956))))

(assert (=> b!1358290 (= res!903076 (validKeyInArray!0 (select (arr!44647 a!3742) from!3120)))))

(declare-fun d!145331 () Bool)

(declare-fun res!903077 () Bool)

(assert (=> d!145331 (=> res!903077 e!770957)))

(assert (=> d!145331 (= res!903077 (bvsge from!3120 (size!45198 a!3742)))))

(assert (=> d!145331 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770957)))

(declare-fun b!1358291 () Bool)

(declare-fun e!770955 () Bool)

(assert (=> b!1358291 (= e!770955 call!65281)))

(declare-fun b!1358292 () Bool)

(assert (=> b!1358292 (= e!770956 (contains!9433 acc!759 (select (arr!44647 a!3742) from!3120)))))

(declare-fun b!1358293 () Bool)

(assert (=> b!1358293 (= e!770954 e!770955)))

(assert (=> b!1358293 (= c!127050 (validKeyInArray!0 (select (arr!44647 a!3742) from!3120)))))

(declare-fun b!1358294 () Bool)

(assert (=> b!1358294 (= e!770955 call!65281)))

(assert (= (and d!145331 (not res!903077)) b!1358290))

(assert (= (and b!1358290 res!903076) b!1358292))

(assert (= (and b!1358290 res!903075) b!1358293))

(assert (= (and b!1358293 c!127050) b!1358294))

(assert (= (and b!1358293 (not c!127050)) b!1358291))

(assert (= (or b!1358294 b!1358291) bm!65278))

(assert (=> bm!65278 m!1243695))

(declare-fun m!1243921 () Bool)

(assert (=> bm!65278 m!1243921))

(assert (=> b!1358290 m!1243695))

(assert (=> b!1358290 m!1243695))

(assert (=> b!1358290 m!1243697))

(assert (=> b!1358292 m!1243695))

(assert (=> b!1358292 m!1243695))

(declare-fun m!1243923 () Bool)

(assert (=> b!1358292 m!1243923))

(assert (=> b!1358293 m!1243695))

(assert (=> b!1358293 m!1243695))

(assert (=> b!1358293 m!1243697))

(assert (=> b!1358047 d!145331))

(declare-fun d!145333 () Bool)

(assert (=> d!145333 (= (array_inv!33592 a!3742) (bvsge (size!45198 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114446 d!145333))

(declare-fun call!65284 () Bool)

(declare-fun bm!65281 () Bool)

(declare-fun c!127051 () Bool)

(assert (=> bm!65281 (= call!65284 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127051 (Cons!31864 (select (arr!44647 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!599211) lt!599211)))))

(declare-fun b!1358295 () Bool)

(declare-fun e!770961 () Bool)

(declare-fun e!770958 () Bool)

(assert (=> b!1358295 (= e!770961 e!770958)))

(declare-fun res!903078 () Bool)

(assert (=> b!1358295 (=> (not res!903078) (not e!770958))))

(declare-fun e!770960 () Bool)

(assert (=> b!1358295 (= res!903078 (not e!770960))))

(declare-fun res!903079 () Bool)

(assert (=> b!1358295 (=> (not res!903079) (not e!770960))))

(assert (=> b!1358295 (= res!903079 (validKeyInArray!0 (select (arr!44647 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145335 () Bool)

(declare-fun res!903080 () Bool)

(assert (=> d!145335 (=> res!903080 e!770961)))

(assert (=> d!145335 (= res!903080 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45198 a!3742)))))

