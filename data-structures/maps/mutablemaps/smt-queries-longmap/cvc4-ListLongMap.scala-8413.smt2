; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102416 () Bool)

(assert start!102416)

(declare-fun b!1231657 () Bool)

(declare-fun res!820179 () Bool)

(declare-fun e!698719 () Bool)

(assert (=> b!1231657 (=> (not res!820179) (not e!698719))))

(declare-datatypes ((List!27275 0))(
  ( (Nil!27272) (Cons!27271 (h!28480 (_ BitVec 64)) (t!40745 List!27275)) )
))
(declare-fun acc!823 () List!27275)

(declare-fun contains!7190 (List!27275 (_ BitVec 64)) Bool)

(assert (=> b!1231657 (= res!820179 (not (contains!7190 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231658 () Bool)

(declare-fun res!820182 () Bool)

(assert (=> b!1231658 (=> (not res!820182) (not e!698719))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79425 0))(
  ( (array!79426 (arr!38324 (Array (_ BitVec 32) (_ BitVec 64))) (size!38861 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79425)

(assert (=> b!1231658 (= res!820182 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38861 a!3806)) (bvslt from!3184 (size!38861 a!3806))))))

(declare-fun b!1231659 () Bool)

(declare-fun res!820176 () Bool)

(assert (=> b!1231659 (=> (not res!820176) (not e!698719))))

(declare-fun noDuplicate!1797 (List!27275) Bool)

(assert (=> b!1231659 (= res!820176 (noDuplicate!1797 acc!823))))

(declare-fun b!1231660 () Bool)

(declare-fun res!820180 () Bool)

(assert (=> b!1231660 (=> (not res!820180) (not e!698719))))

(declare-fun arrayNoDuplicates!0 (array!79425 (_ BitVec 32) List!27275) Bool)

(assert (=> b!1231660 (= res!820180 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231661 () Bool)

(declare-fun res!820183 () Bool)

(assert (=> b!1231661 (=> (not res!820183) (not e!698719))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231661 (= res!820183 (validKeyInArray!0 k!2913))))

(declare-fun b!1231662 () Bool)

(declare-fun res!820181 () Bool)

(assert (=> b!1231662 (=> (not res!820181) (not e!698719))))

(assert (=> b!1231662 (= res!820181 (not (contains!7190 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!820178 () Bool)

(assert (=> start!102416 (=> (not res!820178) (not e!698719))))

(assert (=> start!102416 (= res!820178 (bvslt (size!38861 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102416 e!698719))

(declare-fun array_inv!29100 (array!79425) Bool)

(assert (=> start!102416 (array_inv!29100 a!3806)))

(assert (=> start!102416 true))

(declare-fun b!1231663 () Bool)

(declare-fun res!820177 () Bool)

(assert (=> b!1231663 (=> (not res!820177) (not e!698719))))

(assert (=> b!1231663 (= res!820177 (validKeyInArray!0 (select (arr!38324 a!3806) from!3184)))))

(declare-fun b!1231664 () Bool)

(declare-fun res!820184 () Bool)

(assert (=> b!1231664 (=> (not res!820184) (not e!698719))))

(declare-fun arrayContainsKey!0 (array!79425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231664 (= res!820184 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231665 () Bool)

(assert (=> b!1231665 (= e!698719 (not true))))

(assert (=> b!1231665 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27272)))

(declare-datatypes ((Unit!40728 0))(
  ( (Unit!40729) )
))
(declare-fun lt!559382 () Unit!40728)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79425 List!27275 List!27275 (_ BitVec 32)) Unit!40728)

(assert (=> b!1231665 (= lt!559382 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27272 from!3184))))

(assert (=> b!1231665 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27271 (select (arr!38324 a!3806) from!3184) acc!823))))

(assert (= (and start!102416 res!820178) b!1231661))

(assert (= (and b!1231661 res!820183) b!1231658))

(assert (= (and b!1231658 res!820182) b!1231659))

(assert (= (and b!1231659 res!820176) b!1231657))

(assert (= (and b!1231657 res!820179) b!1231662))

(assert (= (and b!1231662 res!820181) b!1231664))

(assert (= (and b!1231664 res!820184) b!1231660))

(assert (= (and b!1231660 res!820180) b!1231663))

(assert (= (and b!1231663 res!820177) b!1231665))

(declare-fun m!1135823 () Bool)

(assert (=> b!1231665 m!1135823))

(declare-fun m!1135825 () Bool)

(assert (=> b!1231665 m!1135825))

(declare-fun m!1135827 () Bool)

(assert (=> b!1231665 m!1135827))

(declare-fun m!1135829 () Bool)

(assert (=> b!1231665 m!1135829))

(declare-fun m!1135831 () Bool)

(assert (=> b!1231657 m!1135831))

(declare-fun m!1135833 () Bool)

(assert (=> b!1231664 m!1135833))

(declare-fun m!1135835 () Bool)

(assert (=> start!102416 m!1135835))

(assert (=> b!1231663 m!1135827))

(assert (=> b!1231663 m!1135827))

(declare-fun m!1135837 () Bool)

(assert (=> b!1231663 m!1135837))

(declare-fun m!1135839 () Bool)

(assert (=> b!1231660 m!1135839))

(declare-fun m!1135841 () Bool)

(assert (=> b!1231662 m!1135841))

(declare-fun m!1135843 () Bool)

(assert (=> b!1231661 m!1135843))

(declare-fun m!1135845 () Bool)

(assert (=> b!1231659 m!1135845))

(push 1)

(assert (not b!1231662))

(assert (not b!1231661))

(assert (not b!1231659))

(assert (not b!1231664))

(assert (not b!1231663))

(assert (not start!102416))

(assert (not b!1231657))

(assert (not b!1231660))

(assert (not b!1231665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

