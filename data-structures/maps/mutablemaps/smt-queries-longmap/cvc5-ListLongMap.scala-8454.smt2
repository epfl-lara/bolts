; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102896 () Bool)

(assert start!102896)

(declare-fun res!824346 () Bool)

(declare-fun e!700792 () Bool)

(assert (=> start!102896 (=> (not res!824346) (not e!700792))))

(declare-datatypes ((array!79682 0))(
  ( (array!79683 (arr!38445 (Array (_ BitVec 32) (_ BitVec 64))) (size!38982 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79682)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102896 (= res!824346 (and (bvslt (size!38982 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38982 a!3835))))))

(assert (=> start!102896 e!700792))

(declare-fun array_inv!29221 (array!79682) Bool)

(assert (=> start!102896 (array_inv!29221 a!3835)))

(assert (=> start!102896 true))

(declare-fun b!1236251 () Bool)

(declare-fun res!824348 () Bool)

(assert (=> b!1236251 (=> (not res!824348) (not e!700792))))

(declare-datatypes ((List!27396 0))(
  ( (Nil!27393) (Cons!27392 (h!28601 (_ BitVec 64)) (t!40866 List!27396)) )
))
(declare-fun acc!846 () List!27396)

(declare-fun contains!7311 (List!27396 (_ BitVec 64)) Bool)

(assert (=> b!1236251 (= res!824348 (not (contains!7311 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236252 () Bool)

(declare-fun res!824344 () Bool)

(assert (=> b!1236252 (=> (not res!824344) (not e!700792))))

(assert (=> b!1236252 (= res!824344 (not (contains!7311 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236253 () Bool)

(declare-fun res!824347 () Bool)

(assert (=> b!1236253 (=> (not res!824347) (not e!700792))))

(declare-fun noDuplicate!1918 (List!27396) Bool)

(assert (=> b!1236253 (= res!824347 (noDuplicate!1918 acc!846))))

(declare-fun b!1236254 () Bool)

(declare-fun res!824345 () Bool)

(assert (=> b!1236254 (=> (not res!824345) (not e!700792))))

(declare-fun arrayNoDuplicates!0 (array!79682 (_ BitVec 32) List!27396) Bool)

(assert (=> b!1236254 (= res!824345 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236255 () Bool)

(assert (=> b!1236255 (= e!700792 false)))

(declare-fun lt!560719 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236255 (= lt!560719 (contains!7311 acc!846 k!2925))))

(assert (= (and start!102896 res!824346) b!1236253))

(assert (= (and b!1236253 res!824347) b!1236252))

(assert (= (and b!1236252 res!824344) b!1236251))

(assert (= (and b!1236251 res!824348) b!1236254))

(assert (= (and b!1236254 res!824345) b!1236255))

(declare-fun m!1140143 () Bool)

(assert (=> b!1236252 m!1140143))

(declare-fun m!1140145 () Bool)

(assert (=> start!102896 m!1140145))

(declare-fun m!1140147 () Bool)

(assert (=> b!1236251 m!1140147))

(declare-fun m!1140149 () Bool)

(assert (=> b!1236254 m!1140149))

(declare-fun m!1140151 () Bool)

(assert (=> b!1236253 m!1140151))

(declare-fun m!1140153 () Bool)

(assert (=> b!1236255 m!1140153))

(push 1)

(assert (not b!1236255))

(assert (not start!102896))

(assert (not b!1236253))

(assert (not b!1236252))

(assert (not b!1236251))

(assert (not b!1236254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

