; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102308 () Bool)

(assert start!102308)

(declare-fun res!819443 () Bool)

(declare-fun e!698316 () Bool)

(assert (=> start!102308 (=> (not res!819443) (not e!698316))))

(declare-datatypes ((array!79389 0))(
  ( (array!79390 (arr!38309 (Array (_ BitVec 32) (_ BitVec 64))) (size!38846 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79389)

(assert (=> start!102308 (= res!819443 (bvslt (size!38846 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102308 e!698316))

(declare-fun array_inv!29085 (array!79389) Bool)

(assert (=> start!102308 (array_inv!29085 a!3806)))

(assert (=> start!102308 true))

(declare-fun b!1230871 () Bool)

(declare-fun res!819438 () Bool)

(assert (=> b!1230871 (=> (not res!819438) (not e!698316))))

(declare-datatypes ((List!27260 0))(
  ( (Nil!27257) (Cons!27256 (h!28465 (_ BitVec 64)) (t!40730 List!27260)) )
))
(declare-fun acc!823 () List!27260)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79389 (_ BitVec 32) List!27260) Bool)

(assert (=> b!1230871 (= res!819438 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230872 () Bool)

(declare-fun res!819444 () Bool)

(assert (=> b!1230872 (=> (not res!819444) (not e!698316))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230872 (= res!819444 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230873 () Bool)

(declare-fun res!819442 () Bool)

(assert (=> b!1230873 (=> (not res!819442) (not e!698316))))

(assert (=> b!1230873 (= res!819442 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38846 a!3806)) (bvslt from!3184 (size!38846 a!3806))))))

(declare-fun b!1230874 () Bool)

(assert (=> b!1230874 (= e!698316 (not true))))

(assert (=> b!1230874 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27256 (select (arr!38309 a!3806) from!3184) acc!823))))

(declare-fun b!1230875 () Bool)

(declare-fun res!819446 () Bool)

(assert (=> b!1230875 (=> (not res!819446) (not e!698316))))

(declare-fun contains!7175 (List!27260 (_ BitVec 64)) Bool)

(assert (=> b!1230875 (= res!819446 (not (contains!7175 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230876 () Bool)

(declare-fun res!819439 () Bool)

(assert (=> b!1230876 (=> (not res!819439) (not e!698316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230876 (= res!819439 (validKeyInArray!0 (select (arr!38309 a!3806) from!3184)))))

(declare-fun b!1230877 () Bool)

(declare-fun res!819445 () Bool)

(assert (=> b!1230877 (=> (not res!819445) (not e!698316))))

(assert (=> b!1230877 (= res!819445 (not (contains!7175 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230878 () Bool)

(declare-fun res!819441 () Bool)

(assert (=> b!1230878 (=> (not res!819441) (not e!698316))))

(assert (=> b!1230878 (= res!819441 (validKeyInArray!0 k!2913))))

(declare-fun b!1230879 () Bool)

(declare-fun res!819440 () Bool)

(assert (=> b!1230879 (=> (not res!819440) (not e!698316))))

(declare-fun noDuplicate!1782 (List!27260) Bool)

(assert (=> b!1230879 (= res!819440 (noDuplicate!1782 acc!823))))

(assert (= (and start!102308 res!819443) b!1230878))

(assert (= (and b!1230878 res!819441) b!1230873))

(assert (= (and b!1230873 res!819442) b!1230879))

(assert (= (and b!1230879 res!819440) b!1230877))

(assert (= (and b!1230877 res!819445) b!1230875))

(assert (= (and b!1230875 res!819446) b!1230872))

(assert (= (and b!1230872 res!819444) b!1230871))

(assert (= (and b!1230871 res!819438) b!1230876))

(assert (= (and b!1230876 res!819439) b!1230874))

(declare-fun m!1135221 () Bool)

(assert (=> b!1230871 m!1135221))

(declare-fun m!1135223 () Bool)

(assert (=> b!1230879 m!1135223))

(declare-fun m!1135225 () Bool)

(assert (=> b!1230876 m!1135225))

(assert (=> b!1230876 m!1135225))

(declare-fun m!1135227 () Bool)

(assert (=> b!1230876 m!1135227))

(declare-fun m!1135229 () Bool)

(assert (=> b!1230872 m!1135229))

(declare-fun m!1135231 () Bool)

(assert (=> b!1230875 m!1135231))

(declare-fun m!1135233 () Bool)

(assert (=> start!102308 m!1135233))

(declare-fun m!1135235 () Bool)

(assert (=> b!1230877 m!1135235))

(declare-fun m!1135237 () Bool)

(assert (=> b!1230878 m!1135237))

(assert (=> b!1230874 m!1135225))

(declare-fun m!1135239 () Bool)

(assert (=> b!1230874 m!1135239))

(push 1)

(assert (not b!1230877))

(assert (not b!1230878))

(assert (not b!1230874))

(assert (not b!1230875))

(assert (not start!102308))

(assert (not b!1230876))

(assert (not b!1230879))

(assert (not b!1230872))

(assert (not b!1230871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

