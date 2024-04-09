; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102242 () Bool)

(assert start!102242)

(declare-fun b!1230348 () Bool)

(declare-fun e!698119 () Bool)

(assert (=> b!1230348 (= e!698119 false)))

(declare-datatypes ((array!79356 0))(
  ( (array!79357 (arr!38294 (Array (_ BitVec 32) (_ BitVec 64))) (size!38831 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79356)

(declare-fun lt!559316 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27245 0))(
  ( (Nil!27242) (Cons!27241 (h!28450 (_ BitVec 64)) (t!40715 List!27245)) )
))
(declare-fun acc!823 () List!27245)

(declare-fun arrayNoDuplicates!0 (array!79356 (_ BitVec 32) List!27245) Bool)

(assert (=> b!1230348 (= lt!559316 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230349 () Bool)

(declare-fun res!818943 () Bool)

(assert (=> b!1230349 (=> (not res!818943) (not e!698119))))

(declare-fun noDuplicate!1767 (List!27245) Bool)

(assert (=> b!1230349 (= res!818943 (noDuplicate!1767 acc!823))))

(declare-fun b!1230350 () Bool)

(declare-fun res!818942 () Bool)

(assert (=> b!1230350 (=> (not res!818942) (not e!698119))))

(assert (=> b!1230350 (= res!818942 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38831 a!3806)) (bvslt from!3184 (size!38831 a!3806))))))

(declare-fun b!1230351 () Bool)

(declare-fun res!818941 () Bool)

(assert (=> b!1230351 (=> (not res!818941) (not e!698119))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230351 (= res!818941 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230352 () Bool)

(declare-fun res!818940 () Bool)

(assert (=> b!1230352 (=> (not res!818940) (not e!698119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230352 (= res!818940 (validKeyInArray!0 k!2913))))

(declare-fun res!818944 () Bool)

(assert (=> start!102242 (=> (not res!818944) (not e!698119))))

(assert (=> start!102242 (= res!818944 (bvslt (size!38831 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102242 e!698119))

(declare-fun array_inv!29070 (array!79356) Bool)

(assert (=> start!102242 (array_inv!29070 a!3806)))

(assert (=> start!102242 true))

(declare-fun b!1230353 () Bool)

(declare-fun res!818945 () Bool)

(assert (=> b!1230353 (=> (not res!818945) (not e!698119))))

(declare-fun contains!7160 (List!27245 (_ BitVec 64)) Bool)

(assert (=> b!1230353 (= res!818945 (not (contains!7160 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230354 () Bool)

(declare-fun res!818939 () Bool)

(assert (=> b!1230354 (=> (not res!818939) (not e!698119))))

(assert (=> b!1230354 (= res!818939 (not (contains!7160 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102242 res!818944) b!1230352))

(assert (= (and b!1230352 res!818940) b!1230350))

(assert (= (and b!1230350 res!818942) b!1230349))

(assert (= (and b!1230349 res!818943) b!1230353))

(assert (= (and b!1230353 res!818945) b!1230354))

(assert (= (and b!1230354 res!818939) b!1230351))

(assert (= (and b!1230351 res!818941) b!1230348))

(declare-fun m!1134843 () Bool)

(assert (=> b!1230353 m!1134843))

(declare-fun m!1134845 () Bool)

(assert (=> b!1230349 m!1134845))

(declare-fun m!1134847 () Bool)

(assert (=> start!102242 m!1134847))

(declare-fun m!1134849 () Bool)

(assert (=> b!1230348 m!1134849))

(declare-fun m!1134851 () Bool)

(assert (=> b!1230351 m!1134851))

(declare-fun m!1134853 () Bool)

(assert (=> b!1230354 m!1134853))

(declare-fun m!1134855 () Bool)

(assert (=> b!1230352 m!1134855))

(push 1)

(assert (not b!1230349))

(assert (not b!1230354))

(assert (not b!1230348))

(assert (not b!1230352))

(assert (not start!102242))

(assert (not b!1230351))

(assert (not b!1230353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

