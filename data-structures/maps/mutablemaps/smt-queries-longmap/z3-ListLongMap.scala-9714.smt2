; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114934 () Bool)

(assert start!114934)

(declare-fun b!1362157 () Bool)

(declare-datatypes ((array!92592 0))(
  ( (array!92593 (arr!44726 (Array (_ BitVec 32) (_ BitVec 64))) (size!45277 (_ BitVec 32))) )
))
(declare-fun lt!600377 () array!92592)

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((List!31947 0))(
  ( (Nil!31944) (Cons!31943 (h!33152 (_ BitVec 64)) (t!46639 List!31947)) )
))
(declare-fun acc!759 () List!31947)

(declare-fun e!772667 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92592 (_ BitVec 32) List!31947) Bool)

(assert (=> b!1362157 (= e!772667 (not (arrayNoDuplicates!0 lt!600377 from!3120 acc!759)))))

(declare-fun lt!600379 () List!31947)

(assert (=> b!1362157 (arrayNoDuplicates!0 lt!600377 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379)))

(declare-fun a!3742 () array!92592)

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362157 (= lt!600377 (array!92593 (store (arr!44726 a!3742) i!1404 l!3587) (size!45277 a!3742)))))

(declare-datatypes ((Unit!44861 0))(
  ( (Unit!44862) )
))
(declare-fun lt!600374 () Unit!44861)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92592 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31947) Unit!44861)

(assert (=> b!1362157 (= lt!600374 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379))))

(declare-fun b!1362158 () Bool)

(declare-fun res!906314 () Bool)

(declare-fun e!772666 () Bool)

(assert (=> b!1362158 (=> (not res!906314) (not e!772666))))

(assert (=> b!1362158 (= res!906314 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31944))))

(declare-fun b!1362159 () Bool)

(declare-fun e!772669 () Bool)

(assert (=> b!1362159 (= e!772669 e!772667)))

(declare-fun res!906310 () Bool)

(assert (=> b!1362159 (=> (not res!906310) (not e!772667))))

