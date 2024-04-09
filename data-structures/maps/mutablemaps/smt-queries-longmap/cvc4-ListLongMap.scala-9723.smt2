; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115104 () Bool)

(assert start!115104)

(declare-fun b!1363509 () Bool)

(declare-datatypes ((Unit!44945 0))(
  ( (Unit!44946) )
))
(declare-fun e!773290 () Unit!44945)

(declare-fun lt!600769 () Unit!44945)

(assert (=> b!1363509 (= e!773290 lt!600769)))

(declare-fun lt!600773 () Unit!44945)

(declare-datatypes ((List!31975 0))(
  ( (Nil!31972) (Cons!31971 (h!33180 (_ BitVec 64)) (t!46673 List!31975)) )
))
(declare-fun acc!759 () List!31975)

(declare-fun lemmaListSubSeqRefl!0 (List!31975) Unit!44945)

(assert (=> b!1363509 (= lt!600773 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!931 (List!31975 List!31975) Bool)

(assert (=> b!1363509 (subseq!931 acc!759 acc!759)))

(declare-datatypes ((array!92654 0))(
  ( (array!92655 (arr!44754 (Array (_ BitVec 32) (_ BitVec 64))) (size!45305 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92654)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92654 List!31975 List!31975 (_ BitVec 32)) Unit!44945)

(declare-fun $colon$colon!936 (List!31975 (_ BitVec 64)) List!31975)

(assert (=> b!1363509 (= lt!600769 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!936 acc!759 (select (arr!44754 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92654 (_ BitVec 32) List!31975) Bool)

(assert (=> b!1363509 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363510 () Bool)

(declare-fun res!907417 () Bool)

(declare-fun e!773291 () Bool)

(assert (=> b!1363510 (=> (not res!907417) (not e!773291))))

(assert (=> b!1363510 (= res!907417 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363511 () Bool)

(declare-fun res!907413 () Bool)

(assert (=> b!1363511 (=> (not res!907413) (not e!773291))))

(assert (=> b!1363511 (= res!907413 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31972))))

(declare-fun b!1363512 () Bool)

(declare-fun res!907418 () Bool)

(assert (=> b!1363512 (=> (not res!907418) (not e!773291))))

(declare-fun contains!9540 (List!31975 (_ BitVec 64)) Bool)

(assert (=> b!1363512 (= res!907418 (not (contains!9540 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363514 () Bool)

(declare-fun res!907414 () Bool)

(assert (=> b!1363514 (=> (not res!907414) (not e!773291))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363514 (= res!907414 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45305 a!3742))))))

(declare-fun b!1363515 () Bool)

(declare-fun res!907411 () Bool)

(assert (=> b!1363515 (=> (not res!907411) (not e!773291))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363515 (= res!907411 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363516 () Bool)

(declare-fun e!773292 () Bool)

(assert (=> b!1363516 (= e!773291 e!773292)))

(declare-fun res!907412 () Bool)

(assert (=> b!1363516 (=> (not res!907412) (not e!773292))))

(declare-fun lt!600772 () Bool)

(assert (=> b!1363516 (= res!907412 (and (not (= from!3120 i!1404)) (not lt!600772) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600771 () Unit!44945)

(assert (=> b!1363516 (= lt!600771 e!773290)))

(declare-fun c!127492 () Bool)

(assert (=> b!1363516 (= c!127492 lt!600772)))

(assert (=> b!1363516 (= lt!600772 (validKeyInArray!0 (select (arr!44754 a!3742) from!3120)))))

(declare-fun b!1363517 () Bool)

(assert (=> b!1363517 (= e!773292 false)))

(declare-fun lt!600770 () Bool)

(assert (=> b!1363517 (= lt!600770 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363518 () Bool)

(declare-fun Unit!44947 () Unit!44945)

(assert (=> b!1363518 (= e!773290 Unit!44947)))

(declare-fun b!1363513 () Bool)

(declare-fun res!907416 () Bool)

(assert (=> b!1363513 (=> (not res!907416) (not e!773291))))

(assert (=> b!1363513 (= res!907416 (not (contains!9540 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907410 () Bool)

(assert (=> start!115104 (=> (not res!907410) (not e!773291))))

(assert (=> start!115104 (= res!907410 (and (bvslt (size!45305 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45305 a!3742))))))

(assert (=> start!115104 e!773291))

(assert (=> start!115104 true))

(declare-fun array_inv!33699 (array!92654) Bool)

(assert (=> start!115104 (array_inv!33699 a!3742)))

(declare-fun b!1363519 () Bool)

(declare-fun res!907419 () Bool)

(assert (=> b!1363519 (=> (not res!907419) (not e!773291))))

(declare-fun noDuplicate!2419 (List!31975) Bool)

(assert (=> b!1363519 (= res!907419 (noDuplicate!2419 acc!759))))

(declare-fun b!1363520 () Bool)

(declare-fun res!907415 () Bool)

(assert (=> b!1363520 (=> (not res!907415) (not e!773291))))

(assert (=> b!1363520 (= res!907415 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45305 a!3742)))))

(assert (= (and start!115104 res!907410) b!1363519))

(assert (= (and b!1363519 res!907419) b!1363513))

(assert (= (and b!1363513 res!907416) b!1363512))

(assert (= (and b!1363512 res!907418) b!1363511))

(assert (= (and b!1363511 res!907413) b!1363510))

(assert (= (and b!1363510 res!907417) b!1363514))

(assert (= (and b!1363514 res!907414) b!1363515))

(assert (= (and b!1363515 res!907411) b!1363520))

(assert (= (and b!1363520 res!907415) b!1363516))

(assert (= (and b!1363516 c!127492) b!1363509))

(assert (= (and b!1363516 (not c!127492)) b!1363518))

(assert (= (and b!1363516 res!907412) b!1363517))

(declare-fun m!1248321 () Bool)

(assert (=> b!1363511 m!1248321))

(declare-fun m!1248323 () Bool)

(assert (=> b!1363516 m!1248323))

(assert (=> b!1363516 m!1248323))

(declare-fun m!1248325 () Bool)

(assert (=> b!1363516 m!1248325))

(declare-fun m!1248327 () Bool)

(assert (=> b!1363517 m!1248327))

(declare-fun m!1248329 () Bool)

(assert (=> start!115104 m!1248329))

(declare-fun m!1248331 () Bool)

(assert (=> b!1363512 m!1248331))

(declare-fun m!1248333 () Bool)

(assert (=> b!1363509 m!1248333))

(assert (=> b!1363509 m!1248323))

(declare-fun m!1248335 () Bool)

(assert (=> b!1363509 m!1248335))

(declare-fun m!1248337 () Bool)

(assert (=> b!1363509 m!1248337))

(assert (=> b!1363509 m!1248327))

(assert (=> b!1363509 m!1248323))

(assert (=> b!1363509 m!1248335))

(declare-fun m!1248339 () Bool)

(assert (=> b!1363509 m!1248339))

(declare-fun m!1248341 () Bool)

(assert (=> b!1363515 m!1248341))

(declare-fun m!1248343 () Bool)

(assert (=> b!1363510 m!1248343))

(declare-fun m!1248345 () Bool)

(assert (=> b!1363519 m!1248345))

(declare-fun m!1248347 () Bool)

(assert (=> b!1363513 m!1248347))

(push 1)

(assert (not b!1363516))

(assert (not b!1363512))

