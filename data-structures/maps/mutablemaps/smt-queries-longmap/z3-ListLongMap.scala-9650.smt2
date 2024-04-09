; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114076 () Bool)

(assert start!114076)

(declare-fun b!1353413 () Bool)

(declare-fun e!769123 () Bool)

(assert (=> b!1353413 (= e!769123 false)))

(declare-fun lt!597838 () Bool)

(declare-datatypes ((List!31755 0))(
  ( (Nil!31752) (Cons!31751 (h!32960 (_ BitVec 64)) (t!46420 List!31755)) )
))
(declare-fun lt!597837 () List!31755)

(declare-datatypes ((array!92181 0))(
  ( (array!92182 (arr!44534 (Array (_ BitVec 32) (_ BitVec 64))) (size!45085 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92181)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92181 (_ BitVec 32) List!31755) Bool)

(assert (=> b!1353413 (= lt!597838 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597837))))

(declare-fun b!1353414 () Bool)

(declare-fun res!898718 () Bool)

(assert (=> b!1353414 (=> (not res!898718) (not e!769123))))

(declare-fun contains!9320 (List!31755 (_ BitVec 64)) Bool)

(assert (=> b!1353414 (= res!898718 (not (contains!9320 lt!597837 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353415 () Bool)

(declare-fun res!898713 () Bool)

(declare-fun e!769119 () Bool)

(assert (=> b!1353415 (=> (not res!898713) (not e!769119))))

(assert (=> b!1353415 (= res!898713 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45085 a!3742)))))

(declare-fun b!1353416 () Bool)

(declare-fun res!898714 () Bool)

(assert (=> b!1353416 (=> (not res!898714) (not e!769119))))

(declare-fun acc!759 () List!31755)

(assert (=> b!1353416 (= res!898714 (not (contains!9320 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!898724 () Bool)

(assert (=> start!114076 (=> (not res!898724) (not e!769119))))

(assert (=> start!114076 (= res!898724 (and (bvslt (size!45085 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45085 a!3742))))))

(assert (=> start!114076 e!769119))

(assert (=> start!114076 true))

(declare-fun array_inv!33479 (array!92181) Bool)

(assert (=> start!114076 (array_inv!33479 a!3742)))

(declare-fun b!1353417 () Bool)

(declare-datatypes ((Unit!44366 0))(
  ( (Unit!44367) )
))
(declare-fun e!769120 () Unit!44366)

(declare-fun lt!597841 () Unit!44366)

(assert (=> b!1353417 (= e!769120 lt!597841)))

(declare-fun lt!597842 () Unit!44366)

(declare-fun lemmaListSubSeqRefl!0 (List!31755) Unit!44366)

(assert (=> b!1353417 (= lt!597842 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!729 (List!31755 List!31755) Bool)

(assert (=> b!1353417 (subseq!729 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92181 List!31755 List!31755 (_ BitVec 32)) Unit!44366)

(declare-fun $colon$colon!746 (List!31755 (_ BitVec 64)) List!31755)

(assert (=> b!1353417 (= lt!597841 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!746 acc!759 (select (arr!44534 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1353417 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1353418 () Bool)

(declare-fun res!898712 () Bool)

(assert (=> b!1353418 (=> (not res!898712) (not e!769119))))

(assert (=> b!1353418 (= res!898712 (not (contains!9320 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353419 () Bool)

(declare-fun e!769121 () Bool)

(assert (=> b!1353419 (= e!769119 e!769121)))

(declare-fun res!898722 () Bool)

(assert (=> b!1353419 (=> (not res!898722) (not e!769121))))

(declare-fun lt!597839 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1353419 (= res!898722 (and (not (= from!3120 i!1404)) lt!597839))))

(declare-fun lt!597840 () Unit!44366)

(assert (=> b!1353419 (= lt!597840 e!769120)))

(declare-fun c!126793 () Bool)

(assert (=> b!1353419 (= c!126793 lt!597839)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1353419 (= lt!597839 (validKeyInArray!0 (select (arr!44534 a!3742) from!3120)))))

(declare-fun b!1353420 () Bool)

(declare-fun res!898719 () Bool)

(assert (=> b!1353420 (=> (not res!898719) (not e!769119))))

(assert (=> b!1353420 (= res!898719 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1353421 () Bool)

(declare-fun res!898723 () Bool)

(assert (=> b!1353421 (=> (not res!898723) (not e!769123))))

(declare-fun noDuplicate!2199 (List!31755) Bool)

(assert (=> b!1353421 (= res!898723 (noDuplicate!2199 lt!597837))))

(declare-fun b!1353422 () Bool)

(declare-fun res!898717 () Bool)

(assert (=> b!1353422 (=> (not res!898717) (not e!769119))))

(assert (=> b!1353422 (= res!898717 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31752))))

(declare-fun b!1353423 () Bool)

(declare-fun res!898720 () Bool)

(assert (=> b!1353423 (=> (not res!898720) (not e!769123))))

(assert (=> b!1353423 (= res!898720 (not (contains!9320 lt!597837 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1353424 () Bool)

(declare-fun res!898721 () Bool)

(assert (=> b!1353424 (=> (not res!898721) (not e!769119))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1353424 (= res!898721 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1353425 () Bool)

(declare-fun Unit!44368 () Unit!44366)

(assert (=> b!1353425 (= e!769120 Unit!44368)))

(declare-fun b!1353426 () Bool)

(declare-fun res!898715 () Bool)

(assert (=> b!1353426 (=> (not res!898715) (not e!769119))))

(assert (=> b!1353426 (= res!898715 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45085 a!3742))))))

(declare-fun b!1353427 () Bool)

(declare-fun res!898725 () Bool)

(assert (=> b!1353427 (=> (not res!898725) (not e!769119))))

(assert (=> b!1353427 (= res!898725 (noDuplicate!2199 acc!759))))

(declare-fun b!1353428 () Bool)

(assert (=> b!1353428 (= e!769121 e!769123)))

(declare-fun res!898716 () Bool)

(assert (=> b!1353428 (=> (not res!898716) (not e!769123))))

(assert (=> b!1353428 (= res!898716 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1353428 (= lt!597837 ($colon$colon!746 acc!759 (select (arr!44534 a!3742) from!3120)))))

(assert (= (and start!114076 res!898724) b!1353427))

(assert (= (and b!1353427 res!898725) b!1353416))

(assert (= (and b!1353416 res!898714) b!1353418))

(assert (= (and b!1353418 res!898712) b!1353422))

(assert (= (and b!1353422 res!898717) b!1353420))

(assert (= (and b!1353420 res!898719) b!1353426))

(assert (= (and b!1353426 res!898715) b!1353424))

(assert (= (and b!1353424 res!898721) b!1353415))

(assert (= (and b!1353415 res!898713) b!1353419))

(assert (= (and b!1353419 c!126793) b!1353417))

(assert (= (and b!1353419 (not c!126793)) b!1353425))

(assert (= (and b!1353419 res!898722) b!1353428))

(assert (= (and b!1353428 res!898716) b!1353421))

(assert (= (and b!1353421 res!898723) b!1353414))

(assert (= (and b!1353414 res!898718) b!1353423))

(assert (= (and b!1353423 res!898720) b!1353413))

(declare-fun m!1240057 () Bool)

(assert (=> b!1353422 m!1240057))

(declare-fun m!1240059 () Bool)

(assert (=> b!1353419 m!1240059))

(assert (=> b!1353419 m!1240059))

(declare-fun m!1240061 () Bool)

(assert (=> b!1353419 m!1240061))

(assert (=> b!1353428 m!1240059))

(assert (=> b!1353428 m!1240059))

(declare-fun m!1240063 () Bool)

(assert (=> b!1353428 m!1240063))

(declare-fun m!1240065 () Bool)

(assert (=> b!1353414 m!1240065))

(declare-fun m!1240067 () Bool)

(assert (=> b!1353418 m!1240067))

(declare-fun m!1240069 () Bool)

(assert (=> b!1353421 m!1240069))

(declare-fun m!1240071 () Bool)

(assert (=> start!114076 m!1240071))

(declare-fun m!1240073 () Bool)

(assert (=> b!1353424 m!1240073))

(declare-fun m!1240075 () Bool)

(assert (=> b!1353413 m!1240075))

(declare-fun m!1240077 () Bool)

(assert (=> b!1353427 m!1240077))

(declare-fun m!1240079 () Bool)

(assert (=> b!1353420 m!1240079))

(declare-fun m!1240081 () Bool)

(assert (=> b!1353423 m!1240081))

(declare-fun m!1240083 () Bool)

(assert (=> b!1353417 m!1240083))

(assert (=> b!1353417 m!1240059))

(assert (=> b!1353417 m!1240063))

(declare-fun m!1240085 () Bool)

(assert (=> b!1353417 m!1240085))

(declare-fun m!1240087 () Bool)

(assert (=> b!1353417 m!1240087))

(assert (=> b!1353417 m!1240059))

(assert (=> b!1353417 m!1240063))

(declare-fun m!1240089 () Bool)

(assert (=> b!1353417 m!1240089))

(declare-fun m!1240091 () Bool)

(assert (=> b!1353416 m!1240091))

(check-sat (not b!1353427) (not b!1353417) (not b!1353421) (not b!1353420) (not b!1353428) (not b!1353424) (not b!1353422) (not b!1353414) (not b!1353413) (not b!1353423) (not b!1353418) (not start!114076) (not b!1353416) (not b!1353419))
(check-sat)
