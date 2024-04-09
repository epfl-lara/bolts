; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114036 () Bool)

(assert start!114036)

(declare-fun res!897984 () Bool)

(declare-fun e!768859 () Bool)

(assert (=> start!114036 (=> (not res!897984) (not e!768859))))

(declare-datatypes ((array!92141 0))(
  ( (array!92142 (arr!44514 (Array (_ BitVec 32) (_ BitVec 64))) (size!45065 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92141)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114036 (= res!897984 (and (bvslt (size!45065 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45065 a!3742))))))

(assert (=> start!114036 e!768859))

(assert (=> start!114036 true))

(declare-fun array_inv!33459 (array!92141) Bool)

(assert (=> start!114036 (array_inv!33459 a!3742)))

(declare-fun b!1352565 () Bool)

(declare-fun res!897987 () Bool)

(assert (=> b!1352565 (=> (not res!897987) (not e!768859))))

(declare-datatypes ((List!31735 0))(
  ( (Nil!31732) (Cons!31731 (h!32940 (_ BitVec 64)) (t!46400 List!31735)) )
))
(declare-fun acc!759 () List!31735)

(declare-fun contains!9300 (List!31735 (_ BitVec 64)) Bool)

(assert (=> b!1352565 (= res!897987 (not (contains!9300 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352566 () Bool)

(declare-fun res!897985 () Bool)

(assert (=> b!1352566 (=> (not res!897985) (not e!768859))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352566 (= res!897985 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352567 () Bool)

(declare-fun res!897990 () Bool)

(assert (=> b!1352567 (=> (not res!897990) (not e!768859))))

(declare-fun arrayNoDuplicates!0 (array!92141 (_ BitVec 32) List!31735) Bool)

(assert (=> b!1352567 (= res!897990 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31732))))

(declare-fun b!1352568 () Bool)

(declare-fun res!897986 () Bool)

(assert (=> b!1352568 (=> (not res!897986) (not e!768859))))

(assert (=> b!1352568 (= res!897986 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352569 () Bool)

(declare-datatypes ((Unit!44306 0))(
  ( (Unit!44307) )
))
(declare-fun e!768856 () Unit!44306)

(declare-fun lt!597551 () Unit!44306)

(assert (=> b!1352569 (= e!768856 lt!597551)))

(declare-fun lt!597552 () Unit!44306)

(declare-fun lemmaListSubSeqRefl!0 (List!31735) Unit!44306)

(assert (=> b!1352569 (= lt!597552 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!709 (List!31735 List!31735) Bool)

(assert (=> b!1352569 (subseq!709 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92141 List!31735 List!31735 (_ BitVec 32)) Unit!44306)

(declare-fun $colon$colon!726 (List!31735 (_ BitVec 64)) List!31735)

(assert (=> b!1352569 (= lt!597551 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!726 acc!759 (select (arr!44514 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352569 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352570 () Bool)

(declare-fun res!897991 () Bool)

(assert (=> b!1352570 (=> (not res!897991) (not e!768859))))

(assert (=> b!1352570 (= res!897991 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45065 a!3742)))))

(declare-fun b!1352571 () Bool)

(declare-fun res!897989 () Bool)

(assert (=> b!1352571 (=> (not res!897989) (not e!768859))))

(declare-fun noDuplicate!2179 (List!31735) Bool)

(assert (=> b!1352571 (= res!897989 (noDuplicate!2179 acc!759))))

(declare-fun b!1352572 () Bool)

(declare-fun e!768858 () Bool)

(assert (=> b!1352572 (= e!768859 e!768858)))

(declare-fun res!897993 () Bool)

(assert (=> b!1352572 (=> (not res!897993) (not e!768858))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352572 (= res!897993 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597554 () Unit!44306)

(assert (=> b!1352572 (= lt!597554 e!768856)))

(declare-fun c!126733 () Bool)

(assert (=> b!1352572 (= c!126733 (validKeyInArray!0 (select (arr!44514 a!3742) from!3120)))))

(declare-fun b!1352573 () Bool)

(declare-fun res!897988 () Bool)

(assert (=> b!1352573 (=> (not res!897988) (not e!768859))))

(assert (=> b!1352573 (= res!897988 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45065 a!3742))))))

(declare-fun b!1352574 () Bool)

(assert (=> b!1352574 (= e!768858 false)))

(declare-fun lt!597553 () Bool)

(assert (=> b!1352574 (= lt!597553 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352575 () Bool)

(declare-fun Unit!44308 () Unit!44306)

(assert (=> b!1352575 (= e!768856 Unit!44308)))

(declare-fun b!1352576 () Bool)

(declare-fun res!897992 () Bool)

(assert (=> b!1352576 (=> (not res!897992) (not e!768859))))

(assert (=> b!1352576 (= res!897992 (not (contains!9300 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114036 res!897984) b!1352571))

(assert (= (and b!1352571 res!897989) b!1352576))

(assert (= (and b!1352576 res!897992) b!1352565))

(assert (= (and b!1352565 res!897987) b!1352567))

(assert (= (and b!1352567 res!897990) b!1352568))

(assert (= (and b!1352568 res!897986) b!1352573))

(assert (= (and b!1352573 res!897988) b!1352566))

(assert (= (and b!1352566 res!897985) b!1352570))

(assert (= (and b!1352570 res!897991) b!1352572))

(assert (= (and b!1352572 c!126733) b!1352569))

(assert (= (and b!1352572 (not c!126733)) b!1352575))

(assert (= (and b!1352572 res!897993) b!1352574))

(declare-fun m!1239369 () Bool)

(assert (=> b!1352576 m!1239369))

(declare-fun m!1239371 () Bool)

(assert (=> b!1352571 m!1239371))

(declare-fun m!1239373 () Bool)

(assert (=> b!1352574 m!1239373))

(declare-fun m!1239375 () Bool)

(assert (=> b!1352569 m!1239375))

(declare-fun m!1239377 () Bool)

(assert (=> b!1352569 m!1239377))

(declare-fun m!1239379 () Bool)

(assert (=> b!1352569 m!1239379))

(declare-fun m!1239381 () Bool)

(assert (=> b!1352569 m!1239381))

(assert (=> b!1352569 m!1239373))

(assert (=> b!1352569 m!1239377))

(assert (=> b!1352569 m!1239379))

(declare-fun m!1239383 () Bool)

(assert (=> b!1352569 m!1239383))

(declare-fun m!1239385 () Bool)

(assert (=> start!114036 m!1239385))

(assert (=> b!1352572 m!1239377))

(assert (=> b!1352572 m!1239377))

(declare-fun m!1239387 () Bool)

(assert (=> b!1352572 m!1239387))

(declare-fun m!1239389 () Bool)

(assert (=> b!1352565 m!1239389))

(declare-fun m!1239391 () Bool)

(assert (=> b!1352568 m!1239391))

(declare-fun m!1239393 () Bool)

(assert (=> b!1352566 m!1239393))

(declare-fun m!1239395 () Bool)

(assert (=> b!1352567 m!1239395))

(push 1)

(assert (not b!1352571))

(assert (not b!1352566))

