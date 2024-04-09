; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102478 () Bool)

(assert start!102478)

(declare-fun b!1232097 () Bool)

(declare-fun res!820584 () Bool)

(declare-fun e!698932 () Bool)

(assert (=> b!1232097 (=> (not res!820584) (not e!698932))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232097 (= res!820584 (validKeyInArray!0 k!2913))))

(declare-fun b!1232098 () Bool)

(declare-fun e!698931 () Bool)

(declare-datatypes ((array!79448 0))(
  ( (array!79449 (arr!38334 (Array (_ BitVec 32) (_ BitVec 64))) (size!38871 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79448)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27285 0))(
  ( (Nil!27282) (Cons!27281 (h!28490 (_ BitVec 64)) (t!40755 List!27285)) )
))
(declare-fun arrayNoDuplicates!0 (array!79448 (_ BitVec 32) List!27285) Bool)

(assert (=> b!1232098 (= e!698931 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27281 (select (arr!38334 a!3806) from!3184) Nil!27282)))))

(declare-fun b!1232099 () Bool)

(declare-fun res!820587 () Bool)

(assert (=> b!1232099 (=> (not res!820587) (not e!698932))))

(declare-fun acc!823 () List!27285)

(declare-fun contains!7200 (List!27285 (_ BitVec 64)) Bool)

(assert (=> b!1232099 (= res!820587 (not (contains!7200 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232100 () Bool)

(declare-fun res!820582 () Bool)

(assert (=> b!1232100 (=> (not res!820582) (not e!698932))))

(assert (=> b!1232100 (= res!820582 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232101 () Bool)

(declare-fun res!820580 () Bool)

(assert (=> b!1232101 (=> (not res!820580) (not e!698932))))

(declare-fun noDuplicate!1807 (List!27285) Bool)

(assert (=> b!1232101 (= res!820580 (noDuplicate!1807 acc!823))))

(declare-fun res!820588 () Bool)

(assert (=> start!102478 (=> (not res!820588) (not e!698932))))

(assert (=> start!102478 (= res!820588 (bvslt (size!38871 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102478 e!698932))

(declare-fun array_inv!29110 (array!79448) Bool)

(assert (=> start!102478 (array_inv!29110 a!3806)))

(assert (=> start!102478 true))

(declare-fun b!1232102 () Bool)

(declare-fun res!820589 () Bool)

(assert (=> b!1232102 (=> (not res!820589) (not e!698932))))

(declare-fun arrayContainsKey!0 (array!79448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232102 (= res!820589 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232103 () Bool)

(declare-fun res!820583 () Bool)

(assert (=> b!1232103 (=> (not res!820583) (not e!698932))))

(assert (=> b!1232103 (= res!820583 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38871 a!3806)) (bvslt from!3184 (size!38871 a!3806))))))

(declare-fun b!1232104 () Bool)

(assert (=> b!1232104 (= e!698932 (not true))))

(assert (=> b!1232104 e!698931))

(declare-fun res!820586 () Bool)

(assert (=> b!1232104 (=> (not res!820586) (not e!698931))))

(assert (=> b!1232104 (= res!820586 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27282))))

(declare-datatypes ((Unit!40748 0))(
  ( (Unit!40749) )
))
(declare-fun lt!559433 () Unit!40748)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79448 List!27285 List!27285 (_ BitVec 32)) Unit!40748)

(assert (=> b!1232104 (= lt!559433 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27282 from!3184))))

(assert (=> b!1232104 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27281 (select (arr!38334 a!3806) from!3184) acc!823))))

(declare-fun b!1232105 () Bool)

(declare-fun res!820581 () Bool)

(assert (=> b!1232105 (=> (not res!820581) (not e!698932))))

(assert (=> b!1232105 (= res!820581 (validKeyInArray!0 (select (arr!38334 a!3806) from!3184)))))

(declare-fun b!1232106 () Bool)

(declare-fun res!820585 () Bool)

(assert (=> b!1232106 (=> (not res!820585) (not e!698932))))

(assert (=> b!1232106 (= res!820585 (not (contains!7200 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102478 res!820588) b!1232097))

(assert (= (and b!1232097 res!820584) b!1232103))

(assert (= (and b!1232103 res!820583) b!1232101))

(assert (= (and b!1232101 res!820580) b!1232099))

(assert (= (and b!1232099 res!820587) b!1232106))

(assert (= (and b!1232106 res!820585) b!1232102))

(assert (= (and b!1232102 res!820589) b!1232100))

(assert (= (and b!1232100 res!820582) b!1232105))

(assert (= (and b!1232105 res!820581) b!1232104))

(assert (= (and b!1232104 res!820586) b!1232098))

(declare-fun m!1136195 () Bool)

(assert (=> b!1232105 m!1136195))

(assert (=> b!1232105 m!1136195))

(declare-fun m!1136197 () Bool)

(assert (=> b!1232105 m!1136197))

(assert (=> b!1232098 m!1136195))

(declare-fun m!1136199 () Bool)

(assert (=> b!1232098 m!1136199))

(declare-fun m!1136201 () Bool)

(assert (=> b!1232097 m!1136201))

(declare-fun m!1136203 () Bool)

(assert (=> start!102478 m!1136203))

(declare-fun m!1136205 () Bool)

(assert (=> b!1232101 m!1136205))

(declare-fun m!1136207 () Bool)

(assert (=> b!1232100 m!1136207))

(declare-fun m!1136209 () Bool)

(assert (=> b!1232102 m!1136209))

(declare-fun m!1136211 () Bool)

(assert (=> b!1232104 m!1136211))

(declare-fun m!1136213 () Bool)

(assert (=> b!1232104 m!1136213))

(assert (=> b!1232104 m!1136195))

(declare-fun m!1136215 () Bool)

(assert (=> b!1232104 m!1136215))

(declare-fun m!1136217 () Bool)

(assert (=> b!1232099 m!1136217))

(declare-fun m!1136219 () Bool)

(assert (=> b!1232106 m!1136219))

(push 1)

(assert (not b!1232099))

(assert (not start!102478))

(assert (not b!1232102))

(assert (not b!1232097))

(assert (not b!1232100))

(assert (not b!1232105))

(assert (not b!1232098))

(assert (not b!1232104))

(assert (not b!1232106))

(assert (not b!1232101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

