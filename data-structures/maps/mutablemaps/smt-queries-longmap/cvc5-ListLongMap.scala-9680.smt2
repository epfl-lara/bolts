; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114254 () Bool)

(assert start!114254)

(declare-fun b!1356737 () Bool)

(declare-fun res!901614 () Bool)

(declare-fun e!770169 () Bool)

(assert (=> b!1356737 (=> (not res!901614) (not e!770169))))

(declare-datatypes ((array!92359 0))(
  ( (array!92360 (arr!44623 (Array (_ BitVec 32) (_ BitVec 64))) (size!45174 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92359)

(declare-datatypes ((List!31844 0))(
  ( (Nil!31841) (Cons!31840 (h!33049 (_ BitVec 64)) (t!46509 List!31844)) )
))
(declare-fun arrayNoDuplicates!0 (array!92359 (_ BitVec 32) List!31844) Bool)

(assert (=> b!1356737 (= res!901614 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31841))))

(declare-fun b!1356738 () Bool)

(declare-fun res!901620 () Bool)

(assert (=> b!1356738 (=> (not res!901620) (not e!770169))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356738 (= res!901620 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45174 a!3742))))))

(declare-fun b!1356739 () Bool)

(declare-fun res!901616 () Bool)

(assert (=> b!1356739 (=> (not res!901616) (not e!770169))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356739 (= res!901616 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45174 a!3742)))))

(declare-fun b!1356740 () Bool)

(declare-fun res!901619 () Bool)

(assert (=> b!1356740 (=> (not res!901619) (not e!770169))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356740 (= res!901619 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356741 () Bool)

(assert (=> b!1356741 (= e!770169 (not true))))

(declare-fun acc!759 () List!31844)

(declare-fun subseq!800 (List!31844 List!31844) Bool)

(assert (=> b!1356741 (subseq!800 acc!759 acc!759)))

(declare-datatypes ((Unit!44579 0))(
  ( (Unit!44580) )
))
(declare-fun lt!599024 () Unit!44579)

(declare-fun lemmaListSubSeqRefl!0 (List!31844) Unit!44579)

(assert (=> b!1356741 (= lt!599024 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1356742 () Bool)

(declare-fun res!901617 () Bool)

(assert (=> b!1356742 (=> (not res!901617) (not e!770169))))

(declare-fun noDuplicate!2288 (List!31844) Bool)

(assert (=> b!1356742 (= res!901617 (noDuplicate!2288 acc!759))))

(declare-fun b!1356743 () Bool)

(declare-fun res!901622 () Bool)

(assert (=> b!1356743 (=> (not res!901622) (not e!770169))))

(declare-fun contains!9409 (List!31844 (_ BitVec 64)) Bool)

(assert (=> b!1356743 (= res!901622 (not (contains!9409 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!901615 () Bool)

(assert (=> start!114254 (=> (not res!901615) (not e!770169))))

(assert (=> start!114254 (= res!901615 (and (bvslt (size!45174 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45174 a!3742))))))

(assert (=> start!114254 e!770169))

(assert (=> start!114254 true))

(declare-fun array_inv!33568 (array!92359) Bool)

(assert (=> start!114254 (array_inv!33568 a!3742)))

(declare-fun b!1356744 () Bool)

(declare-fun res!901618 () Bool)

(assert (=> b!1356744 (=> (not res!901618) (not e!770169))))

(assert (=> b!1356744 (= res!901618 (validKeyInArray!0 (select (arr!44623 a!3742) from!3120)))))

(declare-fun b!1356745 () Bool)

(declare-fun res!901623 () Bool)

(assert (=> b!1356745 (=> (not res!901623) (not e!770169))))

(assert (=> b!1356745 (= res!901623 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356746 () Bool)

(declare-fun res!901621 () Bool)

(assert (=> b!1356746 (=> (not res!901621) (not e!770169))))

(assert (=> b!1356746 (= res!901621 (not (contains!9409 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114254 res!901615) b!1356742))

(assert (= (and b!1356742 res!901617) b!1356743))

(assert (= (and b!1356743 res!901622) b!1356746))

(assert (= (and b!1356746 res!901621) b!1356737))

(assert (= (and b!1356737 res!901614) b!1356745))

(assert (= (and b!1356745 res!901623) b!1356738))

(assert (= (and b!1356738 res!901620) b!1356740))

(assert (= (and b!1356740 res!901619) b!1356739))

(assert (= (and b!1356739 res!901616) b!1356744))

(assert (= (and b!1356744 res!901618) b!1356741))

(declare-fun m!1242673 () Bool)

(assert (=> b!1356746 m!1242673))

(declare-fun m!1242675 () Bool)

(assert (=> b!1356745 m!1242675))

(declare-fun m!1242677 () Bool)

(assert (=> start!114254 m!1242677))

(declare-fun m!1242679 () Bool)

(assert (=> b!1356742 m!1242679))

(declare-fun m!1242681 () Bool)

(assert (=> b!1356741 m!1242681))

(declare-fun m!1242683 () Bool)

(assert (=> b!1356741 m!1242683))

(declare-fun m!1242685 () Bool)

(assert (=> b!1356743 m!1242685))

(declare-fun m!1242687 () Bool)

(assert (=> b!1356740 m!1242687))

(declare-fun m!1242689 () Bool)

(assert (=> b!1356744 m!1242689))

(assert (=> b!1356744 m!1242689))

(declare-fun m!1242691 () Bool)

(assert (=> b!1356744 m!1242691))

(declare-fun m!1242693 () Bool)

(assert (=> b!1356737 m!1242693))

(push 1)

(assert (not b!1356737))

(assert (not b!1356746))

(assert (not b!1356743))

(assert (not b!1356745))

(assert (not b!1356744))

(assert (not b!1356740))

(assert (not b!1356741))

(assert (not start!114254))

(assert (not b!1356742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

