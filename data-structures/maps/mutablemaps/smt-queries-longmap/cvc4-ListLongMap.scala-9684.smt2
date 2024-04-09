; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114282 () Bool)

(assert start!114282)

(declare-fun b!1357165 () Bool)

(declare-fun res!902049 () Bool)

(declare-fun e!770262 () Bool)

(assert (=> b!1357165 (=> (not res!902049) (not e!770262))))

(declare-datatypes ((array!92387 0))(
  ( (array!92388 (arr!44637 (Array (_ BitVec 32) (_ BitVec 64))) (size!45188 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92387)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357165 (= res!902049 (validKeyInArray!0 (select (arr!44637 a!3742) from!3120)))))

(declare-fun res!902046 () Bool)

(assert (=> start!114282 (=> (not res!902046) (not e!770262))))

(assert (=> start!114282 (= res!902046 (and (bvslt (size!45188 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45188 a!3742))))))

(assert (=> start!114282 e!770262))

(assert (=> start!114282 true))

(declare-fun array_inv!33582 (array!92387) Bool)

(assert (=> start!114282 (array_inv!33582 a!3742)))

(declare-fun b!1357166 () Bool)

(declare-fun e!770263 () Bool)

(assert (=> b!1357166 (= e!770262 (not e!770263))))

(declare-fun res!902051 () Bool)

(assert (=> b!1357166 (=> res!902051 e!770263)))

(assert (=> b!1357166 (= res!902051 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31858 0))(
  ( (Nil!31855) (Cons!31854 (h!33063 (_ BitVec 64)) (t!46523 List!31858)) )
))
(declare-fun acc!759 () List!31858)

(declare-fun subseq!814 (List!31858 List!31858) Bool)

(assert (=> b!1357166 (subseq!814 acc!759 acc!759)))

(declare-datatypes ((Unit!44607 0))(
  ( (Unit!44608) )
))
(declare-fun lt!599066 () Unit!44607)

(declare-fun lemmaListSubSeqRefl!0 (List!31858) Unit!44607)

(assert (=> b!1357166 (= lt!599066 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357167 () Bool)

(declare-fun res!902047 () Bool)

(assert (=> b!1357167 (=> (not res!902047) (not e!770262))))

(declare-fun arrayNoDuplicates!0 (array!92387 (_ BitVec 32) List!31858) Bool)

(assert (=> b!1357167 (= res!902047 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357168 () Bool)

(declare-fun res!902052 () Bool)

(assert (=> b!1357168 (=> (not res!902052) (not e!770262))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357168 (= res!902052 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45188 a!3742))))))

(declare-fun b!1357169 () Bool)

(declare-fun res!902044 () Bool)

(assert (=> b!1357169 (=> (not res!902044) (not e!770262))))

(assert (=> b!1357169 (= res!902044 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45188 a!3742)))))

(declare-fun b!1357170 () Bool)

(declare-fun res!902043 () Bool)

(assert (=> b!1357170 (=> (not res!902043) (not e!770262))))

(assert (=> b!1357170 (= res!902043 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31855))))

(declare-fun b!1357171 () Bool)

(declare-fun res!902045 () Bool)

