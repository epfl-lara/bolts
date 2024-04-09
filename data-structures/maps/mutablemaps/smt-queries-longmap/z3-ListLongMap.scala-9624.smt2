; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113920 () Bool)

(assert start!113920)

(declare-fun b!1350439 () Bool)

(declare-fun res!896016 () Bool)

(declare-fun e!768276 () Bool)

(assert (=> b!1350439 (=> (not res!896016) (not e!768276))))

(declare-datatypes ((List!31677 0))(
  ( (Nil!31674) (Cons!31673 (h!32882 (_ BitVec 64)) (t!46342 List!31677)) )
))
(declare-fun acc!759 () List!31677)

(declare-fun contains!9242 (List!31677 (_ BitVec 64)) Bool)

(assert (=> b!1350439 (= res!896016 (not (contains!9242 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896019 () Bool)

(assert (=> start!113920 (=> (not res!896019) (not e!768276))))

(declare-datatypes ((array!92025 0))(
  ( (array!92026 (arr!44456 (Array (_ BitVec 32) (_ BitVec 64))) (size!45007 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92025)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113920 (= res!896019 (and (bvslt (size!45007 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45007 a!3742))))))

(assert (=> start!113920 e!768276))

(declare-fun array_inv!33401 (array!92025) Bool)

(assert (=> start!113920 (array_inv!33401 a!3742)))

(assert (=> start!113920 true))

(declare-fun b!1350438 () Bool)

(declare-fun res!896018 () Bool)

(assert (=> b!1350438 (=> (not res!896018) (not e!768276))))

(assert (=> b!1350438 (= res!896018 (not (contains!9242 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350437 () Bool)

(declare-fun res!896017 () Bool)

(assert (=> b!1350437 (=> (not res!896017) (not e!768276))))

(declare-fun noDuplicate!2121 (List!31677) Bool)

(assert (=> b!1350437 (= res!896017 (noDuplicate!2121 acc!759))))

(declare-fun b!1350440 () Bool)

(assert (=> b!1350440 (= e!768276 false)))

(declare-fun lt!596921 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92025 (_ BitVec 32) List!31677) Bool)

(assert (=> b!1350440 (= lt!596921 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31674))))

(assert (= (and start!113920 res!896019) b!1350437))

(assert (= (and b!1350437 res!896017) b!1350438))

(assert (= (and b!1350438 res!896018) b!1350439))

(assert (= (and b!1350439 res!896016) b!1350440))

(declare-fun m!1237697 () Bool)

(assert (=> b!1350437 m!1237697))

(declare-fun m!1237699 () Bool)

(assert (=> b!1350439 m!1237699))

(declare-fun m!1237701 () Bool)

(assert (=> b!1350438 m!1237701))

(declare-fun m!1237703 () Bool)

(assert (=> start!113920 m!1237703))

(declare-fun m!1237705 () Bool)

(assert (=> b!1350440 m!1237705))

(check-sat (not start!113920) (not b!1350439) (not b!1350438) (not b!1350437) (not b!1350440))
(check-sat)
