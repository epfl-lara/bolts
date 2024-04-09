; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102490 () Bool)

(assert start!102490)

(declare-fun res!820768 () Bool)

(declare-fun e!698986 () Bool)

(assert (=> start!102490 (=> (not res!820768) (not e!698986))))

(declare-datatypes ((array!79460 0))(
  ( (array!79461 (arr!38340 (Array (_ BitVec 32) (_ BitVec 64))) (size!38877 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79460)

(assert (=> start!102490 (= res!820768 (bvslt (size!38877 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102490 e!698986))

(declare-fun array_inv!29116 (array!79460) Bool)

(assert (=> start!102490 (array_inv!29116 a!3806)))

(assert (=> start!102490 true))

(declare-fun b!1232277 () Bool)

(declare-fun e!698985 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27291 0))(
  ( (Nil!27288) (Cons!27287 (h!28496 (_ BitVec 64)) (t!40761 List!27291)) )
))
(declare-fun arrayNoDuplicates!0 (array!79460 (_ BitVec 32) List!27291) Bool)

(assert (=> b!1232277 (= e!698985 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27287 (select (arr!38340 a!3806) from!3184) Nil!27288)))))

(declare-fun b!1232278 () Bool)

(declare-fun res!820763 () Bool)

(assert (=> b!1232278 (=> (not res!820763) (not e!698986))))

(declare-fun acc!823 () List!27291)

(declare-fun noDuplicate!1813 (List!27291) Bool)

(assert (=> b!1232278 (= res!820763 (noDuplicate!1813 acc!823))))

(declare-fun b!1232279 () Bool)

(declare-fun res!820764 () Bool)

(assert (=> b!1232279 (=> (not res!820764) (not e!698986))))

(assert (=> b!1232279 (= res!820764 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38877 a!3806)) (bvslt from!3184 (size!38877 a!3806))))))

(declare-fun b!1232280 () Bool)

(declare-fun res!820766 () Bool)

(assert (=> b!1232280 (=> (not res!820766) (not e!698986))))

(declare-fun contains!7206 (List!27291 (_ BitVec 64)) Bool)

(assert (=> b!1232280 (= res!820766 (not (contains!7206 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232281 () Bool)

(declare-fun res!820761 () Bool)

(assert (=> b!1232281 (=> (not res!820761) (not e!698986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232281 (= res!820761 (validKeyInArray!0 (select (arr!38340 a!3806) from!3184)))))

(declare-fun b!1232282 () Bool)

(declare-fun res!820769 () Bool)

(assert (=> b!1232282 (=> (not res!820769) (not e!698986))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232282 (= res!820769 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232283 () Bool)

(declare-fun res!820765 () Bool)

(assert (=> b!1232283 (=> (not res!820765) (not e!698986))))

(assert (=> b!1232283 (= res!820765 (validKeyInArray!0 k!2913))))

(declare-fun b!1232284 () Bool)

(declare-fun res!820762 () Bool)

(assert (=> b!1232284 (=> (not res!820762) (not e!698986))))

(assert (=> b!1232284 (= res!820762 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232285 () Bool)

(assert (=> b!1232285 (= e!698986 (not true))))

(assert (=> b!1232285 e!698985))

(declare-fun res!820760 () Bool)

(assert (=> b!1232285 (=> (not res!820760) (not e!698985))))

(assert (=> b!1232285 (= res!820760 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27288))))

(declare-datatypes ((Unit!40760 0))(
  ( (Unit!40761) )
))
(declare-fun lt!559451 () Unit!40760)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79460 List!27291 List!27291 (_ BitVec 32)) Unit!40760)

(assert (=> b!1232285 (= lt!559451 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27288 from!3184))))

(assert (=> b!1232285 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27287 (select (arr!38340 a!3806) from!3184) acc!823))))

(declare-fun b!1232286 () Bool)

(declare-fun res!820767 () Bool)

(assert (=> b!1232286 (=> (not res!820767) (not e!698986))))

(assert (=> b!1232286 (= res!820767 (not (contains!7206 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102490 res!820768) b!1232283))

(assert (= (and b!1232283 res!820765) b!1232279))

(assert (= (and b!1232279 res!820764) b!1232278))

(assert (= (and b!1232278 res!820763) b!1232286))

(assert (= (and b!1232286 res!820767) b!1232280))

(assert (= (and b!1232280 res!820766) b!1232282))

(assert (= (and b!1232282 res!820769) b!1232284))

(assert (= (and b!1232284 res!820762) b!1232281))

(assert (= (and b!1232281 res!820761) b!1232285))

(assert (= (and b!1232285 res!820760) b!1232277))

(declare-fun m!1136351 () Bool)

(assert (=> start!102490 m!1136351))

(declare-fun m!1136353 () Bool)

(assert (=> b!1232285 m!1136353))

(declare-fun m!1136355 () Bool)

(assert (=> b!1232285 m!1136355))

(declare-fun m!1136357 () Bool)

(assert (=> b!1232285 m!1136357))

(declare-fun m!1136359 () Bool)

(assert (=> b!1232285 m!1136359))

(assert (=> b!1232277 m!1136357))

(declare-fun m!1136361 () Bool)

(assert (=> b!1232277 m!1136361))

(declare-fun m!1136363 () Bool)

(assert (=> b!1232283 m!1136363))

(declare-fun m!1136365 () Bool)

(assert (=> b!1232278 m!1136365))

(assert (=> b!1232281 m!1136357))

(assert (=> b!1232281 m!1136357))

(declare-fun m!1136367 () Bool)

(assert (=> b!1232281 m!1136367))

(declare-fun m!1136369 () Bool)

(assert (=> b!1232282 m!1136369))

(declare-fun m!1136371 () Bool)

(assert (=> b!1232280 m!1136371))

(declare-fun m!1136373 () Bool)

(assert (=> b!1232286 m!1136373))

(declare-fun m!1136375 () Bool)

(assert (=> b!1232284 m!1136375))

(push 1)

(assert (not start!102490))

(assert (not b!1232284))

(assert (not b!1232278))

(assert (not b!1232282))

(assert (not b!1232281))

(assert (not b!1232283))

(assert (not b!1232277))

(assert (not b!1232286))

(assert (not b!1232280))

(assert (not b!1232285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

