; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113854 () Bool)

(assert start!113854)

(declare-fun b!1350113 () Bool)

(declare-fun res!895694 () Bool)

(declare-fun e!768069 () Bool)

(assert (=> b!1350113 (=> (not res!895694) (not e!768069))))

(declare-datatypes ((List!31662 0))(
  ( (Nil!31659) (Cons!31658 (h!32867 (_ BitVec 64)) (t!46327 List!31662)) )
))
(declare-fun acc!759 () List!31662)

(declare-fun noDuplicate!2106 (List!31662) Bool)

(assert (=> b!1350113 (= res!895694 (noDuplicate!2106 acc!759))))

(declare-fun b!1350115 () Bool)

(declare-fun res!895695 () Bool)

(assert (=> b!1350115 (=> (not res!895695) (not e!768069))))

(declare-fun contains!9227 (List!31662 (_ BitVec 64)) Bool)

(assert (=> b!1350115 (= res!895695 (not (contains!9227 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!895693 () Bool)

(assert (=> start!113854 (=> (not res!895693) (not e!768069))))

(declare-datatypes ((array!91989 0))(
  ( (array!91990 (arr!44441 (Array (_ BitVec 32) (_ BitVec 64))) (size!44992 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91989)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113854 (= res!895693 (and (bvslt (size!44992 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44992 a!3742))))))

(assert (=> start!113854 e!768069))

(declare-fun array_inv!33386 (array!91989) Bool)

(assert (=> start!113854 (array_inv!33386 a!3742)))

(assert (=> start!113854 true))

(declare-fun b!1350114 () Bool)

(declare-fun res!895692 () Bool)

(assert (=> b!1350114 (=> (not res!895692) (not e!768069))))

(assert (=> b!1350114 (= res!895692 (not (contains!9227 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350116 () Bool)

(assert (=> b!1350116 (= e!768069 (bvsgt #b00000000000000000000000000000000 (size!44992 a!3742)))))

(assert (= (and start!113854 res!895693) b!1350113))

(assert (= (and b!1350113 res!895694) b!1350114))

(assert (= (and b!1350114 res!895692) b!1350115))

(assert (= (and b!1350115 res!895695) b!1350116))

(declare-fun m!1237407 () Bool)

(assert (=> b!1350113 m!1237407))

(declare-fun m!1237409 () Bool)

(assert (=> b!1350115 m!1237409))

(declare-fun m!1237411 () Bool)

(assert (=> start!113854 m!1237411))

(declare-fun m!1237413 () Bool)

(assert (=> b!1350114 m!1237413))

(check-sat (not start!113854) (not b!1350113) (not b!1350114) (not b!1350115))
(check-sat)
