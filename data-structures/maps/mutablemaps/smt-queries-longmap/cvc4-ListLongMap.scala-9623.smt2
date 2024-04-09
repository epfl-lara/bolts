; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113916 () Bool)

(assert start!113916)

(declare-fun b!1350412 () Bool)

(declare-fun res!895994 () Bool)

(declare-fun e!768265 () Bool)

(assert (=> b!1350412 (=> (not res!895994) (not e!768265))))

(declare-datatypes ((array!92021 0))(
  ( (array!92022 (arr!44454 (Array (_ BitVec 32) (_ BitVec 64))) (size!45005 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92021)

(declare-datatypes ((List!31675 0))(
  ( (Nil!31672) (Cons!31671 (h!32880 (_ BitVec 64)) (t!46340 List!31675)) )
))
(declare-fun arrayNoDuplicates!0 (array!92021 (_ BitVec 32) List!31675) Bool)

(assert (=> b!1350412 (= res!895994 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31672))))

(declare-fun res!895993 () Bool)

(assert (=> start!113916 (=> (not res!895993) (not e!768265))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113916 (= res!895993 (and (bvslt (size!45005 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45005 a!3742))))))

(assert (=> start!113916 e!768265))

(declare-fun array_inv!33399 (array!92021) Bool)

(assert (=> start!113916 (array_inv!33399 a!3742)))

(assert (=> start!113916 true))

(declare-fun b!1350413 () Bool)

(declare-fun res!895992 () Bool)

(assert (=> b!1350413 (=> (not res!895992) (not e!768265))))

(declare-fun acc!759 () List!31675)

(declare-fun noDuplicate!2119 (List!31675) Bool)

(assert (=> b!1350413 (= res!895992 (noDuplicate!2119 acc!759))))

(declare-fun b!1350414 () Bool)

(declare-fun res!895991 () Bool)

(assert (=> b!1350414 (=> (not res!895991) (not e!768265))))

(declare-fun contains!9240 (List!31675 (_ BitVec 64)) Bool)

(assert (=> b!1350414 (= res!895991 (not (contains!9240 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350415 () Bool)

(assert (=> b!1350415 (= e!768265 (bvsgt from!3120 (size!45005 a!3742)))))

(declare-fun b!1350416 () Bool)

(declare-fun res!895995 () Bool)

(assert (=> b!1350416 (=> (not res!895995) (not e!768265))))

(assert (=> b!1350416 (= res!895995 (not (contains!9240 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113916 res!895993) b!1350413))

(assert (= (and b!1350413 res!895992) b!1350414))

(assert (= (and b!1350414 res!895991) b!1350416))

(assert (= (and b!1350416 res!895995) b!1350412))

(assert (= (and b!1350412 res!895994) b!1350415))

(declare-fun m!1237677 () Bool)

(assert (=> b!1350412 m!1237677))

(declare-fun m!1237679 () Bool)

(assert (=> start!113916 m!1237679))

(declare-fun m!1237681 () Bool)

(assert (=> b!1350413 m!1237681))

(declare-fun m!1237683 () Bool)

(assert (=> b!1350414 m!1237683))

(declare-fun m!1237685 () Bool)

(assert (=> b!1350416 m!1237685))

(push 1)

(assert (not b!1350416))

(assert (not b!1350412))

(assert (not b!1350414))

(assert (not b!1350413))

(assert (not start!113916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

