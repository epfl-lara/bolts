; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114450 () Bool)

(assert start!114450)

(declare-fun b!1358124 () Bool)

(declare-fun res!902930 () Bool)

(declare-fun e!770812 () Bool)

(assert (=> b!1358124 (=> (not res!902930) (not e!770812))))

(declare-datatypes ((List!31870 0))(
  ( (Nil!31867) (Cons!31866 (h!33075 (_ BitVec 64)) (t!46544 List!31870)) )
))
(declare-fun acc!759 () List!31870)

(declare-fun contains!9435 (List!31870 (_ BitVec 64)) Bool)

(assert (=> b!1358124 (= res!902930 (not (contains!9435 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!902937 () Bool)

(assert (=> start!114450 (=> (not res!902937) (not e!770812))))

(declare-datatypes ((array!92420 0))(
  ( (array!92421 (arr!44649 (Array (_ BitVec 32) (_ BitVec 64))) (size!45200 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92420)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114450 (= res!902937 (and (bvslt (size!45200 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45200 a!3742))))))

(assert (=> start!114450 e!770812))

(assert (=> start!114450 true))

(declare-fun array_inv!33594 (array!92420) Bool)

(assert (=> start!114450 (array_inv!33594 a!3742)))

(declare-fun b!1358125 () Bool)

(declare-fun res!902931 () Bool)

(assert (=> b!1358125 (=> (not res!902931) (not e!770812))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358125 (= res!902931 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45200 a!3742))))))

(declare-fun b!1358126 () Bool)

(declare-fun e!770811 () Bool)

(assert (=> b!1358126 (= e!770812 (not e!770811))))

(declare-fun res!902935 () Bool)

(assert (=> b!1358126 (=> res!902935 e!770811)))

(assert (=> b!1358126 (= res!902935 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun lt!599230 () List!31870)

(declare-fun $colon$colon!831 (List!31870 (_ BitVec 64)) List!31870)

(assert (=> b!1358126 (= lt!599230 ($colon$colon!831 acc!759 (select (arr!44649 a!3742) from!3120)))))

(declare-fun subseq!826 (List!31870 List!31870) Bool)

(assert (=> b!1358126 (subseq!826 acc!759 acc!759)))

(declare-datatypes ((Unit!44631 0))(
  ( (Unit!44632) )
))
(declare-fun lt!599231 () Unit!44631)

(declare-fun lemmaListSubSeqRefl!0 (List!31870) Unit!44631)

(assert (=> b!1358126 (= lt!599231 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1358127 () Bool)

(declare-fun res!902936 () Bool)

(assert (=> b!1358127 (=> (not res!902936) (not e!770812))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358127 (= res!902936 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358128 () Bool)

(declare-fun res!902941 () Bool)

(assert (=> b!1358128 (=> (not res!902941) (not e!770812))))

(declare-fun noDuplicate!2314 (List!31870) Bool)

(assert (=> b!1358128 (= res!902941 (noDuplicate!2314 acc!759))))

(declare-fun b!1358129 () Bool)

(declare-fun res!902943 () Bool)

(assert (=> b!1358129 (=> (not res!902943) (not e!770812))))

(declare-fun arrayNoDuplicates!0 (array!92420 (_ BitVec 32) List!31870) Bool)

(assert (=> b!1358129 (= res!902943 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358130 () Bool)

(declare-fun res!902942 () Bool)

(assert (=> b!1358130 (=> (not res!902942) (not e!770812))))

(assert (=> b!1358130 (= res!902942 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31867))))

(declare-fun b!1358131 () Bool)

(declare-fun res!902932 () Bool)

(assert (=> b!1358131 (=> (not res!902932) (not e!770812))))

(assert (=> b!1358131 (= res!902932 (not (contains!9435 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358132 () Bool)

(declare-fun res!902940 () Bool)

(assert (=> b!1358132 (=> res!902940 e!770811)))

(assert (=> b!1358132 (= res!902940 (contains!9435 lt!599230 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358133 () Bool)

(assert (=> b!1358133 (= e!770811 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!599230))))

(declare-fun lt!599229 () Unit!44631)

(declare-fun noDuplicateSubseq!136 (List!31870 List!31870) Unit!44631)

(assert (=> b!1358133 (= lt!599229 (noDuplicateSubseq!136 acc!759 lt!599230))))

(declare-fun b!1358134 () Bool)

(declare-fun res!902939 () Bool)

(assert (=> b!1358134 (=> (not res!902939) (not e!770812))))

(assert (=> b!1358134 (= res!902939 (validKeyInArray!0 (select (arr!44649 a!3742) from!3120)))))

(declare-fun b!1358135 () Bool)

(declare-fun res!902929 () Bool)

(assert (=> b!1358135 (=> (not res!902929) (not e!770812))))

(assert (=> b!1358135 (= res!902929 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45200 a!3742)))))

(declare-fun b!1358136 () Bool)

(declare-fun res!902938 () Bool)

(assert (=> b!1358136 (=> res!902938 e!770811)))

(assert (=> b!1358136 (= res!902938 (contains!9435 lt!599230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358137 () Bool)

(declare-fun res!902934 () Bool)

(assert (=> b!1358137 (=> res!902934 e!770811)))

(assert (=> b!1358137 (= res!902934 (not (noDuplicate!2314 lt!599230)))))

(declare-fun b!1358138 () Bool)

(declare-fun res!902933 () Bool)

(assert (=> b!1358138 (=> res!902933 e!770811)))

(assert (=> b!1358138 (= res!902933 (not (subseq!826 acc!759 lt!599230)))))

(assert (= (and start!114450 res!902937) b!1358128))

(assert (= (and b!1358128 res!902941) b!1358124))

(assert (= (and b!1358124 res!902930) b!1358131))

(assert (= (and b!1358131 res!902932) b!1358130))

(assert (= (and b!1358130 res!902942) b!1358129))

(assert (= (and b!1358129 res!902943) b!1358125))

(assert (= (and b!1358125 res!902931) b!1358127))

(assert (= (and b!1358127 res!902936) b!1358135))

(assert (= (and b!1358135 res!902929) b!1358134))

(assert (= (and b!1358134 res!902939) b!1358126))

(assert (= (and b!1358126 (not res!902935)) b!1358137))

(assert (= (and b!1358137 (not res!902934)) b!1358136))

(assert (= (and b!1358136 (not res!902938)) b!1358132))

(assert (= (and b!1358132 (not res!902940)) b!1358138))

(assert (= (and b!1358138 (not res!902933)) b!1358133))

(declare-fun m!1243759 () Bool)

(assert (=> b!1358132 m!1243759))

(declare-fun m!1243761 () Bool)

(assert (=> b!1358128 m!1243761))

(declare-fun m!1243763 () Bool)

(assert (=> start!114450 m!1243763))

(declare-fun m!1243765 () Bool)

(assert (=> b!1358131 m!1243765))

(declare-fun m!1243767 () Bool)

(assert (=> b!1358134 m!1243767))

(assert (=> b!1358134 m!1243767))

(declare-fun m!1243769 () Bool)

(assert (=> b!1358134 m!1243769))

(declare-fun m!1243771 () Bool)

(assert (=> b!1358127 m!1243771))

(assert (=> b!1358126 m!1243767))

(assert (=> b!1358126 m!1243767))

(declare-fun m!1243773 () Bool)

(assert (=> b!1358126 m!1243773))

(declare-fun m!1243775 () Bool)

(assert (=> b!1358126 m!1243775))

(declare-fun m!1243777 () Bool)

(assert (=> b!1358126 m!1243777))

(declare-fun m!1243779 () Bool)

(assert (=> b!1358133 m!1243779))

(declare-fun m!1243781 () Bool)

(assert (=> b!1358133 m!1243781))

(declare-fun m!1243783 () Bool)

(assert (=> b!1358129 m!1243783))

(declare-fun m!1243785 () Bool)

(assert (=> b!1358136 m!1243785))

(declare-fun m!1243787 () Bool)

(assert (=> b!1358124 m!1243787))

(declare-fun m!1243789 () Bool)

(assert (=> b!1358130 m!1243789))

(declare-fun m!1243791 () Bool)

(assert (=> b!1358137 m!1243791))

(declare-fun m!1243793 () Bool)

(assert (=> b!1358138 m!1243793))

(push 1)

(assert (not b!1358132))

(assert (not b!1358130))

(assert (not b!1358129))

(assert (not b!1358138))

(assert (not start!114450))

(assert (not b!1358128))

(assert (not b!1358131))

(assert (not b!1358134))

(assert (not b!1358137))

(assert (not b!1358127))

(assert (not b!1358124))

(assert (not b!1358136))

(assert (not b!1358126))

(assert (not b!1358133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145267 () Bool)

(declare-fun lt!599239 () Bool)

(declare-fun content!692 (List!31870) (Set (_ BitVec 64)))

(assert (=> d!145267 (= lt!599239 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!692 acc!759)))))

(declare-fun e!770855 () Bool)

(assert (=> d!145267 (= lt!599239 e!770855)))

(declare-fun res!902983 () Bool)

(assert (=> d!145267 (=> (not res!902983) (not e!770855))))

(assert (=> d!145267 (= res!902983 (is-Cons!31866 acc!759))))

(assert (=> d!145267 (= (contains!9435 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599239)))

(declare-fun b!1358184 () Bool)

(declare-fun e!770856 () Bool)

(assert (=> b!1358184 (= e!770855 e!770856)))

(declare-fun res!902984 () Bool)

(assert (=> b!1358184 (=> res!902984 e!770856)))

(assert (=> b!1358184 (= res!902984 (= (h!33075 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358185 () Bool)

(assert (=> b!1358185 (= e!770856 (contains!9435 (t!46544 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145267 res!902983) b!1358184))

(assert (= (and b!1358184 (not res!902984)) b!1358185))

(declare-fun m!1243817 () Bool)

(assert (=> d!145267 m!1243817))

(declare-fun m!1243819 () Bool)

(assert (=> d!145267 m!1243819))

(declare-fun m!1243821 () Bool)

(assert (=> b!1358185 m!1243821))

(assert (=> b!1358124 d!145267))

(declare-fun d!145273 () Bool)

(declare-fun lt!599240 () Bool)

(assert (=> d!145273 (= lt!599240 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!692 lt!599230)))))

(declare-fun e!770857 () Bool)

(assert (=> d!145273 (= lt!599240 e!770857)))

(declare-fun res!902985 () Bool)

(assert (=> d!145273 (=> (not res!902985) (not e!770857))))

(assert (=> d!145273 (= res!902985 (is-Cons!31866 lt!599230))))

(assert (=> d!145273 (= (contains!9435 lt!599230 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599240)))

(declare-fun b!1358186 () Bool)

(declare-fun e!770858 () Bool)

(assert (=> b!1358186 (= e!770857 e!770858)))

(declare-fun res!902986 () Bool)

(assert (=> b!1358186 (=> res!902986 e!770858)))

(assert (=> b!1358186 (= res!902986 (= (h!33075 lt!599230) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1358187 () Bool)

(assert (=> b!1358187 (= e!770858 (contains!9435 (t!46544 lt!599230) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145273 res!902985) b!1358186))

(assert (= (and b!1358186 (not res!902986)) b!1358187))

(declare-fun m!1243823 () Bool)

(assert (=> d!145273 m!1243823))

(declare-fun m!1243825 () Bool)

(assert (=> d!145273 m!1243825))

(declare-fun m!1243827 () Bool)

(assert (=> b!1358187 m!1243827))

(assert (=> b!1358136 d!145273))

(declare-fun d!145275 () Bool)

(assert (=> d!145275 (= (array_inv!33594 a!3742) (bvsge (size!45200 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114450 d!145275))

(declare-fun d!145281 () Bool)

(assert (=> d!145281 (= ($colon$colon!831 acc!759 (select (arr!44649 a!3742) from!3120)) (Cons!31866 (select (arr!44649 a!3742) from!3120) acc!759))))

(assert (=> b!1358126 d!145281))

(declare-fun b!1358228 () Bool)

(declare-fun e!770895 () Bool)

(assert (=> b!1358228 (= e!770895 (subseq!826 acc!759 (t!46544 acc!759)))))

(declare-fun b!1358225 () Bool)

(declare-fun e!770898 () Bool)

(declare-fun e!770897 () Bool)

(assert (=> b!1358225 (= e!770898 e!770897)))

(declare-fun res!903024 () Bool)

(assert (=> b!1358225 (=> (not res!903024) (not e!770897))))

(assert (=> b!1358225 (= res!903024 (is-Cons!31866 acc!759))))

(declare-fun b!1358226 () Bool)

(assert (=> b!1358226 (= e!770897 e!770895)))

(declare-fun res!903023 () Bool)

(assert (=> b!1358226 (=> res!903023 e!770895)))

(declare-fun e!770896 () Bool)

(assert (=> b!1358226 (= res!903023 e!770896)))

(declare-fun res!903025 () Bool)

(assert (=> b!1358226 (=> (not res!903025) (not e!770896))))

(assert (=> b!1358226 (= res!903025 (= (h!33075 acc!759) (h!33075 acc!759)))))

(declare-fun d!145285 () Bool)

(declare-fun res!903022 () Bool)

(assert (=> d!145285 (=> res!903022 e!770898)))

(assert (=> d!145285 (= res!903022 (is-Nil!31867 acc!759))))

(assert (=> d!145285 (= (subseq!826 acc!759 acc!759) e!770898)))

(declare-fun b!1358227 () Bool)

(assert (=> b!1358227 (= e!770896 (subseq!826 (t!46544 acc!759) (t!46544 acc!759)))))

(assert (= (and d!145285 (not res!903022)) b!1358225))

(assert (= (and b!1358225 res!903024) b!1358226))

(assert (= (and b!1358226 res!903025) b!1358227))

(assert (= (and b!1358226 (not res!903023)) b!1358228))

(declare-fun m!1243861 () Bool)

(assert (=> b!1358228 m!1243861))

(declare-fun m!1243863 () Bool)

(assert (=> b!1358227 m!1243863))

(assert (=> b!1358126 d!145285))

(declare-fun d!145295 () Bool)

(assert (=> d!145295 (subseq!826 acc!759 acc!759)))

(declare-fun lt!599252 () Unit!44631)

(declare-fun choose!36 (List!31870) Unit!44631)

(assert (=> d!145295 (= lt!599252 (choose!36 acc!759))))

(assert (=> d!145295 (= (lemmaListSubSeqRefl!0 acc!759) lt!599252)))

(declare-fun bs!38942 () Bool)

(assert (= bs!38942 d!145295))

(assert (=> bs!38942 m!1243775))

(declare-fun m!1243877 () Bool)

(assert (=> bs!38942 m!1243877))

(assert (=> b!1358126 d!145295))

(declare-fun d!145303 () Bool)

(declare-fun res!903047 () Bool)

(declare-fun e!770920 () Bool)

(assert (=> d!145303 (=> res!903047 e!770920)))

(assert (=> d!145303 (= res!903047 (is-Nil!31867 lt!599230))))

(assert (=> d!145303 (= (noDuplicate!2314 lt!599230) e!770920)))

(declare-fun b!1358250 () Bool)

(declare-fun e!770921 () Bool)

(assert (=> b!1358250 (= e!770920 e!770921)))

(declare-fun res!903048 () Bool)

(assert (=> b!1358250 (=> (not res!903048) (not e!770921))))

(assert (=> b!1358250 (= res!903048 (not (contains!9435 (t!46544 lt!599230) (h!33075 lt!599230))))))

(declare-fun b!1358251 () Bool)

(assert (=> b!1358251 (= e!770921 (noDuplicate!2314 (t!46544 lt!599230)))))

(assert (= (and d!145303 (not res!903047)) b!1358250))

(assert (= (and b!1358250 res!903048) b!1358251))

(declare-fun m!1243891 () Bool)

(assert (=> b!1358250 m!1243891))

(declare-fun m!1243893 () Bool)

(assert (=> b!1358251 m!1243893))

(assert (=> b!1358137 d!145303))

(declare-fun b!1358255 () Bool)

(declare-fun e!770922 () Bool)

(assert (=> b!1358255 (= e!770922 (subseq!826 acc!759 (t!46544 lt!599230)))))

(declare-fun b!1358252 () Bool)

(declare-fun e!770925 () Bool)

(declare-fun e!770924 () Bool)

(assert (=> b!1358252 (= e!770925 e!770924)))

(declare-fun res!903051 () Bool)

(assert (=> b!1358252 (=> (not res!903051) (not e!770924))))

(assert (=> b!1358252 (= res!903051 (is-Cons!31866 lt!599230))))

(declare-fun b!1358253 () Bool)

(assert (=> b!1358253 (= e!770924 e!770922)))

(declare-fun res!903050 () Bool)

(assert (=> b!1358253 (=> res!903050 e!770922)))

(declare-fun e!770923 () Bool)

(assert (=> b!1358253 (= res!903050 e!770923)))

(declare-fun res!903052 () Bool)

(assert (=> b!1358253 (=> (not res!903052) (not e!770923))))

(assert (=> b!1358253 (= res!903052 (= (h!33075 acc!759) (h!33075 lt!599230)))))

(declare-fun d!145313 () Bool)

(declare-fun res!903049 () Bool)

(assert (=> d!145313 (=> res!903049 e!770925)))

(assert (=> d!145313 (= res!903049 (is-Nil!31867 acc!759))))

(assert (=> d!145313 (= (subseq!826 acc!759 lt!599230) e!770925)))

(declare-fun b!1358254 () Bool)

(assert (=> b!1358254 (= e!770923 (subseq!826 (t!46544 acc!759) (t!46544 lt!599230)))))

(assert (= (and d!145313 (not res!903049)) b!1358252))

(assert (= (and b!1358252 res!903051) b!1358253))

(assert (= (and b!1358253 res!903052) b!1358254))

(assert (= (and b!1358253 (not res!903050)) b!1358255))

(declare-fun m!1243897 () Bool)

(assert (=> b!1358255 m!1243897))

(declare-fun m!1243899 () Bool)

(assert (=> b!1358254 m!1243899))

(assert (=> b!1358138 d!145313))

(declare-fun d!145317 () Bool)

(assert (=> d!145317 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1358127 d!145317))

(declare-fun d!145323 () Bool)

(declare-fun res!903056 () Bool)

(declare-fun e!770930 () Bool)

(assert (=> d!145323 (=> res!903056 e!770930)))

(assert (=> d!145323 (= res!903056 (is-Nil!31867 acc!759))))

(assert (=> d!145323 (= (noDuplicate!2314 acc!759) e!770930)))

(declare-fun b!1358261 () Bool)

(declare-fun e!770931 () Bool)

(assert (=> b!1358261 (= e!770930 e!770931)))

(declare-fun res!903057 () Bool)

(assert (=> b!1358261 (=> (not res!903057) (not e!770931))))

(assert (=> b!1358261 (= res!903057 (not (contains!9435 (t!46544 acc!759) (h!33075 acc!759))))))

(declare-fun b!1358262 () Bool)

