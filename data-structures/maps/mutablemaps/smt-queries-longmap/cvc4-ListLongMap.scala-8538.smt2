; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104200 () Bool)

(assert start!104200)

(declare-fun b!1245098 () Bool)

(declare-fun e!705944 () Bool)

(declare-datatypes ((List!27620 0))(
  ( (Nil!27617) (Cons!27616 (h!28825 (_ BitVec 64)) (t!41096 List!27620)) )
))
(declare-fun contains!7459 (List!27620 (_ BitVec 64)) Bool)

(assert (=> b!1245098 (= e!705944 (contains!7459 Nil!27617 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245099 () Bool)

(declare-fun res!830726 () Bool)

(declare-fun e!705942 () Bool)

(assert (=> b!1245099 (=> (not res!830726) (not e!705942))))

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1245099 (= res!830726 (and (= from!3270 newFrom!287) (bvsge newFrom!287 #b00000000000000000000000000000000)))))

(declare-fun b!1245100 () Bool)

(declare-fun res!830727 () Bool)

(assert (=> b!1245100 (=> (not res!830727) (not e!705942))))

(declare-fun noDuplicate!2049 (List!27620) Bool)

(assert (=> b!1245100 (= res!830727 (noDuplicate!2049 Nil!27617))))

(declare-fun b!1245101 () Bool)

(declare-fun res!830724 () Bool)

(assert (=> b!1245101 (=> (not res!830724) (not e!705942))))

(declare-datatypes ((array!80115 0))(
  ( (array!80116 (arr!38639 (Array (_ BitVec 32) (_ BitVec 64))) (size!39176 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80115)

(declare-fun arrayNoDuplicates!0 (array!80115 (_ BitVec 32) List!27620) Bool)

(assert (=> b!1245101 (= res!830724 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27617))))

(declare-fun b!1245102 () Bool)

(assert (=> b!1245102 (= e!705942 e!705944)))

(declare-fun res!830728 () Bool)

(assert (=> b!1245102 (=> res!830728 e!705944)))

(assert (=> b!1245102 (= res!830728 (contains!7459 Nil!27617 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!830725 () Bool)

(assert (=> start!104200 (=> (not res!830725) (not e!705942))))

(assert (=> start!104200 (= res!830725 (and (bvslt (size!39176 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39176 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39176 a!3892))))))

(assert (=> start!104200 e!705942))

(declare-fun array_inv!29415 (array!80115) Bool)

(assert (=> start!104200 (array_inv!29415 a!3892)))

(assert (=> start!104200 true))

(assert (= (and start!104200 res!830725) b!1245101))

(assert (= (and b!1245101 res!830724) b!1245099))

(assert (= (and b!1245099 res!830726) b!1245100))

(assert (= (and b!1245100 res!830727) b!1245102))

(assert (= (and b!1245102 (not res!830728)) b!1245098))

(declare-fun m!1147235 () Bool)

(assert (=> b!1245102 m!1147235))

(declare-fun m!1147237 () Bool)

(assert (=> b!1245098 m!1147237))

(declare-fun m!1147239 () Bool)

(assert (=> start!104200 m!1147239))

(declare-fun m!1147241 () Bool)

(assert (=> b!1245100 m!1147241))

(declare-fun m!1147243 () Bool)

(assert (=> b!1245101 m!1147243))

(push 1)

(assert (not b!1245101))

(assert (not b!1245100))

(assert (not b!1245102))

(assert (not start!104200))

(assert (not b!1245098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!137229 () Bool)

(declare-fun lt!562810 () Bool)

(declare-fun content!624 (List!27620) (Set (_ BitVec 64)))

(assert (=> d!137229 (= lt!562810 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!624 Nil!27617)))))

(declare-fun e!705961 () Bool)

(assert (=> d!137229 (= lt!562810 e!705961)))

(declare-fun res!830746 () Bool)

(assert (=> d!137229 (=> (not res!830746) (not e!705961))))

(assert (=> d!137229 (= res!830746 (is-Cons!27616 Nil!27617))))

(assert (=> d!137229 (= (contains!7459 Nil!27617 #b0000000000000000000000000000000000000000000000000000000000000000) lt!562810)))

(declare-fun b!1245119 () Bool)

(declare-fun e!705962 () Bool)

(assert (=> b!1245119 (= e!705961 e!705962)))

(declare-fun res!830745 () Bool)

(assert (=> b!1245119 (=> res!830745 e!705962)))

(assert (=> b!1245119 (= res!830745 (= (h!28825 Nil!27617) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1245120 () Bool)

(assert (=> b!1245120 (= e!705962 (contains!7459 (t!41096 Nil!27617) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!137229 res!830746) b!1245119))

(assert (= (and b!1245119 (not res!830745)) b!1245120))

(declare-fun m!1147255 () Bool)

(assert (=> d!137229 m!1147255))

(declare-fun m!1147257 () Bool)

(assert (=> d!137229 m!1147257))

(declare-fun m!1147259 () Bool)

(assert (=> b!1245120 m!1147259))

(assert (=> b!1245102 d!137229))

(declare-fun b!1245164 () Bool)

(declare-fun e!706000 () Bool)

(assert (=> b!1245164 (= e!706000 (contains!7459 Nil!27617 (select (arr!38639 a!3892) from!3270)))))

(declare-fun b!1245165 () Bool)

(declare-fun e!706001 () Bool)

(declare-fun call!61467 () Bool)

(assert (=> b!1245165 (= e!706001 call!61467)))

(declare-fun bm!61464 () Bool)

(declare-fun c!121881 () Bool)

(assert (=> bm!61464 (= call!61467 (arrayNoDuplicates!0 a!3892 (bvadd from!3270 #b00000000000000000000000000000001) (ite c!121881 (Cons!27616 (select (arr!38639 a!3892) from!3270) Nil!27617) Nil!27617)))))

(declare-fun d!137237 () Bool)

(declare-fun res!830777 () Bool)

(declare-fun e!706002 () Bool)

(assert (=> d!137237 (=> res!830777 e!706002)))

(assert (=> d!137237 (= res!830777 (bvsge from!3270 (size!39176 a!3892)))))

(assert (=> d!137237 (= (arrayNoDuplicates!0 a!3892 from!3270 Nil!27617) e!706002)))

(declare-fun b!1245166 () Bool)

(assert (=> b!1245166 (= e!706001 call!61467)))

(declare-fun b!1245167 () Bool)

(declare-fun e!705999 () Bool)

(assert (=> b!1245167 (= e!705999 e!706001)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1245167 (= c!121881 (validKeyInArray!0 (select (arr!38639 a!3892) from!3270)))))

(declare-fun b!1245168 () Bool)

(assert (=> b!1245168 (= e!706002 e!705999)))

(declare-fun res!830778 () Bool)

(assert (=> b!1245168 (=> (not res!830778) (not e!705999))))

(assert (=> b!1245168 (= res!830778 (not e!706000))))

(declare-fun res!830776 () Bool)

(assert (=> b!1245168 (=> (not res!830776) (not e!706000))))

(assert (=> b!1245168 (= res!830776 (validKeyInArray!0 (select (arr!38639 a!3892) from!3270)))))

(assert (= (and d!137237 (not res!830777)) b!1245168))

(assert (= (and b!1245168 res!830776) b!1245164))

(assert (= (and b!1245168 res!830778) b!1245167))

(assert (= (and b!1245167 c!121881) b!1245166))

(assert (= (and b!1245167 (not c!121881)) b!1245165))

(assert (= (or b!1245166 b!1245165) bm!61464))

(declare-fun m!1147279 () Bool)

(assert (=> b!1245164 m!1147279))

(assert (=> b!1245164 m!1147279))

(declare-fun m!1147281 () Bool)

(assert (=> b!1245164 m!1147281))

(assert (=> bm!61464 m!1147279))

(declare-fun m!1147283 () Bool)

(assert (=> bm!61464 m!1147283))

(assert (=> b!1245167 m!1147279))

(assert (=> b!1245167 m!1147279))

(declare-fun m!1147285 () Bool)

(assert (=> b!1245167 m!1147285))

(assert (=> b!1245168 m!1147279))

(assert (=> b!1245168 m!1147279))

(assert (=> b!1245168 m!1147285))

(assert (=> b!1245101 d!137237))

(declare-fun d!137245 () Bool)

(assert (=> d!137245 (= (array_inv!29415 a!3892) (bvsge (size!39176 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!104200 d!137245))

(declare-fun d!137247 () Bool)

(declare-fun res!830794 () Bool)

(declare-fun e!706019 () Bool)

(assert (=> d!137247 (=> res!830794 e!706019)))

(assert (=> d!137247 (= res!830794 (is-Nil!27617 Nil!27617))))

(assert (=> d!137247 (= (noDuplicate!2049 Nil!27617) e!706019)))

(declare-fun b!1245186 () Bool)

(declare-fun e!706020 () Bool)

(assert (=> b!1245186 (= e!706019 e!706020)))

(declare-fun res!830795 () Bool)

(assert (=> b!1245186 (=> (not res!830795) (not e!706020))))

