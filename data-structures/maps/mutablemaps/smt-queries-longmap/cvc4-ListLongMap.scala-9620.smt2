; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113862 () Bool)

(assert start!113862)

(declare-fun res!895732 () Bool)

(declare-fun e!768094 () Bool)

(assert (=> start!113862 (=> (not res!895732) (not e!768094))))

(declare-datatypes ((array!91997 0))(
  ( (array!91998 (arr!44445 (Array (_ BitVec 32) (_ BitVec 64))) (size!44996 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91997)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113862 (= res!895732 (and (bvslt (size!44996 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44996 a!3742))))))

(assert (=> start!113862 e!768094))

(declare-fun array_inv!33390 (array!91997) Bool)

(assert (=> start!113862 (array_inv!33390 a!3742)))

(assert (=> start!113862 true))

(declare-fun b!1350153 () Bool)

(declare-fun res!895734 () Bool)

(assert (=> b!1350153 (=> (not res!895734) (not e!768094))))

(declare-datatypes ((List!31666 0))(
  ( (Nil!31663) (Cons!31662 (h!32871 (_ BitVec 64)) (t!46331 List!31666)) )
))
(declare-fun acc!759 () List!31666)

(declare-fun noDuplicate!2110 (List!31666) Bool)

(assert (=> b!1350153 (= res!895734 (noDuplicate!2110 acc!759))))

(declare-fun b!1350154 () Bool)

(declare-fun res!895733 () Bool)

(assert (=> b!1350154 (=> (not res!895733) (not e!768094))))

(declare-fun contains!9231 (List!31666 (_ BitVec 64)) Bool)

(assert (=> b!1350154 (= res!895733 (not (contains!9231 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350155 () Bool)

(assert (=> b!1350155 (= e!768094 false)))

(declare-fun lt!596885 () Bool)

(assert (=> b!1350155 (= lt!596885 (contains!9231 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113862 res!895732) b!1350153))

(assert (= (and b!1350153 res!895734) b!1350154))

(assert (= (and b!1350154 res!895733) b!1350155))

(declare-fun m!1237439 () Bool)

(assert (=> start!113862 m!1237439))

(declare-fun m!1237441 () Bool)

(assert (=> b!1350153 m!1237441))

(declare-fun m!1237443 () Bool)

(assert (=> b!1350154 m!1237443))

(declare-fun m!1237445 () Bool)

(assert (=> b!1350155 m!1237445))

(push 1)

(assert (not b!1350153))

(assert (not start!113862))

(assert (not b!1350155))

(assert (not b!1350154))

(check-sat)