(assert (=> b!1357171 (=> (not res!902045) (not e!770262))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357171 (= res!902045 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357172 () Bool)

(declare-fun res!902048 () Bool)

(assert (=> b!1357172 (=> (not res!902048) (not e!770262))))

(declare-fun contains!9423 (List!31858 (_ BitVec 64)) Bool)

(assert (=> b!1357172 (= res!902048 (not (contains!9423 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357173 () Bool)

(declare-fun noDuplicate!2302 (List!31858) Bool)

(declare-fun $colon$colon!819 (List!31858 (_ BitVec 64)) List!31858)

(assert (=> b!1357173 (= e!770263 (noDuplicate!2302 ($colon$colon!819 acc!759 (select (arr!44637 a!3742) from!3120))))))

(declare-fun b!1357174 () Bool)

(declare-fun res!902042 () Bool)

(assert (=> b!1357174 (=> (not res!902042) (not e!770262))))

(assert (=> b!1357174 (= res!902042 (not (contains!9423 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357175 () Bool)

(declare-fun res!902050 () Bool)

(assert (=> b!1357175 (=> (not res!902050) (not e!770262))))

(assert (=> b!1357175 (= res!902050 (noDuplicate!2302 acc!759))))

(assert (= (and start!114282 res!902046) b!1357175))

(assert (= (and b!1357175 res!902050) b!1357174))

(assert (= (and b!1357174 res!902042) b!1357172))

(assert (= (and b!1357172 res!902048) b!1357170))

(assert (= (and b!1357170 res!902043) b!1357167))

(assert (= (and b!1357167 res!902047) b!1357168))

(assert (= (and b!1357168 res!902052) b!1357171))

(assert (= (and b!1357171 res!902045) b!1357169))

(assert (= (and b!1357169 res!902044) b!1357165))

(assert (= (and b!1357165 res!902049) b!1357166))

(assert (= (and b!1357166 (not res!902051)) b!1357173))

(declare-fun m!1242989 () Bool)

(assert (=> b!1357165 m!1242989))

(assert (=> b!1357165 m!1242989))

(declare-fun m!1242991 () Bool)

(assert (=> b!1357165 m!1242991))

(declare-fun m!1242993 () Bool)

(assert (=> b!1357175 m!1242993))

(declare-fun m!1242995 () Bool)

(assert (=> start!114282 m!1242995))

(declare-fun m!1242997 () Bool)

(assert (=> b!1357170 m!1242997))

(assert (=> b!1357173 m!1242989))

(assert (=> b!1357173 m!1242989))

(declare-fun m!1242999 () Bool)

(assert (=> b!1357173 m!1242999))

(assert (=> b!1357173 m!1242999))

(declare-fun m!1243001 () Bool)

(assert (=> b!1357173 m!1243001))

(declare-fun m!1243003 () Bool)

(assert (=> b!1357174 m!1243003))

(declare-fun m!1243005 () Bool)

(assert (=> b!1357172 m!1243005))

(declare-fun m!1243007 () Bool)

(assert (=> b!1357166 m!1243007))

(declare-fun m!1243009 () Bool)

(assert (=> b!1357166 m!1243009))

(declare-fun m!1243011 () Bool)

(assert (=> b!1357171 m!1243011))

(declare-fun m!1243013 () Bool)

(assert (=> b!1357167 m!1243013))

(push 1)

(assert (not b!1357172))

(assert (not b!1357171))

(assert (not start!114282))

(assert (not b!1357175))

(assert (not b!1357166))

(assert (not b!1357167))

(assert (not b!1357165))

(assert (not b!1357170))

(assert (not b!1357174))

(assert (not b!1357173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1357229 () Bool)

(declare-fun e!770312 () Bool)

(declare-fun e!770311 () Bool)

(assert (=> b!1357229 (= e!770312 e!770311)))

(declare-fun res!902093 () Bool)

(assert (=> b!1357229 (=> (not res!902093) (not e!770311))))

(declare-fun e!770310 () Bool)

(assert (=> b!1357229 (= res!902093 (not e!770310))))

(declare-fun res!902092 () Bool)

(assert (=> b!1357229 (=> (not res!902092) (not e!770310))))

(assert (=> b!1357229 (= res!902092 (validKeyInArray!0 (select (arr!44637 a!3742) from!3120)))))

(declare-fun c!127011 () Bool)

(declare-fun call!65244 () Bool)

(declare-fun bm!65241 () Bool)

(assert (=> bm!65241 (= call!65244 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127011 (Cons!31854 (select (arr!44637 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357230 () Bool)

(assert (=> b!1357230 (= e!770310 (contains!9423 acc!759 (select (arr!44637 a!3742) from!3120)))))

(declare-fun b!1357231 () Bool)

(declare-fun e!770313 () Bool)

(assert (=> b!1357231 (= e!770313 call!65244)))

(declare-fun b!1357232 () Bool)

(assert (=> b!1357232 (= e!770313 call!65244)))

(declare-fun d!145009 () Bool)

(declare-fun res!902094 () Bool)

(assert (=> d!145009 (=> res!902094 e!770312)))

(assert (=> d!145009 (= res!902094 (bvsge from!3120 (size!45188 a!3742)))))

(assert (=> d!145009 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770312)))

(declare-fun b!1357233 () Bool)

(assert (=> b!1357233 (= e!770311 e!770313)))

(assert (=> b!1357233 (= c!127011 (validKeyInArray!0 (select (arr!44637 a!3742) from!3120)))))

(assert (= (and d!145009 (not res!902094)) b!1357229))

(assert (= (and b!1357229 res!902092) b!1357230))

(assert (= (and b!1357229 res!902093) b!1357233))

(assert (= (and b!1357233 c!127011) b!1357232))

(assert (= (and b!1357233 (not c!127011)) b!1357231))

(assert (= (or b!1357232 b!1357231) bm!65241))

(assert (=> b!1357229 m!1242989))

(assert (=> b!1357229 m!1242989))

(assert (=> b!1357229 m!1242991))

(assert (=> bm!65241 m!1242989))

(declare-fun m!1243029 () Bool)

(assert (=> bm!65241 m!1243029))

(assert (=> b!1357230 m!1242989))

(assert (=> b!1357230 m!1242989))

(declare-fun m!1243031 () Bool)

(assert (=> b!1357230 m!1243031))

(assert (=> b!1357233 m!1242989))

(assert (=> b!1357233 m!1242989))

(assert (=> b!1357233 m!1242991))

(assert (=> b!1357167 d!145009))

(declare-fun d!145019 () Bool)

(assert (=> d!145019 (= (array_inv!33582 a!3742) (bvsge (size!45188 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114282 d!145019))

(declare-fun d!145023 () Bool)

(declare-fun lt!599074 () Bool)

(declare-fun content!681 (List!31858) (Set (_ BitVec 64)))

(assert (=> d!145023 (= lt!599074 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!681 acc!759)))))

(declare-fun e!770328 () Bool)

(assert (=> d!145023 (= lt!599074 e!770328)))

(declare-fun res!902109 () Bool)

(assert (=> d!145023 (=> (not res!902109) (not e!770328))))

(assert (=> d!145023 (= res!902109 (is-Cons!31854 acc!759))))

(assert (=> d!145023 (= (contains!9423 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599074)))

(declare-fun b!1357249 () Bool)

(declare-fun e!770329 () Bool)

(assert (=> b!1357249 (= e!770328 e!770329)))

(declare-fun res!902108 () Bool)

(assert (=> b!1357249 (=> res!902108 e!770329)))

(assert (=> b!1357249 (= res!902108 (= (h!33063 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357250 () Bool)

(assert (=> b!1357250 (= e!770329 (contains!9423 (t!46523 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145023 res!902109) b!1357249))

(assert (= (and b!1357249 (not res!902108)) b!1357250))

(declare-fun m!1243041 () Bool)

(assert (=> d!145023 m!1243041))

(declare-fun m!1243043 () Bool)

(assert (=> d!145023 m!1243043))

(declare-fun m!1243045 () Bool)

(assert (=> b!1357250 m!1243045))

(assert (=> b!1357172 d!145023))

(declare-fun d!145033 () Bool)

(assert (=> d!145033 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357171 d!145033))

(declare-fun b!1357281 () Bool)

(declare-fun e!770359 () Bool)

(assert (=> b!1357281 (= e!770359 (subseq!814 (t!46523 acc!759) (t!46523 acc!759)))))

(declare-fun d!145039 () Bool)

(declare-fun res!902137 () Bool)

(declare-fun e!770356 () Bool)

(assert (=> d!145039 (=> res!902137 e!770356)))

(assert (=> d!145039 (= res!902137 (is-Nil!31855 acc!759))))

(assert (=> d!145039 (= (subseq!814 acc!759 acc!759) e!770356)))

(declare-fun b!1357282 () Bool)

(declare-fun e!770358 () Bool)

(assert (=> b!1357282 (= e!770358 (subseq!814 acc!759 (t!46523 acc!759)))))

(declare-fun b!1357280 () Bool)

(declare-fun e!770357 () Bool)

(assert (=> b!1357280 (= e!770357 e!770358)))

(declare-fun res!902135 () Bool)

(assert (=> b!1357280 (=> res!902135 e!770358)))

(assert (=> b!1357280 (= res!902135 e!770359)))

(declare-fun res!902134 () Bool)

(assert (=> b!1357280 (=> (not res!902134) (not e!770359))))

(assert (=> b!1357280 (= res!902134 (= (h!33063 acc!759) (h!33063 acc!759)))))

(declare-fun b!1357279 () Bool)

(assert (=> b!1357279 (= e!770356 e!770357)))

(declare-fun res!902136 () Bool)

(assert (=> b!1357279 (=> (not res!902136) (not e!770357))))

(assert (=> b!1357279 (= res!902136 (is-Cons!31854 acc!759))))

(assert (= (and d!145039 (not res!902137)) b!1357279))

(assert (= (and b!1357279 res!902136) b!1357280))

(assert (= (and b!1357280 res!902134) b!1357281))

(assert (= (and b!1357280 (not res!902135)) b!1357282))

(declare-fun m!1243079 () Bool)

(assert (=> b!1357281 m!1243079))

(declare-fun m!1243081 () Bool)

(assert (=> b!1357282 m!1243081))

(assert (=> b!1357166 d!145039))

(declare-fun d!145047 () Bool)

(assert (=> d!145047 (subseq!814 acc!759 acc!759)))

(declare-fun lt!599082 () Unit!44607)

(declare-fun choose!36 (List!31858) Unit!44607)

(assert (=> d!145047 (= lt!599082 (choose!36 acc!759))))

(assert (=> d!145047 (= (lemmaListSubSeqRefl!0 acc!759) lt!599082)))

(declare-fun bs!38922 () Bool)

(assert (= bs!38922 d!145047))

(assert (=> bs!38922 m!1243007))

(declare-fun m!1243083 () Bool)

(assert (=> bs!38922 m!1243083))

(assert (=> b!1357166 d!145047))

(declare-fun d!145049 () Bool)

(assert (=> d!145049 (= (validKeyInArray!0 (select (arr!44637 a!3742) from!3120)) (and (not (= (select (arr!44637 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44637 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357165 d!145049))

(declare-fun d!145051 () Bool)

(declare-fun res!902154 () Bool)

(declare-fun e!770376 () Bool)

(assert (=> d!145051 (=> res!902154 e!770376)))

(assert (=> d!145051 (= res!902154 (is-Nil!31855 acc!759))))

(assert (=> d!145051 (= (noDuplicate!2302 acc!759) e!770376)))

(declare-fun b!1357299 () Bool)

(declare-fun e!770377 () Bool)

(assert (=> b!1357299 (= e!770376 e!770377)))

(declare-fun res!902155 () Bool)

(assert (=> b!1357299 (=> (not res!902155) (not e!770377))))

(assert (=> b!1357299 (= res!902155 (not (contains!9423 (t!46523 acc!759) (h!33063 acc!759))))))

(declare-fun b!1357300 () Bool)

(assert (=> b!1357300 (= e!770377 (noDuplicate!2302 (t!46523 acc!759)))))

(assert (= (and d!145051 (not res!902154)) b!1357299))

(assert (= (and b!1357299 res!902155) b!1357300))

(declare-fun m!1243089 () Bool)

(assert (=> b!1357299 m!1243089))

(declare-fun m!1243091 () Bool)

(assert (=> b!1357300 m!1243091))

(assert (=> b!1357175 d!145051))

(declare-fun b!1357301 () Bool)

(declare-fun e!770380 () Bool)

(declare-fun e!770379 () Bool)

(assert (=> b!1357301 (= e!770380 e!770379)))

(declare-fun res!902157 () Bool)

(assert (=> b!1357301 (=> (not res!902157) (not e!770379))))

(declare-fun e!770378 () Bool)

(assert (=> b!1357301 (= res!902157 (not e!770378))))

(declare-fun res!902156 () Bool)

(assert (=> b!1357301 (=> (not res!902156) (not e!770378))))

(assert (=> b!1357301 (= res!902156 (validKeyInArray!0 (select (arr!44637 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65245 () Bool)

(declare-fun call!65248 () Bool)

(declare-fun c!127015 () Bool)

(assert (=> bm!65245 (= call!65248 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127015 (Cons!31854 (select (arr!44637 a!3742) #b00000000000000000000000000000000) Nil!31855) Nil!31855)))))

