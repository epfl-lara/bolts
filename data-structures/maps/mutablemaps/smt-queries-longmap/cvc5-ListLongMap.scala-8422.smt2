; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102614 () Bool)

(assert start!102614)

(declare-fun b!1233192 () Bool)

(declare-fun res!821529 () Bool)

(declare-fun e!699619 () Bool)

(assert (=> b!1233192 (=> res!821529 e!699619)))

(declare-datatypes ((List!27300 0))(
  ( (Nil!27297) (Cons!27296 (h!28505 (_ BitVec 64)) (t!40770 List!27300)) )
))
(declare-fun lt!559591 () List!27300)

(declare-fun noDuplicate!1822 (List!27300) Bool)

(assert (=> b!1233192 (= res!821529 (not (noDuplicate!1822 lt!559591)))))

(declare-fun res!821521 () Bool)

(declare-fun e!699621 () Bool)

(assert (=> start!102614 (=> (not res!821521) (not e!699621))))

(declare-datatypes ((array!79484 0))(
  ( (array!79485 (arr!38349 (Array (_ BitVec 32) (_ BitVec 64))) (size!38886 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79484)

(assert (=> start!102614 (= res!821521 (bvslt (size!38886 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102614 e!699621))

(declare-fun array_inv!29125 (array!79484) Bool)

(assert (=> start!102614 (array_inv!29125 a!3806)))

(assert (=> start!102614 true))

(declare-fun b!1233193 () Bool)

(assert (=> b!1233193 (= e!699621 (not e!699619))))

(declare-fun res!821526 () Bool)

(assert (=> b!1233193 (=> res!821526 e!699619)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1233193 (= res!821526 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1233193 (= lt!559591 (Cons!27296 (select (arr!38349 a!3806) from!3184) Nil!27297))))

(declare-fun e!699620 () Bool)

(assert (=> b!1233193 e!699620))

(declare-fun res!821530 () Bool)

(assert (=> b!1233193 (=> (not res!821530) (not e!699620))))

(declare-fun arrayNoDuplicates!0 (array!79484 (_ BitVec 32) List!27300) Bool)

(assert (=> b!1233193 (= res!821530 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27297))))

(declare-datatypes ((Unit!40778 0))(
  ( (Unit!40779) )
))
(declare-fun lt!559590 () Unit!40778)

(declare-fun acc!823 () List!27300)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79484 List!27300 List!27300 (_ BitVec 32)) Unit!40778)

(assert (=> b!1233193 (= lt!559590 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27297 from!3184))))

(assert (=> b!1233193 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27296 (select (arr!38349 a!3806) from!3184) acc!823))))

(declare-fun b!1233194 () Bool)

(assert (=> b!1233194 (= e!699619 true)))

(declare-fun lt!559589 () Bool)

(declare-fun contains!7215 (List!27300 (_ BitVec 64)) Bool)

(assert (=> b!1233194 (= lt!559589 (contains!7215 lt!559591 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233195 () Bool)

(declare-fun res!821527 () Bool)

(assert (=> b!1233195 (=> (not res!821527) (not e!699621))))

(assert (=> b!1233195 (= res!821527 (noDuplicate!1822 acc!823))))

(declare-fun b!1233196 () Bool)

(declare-fun res!821524 () Bool)

(assert (=> b!1233196 (=> (not res!821524) (not e!699621))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233196 (= res!821524 (validKeyInArray!0 k!2913))))

(declare-fun b!1233197 () Bool)

(declare-fun res!821519 () Bool)

(assert (=> b!1233197 (=> (not res!821519) (not e!699621))))

(assert (=> b!1233197 (= res!821519 (validKeyInArray!0 (select (arr!38349 a!3806) from!3184)))))

(declare-fun b!1233198 () Bool)

(declare-fun res!821520 () Bool)

(assert (=> b!1233198 (=> (not res!821520) (not e!699621))))

(assert (=> b!1233198 (= res!821520 (not (contains!7215 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233199 () Bool)

(assert (=> b!1233199 (= e!699620 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27296 (select (arr!38349 a!3806) from!3184) Nil!27297)))))

(declare-fun b!1233200 () Bool)

(declare-fun res!821525 () Bool)

(assert (=> b!1233200 (=> (not res!821525) (not e!699621))))

(assert (=> b!1233200 (= res!821525 (not (contains!7215 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233201 () Bool)

(declare-fun res!821522 () Bool)

(assert (=> b!1233201 (=> (not res!821522) (not e!699621))))

(assert (=> b!1233201 (= res!821522 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233202 () Bool)

(declare-fun res!821523 () Bool)

(assert (=> b!1233202 (=> (not res!821523) (not e!699621))))

(assert (=> b!1233202 (= res!821523 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38886 a!3806)) (bvslt from!3184 (size!38886 a!3806))))))

(declare-fun b!1233203 () Bool)

(declare-fun res!821531 () Bool)

(assert (=> b!1233203 (=> res!821531 e!699619)))

(assert (=> b!1233203 (= res!821531 (contains!7215 lt!559591 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233204 () Bool)

(declare-fun res!821528 () Bool)

(assert (=> b!1233204 (=> (not res!821528) (not e!699621))))

(declare-fun arrayContainsKey!0 (array!79484 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233204 (= res!821528 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102614 res!821521) b!1233196))

(assert (= (and b!1233196 res!821524) b!1233202))

(assert (= (and b!1233202 res!821523) b!1233195))

(assert (= (and b!1233195 res!821527) b!1233200))

(assert (= (and b!1233200 res!821525) b!1233198))

(assert (= (and b!1233198 res!821520) b!1233204))

(assert (= (and b!1233204 res!821528) b!1233201))

(assert (= (and b!1233201 res!821522) b!1233197))

(assert (= (and b!1233197 res!821519) b!1233193))

(assert (= (and b!1233193 res!821530) b!1233199))

(assert (= (and b!1233193 (not res!821526)) b!1233192))

(assert (= (and b!1233192 (not res!821529)) b!1233203))

(assert (= (and b!1233203 (not res!821531)) b!1233194))

(declare-fun m!1137347 () Bool)

(assert (=> b!1233194 m!1137347))

(declare-fun m!1137349 () Bool)

(assert (=> b!1233195 m!1137349))

(declare-fun m!1137351 () Bool)

(assert (=> b!1233197 m!1137351))

(assert (=> b!1233197 m!1137351))

(declare-fun m!1137353 () Bool)

(assert (=> b!1233197 m!1137353))

(assert (=> b!1233199 m!1137351))

(declare-fun m!1137355 () Bool)

(assert (=> b!1233199 m!1137355))

(declare-fun m!1137357 () Bool)

(assert (=> b!1233192 m!1137357))

(declare-fun m!1137359 () Bool)

(assert (=> b!1233200 m!1137359))

(declare-fun m!1137361 () Bool)

(assert (=> start!102614 m!1137361))

(declare-fun m!1137363 () Bool)

(assert (=> b!1233204 m!1137363))

(declare-fun m!1137365 () Bool)

(assert (=> b!1233203 m!1137365))

(declare-fun m!1137367 () Bool)

(assert (=> b!1233201 m!1137367))

(declare-fun m!1137369 () Bool)

(assert (=> b!1233198 m!1137369))

(assert (=> b!1233193 m!1137351))

(declare-fun m!1137371 () Bool)

(assert (=> b!1233193 m!1137371))

(declare-fun m!1137373 () Bool)

(assert (=> b!1233193 m!1137373))

(declare-fun m!1137375 () Bool)

(assert (=> b!1233193 m!1137375))

(declare-fun m!1137377 () Bool)

(assert (=> b!1233196 m!1137377))

(push 1)

(assert (not b!1233198))

(assert (not b!1233197))

(assert (not b!1233204))

(assert (not b!1233201))

(assert (not b!1233193))

(assert (not b!1233200))

(assert (not b!1233203))

(assert (not b!1233192))

(assert (not b!1233196))

(assert (not b!1233199))

(assert (not b!1233194))

(assert (not start!102614))

(assert (not b!1233195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

