; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113914 () Bool)

(assert start!113914)

(declare-fun b!1350397 () Bool)

(declare-fun res!895977 () Bool)

(declare-fun e!768259 () Bool)

(assert (=> b!1350397 (=> (not res!895977) (not e!768259))))

(declare-datatypes ((List!31674 0))(
  ( (Nil!31671) (Cons!31670 (h!32879 (_ BitVec 64)) (t!46339 List!31674)) )
))
(declare-fun acc!759 () List!31674)

(declare-fun contains!9239 (List!31674 (_ BitVec 64)) Bool)

(assert (=> b!1350397 (= res!895977 (not (contains!9239 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350398 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92019 0))(
  ( (array!92020 (arr!44453 (Array (_ BitVec 32) (_ BitVec 64))) (size!45004 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92019)

(assert (=> b!1350398 (= e!768259 (bvsgt from!3120 (size!45004 a!3742)))))

(declare-fun res!895976 () Bool)

(assert (=> start!113914 (=> (not res!895976) (not e!768259))))

(assert (=> start!113914 (= res!895976 (and (bvslt (size!45004 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45004 a!3742))))))

(assert (=> start!113914 e!768259))

(declare-fun array_inv!33398 (array!92019) Bool)

(assert (=> start!113914 (array_inv!33398 a!3742)))

(assert (=> start!113914 true))

(declare-fun b!1350399 () Bool)

(declare-fun res!895980 () Bool)

(assert (=> b!1350399 (=> (not res!895980) (not e!768259))))

(declare-fun arrayNoDuplicates!0 (array!92019 (_ BitVec 32) List!31674) Bool)

(assert (=> b!1350399 (= res!895980 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31671))))

(declare-fun b!1350400 () Bool)

(declare-fun res!895978 () Bool)

(assert (=> b!1350400 (=> (not res!895978) (not e!768259))))

(declare-fun noDuplicate!2118 (List!31674) Bool)

(assert (=> b!1350400 (= res!895978 (noDuplicate!2118 acc!759))))

(declare-fun b!1350401 () Bool)

(declare-fun res!895979 () Bool)

(assert (=> b!1350401 (=> (not res!895979) (not e!768259))))

(assert (=> b!1350401 (= res!895979 (not (contains!9239 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113914 res!895976) b!1350400))

(assert (= (and b!1350400 res!895978) b!1350397))

(assert (= (and b!1350397 res!895977) b!1350401))

(assert (= (and b!1350401 res!895979) b!1350399))

(assert (= (and b!1350399 res!895980) b!1350398))

(declare-fun m!1237667 () Bool)

(assert (=> start!113914 m!1237667))

(declare-fun m!1237669 () Bool)

(assert (=> b!1350400 m!1237669))

(declare-fun m!1237671 () Bool)

(assert (=> b!1350401 m!1237671))

(declare-fun m!1237673 () Bool)

(assert (=> b!1350397 m!1237673))

(declare-fun m!1237675 () Bool)

(assert (=> b!1350399 m!1237675))

(check-sat (not b!1350397) (not b!1350399) (not b!1350401) (not start!113914) (not b!1350400))
(check-sat)
