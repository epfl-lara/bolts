; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114182 () Bool)

(assert start!114182)

(declare-fun b!1355733 () Bool)

(declare-fun res!900717 () Bool)

(declare-fun e!769849 () Bool)

(assert (=> b!1355733 (=> (not res!900717) (not e!769849))))

(declare-datatypes ((List!31808 0))(
  ( (Nil!31805) (Cons!31804 (h!33013 (_ BitVec 64)) (t!46473 List!31808)) )
))
(declare-fun acc!759 () List!31808)

(declare-fun contains!9373 (List!31808 (_ BitVec 64)) Bool)

(assert (=> b!1355733 (= res!900717 (not (contains!9373 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355734 () Bool)

(declare-fun res!900720 () Bool)

(assert (=> b!1355734 (=> (not res!900720) (not e!769849))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92287 0))(
  ( (array!92288 (arr!44587 (Array (_ BitVec 32) (_ BitVec 64))) (size!45138 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92287)

(assert (=> b!1355734 (= res!900720 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45138 a!3742)))))

(declare-fun b!1355735 () Bool)

(declare-fun res!900716 () Bool)

(assert (=> b!1355735 (=> (not res!900716) (not e!769849))))

(assert (=> b!1355735 (= res!900716 (not (contains!9373 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355736 () Bool)

(declare-fun e!769851 () Bool)

(assert (=> b!1355736 (= e!769851 false)))

(declare-fun lt!598727 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92287 (_ BitVec 32) List!31808) Bool)

(assert (=> b!1355736 (= lt!598727 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun res!900722 () Bool)

(assert (=> start!114182 (=> (not res!900722) (not e!769849))))

(assert (=> start!114182 (= res!900722 (and (bvslt (size!45138 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45138 a!3742))))))

(assert (=> start!114182 e!769849))

(assert (=> start!114182 true))

(declare-fun array_inv!33532 (array!92287) Bool)

(assert (=> start!114182 (array_inv!33532 a!3742)))

(declare-fun b!1355737 () Bool)

(declare-fun res!900718 () Bool)

(assert (=> b!1355737 (=> (not res!900718) (not e!769849))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355737 (= res!900718 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45138 a!3742))))))

(declare-fun b!1355738 () Bool)

(declare-fun res!900721 () Bool)

(assert (=> b!1355738 (=> (not res!900721) (not e!769849))))

(assert (=> b!1355738 (= res!900721 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355739 () Bool)

(assert (=> b!1355739 (= e!769849 e!769851)))

(declare-fun res!900715 () Bool)

(assert (=> b!1355739 (=> (not res!900715) (not e!769851))))

(declare-fun lt!598726 () Bool)

(assert (=> b!1355739 (= res!900715 (and (not (= from!3120 i!1404)) (not lt!598726) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44525 0))(
  ( (Unit!44526) )
))
(declare-fun lt!598730 () Unit!44525)

(declare-fun e!769850 () Unit!44525)

(assert (=> b!1355739 (= lt!598730 e!769850)))

(declare-fun c!126952 () Bool)

(assert (=> b!1355739 (= c!126952 lt!598726)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355739 (= lt!598726 (validKeyInArray!0 (select (arr!44587 a!3742) from!3120)))))

(declare-fun b!1355740 () Bool)

(declare-fun res!900723 () Bool)

(assert (=> b!1355740 (=> (not res!900723) (not e!769849))))

(declare-fun noDuplicate!2252 (List!31808) Bool)

(assert (=> b!1355740 (= res!900723 (noDuplicate!2252 acc!759))))

(declare-fun b!1355741 () Bool)

(declare-fun Unit!44527 () Unit!44525)

(assert (=> b!1355741 (= e!769850 Unit!44527)))

(declare-fun b!1355742 () Bool)

(declare-fun res!900714 () Bool)

(assert (=> b!1355742 (=> (not res!900714) (not e!769849))))

(assert (=> b!1355742 (= res!900714 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31805))))

(declare-fun b!1355743 () Bool)

(declare-fun res!900719 () Bool)

(assert (=> b!1355743 (=> (not res!900719) (not e!769849))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355743 (= res!900719 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355744 () Bool)

(declare-fun lt!598728 () Unit!44525)

(assert (=> b!1355744 (= e!769850 lt!598728)))

(declare-fun lt!598729 () Unit!44525)

(declare-fun lemmaListSubSeqRefl!0 (List!31808) Unit!44525)

(assert (=> b!1355744 (= lt!598729 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!782 (List!31808 List!31808) Bool)

(assert (=> b!1355744 (subseq!782 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92287 List!31808 List!31808 (_ BitVec 32)) Unit!44525)

(declare-fun $colon$colon!799 (List!31808 (_ BitVec 64)) List!31808)

(assert (=> b!1355744 (= lt!598728 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!799 acc!759 (select (arr!44587 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355744 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(assert (= (and start!114182 res!900722) b!1355740))

(assert (= (and b!1355740 res!900723) b!1355733))

(assert (= (and b!1355733 res!900717) b!1355735))

(assert (= (and b!1355735 res!900716) b!1355742))

(assert (= (and b!1355742 res!900714) b!1355738))

(assert (= (and b!1355738 res!900721) b!1355737))

(assert (= (and b!1355737 res!900718) b!1355743))

(assert (= (and b!1355743 res!900719) b!1355734))

(assert (= (and b!1355734 res!900720) b!1355739))

(assert (= (and b!1355739 c!126952) b!1355744))

(assert (= (and b!1355739 (not c!126952)) b!1355741))

(assert (= (and b!1355739 res!900715) b!1355736))

(declare-fun m!1241869 () Bool)

(assert (=> start!114182 m!1241869))

(declare-fun m!1241871 () Bool)

(assert (=> b!1355740 m!1241871))

(declare-fun m!1241873 () Bool)

(assert (=> b!1355735 m!1241873))

(declare-fun m!1241875 () Bool)

(assert (=> b!1355744 m!1241875))

(declare-fun m!1241877 () Bool)

(assert (=> b!1355744 m!1241877))

(declare-fun m!1241879 () Bool)

(assert (=> b!1355744 m!1241879))

(declare-fun m!1241881 () Bool)

(assert (=> b!1355744 m!1241881))

(declare-fun m!1241883 () Bool)

(assert (=> b!1355744 m!1241883))

(assert (=> b!1355744 m!1241877))

(assert (=> b!1355744 m!1241879))

(declare-fun m!1241885 () Bool)

(assert (=> b!1355744 m!1241885))

(assert (=> b!1355736 m!1241883))

(declare-fun m!1241887 () Bool)

(assert (=> b!1355743 m!1241887))

(declare-fun m!1241889 () Bool)

(assert (=> b!1355733 m!1241889))

(declare-fun m!1241891 () Bool)

(assert (=> b!1355738 m!1241891))

(assert (=> b!1355739 m!1241877))

(assert (=> b!1355739 m!1241877))

(declare-fun m!1241893 () Bool)

(assert (=> b!1355739 m!1241893))

(declare-fun m!1241895 () Bool)

(assert (=> b!1355742 m!1241895))

(push 1)

