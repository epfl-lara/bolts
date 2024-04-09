; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114230 () Bool)

(assert start!114230)

(declare-fun res!901400 () Bool)

(declare-fun e!770097 () Bool)

(assert (=> start!114230 (=> (not res!901400) (not e!770097))))

(declare-datatypes ((array!92335 0))(
  ( (array!92336 (arr!44611 (Array (_ BitVec 32) (_ BitVec 64))) (size!45162 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92335)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114230 (= res!901400 (and (bvslt (size!45162 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45162 a!3742))))))

(assert (=> start!114230 e!770097))

(declare-fun array_inv!33556 (array!92335) Bool)

(assert (=> start!114230 (array_inv!33556 a!3742)))

(assert (=> start!114230 true))

(declare-fun b!1356520 () Bool)

(declare-fun res!901399 () Bool)

(assert (=> b!1356520 (=> (not res!901399) (not e!770097))))

(declare-datatypes ((List!31832 0))(
  ( (Nil!31829) (Cons!31828 (h!33037 (_ BitVec 64)) (t!46497 List!31832)) )
))
(declare-fun arrayNoDuplicates!0 (array!92335 (_ BitVec 32) List!31832) Bool)

(assert (=> b!1356520 (= res!901399 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31829))))

(declare-fun b!1356521 () Bool)

(assert (=> b!1356521 (= e!770097 false)))

(declare-fun lt!598997 () Bool)

(declare-fun acc!759 () List!31832)

(assert (=> b!1356521 (= lt!598997 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356522 () Bool)

(declare-fun res!901401 () Bool)

(assert (=> b!1356522 (=> (not res!901401) (not e!770097))))

(declare-fun contains!9397 (List!31832 (_ BitVec 64)) Bool)

(assert (=> b!1356522 (= res!901401 (not (contains!9397 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356523 () Bool)

(declare-fun res!901398 () Bool)

(assert (=> b!1356523 (=> (not res!901398) (not e!770097))))

(assert (=> b!1356523 (= res!901398 (not (contains!9397 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356524 () Bool)

(declare-fun res!901397 () Bool)

(assert (=> b!1356524 (=> (not res!901397) (not e!770097))))

(declare-fun noDuplicate!2276 (List!31832) Bool)

(assert (=> b!1356524 (= res!901397 (noDuplicate!2276 acc!759))))

(assert (= (and start!114230 res!901400) b!1356524))

(assert (= (and b!1356524 res!901397) b!1356522))

(assert (= (and b!1356522 res!901401) b!1356523))

(assert (= (and b!1356523 res!901398) b!1356520))

(assert (= (and b!1356520 res!901399) b!1356521))

(declare-fun m!1242523 () Bool)

(assert (=> start!114230 m!1242523))

(declare-fun m!1242525 () Bool)

(assert (=> b!1356522 m!1242525))

(declare-fun m!1242527 () Bool)

(assert (=> b!1356521 m!1242527))

(declare-fun m!1242529 () Bool)

(assert (=> b!1356524 m!1242529))

(declare-fun m!1242531 () Bool)

(assert (=> b!1356523 m!1242531))

(declare-fun m!1242533 () Bool)

(assert (=> b!1356520 m!1242533))

(push 1)

(assert (not b!1356523))

(assert (not b!1356522))

(assert (not b!1356520))

(assert (not b!1356521))

(assert (not start!114230))

(assert (not b!1356524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

