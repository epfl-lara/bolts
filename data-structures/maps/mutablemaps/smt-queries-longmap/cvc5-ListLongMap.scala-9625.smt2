; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113924 () Bool)

(assert start!113924)

(declare-fun res!896043 () Bool)

(declare-fun e!768288 () Bool)

(assert (=> start!113924 (=> (not res!896043) (not e!768288))))

(declare-datatypes ((array!92029 0))(
  ( (array!92030 (arr!44458 (Array (_ BitVec 32) (_ BitVec 64))) (size!45009 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92029)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113924 (= res!896043 (and (bvslt (size!45009 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45009 a!3742))))))

(assert (=> start!113924 e!768288))

(declare-fun array_inv!33403 (array!92029) Bool)

(assert (=> start!113924 (array_inv!33403 a!3742)))

(assert (=> start!113924 true))

(declare-fun b!1350463 () Bool)

(declare-fun res!896041 () Bool)

(assert (=> b!1350463 (=> (not res!896041) (not e!768288))))

(declare-datatypes ((List!31679 0))(
  ( (Nil!31676) (Cons!31675 (h!32884 (_ BitVec 64)) (t!46344 List!31679)) )
))
(declare-fun acc!759 () List!31679)

(declare-fun contains!9244 (List!31679 (_ BitVec 64)) Bool)

(assert (=> b!1350463 (= res!896041 (not (contains!9244 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350464 () Bool)

(assert (=> b!1350464 (= e!768288 false)))

(declare-fun lt!596927 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92029 (_ BitVec 32) List!31679) Bool)

(assert (=> b!1350464 (= lt!596927 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31676))))

(declare-fun b!1350461 () Bool)

(declare-fun res!896040 () Bool)

(assert (=> b!1350461 (=> (not res!896040) (not e!768288))))

(declare-fun noDuplicate!2123 (List!31679) Bool)

(assert (=> b!1350461 (= res!896040 (noDuplicate!2123 acc!759))))

(declare-fun b!1350462 () Bool)

(declare-fun res!896042 () Bool)

(assert (=> b!1350462 (=> (not res!896042) (not e!768288))))

(assert (=> b!1350462 (= res!896042 (not (contains!9244 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113924 res!896043) b!1350461))

(assert (= (and b!1350461 res!896040) b!1350462))

(assert (= (and b!1350462 res!896042) b!1350463))

(assert (= (and b!1350463 res!896041) b!1350464))

(declare-fun m!1237717 () Bool)

(assert (=> b!1350464 m!1237717))

(declare-fun m!1237719 () Bool)

(assert (=> b!1350463 m!1237719))

(declare-fun m!1237721 () Bool)

(assert (=> start!113924 m!1237721))

(declare-fun m!1237723 () Bool)

(assert (=> b!1350462 m!1237723))

(declare-fun m!1237725 () Bool)

(assert (=> b!1350461 m!1237725))

(push 1)

(assert (not start!113924))

(assert (not b!1350464))

(assert (not b!1350462))

(assert (not b!1350463))

(assert (not b!1350461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

