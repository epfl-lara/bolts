; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102172 () Bool)

(assert start!102172)

(declare-fun b!1229105 () Bool)

(declare-fun res!817697 () Bool)

(declare-fun e!697762 () Bool)

(assert (=> b!1229105 (=> (not res!817697) (not e!697762))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229105 (= res!817697 (validKeyInArray!0 k!2913))))

(declare-fun b!1229106 () Bool)

(declare-fun res!817706 () Bool)

(assert (=> b!1229106 (=> (not res!817706) (not e!697762))))

(declare-datatypes ((array!79286 0))(
  ( (array!79287 (arr!38259 (Array (_ BitVec 32) (_ BitVec 64))) (size!38796 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79286)

(declare-datatypes ((List!27210 0))(
  ( (Nil!27207) (Cons!27206 (h!28415 (_ BitVec 64)) (t!40680 List!27210)) )
))
(declare-fun acc!823 () List!27210)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79286 (_ BitVec 32) List!27210) Bool)

(assert (=> b!1229106 (= res!817706 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229107 () Bool)

(declare-fun res!817696 () Bool)

(assert (=> b!1229107 (=> (not res!817696) (not e!697762))))

(declare-fun noDuplicate!1732 (List!27210) Bool)

(assert (=> b!1229107 (= res!817696 (noDuplicate!1732 acc!823))))

(declare-fun res!817705 () Bool)

(assert (=> start!102172 (=> (not res!817705) (not e!697762))))

(assert (=> start!102172 (= res!817705 (bvslt (size!38796 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102172 e!697762))

(declare-fun array_inv!29035 (array!79286) Bool)

(assert (=> start!102172 (array_inv!29035 a!3806)))

(assert (=> start!102172 true))

(declare-fun b!1229108 () Bool)

(declare-fun res!817701 () Bool)

(declare-fun e!697759 () Bool)

(assert (=> b!1229108 (=> res!817701 e!697759)))

(declare-fun lt!559063 () List!27210)

(declare-fun contains!7125 (List!27210 (_ BitVec 64)) Bool)

(assert (=> b!1229108 (= res!817701 (contains!7125 lt!559063 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229109 () Bool)

(declare-fun res!817707 () Bool)

(assert (=> b!1229109 (=> (not res!817707) (not e!697762))))

(assert (=> b!1229109 (= res!817707 (not (contains!7125 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229110 () Bool)

(declare-fun e!697761 () Bool)

(assert (=> b!1229110 (= e!697761 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27206 (select (arr!38259 a!3806) from!3184) Nil!27207)))))

(declare-fun b!1229111 () Bool)

(declare-fun res!817709 () Bool)

(assert (=> b!1229111 (=> (not res!817709) (not e!697762))))

(assert (=> b!1229111 (= res!817709 (validKeyInArray!0 (select (arr!38259 a!3806) from!3184)))))

(declare-fun b!1229112 () Bool)

(assert (=> b!1229112 (= e!697759 true)))

(declare-fun lt!559064 () Bool)

(assert (=> b!1229112 (= lt!559064 (contains!7125 lt!559063 (select (arr!38259 a!3806) from!3184)))))

(declare-fun b!1229113 () Bool)

(assert (=> b!1229113 (= e!697762 (not e!697759))))

(declare-fun res!817700 () Bool)

(assert (=> b!1229113 (=> res!817700 e!697759)))

(assert (=> b!1229113 (= res!817700 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229113 (= lt!559063 (Cons!27206 (select (arr!38259 a!3806) from!3184) Nil!27207))))

(assert (=> b!1229113 e!697761))

(declare-fun res!817702 () Bool)

(assert (=> b!1229113 (=> (not res!817702) (not e!697761))))

(assert (=> b!1229113 (= res!817702 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27207))))

(declare-datatypes ((Unit!40658 0))(
  ( (Unit!40659) )
))
(declare-fun lt!559062 () Unit!40658)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79286 List!27210 List!27210 (_ BitVec 32)) Unit!40658)

(assert (=> b!1229113 (= lt!559062 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27207 from!3184))))

(assert (=> b!1229113 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27206 (select (arr!38259 a!3806) from!3184) acc!823))))

(declare-fun b!1229114 () Bool)

(declare-fun res!817703 () Bool)

(assert (=> b!1229114 (=> res!817703 e!697759)))

(assert (=> b!1229114 (= res!817703 (contains!7125 lt!559063 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229115 () Bool)

(declare-fun res!817699 () Bool)

(assert (=> b!1229115 (=> (not res!817699) (not e!697762))))

(declare-fun arrayContainsKey!0 (array!79286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229115 (= res!817699 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229116 () Bool)

(declare-fun res!817704 () Bool)

(assert (=> b!1229116 (=> res!817704 e!697759)))

(assert (=> b!1229116 (= res!817704 (not (noDuplicate!1732 lt!559063)))))

(declare-fun b!1229117 () Bool)

(declare-fun res!817708 () Bool)

(assert (=> b!1229117 (=> (not res!817708) (not e!697762))))

(assert (=> b!1229117 (= res!817708 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38796 a!3806)) (bvslt from!3184 (size!38796 a!3806))))))

(declare-fun b!1229118 () Bool)

(declare-fun res!817698 () Bool)

(assert (=> b!1229118 (=> (not res!817698) (not e!697762))))

(assert (=> b!1229118 (= res!817698 (not (contains!7125 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102172 res!817705) b!1229105))

(assert (= (and b!1229105 res!817697) b!1229117))

(assert (= (and b!1229117 res!817708) b!1229107))

(assert (= (and b!1229107 res!817696) b!1229109))

(assert (= (and b!1229109 res!817707) b!1229118))

(assert (= (and b!1229118 res!817698) b!1229115))

(assert (= (and b!1229115 res!817699) b!1229106))

(assert (= (and b!1229106 res!817706) b!1229111))

(assert (= (and b!1229111 res!817709) b!1229113))

(assert (= (and b!1229113 res!817702) b!1229110))

(assert (= (and b!1229113 (not res!817700)) b!1229116))

(assert (= (and b!1229116 (not res!817704)) b!1229108))

(assert (= (and b!1229108 (not res!817701)) b!1229114))

(assert (= (and b!1229114 (not res!817703)) b!1229112))

(declare-fun m!1133789 () Bool)

(assert (=> b!1229105 m!1133789))

(declare-fun m!1133791 () Bool)

(assert (=> b!1229115 m!1133791))

(declare-fun m!1133793 () Bool)

(assert (=> b!1229116 m!1133793))

(declare-fun m!1133795 () Bool)

(assert (=> b!1229112 m!1133795))

(assert (=> b!1229112 m!1133795))

(declare-fun m!1133797 () Bool)

(assert (=> b!1229112 m!1133797))

(assert (=> b!1229111 m!1133795))

(assert (=> b!1229111 m!1133795))

(declare-fun m!1133799 () Bool)

(assert (=> b!1229111 m!1133799))

(declare-fun m!1133801 () Bool)

(assert (=> b!1229106 m!1133801))

(assert (=> b!1229113 m!1133795))

(declare-fun m!1133803 () Bool)

(assert (=> b!1229113 m!1133803))

(declare-fun m!1133805 () Bool)

(assert (=> b!1229113 m!1133805))

(declare-fun m!1133807 () Bool)

(assert (=> b!1229113 m!1133807))

(declare-fun m!1133809 () Bool)

(assert (=> b!1229108 m!1133809))

(declare-fun m!1133811 () Bool)

(assert (=> b!1229107 m!1133811))

(declare-fun m!1133813 () Bool)

(assert (=> b!1229114 m!1133813))

(declare-fun m!1133815 () Bool)

(assert (=> b!1229118 m!1133815))

(declare-fun m!1133817 () Bool)

(assert (=> b!1229109 m!1133817))

(assert (=> b!1229110 m!1133795))

(declare-fun m!1133819 () Bool)

(assert (=> b!1229110 m!1133819))

(declare-fun m!1133821 () Bool)

(assert (=> start!102172 m!1133821))

(push 1)

(assert (not b!1229116))

(assert (not b!1229115))

(assert (not b!1229111))

(assert (not b!1229110))

(assert (not b!1229113))

(assert (not b!1229109))

(assert (not b!1229112))

(assert (not b!1229114))

(assert (not b!1229118))

(assert (not b!1229108))

(assert (not b!1229105))

(assert (not start!102172))

(assert (not b!1229107))

(assert (not b!1229106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

