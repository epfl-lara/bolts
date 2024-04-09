; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102236 () Bool)

(assert start!102236)

(declare-fun res!818878 () Bool)

(declare-fun e!698101 () Bool)

(assert (=> start!102236 (=> (not res!818878) (not e!698101))))

(declare-datatypes ((array!79350 0))(
  ( (array!79351 (arr!38291 (Array (_ BitVec 32) (_ BitVec 64))) (size!38828 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79350)

(assert (=> start!102236 (= res!818878 (bvslt (size!38828 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102236 e!698101))

(declare-fun array_inv!29067 (array!79350) Bool)

(assert (=> start!102236 (array_inv!29067 a!3806)))

(assert (=> start!102236 true))

(declare-fun b!1230285 () Bool)

(assert (=> b!1230285 (= e!698101 false)))

(declare-datatypes ((List!27242 0))(
  ( (Nil!27239) (Cons!27238 (h!28447 (_ BitVec 64)) (t!40712 List!27242)) )
))
(declare-fun acc!823 () List!27242)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun lt!559307 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79350 (_ BitVec 32) List!27242) Bool)

(assert (=> b!1230285 (= lt!559307 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230286 () Bool)

(declare-fun res!818877 () Bool)

(assert (=> b!1230286 (=> (not res!818877) (not e!698101))))

(declare-fun noDuplicate!1764 (List!27242) Bool)

(assert (=> b!1230286 (= res!818877 (noDuplicate!1764 acc!823))))

(declare-fun b!1230287 () Bool)

(declare-fun res!818880 () Bool)

(assert (=> b!1230287 (=> (not res!818880) (not e!698101))))

(declare-fun contains!7157 (List!27242 (_ BitVec 64)) Bool)

(assert (=> b!1230287 (= res!818880 (not (contains!7157 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230288 () Bool)

(declare-fun res!818879 () Bool)

(assert (=> b!1230288 (=> (not res!818879) (not e!698101))))

(assert (=> b!1230288 (= res!818879 (not (contains!7157 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230289 () Bool)

(declare-fun res!818882 () Bool)

(assert (=> b!1230289 (=> (not res!818882) (not e!698101))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230289 (= res!818882 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230290 () Bool)

(declare-fun res!818876 () Bool)

(assert (=> b!1230290 (=> (not res!818876) (not e!698101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230290 (= res!818876 (validKeyInArray!0 k!2913))))

(declare-fun b!1230291 () Bool)

(declare-fun res!818881 () Bool)

(assert (=> b!1230291 (=> (not res!818881) (not e!698101))))

(assert (=> b!1230291 (= res!818881 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38828 a!3806)) (bvslt from!3184 (size!38828 a!3806))))))

(assert (= (and start!102236 res!818878) b!1230290))

(assert (= (and b!1230290 res!818876) b!1230291))

(assert (= (and b!1230291 res!818881) b!1230286))

(assert (= (and b!1230286 res!818877) b!1230287))

(assert (= (and b!1230287 res!818880) b!1230288))

(assert (= (and b!1230288 res!818879) b!1230289))

(assert (= (and b!1230289 res!818882) b!1230285))

(declare-fun m!1134801 () Bool)

(assert (=> b!1230290 m!1134801))

(declare-fun m!1134803 () Bool)

(assert (=> b!1230285 m!1134803))

(declare-fun m!1134805 () Bool)

(assert (=> b!1230288 m!1134805))

(declare-fun m!1134807 () Bool)

(assert (=> b!1230289 m!1134807))

(declare-fun m!1134809 () Bool)

(assert (=> start!102236 m!1134809))

(declare-fun m!1134811 () Bool)

(assert (=> b!1230286 m!1134811))

(declare-fun m!1134813 () Bool)

(assert (=> b!1230287 m!1134813))

(push 1)

(assert (not b!1230287))

(assert (not b!1230289))

(assert (not start!102236))

(assert (not b!1230285))

(assert (not b!1230286))

(assert (not b!1230290))

(assert (not b!1230288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

