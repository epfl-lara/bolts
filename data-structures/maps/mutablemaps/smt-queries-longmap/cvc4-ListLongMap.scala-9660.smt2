; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114138 () Bool)

(assert start!114138)

(declare-fun b!1354936 () Bool)

(declare-fun res!900052 () Bool)

(declare-fun e!769587 () Bool)

(assert (=> b!1354936 (=> (not res!900052) (not e!769587))))

(declare-datatypes ((List!31786 0))(
  ( (Nil!31783) (Cons!31782 (h!32991 (_ BitVec 64)) (t!46451 List!31786)) )
))
(declare-fun lt!598400 () List!31786)

(declare-fun noDuplicate!2230 (List!31786) Bool)

(assert (=> b!1354936 (= res!900052 (noDuplicate!2230 lt!598400))))

(declare-fun b!1354937 () Bool)

(declare-fun e!769584 () Bool)

(assert (=> b!1354937 (= e!769584 e!769587)))

(declare-fun res!900058 () Bool)

(assert (=> b!1354937 (=> (not res!900058) (not e!769587))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1354937 (= res!900058 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun acc!759 () List!31786)

(declare-datatypes ((array!92243 0))(
  ( (array!92244 (arr!44565 (Array (_ BitVec 32) (_ BitVec 64))) (size!45116 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92243)

(declare-fun $colon$colon!777 (List!31786 (_ BitVec 64)) List!31786)

(assert (=> b!1354937 (= lt!598400 ($colon$colon!777 acc!759 (select (arr!44565 a!3742) from!3120)))))

(declare-fun b!1354938 () Bool)

(declare-fun res!900053 () Bool)

(declare-fun e!769585 () Bool)

(assert (=> b!1354938 (=> (not res!900053) (not e!769585))))

(assert (=> b!1354938 (= res!900053 (noDuplicate!2230 acc!759))))

(declare-fun b!1354939 () Bool)

(declare-fun res!900063 () Bool)

(assert (=> b!1354939 (=> (not res!900063) (not e!769587))))

(declare-fun contains!9351 (List!31786 (_ BitVec 64)) Bool)

(assert (=> b!1354939 (= res!900063 (not (contains!9351 lt!598400 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354940 () Bool)

(declare-fun res!900054 () Bool)

(assert (=> b!1354940 (=> (not res!900054) (not e!769587))))

(declare-fun arrayNoDuplicates!0 (array!92243 (_ BitVec 32) List!31786) Bool)

(assert (=> b!1354940 (= res!900054 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598400))))

(declare-fun res!900059 () Bool)

(assert (=> start!114138 (=> (not res!900059) (not e!769585))))

(assert (=> start!114138 (= res!900059 (and (bvslt (size!45116 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45116 a!3742))))))

(assert (=> start!114138 e!769585))

(assert (=> start!114138 true))

(declare-fun array_inv!33510 (array!92243) Bool)

(assert (=> start!114138 (array_inv!33510 a!3742)))

(declare-fun b!1354941 () Bool)

(declare-fun res!900055 () Bool)

(assert (=> b!1354941 (=> (not res!900055) (not e!769585))))

(assert (=> b!1354941 (= res!900055 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45116 a!3742)))))

(declare-fun b!1354942 () Bool)

(declare-fun res!900060 () Bool)

(assert (=> b!1354942 (=> (not res!900060) (not e!769585))))

(assert (=> b!1354942 (= res!900060 (not (contains!9351 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354943 () Bool)

(declare-fun res!900056 () Bool)

(assert (=> b!1354943 (=> (not res!900056) (not e!769585))))

(assert (=> b!1354943 (= res!900056 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354944 () Bool)

(declare-fun res!900057 () Bool)

(assert (=> b!1354944 (=> (not res!900057) (not e!769587))))

(assert (=> b!1354944 (= res!900057 (not (contains!9351 lt!598400 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354945 () Bool)

(declare-datatypes ((Unit!44459 0))(
  ( (Unit!44460) )
))
(declare-fun e!769588 () Unit!44459)

(declare-fun lt!598398 () Unit!44459)

(assert (=> b!1354945 (= e!769588 lt!598398)))

(declare-fun lt!598395 () Unit!44459)

(declare-fun lemmaListSubSeqRefl!0 (List!31786) Unit!44459)

(assert (=> b!1354945 (= lt!598395 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!760 (List!31786 List!31786) Bool)

(assert (=> b!1354945 (subseq!760 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92243 List!31786 List!31786 (_ BitVec 32)) Unit!44459)

(assert (=> b!1354945 (= lt!598398 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!777 acc!759 (select (arr!44565 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354945 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354946 () Bool)

(declare-fun res!900061 () Bool)

(assert (=> b!1354946 (=> (not res!900061) (not e!769585))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354946 (= res!900061 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354947 () Bool)

(assert (=> b!1354947 (= e!769587 (not true))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354947 (arrayNoDuplicates!0 (array!92244 (store (arr!44565 a!3742) i!1404 l!3587) (size!45116 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598400)))

(declare-fun lt!598397 () Unit!44459)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92243 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31786) Unit!44459)

(assert (=> b!1354947 (= lt!598397 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598400))))

(declare-fun b!1354948 () Bool)

(declare-fun res!900049 () Bool)

(assert (=> b!1354948 (=> (not res!900049) (not e!769585))))

(assert (=> b!1354948 (= res!900049 (not (contains!9351 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354949 () Bool)

(declare-fun res!900051 () Bool)

(assert (=> b!1354949 (=> (not res!900051) (not e!769585))))

(assert (=> b!1354949 (= res!900051 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45116 a!3742))))))

(declare-fun b!1354950 () Bool)

(assert (=> b!1354950 (= e!769585 e!769584)))

(declare-fun res!900050 () Bool)

(assert (=> b!1354950 (=> (not res!900050) (not e!769584))))

(declare-fun lt!598396 () Bool)

(assert (=> b!1354950 (= res!900050 (and (not (= from!3120 i!1404)) lt!598396))))

(declare-fun lt!598399 () Unit!44459)

(assert (=> b!1354950 (= lt!598399 e!769588)))

(declare-fun c!126886 () Bool)

(assert (=> b!1354950 (= c!126886 lt!598396)))

(assert (=> b!1354950 (= lt!598396 (validKeyInArray!0 (select (arr!44565 a!3742) from!3120)))))

(declare-fun b!1354951 () Bool)

(declare-fun Unit!44461 () Unit!44459)

(assert (=> b!1354951 (= e!769588 Unit!44461)))

(declare-fun b!1354952 () Bool)

(declare-fun res!900062 () Bool)

(assert (=> b!1354952 (=> (not res!900062) (not e!769585))))

(assert (=> b!1354952 (= res!900062 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31783))))

(assert (= (and start!114138 res!900059) b!1354938))

(assert (= (and b!1354938 res!900053) b!1354948))

(assert (= (and b!1354948 res!900049) b!1354942))

(assert (= (and b!1354942 res!900060) b!1354952))

(assert (= (and b!1354952 res!900062) b!1354943))

(assert (= (and b!1354943 res!900056) b!1354949))

(assert (= (and b!1354949 res!900051) b!1354946))

(assert (= (and b!1354946 res!900061) b!1354941))

(assert (= (and b!1354941 res!900055) b!1354950))

(assert (= (and b!1354950 c!126886) b!1354945))

(assert (= (and b!1354950 (not c!126886)) b!1354951))

(assert (= (and b!1354950 res!900050) b!1354937))

(assert (= (and b!1354937 res!900058) b!1354936))

(assert (= (and b!1354936 res!900052) b!1354944))

(assert (= (and b!1354944 res!900057) b!1354939))

(assert (= (and b!1354939 res!900063) b!1354940))

(assert (= (and b!1354940 res!900054) b!1354947))

(declare-fun m!1241239 () Bool)

(assert (=> b!1354944 m!1241239))

(declare-fun m!1241241 () Bool)

(assert (=> b!1354947 m!1241241))

(declare-fun m!1241243 () Bool)

(assert (=> b!1354947 m!1241243))

(declare-fun m!1241245 () Bool)

(assert (=> b!1354947 m!1241245))

(declare-fun m!1241247 () Bool)

(assert (=> b!1354950 m!1241247))

(assert (=> b!1354950 m!1241247))

(declare-fun m!1241249 () Bool)

(assert (=> b!1354950 m!1241249))

(declare-fun m!1241251 () Bool)

(assert (=> b!1354946 m!1241251))

(declare-fun m!1241253 () Bool)

(assert (=> b!1354943 m!1241253))

(declare-fun m!1241255 () Bool)

(assert (=> b!1354952 m!1241255))

(declare-fun m!1241257 () Bool)

(assert (=> b!1354940 m!1241257))

(assert (=> b!1354937 m!1241247))

(assert (=> b!1354937 m!1241247))

(declare-fun m!1241259 () Bool)

(assert (=> b!1354937 m!1241259))

(declare-fun m!1241261 () Bool)

(assert (=> b!1354938 m!1241261))

(declare-fun m!1241263 () Bool)

(assert (=> start!114138 m!1241263))

(declare-fun m!1241265 () Bool)

(assert (=> b!1354948 m!1241265))

(declare-fun m!1241267 () Bool)

(assert (=> b!1354936 m!1241267))

(declare-fun m!1241269 () Bool)

(assert (=> b!1354939 m!1241269))

(declare-fun m!1241271 () Bool)

(assert (=> b!1354942 m!1241271))

(declare-fun m!1241273 () Bool)

(assert (=> b!1354945 m!1241273))

(assert (=> b!1354945 m!1241247))

(assert (=> b!1354945 m!1241259))

(declare-fun m!1241275 () Bool)

(assert (=> b!1354945 m!1241275))

(declare-fun m!1241277 () Bool)

(assert (=> b!1354945 m!1241277))

(assert (=> b!1354945 m!1241247))

(assert (=> b!1354945 m!1241259))

(declare-fun m!1241279 () Bool)

(assert (=> b!1354945 m!1241279))

(push 1)

