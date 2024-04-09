; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114530 () Bool)

(assert start!114530)

(declare-fun b!1358749 () Bool)

(declare-fun res!903448 () Bool)

(declare-fun e!771106 () Bool)

(assert (=> b!1358749 (=> (not res!903448) (not e!771106))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92449 0))(
  ( (array!92450 (arr!44662 (Array (_ BitVec 32) (_ BitVec 64))) (size!45213 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92449)

(assert (=> b!1358749 (= res!903448 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45213 a!3742)))))

(declare-fun b!1358750 () Bool)

(declare-datatypes ((Unit!44669 0))(
  ( (Unit!44670) )
))
(declare-fun e!771104 () Unit!44669)

(declare-fun lt!599382 () Unit!44669)

(assert (=> b!1358750 (= e!771104 lt!599382)))

(declare-fun lt!599384 () Unit!44669)

(declare-datatypes ((List!31883 0))(
  ( (Nil!31880) (Cons!31879 (h!33088 (_ BitVec 64)) (t!46560 List!31883)) )
))
(declare-fun acc!759 () List!31883)

(declare-fun lemmaListSubSeqRefl!0 (List!31883) Unit!44669)

(assert (=> b!1358750 (= lt!599384 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!839 (List!31883 List!31883) Bool)

(assert (=> b!1358750 (subseq!839 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92449 List!31883 List!31883 (_ BitVec 32)) Unit!44669)

(declare-fun $colon$colon!844 (List!31883 (_ BitVec 64)) List!31883)

(assert (=> b!1358750 (= lt!599382 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!844 acc!759 (select (arr!44662 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92449 (_ BitVec 32) List!31883) Bool)

(assert (=> b!1358750 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1358751 () Bool)

(declare-fun res!903450 () Bool)

(assert (=> b!1358751 (=> (not res!903450) (not e!771106))))

(assert (=> b!1358751 (= res!903450 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31880))))

(declare-fun b!1358752 () Bool)

(declare-fun res!903452 () Bool)

(assert (=> b!1358752 (=> (not res!903452) (not e!771106))))

(declare-fun contains!9448 (List!31883 (_ BitVec 64)) Bool)

(assert (=> b!1358752 (= res!903452 (not (contains!9448 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358753 () Bool)

(declare-fun res!903449 () Bool)

(assert (=> b!1358753 (=> (not res!903449) (not e!771106))))

(assert (=> b!1358753 (= res!903449 (not (contains!9448 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1358754 () Bool)

(declare-fun res!903455 () Bool)

(assert (=> b!1358754 (=> (not res!903455) (not e!771106))))

(assert (=> b!1358754 (= res!903455 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1358755 () Bool)

(assert (=> b!1358755 (= e!771106 false)))

(declare-fun lt!599383 () Unit!44669)

(assert (=> b!1358755 (= lt!599383 e!771104)))

(declare-fun c!127093 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1358755 (= c!127093 (validKeyInArray!0 (select (arr!44662 a!3742) from!3120)))))

(declare-fun b!1358756 () Bool)

(declare-fun res!903451 () Bool)

(assert (=> b!1358756 (=> (not res!903451) (not e!771106))))

(declare-fun noDuplicate!2327 (List!31883) Bool)

(assert (=> b!1358756 (= res!903451 (noDuplicate!2327 acc!759))))

(declare-fun b!1358757 () Bool)

(declare-fun res!903453 () Bool)

(assert (=> b!1358757 (=> (not res!903453) (not e!771106))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1358757 (= res!903453 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1358759 () Bool)

(declare-fun res!903456 () Bool)

(assert (=> b!1358759 (=> (not res!903456) (not e!771106))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1358759 (= res!903456 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45213 a!3742))))))

(declare-fun res!903454 () Bool)

(assert (=> start!114530 (=> (not res!903454) (not e!771106))))

(assert (=> start!114530 (= res!903454 (and (bvslt (size!45213 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45213 a!3742))))))

(assert (=> start!114530 e!771106))

(assert (=> start!114530 true))

(declare-fun array_inv!33607 (array!92449) Bool)

(assert (=> start!114530 (array_inv!33607 a!3742)))

(declare-fun b!1358758 () Bool)

(declare-fun Unit!44671 () Unit!44669)

(assert (=> b!1358758 (= e!771104 Unit!44671)))

(assert (= (and start!114530 res!903454) b!1358756))

(assert (= (and b!1358756 res!903451) b!1358753))

(assert (= (and b!1358753 res!903449) b!1358752))

(assert (= (and b!1358752 res!903452) b!1358751))

(assert (= (and b!1358751 res!903450) b!1358754))

(assert (= (and b!1358754 res!903455) b!1358759))

(assert (= (and b!1358759 res!903456) b!1358757))

(assert (= (and b!1358757 res!903453) b!1358749))

(assert (= (and b!1358749 res!903448) b!1358755))

(assert (= (and b!1358755 c!127093) b!1358750))

(assert (= (and b!1358755 (not c!127093)) b!1358758))

(declare-fun m!1244311 () Bool)

(assert (=> b!1358757 m!1244311))

(declare-fun m!1244313 () Bool)

(assert (=> start!114530 m!1244313))

(declare-fun m!1244315 () Bool)

(assert (=> b!1358752 m!1244315))

(declare-fun m!1244317 () Bool)

(assert (=> b!1358754 m!1244317))

(declare-fun m!1244319 () Bool)

(assert (=> b!1358756 m!1244319))

(declare-fun m!1244321 () Bool)

(assert (=> b!1358751 m!1244321))

(declare-fun m!1244323 () Bool)

(assert (=> b!1358755 m!1244323))

(assert (=> b!1358755 m!1244323))

(declare-fun m!1244325 () Bool)

(assert (=> b!1358755 m!1244325))

(declare-fun m!1244327 () Bool)

(assert (=> b!1358753 m!1244327))

(declare-fun m!1244329 () Bool)

(assert (=> b!1358750 m!1244329))

(assert (=> b!1358750 m!1244323))

(declare-fun m!1244331 () Bool)

(assert (=> b!1358750 m!1244331))

(declare-fun m!1244333 () Bool)

(assert (=> b!1358750 m!1244333))

(declare-fun m!1244335 () Bool)

(assert (=> b!1358750 m!1244335))

(assert (=> b!1358750 m!1244323))

(assert (=> b!1358750 m!1244331))

(declare-fun m!1244337 () Bool)

(assert (=> b!1358750 m!1244337))

(push 1)

(assert (not b!1358755))

(assert (not start!114530))

(assert (not b!1358757))

(assert (not b!1358750))

(assert (not b!1358754))

(assert (not b!1358756))

(assert (not b!1358753))

(assert (not b!1358751))

(assert (not b!1358752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

