; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114930 () Bool)

(assert start!114930)

(declare-fun b!1362055 () Bool)

(declare-fun e!772636 () Bool)

(assert (=> b!1362055 (= e!772636 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-datatypes ((List!31945 0))(
  ( (Nil!31942) (Cons!31941 (h!33150 (_ BitVec 64)) (t!46637 List!31945)) )
))
(declare-fun lt!600338 () List!31945)

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92588 0))(
  ( (array!92589 (arr!44724 (Array (_ BitVec 32) (_ BitVec 64))) (size!45275 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92588)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92588 (_ BitVec 32) List!31945) Bool)

(assert (=> b!1362055 (arrayNoDuplicates!0 (array!92589 (store (arr!44724 a!3742) i!1404 l!3587) (size!45275 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!600338)))

(declare-datatypes ((Unit!44855 0))(
  ( (Unit!44856) )
))
(declare-fun lt!600333 () Unit!44855)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92588 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31945) Unit!44855)

(assert (=> b!1362055 (= lt!600333 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600338))))

(declare-fun b!1362056 () Bool)

(declare-fun e!772637 () Bool)

(declare-fun e!772638 () Bool)

(assert (=> b!1362056 (= e!772637 e!772638)))

(declare-fun res!906214 () Bool)

(assert (=> b!1362056 (=> (not res!906214) (not e!772638))))

(declare-fun lt!600336 () Bool)

(assert (=> b!1362056 (= res!906214 (and (not (= from!3120 i!1404)) lt!600336))))

(declare-fun lt!600334 () Unit!44855)

(declare-fun e!772639 () Unit!44855)

(assert (=> b!1362056 (= lt!600334 e!772639)))

(declare-fun c!127363 () Bool)

(assert (=> b!1362056 (= c!127363 lt!600336)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362056 (= lt!600336 (validKeyInArray!0 (select (arr!44724 a!3742) from!3120)))))

(declare-fun b!1362057 () Bool)

(declare-fun lt!600337 () Unit!44855)

(assert (=> b!1362057 (= e!772639 lt!600337)))

(declare-fun lt!600335 () Unit!44855)

(declare-fun acc!759 () List!31945)

(declare-fun lemmaListSubSeqRefl!0 (List!31945) Unit!44855)

