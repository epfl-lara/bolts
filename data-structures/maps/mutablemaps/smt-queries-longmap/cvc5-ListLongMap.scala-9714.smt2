; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114932 () Bool)

(assert start!114932)

(declare-fun b!1362106 () Bool)

(declare-fun res!906259 () Bool)

(declare-fun e!772652 () Bool)

(assert (=> b!1362106 (=> (not res!906259) (not e!772652))))

(declare-datatypes ((array!92590 0))(
  ( (array!92591 (arr!44725 (Array (_ BitVec 32) (_ BitVec 64))) (size!45276 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92590)

(declare-datatypes ((List!31946 0))(
  ( (Nil!31943) (Cons!31942 (h!33151 (_ BitVec 64)) (t!46638 List!31946)) )
))
(declare-fun arrayNoDuplicates!0 (array!92590 (_ BitVec 32) List!31946) Bool)

(assert (=> b!1362106 (= res!906259 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31943))))

(declare-fun b!1362107 () Bool)

(declare-fun res!906273 () Bool)

(assert (=> b!1362107 (=> (not res!906273) (not e!772652))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362107 (= res!906273 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45276 a!3742))))))

(declare-fun b!1362108 () Bool)

(declare-fun res!906270 () Bool)

(declare-fun e!772653 () Bool)

(assert (=> b!1362108 (=> (not res!906270) (not e!772653))))

(declare-fun lt!600353 () List!31946)

(declare-fun contains!9511 (List!31946 (_ BitVec 64)) Bool)

