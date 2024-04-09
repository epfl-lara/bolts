; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113918 () Bool)

(assert start!113918)

(declare-fun b!1350428 () Bool)

(declare-fun e!768270 () Bool)

(assert (=> b!1350428 (= e!768270 false)))

(declare-fun lt!596918 () Bool)

(declare-datatypes ((array!92023 0))(
  ( (array!92024 (arr!44455 (Array (_ BitVec 32) (_ BitVec 64))) (size!45006 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92023)

(declare-datatypes ((List!31676 0))(
  ( (Nil!31673) (Cons!31672 (h!32881 (_ BitVec 64)) (t!46341 List!31676)) )
))
(declare-fun arrayNoDuplicates!0 (array!92023 (_ BitVec 32) List!31676) Bool)

(assert (=> b!1350428 (= lt!596918 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31673))))

(declare-fun b!1350427 () Bool)

(declare-fun res!896006 () Bool)

(assert (=> b!1350427 (=> (not res!896006) (not e!768270))))

(declare-fun acc!759 () List!31676)

(declare-fun contains!9241 (List!31676 (_ BitVec 64)) Bool)

(assert (=> b!1350427 (= res!896006 (not (contains!9241 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!896005 () Bool)

(assert (=> start!113918 (=> (not res!896005) (not e!768270))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113918 (= res!896005 (and (bvslt (size!45006 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45006 a!3742))))))

(assert (=> start!113918 e!768270))

(declare-fun array_inv!33400 (array!92023) Bool)

(assert (=> start!113918 (array_inv!33400 a!3742)))

(assert (=> start!113918 true))

(declare-fun b!1350425 () Bool)

(declare-fun res!896004 () Bool)

(assert (=> b!1350425 (=> (not res!896004) (not e!768270))))

(declare-fun noDuplicate!2120 (List!31676) Bool)

(assert (=> b!1350425 (= res!896004 (noDuplicate!2120 acc!759))))

(declare-fun b!1350426 () Bool)

(declare-fun res!896007 () Bool)

(assert (=> b!1350426 (=> (not res!896007) (not e!768270))))

(assert (=> b!1350426 (= res!896007 (not (contains!9241 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113918 res!896005) b!1350425))

(assert (= (and b!1350425 res!896004) b!1350426))

(assert (= (and b!1350426 res!896007) b!1350427))

(assert (= (and b!1350427 res!896006) b!1350428))

(declare-fun m!1237687 () Bool)

(assert (=> start!113918 m!1237687))

(declare-fun m!1237689 () Bool)

(assert (=> b!1350425 m!1237689))

(declare-fun m!1237691 () Bool)

(assert (=> b!1350426 m!1237691))

(declare-fun m!1237693 () Bool)

(assert (=> b!1350428 m!1237693))

(declare-fun m!1237695 () Bool)

(assert (=> b!1350427 m!1237695))

(push 1)

(assert (not b!1350428))

(assert (not b!1350426))

(assert (not b!1350425))

(assert (not start!113918))

(assert (not b!1350427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

