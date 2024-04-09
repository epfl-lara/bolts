; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113930 () Bool)

(assert start!113930)

(declare-fun b!1350500 () Bool)

(declare-fun e!768306 () Bool)

(assert (=> b!1350500 (= e!768306 false)))

(declare-fun lt!596936 () Bool)

(declare-datatypes ((array!92035 0))(
  ( (array!92036 (arr!44461 (Array (_ BitVec 32) (_ BitVec 64))) (size!45012 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92035)

(declare-datatypes ((List!31682 0))(
  ( (Nil!31679) (Cons!31678 (h!32887 (_ BitVec 64)) (t!46347 List!31682)) )
))
(declare-fun arrayNoDuplicates!0 (array!92035 (_ BitVec 32) List!31682) Bool)

(assert (=> b!1350500 (= lt!596936 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31679))))

(declare-fun b!1350497 () Bool)

(declare-fun res!896078 () Bool)

(assert (=> b!1350497 (=> (not res!896078) (not e!768306))))

(declare-fun acc!759 () List!31682)

(declare-fun noDuplicate!2126 (List!31682) Bool)

(assert (=> b!1350497 (= res!896078 (noDuplicate!2126 acc!759))))

(declare-fun b!1350498 () Bool)

(declare-fun res!896077 () Bool)

(assert (=> b!1350498 (=> (not res!896077) (not e!768306))))

(declare-fun contains!9247 (List!31682 (_ BitVec 64)) Bool)

(assert (=> b!1350498 (= res!896077 (not (contains!9247 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350499 () Bool)

(declare-fun res!896079 () Bool)

(assert (=> b!1350499 (=> (not res!896079) (not e!768306))))

(assert (=> b!1350499 (= res!896079 (not (contains!9247 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896076 () Bool)

(assert (=> start!113930 (=> (not res!896076) (not e!768306))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113930 (= res!896076 (and (bvslt (size!45012 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45012 a!3742))))))

(assert (=> start!113930 e!768306))

(declare-fun array_inv!33406 (array!92035) Bool)

(assert (=> start!113930 (array_inv!33406 a!3742)))

(assert (=> start!113930 true))

(assert (= (and start!113930 res!896076) b!1350497))

(assert (= (and b!1350497 res!896078) b!1350498))

(assert (= (and b!1350498 res!896077) b!1350499))

(assert (= (and b!1350499 res!896079) b!1350500))

(declare-fun m!1237747 () Bool)

(assert (=> b!1350500 m!1237747))

(declare-fun m!1237749 () Bool)

(assert (=> b!1350498 m!1237749))

(declare-fun m!1237751 () Bool)

(assert (=> b!1350497 m!1237751))

(declare-fun m!1237753 () Bool)

(assert (=> start!113930 m!1237753))

(declare-fun m!1237755 () Bool)

(assert (=> b!1350499 m!1237755))

(push 1)

(assert (not b!1350498))

(assert (not b!1350497))

(assert (not b!1350499))

(assert (not start!113930))

(assert (not b!1350500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

