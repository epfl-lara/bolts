; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114602 () Bool)

(assert start!114602)

(declare-fun b!1359210 () Bool)

(declare-datatypes ((Unit!44696 0))(
  ( (Unit!44697) )
))
(declare-fun e!771335 () Unit!44696)

(declare-fun lt!599495 () Unit!44696)

(assert (=> b!1359210 (= e!771335 lt!599495)))

(declare-fun lt!599497 () Unit!44696)

(declare-datatypes ((List!31892 0))(
  ( (Nil!31889) (Cons!31888 (h!33097 (_ BitVec 64)) (t!46572 List!31892)) )
))
(declare-fun acc!759 () List!31892)

(declare-fun lemmaListSubSeqRefl!0 (List!31892) Unit!44696)

(assert (=> b!1359210 (= lt!599497 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!848 (List!31892 List!31892) Bool)

(assert (=> b!1359210 (subseq!848 acc!759 acc!759)))

(declare-datatypes ((array!92470 0))(
  ( (array!92471 (arr!44671 (Array (_ BitVec 32) (_ BitVec 64))) (size!45222 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92470)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92470 List!31892 List!31892 (_ BitVec 32)) Unit!44696)

(declare-fun $colon$colon!853 (List!31892 (_ BitVec 64)) List!31892)

(assert (=> b!1359210 (= lt!599495 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!853 acc!759 (select (arr!44671 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92470 (_ BitVec 32) List!31892) Bool)

(assert (=> b!1359210 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1359211 () Bool)

(declare-fun res!903831 () Bool)

(declare-fun e!771336 () Bool)

(assert (=> b!1359211 (=> (not res!903831) (not e!771336))))

(assert (=> b!1359211 (= res!903831 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31889))))

(declare-fun b!1359212 () Bool)

(declare-fun res!903830 () Bool)

(assert (=> b!1359212 (=> (not res!903830) (not e!771336))))

(declare-fun noDuplicate!2336 (List!31892) Bool)

(assert (=> b!1359212 (= res!903830 (noDuplicate!2336 acc!759))))

(declare-fun b!1359213 () Bool)

(declare-fun e!771334 () Bool)

(assert (=> b!1359213 (= e!771336 e!771334)))

(declare-fun res!903827 () Bool)

(assert (=> b!1359213 (=> (not res!903827) (not e!771334))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1359213 (= res!903827 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!599496 () Unit!44696)

(assert (=> b!1359213 (= lt!599496 e!771335)))

(declare-fun c!127135 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1359213 (= c!127135 (validKeyInArray!0 (select (arr!44671 a!3742) from!3120)))))

(declare-fun b!1359214 () Bool)

(declare-fun res!903829 () Bool)

(assert (=> b!1359214 (=> (not res!903829) (not e!771336))))

(assert (=> b!1359214 (= res!903829 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45222 a!3742)))))

(declare-fun b!1359215 () Bool)

(declare-fun res!903826 () Bool)

(assert (=> b!1359215 (=> (not res!903826) (not e!771336))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1359215 (= res!903826 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1359216 () Bool)

(declare-fun res!903833 () Bool)

(assert (=> b!1359216 (=> (not res!903833) (not e!771336))))

(assert (=> b!1359216 (= res!903833 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1359217 () Bool)

(declare-fun res!903834 () Bool)

(assert (=> b!1359217 (=> (not res!903834) (not e!771336))))

(declare-fun contains!9457 (List!31892 (_ BitVec 64)) Bool)

(assert (=> b!1359217 (= res!903834 (not (contains!9457 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1359218 () Bool)

(declare-fun res!903825 () Bool)

(assert (=> b!1359218 (=> (not res!903825) (not e!771336))))

(assert (=> b!1359218 (= res!903825 (not (contains!9457 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!903828 () Bool)

(assert (=> start!114602 (=> (not res!903828) (not e!771336))))

(assert (=> start!114602 (= res!903828 (and (bvslt (size!45222 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45222 a!3742))))))

(assert (=> start!114602 e!771336))

(assert (=> start!114602 true))

(declare-fun array_inv!33616 (array!92470) Bool)

(assert (=> start!114602 (array_inv!33616 a!3742)))

(declare-fun b!1359219 () Bool)

(declare-fun Unit!44698 () Unit!44696)

(assert (=> b!1359219 (= e!771335 Unit!44698)))

(declare-fun b!1359220 () Bool)

(assert (=> b!1359220 (= e!771334 false)))

(declare-fun lt!599498 () Bool)

(assert (=> b!1359220 (= lt!599498 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1359221 () Bool)

(declare-fun res!903832 () Bool)

(assert (=> b!1359221 (=> (not res!903832) (not e!771336))))

(assert (=> b!1359221 (= res!903832 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45222 a!3742))))))

(assert (= (and start!114602 res!903828) b!1359212))

(assert (= (and b!1359212 res!903830) b!1359217))

(assert (= (and b!1359217 res!903834) b!1359218))

(assert (= (and b!1359218 res!903825) b!1359211))

(assert (= (and b!1359211 res!903831) b!1359216))

(assert (= (and b!1359216 res!903833) b!1359221))

(assert (= (and b!1359221 res!903832) b!1359215))

(assert (= (and b!1359215 res!903826) b!1359214))

(assert (= (and b!1359214 res!903829) b!1359213))

(assert (= (and b!1359213 c!127135) b!1359210))

(assert (= (and b!1359213 (not c!127135)) b!1359219))

(assert (= (and b!1359213 res!903827) b!1359220))

(declare-fun m!1244689 () Bool)

(assert (=> b!1359220 m!1244689))

(declare-fun m!1244691 () Bool)

(assert (=> b!1359217 m!1244691))

(declare-fun m!1244693 () Bool)

(assert (=> b!1359211 m!1244693))

(declare-fun m!1244695 () Bool)

(assert (=> b!1359216 m!1244695))

(declare-fun m!1244697 () Bool)

(assert (=> b!1359213 m!1244697))

(assert (=> b!1359213 m!1244697))

(declare-fun m!1244699 () Bool)

(assert (=> b!1359213 m!1244699))

(declare-fun m!1244701 () Bool)

(assert (=> b!1359215 m!1244701))

(declare-fun m!1244703 () Bool)

(assert (=> b!1359210 m!1244703))

(assert (=> b!1359210 m!1244697))

(declare-fun m!1244705 () Bool)

(assert (=> b!1359210 m!1244705))

(declare-fun m!1244707 () Bool)

(assert (=> b!1359210 m!1244707))

(assert (=> b!1359210 m!1244689))

(assert (=> b!1359210 m!1244697))

(assert (=> b!1359210 m!1244705))

(declare-fun m!1244709 () Bool)

(assert (=> b!1359210 m!1244709))

(declare-fun m!1244711 () Bool)

(assert (=> b!1359212 m!1244711))

(declare-fun m!1244713 () Bool)

(assert (=> start!114602 m!1244713))

(declare-fun m!1244715 () Bool)

(assert (=> b!1359218 m!1244715))

(push 1)

