; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114842 () Bool)

(assert start!114842)

(declare-fun b!1361043 () Bool)

(declare-fun res!905346 () Bool)

(declare-fun e!772212 () Bool)

(assert (=> b!1361043 (=> (not res!905346) (not e!772212))))

(declare-datatypes ((List!31928 0))(
  ( (Nil!31925) (Cons!31924 (h!33133 (_ BitVec 64)) (t!46617 List!31928)) )
))
(declare-fun lt!600010 () List!31928)

(declare-fun noDuplicate!2372 (List!31928) Bool)

(assert (=> b!1361043 (= res!905346 (noDuplicate!2372 lt!600010))))

(declare-fun b!1361044 () Bool)

(declare-fun res!905350 () Bool)

(declare-fun e!772213 () Bool)

(assert (=> b!1361044 (=> (not res!905350) (not e!772213))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361044 (= res!905350 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361045 () Bool)

(declare-fun res!905351 () Bool)

(assert (=> b!1361045 (=> (not res!905351) (not e!772213))))

(declare-datatypes ((array!92551 0))(
  ( (array!92552 (arr!44707 (Array (_ BitVec 32) (_ BitVec 64))) (size!45258 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92551)

(declare-fun arrayNoDuplicates!0 (array!92551 (_ BitVec 32) List!31928) Bool)

(assert (=> b!1361045 (= res!905351 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31925))))

(declare-fun b!1361046 () Bool)

(declare-fun res!905352 () Bool)

(assert (=> b!1361046 (=> (not res!905352) (not e!772213))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361046 (= res!905352 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45258 a!3742))))))

(declare-fun b!1361047 () Bool)

(assert (=> b!1361047 (= e!772212 false)))

(declare-fun lt!600012 () Bool)

(declare-fun contains!9493 (List!31928 (_ BitVec 64)) Bool)

(assert (=> b!1361047 (= lt!600012 (contains!9493 lt!600010 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361048 () Bool)

(declare-fun e!772216 () Bool)

(assert (=> b!1361048 (= e!772213 e!772216)))

(declare-fun res!905341 () Bool)

(assert (=> b!1361048 (=> (not res!905341) (not e!772216))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!600013 () Bool)

(assert (=> b!1361048 (= res!905341 (and (not (= from!3120 i!1404)) lt!600013))))

(declare-datatypes ((Unit!44804 0))(
  ( (Unit!44805) )
))
(declare-fun lt!600014 () Unit!44804)

(declare-fun e!772214 () Unit!44804)

(assert (=> b!1361048 (= lt!600014 e!772214)))

(declare-fun c!127294 () Bool)

(assert (=> b!1361048 (= c!127294 lt!600013)))

(assert (=> b!1361048 (= lt!600013 (validKeyInArray!0 (select (arr!44707 a!3742) from!3120)))))

(declare-fun b!1361049 () Bool)

(declare-fun res!905344 () Bool)

(assert (=> b!1361049 (=> (not res!905344) (not e!772213))))

(declare-fun acc!759 () List!31928)

(assert (=> b!1361049 (= res!905344 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361050 () Bool)

(declare-fun Unit!44806 () Unit!44804)

(assert (=> b!1361050 (= e!772214 Unit!44806)))

(declare-fun res!905347 () Bool)

(assert (=> start!114842 (=> (not res!905347) (not e!772213))))

(assert (=> start!114842 (= res!905347 (and (bvslt (size!45258 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45258 a!3742))))))

(assert (=> start!114842 e!772213))

(assert (=> start!114842 true))

(declare-fun array_inv!33652 (array!92551) Bool)

(assert (=> start!114842 (array_inv!33652 a!3742)))

(declare-fun b!1361051 () Bool)

(declare-fun res!905340 () Bool)

(assert (=> b!1361051 (=> (not res!905340) (not e!772213))))

(assert (=> b!1361051 (= res!905340 (not (contains!9493 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361052 () Bool)

(assert (=> b!1361052 (= e!772216 e!772212)))

(declare-fun res!905348 () Bool)

(assert (=> b!1361052 (=> (not res!905348) (not e!772212))))

(assert (=> b!1361052 (= res!905348 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!889 (List!31928 (_ BitVec 64)) List!31928)

(assert (=> b!1361052 (= lt!600010 ($colon$colon!889 acc!759 (select (arr!44707 a!3742) from!3120)))))

(declare-fun b!1361053 () Bool)

(declare-fun res!905345 () Bool)

(assert (=> b!1361053 (=> (not res!905345) (not e!772213))))

(assert (=> b!1361053 (= res!905345 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45258 a!3742)))))

(declare-fun b!1361054 () Bool)

(declare-fun lt!600009 () Unit!44804)

(assert (=> b!1361054 (= e!772214 lt!600009)))

(declare-fun lt!600011 () Unit!44804)

(declare-fun lemmaListSubSeqRefl!0 (List!31928) Unit!44804)

(assert (=> b!1361054 (= lt!600011 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!884 (List!31928 List!31928) Bool)

(assert (=> b!1361054 (subseq!884 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92551 List!31928 List!31928 (_ BitVec 32)) Unit!44804)

(assert (=> b!1361054 (= lt!600009 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!889 acc!759 (select (arr!44707 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361054 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361055 () Bool)

(declare-fun res!905342 () Bool)

(assert (=> b!1361055 (=> (not res!905342) (not e!772213))))

(assert (=> b!1361055 (= res!905342 (not (contains!9493 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361056 () Bool)

(declare-fun res!905349 () Bool)

(assert (=> b!1361056 (=> (not res!905349) (not e!772213))))

(assert (=> b!1361056 (= res!905349 (noDuplicate!2372 acc!759))))

(declare-fun b!1361057 () Bool)

(declare-fun res!905343 () Bool)

(assert (=> b!1361057 (=> (not res!905343) (not e!772212))))

(assert (=> b!1361057 (= res!905343 (not (contains!9493 lt!600010 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114842 res!905347) b!1361056))

(assert (= (and b!1361056 res!905349) b!1361051))

(assert (= (and b!1361051 res!905340) b!1361055))

(assert (= (and b!1361055 res!905342) b!1361045))

(assert (= (and b!1361045 res!905351) b!1361049))

(assert (= (and b!1361049 res!905344) b!1361046))

(assert (= (and b!1361046 res!905352) b!1361044))

(assert (= (and b!1361044 res!905350) b!1361053))

(assert (= (and b!1361053 res!905345) b!1361048))

(assert (= (and b!1361048 c!127294) b!1361054))

(assert (= (and b!1361048 (not c!127294)) b!1361050))

(assert (= (and b!1361048 res!905341) b!1361052))

(assert (= (and b!1361052 res!905348) b!1361043))

(assert (= (and b!1361043 res!905346) b!1361057))

(assert (= (and b!1361057 res!905343) b!1361047))

(declare-fun m!1246255 () Bool)

(assert (=> b!1361056 m!1246255))

(declare-fun m!1246257 () Bool)

(assert (=> b!1361043 m!1246257))

(declare-fun m!1246259 () Bool)

(assert (=> b!1361045 m!1246259))

(declare-fun m!1246261 () Bool)

(assert (=> b!1361055 m!1246261))

(declare-fun m!1246263 () Bool)

(assert (=> b!1361047 m!1246263))

(declare-fun m!1246265 () Bool)

(assert (=> b!1361044 m!1246265))

(declare-fun m!1246267 () Bool)

(assert (=> b!1361054 m!1246267))

(declare-fun m!1246269 () Bool)

(assert (=> b!1361054 m!1246269))

(declare-fun m!1246271 () Bool)

(assert (=> b!1361054 m!1246271))

(declare-fun m!1246273 () Bool)

(assert (=> b!1361054 m!1246273))

(declare-fun m!1246275 () Bool)

(assert (=> b!1361054 m!1246275))

(assert (=> b!1361054 m!1246269))

(assert (=> b!1361054 m!1246271))

(declare-fun m!1246277 () Bool)

(assert (=> b!1361054 m!1246277))

(assert (=> b!1361048 m!1246269))

(assert (=> b!1361048 m!1246269))

(declare-fun m!1246279 () Bool)

(assert (=> b!1361048 m!1246279))

(declare-fun m!1246281 () Bool)

(assert (=> b!1361051 m!1246281))

(declare-fun m!1246283 () Bool)

(assert (=> b!1361049 m!1246283))

(declare-fun m!1246285 () Bool)

(assert (=> b!1361057 m!1246285))

(assert (=> b!1361052 m!1246269))

(assert (=> b!1361052 m!1246269))

(assert (=> b!1361052 m!1246271))

(declare-fun m!1246287 () Bool)

(assert (=> start!114842 m!1246287))

(push 1)

