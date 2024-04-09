; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114012 () Bool)

(assert start!114012)

(declare-fun b!1352133 () Bool)

(declare-fun res!897624 () Bool)

(declare-fun e!768715 () Bool)

(assert (=> b!1352133 (=> (not res!897624) (not e!768715))))

(declare-datatypes ((List!31723 0))(
  ( (Nil!31720) (Cons!31719 (h!32928 (_ BitVec 64)) (t!46388 List!31723)) )
))
(declare-fun acc!759 () List!31723)

(declare-fun noDuplicate!2167 (List!31723) Bool)

(assert (=> b!1352133 (= res!897624 (noDuplicate!2167 acc!759))))

(declare-fun b!1352134 () Bool)

(declare-fun e!768714 () Bool)

(assert (=> b!1352134 (= e!768715 e!768714)))

(declare-fun res!897628 () Bool)

(assert (=> b!1352134 (=> (not res!897628) (not e!768714))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352134 (= res!897628 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44270 0))(
  ( (Unit!44271) )
))
(declare-fun lt!597410 () Unit!44270)

(declare-fun e!768713 () Unit!44270)

(assert (=> b!1352134 (= lt!597410 e!768713)))

(declare-fun c!126697 () Bool)

(declare-datatypes ((array!92117 0))(
  ( (array!92118 (arr!44502 (Array (_ BitVec 32) (_ BitVec 64))) (size!45053 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92117)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352134 (= c!126697 (validKeyInArray!0 (select (arr!44502 a!3742) from!3120)))))

(declare-fun b!1352135 () Bool)

(declare-fun Unit!44272 () Unit!44270)

(assert (=> b!1352135 (= e!768713 Unit!44272)))

(declare-fun res!897632 () Bool)

(assert (=> start!114012 (=> (not res!897632) (not e!768715))))

(assert (=> start!114012 (= res!897632 (and (bvslt (size!45053 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45053 a!3742))))))

(assert (=> start!114012 e!768715))

(assert (=> start!114012 true))

(declare-fun array_inv!33447 (array!92117) Bool)

(assert (=> start!114012 (array_inv!33447 a!3742)))

(declare-fun b!1352136 () Bool)

(declare-fun res!897633 () Bool)

(assert (=> b!1352136 (=> (not res!897633) (not e!768715))))

(declare-fun arrayNoDuplicates!0 (array!92117 (_ BitVec 32) List!31723) Bool)

(assert (=> b!1352136 (= res!897633 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31720))))

(declare-fun b!1352137 () Bool)

(declare-fun res!897630 () Bool)

(assert (=> b!1352137 (=> (not res!897630) (not e!768715))))

(declare-fun contains!9288 (List!31723 (_ BitVec 64)) Bool)

(assert (=> b!1352137 (= res!897630 (not (contains!9288 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352138 () Bool)

(declare-fun res!897629 () Bool)

(assert (=> b!1352138 (=> (not res!897629) (not e!768715))))

(assert (=> b!1352138 (= res!897629 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45053 a!3742))))))

(declare-fun b!1352139 () Bool)

(declare-fun lt!597408 () Unit!44270)

(assert (=> b!1352139 (= e!768713 lt!597408)))

(declare-fun lt!597407 () Unit!44270)

(declare-fun lemmaListSubSeqRefl!0 (List!31723) Unit!44270)

(assert (=> b!1352139 (= lt!597407 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!697 (List!31723 List!31723) Bool)

(assert (=> b!1352139 (subseq!697 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92117 List!31723 List!31723 (_ BitVec 32)) Unit!44270)

(declare-fun $colon$colon!714 (List!31723 (_ BitVec 64)) List!31723)

(assert (=> b!1352139 (= lt!597408 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!714 acc!759 (select (arr!44502 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352139 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352140 () Bool)

(assert (=> b!1352140 (= e!768714 false)))

(declare-fun lt!597409 () Bool)

(assert (=> b!1352140 (= lt!597409 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352141 () Bool)

(declare-fun res!897625 () Bool)

(assert (=> b!1352141 (=> (not res!897625) (not e!768715))))

(assert (=> b!1352141 (= res!897625 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45053 a!3742)))))

(declare-fun b!1352142 () Bool)

(declare-fun res!897631 () Bool)

(assert (=> b!1352142 (=> (not res!897631) (not e!768715))))

(assert (=> b!1352142 (= res!897631 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352143 () Bool)

(declare-fun res!897626 () Bool)

(assert (=> b!1352143 (=> (not res!897626) (not e!768715))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352143 (= res!897626 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352144 () Bool)

(declare-fun res!897627 () Bool)

(assert (=> b!1352144 (=> (not res!897627) (not e!768715))))

(assert (=> b!1352144 (= res!897627 (not (contains!9288 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114012 res!897632) b!1352133))

(assert (= (and b!1352133 res!897624) b!1352144))

(assert (= (and b!1352144 res!897627) b!1352137))

(assert (= (and b!1352137 res!897630) b!1352136))

(assert (= (and b!1352136 res!897633) b!1352142))

(assert (= (and b!1352142 res!897631) b!1352138))

(assert (= (and b!1352138 res!897629) b!1352143))

(assert (= (and b!1352143 res!897626) b!1352141))

(assert (= (and b!1352141 res!897625) b!1352134))

(assert (= (and b!1352134 c!126697) b!1352139))

(assert (= (and b!1352134 (not c!126697)) b!1352135))

(assert (= (and b!1352134 res!897628) b!1352140))

(declare-fun m!1239033 () Bool)

(assert (=> b!1352142 m!1239033))

(declare-fun m!1239035 () Bool)

(assert (=> start!114012 m!1239035))

(declare-fun m!1239037 () Bool)

(assert (=> b!1352144 m!1239037))

(declare-fun m!1239039 () Bool)

(assert (=> b!1352136 m!1239039))

(declare-fun m!1239041 () Bool)

(assert (=> b!1352137 m!1239041))

(declare-fun m!1239043 () Bool)

(assert (=> b!1352139 m!1239043))

(declare-fun m!1239045 () Bool)

(assert (=> b!1352139 m!1239045))

(declare-fun m!1239047 () Bool)

(assert (=> b!1352139 m!1239047))

(declare-fun m!1239049 () Bool)

(assert (=> b!1352139 m!1239049))

(declare-fun m!1239051 () Bool)

(assert (=> b!1352139 m!1239051))

(assert (=> b!1352139 m!1239045))

(assert (=> b!1352139 m!1239047))

(declare-fun m!1239053 () Bool)

(assert (=> b!1352139 m!1239053))

(declare-fun m!1239055 () Bool)

(assert (=> b!1352133 m!1239055))

(declare-fun m!1239057 () Bool)

(assert (=> b!1352143 m!1239057))

(assert (=> b!1352134 m!1239045))

(assert (=> b!1352134 m!1239045))

(declare-fun m!1239059 () Bool)

(assert (=> b!1352134 m!1239059))

(assert (=> b!1352140 m!1239051))

(push 1)

