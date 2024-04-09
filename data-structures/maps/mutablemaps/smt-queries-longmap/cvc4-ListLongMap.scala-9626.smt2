; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113934 () Bool)

(assert start!113934)

(declare-fun b!1350521 () Bool)

(declare-fun res!896101 () Bool)

(declare-fun e!768318 () Bool)

(assert (=> b!1350521 (=> (not res!896101) (not e!768318))))

(declare-datatypes ((List!31684 0))(
  ( (Nil!31681) (Cons!31680 (h!32889 (_ BitVec 64)) (t!46349 List!31684)) )
))
(declare-fun acc!759 () List!31684)

(declare-fun noDuplicate!2128 (List!31684) Bool)

(assert (=> b!1350521 (= res!896101 (noDuplicate!2128 acc!759))))

(declare-fun b!1350523 () Bool)

(declare-fun res!896103 () Bool)

(assert (=> b!1350523 (=> (not res!896103) (not e!768318))))

(declare-fun contains!9249 (List!31684 (_ BitVec 64)) Bool)

(assert (=> b!1350523 (= res!896103 (not (contains!9249 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350524 () Bool)

(assert (=> b!1350524 (= e!768318 false)))

(declare-fun lt!596942 () Bool)

(declare-datatypes ((array!92039 0))(
  ( (array!92040 (arr!44463 (Array (_ BitVec 32) (_ BitVec 64))) (size!45014 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92039)

(declare-fun arrayNoDuplicates!0 (array!92039 (_ BitVec 32) List!31684) Bool)

(assert (=> b!1350524 (= lt!596942 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31681))))

(declare-fun b!1350522 () Bool)

(declare-fun res!896100 () Bool)

(assert (=> b!1350522 (=> (not res!896100) (not e!768318))))

(assert (=> b!1350522 (= res!896100 (not (contains!9249 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896102 () Bool)

(assert (=> start!113934 (=> (not res!896102) (not e!768318))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113934 (= res!896102 (and (bvslt (size!45014 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45014 a!3742))))))

(assert (=> start!113934 e!768318))

(declare-fun array_inv!33408 (array!92039) Bool)

(assert (=> start!113934 (array_inv!33408 a!3742)))

(assert (=> start!113934 true))

(assert (= (and start!113934 res!896102) b!1350521))

(assert (= (and b!1350521 res!896101) b!1350522))

(assert (= (and b!1350522 res!896100) b!1350523))

(assert (= (and b!1350523 res!896103) b!1350524))

(declare-fun m!1237767 () Bool)

(assert (=> b!1350523 m!1237767))

(declare-fun m!1237769 () Bool)

(assert (=> b!1350521 m!1237769))

(declare-fun m!1237771 () Bool)

(assert (=> b!1350524 m!1237771))

(declare-fun m!1237773 () Bool)

(assert (=> b!1350522 m!1237773))

(declare-fun m!1237775 () Bool)

(assert (=> start!113934 m!1237775))

(push 1)

(assert (not start!113934))

(assert (not b!1350521))

(assert (not b!1350522))

(assert (not b!1350523))

(assert (not b!1350524))

(check-sat)

