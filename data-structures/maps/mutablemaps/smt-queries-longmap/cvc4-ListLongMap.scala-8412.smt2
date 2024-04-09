; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102410 () Bool)

(assert start!102410)

(declare-fun b!1231572 () Bool)

(declare-fun res!820100 () Bool)

(declare-fun e!698700 () Bool)

(assert (=> b!1231572 (=> (not res!820100) (not e!698700))))

(declare-datatypes ((array!79419 0))(
  ( (array!79420 (arr!38321 (Array (_ BitVec 32) (_ BitVec 64))) (size!38858 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79419)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231572 (= res!820100 (validKeyInArray!0 (select (arr!38321 a!3806) from!3184)))))

(declare-fun b!1231573 () Bool)

(declare-fun res!820096 () Bool)

(assert (=> b!1231573 (=> (not res!820096) (not e!698700))))

(declare-datatypes ((List!27272 0))(
  ( (Nil!27269) (Cons!27268 (h!28477 (_ BitVec 64)) (t!40742 List!27272)) )
))
(declare-fun acc!823 () List!27272)

(declare-fun contains!7187 (List!27272 (_ BitVec 64)) Bool)

(assert (=> b!1231573 (= res!820096 (not (contains!7187 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231574 () Bool)

(declare-fun res!820091 () Bool)

(assert (=> b!1231574 (=> (not res!820091) (not e!698700))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231574 (= res!820091 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231575 () Bool)

(declare-fun e!698699 () Bool)

(assert (=> b!1231575 (= e!698700 (not e!698699))))

(declare-fun res!820094 () Bool)

(assert (=> b!1231575 (=> res!820094 e!698699)))

(assert (=> b!1231575 (= res!820094 (bvsgt from!3184 (size!38858 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79419 (_ BitVec 32) List!27272) Bool)

(assert (=> b!1231575 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27268 (select (arr!38321 a!3806) from!3184) acc!823))))

(declare-fun b!1231576 () Bool)

(declare-fun res!820101 () Bool)

(assert (=> b!1231576 (=> res!820101 e!698699)))

(declare-fun subseq!505 (List!27272 List!27272) Bool)

(assert (=> b!1231576 (= res!820101 (not (subseq!505 Nil!27269 acc!823)))))

(declare-fun b!1231577 () Bool)

(declare-fun res!820092 () Bool)

(assert (=> b!1231577 (=> (not res!820092) (not e!698700))))

(assert (=> b!1231577 (= res!820092 (not (contains!7187 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231579 () Bool)

(declare-fun res!820103 () Bool)

(assert (=> b!1231579 (=> (not res!820103) (not e!698700))))

(declare-fun noDuplicate!1794 (List!27272) Bool)

(assert (=> b!1231579 (= res!820103 (noDuplicate!1794 acc!823))))

(declare-fun b!1231580 () Bool)

(declare-fun res!820099 () Bool)

(assert (=> b!1231580 (=> (not res!820099) (not e!698700))))

(assert (=> b!1231580 (= res!820099 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231581 () Bool)

(declare-fun res!820098 () Bool)

(assert (=> b!1231581 (=> (not res!820098) (not e!698700))))

(assert (=> b!1231581 (= res!820098 (validKeyInArray!0 k!2913))))

(declare-fun b!1231582 () Bool)

(declare-fun res!820097 () Bool)

(assert (=> b!1231582 (=> (not res!820097) (not e!698700))))

(assert (=> b!1231582 (= res!820097 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38858 a!3806)) (bvslt from!3184 (size!38858 a!3806))))))

(declare-fun b!1231583 () Bool)

(assert (=> b!1231583 (= e!698699 true)))

(declare-datatypes ((Unit!40722 0))(
  ( (Unit!40723) )
))
(declare-fun lt!559373 () Unit!40722)

(declare-fun noDuplicateSubseq!55 (List!27272 List!27272) Unit!40722)

(assert (=> b!1231583 (= lt!559373 (noDuplicateSubseq!55 Nil!27269 acc!823))))

(declare-fun b!1231584 () Bool)

(declare-fun res!820102 () Bool)

(assert (=> b!1231584 (=> res!820102 e!698699)))

(assert (=> b!1231584 (= res!820102 (contains!7187 Nil!27269 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1231578 () Bool)

(declare-fun res!820095 () Bool)

(assert (=> b!1231578 (=> res!820095 e!698699)))

(assert (=> b!1231578 (= res!820095 (contains!7187 Nil!27269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!820093 () Bool)

(assert (=> start!102410 (=> (not res!820093) (not e!698700))))

(assert (=> start!102410 (= res!820093 (bvslt (size!38858 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102410 e!698700))

(declare-fun array_inv!29097 (array!79419) Bool)

(assert (=> start!102410 (array_inv!29097 a!3806)))

(assert (=> start!102410 true))

(assert (= (and start!102410 res!820093) b!1231581))

(assert (= (and b!1231581 res!820098) b!1231582))

(assert (= (and b!1231582 res!820097) b!1231579))

(assert (= (and b!1231579 res!820103) b!1231577))

(assert (= (and b!1231577 res!820092) b!1231573))

(assert (= (and b!1231573 res!820096) b!1231574))

(assert (= (and b!1231574 res!820091) b!1231580))

(assert (= (and b!1231580 res!820099) b!1231572))

(assert (= (and b!1231572 res!820100) b!1231575))

(assert (= (and b!1231575 (not res!820094)) b!1231578))

(assert (= (and b!1231578 (not res!820095)) b!1231584))

(assert (= (and b!1231584 (not res!820102)) b!1231576))

(assert (= (and b!1231576 (not res!820101)) b!1231583))

(declare-fun m!1135747 () Bool)

(assert (=> b!1231579 m!1135747))

(declare-fun m!1135749 () Bool)

(assert (=> start!102410 m!1135749))

(declare-fun m!1135751 () Bool)

(assert (=> b!1231581 m!1135751))

(declare-fun m!1135753 () Bool)

(assert (=> b!1231578 m!1135753))

(declare-fun m!1135755 () Bool)

(assert (=> b!1231580 m!1135755))

(declare-fun m!1135757 () Bool)

(assert (=> b!1231577 m!1135757))

(declare-fun m!1135759 () Bool)

(assert (=> b!1231574 m!1135759))

(declare-fun m!1135761 () Bool)

(assert (=> b!1231573 m!1135761))

(declare-fun m!1135763 () Bool)

(assert (=> b!1231575 m!1135763))

(declare-fun m!1135765 () Bool)

(assert (=> b!1231575 m!1135765))

(declare-fun m!1135767 () Bool)

(assert (=> b!1231576 m!1135767))

(declare-fun m!1135769 () Bool)

(assert (=> b!1231584 m!1135769))

(assert (=> b!1231572 m!1135763))

(assert (=> b!1231572 m!1135763))

(declare-fun m!1135771 () Bool)

(assert (=> b!1231572 m!1135771))

(declare-fun m!1135773 () Bool)

(assert (=> b!1231583 m!1135773))

(push 1)

(assert (not b!1231577))

(assert (not b!1231580))

(assert (not b!1231572))

(assert (not b!1231574))

(assert (not b!1231578))

(assert (not b!1231576))

(assert (not b!1231575))

(assert (not b!1231583))

(assert (not b!1231581))

(assert (not b!1231573))

(assert (not b!1231584))

(assert (not b!1231579))

(assert (not start!102410))

(check-sat)

