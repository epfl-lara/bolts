; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114146 () Bool)

(assert start!114146)

(declare-fun b!1355085 () Bool)

(declare-fun res!900177 () Bool)

(declare-fun e!769636 () Bool)

(assert (=> b!1355085 (=> (not res!900177) (not e!769636))))

(declare-datatypes ((List!31790 0))(
  ( (Nil!31787) (Cons!31786 (h!32995 (_ BitVec 64)) (t!46455 List!31790)) )
))
(declare-fun acc!759 () List!31790)

(declare-fun contains!9355 (List!31790 (_ BitVec 64)) Bool)

(assert (=> b!1355085 (= res!900177 (not (contains!9355 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355086 () Bool)

(declare-fun res!900180 () Bool)

(assert (=> b!1355086 (=> (not res!900180) (not e!769636))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92251 0))(
  ( (array!92252 (arr!44569 (Array (_ BitVec 32) (_ BitVec 64))) (size!45120 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92251)

(assert (=> b!1355086 (= res!900180 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45120 a!3742)))))

(declare-fun b!1355087 () Bool)

(declare-datatypes ((Unit!44471 0))(
  ( (Unit!44472) )
))
(declare-fun e!769633 () Unit!44471)

(declare-fun Unit!44473 () Unit!44471)

(assert (=> b!1355087 (= e!769633 Unit!44473)))

(declare-fun b!1355088 () Bool)

(declare-fun e!769634 () Bool)

(assert (=> b!1355088 (= e!769636 e!769634)))

(declare-fun res!900181 () Bool)

(assert (=> b!1355088 (=> (not res!900181) (not e!769634))))

(declare-fun lt!598457 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355088 (= res!900181 (and (not (= from!3120 i!1404)) (not lt!598457) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598456 () Unit!44471)

(assert (=> b!1355088 (= lt!598456 e!769633)))

(declare-fun c!126898 () Bool)

(assert (=> b!1355088 (= c!126898 lt!598457)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355088 (= lt!598457 (validKeyInArray!0 (select (arr!44569 a!3742) from!3120)))))

(declare-fun b!1355090 () Bool)

(declare-fun res!900174 () Bool)

(assert (=> b!1355090 (=> (not res!900174) (not e!769636))))

(declare-fun arrayNoDuplicates!0 (array!92251 (_ BitVec 32) List!31790) Bool)

(assert (=> b!1355090 (= res!900174 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355091 () Bool)

(assert (=> b!1355091 (= e!769634 false)))

(declare-fun lt!598459 () Bool)

(assert (=> b!1355091 (= lt!598459 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355092 () Bool)

(declare-fun res!900178 () Bool)

(assert (=> b!1355092 (=> (not res!900178) (not e!769636))))

(assert (=> b!1355092 (= res!900178 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45120 a!3742))))))

(declare-fun b!1355093 () Bool)

(declare-fun res!900175 () Bool)

(assert (=> b!1355093 (=> (not res!900175) (not e!769636))))

(declare-fun noDuplicate!2234 (List!31790) Bool)

(assert (=> b!1355093 (= res!900175 (noDuplicate!2234 acc!759))))

(declare-fun b!1355094 () Bool)

(declare-fun res!900182 () Bool)

(assert (=> b!1355094 (=> (not res!900182) (not e!769636))))

(assert (=> b!1355094 (= res!900182 (not (contains!9355 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900183 () Bool)

(assert (=> start!114146 (=> (not res!900183) (not e!769636))))

(assert (=> start!114146 (= res!900183 (and (bvslt (size!45120 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45120 a!3742))))))

(assert (=> start!114146 e!769636))

(assert (=> start!114146 true))

(declare-fun array_inv!33514 (array!92251) Bool)

(assert (=> start!114146 (array_inv!33514 a!3742)))

(declare-fun b!1355089 () Bool)

(declare-fun res!900176 () Bool)

(assert (=> b!1355089 (=> (not res!900176) (not e!769636))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355089 (= res!900176 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355095 () Bool)

(declare-fun res!900179 () Bool)

(assert (=> b!1355095 (=> (not res!900179) (not e!769636))))

(assert (=> b!1355095 (= res!900179 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31787))))

(declare-fun b!1355096 () Bool)

(declare-fun lt!598460 () Unit!44471)

(assert (=> b!1355096 (= e!769633 lt!598460)))

(declare-fun lt!598458 () Unit!44471)

(declare-fun lemmaListSubSeqRefl!0 (List!31790) Unit!44471)

(assert (=> b!1355096 (= lt!598458 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!764 (List!31790 List!31790) Bool)

(assert (=> b!1355096 (subseq!764 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92251 List!31790 List!31790 (_ BitVec 32)) Unit!44471)

(declare-fun $colon$colon!781 (List!31790 (_ BitVec 64)) List!31790)

(assert (=> b!1355096 (= lt!598460 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!781 acc!759 (select (arr!44569 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355096 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114146 res!900183) b!1355093))

(assert (= (and b!1355093 res!900175) b!1355094))

(assert (= (and b!1355094 res!900182) b!1355085))

(assert (= (and b!1355085 res!900177) b!1355095))

(assert (= (and b!1355095 res!900179) b!1355090))

(assert (= (and b!1355090 res!900174) b!1355092))

(assert (= (and b!1355092 res!900178) b!1355089))

(assert (= (and b!1355089 res!900176) b!1355086))

(assert (= (and b!1355086 res!900180) b!1355088))

(assert (= (and b!1355088 c!126898) b!1355096))

(assert (= (and b!1355088 (not c!126898)) b!1355087))

(assert (= (and b!1355088 res!900181) b!1355091))

(declare-fun m!1241365 () Bool)

(assert (=> b!1355090 m!1241365))

(declare-fun m!1241367 () Bool)

(assert (=> b!1355095 m!1241367))

(declare-fun m!1241369 () Bool)

(assert (=> b!1355088 m!1241369))

(assert (=> b!1355088 m!1241369))

(declare-fun m!1241371 () Bool)

(assert (=> b!1355088 m!1241371))

(declare-fun m!1241373 () Bool)

(assert (=> b!1355094 m!1241373))

(declare-fun m!1241375 () Bool)

(assert (=> b!1355089 m!1241375))

(declare-fun m!1241377 () Bool)

(assert (=> b!1355085 m!1241377))

(declare-fun m!1241379 () Bool)

(assert (=> b!1355096 m!1241379))

(assert (=> b!1355096 m!1241369))

(declare-fun m!1241381 () Bool)

(assert (=> b!1355096 m!1241381))

(declare-fun m!1241383 () Bool)

(assert (=> b!1355096 m!1241383))

(declare-fun m!1241385 () Bool)

(assert (=> b!1355096 m!1241385))

(assert (=> b!1355096 m!1241369))

(assert (=> b!1355096 m!1241381))

(declare-fun m!1241387 () Bool)

(assert (=> b!1355096 m!1241387))

(declare-fun m!1241389 () Bool)

(assert (=> b!1355093 m!1241389))

(declare-fun m!1241391 () Bool)

(assert (=> start!114146 m!1241391))

(assert (=> b!1355091 m!1241385))

(push 1)

