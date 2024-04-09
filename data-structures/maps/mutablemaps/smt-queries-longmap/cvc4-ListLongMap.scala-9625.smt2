; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113928 () Bool)

(assert start!113928)

(declare-fun b!1350485 () Bool)

(declare-fun res!896066 () Bool)

(declare-fun e!768301 () Bool)

(assert (=> b!1350485 (=> (not res!896066) (not e!768301))))

(declare-datatypes ((List!31681 0))(
  ( (Nil!31678) (Cons!31677 (h!32886 (_ BitVec 64)) (t!46346 List!31681)) )
))
(declare-fun acc!759 () List!31681)

(declare-fun noDuplicate!2125 (List!31681) Bool)

(assert (=> b!1350485 (= res!896066 (noDuplicate!2125 acc!759))))

(declare-fun res!896067 () Bool)

(assert (=> start!113928 (=> (not res!896067) (not e!768301))))

(declare-datatypes ((array!92033 0))(
  ( (array!92034 (arr!44460 (Array (_ BitVec 32) (_ BitVec 64))) (size!45011 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92033)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113928 (= res!896067 (and (bvslt (size!45011 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45011 a!3742))))))

(assert (=> start!113928 e!768301))

(declare-fun array_inv!33405 (array!92033) Bool)

(assert (=> start!113928 (array_inv!33405 a!3742)))

(assert (=> start!113928 true))

(declare-fun b!1350486 () Bool)

(declare-fun res!896064 () Bool)

(assert (=> b!1350486 (=> (not res!896064) (not e!768301))))

(declare-fun contains!9246 (List!31681 (_ BitVec 64)) Bool)

(assert (=> b!1350486 (= res!896064 (not (contains!9246 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350487 () Bool)

(declare-fun res!896065 () Bool)

(assert (=> b!1350487 (=> (not res!896065) (not e!768301))))

(assert (=> b!1350487 (= res!896065 (not (contains!9246 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350488 () Bool)

(assert (=> b!1350488 (= e!768301 false)))

(declare-fun lt!596933 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92033 (_ BitVec 32) List!31681) Bool)

(assert (=> b!1350488 (= lt!596933 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31678))))

(assert (= (and start!113928 res!896067) b!1350485))

(assert (= (and b!1350485 res!896066) b!1350486))

(assert (= (and b!1350486 res!896064) b!1350487))

(assert (= (and b!1350487 res!896065) b!1350488))

(declare-fun m!1237737 () Bool)

(assert (=> b!1350488 m!1237737))

(declare-fun m!1237739 () Bool)

(assert (=> b!1350485 m!1237739))

(declare-fun m!1237741 () Bool)

(assert (=> b!1350486 m!1237741))

(declare-fun m!1237743 () Bool)

(assert (=> start!113928 m!1237743))

(declare-fun m!1237745 () Bool)

(assert (=> b!1350487 m!1237745))

(push 1)

(assert (not b!1350486))

(assert (not b!1350487))

(assert (not start!113928))

(assert (not b!1350488))

(assert (not b!1350485))

(check-sat)

