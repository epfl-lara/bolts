; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113852 () Bool)

(assert start!113852)

(declare-fun b!1350104 () Bool)

(declare-fun e!768064 () Bool)

(declare-datatypes ((array!91987 0))(
  ( (array!91988 (arr!44440 (Array (_ BitVec 32) (_ BitVec 64))) (size!44991 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!91987)

(assert (=> b!1350104 (= e!768064 (bvsgt #b00000000000000000000000000000000 (size!44991 a!3742)))))

(declare-fun res!895680 () Bool)

(assert (=> start!113852 (=> (not res!895680) (not e!768064))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!113852 (= res!895680 (and (bvslt (size!44991 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!44991 a!3742))))))

(assert (=> start!113852 e!768064))

(declare-fun array_inv!33385 (array!91987) Bool)

(assert (=> start!113852 (array_inv!33385 a!3742)))

(assert (=> start!113852 true))

(declare-fun b!1350102 () Bool)

(declare-fun res!895682 () Bool)

(assert (=> b!1350102 (=> (not res!895682) (not e!768064))))

(declare-datatypes ((List!31661 0))(
  ( (Nil!31658) (Cons!31657 (h!32866 (_ BitVec 64)) (t!46326 List!31661)) )
))
(declare-fun acc!759 () List!31661)

(declare-fun contains!9226 (List!31661 (_ BitVec 64)) Bool)

(assert (=> b!1350102 (= res!895682 (not (contains!9226 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1350101 () Bool)

(declare-fun res!895681 () Bool)

(assert (=> b!1350101 (=> (not res!895681) (not e!768064))))

(declare-fun noDuplicate!2105 (List!31661) Bool)

(assert (=> b!1350101 (= res!895681 (noDuplicate!2105 acc!759))))

(declare-fun b!1350103 () Bool)

(declare-fun res!895683 () Bool)

(assert (=> b!1350103 (=> (not res!895683) (not e!768064))))

(assert (=> b!1350103 (= res!895683 (not (contains!9226 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!113852 res!895680) b!1350101))

(assert (= (and b!1350101 res!895681) b!1350102))

(assert (= (and b!1350102 res!895682) b!1350103))

(assert (= (and b!1350103 res!895683) b!1350104))

(declare-fun m!1237399 () Bool)

(assert (=> start!113852 m!1237399))

(declare-fun m!1237401 () Bool)

(assert (=> b!1350102 m!1237401))

(declare-fun m!1237403 () Bool)

(assert (=> b!1350101 m!1237403))

(declare-fun m!1237405 () Bool)

(assert (=> b!1350103 m!1237405))

(push 1)

(assert (not b!1350103))

(assert (not start!113852))

(assert (not b!1350101))