(assert (=> b!1362108 (= res!906270 (not (contains!9511 lt!600353 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362109 () Bool)

(declare-fun res!906266 () Bool)

(assert (=> b!1362109 (=> (not res!906266) (not e!772652))))

(declare-fun acc!759 () List!31946)

(assert (=> b!1362109 (= res!906266 (not (contains!9511 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362110 () Bool)

(declare-fun res!906265 () Bool)

(assert (=> b!1362110 (=> (not res!906265) (not e!772653))))

(assert (=> b!1362110 (= res!906265 (not (contains!9511 lt!600353 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906260 () Bool)

(assert (=> start!114932 (=> (not res!906260) (not e!772652))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114932 (= res!906260 (and (bvslt (size!45276 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45276 a!3742))))))

(assert (=> start!114932 e!772652))

(assert (=> start!114932 true))

(declare-fun array_inv!33670 (array!92590) Bool)

(assert (=> start!114932 (array_inv!33670 a!3742)))

(declare-fun b!1362111 () Bool)

(declare-fun e!772654 () Bool)

(assert (=> b!1362111 (= e!772654 e!772653)))

(declare-fun res!906267 () Bool)

(assert (=> b!1362111 (=> (not res!906267) (not e!772653))))

(assert (=> b!1362111 (= res!906267 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!907 (List!31946 (_ BitVec 64)) List!31946)

(assert (=> b!1362111 (= lt!600353 ($colon$colon!907 acc!759 (select (arr!44725 a!3742) from!3120)))))

(declare-fun b!1362112 () Bool)

(declare-fun res!906268 () Bool)

(assert (=> b!1362112 (=> (not res!906268) (not e!772652))))

(assert (=> b!1362112 (= res!906268 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362113 () Bool)

(declare-fun res!906262 () Bool)

(assert (=> b!1362113 (=> (not res!906262) (not e!772652))))

(assert (=> b!1362113 (= res!906262 (not (contains!9511 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362114 () Bool)

(declare-fun res!906272 () Bool)

(assert (=> b!1362114 (=> (not res!906272) (not e!772652))))

(assert (=> b!1362114 (= res!906272 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45276 a!3742)))))

(declare-fun b!1362115 () Bool)

(declare-datatypes ((Unit!44858 0))(
  ( (Unit!44859) )
))
(declare-fun e!772650 () Unit!44858)

(declare-fun Unit!44860 () Unit!44858)

(assert (=> b!1362115 (= e!772650 Unit!44860)))

(declare-fun b!1362116 () Bool)

(declare-fun res!906264 () Bool)

(assert (=> b!1362116 (=> (not res!906264) (not e!772652))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362116 (= res!906264 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362117 () Bool)

(declare-fun res!906261 () Bool)

(assert (=> b!1362117 (=> (not res!906261) (not e!772653))))

(assert (=> b!1362117 (= res!906261 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600353))))

(declare-fun b!1362118 () Bool)

(declare-fun lt!600357 () Unit!44858)

(assert (=> b!1362118 (= e!772650 lt!600357)))

(declare-fun lt!600355 () Unit!44858)

(declare-fun lemmaListSubSeqRefl!0 (List!31946) Unit!44858)

(assert (=> b!1362118 (= lt!600355 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!902 (List!31946 List!31946) Bool)

(assert (=> b!1362118 (subseq!902 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92590 List!31946 List!31946 (_ BitVec 32)) Unit!44858)

(assert (=> b!1362118 (= lt!600357 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!907 acc!759 (select (arr!44725 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362118 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362119 () Bool)

(declare-fun res!906263 () Bool)

(assert (=> b!1362119 (=> (not res!906263) (not e!772652))))

(declare-fun noDuplicate!2390 (List!31946) Bool)

(assert (=> b!1362119 (= res!906263 (noDuplicate!2390 acc!759))))

(declare-fun b!1362120 () Bool)

(assert (=> b!1362120 (= e!772652 e!772654)))

(declare-fun res!906271 () Bool)

(assert (=> b!1362120 (=> (not res!906271) (not e!772654))))

(declare-fun lt!600359 () Bool)

(assert (=> b!1362120 (= res!906271 (and (not (= from!3120 i!1404)) lt!600359))))

(declare-fun lt!600354 () Unit!44858)

(assert (=> b!1362120 (= lt!600354 e!772650)))

(declare-fun c!127366 () Bool)

(assert (=> b!1362120 (= c!127366 lt!600359)))

(assert (=> b!1362120 (= lt!600359 (validKeyInArray!0 (select (arr!44725 a!3742) from!3120)))))

(declare-fun b!1362121 () Bool)

(declare-fun lt!600358 () array!92590)

(assert (=> b!1362121 (= e!772653 (not (arrayNoDuplicates!0 lt!600358 from!3120 acc!759)))))

(assert (=> b!1362121 (arrayNoDuplicates!0 lt!600358 (bvadd #b00000000000000000000000000000001 from!3120) lt!600353)))

(assert (=> b!1362121 (= lt!600358 (array!92591 (store (arr!44725 a!3742) i!1404 l!3587) (size!45276 a!3742)))))

(declare-fun lt!600356 () Unit!44858)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92590 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31946) Unit!44858)

(assert (=> b!1362121 (= lt!600356 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600353))))

(declare-fun b!1362122 () Bool)

(declare-fun res!906269 () Bool)

(assert (=> b!1362122 (=> (not res!906269) (not e!772653))))

(assert (=> b!1362122 (= res!906269 (noDuplicate!2390 lt!600353))))

(assert (= (and start!114932 res!906260) b!1362119))

(assert (= (and b!1362119 res!906263) b!1362113))

(assert (= (and b!1362113 res!906262) b!1362109))

(assert (= (and b!1362109 res!906266) b!1362106))

(assert (= (and b!1362106 res!906259) b!1362112))

(assert (= (and b!1362112 res!906268) b!1362107))

(assert (= (and b!1362107 res!906273) b!1362116))

(assert (= (and b!1362116 res!906264) b!1362114))

(assert (= (and b!1362114 res!906272) b!1362120))

(assert (= (and b!1362120 c!127366) b!1362118))

(assert (= (and b!1362120 (not c!127366)) b!1362115))

(assert (= (and b!1362120 res!906271) b!1362111))

(assert (= (and b!1362111 res!906267) b!1362122))

(assert (= (and b!1362122 res!906269) b!1362108))

(assert (= (and b!1362108 res!906270) b!1362110))

(assert (= (and b!1362110 res!906265) b!1362117))

(assert (= (and b!1362117 res!906261) b!1362121))

(declare-fun m!1247095 () Bool)

(assert (=> b!1362111 m!1247095))

(assert (=> b!1362111 m!1247095))

(declare-fun m!1247097 () Bool)

(assert (=> b!1362111 m!1247097))

(declare-fun m!1247099 () Bool)

(assert (=> b!1362113 m!1247099))

(declare-fun m!1247101 () Bool)

(assert (=> b!1362106 m!1247101))

(declare-fun m!1247103 () Bool)

(assert (=> b!1362112 m!1247103))

(declare-fun m!1247105 () Bool)

(assert (=> b!1362118 m!1247105))

(assert (=> b!1362118 m!1247095))

(assert (=> b!1362118 m!1247097))

(declare-fun m!1247107 () Bool)

(assert (=> b!1362118 m!1247107))

(declare-fun m!1247109 () Bool)

(assert (=> b!1362118 m!1247109))

(assert (=> b!1362118 m!1247095))

(assert (=> b!1362118 m!1247097))

(declare-fun m!1247111 () Bool)

(assert (=> b!1362118 m!1247111))

(declare-fun m!1247113 () Bool)

(assert (=> b!1362119 m!1247113))

(assert (=> b!1362120 m!1247095))

(assert (=> b!1362120 m!1247095))

(declare-fun m!1247115 () Bool)

(assert (=> b!1362120 m!1247115))

(declare-fun m!1247117 () Bool)

(assert (=> b!1362122 m!1247117))

(declare-fun m!1247119 () Bool)

(assert (=> b!1362110 m!1247119))

(declare-fun m!1247121 () Bool)

(assert (=> b!1362121 m!1247121))

(declare-fun m!1247123 () Bool)

(assert (=> b!1362121 m!1247123))

(declare-fun m!1247125 () Bool)

(assert (=> b!1362121 m!1247125))

(declare-fun m!1247127 () Bool)

(assert (=> b!1362121 m!1247127))

(declare-fun m!1247129 () Bool)

(assert (=> b!1362116 m!1247129))

(declare-fun m!1247131 () Bool)

(assert (=> b!1362108 m!1247131))

(declare-fun m!1247133 () Bool)

(assert (=> b!1362109 m!1247133))

(declare-fun m!1247135 () Bool)

(assert (=> b!1362117 m!1247135))

(declare-fun m!1247137 () Bool)

(assert (=> start!114932 m!1247137))

(push 1)

(assert (not b!1362122))

(assert (not b!1362111))

(assert (not b!1362121))

(assert (not b!1362119))

(assert (not b!1362116))

(assert (not b!1362118))

(assert (not b!1362117))

(assert (not b!1362110))

(assert (not b!1362108))

(assert (not b!1362112))

(assert (not b!1362120))

(assert (not b!1362106))

(assert (not start!114932))

(assert (not b!1362113))

(assert (not b!1362109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145887 () Bool)

(declare-fun lt!600415 () Bool)

(declare-fun content!708 (List!31946) (Set (_ BitVec 64)))

(assert (=> d!145887 (= lt!600415 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!708 acc!759)))))

(declare-fun e!772726 () Bool)

(assert (=> d!145887 (= lt!600415 e!772726)))

(declare-fun res!906402 () Bool)

(assert (=> d!145887 (=> (not res!906402) (not e!772726))))

(assert (=> d!145887 (= res!906402 (is-Cons!31942 acc!759))))

(assert (=> d!145887 (= (contains!9511 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600415)))

(declare-fun b!1362265 () Bool)

(declare-fun e!772725 () Bool)

(assert (=> b!1362265 (= e!772726 e!772725)))

(declare-fun res!906405 () Bool)

(assert (=> b!1362265 (=> res!906405 e!772725)))

(assert (=> b!1362265 (= res!906405 (= (h!33151 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362266 () Bool)

(assert (=> b!1362266 (= e!772725 (contains!9511 (t!46638 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145887 res!906402) b!1362265))

(assert (= (and b!1362265 (not res!906405)) b!1362266))

(declare-fun m!1247257 () Bool)

(assert (=> d!145887 m!1247257))

(declare-fun m!1247261 () Bool)

(assert (=> d!145887 m!1247261))

(declare-fun m!1247265 () Bool)

(assert (=> b!1362266 m!1247265))

(assert (=> b!1362109 d!145887))

(declare-fun d!145893 () Bool)

(declare-fun lt!600416 () Bool)

(assert (=> d!145893 (= lt!600416 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!708 lt!600353)))))

(declare-fun e!772728 () Bool)

(assert (=> d!145893 (= lt!600416 e!772728)))

(declare-fun res!906406 () Bool)

(assert (=> d!145893 (=> (not res!906406) (not e!772728))))

(assert (=> d!145893 (= res!906406 (is-Cons!31942 lt!600353))))

(assert (=> d!145893 (= (contains!9511 lt!600353 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600416)))

(declare-fun b!1362267 () Bool)

(declare-fun e!772727 () Bool)

(assert (=> b!1362267 (= e!772728 e!772727)))

(declare-fun res!906407 () Bool)

(assert (=> b!1362267 (=> res!906407 e!772727)))

(assert (=> b!1362267 (= res!906407 (= (h!33151 lt!600353) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362268 () Bool)

(assert (=> b!1362268 (= e!772727 (contains!9511 (t!46638 lt!600353) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145893 res!906406) b!1362267))

(assert (= (and b!1362267 (not res!906407)) b!1362268))

(declare-fun m!1247269 () Bool)

(assert (=> d!145893 m!1247269))

(declare-fun m!1247271 () Bool)

(assert (=> d!145893 m!1247271))

(declare-fun m!1247273 () Bool)

(assert (=> b!1362268 m!1247273))

(assert (=> b!1362108 d!145893))

(declare-fun d!145897 () Bool)

(declare-fun res!906422 () Bool)

(declare-fun e!772745 () Bool)

(assert (=> d!145897 (=> res!906422 e!772745)))

(assert (=> d!145897 (= res!906422 (is-Nil!31943 acc!759))))

(assert (=> d!145897 (= (noDuplicate!2390 acc!759) e!772745)))

(declare-fun b!1362287 () Bool)

(declare-fun e!772746 () Bool)

(assert (=> b!1362287 (= e!772745 e!772746)))

(declare-fun res!906423 () Bool)

(assert (=> b!1362287 (=> (not res!906423) (not e!772746))))

(assert (=> b!1362287 (= res!906423 (not (contains!9511 (t!46638 acc!759) (h!33151 acc!759))))))

(declare-fun b!1362288 () Bool)

(assert (=> b!1362288 (= e!772746 (noDuplicate!2390 (t!46638 acc!759)))))

(assert (= (and d!145897 (not res!906422)) b!1362287))

(assert (= (and b!1362287 res!906423) b!1362288))

(declare-fun m!1247275 () Bool)

(assert (=> b!1362287 m!1247275))

(declare-fun m!1247277 () Bool)

(assert (=> b!1362288 m!1247277))

(assert (=> b!1362119 d!145897))

(declare-fun d!145901 () Bool)

(assert (=> d!145901 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600419 () Unit!44858)

(declare-fun choose!80 (array!92590 List!31946 List!31946 (_ BitVec 32)) Unit!44858)

(assert (=> d!145901 (= lt!600419 (choose!80 a!3742 ($colon$colon!907 acc!759 (select (arr!44725 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145901 (bvslt (size!45276 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145901 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!907 acc!759 (select (arr!44725 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600419)))

(declare-fun bs!39054 () Bool)

(assert (= bs!39054 d!145901))

(assert (=> bs!39054 m!1247109))

(assert (=> bs!39054 m!1247097))

(declare-fun m!1247291 () Bool)

(assert (=> bs!39054 m!1247291))

(assert (=> b!1362118 d!145901))

(declare-fun b!1362330 () Bool)

(declare-fun e!772782 () Bool)

(declare-fun e!772784 () Bool)

(assert (=> b!1362330 (= e!772782 e!772784)))

(declare-fun res!906454 () Bool)

(assert (=> b!1362330 (=> res!906454 e!772784)))

(declare-fun e!772781 () Bool)

(assert (=> b!1362330 (= res!906454 e!772781)))

(declare-fun res!906453 () Bool)

(assert (=> b!1362330 (=> (not res!906453) (not e!772781))))

(assert (=> b!1362330 (= res!906453 (= (h!33151 acc!759) (h!33151 acc!759)))))

(declare-fun b!1362331 () Bool)

(assert (=> b!1362331 (= e!772781 (subseq!902 (t!46638 acc!759) (t!46638 acc!759)))))

(declare-fun b!1362329 () Bool)

(declare-fun e!772783 () Bool)

(assert (=> b!1362329 (= e!772783 e!772782)))

(declare-fun res!906452 () Bool)

(assert (=> b!1362329 (=> (not res!906452) (not e!772782))))

(assert (=> b!1362329 (= res!906452 (is-Cons!31942 acc!759))))

(declare-fun d!145911 () Bool)

(declare-fun res!906455 () Bool)

(assert (=> d!145911 (=> res!906455 e!772783)))

(assert (=> d!145911 (= res!906455 (is-Nil!31943 acc!759))))

(assert (=> d!145911 (= (subseq!902 acc!759 acc!759) e!772783)))

(declare-fun b!1362332 () Bool)

(assert (=> b!1362332 (= e!772784 (subseq!902 acc!759 (t!46638 acc!759)))))

(assert (= (and d!145911 (not res!906455)) b!1362329))

(assert (= (and b!1362329 res!906452) b!1362330))

(assert (= (and b!1362330 res!906453) b!1362331))

(assert (= (and b!1362330 (not res!906454)) b!1362332))

(declare-fun m!1247319 () Bool)

(assert (=> b!1362331 m!1247319))

(declare-fun m!1247321 () Bool)

(assert (=> b!1362332 m!1247321))

(assert (=> b!1362118 d!145911))

(declare-fun c!127389 () Bool)

(declare-fun call!65388 () Bool)

(declare-fun bm!65385 () Bool)

(assert (=> bm!65385 (= call!65388 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127389 (Cons!31942 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(declare-fun b!1362380 () Bool)

(declare-fun e!772826 () Bool)

(assert (=> b!1362380 (= e!772826 call!65388)))

(declare-fun e!772827 () Bool)

(declare-fun b!1362381 () Bool)

(assert (=> b!1362381 (= e!772827 (contains!9511 acc!759 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362382 () Bool)

(declare-fun e!772825 () Bool)

(assert (=> b!1362382 (= e!772825 e!772826)))

(assert (=> b!1362382 (= c!127389 (validKeyInArray!0 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362384 () Bool)

(assert (=> b!1362384 (= e!772826 call!65388)))

(declare-fun d!145921 () Bool)

(declare-fun res!906489 () Bool)

(declare-fun e!772824 () Bool)

(assert (=> d!145921 (=> res!906489 e!772824)))

(assert (=> d!145921 (= res!906489 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45276 a!3742)))))

(assert (=> d!145921 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772824)))

(declare-fun b!1362383 () Bool)

(assert (=> b!1362383 (= e!772824 e!772825)))

(declare-fun res!906488 () Bool)

(assert (=> b!1362383 (=> (not res!906488) (not e!772825))))

(assert (=> b!1362383 (= res!906488 (not e!772827))))

(declare-fun res!906487 () Bool)

(assert (=> b!1362383 (=> (not res!906487) (not e!772827))))

(assert (=> b!1362383 (= res!906487 (validKeyInArray!0 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145921 (not res!906489)) b!1362383))

(assert (= (and b!1362383 res!906487) b!1362381))

(assert (= (and b!1362383 res!906488) b!1362382))

(assert (= (and b!1362382 c!127389) b!1362380))

(assert (= (and b!1362382 (not c!127389)) b!1362384))

(assert (= (or b!1362380 b!1362384) bm!65385))

(declare-fun m!1247377 () Bool)

(assert (=> bm!65385 m!1247377))

(declare-fun m!1247379 () Bool)

(assert (=> bm!65385 m!1247379))

(assert (=> b!1362381 m!1247377))

(assert (=> b!1362381 m!1247377))

(declare-fun m!1247381 () Bool)

(assert (=> b!1362381 m!1247381))

(assert (=> b!1362382 m!1247377))

(assert (=> b!1362382 m!1247377))

(declare-fun m!1247387 () Bool)

(assert (=> b!1362382 m!1247387))

(assert (=> b!1362383 m!1247377))

(assert (=> b!1362383 m!1247377))

(assert (=> b!1362383 m!1247387))

(assert (=> b!1362118 d!145921))

(declare-fun d!145945 () Bool)

(assert (=> d!145945 (= ($colon$colon!907 acc!759 (select (arr!44725 a!3742) from!3120)) (Cons!31942 (select (arr!44725 a!3742) from!3120) acc!759))))

(assert (=> b!1362118 d!145945))

(declare-fun d!145947 () Bool)

(assert (=> d!145947 (subseq!902 acc!759 acc!759)))

(declare-fun lt!600432 () Unit!44858)

(declare-fun choose!36 (List!31946) Unit!44858)

(assert (=> d!145947 (= lt!600432 (choose!36 acc!759))))

(assert (=> d!145947 (= (lemmaListSubSeqRefl!0 acc!759) lt!600432)))

(declare-fun bs!39056 () Bool)

(assert (= bs!39056 d!145947))

(assert (=> bs!39056 m!1247111))

(declare-fun m!1247389 () Bool)

(assert (=> bs!39056 m!1247389))

(assert (=> b!1362118 d!145947))

(declare-fun bm!65386 () Bool)

(declare-fun call!65389 () Bool)

(declare-fun c!127390 () Bool)

(assert (=> bm!65386 (= call!65389 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127390 (Cons!31942 (select (arr!44725 a!3742) #b00000000000000000000000000000000) Nil!31943) Nil!31943)))))

(declare-fun b!1362389 () Bool)

(declare-fun e!772834 () Bool)

(assert (=> b!1362389 (= e!772834 call!65389)))

(declare-fun b!1362390 () Bool)

(declare-fun e!772835 () Bool)

(assert (=> b!1362390 (= e!772835 (contains!9511 Nil!31943 (select (arr!44725 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362391 () Bool)

(declare-fun e!772833 () Bool)

(assert (=> b!1362391 (= e!772833 e!772834)))

(assert (=> b!1362391 (= c!127390 (validKeyInArray!0 (select (arr!44725 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362393 () Bool)

(assert (=> b!1362393 (= e!772834 call!65389)))

(declare-fun d!145949 () Bool)

(declare-fun res!906496 () Bool)

(declare-fun e!772832 () Bool)

(assert (=> d!145949 (=> res!906496 e!772832)))

(assert (=> d!145949 (= res!906496 (bvsge #b00000000000000000000000000000000 (size!45276 a!3742)))))

(assert (=> d!145949 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31943) e!772832)))

(declare-fun b!1362392 () Bool)

(assert (=> b!1362392 (= e!772832 e!772833)))

(declare-fun res!906495 () Bool)

(assert (=> b!1362392 (=> (not res!906495) (not e!772833))))

(assert (=> b!1362392 (= res!906495 (not e!772835))))

(declare-fun res!906494 () Bool)

(assert (=> b!1362392 (=> (not res!906494) (not e!772835))))

(assert (=> b!1362392 (= res!906494 (validKeyInArray!0 (select (arr!44725 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145949 (not res!906496)) b!1362392))

(assert (= (and b!1362392 res!906494) b!1362390))

(assert (= (and b!1362392 res!906495) b!1362391))

(assert (= (and b!1362391 c!127390) b!1362389))

(assert (= (and b!1362391 (not c!127390)) b!1362393))

(assert (= (or b!1362389 b!1362393) bm!65386))

(declare-fun m!1247391 () Bool)

(assert (=> bm!65386 m!1247391))

(declare-fun m!1247393 () Bool)

(assert (=> bm!65386 m!1247393))

(assert (=> b!1362390 m!1247391))

(assert (=> b!1362390 m!1247391))

(declare-fun m!1247395 () Bool)

(assert (=> b!1362390 m!1247395))

(assert (=> b!1362391 m!1247391))

(assert (=> b!1362391 m!1247391))

(declare-fun m!1247399 () Bool)

(assert (=> b!1362391 m!1247399))

(assert (=> b!1362392 m!1247391))

(assert (=> b!1362392 m!1247391))

(assert (=> b!1362392 m!1247399))

(assert (=> b!1362106 d!145949))

(declare-fun call!65390 () Bool)

(declare-fun bm!65387 () Bool)

(declare-fun c!127391 () Bool)

(assert (=> bm!65387 (= call!65390 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127391 (Cons!31942 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600353) lt!600353)))))

(declare-fun b!1362397 () Bool)

(declare-fun e!772841 () Bool)

(assert (=> b!1362397 (= e!772841 call!65390)))

(declare-fun b!1362398 () Bool)

(declare-fun e!772842 () Bool)

(assert (=> b!1362398 (= e!772842 (contains!9511 lt!600353 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362399 () Bool)

(declare-fun e!772840 () Bool)

(assert (=> b!1362399 (= e!772840 e!772841)))

(assert (=> b!1362399 (= c!127391 (validKeyInArray!0 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362401 () Bool)

(assert (=> b!1362401 (= e!772841 call!65390)))

(declare-fun d!145953 () Bool)

(declare-fun res!906502 () Bool)

(declare-fun e!772839 () Bool)

(assert (=> d!145953 (=> res!906502 e!772839)))

(assert (=> d!145953 (= res!906502 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45276 a!3742)))))

(assert (=> d!145953 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600353) e!772839)))

(declare-fun b!1362400 () Bool)

(assert (=> b!1362400 (= e!772839 e!772840)))

(declare-fun res!906501 () Bool)

(assert (=> b!1362400 (=> (not res!906501) (not e!772840))))

(assert (=> b!1362400 (= res!906501 (not e!772842))))

(declare-fun res!906500 () Bool)

(assert (=> b!1362400 (=> (not res!906500) (not e!772842))))

(assert (=> b!1362400 (= res!906500 (validKeyInArray!0 (select (arr!44725 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(assert (= (and d!145953 (not res!906502)) b!1362400))

(assert (= (and b!1362400 res!906500) b!1362398))

(assert (= (and b!1362400 res!906501) b!1362399))

(assert (= (and b!1362399 c!127391) b!1362397))

(assert (= (and b!1362399 (not c!127391)) b!1362401))

(assert (= (or b!1362397 b!1362401) bm!65387))

(assert (=> bm!65387 m!1247377))

(declare-fun m!1247411 () Bool)

(assert (=> bm!65387 m!1247411))

(assert (=> b!1362398 m!1247377))

(assert (=> b!1362398 m!1247377))

(declare-fun m!1247413 () Bool)

(assert (=> b!1362398 m!1247413))

(assert (=> b!1362399 m!1247377))

(assert (=> b!1362399 m!1247377))

(assert (=> b!1362399 m!1247387))

(assert (=> b!1362400 m!1247377))

(assert (=> b!1362400 m!1247377))

(assert (=> b!1362400 m!1247387))

(assert (=> b!1362117 d!145953))

(declare-fun d!145959 () Bool)

(assert (=> d!145959 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1362116 d!145959))

(declare-fun d!145963 () Bool)

(assert (=> d!145963 (= (array_inv!33670 a!3742) (bvsge (size!45276 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114932 d!145963))

(declare-fun d!145965 () Bool)

(declare-fun lt!600436 () Bool)

(assert (=> d!145965 (= lt!600436 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!708 acc!759)))))

(declare-fun e!772850 () Bool)

(assert (=> d!145965 (= lt!600436 e!772850)))

(declare-fun res!906508 () Bool)

(assert (=> d!145965 (=> (not res!906508) (not e!772850))))

(assert (=> d!145965 (= res!906508 (is-Cons!31942 acc!759))))

(assert (=> d!145965 (= (contains!9511 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600436)))

(declare-fun b!1362409 () Bool)

(declare-fun e!772849 () Bool)

(assert (=> b!1362409 (= e!772850 e!772849)))

(declare-fun res!906509 () Bool)

(assert (=> b!1362409 (=> res!906509 e!772849)))

(assert (=> b!1362409 (= res!906509 (= (h!33151 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362410 () Bool)

(assert (=> b!1362410 (= e!772849 (contains!9511 (t!46638 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145965 res!906508) b!1362409))

(assert (= (and b!1362409 (not res!906509)) b!1362410))

(assert (=> d!145965 m!1247257))

(declare-fun m!1247419 () Bool)

(assert (=> d!145965 m!1247419))

(declare-fun m!1247421 () Bool)

(assert (=> b!1362410 m!1247421))

(assert (=> b!1362113 d!145965))

(declare-fun bm!65389 () Bool)

(declare-fun c!127393 () Bool)

(declare-fun call!65392 () Bool)

(assert (=> bm!65389 (= call!65392 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127393 (Cons!31942 (select (arr!44725 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1362411 () Bool)

(declare-fun e!772853 () Bool)

(assert (=> b!1362411 (= e!772853 call!65392)))

(declare-fun b!1362412 () Bool)

(declare-fun e!772854 () Bool)

(assert (=> b!1362412 (= e!772854 (contains!9511 acc!759 (select (arr!44725 a!3742) from!3120)))))

(declare-fun b!1362413 () Bool)

(declare-fun e!772852 () Bool)

(assert (=> b!1362413 (= e!772852 e!772853)))

(assert (=> b!1362413 (= c!127393 (validKeyInArray!0 (select (arr!44725 a!3742) from!3120)))))

(declare-fun b!1362415 () Bool)

(assert (=> b!1362415 (= e!772853 call!65392)))

(declare-fun d!145967 () Bool)

(declare-fun res!906512 () Bool)

(declare-fun e!772851 () Bool)

(assert (=> d!145967 (=> res!906512 e!772851)))

(assert (=> d!145967 (= res!906512 (bvsge from!3120 (size!45276 a!3742)))))

(assert (=> d!145967 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772851)))

(declare-fun b!1362414 () Bool)

(assert (=> b!1362414 (= e!772851 e!772852)))

(declare-fun res!906511 () Bool)

(assert (=> b!1362414 (=> (not res!906511) (not e!772852))))

(assert (=> b!1362414 (= res!906511 (not e!772854))))

(declare-fun res!906510 () Bool)

(assert (=> b!1362414 (=> (not res!906510) (not e!772854))))

(assert (=> b!1362414 (= res!906510 (validKeyInArray!0 (select (arr!44725 a!3742) from!3120)))))

(assert (= (and d!145967 (not res!906512)) b!1362414))

(assert (= (and b!1362414 res!906510) b!1362412))

(assert (= (and b!1362414 res!906511) b!1362413))

(assert (= (and b!1362413 c!127393) b!1362411))

(assert (= (and b!1362413 (not c!127393)) b!1362415))

(assert (= (or b!1362411 b!1362415) bm!65389))

(assert (=> bm!65389 m!1247095))

(declare-fun m!1247423 () Bool)

(assert (=> bm!65389 m!1247423))

(assert (=> b!1362412 m!1247095))

(assert (=> b!1362412 m!1247095))

(declare-fun m!1247425 () Bool)

(assert (=> b!1362412 m!1247425))

(assert (=> b!1362413 m!1247095))

(assert (=> b!1362413 m!1247095))

(assert (=> b!1362413 m!1247115))

(assert (=> b!1362414 m!1247095))

(assert (=> b!1362414 m!1247095))

(assert (=> b!1362414 m!1247115))

(assert (=> b!1362112 d!145967))

(declare-fun d!145969 () Bool)

(declare-fun res!906513 () Bool)

(declare-fun e!772855 () Bool)

(assert (=> d!145969 (=> res!906513 e!772855)))

(assert (=> d!145969 (= res!906513 (is-Nil!31943 lt!600353))))

(assert (=> d!145969 (= (noDuplicate!2390 lt!600353) e!772855)))

(declare-fun b!1362416 () Bool)

(declare-fun e!772856 () Bool)

(assert (=> b!1362416 (= e!772855 e!772856)))

(declare-fun res!906514 () Bool)

(assert (=> b!1362416 (=> (not res!906514) (not e!772856))))

(assert (=> b!1362416 (= res!906514 (not (contains!9511 (t!46638 lt!600353) (h!33151 lt!600353))))))

(declare-fun b!1362417 () Bool)

(assert (=> b!1362417 (= e!772856 (noDuplicate!2390 (t!46638 lt!600353)))))

(assert (= (and d!145969 (not res!906513)) b!1362416))

(assert (= (and b!1362416 res!906514) b!1362417))

(declare-fun m!1247429 () Bool)

(assert (=> b!1362416 m!1247429))

(declare-fun m!1247431 () Bool)

(assert (=> b!1362417 m!1247431))

(assert (=> b!1362122 d!145969))

(assert (=> b!1362111 d!145945))

(declare-fun d!145973 () Bool)

(declare-fun lt!600440 () Bool)

(assert (=> d!145973 (= lt!600440 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!708 lt!600353)))))

(declare-fun e!772858 () Bool)

(assert (=> d!145973 (= lt!600440 e!772858)))

(declare-fun res!906515 () Bool)

(assert (=> d!145973 (=> (not res!906515) (not e!772858))))

(assert (=> d!145973 (= res!906515 (is-Cons!31942 lt!600353))))

(assert (=> d!145973 (= (contains!9511 lt!600353 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600440)))

(declare-fun b!1362418 () Bool)

(declare-fun e!772857 () Bool)

(assert (=> b!1362418 (= e!772858 e!772857)))

(declare-fun res!906516 () Bool)

(assert (=> b!1362418 (=> res!906516 e!772857)))

(assert (=> b!1362418 (= res!906516 (= (h!33151 lt!600353) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362419 () Bool)

(assert (=> b!1362419 (= e!772857 (contains!9511 (t!46638 lt!600353) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145973 res!906515) b!1362418))

(assert (= (and b!1362418 (not res!906516)) b!1362419))

(assert (=> d!145973 m!1247269))

(declare-fun m!1247433 () Bool)

(assert (=> d!145973 m!1247433))

(declare-fun m!1247435 () Bool)

(assert (=> b!1362419 m!1247435))

(assert (=> b!1362110 d!145973))

(declare-fun c!127394 () Bool)

(declare-fun call!65393 () Bool)

(declare-fun bm!65390 () Bool)

(assert (=> bm!65390 (= call!65393 (arrayNoDuplicates!0 lt!600358 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127394 (Cons!31942 (select (arr!44725 lt!600358) from!3120) acc!759) acc!759)))))

(declare-fun b!1362420 () Bool)

(declare-fun e!772861 () Bool)

(assert (=> b!1362420 (= e!772861 call!65393)))

(declare-fun e!772862 () Bool)

(declare-fun b!1362421 () Bool)

(assert (=> b!1362421 (= e!772862 (contains!9511 acc!759 (select (arr!44725 lt!600358) from!3120)))))

(declare-fun b!1362422 () Bool)

(declare-fun e!772860 () Bool)

(assert (=> b!1362422 (= e!772860 e!772861)))

(assert (=> b!1362422 (= c!127394 (validKeyInArray!0 (select (arr!44725 lt!600358) from!3120)))))

(declare-fun b!1362424 () Bool)

(assert (=> b!1362424 (= e!772861 call!65393)))

(declare-fun d!145975 () Bool)

(declare-fun res!906519 () Bool)

(declare-fun e!772859 () Bool)

(assert (=> d!145975 (=> res!906519 e!772859)))

(assert (=> d!145975 (= res!906519 (bvsge from!3120 (size!45276 lt!600358)))))

(assert (=> d!145975 (= (arrayNoDuplicates!0 lt!600358 from!3120 acc!759) e!772859)))

(declare-fun b!1362423 () Bool)

(assert (=> b!1362423 (= e!772859 e!772860)))

(declare-fun res!906518 () Bool)

(assert (=> b!1362423 (=> (not res!906518) (not e!772860))))

(assert (=> b!1362423 (= res!906518 (not e!772862))))

(declare-fun res!906517 () Bool)

(assert (=> b!1362423 (=> (not res!906517) (not e!772862))))

(assert (=> b!1362423 (= res!906517 (validKeyInArray!0 (select (arr!44725 lt!600358) from!3120)))))

(assert (= (and d!145975 (not res!906519)) b!1362423))

(assert (= (and b!1362423 res!906517) b!1362421))

(assert (= (and b!1362423 res!906518) b!1362422))

(assert (= (and b!1362422 c!127394) b!1362420))

(assert (= (and b!1362422 (not c!127394)) b!1362424))

(assert (= (or b!1362420 b!1362424) bm!65390))

(declare-fun m!1247437 () Bool)

(assert (=> bm!65390 m!1247437))

(declare-fun m!1247439 () Bool)

(assert (=> bm!65390 m!1247439))

(assert (=> b!1362421 m!1247437))

(assert (=> b!1362421 m!1247437))

(declare-fun m!1247441 () Bool)

(assert (=> b!1362421 m!1247441))

(assert (=> b!1362422 m!1247437))

(assert (=> b!1362422 m!1247437))

(declare-fun m!1247443 () Bool)

(assert (=> b!1362422 m!1247443))

(assert (=> b!1362423 m!1247437))

(assert (=> b!1362423 m!1247437))

(assert (=> b!1362423 m!1247443))

(assert (=> b!1362121 d!145975))

(declare-fun call!65394 () Bool)

