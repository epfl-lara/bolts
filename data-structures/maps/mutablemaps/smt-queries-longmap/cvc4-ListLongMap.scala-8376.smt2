; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101900 () Bool)

(assert start!101900)

(declare-fun b!1226719 () Bool)

(declare-fun res!815489 () Bool)

(declare-fun e!696657 () Bool)

(assert (=> b!1226719 (=> (not res!815489) (not e!696657))))

(declare-datatypes ((List!27164 0))(
  ( (Nil!27161) (Cons!27160 (h!28369 (_ BitVec 64)) (t!40634 List!27164)) )
))
(declare-fun acc!823 () List!27164)

(declare-fun contains!7079 (List!27164 (_ BitVec 64)) Bool)

(assert (=> b!1226719 (= res!815489 (not (contains!7079 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!815490 () Bool)

(assert (=> start!101900 (=> (not res!815490) (not e!696657))))

(declare-datatypes ((array!79182 0))(
  ( (array!79183 (arr!38213 (Array (_ BitVec 32) (_ BitVec 64))) (size!38750 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79182)

(assert (=> start!101900 (= res!815490 (bvslt (size!38750 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101900 e!696657))

(declare-fun array_inv!28989 (array!79182) Bool)

(assert (=> start!101900 (array_inv!28989 a!3806)))

(assert (=> start!101900 true))

(declare-fun b!1226720 () Bool)

(declare-fun res!815491 () Bool)

(assert (=> b!1226720 (=> (not res!815491) (not e!696657))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226720 (= res!815491 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38750 a!3806)) (bvslt from!3184 (size!38750 a!3806))))))

(declare-fun b!1226721 () Bool)

(declare-fun res!815484 () Bool)

(assert (=> b!1226721 (=> (not res!815484) (not e!696657))))

(assert (=> b!1226721 (= res!815484 (not (contains!7079 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226722 () Bool)

(declare-fun res!815492 () Bool)

(assert (=> b!1226722 (=> (not res!815492) (not e!696657))))

(declare-fun noDuplicate!1686 (List!27164) Bool)

(assert (=> b!1226722 (= res!815492 (noDuplicate!1686 acc!823))))

(declare-fun b!1226723 () Bool)

(declare-fun res!815487 () Bool)

(assert (=> b!1226723 (=> (not res!815487) (not e!696657))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226723 (= res!815487 (validKeyInArray!0 (select (arr!38213 a!3806) from!3184)))))

(declare-fun b!1226724 () Bool)

(declare-fun res!815485 () Bool)

(assert (=> b!1226724 (=> (not res!815485) (not e!696657))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226724 (= res!815485 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226725 () Bool)

(declare-fun res!815488 () Bool)

(assert (=> b!1226725 (=> (not res!815488) (not e!696657))))

(declare-fun arrayNoDuplicates!0 (array!79182 (_ BitVec 32) List!27164) Bool)

(assert (=> b!1226725 (= res!815488 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226726 () Bool)

(declare-fun res!815486 () Bool)

(assert (=> b!1226726 (=> (not res!815486) (not e!696657))))

(assert (=> b!1226726 (= res!815486 (validKeyInArray!0 k!2913))))

(declare-fun b!1226727 () Bool)

(assert (=> b!1226727 (= e!696657 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (= (and start!101900 res!815490) b!1226726))

(assert (= (and b!1226726 res!815486) b!1226720))

(assert (= (and b!1226720 res!815491) b!1226722))

(assert (= (and b!1226722 res!815492) b!1226721))

(assert (= (and b!1226721 res!815484) b!1226719))

(assert (= (and b!1226719 res!815489) b!1226724))

(assert (= (and b!1226724 res!815485) b!1226725))

(assert (= (and b!1226725 res!815488) b!1226723))

(assert (= (and b!1226723 res!815487) b!1226727))

(declare-fun m!1131731 () Bool)

(assert (=> b!1226722 m!1131731))

(declare-fun m!1131733 () Bool)

(assert (=> b!1226726 m!1131733))

(declare-fun m!1131735 () Bool)

(assert (=> start!101900 m!1131735))

(declare-fun m!1131737 () Bool)

(assert (=> b!1226725 m!1131737))

(declare-fun m!1131739 () Bool)

(assert (=> b!1226721 m!1131739))

(declare-fun m!1131741 () Bool)

(assert (=> b!1226724 m!1131741))

(declare-fun m!1131743 () Bool)

(assert (=> b!1226719 m!1131743))

(declare-fun m!1131745 () Bool)

(assert (=> b!1226723 m!1131745))

(assert (=> b!1226723 m!1131745))

(declare-fun m!1131747 () Bool)

(assert (=> b!1226723 m!1131747))

(push 1)

(assert (not b!1226724))

(assert (not b!1226725))

(assert (not b!1226723))

(assert (not b!1226726))

(assert (not b!1226722))

(assert (not b!1226719))

