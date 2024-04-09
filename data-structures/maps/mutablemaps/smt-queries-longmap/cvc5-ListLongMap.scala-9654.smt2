; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114098 () Bool)

(assert start!114098)

(declare-fun b!1353941 () Bool)

(declare-fun e!769285 () Bool)

(declare-fun e!769288 () Bool)

(assert (=> b!1353941 (= e!769285 e!769288)))

(declare-fun res!899187 () Bool)

(assert (=> b!1353941 (=> (not res!899187) (not e!769288))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1353941 (= res!899187 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31766 0))(
  ( (Nil!31763) (Cons!31762 (h!32971 (_ BitVec 64)) (t!46431 List!31766)) )
))
(declare-fun lt!598036 () List!31766)

(declare-fun acc!759 () List!31766)

(declare-datatypes ((array!92203 0))(
  ( (array!92204 (arr!44545 (Array (_ BitVec 32) (_ BitVec 64))) (size!45096 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92203)

(declare-fun $colon$colon!757 (List!31766 (_ BitVec 64)) List!31766)

(assert (=> b!1353941 (= lt!598036 ($colon$colon!757 acc!759 (select (arr!44545 a!3742) from!3120)))))

(declare-fun b!1353942 () Bool)

(declare-fun res!899175 () Bool)

(declare-fun e!769287 () Bool)

(assert (=> b!1353942 (=> (not res!899175) (not e!769287))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353942 (= res!899175 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45096 a!3742))))))

(declare-fun b!1353943 () Bool)

(declare-fun res!899180 () Bool)

(assert (=> b!1353943 (=> (not res!899180) (not e!769287))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353943 (= res!899180 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353945 () Bool)

(declare-fun res!899176 () Bool)

(assert (=> b!1353945 (=> (not res!899176) (not e!769288))))

(declare-fun contains!9331 (List!31766 (_ BitVec 64)) Bool)

(assert (=> b!1353945 (= res!899176 (not (contains!9331 lt!598036 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353946 () Bool)

(declare-fun res!899186 () Bool)

(assert (=> b!1353946 (=> (not res!899186) (not e!769287))))

(assert (=> b!1353946 (= res!899186 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45096 a!3742)))))

(declare-fun b!1353947 () Bool)

(declare-fun res!899182 () Bool)

(assert (=> b!1353947 (=> (not res!899182) (not e!769287))))

(assert (=> b!1353947 (= res!899182 (not (contains!9331 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353948 () Bool)

(declare-fun res!899178 () Bool)

(assert (=> b!1353948 (=> (not res!899178) (not e!769287))))

(declare-fun arrayNoDuplicates!0 (array!92203 (_ BitVec 32) List!31766) Bool)

(assert (=> b!1353948 (= res!899178 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31763))))

(declare-fun b!1353949 () Bool)

(declare-datatypes ((Unit!44399 0))(
  ( (Unit!44400) )
))
(declare-fun e!769286 () Unit!44399)

(declare-fun Unit!44401 () Unit!44399)

(assert (=> b!1353949 (= e!769286 Unit!44401)))

(declare-fun b!1353950 () Bool)

(declare-fun res!899183 () Bool)

(assert (=> b!1353950 (=> (not res!899183) (not e!769288))))

(declare-fun noDuplicate!2210 (List!31766) Bool)

(assert (=> b!1353950 (= res!899183 (noDuplicate!2210 lt!598036))))

(declare-fun b!1353951 () Bool)

(assert (=> b!1353951 (= e!769287 e!769285)))

(declare-fun res!899179 () Bool)

(assert (=> b!1353951 (=> (not res!899179) (not e!769285))))

(declare-fun lt!598037 () Bool)

(assert (=> b!1353951 (= res!899179 (and (not (= from!3120 i!1404)) lt!598037))))

(declare-fun lt!598038 () Unit!44399)

(assert (=> b!1353951 (= lt!598038 e!769286)))

(declare-fun c!126826 () Bool)

(assert (=> b!1353951 (= c!126826 lt!598037)))

(assert (=> b!1353951 (= lt!598037 (validKeyInArray!0 (select (arr!44545 a!3742) from!3120)))))

(declare-fun b!1353952 () Bool)

(declare-fun res!899181 () Bool)

(assert (=> b!1353952 (=> (not res!899181) (not e!769287))))

(assert (=> b!1353952 (= res!899181 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!899184 () Bool)

(assert (=> start!114098 (=> (not res!899184) (not e!769287))))

(assert (=> start!114098 (= res!899184 (and (bvslt (size!45096 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45096 a!3742))))))

(assert (=> start!114098 e!769287))

(assert (=> start!114098 true))

(declare-fun array_inv!33490 (array!92203) Bool)

(assert (=> start!114098 (array_inv!33490 a!3742)))

(declare-fun b!1353944 () Bool)

(declare-fun lt!598039 () Unit!44399)

(assert (=> b!1353944 (= e!769286 lt!598039)))

(declare-fun lt!598035 () Unit!44399)

(declare-fun lemmaListSubSeqRefl!0 (List!31766) Unit!44399)

(assert (=> b!1353944 (= lt!598035 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!740 (List!31766 List!31766) Bool)

(assert (=> b!1353944 (subseq!740 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92203 List!31766 List!31766 (_ BitVec 32)) Unit!44399)

(assert (=> b!1353944 (= lt!598039 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!757 acc!759 (select (arr!44545 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353944 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353953 () Bool)

(declare-fun res!899174 () Bool)

(assert (=> b!1353953 (=> (not res!899174) (not e!769287))))

(assert (=> b!1353953 (= res!899174 (noDuplicate!2210 acc!759))))

(declare-fun b!1353954 () Bool)

(declare-fun res!899185 () Bool)

(assert (=> b!1353954 (=> (not res!899185) (not e!769288))))

(assert (=> b!1353954 (= res!899185 (not (contains!9331 lt!598036 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353955 () Bool)

(assert (=> b!1353955 (= e!769288 false)))

(declare-fun lt!598040 () Bool)

(assert (=> b!1353955 (= lt!598040 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598036))))

(declare-fun b!1353956 () Bool)

(declare-fun res!899177 () Bool)

(assert (=> b!1353956 (=> (not res!899177) (not e!769287))))

(assert (=> b!1353956 (= res!899177 (not (contains!9331 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114098 res!899184) b!1353953))

(assert (= (and b!1353953 res!899174) b!1353956))

(assert (= (and b!1353956 res!899177) b!1353947))

(assert (= (and b!1353947 res!899182) b!1353948))

(assert (= (and b!1353948 res!899178) b!1353952))

(assert (= (and b!1353952 res!899181) b!1353942))

(assert (= (and b!1353942 res!899175) b!1353943))

(assert (= (and b!1353943 res!899180) b!1353946))

(assert (= (and b!1353946 res!899186) b!1353951))

(assert (= (and b!1353951 c!126826) b!1353944))

(assert (= (and b!1353951 (not c!126826)) b!1353949))

(assert (= (and b!1353951 res!899179) b!1353941))

(assert (= (and b!1353941 res!899187) b!1353950))

(assert (= (and b!1353950 res!899183) b!1353954))

(assert (= (and b!1353954 res!899185) b!1353945))

(assert (= (and b!1353945 res!899176) b!1353955))

(declare-fun m!1240453 () Bool)

(assert (=> b!1353943 m!1240453))

(declare-fun m!1240455 () Bool)

(assert (=> b!1353954 m!1240455))

(declare-fun m!1240457 () Bool)

(assert (=> b!1353945 m!1240457))

(declare-fun m!1240459 () Bool)

(assert (=> b!1353955 m!1240459))

(declare-fun m!1240461 () Bool)

(assert (=> b!1353953 m!1240461))

(declare-fun m!1240463 () Bool)

(assert (=> b!1353952 m!1240463))

(declare-fun m!1240465 () Bool)

(assert (=> b!1353947 m!1240465))

(declare-fun m!1240467 () Bool)

(assert (=> b!1353941 m!1240467))

(assert (=> b!1353941 m!1240467))

(declare-fun m!1240469 () Bool)

(assert (=> b!1353941 m!1240469))

(declare-fun m!1240471 () Bool)

(assert (=> start!114098 m!1240471))

(declare-fun m!1240473 () Bool)

(assert (=> b!1353944 m!1240473))

(assert (=> b!1353944 m!1240467))

(assert (=> b!1353944 m!1240469))

(declare-fun m!1240475 () Bool)

(assert (=> b!1353944 m!1240475))

(declare-fun m!1240477 () Bool)

(assert (=> b!1353944 m!1240477))

(assert (=> b!1353944 m!1240467))

(assert (=> b!1353944 m!1240469))

(declare-fun m!1240479 () Bool)

(assert (=> b!1353944 m!1240479))

(declare-fun m!1240481 () Bool)

(assert (=> b!1353950 m!1240481))

(declare-fun m!1240483 () Bool)

(assert (=> b!1353956 m!1240483))

(declare-fun m!1240485 () Bool)

(assert (=> b!1353948 m!1240485))

(assert (=> b!1353951 m!1240467))

(assert (=> b!1353951 m!1240467))

(declare-fun m!1240487 () Bool)

(assert (=> b!1353951 m!1240487))

(push 1)

