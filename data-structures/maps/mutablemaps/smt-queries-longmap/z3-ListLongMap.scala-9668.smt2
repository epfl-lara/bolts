; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114184 () Bool)

(assert start!114184)

(declare-fun b!1355770 () Bool)

(declare-fun res!900749 () Bool)

(declare-fun e!769861 () Bool)

(assert (=> b!1355770 (=> (not res!900749) (not e!769861))))

(declare-datatypes ((List!31809 0))(
  ( (Nil!31806) (Cons!31805 (h!33014 (_ BitVec 64)) (t!46474 List!31809)) )
))
(declare-fun acc!759 () List!31809)

(declare-fun noDuplicate!2253 (List!31809) Bool)

(assert (=> b!1355770 (= res!900749 (noDuplicate!2253 acc!759))))

(declare-fun b!1355771 () Bool)

(declare-fun res!900746 () Bool)

(assert (=> b!1355771 (=> (not res!900746) (not e!769861))))

(declare-fun contains!9374 (List!31809 (_ BitVec 64)) Bool)

(assert (=> b!1355771 (= res!900746 (not (contains!9374 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355769 () Bool)

(declare-fun res!900748 () Bool)

(assert (=> b!1355769 (=> (not res!900748) (not e!769861))))

(declare-datatypes ((array!92289 0))(
  ( (array!92290 (arr!44588 (Array (_ BitVec 32) (_ BitVec 64))) (size!45139 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92289)

(declare-fun arrayNoDuplicates!0 (array!92289 (_ BitVec 32) List!31809) Bool)

(assert (=> b!1355769 (= res!900748 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31806))))

(declare-fun res!900753 () Bool)

(assert (=> start!114184 (=> (not res!900753) (not e!769861))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114184 (= res!900753 (and (bvslt (size!45139 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45139 a!3742))))))

(assert (=> start!114184 e!769861))

(assert (=> start!114184 true))

(declare-fun array_inv!33533 (array!92289) Bool)

(assert (=> start!114184 (array_inv!33533 a!3742)))

(declare-fun b!1355772 () Bool)

(declare-fun res!900750 () Bool)

(assert (=> b!1355772 (=> (not res!900750) (not e!769861))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355772 (= res!900750 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355773 () Bool)

(declare-fun e!769862 () Bool)

(assert (=> b!1355773 (= e!769861 e!769862)))

(declare-fun res!900744 () Bool)

(assert (=> b!1355773 (=> (not res!900744) (not e!769862))))

(declare-fun lt!598745 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355773 (= res!900744 (and (not (= from!3120 i!1404)) (not lt!598745) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44528 0))(
  ( (Unit!44529) )
))
(declare-fun lt!598742 () Unit!44528)

(declare-fun e!769863 () Unit!44528)

(assert (=> b!1355773 (= lt!598742 e!769863)))

(declare-fun c!126955 () Bool)

(assert (=> b!1355773 (= c!126955 lt!598745)))

(assert (=> b!1355773 (= lt!598745 (validKeyInArray!0 (select (arr!44588 a!3742) from!3120)))))

(declare-fun b!1355774 () Bool)

(declare-fun res!900745 () Bool)

(assert (=> b!1355774 (=> (not res!900745) (not e!769861))))

(assert (=> b!1355774 (= res!900745 (not (contains!9374 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355775 () Bool)

(declare-fun res!900747 () Bool)

(assert (=> b!1355775 (=> (not res!900747) (not e!769861))))

(assert (=> b!1355775 (= res!900747 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45139 a!3742)))))

(declare-fun b!1355776 () Bool)

(declare-fun res!900751 () Bool)

(assert (=> b!1355776 (=> (not res!900751) (not e!769861))))

(assert (=> b!1355776 (= res!900751 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355777 () Bool)

(declare-fun lt!598744 () Unit!44528)

(assert (=> b!1355777 (= e!769863 lt!598744)))

(declare-fun lt!598743 () Unit!44528)

(declare-fun lemmaListSubSeqRefl!0 (List!31809) Unit!44528)

(assert (=> b!1355777 (= lt!598743 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!783 (List!31809 List!31809) Bool)

(assert (=> b!1355777 (subseq!783 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92289 List!31809 List!31809 (_ BitVec 32)) Unit!44528)

(declare-fun $colon$colon!800 (List!31809 (_ BitVec 64)) List!31809)

(assert (=> b!1355777 (= lt!598744 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!800 acc!759 (select (arr!44588 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355777 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355778 () Bool)

(declare-fun res!900752 () Bool)

(assert (=> b!1355778 (=> (not res!900752) (not e!769861))))

(assert (=> b!1355778 (= res!900752 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45139 a!3742))))))

(declare-fun b!1355779 () Bool)

(assert (=> b!1355779 (= e!769862 false)))

(declare-fun lt!598741 () Bool)

(assert (=> b!1355779 (= lt!598741 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355780 () Bool)

(declare-fun Unit!44530 () Unit!44528)

(assert (=> b!1355780 (= e!769863 Unit!44530)))

(assert (= (and start!114184 res!900753) b!1355770))

(assert (= (and b!1355770 res!900749) b!1355771))

(assert (= (and b!1355771 res!900746) b!1355774))

(assert (= (and b!1355774 res!900745) b!1355769))

(assert (= (and b!1355769 res!900748) b!1355776))

(assert (= (and b!1355776 res!900751) b!1355778))

(assert (= (and b!1355778 res!900752) b!1355772))

(assert (= (and b!1355772 res!900750) b!1355775))

(assert (= (and b!1355775 res!900747) b!1355773))

(assert (= (and b!1355773 c!126955) b!1355777))

(assert (= (and b!1355773 (not c!126955)) b!1355780))

(assert (= (and b!1355773 res!900744) b!1355779))

(declare-fun m!1241897 () Bool)

(assert (=> b!1355771 m!1241897))

(declare-fun m!1241899 () Bool)

(assert (=> b!1355769 m!1241899))

(declare-fun m!1241901 () Bool)

(assert (=> b!1355776 m!1241901))

(declare-fun m!1241903 () Bool)

(assert (=> start!114184 m!1241903))

(declare-fun m!1241905 () Bool)

(assert (=> b!1355772 m!1241905))

(declare-fun m!1241907 () Bool)

(assert (=> b!1355777 m!1241907))

(declare-fun m!1241909 () Bool)

(assert (=> b!1355777 m!1241909))

(declare-fun m!1241911 () Bool)

(assert (=> b!1355777 m!1241911))

(declare-fun m!1241913 () Bool)

(assert (=> b!1355777 m!1241913))

(declare-fun m!1241915 () Bool)

(assert (=> b!1355777 m!1241915))

(assert (=> b!1355777 m!1241909))

(assert (=> b!1355777 m!1241911))

(declare-fun m!1241917 () Bool)

(assert (=> b!1355777 m!1241917))

(declare-fun m!1241919 () Bool)

(assert (=> b!1355774 m!1241919))

(assert (=> b!1355779 m!1241915))

(assert (=> b!1355773 m!1241909))

(assert (=> b!1355773 m!1241909))

(declare-fun m!1241921 () Bool)

(assert (=> b!1355773 m!1241921))

(declare-fun m!1241923 () Bool)

(assert (=> b!1355770 m!1241923))

(check-sat (not b!1355774) (not b!1355772) (not start!114184) (not b!1355779) (not b!1355776) (not b!1355769) (not b!1355771) (not b!1355773) (not b!1355777) (not b!1355770))
(check-sat)