(assert (=> b!1362159 (= res!906310 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!908 (List!31947 (_ BitVec 64)) List!31947)

(assert (=> b!1362159 (= lt!600379 ($colon$colon!908 acc!759 (select (arr!44726 a!3742) from!3120)))))

(declare-fun b!1362160 () Bool)

(declare-fun res!906311 () Bool)

(assert (=> b!1362160 (=> (not res!906311) (not e!772667))))

(declare-fun contains!9512 (List!31947 (_ BitVec 64)) Bool)

(assert (=> b!1362160 (= res!906311 (not (contains!9512 lt!600379 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362161 () Bool)

(declare-fun res!906318 () Bool)

(assert (=> b!1362161 (=> (not res!906318) (not e!772666))))

(assert (=> b!1362161 (= res!906318 (not (contains!9512 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362162 () Bool)

(declare-fun res!906313 () Bool)

(assert (=> b!1362162 (=> (not res!906313) (not e!772666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362162 (= res!906313 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362163 () Bool)

(declare-fun res!906305 () Bool)

(assert (=> b!1362163 (=> (not res!906305) (not e!772666))))

(declare-fun noDuplicate!2391 (List!31947) Bool)

(assert (=> b!1362163 (= res!906305 (noDuplicate!2391 acc!759))))

(declare-fun b!1362164 () Bool)

(assert (=> b!1362164 (= e!772666 e!772669)))

(declare-fun res!906306 () Bool)

(assert (=> b!1362164 (=> (not res!906306) (not e!772669))))

(declare-fun lt!600380 () Bool)

(assert (=> b!1362164 (= res!906306 (and (not (= from!3120 i!1404)) lt!600380))))

(declare-fun lt!600376 () Unit!44861)

(declare-fun e!772665 () Unit!44861)

(assert (=> b!1362164 (= lt!600376 e!772665)))

(declare-fun c!127369 () Bool)

(assert (=> b!1362164 (= c!127369 lt!600380)))

(assert (=> b!1362164 (= lt!600380 (validKeyInArray!0 (select (arr!44726 a!3742) from!3120)))))

(declare-fun b!1362165 () Bool)

(declare-fun res!906309 () Bool)

(assert (=> b!1362165 (=> (not res!906309) (not e!772667))))

(assert (=> b!1362165 (= res!906309 (not (contains!9512 lt!600379 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362167 () Bool)

(declare-fun res!906316 () Bool)

(assert (=> b!1362167 (=> (not res!906316) (not e!772667))))

(assert (=> b!1362167 (= res!906316 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379))))

(declare-fun b!1362166 () Bool)

(declare-fun res!906315 () Bool)

(assert (=> b!1362166 (=> (not res!906315) (not e!772666))))

(assert (=> b!1362166 (= res!906315 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45277 a!3742)))))

(declare-fun res!906304 () Bool)

(assert (=> start!114934 (=> (not res!906304) (not e!772666))))

(assert (=> start!114934 (= res!906304 (and (bvslt (size!45277 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45277 a!3742))))))

(assert (=> start!114934 e!772666))

(assert (=> start!114934 true))

(declare-fun array_inv!33671 (array!92592) Bool)

(assert (=> start!114934 (array_inv!33671 a!3742)))

(declare-fun b!1362168 () Bool)

(declare-fun res!906307 () Bool)

(assert (=> b!1362168 (=> (not res!906307) (not e!772666))))

(assert (=> b!1362168 (= res!906307 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362169 () Bool)

(declare-fun lt!600378 () Unit!44861)

(assert (=> b!1362169 (= e!772665 lt!600378)))

(declare-fun lt!600375 () Unit!44861)

(declare-fun lemmaListSubSeqRefl!0 (List!31947) Unit!44861)

(assert (=> b!1362169 (= lt!600375 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!903 (List!31947 List!31947) Bool)

(assert (=> b!1362169 (subseq!903 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92592 List!31947 List!31947 (_ BitVec 32)) Unit!44861)

(assert (=> b!1362169 (= lt!600378 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!908 acc!759 (select (arr!44726 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362169 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362170 () Bool)

(declare-fun res!906317 () Bool)

(assert (=> b!1362170 (=> (not res!906317) (not e!772667))))

(assert (=> b!1362170 (= res!906317 (noDuplicate!2391 lt!600379))))

(declare-fun b!1362171 () Bool)

(declare-fun res!906312 () Bool)

(assert (=> b!1362171 (=> (not res!906312) (not e!772666))))

(assert (=> b!1362171 (= res!906312 (not (contains!9512 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362172 () Bool)

(declare-fun res!906308 () Bool)

(assert (=> b!1362172 (=> (not res!906308) (not e!772666))))

(assert (=> b!1362172 (= res!906308 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45277 a!3742))))))

(declare-fun b!1362173 () Bool)

(declare-fun Unit!44863 () Unit!44861)

(assert (=> b!1362173 (= e!772665 Unit!44863)))

(assert (= (and start!114934 res!906304) b!1362163))

(assert (= (and b!1362163 res!906305) b!1362161))

(assert (= (and b!1362161 res!906318) b!1362171))

(assert (= (and b!1362171 res!906312) b!1362158))

(assert (= (and b!1362158 res!906314) b!1362168))

(assert (= (and b!1362168 res!906307) b!1362172))

(assert (= (and b!1362172 res!906308) b!1362162))

(assert (= (and b!1362162 res!906313) b!1362166))

(assert (= (and b!1362166 res!906315) b!1362164))

(assert (= (and b!1362164 c!127369) b!1362169))

(assert (= (and b!1362164 (not c!127369)) b!1362173))

(assert (= (and b!1362164 res!906306) b!1362159))

(assert (= (and b!1362159 res!906310) b!1362170))

(assert (= (and b!1362170 res!906317) b!1362160))

(assert (= (and b!1362160 res!906311) b!1362165))

(assert (= (and b!1362165 res!906309) b!1362167))

(assert (= (and b!1362167 res!906316) b!1362157))

(declare-fun m!1247139 () Bool)

(assert (=> b!1362161 m!1247139))

(declare-fun m!1247141 () Bool)

(assert (=> b!1362167 m!1247141))

(declare-fun m!1247143 () Bool)

(assert (=> b!1362171 m!1247143))

(declare-fun m!1247145 () Bool)

(assert (=> start!114934 m!1247145))

(declare-fun m!1247147 () Bool)

(assert (=> b!1362165 m!1247147))

(declare-fun m!1247149 () Bool)

(assert (=> b!1362164 m!1247149))

(assert (=> b!1362164 m!1247149))

(declare-fun m!1247151 () Bool)

(assert (=> b!1362164 m!1247151))

(declare-fun m!1247153 () Bool)

(assert (=> b!1362169 m!1247153))

(assert (=> b!1362169 m!1247149))

(declare-fun m!1247155 () Bool)

(assert (=> b!1362169 m!1247155))

(declare-fun m!1247157 () Bool)

(assert (=> b!1362169 m!1247157))

(declare-fun m!1247159 () Bool)

(assert (=> b!1362169 m!1247159))

(assert (=> b!1362169 m!1247149))

(assert (=> b!1362169 m!1247155))

(declare-fun m!1247161 () Bool)

(assert (=> b!1362169 m!1247161))

(declare-fun m!1247163 () Bool)

(assert (=> b!1362162 m!1247163))

(declare-fun m!1247165 () Bool)

(assert (=> b!1362168 m!1247165))

(declare-fun m!1247167 () Bool)

(assert (=> b!1362160 m!1247167))

(declare-fun m!1247169 () Bool)

(assert (=> b!1362170 m!1247169))

(declare-fun m!1247171 () Bool)

(assert (=> b!1362157 m!1247171))

(declare-fun m!1247173 () Bool)

(assert (=> b!1362157 m!1247173))

(declare-fun m!1247175 () Bool)

(assert (=> b!1362157 m!1247175))

(declare-fun m!1247177 () Bool)

(assert (=> b!1362157 m!1247177))

(assert (=> b!1362159 m!1247149))

(assert (=> b!1362159 m!1247149))

(assert (=> b!1362159 m!1247155))

(declare-fun m!1247179 () Bool)

(assert (=> b!1362163 m!1247179))

(declare-fun m!1247181 () Bool)

(assert (=> b!1362158 m!1247181))

(check-sat (not b!1362165) (not b!1362168) (not b!1362158) (not b!1362169) (not b!1362167) (not b!1362159) (not b!1362170) (not b!1362157) (not b!1362161) (not b!1362164) (not b!1362171) (not b!1362162) (not b!1362163) (not b!1362160) (not start!114934))
(check-sat)
(get-model)

(declare-fun d!145867 () Bool)

(assert (=> d!145867 (= (validKeyInArray!0 (select (arr!44726 a!3742) from!3120)) (and (not (= (select (arr!44726 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44726 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1362164 d!145867))

(declare-fun d!145869 () Bool)

(declare-fun res!906368 () Bool)

(declare-fun e!772689 () Bool)

(assert (=> d!145869 (=> res!906368 e!772689)))

(get-info :version)

(assert (=> d!145869 (= res!906368 ((_ is Nil!31944) acc!759))))

(assert (=> d!145869 (= (noDuplicate!2391 acc!759) e!772689)))

(declare-fun b!1362229 () Bool)

(declare-fun e!772690 () Bool)

(assert (=> b!1362229 (= e!772689 e!772690)))

(declare-fun res!906369 () Bool)

(assert (=> b!1362229 (=> (not res!906369) (not e!772690))))

(assert (=> b!1362229 (= res!906369 (not (contains!9512 (t!46639 acc!759) (h!33152 acc!759))))))

(declare-fun b!1362230 () Bool)

(assert (=> b!1362230 (= e!772690 (noDuplicate!2391 (t!46639 acc!759)))))

(assert (= (and d!145869 (not res!906368)) b!1362229))

(assert (= (and b!1362229 res!906369) b!1362230))

(declare-fun m!1247227 () Bool)

(assert (=> b!1362229 m!1247227))

(declare-fun m!1247229 () Bool)

(assert (=> b!1362230 m!1247229))

(assert (=> b!1362163 d!145869))

(declare-fun d!145871 () Bool)

(assert (=> d!145871 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1362162 d!145871))

(declare-fun d!145873 () Bool)

(declare-fun lt!600404 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!706 (List!31947) (InoxSet (_ BitVec 64)))

(assert (=> d!145873 (= lt!600404 (select (content!706 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772696 () Bool)

(assert (=> d!145873 (= lt!600404 e!772696)))

(declare-fun res!906375 () Bool)

(assert (=> d!145873 (=> (not res!906375) (not e!772696))))

(assert (=> d!145873 (= res!906375 ((_ is Cons!31943) acc!759))))

(assert (=> d!145873 (= (contains!9512 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600404)))

(declare-fun b!1362235 () Bool)

(declare-fun e!772695 () Bool)

(assert (=> b!1362235 (= e!772696 e!772695)))

(declare-fun res!906374 () Bool)

(assert (=> b!1362235 (=> res!906374 e!772695)))

(assert (=> b!1362235 (= res!906374 (= (h!33152 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362236 () Bool)

(assert (=> b!1362236 (= e!772695 (contains!9512 (t!46639 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145873 res!906375) b!1362235))

(assert (= (and b!1362235 (not res!906374)) b!1362236))

(declare-fun m!1247231 () Bool)

(assert (=> d!145873 m!1247231))

(declare-fun m!1247233 () Bool)

(assert (=> d!145873 m!1247233))

(declare-fun m!1247235 () Bool)

(assert (=> b!1362236 m!1247235))

(assert (=> b!1362161 d!145873))

(declare-fun d!145875 () Bool)

(declare-fun lt!600405 () Bool)

(assert (=> d!145875 (= lt!600405 (select (content!706 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772698 () Bool)

(assert (=> d!145875 (= lt!600405 e!772698)))

(declare-fun res!906377 () Bool)

(assert (=> d!145875 (=> (not res!906377) (not e!772698))))

(assert (=> d!145875 (= res!906377 ((_ is Cons!31943) acc!759))))

(assert (=> d!145875 (= (contains!9512 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600405)))

(declare-fun b!1362237 () Bool)

(declare-fun e!772697 () Bool)

(assert (=> b!1362237 (= e!772698 e!772697)))

(declare-fun res!906376 () Bool)

(assert (=> b!1362237 (=> res!906376 e!772697)))

(assert (=> b!1362237 (= res!906376 (= (h!33152 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362238 () Bool)

(assert (=> b!1362238 (= e!772697 (contains!9512 (t!46639 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145875 res!906377) b!1362237))

(assert (= (and b!1362237 (not res!906376)) b!1362238))

(assert (=> d!145875 m!1247231))

(declare-fun m!1247237 () Bool)

(assert (=> d!145875 m!1247237))

(declare-fun m!1247239 () Bool)

(assert (=> b!1362238 m!1247239))

(assert (=> b!1362171 d!145875))

(declare-fun d!145877 () Bool)

(declare-fun lt!600406 () Bool)

(assert (=> d!145877 (= lt!600406 (select (content!706 lt!600379) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772700 () Bool)

(assert (=> d!145877 (= lt!600406 e!772700)))

(declare-fun res!906379 () Bool)

(assert (=> d!145877 (=> (not res!906379) (not e!772700))))

(assert (=> d!145877 (= res!906379 ((_ is Cons!31943) lt!600379))))

(assert (=> d!145877 (= (contains!9512 lt!600379 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600406)))

(declare-fun b!1362239 () Bool)

(declare-fun e!772699 () Bool)

(assert (=> b!1362239 (= e!772700 e!772699)))

(declare-fun res!906378 () Bool)

(assert (=> b!1362239 (=> res!906378 e!772699)))

(assert (=> b!1362239 (= res!906378 (= (h!33152 lt!600379) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362240 () Bool)

(assert (=> b!1362240 (= e!772699 (contains!9512 (t!46639 lt!600379) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145877 res!906379) b!1362239))

(assert (= (and b!1362239 (not res!906378)) b!1362240))

(declare-fun m!1247241 () Bool)

(assert (=> d!145877 m!1247241))

(declare-fun m!1247243 () Bool)

(assert (=> d!145877 m!1247243))

(declare-fun m!1247245 () Bool)

(assert (=> b!1362240 m!1247245))

(assert (=> b!1362160 d!145877))

(declare-fun d!145879 () Bool)

(assert (=> d!145879 (= ($colon$colon!908 acc!759 (select (arr!44726 a!3742) from!3120)) (Cons!31943 (select (arr!44726 a!3742) from!3120) acc!759))))

(assert (=> b!1362159 d!145879))

(declare-fun d!145881 () Bool)

(declare-fun res!906380 () Bool)

(declare-fun e!772701 () Bool)

(assert (=> d!145881 (=> res!906380 e!772701)))

(assert (=> d!145881 (= res!906380 ((_ is Nil!31944) lt!600379))))

(assert (=> d!145881 (= (noDuplicate!2391 lt!600379) e!772701)))

(declare-fun b!1362241 () Bool)

(declare-fun e!772702 () Bool)

(assert (=> b!1362241 (= e!772701 e!772702)))

(declare-fun res!906381 () Bool)

(assert (=> b!1362241 (=> (not res!906381) (not e!772702))))

(assert (=> b!1362241 (= res!906381 (not (contains!9512 (t!46639 lt!600379) (h!33152 lt!600379))))))

(declare-fun b!1362242 () Bool)

(assert (=> b!1362242 (= e!772702 (noDuplicate!2391 (t!46639 lt!600379)))))

(assert (= (and d!145881 (not res!906380)) b!1362241))

(assert (= (and b!1362241 res!906381) b!1362242))

(declare-fun m!1247247 () Bool)

(assert (=> b!1362241 m!1247247))

(declare-fun m!1247249 () Bool)

(assert (=> b!1362242 m!1247249))

(assert (=> b!1362170 d!145881))

(declare-fun d!145883 () Bool)

(assert (=> d!145883 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600409 () Unit!44861)

(declare-fun choose!80 (array!92592 List!31947 List!31947 (_ BitVec 32)) Unit!44861)

(assert (=> d!145883 (= lt!600409 (choose!80 a!3742 ($colon$colon!908 acc!759 (select (arr!44726 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145883 (bvslt (size!45277 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145883 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!908 acc!759 (select (arr!44726 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600409)))

(declare-fun bs!39053 () Bool)

(assert (= bs!39053 d!145883))

(assert (=> bs!39053 m!1247159))

(assert (=> bs!39053 m!1247155))

(declare-fun m!1247251 () Bool)

(assert (=> bs!39053 m!1247251))

(assert (=> b!1362169 d!145883))

(declare-fun b!1362252 () Bool)

(declare-fun e!772712 () Bool)

(declare-fun e!772711 () Bool)

(assert (=> b!1362252 (= e!772712 e!772711)))

(declare-fun res!906391 () Bool)

(assert (=> b!1362252 (=> res!906391 e!772711)))

(declare-fun e!772714 () Bool)

(assert (=> b!1362252 (= res!906391 e!772714)))

(declare-fun res!906393 () Bool)

(assert (=> b!1362252 (=> (not res!906393) (not e!772714))))

(assert (=> b!1362252 (= res!906393 (= (h!33152 acc!759) (h!33152 acc!759)))))

(declare-fun b!1362253 () Bool)

(assert (=> b!1362253 (= e!772714 (subseq!903 (t!46639 acc!759) (t!46639 acc!759)))))

(declare-fun b!1362251 () Bool)

(declare-fun e!772713 () Bool)

(assert (=> b!1362251 (= e!772713 e!772712)))

(declare-fun res!906390 () Bool)

(assert (=> b!1362251 (=> (not res!906390) (not e!772712))))

(assert (=> b!1362251 (= res!906390 ((_ is Cons!31943) acc!759))))

(declare-fun d!145885 () Bool)

(declare-fun res!906392 () Bool)

(assert (=> d!145885 (=> res!906392 e!772713)))

(assert (=> d!145885 (= res!906392 ((_ is Nil!31944) acc!759))))

(assert (=> d!145885 (= (subseq!903 acc!759 acc!759) e!772713)))

(declare-fun b!1362254 () Bool)

(assert (=> b!1362254 (= e!772711 (subseq!903 acc!759 (t!46639 acc!759)))))

(assert (= (and d!145885 (not res!906392)) b!1362251))

(assert (= (and b!1362251 res!906390) b!1362252))

(assert (= (and b!1362252 res!906393) b!1362253))

(assert (= (and b!1362252 (not res!906391)) b!1362254))

(declare-fun m!1247253 () Bool)

(assert (=> b!1362253 m!1247253))

(declare-fun m!1247255 () Bool)

(assert (=> b!1362254 m!1247255))

(assert (=> b!1362169 d!145885))

(declare-fun call!65374 () Bool)

(declare-fun bm!65371 () Bool)

(declare-fun c!127375 () Bool)

(assert (=> bm!65371 (= call!65374 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127375 (Cons!31943 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun d!145891 () Bool)

(declare-fun res!906428 () Bool)

(declare-fun e!772752 () Bool)

(assert (=> d!145891 (=> res!906428 e!772752)))

(assert (=> d!145891 (= res!906428 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45277 a!3742)))))

(assert (=> d!145891 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772752)))

(declare-fun b!1362291 () Bool)

(declare-fun e!772750 () Bool)

(assert (=> b!1362291 (= e!772750 (contains!9512 acc!759 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362292 () Bool)

(declare-fun e!772749 () Bool)

(assert (=> b!1362292 (= e!772752 e!772749)))

(declare-fun res!906427 () Bool)

(assert (=> b!1362292 (=> (not res!906427) (not e!772749))))

(assert (=> b!1362292 (= res!906427 (not e!772750))))

(declare-fun res!906426 () Bool)

(assert (=> b!1362292 (=> (not res!906426) (not e!772750))))

(assert (=> b!1362292 (= res!906426 (validKeyInArray!0 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362293 () Bool)

(declare-fun e!772751 () Bool)

(assert (=> b!1362293 (= e!772751 call!65374)))

(declare-fun b!1362294 () Bool)

(assert (=> b!1362294 (= e!772751 call!65374)))

(declare-fun b!1362295 () Bool)

(assert (=> b!1362295 (= e!772749 e!772751)))

(assert (=> b!1362295 (= c!127375 (validKeyInArray!0 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145891 (not res!906428)) b!1362292))

(assert (= (and b!1362292 res!906426) b!1362291))

(assert (= (and b!1362292 res!906427) b!1362295))

(assert (= (and b!1362295 c!127375) b!1362293))

(assert (= (and b!1362295 (not c!127375)) b!1362294))

(assert (= (or b!1362293 b!1362294) bm!65371))

(declare-fun m!1247283 () Bool)

(assert (=> bm!65371 m!1247283))

(declare-fun m!1247285 () Bool)

(assert (=> bm!65371 m!1247285))

(assert (=> b!1362291 m!1247283))

(assert (=> b!1362291 m!1247283))

(declare-fun m!1247287 () Bool)

(assert (=> b!1362291 m!1247287))

(assert (=> b!1362292 m!1247283))

(assert (=> b!1362292 m!1247283))

(declare-fun m!1247289 () Bool)

(assert (=> b!1362292 m!1247289))

(assert (=> b!1362295 m!1247283))

(assert (=> b!1362295 m!1247283))

(assert (=> b!1362295 m!1247289))

(assert (=> b!1362169 d!145891))

(assert (=> b!1362169 d!145879))

(declare-fun d!145909 () Bool)

(assert (=> d!145909 (subseq!903 acc!759 acc!759)))

(declare-fun lt!600422 () Unit!44861)

(declare-fun choose!36 (List!31947) Unit!44861)

(assert (=> d!145909 (= lt!600422 (choose!36 acc!759))))

(assert (=> d!145909 (= (lemmaListSubSeqRefl!0 acc!759) lt!600422)))

(declare-fun bs!39055 () Bool)

(assert (= bs!39055 d!145909))

(assert (=> bs!39055 m!1247161))

(declare-fun m!1247293 () Bool)

(assert (=> bs!39055 m!1247293))

(assert (=> b!1362169 d!145909))

(declare-fun bm!65372 () Bool)

(declare-fun call!65375 () Bool)

(declare-fun c!127376 () Bool)

(assert (=> bm!65372 (= call!65375 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127376 (Cons!31943 (select (arr!44726 a!3742) #b00000000000000000000000000000000) Nil!31944) Nil!31944)))))

(declare-fun d!145913 () Bool)

(declare-fun res!906431 () Bool)

(declare-fun e!772756 () Bool)

(assert (=> d!145913 (=> res!906431 e!772756)))

(assert (=> d!145913 (= res!906431 (bvsge #b00000000000000000000000000000000 (size!45277 a!3742)))))

(assert (=> d!145913 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31944) e!772756)))

(declare-fun b!1362296 () Bool)

(declare-fun e!772754 () Bool)

(assert (=> b!1362296 (= e!772754 (contains!9512 Nil!31944 (select (arr!44726 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362297 () Bool)

(declare-fun e!772753 () Bool)

(assert (=> b!1362297 (= e!772756 e!772753)))

(declare-fun res!906430 () Bool)

(assert (=> b!1362297 (=> (not res!906430) (not e!772753))))

(assert (=> b!1362297 (= res!906430 (not e!772754))))

(declare-fun res!906429 () Bool)

(assert (=> b!1362297 (=> (not res!906429) (not e!772754))))

(assert (=> b!1362297 (= res!906429 (validKeyInArray!0 (select (arr!44726 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362298 () Bool)

(declare-fun e!772755 () Bool)

(assert (=> b!1362298 (= e!772755 call!65375)))

(declare-fun b!1362299 () Bool)

(assert (=> b!1362299 (= e!772755 call!65375)))

(declare-fun b!1362300 () Bool)

(assert (=> b!1362300 (= e!772753 e!772755)))

(assert (=> b!1362300 (= c!127376 (validKeyInArray!0 (select (arr!44726 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145913 (not res!906431)) b!1362297))

(assert (= (and b!1362297 res!906429) b!1362296))

(assert (= (and b!1362297 res!906430) b!1362300))

(assert (= (and b!1362300 c!127376) b!1362298))

(assert (= (and b!1362300 (not c!127376)) b!1362299))

(assert (= (or b!1362298 b!1362299) bm!65372))

(declare-fun m!1247295 () Bool)

(assert (=> bm!65372 m!1247295))

(declare-fun m!1247297 () Bool)

(assert (=> bm!65372 m!1247297))

(assert (=> b!1362296 m!1247295))

(assert (=> b!1362296 m!1247295))

(declare-fun m!1247299 () Bool)

(assert (=> b!1362296 m!1247299))

(assert (=> b!1362297 m!1247295))

(assert (=> b!1362297 m!1247295))

(declare-fun m!1247301 () Bool)

(assert (=> b!1362297 m!1247301))

(assert (=> b!1362300 m!1247295))

(assert (=> b!1362300 m!1247295))

(assert (=> b!1362300 m!1247301))

(assert (=> b!1362158 d!145913))

(declare-fun bm!65373 () Bool)

(declare-fun call!65376 () Bool)

(declare-fun c!127377 () Bool)

(assert (=> bm!65373 (= call!65376 (arrayNoDuplicates!0 lt!600377 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127377 (Cons!31943 (select (arr!44726 lt!600377) from!3120) acc!759) acc!759)))))

(declare-fun d!145915 () Bool)

(declare-fun res!906436 () Bool)

(declare-fun e!772762 () Bool)

(assert (=> d!145915 (=> res!906436 e!772762)))

(assert (=> d!145915 (= res!906436 (bvsge from!3120 (size!45277 lt!600377)))))

(assert (=> d!145915 (= (arrayNoDuplicates!0 lt!600377 from!3120 acc!759) e!772762)))

(declare-fun b!1362301 () Bool)

(declare-fun e!772760 () Bool)

(assert (=> b!1362301 (= e!772760 (contains!9512 acc!759 (select (arr!44726 lt!600377) from!3120)))))

(declare-fun b!1362302 () Bool)

(declare-fun e!772759 () Bool)

(assert (=> b!1362302 (= e!772762 e!772759)))

(declare-fun res!906435 () Bool)

(assert (=> b!1362302 (=> (not res!906435) (not e!772759))))

(assert (=> b!1362302 (= res!906435 (not e!772760))))

(declare-fun res!906434 () Bool)

(assert (=> b!1362302 (=> (not res!906434) (not e!772760))))

(assert (=> b!1362302 (= res!906434 (validKeyInArray!0 (select (arr!44726 lt!600377) from!3120)))))

(declare-fun b!1362303 () Bool)

(declare-fun e!772761 () Bool)

(assert (=> b!1362303 (= e!772761 call!65376)))

(declare-fun b!1362304 () Bool)

(assert (=> b!1362304 (= e!772761 call!65376)))

(declare-fun b!1362305 () Bool)

(assert (=> b!1362305 (= e!772759 e!772761)))

(assert (=> b!1362305 (= c!127377 (validKeyInArray!0 (select (arr!44726 lt!600377) from!3120)))))

(assert (= (and d!145915 (not res!906436)) b!1362302))

(assert (= (and b!1362302 res!906434) b!1362301))

(assert (= (and b!1362302 res!906435) b!1362305))

(assert (= (and b!1362305 c!127377) b!1362303))

(assert (= (and b!1362305 (not c!127377)) b!1362304))

(assert (= (or b!1362303 b!1362304) bm!65373))

(declare-fun m!1247303 () Bool)

(assert (=> bm!65373 m!1247303))

(declare-fun m!1247305 () Bool)

(assert (=> bm!65373 m!1247305))

(assert (=> b!1362301 m!1247303))

(assert (=> b!1362301 m!1247303))

(declare-fun m!1247307 () Bool)

(assert (=> b!1362301 m!1247307))

(assert (=> b!1362302 m!1247303))

(assert (=> b!1362302 m!1247303))

(declare-fun m!1247309 () Bool)

(assert (=> b!1362302 m!1247309))

(assert (=> b!1362305 m!1247303))

(assert (=> b!1362305 m!1247303))

(assert (=> b!1362305 m!1247309))

(assert (=> b!1362157 d!145915))

(declare-fun call!65379 () Bool)

(declare-fun c!127380 () Bool)

(declare-fun bm!65376 () Bool)

(assert (=> bm!65376 (= call!65379 (arrayNoDuplicates!0 lt!600377 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127380 (Cons!31943 (select (arr!44726 lt!600377) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600379) lt!600379)))))

(declare-fun d!145917 () Bool)

(declare-fun res!906449 () Bool)

(declare-fun e!772778 () Bool)

(assert (=> d!145917 (=> res!906449 e!772778)))

(assert (=> d!145917 (= res!906449 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45277 lt!600377)))))

(assert (=> d!145917 (= (arrayNoDuplicates!0 lt!600377 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379) e!772778)))

(declare-fun e!772776 () Bool)

(declare-fun b!1362320 () Bool)

(assert (=> b!1362320 (= e!772776 (contains!9512 lt!600379 (select (arr!44726 lt!600377) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362321 () Bool)

(declare-fun e!772775 () Bool)

(assert (=> b!1362321 (= e!772778 e!772775)))

(declare-fun res!906448 () Bool)

(assert (=> b!1362321 (=> (not res!906448) (not e!772775))))

(assert (=> b!1362321 (= res!906448 (not e!772776))))

(declare-fun res!906447 () Bool)

(assert (=> b!1362321 (=> (not res!906447) (not e!772776))))

(assert (=> b!1362321 (= res!906447 (validKeyInArray!0 (select (arr!44726 lt!600377) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362322 () Bool)

(declare-fun e!772777 () Bool)

(assert (=> b!1362322 (= e!772777 call!65379)))

(declare-fun b!1362323 () Bool)

(assert (=> b!1362323 (= e!772777 call!65379)))

(declare-fun b!1362324 () Bool)

(assert (=> b!1362324 (= e!772775 e!772777)))

(assert (=> b!1362324 (= c!127380 (validKeyInArray!0 (select (arr!44726 lt!600377) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145917 (not res!906449)) b!1362321))

(assert (= (and b!1362321 res!906447) b!1362320))

(assert (= (and b!1362321 res!906448) b!1362324))

(assert (= (and b!1362324 c!127380) b!1362322))

(assert (= (and b!1362324 (not c!127380)) b!1362323))

(assert (= (or b!1362322 b!1362323) bm!65376))

(declare-fun m!1247311 () Bool)

(assert (=> bm!65376 m!1247311))

(declare-fun m!1247313 () Bool)

(assert (=> bm!65376 m!1247313))

(assert (=> b!1362320 m!1247311))

(assert (=> b!1362320 m!1247311))

(declare-fun m!1247315 () Bool)

(assert (=> b!1362320 m!1247315))

(assert (=> b!1362321 m!1247311))

(assert (=> b!1362321 m!1247311))

(declare-fun m!1247317 () Bool)

(assert (=> b!1362321 m!1247317))

(assert (=> b!1362324 m!1247311))

(assert (=> b!1362324 m!1247311))

(assert (=> b!1362324 m!1247317))

(assert (=> b!1362157 d!145917))

(declare-fun d!145919 () Bool)

(declare-fun e!772811 () Bool)

(assert (=> d!145919 e!772811))

(declare-fun res!906477 () Bool)

(assert (=> d!145919 (=> (not res!906477) (not e!772811))))

(assert (=> d!145919 (= res!906477 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45277 a!3742))))))

(declare-fun lt!600426 () Unit!44861)

(declare-fun choose!53 (array!92592 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31947) Unit!44861)

(assert (=> d!145919 (= lt!600426 (choose!53 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379))))

(assert (=> d!145919 (bvslt (size!45277 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145919 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379) lt!600426)))

(declare-fun b!1362364 () Bool)

(assert (=> b!1362364 (= e!772811 (arrayNoDuplicates!0 (array!92593 (store (arr!44726 a!3742) i!1404 l!3587) (size!45277 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!600379))))

(assert (= (and d!145919 res!906477) b!1362364))

(declare-fun m!1247349 () Bool)

(assert (=> d!145919 m!1247349))

(assert (=> b!1362364 m!1247175))

(declare-fun m!1247351 () Bool)

(assert (=> b!1362364 m!1247351))

(assert (=> b!1362157 d!145919))

(declare-fun c!127386 () Bool)

(declare-fun call!65385 () Bool)

(declare-fun bm!65382 () Bool)

(assert (=> bm!65382 (= call!65385 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127386 (Cons!31943 (select (arr!44726 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun d!145933 () Bool)

(declare-fun res!906480 () Bool)

(declare-fun e!772815 () Bool)

(assert (=> d!145933 (=> res!906480 e!772815)))

(assert (=> d!145933 (= res!906480 (bvsge from!3120 (size!45277 a!3742)))))

(assert (=> d!145933 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772815)))

(declare-fun b!1362365 () Bool)

(declare-fun e!772813 () Bool)

(assert (=> b!1362365 (= e!772813 (contains!9512 acc!759 (select (arr!44726 a!3742) from!3120)))))

(declare-fun b!1362366 () Bool)

(declare-fun e!772812 () Bool)

(assert (=> b!1362366 (= e!772815 e!772812)))

(declare-fun res!906479 () Bool)

(assert (=> b!1362366 (=> (not res!906479) (not e!772812))))

(assert (=> b!1362366 (= res!906479 (not e!772813))))

(declare-fun res!906478 () Bool)

(assert (=> b!1362366 (=> (not res!906478) (not e!772813))))

(assert (=> b!1362366 (= res!906478 (validKeyInArray!0 (select (arr!44726 a!3742) from!3120)))))

(declare-fun b!1362367 () Bool)

(declare-fun e!772814 () Bool)

(assert (=> b!1362367 (= e!772814 call!65385)))

(declare-fun b!1362368 () Bool)

(assert (=> b!1362368 (= e!772814 call!65385)))

(declare-fun b!1362369 () Bool)

(assert (=> b!1362369 (= e!772812 e!772814)))

(assert (=> b!1362369 (= c!127386 (validKeyInArray!0 (select (arr!44726 a!3742) from!3120)))))

(assert (= (and d!145933 (not res!906480)) b!1362366))

(assert (= (and b!1362366 res!906478) b!1362365))

(assert (= (and b!1362366 res!906479) b!1362369))

(assert (= (and b!1362369 c!127386) b!1362367))

(assert (= (and b!1362369 (not c!127386)) b!1362368))

(assert (= (or b!1362367 b!1362368) bm!65382))

(assert (=> bm!65382 m!1247149))

(declare-fun m!1247361 () Bool)

(assert (=> bm!65382 m!1247361))

(assert (=> b!1362365 m!1247149))

(assert (=> b!1362365 m!1247149))

(declare-fun m!1247363 () Bool)

(assert (=> b!1362365 m!1247363))

(assert (=> b!1362366 m!1247149))

(assert (=> b!1362366 m!1247149))

(assert (=> b!1362366 m!1247151))

(assert (=> b!1362369 m!1247149))

(assert (=> b!1362369 m!1247149))

(assert (=> b!1362369 m!1247151))

(assert (=> b!1362168 d!145933))

(declare-fun bm!65384 () Bool)

(declare-fun c!127388 () Bool)

(declare-fun call!65387 () Bool)

(assert (=> bm!65384 (= call!65387 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127388 (Cons!31943 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600379) lt!600379)))))

(declare-fun d!145937 () Bool)

(declare-fun res!906486 () Bool)

(declare-fun e!772823 () Bool)

(assert (=> d!145937 (=> res!906486 e!772823)))

(assert (=> d!145937 (= res!906486 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45277 a!3742)))))

(assert (=> d!145937 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600379) e!772823)))

(declare-fun e!772821 () Bool)

(declare-fun b!1362375 () Bool)

(assert (=> b!1362375 (= e!772821 (contains!9512 lt!600379 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362376 () Bool)

(declare-fun e!772820 () Bool)

(assert (=> b!1362376 (= e!772823 e!772820)))

(declare-fun res!906485 () Bool)

(assert (=> b!1362376 (=> (not res!906485) (not e!772820))))

(assert (=> b!1362376 (= res!906485 (not e!772821))))

(declare-fun res!906484 () Bool)

(assert (=> b!1362376 (=> (not res!906484) (not e!772821))))

(assert (=> b!1362376 (= res!906484 (validKeyInArray!0 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362377 () Bool)

(declare-fun e!772822 () Bool)

(assert (=> b!1362377 (= e!772822 call!65387)))

(declare-fun b!1362378 () Bool)

(assert (=> b!1362378 (= e!772822 call!65387)))

(declare-fun b!1362379 () Bool)

(assert (=> b!1362379 (= e!772820 e!772822)))

(assert (=> b!1362379 (= c!127388 (validKeyInArray!0 (select (arr!44726 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145937 (not res!906486)) b!1362376))

(assert (= (and b!1362376 res!906484) b!1362375))

(assert (= (and b!1362376 res!906485) b!1362379))

(assert (= (and b!1362379 c!127388) b!1362377))

(assert (= (and b!1362379 (not c!127388)) b!1362378))

(assert (= (or b!1362377 b!1362378) bm!65384))

(assert (=> bm!65384 m!1247283))

(declare-fun m!1247373 () Bool)

(assert (=> bm!65384 m!1247373))

(assert (=> b!1362375 m!1247283))

(assert (=> b!1362375 m!1247283))

(declare-fun m!1247375 () Bool)

(assert (=> b!1362375 m!1247375))

(assert (=> b!1362376 m!1247283))

(assert (=> b!1362376 m!1247283))

(assert (=> b!1362376 m!1247289))

(assert (=> b!1362379 m!1247283))

(assert (=> b!1362379 m!1247283))

(assert (=> b!1362379 m!1247289))

(assert (=> b!1362167 d!145937))

(declare-fun d!145941 () Bool)

(assert (=> d!145941 (= (array_inv!33671 a!3742) (bvsge (size!45277 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114934 d!145941))

(declare-fun d!145943 () Bool)

(declare-fun lt!600427 () Bool)

(assert (=> d!145943 (= lt!600427 (select (content!706 lt!600379) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!772829 () Bool)

(assert (=> d!145943 (= lt!600427 e!772829)))

(declare-fun res!906491 () Bool)

(assert (=> d!145943 (=> (not res!906491) (not e!772829))))

(assert (=> d!145943 (= res!906491 ((_ is Cons!31943) lt!600379))))

(assert (=> d!145943 (= (contains!9512 lt!600379 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600427)))

(declare-fun b!1362385 () Bool)

(declare-fun e!772828 () Bool)

(assert (=> b!1362385 (= e!772829 e!772828)))

(declare-fun res!906490 () Bool)

(assert (=> b!1362385 (=> res!906490 e!772828)))

(assert (=> b!1362385 (= res!906490 (= (h!33152 lt!600379) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362386 () Bool)

(assert (=> b!1362386 (= e!772828 (contains!9512 (t!46639 lt!600379) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145943 res!906491) b!1362385))

(assert (= (and b!1362385 (not res!906490)) b!1362386))

(assert (=> d!145943 m!1247241))

(declare-fun m!1247383 () Bool)

(assert (=> d!145943 m!1247383))

(declare-fun m!1247385 () Bool)

(assert (=> b!1362386 m!1247385))

(assert (=> b!1362165 d!145943))

(check-sat (not d!145873) (not b!1362364) (not b!1362241) (not b!1362301) (not d!145943) (not bm!65384) (not b!1362238) (not d!145909) (not b!1362242) (not b!1362379) (not b!1362297) (not bm!65382) (not b!1362321) (not d!145875) (not bm!65371) (not b!1362300) (not bm!65373) (not b!1362291) (not b!1362376) (not b!1362369) (not b!1362365) (not d!145877) (not bm!65372) (not b!1362302) (not b!1362305) (not b!1362230) (not b!1362375) (not b!1362254) (not b!1362386) (not b!1362324) (not b!1362292) (not b!1362236) (not d!145883) (not b!1362295) (not b!1362240) (not b!1362296) (not b!1362253) (not b!1362229) (not d!145919) (not bm!65376) (not b!1362366) (not b!1362320))
(check-sat)
