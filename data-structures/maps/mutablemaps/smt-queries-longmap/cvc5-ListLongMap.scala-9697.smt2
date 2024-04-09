; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114608 () Bool)

(assert start!114608)

(declare-fun b!1359318 () Bool)

(declare-fun e!771370 () Bool)

(declare-fun e!771371 () Bool)

(assert (=> b!1359318 (= e!771370 e!771371)))

(declare-fun res!903921 () Bool)

(assert (=> b!1359318 (=> (not res!903921) (not e!771371))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359318 (= res!903921 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44705 0))(
  ( (Unit!44706) )
))
(declare-fun lt!599532 () Unit!44705)

(declare-fun e!771373 () Unit!44705)

(assert (=> b!1359318 (= lt!599532 e!771373)))

(declare-fun c!127144 () Bool)

(declare-datatypes ((array!92476 0))(
  ( (array!92477 (arr!44674 (Array (_ BitVec 32) (_ BitVec 64))) (size!45225 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92476)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359318 (= c!127144 (validKeyInArray!0 (select (arr!44674 a!3742) from!3120)))))

(declare-fun b!1359319 () Bool)

(declare-fun res!903920 () Bool)

(assert (=> b!1359319 (=> (not res!903920) (not e!771370))))

(declare-datatypes ((List!31895 0))(
  ( (Nil!31892) (Cons!31891 (h!33100 (_ BitVec 64)) (t!46575 List!31895)) )
))
(declare-fun acc!759 () List!31895)

(declare-fun contains!9460 (List!31895 (_ BitVec 64)) Bool)

(assert (=> b!1359319 (= res!903920 (not (contains!9460 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359321 () Bool)

(assert (=> b!1359321 (= e!771371 false)))

(declare-fun lt!599531 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92476 (_ BitVec 32) List!31895) Bool)

(assert (=> b!1359321 (= lt!599531 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359322 () Bool)

(declare-fun res!903919 () Bool)

(assert (=> b!1359322 (=> (not res!903919) (not e!771370))))

(assert (=> b!1359322 (= res!903919 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45225 a!3742)))))

(declare-fun b!1359323 () Bool)

(declare-fun res!903924 () Bool)

(assert (=> b!1359323 (=> (not res!903924) (not e!771370))))

(assert (=> b!1359323 (= res!903924 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31892))))

(declare-fun b!1359324 () Bool)

(declare-fun res!903917 () Bool)

(assert (=> b!1359324 (=> (not res!903917) (not e!771370))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359324 (= res!903917 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359325 () Bool)

(declare-fun res!903922 () Bool)

(assert (=> b!1359325 (=> (not res!903922) (not e!771370))))

(declare-fun noDuplicate!2339 (List!31895) Bool)

(assert (=> b!1359325 (= res!903922 (noDuplicate!2339 acc!759))))

(declare-fun b!1359320 () Bool)

(declare-fun res!903915 () Bool)

(assert (=> b!1359320 (=> (not res!903915) (not e!771370))))

(assert (=> b!1359320 (= res!903915 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!903916 () Bool)

(assert (=> start!114608 (=> (not res!903916) (not e!771370))))

(assert (=> start!114608 (= res!903916 (and (bvslt (size!45225 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45225 a!3742))))))

(assert (=> start!114608 e!771370))

(assert (=> start!114608 true))

(declare-fun array_inv!33619 (array!92476) Bool)

(assert (=> start!114608 (array_inv!33619 a!3742)))

(declare-fun b!1359326 () Bool)

(declare-fun lt!599533 () Unit!44705)

(assert (=> b!1359326 (= e!771373 lt!599533)))

(declare-fun lt!599534 () Unit!44705)

(declare-fun lemmaListSubSeqRefl!0 (List!31895) Unit!44705)

(assert (=> b!1359326 (= lt!599534 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!851 (List!31895 List!31895) Bool)

(assert (=> b!1359326 (subseq!851 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92476 List!31895 List!31895 (_ BitVec 32)) Unit!44705)

(declare-fun $colon$colon!856 (List!31895 (_ BitVec 64)) List!31895)

(assert (=> b!1359326 (= lt!599533 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!856 acc!759 (select (arr!44674 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1359326 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359327 () Bool)

(declare-fun res!903923 () Bool)

(assert (=> b!1359327 (=> (not res!903923) (not e!771370))))

(assert (=> b!1359327 (= res!903923 (not (contains!9460 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359328 () Bool)

(declare-fun Unit!44707 () Unit!44705)

(assert (=> b!1359328 (= e!771373 Unit!44707)))

(declare-fun b!1359329 () Bool)

(declare-fun res!903918 () Bool)

(assert (=> b!1359329 (=> (not res!903918) (not e!771370))))

(assert (=> b!1359329 (= res!903918 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45225 a!3742))))))

(assert (= (and start!114608 res!903916) b!1359325))

(assert (= (and b!1359325 res!903922) b!1359327))

(assert (= (and b!1359327 res!903923) b!1359319))

(assert (= (and b!1359319 res!903920) b!1359323))

(assert (= (and b!1359323 res!903924) b!1359320))

(assert (= (and b!1359320 res!903915) b!1359329))

(assert (= (and b!1359329 res!903918) b!1359324))

(assert (= (and b!1359324 res!903917) b!1359322))

(assert (= (and b!1359322 res!903919) b!1359318))

(assert (= (and b!1359318 c!127144) b!1359326))

(assert (= (and b!1359318 (not c!127144)) b!1359328))

(assert (= (and b!1359318 res!903921) b!1359321))

(declare-fun m!1244773 () Bool)

(assert (=> b!1359327 m!1244773))

(declare-fun m!1244775 () Bool)

(assert (=> b!1359321 m!1244775))

(declare-fun m!1244777 () Bool)

(assert (=> b!1359326 m!1244777))

(declare-fun m!1244779 () Bool)

(assert (=> b!1359326 m!1244779))

(declare-fun m!1244781 () Bool)

(assert (=> b!1359326 m!1244781))

(declare-fun m!1244783 () Bool)

(assert (=> b!1359326 m!1244783))

(assert (=> b!1359326 m!1244775))

(assert (=> b!1359326 m!1244779))

(assert (=> b!1359326 m!1244781))

(declare-fun m!1244785 () Bool)

(assert (=> b!1359326 m!1244785))

(declare-fun m!1244787 () Bool)

(assert (=> b!1359323 m!1244787))

(declare-fun m!1244789 () Bool)

(assert (=> b!1359325 m!1244789))

(declare-fun m!1244791 () Bool)

(assert (=> start!114608 m!1244791))

(declare-fun m!1244793 () Bool)

(assert (=> b!1359324 m!1244793))

(declare-fun m!1244795 () Bool)

(assert (=> b!1359320 m!1244795))

(declare-fun m!1244797 () Bool)

(assert (=> b!1359319 m!1244797))

(assert (=> b!1359318 m!1244779))

(assert (=> b!1359318 m!1244779))

(declare-fun m!1244799 () Bool)

(assert (=> b!1359318 m!1244799))

(push 1)

