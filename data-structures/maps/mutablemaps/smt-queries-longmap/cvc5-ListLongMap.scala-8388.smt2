; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102040 () Bool)

(assert start!102040)

(declare-fun b!1228177 () Bool)

(declare-fun res!816912 () Bool)

(declare-fun e!697168 () Bool)

(assert (=> b!1228177 (=> (not res!816912) (not e!697168))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228177 (= res!816912 (validKeyInArray!0 k!2913))))

(declare-fun b!1228178 () Bool)

(declare-fun res!816911 () Bool)

(assert (=> b!1228178 (=> (not res!816911) (not e!697168))))

(declare-datatypes ((List!27198 0))(
  ( (Nil!27195) (Cons!27194 (h!28403 (_ BitVec 64)) (t!40668 List!27198)) )
))
(declare-fun acc!823 () List!27198)

(declare-fun contains!7113 (List!27198 (_ BitVec 64)) Bool)

(assert (=> b!1228178 (= res!816911 (not (contains!7113 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228179 () Bool)

(declare-fun res!816908 () Bool)

(assert (=> b!1228179 (=> (not res!816908) (not e!697168))))

(declare-fun noDuplicate!1720 (List!27198) Bool)

(assert (=> b!1228179 (= res!816908 (noDuplicate!1720 acc!823))))

(declare-fun b!1228180 () Bool)

(declare-fun res!816914 () Bool)

(assert (=> b!1228180 (=> (not res!816914) (not e!697168))))

(declare-datatypes ((array!79256 0))(
  ( (array!79257 (arr!38247 (Array (_ BitVec 32) (_ BitVec 64))) (size!38784 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79256)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1228180 (= res!816914 (validKeyInArray!0 (select (arr!38247 a!3806) from!3184)))))

(declare-fun b!1228181 () Bool)

(assert (=> b!1228181 (= e!697168 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-fun arrayNoDuplicates!0 (array!79256 (_ BitVec 32) List!27198) Bool)

(assert (=> b!1228181 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27195)))

(declare-datatypes ((Unit!40634 0))(
  ( (Unit!40635) )
))
(declare-fun lt!558917 () Unit!40634)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79256 List!27198 List!27198 (_ BitVec 32)) Unit!40634)

(assert (=> b!1228181 (= lt!558917 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27195 from!3184))))

(assert (=> b!1228181 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27194 (select (arr!38247 a!3806) from!3184) acc!823))))

(declare-fun b!1228182 () Bool)

(declare-fun res!816909 () Bool)

(assert (=> b!1228182 (=> (not res!816909) (not e!697168))))

(assert (=> b!1228182 (= res!816909 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!816910 () Bool)

(assert (=> start!102040 (=> (not res!816910) (not e!697168))))

(assert (=> start!102040 (= res!816910 (bvslt (size!38784 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102040 e!697168))

(declare-fun array_inv!29023 (array!79256) Bool)

(assert (=> start!102040 (array_inv!29023 a!3806)))

(assert (=> start!102040 true))

(declare-fun b!1228183 () Bool)

(declare-fun res!816907 () Bool)

(assert (=> b!1228183 (=> (not res!816907) (not e!697168))))

(assert (=> b!1228183 (= res!816907 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38784 a!3806)) (bvslt from!3184 (size!38784 a!3806))))))

(declare-fun b!1228184 () Bool)

(declare-fun res!816906 () Bool)

(assert (=> b!1228184 (=> (not res!816906) (not e!697168))))

(declare-fun arrayContainsKey!0 (array!79256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228184 (= res!816906 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228185 () Bool)

(declare-fun res!816913 () Bool)

(assert (=> b!1228185 (=> (not res!816913) (not e!697168))))

(assert (=> b!1228185 (= res!816913 (not (contains!7113 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102040 res!816910) b!1228177))

(assert (= (and b!1228177 res!816912) b!1228183))

(assert (= (and b!1228183 res!816907) b!1228179))

(assert (= (and b!1228179 res!816908) b!1228185))

(assert (= (and b!1228185 res!816913) b!1228178))

(assert (= (and b!1228178 res!816911) b!1228184))

(assert (= (and b!1228184 res!816906) b!1228182))

(assert (= (and b!1228182 res!816909) b!1228180))

(assert (= (and b!1228180 res!816914) b!1228181))

(declare-fun m!1132781 () Bool)

(assert (=> b!1228184 m!1132781))

(declare-fun m!1132783 () Bool)

(assert (=> b!1228185 m!1132783))

(declare-fun m!1132785 () Bool)

(assert (=> b!1228182 m!1132785))

(declare-fun m!1132787 () Bool)

(assert (=> b!1228178 m!1132787))

(declare-fun m!1132789 () Bool)

(assert (=> b!1228181 m!1132789))

(declare-fun m!1132791 () Bool)

(assert (=> b!1228181 m!1132791))

(declare-fun m!1132793 () Bool)

(assert (=> b!1228181 m!1132793))

(declare-fun m!1132795 () Bool)

(assert (=> b!1228181 m!1132795))

(assert (=> b!1228180 m!1132793))

(assert (=> b!1228180 m!1132793))

(declare-fun m!1132797 () Bool)

(assert (=> b!1228180 m!1132797))

(declare-fun m!1132799 () Bool)

(assert (=> start!102040 m!1132799))

(declare-fun m!1132801 () Bool)

(assert (=> b!1228177 m!1132801))

(declare-fun m!1132803 () Bool)

(assert (=> b!1228179 m!1132803))

(push 1)

