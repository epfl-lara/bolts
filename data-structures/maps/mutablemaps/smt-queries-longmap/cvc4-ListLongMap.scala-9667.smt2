; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114180 () Bool)

(assert start!114180)

(declare-fun b!1355697 () Bool)

(declare-fun e!769839 () Bool)

(declare-fun e!769838 () Bool)

(assert (=> b!1355697 (= e!769839 e!769838)))

(declare-fun res!900689 () Bool)

(assert (=> b!1355697 (=> (not res!900689) (not e!769838))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!598713 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355697 (= res!900689 (and (not (= from!3120 i!1404)) (not lt!598713) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44522 0))(
  ( (Unit!44523) )
))
(declare-fun lt!598712 () Unit!44522)

(declare-fun e!769837 () Unit!44522)

(assert (=> b!1355697 (= lt!598712 e!769837)))

(declare-fun c!126949 () Bool)

(assert (=> b!1355697 (= c!126949 lt!598713)))

(declare-datatypes ((array!92285 0))(
  ( (array!92286 (arr!44586 (Array (_ BitVec 32) (_ BitVec 64))) (size!45137 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92285)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355697 (= lt!598713 (validKeyInArray!0 (select (arr!44586 a!3742) from!3120)))))

(declare-fun b!1355698 () Bool)

(declare-fun res!900691 () Bool)

(assert (=> b!1355698 (=> (not res!900691) (not e!769839))))

(declare-datatypes ((List!31807 0))(
  ( (Nil!31804) (Cons!31803 (h!33012 (_ BitVec 64)) (t!46472 List!31807)) )
))
(declare-fun acc!759 () List!31807)

(declare-fun noDuplicate!2251 (List!31807) Bool)

(assert (=> b!1355698 (= res!900691 (noDuplicate!2251 acc!759))))

(declare-fun b!1355699 () Bool)

(declare-fun Unit!44524 () Unit!44522)

(assert (=> b!1355699 (= e!769837 Unit!44524)))

(declare-fun b!1355700 () Bool)

(declare-fun res!900693 () Bool)

(assert (=> b!1355700 (=> (not res!900693) (not e!769839))))

(declare-fun contains!9372 (List!31807 (_ BitVec 64)) Bool)

(assert (=> b!1355700 (= res!900693 (not (contains!9372 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355701 () Bool)

(declare-fun res!900687 () Bool)

(assert (=> b!1355701 (=> (not res!900687) (not e!769839))))

(declare-fun arrayNoDuplicates!0 (array!92285 (_ BitVec 32) List!31807) Bool)

(assert (=> b!1355701 (= res!900687 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31804))))

(declare-fun b!1355703 () Bool)

(assert (=> b!1355703 (= e!769838 false)))

(declare-fun lt!598711 () Bool)

(assert (=> b!1355703 (= lt!598711 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355704 () Bool)

(declare-fun res!900684 () Bool)

(assert (=> b!1355704 (=> (not res!900684) (not e!769839))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355704 (= res!900684 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355705 () Bool)

(declare-fun res!900692 () Bool)

(assert (=> b!1355705 (=> (not res!900692) (not e!769839))))

(assert (=> b!1355705 (= res!900692 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45137 a!3742)))))

(declare-fun b!1355706 () Bool)

(declare-fun res!900686 () Bool)

(assert (=> b!1355706 (=> (not res!900686) (not e!769839))))

(assert (=> b!1355706 (= res!900686 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355707 () Bool)

(declare-fun lt!598714 () Unit!44522)

(assert (=> b!1355707 (= e!769837 lt!598714)))

(declare-fun lt!598715 () Unit!44522)

(declare-fun lemmaListSubSeqRefl!0 (List!31807) Unit!44522)

(assert (=> b!1355707 (= lt!598715 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!781 (List!31807 List!31807) Bool)

(assert (=> b!1355707 (subseq!781 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92285 List!31807 List!31807 (_ BitVec 32)) Unit!44522)

(declare-fun $colon$colon!798 (List!31807 (_ BitVec 64)) List!31807)

(assert (=> b!1355707 (= lt!598714 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!798 acc!759 (select (arr!44586 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355707 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355708 () Bool)

(declare-fun res!900690 () Bool)

(assert (=> b!1355708 (=> (not res!900690) (not e!769839))))

(assert (=> b!1355708 (= res!900690 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45137 a!3742))))))

(declare-fun b!1355702 () Bool)

(declare-fun res!900685 () Bool)

(assert (=> b!1355702 (=> (not res!900685) (not e!769839))))

(assert (=> b!1355702 (= res!900685 (not (contains!9372 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900688 () Bool)

(assert (=> start!114180 (=> (not res!900688) (not e!769839))))

(assert (=> start!114180 (= res!900688 (and (bvslt (size!45137 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45137 a!3742))))))

(assert (=> start!114180 e!769839))

(assert (=> start!114180 true))

(declare-fun array_inv!33531 (array!92285) Bool)

(assert (=> start!114180 (array_inv!33531 a!3742)))

(assert (= (and start!114180 res!900688) b!1355698))

(assert (= (and b!1355698 res!900691) b!1355700))

(assert (= (and b!1355700 res!900693) b!1355702))

(assert (= (and b!1355702 res!900685) b!1355701))

(assert (= (and b!1355701 res!900687) b!1355706))

(assert (= (and b!1355706 res!900686) b!1355708))

(assert (= (and b!1355708 res!900690) b!1355704))

(assert (= (and b!1355704 res!900684) b!1355705))

(assert (= (and b!1355705 res!900692) b!1355697))

(assert (= (and b!1355697 c!126949) b!1355707))

(assert (= (and b!1355697 (not c!126949)) b!1355699))

(assert (= (and b!1355697 res!900689) b!1355703))

(declare-fun m!1241841 () Bool)

(assert (=> b!1355704 m!1241841))

(declare-fun m!1241843 () Bool)

(assert (=> b!1355698 m!1241843))

(declare-fun m!1241845 () Bool)

(assert (=> b!1355700 m!1241845))

(declare-fun m!1241847 () Bool)

(assert (=> b!1355697 m!1241847))

(assert (=> b!1355697 m!1241847))

(declare-fun m!1241849 () Bool)

(assert (=> b!1355697 m!1241849))

(declare-fun m!1241851 () Bool)

(assert (=> b!1355706 m!1241851))

(declare-fun m!1241853 () Bool)

(assert (=> b!1355701 m!1241853))

(declare-fun m!1241855 () Bool)

(assert (=> start!114180 m!1241855))

(declare-fun m!1241857 () Bool)

(assert (=> b!1355703 m!1241857))

(declare-fun m!1241859 () Bool)

(assert (=> b!1355702 m!1241859))

(declare-fun m!1241861 () Bool)

(assert (=> b!1355707 m!1241861))

(assert (=> b!1355707 m!1241847))

(declare-fun m!1241863 () Bool)

(assert (=> b!1355707 m!1241863))

(declare-fun m!1241865 () Bool)

(assert (=> b!1355707 m!1241865))

(assert (=> b!1355707 m!1241857))

(assert (=> b!1355707 m!1241847))

(assert (=> b!1355707 m!1241863))

(declare-fun m!1241867 () Bool)

(assert (=> b!1355707 m!1241867))

(push 1)

