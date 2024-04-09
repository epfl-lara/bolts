; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102220 () Bool)

(assert start!102220)

(declare-fun b!1230069 () Bool)

(declare-fun e!698037 () Bool)

(declare-datatypes ((array!79334 0))(
  ( (array!79335 (arr!38283 (Array (_ BitVec 32) (_ BitVec 64))) (size!38820 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79334)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27234 0))(
  ( (Nil!27231) (Cons!27230 (h!28439 (_ BitVec 64)) (t!40704 List!27234)) )
))
(declare-fun arrayNoDuplicates!0 (array!79334 (_ BitVec 32) List!27234) Bool)

(assert (=> b!1230069 (= e!698037 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27230 (select (arr!38283 a!3806) from!3184) Nil!27231)))))

(declare-fun b!1230070 () Bool)

(declare-fun res!818667 () Bool)

(declare-fun e!698036 () Bool)

(assert (=> b!1230070 (=> (not res!818667) (not e!698036))))

(declare-fun acc!823 () List!27234)

(assert (=> b!1230070 (= res!818667 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!818668 () Bool)

(assert (=> start!102220 (=> (not res!818668) (not e!698036))))

(assert (=> start!102220 (= res!818668 (bvslt (size!38820 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102220 e!698036))

(declare-fun array_inv!29059 (array!79334) Bool)

(assert (=> start!102220 (array_inv!29059 a!3806)))

(assert (=> start!102220 true))

(declare-fun b!1230071 () Bool)

(declare-fun res!818660 () Bool)

(assert (=> b!1230071 (=> (not res!818660) (not e!698036))))

(declare-fun noDuplicate!1756 (List!27234) Bool)

(assert (=> b!1230071 (= res!818660 (noDuplicate!1756 acc!823))))

(declare-fun b!1230072 () Bool)

(assert (=> b!1230072 (= e!698036 (not true))))

(declare-fun arrayContainsKey!0 (array!79334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230072 (not (arrayContainsKey!0 a!3806 (select (arr!38283 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40706 0))(
  ( (Unit!40707) )
))
(declare-fun lt!559267 () Unit!40706)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79334 (_ BitVec 32) (_ BitVec 64) List!27234) Unit!40706)

(assert (=> b!1230072 (= lt!559267 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38283 a!3806) from!3184) (Cons!27230 (select (arr!38283 a!3806) from!3184) Nil!27231)))))

(assert (=> b!1230072 e!698037))

(declare-fun res!818665 () Bool)

(assert (=> b!1230072 (=> (not res!818665) (not e!698037))))

(assert (=> b!1230072 (= res!818665 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27231))))

(declare-fun lt!559268 () Unit!40706)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79334 List!27234 List!27234 (_ BitVec 32)) Unit!40706)

(assert (=> b!1230072 (= lt!559268 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27231 from!3184))))

(assert (=> b!1230072 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27230 (select (arr!38283 a!3806) from!3184) acc!823))))

(declare-fun b!1230073 () Bool)

(declare-fun res!818669 () Bool)

(assert (=> b!1230073 (=> (not res!818669) (not e!698036))))

(assert (=> b!1230073 (= res!818669 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38820 a!3806)) (bvslt from!3184 (size!38820 a!3806))))))

(declare-fun b!1230074 () Bool)

(declare-fun res!818663 () Bool)

(assert (=> b!1230074 (=> (not res!818663) (not e!698036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230074 (= res!818663 (validKeyInArray!0 (select (arr!38283 a!3806) from!3184)))))

(declare-fun b!1230075 () Bool)

(declare-fun res!818664 () Bool)

(assert (=> b!1230075 (=> (not res!818664) (not e!698036))))

(declare-fun contains!7149 (List!27234 (_ BitVec 64)) Bool)

(assert (=> b!1230075 (= res!818664 (not (contains!7149 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230076 () Bool)

(declare-fun res!818661 () Bool)

(assert (=> b!1230076 (=> (not res!818661) (not e!698036))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1230076 (= res!818661 (validKeyInArray!0 k!2913))))

(declare-fun b!1230077 () Bool)

(declare-fun res!818666 () Bool)

(assert (=> b!1230077 (=> (not res!818666) (not e!698036))))

(assert (=> b!1230077 (= res!818666 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230078 () Bool)

(declare-fun res!818662 () Bool)

(assert (=> b!1230078 (=> (not res!818662) (not e!698036))))

(assert (=> b!1230078 (= res!818662 (not (contains!7149 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102220 res!818668) b!1230076))

(assert (= (and b!1230076 res!818661) b!1230073))

(assert (= (and b!1230073 res!818669) b!1230071))

(assert (= (and b!1230071 res!818660) b!1230078))

(assert (= (and b!1230078 res!818662) b!1230075))

(assert (= (and b!1230075 res!818664) b!1230077))

(assert (= (and b!1230077 res!818666) b!1230070))

(assert (= (and b!1230070 res!818667) b!1230074))

(assert (= (and b!1230074 res!818663) b!1230072))

(assert (= (and b!1230072 res!818665) b!1230069))

(declare-fun m!1134593 () Bool)

(assert (=> b!1230077 m!1134593))

(declare-fun m!1134595 () Bool)

(assert (=> b!1230070 m!1134595))

(declare-fun m!1134597 () Bool)

(assert (=> start!102220 m!1134597))

(declare-fun m!1134599 () Bool)

(assert (=> b!1230074 m!1134599))

(assert (=> b!1230074 m!1134599))

(declare-fun m!1134601 () Bool)

(assert (=> b!1230074 m!1134601))

(declare-fun m!1134603 () Bool)

(assert (=> b!1230072 m!1134603))

(declare-fun m!1134605 () Bool)

(assert (=> b!1230072 m!1134605))

(assert (=> b!1230072 m!1134599))

(declare-fun m!1134607 () Bool)

(assert (=> b!1230072 m!1134607))

(assert (=> b!1230072 m!1134599))

(declare-fun m!1134609 () Bool)

(assert (=> b!1230072 m!1134609))

(assert (=> b!1230072 m!1134599))

(declare-fun m!1134611 () Bool)

(assert (=> b!1230072 m!1134611))

(declare-fun m!1134613 () Bool)

(assert (=> b!1230078 m!1134613))

(declare-fun m!1134615 () Bool)

(assert (=> b!1230075 m!1134615))

(assert (=> b!1230069 m!1134599))

(declare-fun m!1134617 () Bool)

(assert (=> b!1230069 m!1134617))

(declare-fun m!1134619 () Bool)

(assert (=> b!1230071 m!1134619))

(declare-fun m!1134621 () Bool)

(assert (=> b!1230076 m!1134621))

(push 1)

(assert (not b!1230072))

(assert (not start!102220))

(assert (not b!1230069))

(assert (not b!1230074))

(assert (not b!1230078))

(assert (not b!1230077))

(assert (not b!1230075))

(assert (not b!1230070))

(assert (not b!1230071))

(assert (not b!1230076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

