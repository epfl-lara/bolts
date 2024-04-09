; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115184 () Bool)

(assert start!115184)

(declare-fun b!1364074 () Bool)

(declare-fun res!907879 () Bool)

(declare-fun e!773578 () Bool)

(assert (=> b!1364074 (=> (not res!907879) (not e!773578))))

(declare-datatypes ((array!92677 0))(
  ( (array!92678 (arr!44764 (Array (_ BitVec 32) (_ BitVec 64))) (size!45315 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92677)

(declare-datatypes ((List!31985 0))(
  ( (Nil!31982) (Cons!31981 (h!33190 (_ BitVec 64)) (t!46686 List!31985)) )
))
(declare-fun arrayNoDuplicates!0 (array!92677 (_ BitVec 32) List!31985) Bool)

(assert (=> b!1364074 (= res!907879 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31982))))

(declare-fun b!1364075 () Bool)

(assert (=> b!1364075 (= e!773578 false)))

(declare-fun acc!759 () List!31985)

(declare-fun lt!600950 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1364075 (= lt!600950 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1364076 () Bool)

(declare-fun res!907877 () Bool)

(assert (=> b!1364076 (=> (not res!907877) (not e!773578))))

(declare-fun contains!9550 (List!31985 (_ BitVec 64)) Bool)

(assert (=> b!1364076 (= res!907877 (not (contains!9550 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907880 () Bool)

(assert (=> start!115184 (=> (not res!907880) (not e!773578))))

(assert (=> start!115184 (= res!907880 (and (bvslt (size!45315 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45315 a!3742))))))

(assert (=> start!115184 e!773578))

(declare-fun array_inv!33709 (array!92677) Bool)

(assert (=> start!115184 (array_inv!33709 a!3742)))

(assert (=> start!115184 true))

(declare-fun b!1364077 () Bool)

(declare-fun res!907878 () Bool)

(assert (=> b!1364077 (=> (not res!907878) (not e!773578))))

(declare-fun noDuplicate!2429 (List!31985) Bool)

(assert (=> b!1364077 (= res!907878 (noDuplicate!2429 acc!759))))

(declare-fun b!1364078 () Bool)

(declare-fun res!907881 () Bool)

(assert (=> b!1364078 (=> (not res!907881) (not e!773578))))

(assert (=> b!1364078 (= res!907881 (not (contains!9550 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115184 res!907880) b!1364077))

(assert (= (and b!1364077 res!907878) b!1364078))

(assert (= (and b!1364078 res!907881) b!1364076))

(assert (= (and b!1364076 res!907877) b!1364074))

(assert (= (and b!1364074 res!907879) b!1364075))

(declare-fun m!1248829 () Bool)

(assert (=> b!1364074 m!1248829))

(declare-fun m!1248831 () Bool)

(assert (=> start!115184 m!1248831))

(declare-fun m!1248833 () Bool)

(assert (=> b!1364076 m!1248833))

(declare-fun m!1248835 () Bool)

(assert (=> b!1364075 m!1248835))

(declare-fun m!1248837 () Bool)

(assert (=> b!1364078 m!1248837))

(declare-fun m!1248839 () Bool)

(assert (=> b!1364077 m!1248839))

(push 1)

(assert (not start!115184))

(assert (not b!1364078))

(assert (not b!1364074))

(assert (not b!1364075))

(assert (not b!1364076))

(assert (not b!1364077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

