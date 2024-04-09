; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113860 () Bool)

(assert start!113860)

(declare-fun res!895724 () Bool)

(declare-fun e!768087 () Bool)

(assert (=> start!113860 (=> (not res!895724) (not e!768087))))

(declare-datatypes ((array!91995 0))(
  ( (array!91996 (arr!44444 (Array (_ BitVec 32) (_ BitVec 64))) (size!44995 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91995)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113860 (= res!895724 (and (bvslt (size!44995 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44995 a!3742))))))

(assert (=> start!113860 e!768087))

(declare-fun array_inv!33389 (array!91995) Bool)

(assert (=> start!113860 (array_inv!33389 a!3742)))

(assert (=> start!113860 true))

(declare-fun b!1350144 () Bool)

(declare-fun res!895725 () Bool)

(assert (=> b!1350144 (=> (not res!895725) (not e!768087))))

(declare-datatypes ((List!31665 0))(
  ( (Nil!31662) (Cons!31661 (h!32870 (_ BitVec 64)) (t!46330 List!31665)) )
))
(declare-fun acc!759 () List!31665)

(declare-fun noDuplicate!2109 (List!31665) Bool)

(assert (=> b!1350144 (= res!895725 (noDuplicate!2109 acc!759))))

(declare-fun b!1350145 () Bool)

(declare-fun res!895723 () Bool)

(assert (=> b!1350145 (=> (not res!895723) (not e!768087))))

(declare-fun contains!9230 (List!31665 (_ BitVec 64)) Bool)

(assert (=> b!1350145 (= res!895723 (not (contains!9230 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350146 () Bool)

(assert (=> b!1350146 (= e!768087 false)))

(declare-fun lt!596882 () Bool)

(assert (=> b!1350146 (= lt!596882 (contains!9230 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113860 res!895724) b!1350144))

(assert (= (and b!1350144 res!895725) b!1350145))

(assert (= (and b!1350145 res!895723) b!1350146))

(declare-fun m!1237431 () Bool)

(assert (=> start!113860 m!1237431))

(declare-fun m!1237433 () Bool)

(assert (=> b!1350144 m!1237433))

(declare-fun m!1237435 () Bool)

(assert (=> b!1350145 m!1237435))

(declare-fun m!1237437 () Bool)

(assert (=> b!1350146 m!1237437))

(check-sat (not start!113860) (not b!1350146) (not b!1350144) (not b!1350145))
(check-sat)
