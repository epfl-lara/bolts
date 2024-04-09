; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113858 () Bool)

(assert start!113858)

(declare-fun res!895715 () Bool)

(declare-fun e!768081 () Bool)

(assert (=> start!113858 (=> (not res!895715) (not e!768081))))

(declare-datatypes ((array!91993 0))(
  ( (array!91994 (arr!44443 (Array (_ BitVec 32) (_ BitVec 64))) (size!44994 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91993)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113858 (= res!895715 (and (bvslt (size!44994 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44994 a!3742))))))

(assert (=> start!113858 e!768081))

(declare-fun array_inv!33388 (array!91993) Bool)

(assert (=> start!113858 (array_inv!33388 a!3742)))

(assert (=> start!113858 true))

(declare-fun b!1350135 () Bool)

(declare-fun res!895716 () Bool)

(assert (=> b!1350135 (=> (not res!895716) (not e!768081))))

(declare-datatypes ((List!31664 0))(
  ( (Nil!31661) (Cons!31660 (h!32869 (_ BitVec 64)) (t!46329 List!31664)) )
))
(declare-fun acc!759 () List!31664)

(declare-fun noDuplicate!2108 (List!31664) Bool)

(assert (=> b!1350135 (= res!895716 (noDuplicate!2108 acc!759))))

(declare-fun b!1350136 () Bool)

(declare-fun res!895714 () Bool)

(assert (=> b!1350136 (=> (not res!895714) (not e!768081))))

(declare-fun contains!9229 (List!31664 (_ BitVec 64)) Bool)

(assert (=> b!1350136 (= res!895714 (not (contains!9229 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350137 () Bool)

(assert (=> b!1350137 (= e!768081 false)))

(declare-fun lt!596879 () Bool)

(assert (=> b!1350137 (= lt!596879 (contains!9229 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!113858 res!895715) b!1350135))

(assert (= (and b!1350135 res!895716) b!1350136))

(assert (= (and b!1350136 res!895714) b!1350137))

(declare-fun m!1237423 () Bool)

(assert (=> start!113858 m!1237423))

(declare-fun m!1237425 () Bool)

(assert (=> b!1350135 m!1237425))

(declare-fun m!1237427 () Bool)

(assert (=> b!1350136 m!1237427))

(declare-fun m!1237429 () Bool)

(assert (=> b!1350137 m!1237429))

(push 1)

(assert (not b!1350135))

(assert (not b!1350136))

(assert (not start!113858))

(assert (not b!1350137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

