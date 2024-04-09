; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114278 () Bool)

(assert start!114278)

(declare-fun b!1357099 () Bool)

(declare-fun res!901983 () Bool)

(declare-fun e!770243 () Bool)

(assert (=> b!1357099 (=> (not res!901983) (not e!770243))))

(declare-datatypes ((List!31856 0))(
  ( (Nil!31853) (Cons!31852 (h!33061 (_ BitVec 64)) (t!46521 List!31856)) )
))
(declare-fun acc!759 () List!31856)

(declare-fun contains!9421 (List!31856 (_ BitVec 64)) Bool)

(assert (=> b!1357099 (= res!901983 (not (contains!9421 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357100 () Bool)

(declare-fun res!901984 () Bool)

(assert (=> b!1357100 (=> (not res!901984) (not e!770243))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357100 (= res!901984 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!901977 () Bool)

(assert (=> start!114278 (=> (not res!901977) (not e!770243))))

(declare-datatypes ((array!92383 0))(
  ( (array!92384 (arr!44635 (Array (_ BitVec 32) (_ BitVec 64))) (size!45186 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92383)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114278 (= res!901977 (and (bvslt (size!45186 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45186 a!3742))))))

(assert (=> start!114278 e!770243))

(assert (=> start!114278 true))

(declare-fun array_inv!33580 (array!92383) Bool)

(assert (=> start!114278 (array_inv!33580 a!3742)))

(declare-fun b!1357101 () Bool)

(declare-fun res!901985 () Bool)

(assert (=> b!1357101 (=> (not res!901985) (not e!770243))))

(assert (=> b!1357101 (= res!901985 (not (contains!9421 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357102 () Bool)

(declare-fun res!901976 () Bool)

(assert (=> b!1357102 (=> (not res!901976) (not e!770243))))

(assert (=> b!1357102 (= res!901976 (validKeyInArray!0 (select (arr!44635 a!3742) from!3120)))))

(declare-fun b!1357103 () Bool)

(declare-fun res!901981 () Bool)

(assert (=> b!1357103 (=> (not res!901981) (not e!770243))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357103 (= res!901981 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45186 a!3742))))))

(declare-fun b!1357104 () Bool)

(declare-fun e!770245 () Bool)

(assert (=> b!1357104 (= e!770243 (not e!770245))))

(declare-fun res!901979 () Bool)

(assert (=> b!1357104 (=> res!901979 e!770245)))

(assert (=> b!1357104 (= res!901979 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun subseq!812 (List!31856 List!31856) Bool)

(assert (=> b!1357104 (subseq!812 acc!759 acc!759)))

(declare-datatypes ((Unit!44603 0))(
  ( (Unit!44604) )
))
(declare-fun lt!599060 () Unit!44603)

(declare-fun lemmaListSubSeqRefl!0 (List!31856) Unit!44603)

(assert (=> b!1357104 (= lt!599060 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357105 () Bool)

(declare-fun res!901982 () Bool)

(assert (=> b!1357105 (=> (not res!901982) (not e!770243))))

(declare-fun arrayNoDuplicates!0 (array!92383 (_ BitVec 32) List!31856) Bool)

(assert (=> b!1357105 (= res!901982 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357106 () Bool)

(declare-fun res!901980 () Bool)

(assert (=> b!1357106 (=> (not res!901980) (not e!770243))))

(assert (=> b!1357106 (= res!901980 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45186 a!3742)))))

(declare-fun b!1357107 () Bool)

(declare-fun res!901986 () Bool)

(assert (=> b!1357107 (=> (not res!901986) (not e!770243))))

(declare-fun noDuplicate!2300 (List!31856) Bool)

(assert (=> b!1357107 (= res!901986 (noDuplicate!2300 acc!759))))

(declare-fun b!1357108 () Bool)

(declare-fun $colon$colon!817 (List!31856 (_ BitVec 64)) List!31856)

(assert (=> b!1357108 (= e!770245 (noDuplicate!2300 ($colon$colon!817 acc!759 (select (arr!44635 a!3742) from!3120))))))

(declare-fun b!1357109 () Bool)

(declare-fun res!901978 () Bool)

(assert (=> b!1357109 (=> (not res!901978) (not e!770243))))

(assert (=> b!1357109 (= res!901978 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31853))))

(assert (= (and start!114278 res!901977) b!1357107))

(assert (= (and b!1357107 res!901986) b!1357101))

(assert (= (and b!1357101 res!901985) b!1357099))

(assert (= (and b!1357099 res!901983) b!1357109))

(assert (= (and b!1357109 res!901978) b!1357105))

(assert (= (and b!1357105 res!901982) b!1357103))

(assert (= (and b!1357103 res!901981) b!1357100))

(assert (= (and b!1357100 res!901984) b!1357106))

(assert (= (and b!1357106 res!901980) b!1357102))

(assert (= (and b!1357102 res!901976) b!1357104))

(assert (= (and b!1357104 (not res!901979)) b!1357108))

(declare-fun m!1242937 () Bool)

(assert (=> b!1357105 m!1242937))

(declare-fun m!1242939 () Bool)

(assert (=> b!1357101 m!1242939))

(declare-fun m!1242941 () Bool)

(assert (=> b!1357108 m!1242941))

(assert (=> b!1357108 m!1242941))

(declare-fun m!1242943 () Bool)

(assert (=> b!1357108 m!1242943))

(assert (=> b!1357108 m!1242943))

(declare-fun m!1242945 () Bool)

(assert (=> b!1357108 m!1242945))

(declare-fun m!1242947 () Bool)

(assert (=> b!1357099 m!1242947))

(assert (=> b!1357102 m!1242941))

(assert (=> b!1357102 m!1242941))

(declare-fun m!1242949 () Bool)

(assert (=> b!1357102 m!1242949))

(declare-fun m!1242951 () Bool)

(assert (=> b!1357109 m!1242951))

(declare-fun m!1242953 () Bool)

(assert (=> b!1357100 m!1242953))

(declare-fun m!1242955 () Bool)

(assert (=> b!1357104 m!1242955))

(declare-fun m!1242957 () Bool)

(assert (=> b!1357104 m!1242957))

(declare-fun m!1242959 () Bool)

(assert (=> start!114278 m!1242959))

(declare-fun m!1242961 () Bool)

(assert (=> b!1357107 m!1242961))

(push 1)

(assert (not b!1357109))

(assert (not b!1357100))

(assert (not b!1357108))

(assert (not b!1357102))

(assert (not b!1357104))

(assert (not b!1357101))

(assert (not start!114278))

(assert (not b!1357107))

(assert (not b!1357105))

(assert (not b!1357099))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1357236 () Bool)

(declare-fun e!770318 () Bool)

(declare-fun call!65245 () Bool)

(assert (=> b!1357236 (= e!770318 call!65245)))

(declare-fun b!1357237 () Bool)

(declare-fun e!770319 () Bool)

(assert (=> b!1357237 (= e!770319 e!770318)))

(declare-fun c!127012 () Bool)

(assert (=> b!1357237 (= c!127012 (validKeyInArray!0 (select (arr!44635 a!3742) from!3120)))))

(declare-fun b!1357238 () Bool)

(declare-fun e!770316 () Bool)

(assert (=> b!1357238 (= e!770316 e!770319)))

(declare-fun res!902097 () Bool)

(assert (=> b!1357238 (=> (not res!902097) (not e!770319))))

(declare-fun e!770317 () Bool)

(assert (=> b!1357238 (= res!902097 (not e!770317))))

(declare-fun res!902099 () Bool)

(assert (=> b!1357238 (=> (not res!902099) (not e!770317))))

(assert (=> b!1357238 (= res!902099 (validKeyInArray!0 (select (arr!44635 a!3742) from!3120)))))

(declare-fun b!1357239 () Bool)

(assert (=> b!1357239 (= e!770318 call!65245)))

(declare-fun bm!65242 () Bool)

(assert (=> bm!65242 (= call!65245 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127012 (Cons!31852 (select (arr!44635 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!145013 () Bool)

(declare-fun res!902098 () Bool)

(assert (=> d!145013 (=> res!902098 e!770316)))

(assert (=> d!145013 (= res!902098 (bvsge from!3120 (size!45186 a!3742)))))

(assert (=> d!145013 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770316)))

(declare-fun b!1357240 () Bool)

(assert (=> b!1357240 (= e!770317 (contains!9421 acc!759 (select (arr!44635 a!3742) from!3120)))))

(assert (= (and d!145013 (not res!902098)) b!1357238))

(assert (= (and b!1357238 res!902099) b!1357240))

(assert (= (and b!1357238 res!902097) b!1357237))

(assert (= (and b!1357237 c!127012) b!1357239))

(assert (= (and b!1357237 (not c!127012)) b!1357236))

(assert (= (or b!1357239 b!1357236) bm!65242))

(assert (=> b!1357237 m!1242941))

(assert (=> b!1357237 m!1242941))

(assert (=> b!1357237 m!1242949))

(assert (=> b!1357238 m!1242941))

(assert (=> b!1357238 m!1242941))

(assert (=> b!1357238 m!1242949))

(assert (=> bm!65242 m!1242941))

(declare-fun m!1243037 () Bool)

(assert (=> bm!65242 m!1243037))

(assert (=> b!1357240 m!1242941))

(assert (=> b!1357240 m!1242941))

(declare-fun m!1243039 () Bool)

(assert (=> b!1357240 m!1243039))

(assert (=> b!1357105 d!145013))

(declare-fun d!145029 () Bool)

(assert (=> d!145029 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357100 d!145029))

(declare-fun d!145031 () Bool)

(declare-fun lt!599079 () Bool)

(declare-fun content!683 (List!31856) (Set (_ BitVec 64)))

(assert (=> d!145031 (= lt!599079 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!683 acc!759)))))

(declare-fun e!770343 () Bool)

(assert (=> d!145031 (= lt!599079 e!770343)))

(declare-fun res!902121 () Bool)

(assert (=> d!145031 (=> (not res!902121) (not e!770343))))

(assert (=> d!145031 (= res!902121 (is-Cons!31852 acc!759))))

(assert (=> d!145031 (= (contains!9421 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599079)))

(declare-fun b!1357264 () Bool)

(declare-fun e!770342 () Bool)

(assert (=> b!1357264 (= e!770343 e!770342)))

(declare-fun res!902122 () Bool)

(assert (=> b!1357264 (=> res!902122 e!770342)))

(assert (=> b!1357264 (= res!902122 (= (h!33061 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357265 () Bool)

(assert (=> b!1357265 (= e!770342 (contains!9421 (t!46521 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145031 res!902121) b!1357264))

(assert (= (and b!1357264 (not res!902122)) b!1357265))

(declare-fun m!1243059 () Bool)

(assert (=> d!145031 m!1243059))

(declare-fun m!1243063 () Bool)

(assert (=> d!145031 m!1243063))

(declare-fun m!1243065 () Bool)

(assert (=> b!1357265 m!1243065))

(assert (=> b!1357099 d!145031))

(declare-fun b!1357266 () Bool)

(declare-fun e!770346 () Bool)

(declare-fun call!65247 () Bool)

(assert (=> b!1357266 (= e!770346 call!65247)))

(declare-fun b!1357267 () Bool)

(declare-fun e!770347 () Bool)

(assert (=> b!1357267 (= e!770347 e!770346)))

(declare-fun c!127014 () Bool)

(assert (=> b!1357267 (= c!127014 (validKeyInArray!0 (select (arr!44635 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357268 () Bool)

(declare-fun e!770344 () Bool)

(assert (=> b!1357268 (= e!770344 e!770347)))

(declare-fun res!902123 () Bool)

(assert (=> b!1357268 (=> (not res!902123) (not e!770347))))

(declare-fun e!770345 () Bool)

(assert (=> b!1357268 (= res!902123 (not e!770345))))

(declare-fun res!902125 () Bool)

(assert (=> b!1357268 (=> (not res!902125) (not e!770345))))

(assert (=> b!1357268 (= res!902125 (validKeyInArray!0 (select (arr!44635 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357269 () Bool)

(assert (=> b!1357269 (= e!770346 call!65247)))

(declare-fun bm!65244 () Bool)

(assert (=> bm!65244 (= call!65247 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127014 (Cons!31852 (select (arr!44635 a!3742) #b00000000000000000000000000000000) Nil!31853) Nil!31853)))))

(declare-fun d!145043 () Bool)

(declare-fun res!902124 () Bool)

(assert (=> d!145043 (=> res!902124 e!770344)))

(assert (=> d!145043 (= res!902124 (bvsge #b00000000000000000000000000000000 (size!45186 a!3742)))))

(assert (=> d!145043 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31853) e!770344)))

(declare-fun b!1357270 () Bool)

(assert (=> b!1357270 (= e!770345 (contains!9421 Nil!31853 (select (arr!44635 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145043 (not res!902124)) b!1357268))

(assert (= (and b!1357268 res!902125) b!1357270))

(assert (= (and b!1357268 res!902123) b!1357267))

(assert (= (and b!1357267 c!127014) b!1357269))

(assert (= (and b!1357267 (not c!127014)) b!1357266))

(assert (= (or b!1357269 b!1357266) bm!65244))

(declare-fun m!1243071 () Bool)

(assert (=> b!1357267 m!1243071))

(assert (=> b!1357267 m!1243071))

(declare-fun m!1243073 () Bool)

(assert (=> b!1357267 m!1243073))

(assert (=> b!1357268 m!1243071))

(assert (=> b!1357268 m!1243071))

(assert (=> b!1357268 m!1243073))

(assert (=> bm!65244 m!1243071))

(declare-fun m!1243075 () Bool)

(assert (=> bm!65244 m!1243075))

(assert (=> b!1357270 m!1243071))

(assert (=> b!1357270 m!1243071))

(declare-fun m!1243077 () Bool)

(assert (=> b!1357270 m!1243077))

(assert (=> b!1357109 d!145043))

(declare-fun b!1357298 () Bool)

(declare-fun e!770372 () Bool)

(assert (=> b!1357298 (= e!770372 (subseq!812 acc!759 (t!46521 acc!759)))))

(declare-fun b!1357295 () Bool)

(declare-fun e!770374 () Bool)

(declare-fun e!770375 () Bool)

(assert (=> b!1357295 (= e!770374 e!770375)))

(declare-fun res!902153 () Bool)

(assert (=> b!1357295 (=> (not res!902153) (not e!770375))))

(assert (=> b!1357295 (= res!902153 (is-Cons!31852 acc!759))))

(declare-fun d!145045 () Bool)

(declare-fun res!902151 () Bool)

(assert (=> d!145045 (=> res!902151 e!770374)))

(assert (=> d!145045 (= res!902151 (is-Nil!31853 acc!759))))

(assert (=> d!145045 (= (subseq!812 acc!759 acc!759) e!770374)))

(declare-fun b!1357297 () Bool)

(declare-fun e!770373 () Bool)

(assert (=> b!1357297 (= e!770373 (subseq!812 (t!46521 acc!759) (t!46521 acc!759)))))

(declare-fun b!1357296 () Bool)

(assert (=> b!1357296 (= e!770375 e!770372)))

(declare-fun res!902152 () Bool)

(assert (=> b!1357296 (=> res!902152 e!770372)))

(assert (=> b!1357296 (= res!902152 e!770373)))

(declare-fun res!902150 () Bool)

(assert (=> b!1357296 (=> (not res!902150) (not e!770373))))

(assert (=> b!1357296 (= res!902150 (= (h!33061 acc!759) (h!33061 acc!759)))))

