; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115018 () Bool)

(assert start!115018)

(declare-fun b!1362802 () Bool)

(declare-fun res!906836 () Bool)

(declare-fun e!772983 () Bool)

(assert (=> b!1362802 (=> (not res!906836) (not e!772983))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92619 0))(
  ( (array!92620 (arr!44738 (Array (_ BitVec 32) (_ BitVec 64))) (size!45289 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92619)

(assert (=> b!1362802 (= res!906836 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45289 a!3742))))))

(declare-fun b!1362803 () Bool)

(declare-fun res!906833 () Bool)

(assert (=> b!1362803 (=> (not res!906833) (not e!772983))))

(declare-datatypes ((List!31959 0))(
  ( (Nil!31956) (Cons!31955 (h!33164 (_ BitVec 64)) (t!46654 List!31959)) )
))
(declare-fun acc!759 () List!31959)

(declare-fun contains!9524 (List!31959 (_ BitVec 64)) Bool)

(assert (=> b!1362803 (= res!906833 (not (contains!9524 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362804 () Bool)

(declare-datatypes ((Unit!44897 0))(
  ( (Unit!44898) )
))
(declare-fun e!772984 () Unit!44897)

(declare-fun lt!600552 () Unit!44897)

(assert (=> b!1362804 (= e!772984 lt!600552)))

(declare-fun lt!600553 () Unit!44897)

(declare-fun lemmaListSubSeqRefl!0 (List!31959) Unit!44897)

(assert (=> b!1362804 (= lt!600553 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!915 (List!31959 List!31959) Bool)

(assert (=> b!1362804 (subseq!915 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92619 List!31959 List!31959 (_ BitVec 32)) Unit!44897)

(declare-fun $colon$colon!920 (List!31959 (_ BitVec 64)) List!31959)

(assert (=> b!1362804 (= lt!600552 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!920 acc!759 (select (arr!44738 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92619 (_ BitVec 32) List!31959) Bool)

(assert (=> b!1362804 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362805 () Bool)

(declare-fun Unit!44899 () Unit!44897)

(assert (=> b!1362805 (= e!772984 Unit!44899)))

(declare-fun b!1362806 () Bool)

(declare-fun res!906835 () Bool)

(assert (=> b!1362806 (=> (not res!906835) (not e!772983))))

(assert (=> b!1362806 (= res!906835 (not (contains!9524 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362807 () Bool)

(declare-fun res!906837 () Bool)

(assert (=> b!1362807 (=> (not res!906837) (not e!772983))))

(assert (=> b!1362807 (= res!906837 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun res!906830 () Bool)

(assert (=> start!115018 (=> (not res!906830) (not e!772983))))

(assert (=> start!115018 (= res!906830 (and (bvslt (size!45289 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45289 a!3742))))))

(assert (=> start!115018 e!772983))

(assert (=> start!115018 true))

(declare-fun array_inv!33683 (array!92619) Bool)

(assert (=> start!115018 (array_inv!33683 a!3742)))

(declare-fun b!1362808 () Bool)

(declare-fun res!906834 () Bool)

(assert (=> b!1362808 (=> (not res!906834) (not e!772983))))

(assert (=> b!1362808 (= res!906834 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45289 a!3742)))))

(declare-fun b!1362809 () Bool)

(assert (=> b!1362809 (= e!772983 false)))

(declare-fun lt!600554 () Unit!44897)

(assert (=> b!1362809 (= lt!600554 e!772984)))

(declare-fun c!127429 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362809 (= c!127429 (validKeyInArray!0 (select (arr!44738 a!3742) from!3120)))))

(declare-fun b!1362810 () Bool)

(declare-fun res!906832 () Bool)

(assert (=> b!1362810 (=> (not res!906832) (not e!772983))))

(declare-fun noDuplicate!2403 (List!31959) Bool)

(assert (=> b!1362810 (= res!906832 (noDuplicate!2403 acc!759))))

(declare-fun b!1362811 () Bool)

(declare-fun res!906829 () Bool)

(assert (=> b!1362811 (=> (not res!906829) (not e!772983))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362811 (= res!906829 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362812 () Bool)

(declare-fun res!906831 () Bool)

(assert (=> b!1362812 (=> (not res!906831) (not e!772983))))

(assert (=> b!1362812 (= res!906831 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31956))))

(assert (= (and start!115018 res!906830) b!1362810))

(assert (= (and b!1362810 res!906832) b!1362806))

(assert (= (and b!1362806 res!906835) b!1362803))

(assert (= (and b!1362803 res!906833) b!1362812))

(assert (= (and b!1362812 res!906831) b!1362807))

(assert (= (and b!1362807 res!906837) b!1362802))

(assert (= (and b!1362802 res!906836) b!1362811))

(assert (= (and b!1362811 res!906829) b!1362808))

(assert (= (and b!1362808 res!906834) b!1362809))

(assert (= (and b!1362809 c!127429) b!1362804))

(assert (= (and b!1362809 (not c!127429)) b!1362805))

(declare-fun m!1247747 () Bool)

(assert (=> b!1362804 m!1247747))

(declare-fun m!1247749 () Bool)

(assert (=> b!1362804 m!1247749))

(declare-fun m!1247751 () Bool)

(assert (=> b!1362804 m!1247751))

(declare-fun m!1247753 () Bool)

(assert (=> b!1362804 m!1247753))

(declare-fun m!1247755 () Bool)

(assert (=> b!1362804 m!1247755))

(assert (=> b!1362804 m!1247749))

(assert (=> b!1362804 m!1247751))

(declare-fun m!1247757 () Bool)

(assert (=> b!1362804 m!1247757))

(declare-fun m!1247759 () Bool)

(assert (=> b!1362811 m!1247759))

(declare-fun m!1247761 () Bool)

(assert (=> b!1362807 m!1247761))

(declare-fun m!1247763 () Bool)

(assert (=> start!115018 m!1247763))

(assert (=> b!1362809 m!1247749))

(assert (=> b!1362809 m!1247749))

(declare-fun m!1247765 () Bool)

(assert (=> b!1362809 m!1247765))

(declare-fun m!1247767 () Bool)

(assert (=> b!1362803 m!1247767))

(declare-fun m!1247769 () Bool)

(assert (=> b!1362806 m!1247769))

(declare-fun m!1247771 () Bool)

(assert (=> b!1362812 m!1247771))

(declare-fun m!1247773 () Bool)

(assert (=> b!1362810 m!1247773))

(check-sat (not b!1362804) (not b!1362806) (not b!1362803) (not b!1362810) (not start!115018) (not b!1362809) (not b!1362807) (not b!1362812) (not b!1362811))
