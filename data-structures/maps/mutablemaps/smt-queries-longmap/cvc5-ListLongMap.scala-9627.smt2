; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113936 () Bool)

(assert start!113936)

(declare-fun b!1350555 () Bool)

(declare-fun res!896141 () Bool)

(declare-fun e!768326 () Bool)

(assert (=> b!1350555 (=> (not res!896141) (not e!768326))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92041 0))(
  ( (array!92042 (arr!44464 (Array (_ BitVec 32) (_ BitVec 64))) (size!45015 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92041)

(assert (=> b!1350555 (= res!896141 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45015 a!3742)))))

(declare-fun b!1350556 () Bool)

(declare-fun e!768328 () Bool)

(assert (=> b!1350556 (= e!768326 (not e!768328))))

(declare-fun res!896143 () Bool)

(assert (=> b!1350556 (=> res!896143 e!768328)))

(assert (=> b!1350556 (= res!896143 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-datatypes ((List!31685 0))(
  ( (Nil!31682) (Cons!31681 (h!32890 (_ BitVec 64)) (t!46350 List!31685)) )
))
(declare-fun acc!759 () List!31685)

(declare-fun lt!596952 () List!31685)

(declare-fun $colon$colon!676 (List!31685 (_ BitVec 64)) List!31685)

(assert (=> b!1350556 (= lt!596952 ($colon$colon!676 acc!759 (select (arr!44464 a!3742) from!3120)))))

(declare-fun subseq!659 (List!31685 List!31685) Bool)

(assert (=> b!1350556 (subseq!659 acc!759 acc!759)))

(declare-datatypes ((Unit!44180 0))(
  ( (Unit!44181) )
))
(declare-fun lt!596953 () Unit!44180)

(declare-fun lemmaListSubSeqRefl!0 (List!31685) Unit!44180)

(assert (=> b!1350556 (= lt!596953 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1350557 () Bool)

(declare-fun res!896148 () Bool)

(assert (=> b!1350557 (=> res!896148 e!768328)))

(declare-fun noDuplicate!2129 (List!31685) Bool)

(assert (=> b!1350557 (= res!896148 (not (noDuplicate!2129 lt!596952)))))

(declare-fun b!1350558 () Bool)

(declare-fun res!896144 () Bool)

(assert (=> b!1350558 (=> res!896144 e!768328)))

(declare-fun contains!9250 (List!31685 (_ BitVec 64)) Bool)

(assert (=> b!1350558 (= res!896144 (contains!9250 lt!596952 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350559 () Bool)

(declare-fun res!896138 () Bool)

(assert (=> b!1350559 (=> (not res!896138) (not e!768326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1350559 (= res!896138 (validKeyInArray!0 (select (arr!44464 a!3742) from!3120)))))

(declare-fun b!1350560 () Bool)

(declare-fun res!896136 () Bool)

(assert (=> b!1350560 (=> res!896136 e!768328)))

(assert (=> b!1350560 (= res!896136 (contains!9250 lt!596952 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1350561 () Bool)

(declare-fun res!896135 () Bool)

(assert (=> b!1350561 (=> (not res!896135) (not e!768326))))

(assert (=> b!1350561 (= res!896135 (not (contains!9250 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350562 () Bool)

(declare-fun res!896137 () Bool)

(assert (=> b!1350562 (=> (not res!896137) (not e!768326))))

(assert (=> b!1350562 (= res!896137 (not (contains!9250 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350563 () Bool)

(declare-fun res!896146 () Bool)

(assert (=> b!1350563 (=> (not res!896146) (not e!768326))))

(declare-fun arrayNoDuplicates!0 (array!92041 (_ BitVec 32) List!31685) Bool)

(assert (=> b!1350563 (= res!896146 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1350564 () Bool)

(assert (=> b!1350564 (= e!768328 true)))

(declare-fun lt!596954 () Bool)

(assert (=> b!1350564 (= lt!596954 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!596952))))

(declare-fun lt!596951 () Unit!44180)

(declare-fun noDuplicateSubseq!110 (List!31685 List!31685) Unit!44180)

(assert (=> b!1350564 (= lt!596951 (noDuplicateSubseq!110 acc!759 lt!596952))))

(declare-fun b!1350565 () Bool)

(declare-fun res!896139 () Bool)

(assert (=> b!1350565 (=> (not res!896139) (not e!768326))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1350565 (= res!896139 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1350566 () Bool)

(declare-fun res!896142 () Bool)

(assert (=> b!1350566 (=> (not res!896142) (not e!768326))))

(assert (=> b!1350566 (= res!896142 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31682))))

(declare-fun b!1350567 () Bool)

(declare-fun res!896147 () Bool)

(assert (=> b!1350567 (=> res!896147 e!768328)))

(assert (=> b!1350567 (= res!896147 (not (subseq!659 acc!759 lt!596952)))))

(declare-fun b!1350569 () Bool)

(declare-fun res!896145 () Bool)

(assert (=> b!1350569 (=> (not res!896145) (not e!768326))))

(assert (=> b!1350569 (= res!896145 (noDuplicate!2129 acc!759))))

(declare-fun b!1350568 () Bool)

(declare-fun res!896140 () Bool)

(assert (=> b!1350568 (=> (not res!896140) (not e!768326))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1350568 (= res!896140 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45015 a!3742))))))

(declare-fun res!896134 () Bool)

(assert (=> start!113936 (=> (not res!896134) (not e!768326))))

(assert (=> start!113936 (= res!896134 (and (bvslt (size!45015 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45015 a!3742))))))

(assert (=> start!113936 e!768326))

(assert (=> start!113936 true))

(declare-fun array_inv!33409 (array!92041) Bool)

(assert (=> start!113936 (array_inv!33409 a!3742)))

(assert (= (and start!113936 res!896134) b!1350569))

(assert (= (and b!1350569 res!896145) b!1350562))

(assert (= (and b!1350562 res!896137) b!1350561))

(assert (= (and b!1350561 res!896135) b!1350566))

(assert (= (and b!1350566 res!896142) b!1350563))

(assert (= (and b!1350563 res!896146) b!1350568))

(assert (= (and b!1350568 res!896140) b!1350565))

(assert (= (and b!1350565 res!896139) b!1350555))

(assert (= (and b!1350555 res!896141) b!1350559))

(assert (= (and b!1350559 res!896138) b!1350556))

(assert (= (and b!1350556 (not res!896143)) b!1350557))

(assert (= (and b!1350557 (not res!896148)) b!1350558))

(assert (= (and b!1350558 (not res!896144)) b!1350560))

(assert (= (and b!1350560 (not res!896136)) b!1350567))

(assert (= (and b!1350567 (not res!896147)) b!1350564))

(declare-fun m!1237777 () Bool)

(assert (=> b!1350565 m!1237777))

(declare-fun m!1237779 () Bool)

(assert (=> b!1350562 m!1237779))

(declare-fun m!1237781 () Bool)

(assert (=> b!1350561 m!1237781))

(declare-fun m!1237783 () Bool)

(assert (=> b!1350559 m!1237783))

(assert (=> b!1350559 m!1237783))

(declare-fun m!1237785 () Bool)

(assert (=> b!1350559 m!1237785))

(declare-fun m!1237787 () Bool)

(assert (=> b!1350558 m!1237787))

(declare-fun m!1237789 () Bool)

(assert (=> b!1350563 m!1237789))

(declare-fun m!1237791 () Bool)

(assert (=> b!1350566 m!1237791))

(assert (=> b!1350556 m!1237783))

(assert (=> b!1350556 m!1237783))

(declare-fun m!1237793 () Bool)

(assert (=> b!1350556 m!1237793))

(declare-fun m!1237795 () Bool)

(assert (=> b!1350556 m!1237795))

(declare-fun m!1237797 () Bool)

(assert (=> b!1350556 m!1237797))

(declare-fun m!1237799 () Bool)

(assert (=> b!1350557 m!1237799))

(declare-fun m!1237801 () Bool)

(assert (=> start!113936 m!1237801))

(declare-fun m!1237803 () Bool)

(assert (=> b!1350564 m!1237803))

(declare-fun m!1237805 () Bool)

(assert (=> b!1350564 m!1237805))

(declare-fun m!1237807 () Bool)

(assert (=> b!1350567 m!1237807))

(declare-fun m!1237809 () Bool)

(assert (=> b!1350560 m!1237809))

(declare-fun m!1237811 () Bool)

(assert (=> b!1350569 m!1237811))

(push 1)

(assert (not b!1350567))

(assert (not b!1350559))

(assert (not b!1350565))

(assert (not b!1350563))

(assert (not b!1350560))

(assert (not b!1350557))

(assert (not b!1350562))

(assert (not b!1350561))

(assert (not b!1350569))

(assert (not start!113936))

(assert (not b!1350556))

(assert (not b!1350558))

(assert (not b!1350566))

(assert (not b!1350564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

