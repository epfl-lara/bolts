; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102302 () Bool)

(assert start!102302)

(declare-fun b!1230790 () Bool)

(declare-fun res!819363 () Bool)

(declare-fun e!698299 () Bool)

(assert (=> b!1230790 (=> (not res!819363) (not e!698299))))

(declare-datatypes ((List!27257 0))(
  ( (Nil!27254) (Cons!27253 (h!28462 (_ BitVec 64)) (t!40727 List!27257)) )
))
(declare-fun acc!823 () List!27257)

(declare-fun contains!7172 (List!27257 (_ BitVec 64)) Bool)

(assert (=> b!1230790 (= res!819363 (not (contains!7172 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230791 () Bool)

(declare-fun res!819364 () Bool)

(assert (=> b!1230791 (=> (not res!819364) (not e!698299))))

(declare-fun noDuplicate!1779 (List!27257) Bool)

(assert (=> b!1230791 (= res!819364 (noDuplicate!1779 acc!823))))

(declare-fun b!1230792 () Bool)

(declare-fun res!819365 () Bool)

(assert (=> b!1230792 (=> (not res!819365) (not e!698299))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230792 (= res!819365 (validKeyInArray!0 k!2913))))

(declare-fun b!1230793 () Bool)

(declare-fun res!819361 () Bool)

(assert (=> b!1230793 (=> (not res!819361) (not e!698299))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79383 0))(
  ( (array!79384 (arr!38306 (Array (_ BitVec 32) (_ BitVec 64))) (size!38843 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79383)

(assert (=> b!1230793 (= res!819361 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38843 a!3806)) (bvslt from!3184 (size!38843 a!3806))))))

(declare-fun b!1230794 () Bool)

(declare-fun res!819357 () Bool)

(assert (=> b!1230794 (=> (not res!819357) (not e!698299))))

(assert (=> b!1230794 (= res!819357 (not (contains!7172 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819358 () Bool)

(assert (=> start!102302 (=> (not res!819358) (not e!698299))))

(assert (=> start!102302 (= res!819358 (bvslt (size!38843 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102302 e!698299))

(declare-fun array_inv!29082 (array!79383) Bool)

(assert (=> start!102302 (array_inv!29082 a!3806)))

(assert (=> start!102302 true))

(declare-fun b!1230795 () Bool)

(declare-fun res!819362 () Bool)

(assert (=> b!1230795 (=> (not res!819362) (not e!698299))))

(declare-fun arrayNoDuplicates!0 (array!79383 (_ BitVec 32) List!27257) Bool)

(assert (=> b!1230795 (= res!819362 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230796 () Bool)

(declare-fun res!819360 () Bool)

(assert (=> b!1230796 (=> (not res!819360) (not e!698299))))

(assert (=> b!1230796 (= res!819360 (validKeyInArray!0 (select (arr!38306 a!3806) from!3184)))))

(declare-fun b!1230797 () Bool)

(declare-fun res!819359 () Bool)

(assert (=> b!1230797 (=> (not res!819359) (not e!698299))))

(declare-fun arrayContainsKey!0 (array!79383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230797 (= res!819359 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230798 () Bool)

(assert (=> b!1230798 (= e!698299 (not (bvsle from!3184 (size!38843 a!3806))))))

(assert (=> b!1230798 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27253 (select (arr!38306 a!3806) from!3184) acc!823))))

(assert (= (and start!102302 res!819358) b!1230792))

(assert (= (and b!1230792 res!819365) b!1230793))

(assert (= (and b!1230793 res!819361) b!1230791))

(assert (= (and b!1230791 res!819364) b!1230794))

(assert (= (and b!1230794 res!819357) b!1230790))

(assert (= (and b!1230790 res!819363) b!1230797))

(assert (= (and b!1230797 res!819359) b!1230795))

(assert (= (and b!1230795 res!819362) b!1230796))

(assert (= (and b!1230796 res!819360) b!1230798))

(declare-fun m!1135161 () Bool)

(assert (=> b!1230794 m!1135161))

(declare-fun m!1135163 () Bool)

(assert (=> start!102302 m!1135163))

(declare-fun m!1135165 () Bool)

(assert (=> b!1230792 m!1135165))

(declare-fun m!1135167 () Bool)

(assert (=> b!1230795 m!1135167))

(declare-fun m!1135169 () Bool)

(assert (=> b!1230798 m!1135169))

(declare-fun m!1135171 () Bool)

(assert (=> b!1230798 m!1135171))

(declare-fun m!1135173 () Bool)

(assert (=> b!1230791 m!1135173))

(declare-fun m!1135175 () Bool)

(assert (=> b!1230797 m!1135175))

(declare-fun m!1135177 () Bool)

(assert (=> b!1230790 m!1135177))

(assert (=> b!1230796 m!1135169))

(assert (=> b!1230796 m!1135169))

(declare-fun m!1135179 () Bool)

(assert (=> b!1230796 m!1135179))

(push 1)

(assert (not b!1230791))

(assert (not b!1230796))

(assert (not b!1230794))

(assert (not b!1230790))

(assert (not b!1230792))

(assert (not b!1230795))

(assert (not start!102302))

(assert (not b!1230798))

(assert (not b!1230797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

