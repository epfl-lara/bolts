; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114612 () Bool)

(assert start!114612)

(declare-fun b!1359390 () Bool)

(declare-fun res!903977 () Bool)

(declare-fun e!771395 () Bool)

(assert (=> b!1359390 (=> (not res!903977) (not e!771395))))

(declare-datatypes ((array!92480 0))(
  ( (array!92481 (arr!44676 (Array (_ BitVec 32) (_ BitVec 64))) (size!45227 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92480)

(declare-datatypes ((List!31897 0))(
  ( (Nil!31894) (Cons!31893 (h!33102 (_ BitVec 64)) (t!46577 List!31897)) )
))
(declare-fun arrayNoDuplicates!0 (array!92480 (_ BitVec 32) List!31897) Bool)

(assert (=> b!1359390 (= res!903977 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31894))))

(declare-fun b!1359391 () Bool)

(declare-fun res!903982 () Bool)

(assert (=> b!1359391 (=> (not res!903982) (not e!771395))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1359391 (= res!903982 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45227 a!3742)))))

(declare-fun b!1359392 () Bool)

(declare-datatypes ((Unit!44711 0))(
  ( (Unit!44712) )
))
(declare-fun e!771396 () Unit!44711)

(declare-fun lt!599555 () Unit!44711)

(assert (=> b!1359392 (= e!771396 lt!599555)))

(declare-fun lt!599556 () Unit!44711)

(declare-fun acc!759 () List!31897)

(declare-fun lemmaListSubSeqRefl!0 (List!31897) Unit!44711)

(assert (=> b!1359392 (= lt!599556 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!853 (List!31897 List!31897) Bool)

(assert (=> b!1359392 (subseq!853 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92480 List!31897 List!31897 (_ BitVec 32)) Unit!44711)

(declare-fun $colon$colon!858 (List!31897 (_ BitVec 64)) List!31897)

(assert (=> b!1359392 (= lt!599555 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!858 acc!759 (select (arr!44676 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359392 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359393 () Bool)

(declare-fun e!771394 () Bool)

(assert (=> b!1359393 (= e!771394 false)))

(declare-fun lt!599558 () Bool)

(assert (=> b!1359393 (= lt!599558 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359394 () Bool)

(declare-fun res!903981 () Bool)

(assert (=> b!1359394 (=> (not res!903981) (not e!771395))))

(assert (=> b!1359394 (= res!903981 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359395 () Bool)

(declare-fun res!903980 () Bool)

(assert (=> b!1359395 (=> (not res!903980) (not e!771395))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359395 (= res!903980 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45227 a!3742))))))

(declare-fun res!903978 () Bool)

(assert (=> start!114612 (=> (not res!903978) (not e!771395))))

(assert (=> start!114612 (= res!903978 (and (bvslt (size!45227 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45227 a!3742))))))

(assert (=> start!114612 e!771395))

(assert (=> start!114612 true))

(declare-fun array_inv!33621 (array!92480) Bool)

(assert (=> start!114612 (array_inv!33621 a!3742)))

(declare-fun b!1359396 () Bool)

(declare-fun Unit!44713 () Unit!44711)

(assert (=> b!1359396 (= e!771396 Unit!44713)))

(declare-fun b!1359397 () Bool)

(declare-fun res!903983 () Bool)

(assert (=> b!1359397 (=> (not res!903983) (not e!771395))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359397 (= res!903983 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359398 () Bool)

(declare-fun res!903984 () Bool)

(assert (=> b!1359398 (=> (not res!903984) (not e!771395))))

(declare-fun noDuplicate!2341 (List!31897) Bool)

(assert (=> b!1359398 (= res!903984 (noDuplicate!2341 acc!759))))

(declare-fun b!1359399 () Bool)

(declare-fun res!903979 () Bool)

(assert (=> b!1359399 (=> (not res!903979) (not e!771395))))

(declare-fun contains!9462 (List!31897 (_ BitVec 64)) Bool)

(assert (=> b!1359399 (= res!903979 (not (contains!9462 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359400 () Bool)

(declare-fun res!903976 () Bool)

(assert (=> b!1359400 (=> (not res!903976) (not e!771395))))

(assert (=> b!1359400 (= res!903976 (not (contains!9462 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359401 () Bool)

(assert (=> b!1359401 (= e!771395 e!771394)))

(declare-fun res!903975 () Bool)

(assert (=> b!1359401 (=> (not res!903975) (not e!771394))))

(assert (=> b!1359401 (= res!903975 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599557 () Unit!44711)

(assert (=> b!1359401 (= lt!599557 e!771396)))

(declare-fun c!127150 () Bool)

(assert (=> b!1359401 (= c!127150 (validKeyInArray!0 (select (arr!44676 a!3742) from!3120)))))

(assert (= (and start!114612 res!903978) b!1359398))

(assert (= (and b!1359398 res!903984) b!1359400))

(assert (= (and b!1359400 res!903976) b!1359399))

(assert (= (and b!1359399 res!903979) b!1359390))

(assert (= (and b!1359390 res!903977) b!1359394))

(assert (= (and b!1359394 res!903981) b!1359395))

(assert (= (and b!1359395 res!903980) b!1359397))

(assert (= (and b!1359397 res!903983) b!1359391))

(assert (= (and b!1359391 res!903982) b!1359401))

(assert (= (and b!1359401 c!127150) b!1359392))

(assert (= (and b!1359401 (not c!127150)) b!1359396))

(assert (= (and b!1359401 res!903975) b!1359393))

(declare-fun m!1244829 () Bool)

(assert (=> start!114612 m!1244829))

(declare-fun m!1244831 () Bool)

(assert (=> b!1359399 m!1244831))

(declare-fun m!1244833 () Bool)

(assert (=> b!1359398 m!1244833))

(declare-fun m!1244835 () Bool)

(assert (=> b!1359394 m!1244835))

(declare-fun m!1244837 () Bool)

(assert (=> b!1359390 m!1244837))

(declare-fun m!1244839 () Bool)

(assert (=> b!1359401 m!1244839))

(assert (=> b!1359401 m!1244839))

(declare-fun m!1244841 () Bool)

(assert (=> b!1359401 m!1244841))

(declare-fun m!1244843 () Bool)

(assert (=> b!1359397 m!1244843))

(declare-fun m!1244845 () Bool)

(assert (=> b!1359393 m!1244845))

(declare-fun m!1244847 () Bool)

(assert (=> b!1359400 m!1244847))

(declare-fun m!1244849 () Bool)

(assert (=> b!1359392 m!1244849))

(assert (=> b!1359392 m!1244839))

(declare-fun m!1244851 () Bool)

(assert (=> b!1359392 m!1244851))

(declare-fun m!1244853 () Bool)

(assert (=> b!1359392 m!1244853))

(assert (=> b!1359392 m!1244845))

(assert (=> b!1359392 m!1244839))

(assert (=> b!1359392 m!1244851))

(declare-fun m!1244855 () Bool)

(assert (=> b!1359392 m!1244855))

(push 1)

(assert (not b!1359401))

