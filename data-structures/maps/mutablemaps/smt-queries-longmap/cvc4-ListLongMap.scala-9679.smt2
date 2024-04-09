; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114252 () Bool)

(assert start!114252)

(declare-fun b!1356712 () Bool)

(declare-fun res!901591 () Bool)

(declare-fun e!770163 () Bool)

(assert (=> b!1356712 (=> (not res!901591) (not e!770163))))

(declare-datatypes ((List!31843 0))(
  ( (Nil!31840) (Cons!31839 (h!33048 (_ BitVec 64)) (t!46508 List!31843)) )
))
(declare-fun acc!759 () List!31843)

(declare-fun contains!9408 (List!31843 (_ BitVec 64)) Bool)

(assert (=> b!1356712 (= res!901591 (not (contains!9408 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356713 () Bool)

(declare-fun res!901592 () Bool)

(assert (=> b!1356713 (=> (not res!901592) (not e!770163))))

(declare-datatypes ((array!92357 0))(
  ( (array!92358 (arr!44622 (Array (_ BitVec 32) (_ BitVec 64))) (size!45173 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92357)

(declare-fun arrayNoDuplicates!0 (array!92357 (_ BitVec 32) List!31843) Bool)

(assert (=> b!1356713 (= res!901592 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31840))))

(declare-fun b!1356714 () Bool)

(declare-fun res!901590 () Bool)

(assert (=> b!1356714 (=> (not res!901590) (not e!770163))))

(declare-fun noDuplicate!2287 (List!31843) Bool)

(assert (=> b!1356714 (= res!901590 (noDuplicate!2287 acc!759))))

(declare-fun res!901589 () Bool)

(assert (=> start!114252 (=> (not res!901589) (not e!770163))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114252 (= res!901589 (and (bvslt (size!45173 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45173 a!3742))))))

(assert (=> start!114252 e!770163))

(declare-fun array_inv!33567 (array!92357) Bool)

(assert (=> start!114252 (array_inv!33567 a!3742)))

(assert (=> start!114252 true))

(declare-fun b!1356715 () Bool)

(declare-fun res!901593 () Bool)

(assert (=> b!1356715 (=> (not res!901593) (not e!770163))))

(assert (=> b!1356715 (= res!901593 (not (contains!9408 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356716 () Bool)

(assert (=> b!1356716 (= e!770163 false)))

(declare-fun lt!599021 () Bool)

(assert (=> b!1356716 (= lt!599021 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!114252 res!901589) b!1356714))

(assert (= (and b!1356714 res!901590) b!1356715))

(assert (= (and b!1356715 res!901593) b!1356712))

(assert (= (and b!1356712 res!901591) b!1356713))

(assert (= (and b!1356713 res!901592) b!1356716))

(declare-fun m!1242661 () Bool)

(assert (=> b!1356715 m!1242661))

(declare-fun m!1242663 () Bool)

(assert (=> b!1356716 m!1242663))

(declare-fun m!1242665 () Bool)

(assert (=> start!114252 m!1242665))

(declare-fun m!1242667 () Bool)

(assert (=> b!1356714 m!1242667))

(declare-fun m!1242669 () Bool)

(assert (=> b!1356713 m!1242669))

(declare-fun m!1242671 () Bool)

(assert (=> b!1356712 m!1242671))

(push 1)

(assert (not b!1356714))

(assert (not b!1356715))

(assert (not start!114252))

(assert (not b!1356716))

(assert (not b!1356712))

(assert (not b!1356713))

(check-sat)

