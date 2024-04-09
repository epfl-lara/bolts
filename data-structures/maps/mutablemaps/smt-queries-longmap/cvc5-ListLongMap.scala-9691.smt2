; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114518 () Bool)

(assert start!114518)

(declare-fun res!903286 () Bool)

(declare-fun e!771050 () Bool)

(assert (=> start!114518 (=> (not res!903286) (not e!771050))))

(declare-datatypes ((array!92437 0))(
  ( (array!92438 (arr!44656 (Array (_ BitVec 32) (_ BitVec 64))) (size!45207 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92437)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114518 (= res!903286 (and (bvslt (size!45207 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45207 a!3742))))))

(assert (=> start!114518 e!771050))

(assert (=> start!114518 true))

(declare-fun array_inv!33601 (array!92437) Bool)

(assert (=> start!114518 (array_inv!33601 a!3742)))

(declare-fun b!1358551 () Bool)

(declare-fun res!903290 () Bool)

(assert (=> b!1358551 (=> (not res!903290) (not e!771050))))

(assert (=> b!1358551 (= res!903290 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45207 a!3742)))))

(declare-fun b!1358552 () Bool)

(assert (=> b!1358552 (= e!771050 false)))

(declare-datatypes ((Unit!44651 0))(
  ( (Unit!44652) )
))
(declare-fun lt!599330 () Unit!44651)

(declare-fun e!771051 () Unit!44651)

(assert (=> b!1358552 (= lt!599330 e!771051)))

(declare-fun c!127075 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358552 (= c!127075 (validKeyInArray!0 (select (arr!44656 a!3742) from!3120)))))

(declare-fun b!1358553 () Bool)

(declare-fun res!903293 () Bool)

(assert (=> b!1358553 (=> (not res!903293) (not e!771050))))

(declare-datatypes ((List!31877 0))(
  ( (Nil!31874) (Cons!31873 (h!33082 (_ BitVec 64)) (t!46554 List!31877)) )
))
(declare-fun acc!759 () List!31877)

(declare-fun arrayNoDuplicates!0 (array!92437 (_ BitVec 32) List!31877) Bool)

(assert (=> b!1358553 (= res!903293 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358554 () Bool)

(declare-fun Unit!44653 () Unit!44651)

(assert (=> b!1358554 (= e!771051 Unit!44653)))

(declare-fun b!1358555 () Bool)

(declare-fun lt!599328 () Unit!44651)

(assert (=> b!1358555 (= e!771051 lt!599328)))

(declare-fun lt!599329 () Unit!44651)

(declare-fun lemmaListSubSeqRefl!0 (List!31877) Unit!44651)

(assert (=> b!1358555 (= lt!599329 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!833 (List!31877 List!31877) Bool)

(assert (=> b!1358555 (subseq!833 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92437 List!31877 List!31877 (_ BitVec 32)) Unit!44651)

(declare-fun $colon$colon!838 (List!31877 (_ BitVec 64)) List!31877)

(assert (=> b!1358555 (= lt!599328 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!838 acc!759 (select (arr!44656 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1358555 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358556 () Bool)

(declare-fun res!903287 () Bool)

(assert (=> b!1358556 (=> (not res!903287) (not e!771050))))

(declare-fun contains!9442 (List!31877 (_ BitVec 64)) Bool)

(assert (=> b!1358556 (= res!903287 (not (contains!9442 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358557 () Bool)

(declare-fun res!903294 () Bool)

(assert (=> b!1358557 (=> (not res!903294) (not e!771050))))

(assert (=> b!1358557 (= res!903294 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31874))))

(declare-fun b!1358558 () Bool)

(declare-fun res!903292 () Bool)

(assert (=> b!1358558 (=> (not res!903292) (not e!771050))))

(declare-fun noDuplicate!2321 (List!31877) Bool)

(assert (=> b!1358558 (= res!903292 (noDuplicate!2321 acc!759))))

(declare-fun b!1358559 () Bool)

(declare-fun res!903291 () Bool)

(assert (=> b!1358559 (=> (not res!903291) (not e!771050))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358559 (= res!903291 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358560 () Bool)

(declare-fun res!903289 () Bool)

(assert (=> b!1358560 (=> (not res!903289) (not e!771050))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358560 (= res!903289 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45207 a!3742))))))

(declare-fun b!1358561 () Bool)

(declare-fun res!903288 () Bool)

(assert (=> b!1358561 (=> (not res!903288) (not e!771050))))

(assert (=> b!1358561 (= res!903288 (not (contains!9442 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114518 res!903286) b!1358558))

(assert (= (and b!1358558 res!903292) b!1358556))

(assert (= (and b!1358556 res!903287) b!1358561))

(assert (= (and b!1358561 res!903288) b!1358557))

(assert (= (and b!1358557 res!903294) b!1358553))

(assert (= (and b!1358553 res!903293) b!1358560))

(assert (= (and b!1358560 res!903289) b!1358559))

(assert (= (and b!1358559 res!903291) b!1358551))

(assert (= (and b!1358551 res!903290) b!1358552))

(assert (= (and b!1358552 c!127075) b!1358555))

(assert (= (and b!1358552 (not c!127075)) b!1358554))

(declare-fun m!1244143 () Bool)

(assert (=> b!1358553 m!1244143))

(declare-fun m!1244145 () Bool)

(assert (=> b!1358558 m!1244145))

(declare-fun m!1244147 () Bool)

(assert (=> b!1358555 m!1244147))

(declare-fun m!1244149 () Bool)

(assert (=> b!1358555 m!1244149))

(declare-fun m!1244151 () Bool)

(assert (=> b!1358555 m!1244151))

(declare-fun m!1244153 () Bool)

(assert (=> b!1358555 m!1244153))

(declare-fun m!1244155 () Bool)

(assert (=> b!1358555 m!1244155))

(assert (=> b!1358555 m!1244149))

(assert (=> b!1358555 m!1244151))

(declare-fun m!1244157 () Bool)

(assert (=> b!1358555 m!1244157))

(declare-fun m!1244159 () Bool)

(assert (=> start!114518 m!1244159))

(assert (=> b!1358552 m!1244149))

(assert (=> b!1358552 m!1244149))

(declare-fun m!1244161 () Bool)

(assert (=> b!1358552 m!1244161))

(declare-fun m!1244163 () Bool)

(assert (=> b!1358556 m!1244163))

(declare-fun m!1244165 () Bool)

(assert (=> b!1358557 m!1244165))

(declare-fun m!1244167 () Bool)

(assert (=> b!1358559 m!1244167))

(declare-fun m!1244169 () Bool)

(assert (=> b!1358561 m!1244169))

(push 1)

(assert (not b!1358561))

(assert (not b!1358558))

(assert (not b!1358559))

(assert (not start!114518))

(assert (not b!1358556))

(assert (not b!1358553))

(assert (not b!1358557))

(assert (not b!1358552))

(assert (not b!1358555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

