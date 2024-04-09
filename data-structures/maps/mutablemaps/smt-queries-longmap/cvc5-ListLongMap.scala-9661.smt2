; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114140 () Bool)

(assert start!114140)

(declare-fun b!1354977 () Bool)

(declare-fun e!769598 () Bool)

(declare-fun e!769599 () Bool)

(assert (=> b!1354977 (= e!769598 e!769599)))

(declare-fun res!900090 () Bool)

(assert (=> b!1354977 (=> (not res!900090) (not e!769599))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598412 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354977 (= res!900090 (and (not (= from!3120 i!1404)) (not lt!598412) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44462 0))(
  ( (Unit!44463) )
))
(declare-fun lt!598415 () Unit!44462)

(declare-fun e!769600 () Unit!44462)

(assert (=> b!1354977 (= lt!598415 e!769600)))

(declare-fun c!126889 () Bool)

(assert (=> b!1354977 (= c!126889 lt!598412)))

(declare-datatypes ((array!92245 0))(
  ( (array!92246 (arr!44566 (Array (_ BitVec 32) (_ BitVec 64))) (size!45117 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92245)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354977 (= lt!598412 (validKeyInArray!0 (select (arr!44566 a!3742) from!3120)))))

(declare-fun b!1354978 () Bool)

(declare-fun res!900093 () Bool)

(assert (=> b!1354978 (=> (not res!900093) (not e!769598))))

(assert (=> b!1354978 (= res!900093 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45117 a!3742))))))

(declare-fun b!1354979 () Bool)

(declare-fun res!900087 () Bool)

(assert (=> b!1354979 (=> (not res!900087) (not e!769598))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1354979 (= res!900087 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354980 () Bool)

(assert (=> b!1354980 (= e!769599 false)))

(declare-datatypes ((List!31787 0))(
  ( (Nil!31784) (Cons!31783 (h!32992 (_ BitVec 64)) (t!46452 List!31787)) )
))
(declare-fun acc!759 () List!31787)

(declare-fun lt!598411 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92245 (_ BitVec 32) List!31787) Bool)

(assert (=> b!1354980 (= lt!598411 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!900085 () Bool)

(assert (=> start!114140 (=> (not res!900085) (not e!769598))))

(assert (=> start!114140 (= res!900085 (and (bvslt (size!45117 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45117 a!3742))))))

(assert (=> start!114140 e!769598))

(assert (=> start!114140 true))

(declare-fun array_inv!33511 (array!92245) Bool)

(assert (=> start!114140 (array_inv!33511 a!3742)))

(declare-fun b!1354981 () Bool)

(declare-fun res!900086 () Bool)

(assert (=> b!1354981 (=> (not res!900086) (not e!769598))))

(declare-fun contains!9352 (List!31787 (_ BitVec 64)) Bool)

(assert (=> b!1354981 (= res!900086 (not (contains!9352 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354982 () Bool)

(declare-fun res!900092 () Bool)

(assert (=> b!1354982 (=> (not res!900092) (not e!769598))))

(declare-fun noDuplicate!2231 (List!31787) Bool)

(assert (=> b!1354982 (= res!900092 (noDuplicate!2231 acc!759))))

(declare-fun b!1354983 () Bool)

(declare-fun Unit!44464 () Unit!44462)

(assert (=> b!1354983 (= e!769600 Unit!44464)))

(declare-fun b!1354984 () Bool)

(declare-fun res!900089 () Bool)

(assert (=> b!1354984 (=> (not res!900089) (not e!769598))))

(assert (=> b!1354984 (= res!900089 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354985 () Bool)

(declare-fun res!900088 () Bool)

(assert (=> b!1354985 (=> (not res!900088) (not e!769598))))

(assert (=> b!1354985 (= res!900088 (not (contains!9352 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354986 () Bool)

(declare-fun res!900091 () Bool)

(assert (=> b!1354986 (=> (not res!900091) (not e!769598))))

(assert (=> b!1354986 (= res!900091 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31784))))

(declare-fun b!1354987 () Bool)

(declare-fun lt!598414 () Unit!44462)

(assert (=> b!1354987 (= e!769600 lt!598414)))

(declare-fun lt!598413 () Unit!44462)

(declare-fun lemmaListSubSeqRefl!0 (List!31787) Unit!44462)

(assert (=> b!1354987 (= lt!598413 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!761 (List!31787 List!31787) Bool)

(assert (=> b!1354987 (subseq!761 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92245 List!31787 List!31787 (_ BitVec 32)) Unit!44462)

(declare-fun $colon$colon!778 (List!31787 (_ BitVec 64)) List!31787)

(assert (=> b!1354987 (= lt!598414 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!778 acc!759 (select (arr!44566 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354987 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354988 () Bool)

(declare-fun res!900084 () Bool)

(assert (=> b!1354988 (=> (not res!900084) (not e!769598))))

(assert (=> b!1354988 (= res!900084 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45117 a!3742)))))

(assert (= (and start!114140 res!900085) b!1354982))

(assert (= (and b!1354982 res!900092) b!1354985))

(assert (= (and b!1354985 res!900088) b!1354981))

(assert (= (and b!1354981 res!900086) b!1354986))

(assert (= (and b!1354986 res!900091) b!1354984))

(assert (= (and b!1354984 res!900089) b!1354978))

(assert (= (and b!1354978 res!900093) b!1354979))

(assert (= (and b!1354979 res!900087) b!1354988))

(assert (= (and b!1354988 res!900084) b!1354977))

(assert (= (and b!1354977 c!126889) b!1354987))

(assert (= (and b!1354977 (not c!126889)) b!1354983))

(assert (= (and b!1354977 res!900090) b!1354980))

(declare-fun m!1241281 () Bool)

(assert (=> b!1354982 m!1241281))

(declare-fun m!1241283 () Bool)

(assert (=> b!1354981 m!1241283))

(declare-fun m!1241285 () Bool)

(assert (=> b!1354980 m!1241285))

(declare-fun m!1241287 () Bool)

(assert (=> b!1354979 m!1241287))

(declare-fun m!1241289 () Bool)

(assert (=> b!1354984 m!1241289))

(declare-fun m!1241291 () Bool)

(assert (=> b!1354977 m!1241291))

(assert (=> b!1354977 m!1241291))

(declare-fun m!1241293 () Bool)

(assert (=> b!1354977 m!1241293))

(declare-fun m!1241295 () Bool)

(assert (=> b!1354986 m!1241295))

(declare-fun m!1241297 () Bool)

(assert (=> b!1354987 m!1241297))

(assert (=> b!1354987 m!1241291))

(declare-fun m!1241299 () Bool)

(assert (=> b!1354987 m!1241299))

(declare-fun m!1241301 () Bool)

(assert (=> b!1354987 m!1241301))

(assert (=> b!1354987 m!1241285))

(assert (=> b!1354987 m!1241291))

(assert (=> b!1354987 m!1241299))

(declare-fun m!1241303 () Bool)

(assert (=> b!1354987 m!1241303))

(declare-fun m!1241305 () Bool)

(assert (=> start!114140 m!1241305))

(declare-fun m!1241307 () Bool)

(assert (=> b!1354985 m!1241307))

(push 1)