(assert (=> b!1362057 (= lt!600335 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!901 (List!31945 List!31945) Bool)

(assert (=> b!1362057 (subseq!901 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92588 List!31945 List!31945 (_ BitVec 32)) Unit!44855)

(declare-fun $colon$colon!906 (List!31945 (_ BitVec 64)) List!31945)

(assert (=> b!1362057 (= lt!600337 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!906 acc!759 (select (arr!44724 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362057 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362058 () Bool)

(declare-fun res!906219 () Bool)

(assert (=> b!1362058 (=> (not res!906219) (not e!772637))))

(assert (=> b!1362058 (= res!906219 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362059 () Bool)

(declare-fun res!906228 () Bool)

(assert (=> b!1362059 (=> (not res!906228) (not e!772637))))

(assert (=> b!1362059 (= res!906228 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45275 a!3742))))))

(declare-fun b!1362060 () Bool)

(declare-fun res!906216 () Bool)

(assert (=> b!1362060 (=> (not res!906216) (not e!772637))))

(declare-fun noDuplicate!2389 (List!31945) Bool)

(assert (=> b!1362060 (= res!906216 (noDuplicate!2389 acc!759))))

(declare-fun b!1362061 () Bool)

(declare-fun res!906218 () Bool)

(assert (=> b!1362061 (=> (not res!906218) (not e!772636))))

(declare-fun contains!9510 (List!31945 (_ BitVec 64)) Bool)

(assert (=> b!1362061 (= res!906218 (not (contains!9510 lt!600338 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362062 () Bool)

(declare-fun res!906225 () Bool)

(assert (=> b!1362062 (=> (not res!906225) (not e!772637))))

(assert (=> b!1362062 (= res!906225 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45275 a!3742)))))

(declare-fun b!1362063 () Bool)

(declare-fun res!906226 () Bool)

(assert (=> b!1362063 (=> (not res!906226) (not e!772636))))

(assert (=> b!1362063 (= res!906226 (noDuplicate!2389 lt!600338))))

(declare-fun b!1362064 () Bool)

(declare-fun Unit!44857 () Unit!44855)

(assert (=> b!1362064 (= e!772639 Unit!44857)))

(declare-fun b!1362065 () Bool)

(declare-fun res!906224 () Bool)

(assert (=> b!1362065 (=> (not res!906224) (not e!772637))))

(assert (=> b!1362065 (= res!906224 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31942))))

(declare-fun res!906215 () Bool)

(assert (=> start!114930 (=> (not res!906215) (not e!772637))))

(assert (=> start!114930 (= res!906215 (and (bvslt (size!45275 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45275 a!3742))))))

(assert (=> start!114930 e!772637))

(assert (=> start!114930 true))

(declare-fun array_inv!33669 (array!92588) Bool)

(assert (=> start!114930 (array_inv!33669 a!3742)))

(declare-fun b!1362066 () Bool)

(declare-fun res!906221 () Bool)

(assert (=> b!1362066 (=> (not res!906221) (not e!772637))))

(assert (=> b!1362066 (= res!906221 (not (contains!9510 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362067 () Bool)

(assert (=> b!1362067 (= e!772638 e!772636)))

(declare-fun res!906217 () Bool)

(assert (=> b!1362067 (=> (not res!906217) (not e!772636))))

(assert (=> b!1362067 (= res!906217 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1362067 (= lt!600338 ($colon$colon!906 acc!759 (select (arr!44724 a!3742) from!3120)))))

(declare-fun b!1362068 () Bool)

(declare-fun res!906222 () Bool)

(assert (=> b!1362068 (=> (not res!906222) (not e!772636))))

(assert (=> b!1362068 (= res!906222 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600338))))

(declare-fun b!1362069 () Bool)

(declare-fun res!906220 () Bool)

(assert (=> b!1362069 (=> (not res!906220) (not e!772637))))

(assert (=> b!1362069 (= res!906220 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362070 () Bool)

(declare-fun res!906223 () Bool)

(assert (=> b!1362070 (=> (not res!906223) (not e!772637))))

(assert (=> b!1362070 (= res!906223 (not (contains!9510 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362071 () Bool)

(declare-fun res!906227 () Bool)

(assert (=> b!1362071 (=> (not res!906227) (not e!772636))))

(assert (=> b!1362071 (= res!906227 (not (contains!9510 lt!600338 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114930 res!906215) b!1362060))

(assert (= (and b!1362060 res!906216) b!1362066))

(assert (= (and b!1362066 res!906221) b!1362070))

(assert (= (and b!1362070 res!906223) b!1362065))

(assert (= (and b!1362065 res!906224) b!1362058))

(assert (= (and b!1362058 res!906219) b!1362059))

(assert (= (and b!1362059 res!906228) b!1362069))

(assert (= (and b!1362069 res!906220) b!1362062))

(assert (= (and b!1362062 res!906225) b!1362056))

(assert (= (and b!1362056 c!127363) b!1362057))

(assert (= (and b!1362056 (not c!127363)) b!1362064))

(assert (= (and b!1362056 res!906214) b!1362067))

(assert (= (and b!1362067 res!906217) b!1362063))

(assert (= (and b!1362063 res!906226) b!1362071))

(assert (= (and b!1362071 res!906227) b!1362061))

(assert (= (and b!1362061 res!906218) b!1362068))

(assert (= (and b!1362068 res!906222) b!1362055))

(declare-fun m!1247053 () Bool)

(assert (=> start!114930 m!1247053))

(declare-fun m!1247055 () Bool)

(assert (=> b!1362065 m!1247055))

(declare-fun m!1247057 () Bool)

(assert (=> b!1362056 m!1247057))

(assert (=> b!1362056 m!1247057))

(declare-fun m!1247059 () Bool)

(assert (=> b!1362056 m!1247059))

(declare-fun m!1247061 () Bool)

(assert (=> b!1362058 m!1247061))

(declare-fun m!1247063 () Bool)

(assert (=> b!1362069 m!1247063))

(declare-fun m!1247065 () Bool)

(assert (=> b!1362066 m!1247065))

(declare-fun m!1247067 () Bool)

(assert (=> b!1362071 m!1247067))

(declare-fun m!1247069 () Bool)

(assert (=> b!1362057 m!1247069))

(assert (=> b!1362057 m!1247057))

(declare-fun m!1247071 () Bool)

(assert (=> b!1362057 m!1247071))

(declare-fun m!1247073 () Bool)

(assert (=> b!1362057 m!1247073))

(declare-fun m!1247075 () Bool)

(assert (=> b!1362057 m!1247075))

(assert (=> b!1362057 m!1247057))

(assert (=> b!1362057 m!1247071))

(declare-fun m!1247077 () Bool)

(assert (=> b!1362057 m!1247077))

(assert (=> b!1362067 m!1247057))

(assert (=> b!1362067 m!1247057))

(assert (=> b!1362067 m!1247071))

(declare-fun m!1247079 () Bool)

(assert (=> b!1362068 m!1247079))

(declare-fun m!1247081 () Bool)

(assert (=> b!1362055 m!1247081))

(declare-fun m!1247083 () Bool)

(assert (=> b!1362055 m!1247083))

(declare-fun m!1247085 () Bool)

(assert (=> b!1362055 m!1247085))

(declare-fun m!1247087 () Bool)

(assert (=> b!1362060 m!1247087))

(declare-fun m!1247089 () Bool)

(assert (=> b!1362063 m!1247089))

(declare-fun m!1247091 () Bool)

(assert (=> b!1362070 m!1247091))

(declare-fun m!1247093 () Bool)

(assert (=> b!1362061 m!1247093))

(push 1)

