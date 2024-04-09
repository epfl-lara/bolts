; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102008 () Bool)

(assert start!102008)

(declare-fun b!1227561 () Bool)

(declare-fun res!816295 () Bool)

(declare-fun e!697026 () Bool)

(assert (=> b!1227561 (=> res!816295 e!697026)))

(declare-datatypes ((List!27182 0))(
  ( (Nil!27179) (Cons!27178 (h!28387 (_ BitVec 64)) (t!40652 List!27182)) )
))
(declare-fun acc!823 () List!27182)

(declare-fun subseq!484 (List!27182 List!27182) Bool)

(assert (=> b!1227561 (= res!816295 (not (subseq!484 Nil!27179 acc!823)))))

(declare-fun b!1227562 () Bool)

(declare-fun res!816293 () Bool)

(declare-fun e!697025 () Bool)

(assert (=> b!1227562 (=> (not res!816293) (not e!697025))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79224 0))(
  ( (array!79225 (arr!38231 (Array (_ BitVec 32) (_ BitVec 64))) (size!38768 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79224)

(assert (=> b!1227562 (= res!816293 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38768 a!3806)) (bvslt from!3184 (size!38768 a!3806))))))

(declare-fun res!816292 () Bool)

(assert (=> start!102008 (=> (not res!816292) (not e!697025))))

(assert (=> start!102008 (= res!816292 (bvslt (size!38768 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102008 e!697025))

(declare-fun array_inv!29007 (array!79224) Bool)

(assert (=> start!102008 (array_inv!29007 a!3806)))

(assert (=> start!102008 true))

(declare-fun b!1227563 () Bool)

(declare-fun res!816297 () Bool)

(assert (=> b!1227563 (=> (not res!816297) (not e!697025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227563 (= res!816297 (validKeyInArray!0 (select (arr!38231 a!3806) from!3184)))))

(declare-fun b!1227564 () Bool)

(declare-fun res!816294 () Bool)

(assert (=> b!1227564 (=> (not res!816294) (not e!697025))))

(declare-fun noDuplicate!1704 (List!27182) Bool)

(assert (=> b!1227564 (= res!816294 (noDuplicate!1704 acc!823))))

(declare-fun b!1227565 () Bool)

(declare-fun res!816290 () Bool)

(assert (=> b!1227565 (=> res!816290 e!697026)))

(declare-fun contains!7097 (List!27182 (_ BitVec 64)) Bool)

(assert (=> b!1227565 (= res!816290 (contains!7097 Nil!27179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227566 () Bool)

(assert (=> b!1227566 (= e!697025 (not e!697026))))

(declare-fun res!816291 () Bool)

(assert (=> b!1227566 (=> res!816291 e!697026)))

(assert (=> b!1227566 (= res!816291 (bvsgt from!3184 (size!38768 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79224 (_ BitVec 32) List!27182) Bool)

(assert (=> b!1227566 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27178 (select (arr!38231 a!3806) from!3184) acc!823))))

(declare-fun b!1227567 () Bool)

(declare-fun res!816296 () Bool)

(assert (=> b!1227567 (=> res!816296 e!697026)))

(assert (=> b!1227567 (= res!816296 (contains!7097 Nil!27179 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227568 () Bool)

(declare-fun res!816299 () Bool)

(assert (=> b!1227568 (=> (not res!816299) (not e!697025))))

(assert (=> b!1227568 (= res!816299 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227569 () Bool)

(declare-fun res!816301 () Bool)

(assert (=> b!1227569 (=> (not res!816301) (not e!697025))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1227569 (= res!816301 (validKeyInArray!0 k!2913))))

(declare-fun b!1227570 () Bool)

(declare-fun res!816298 () Bool)

(assert (=> b!1227570 (=> (not res!816298) (not e!697025))))

(assert (=> b!1227570 (= res!816298 (not (contains!7097 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227571 () Bool)

(declare-fun res!816300 () Bool)

(assert (=> b!1227571 (=> (not res!816300) (not e!697025))))

(declare-fun arrayContainsKey!0 (array!79224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227571 (= res!816300 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227572 () Bool)

(assert (=> b!1227572 (= e!697026 true)))

(declare-datatypes ((Unit!40602 0))(
  ( (Unit!40603) )
))
(declare-fun lt!558869 () Unit!40602)

(declare-fun noDuplicateSubseq!37 (List!27182 List!27182) Unit!40602)

(assert (=> b!1227572 (= lt!558869 (noDuplicateSubseq!37 Nil!27179 acc!823))))

(declare-fun b!1227573 () Bool)

(declare-fun res!816302 () Bool)

(assert (=> b!1227573 (=> (not res!816302) (not e!697025))))

(assert (=> b!1227573 (= res!816302 (not (contains!7097 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102008 res!816292) b!1227569))

(assert (= (and b!1227569 res!816301) b!1227562))

(assert (= (and b!1227562 res!816293) b!1227564))

(assert (= (and b!1227564 res!816294) b!1227570))

(assert (= (and b!1227570 res!816298) b!1227573))

(assert (= (and b!1227573 res!816302) b!1227571))

(assert (= (and b!1227571 res!816300) b!1227568))

(assert (= (and b!1227568 res!816299) b!1227563))

(assert (= (and b!1227563 res!816297) b!1227566))

(assert (= (and b!1227566 (not res!816291)) b!1227565))

(assert (= (and b!1227565 (not res!816290)) b!1227567))

(assert (= (and b!1227567 (not res!816296)) b!1227561))

(assert (= (and b!1227561 (not res!816295)) b!1227572))

(declare-fun m!1132333 () Bool)

(assert (=> start!102008 m!1132333))

(declare-fun m!1132335 () Bool)

(assert (=> b!1227569 m!1132335))

(declare-fun m!1132337 () Bool)

(assert (=> b!1227570 m!1132337))

(declare-fun m!1132339 () Bool)

(assert (=> b!1227565 m!1132339))

(declare-fun m!1132341 () Bool)

(assert (=> b!1227572 m!1132341))

(declare-fun m!1132343 () Bool)

(assert (=> b!1227566 m!1132343))

(declare-fun m!1132345 () Bool)

(assert (=> b!1227566 m!1132345))

(declare-fun m!1132347 () Bool)

(assert (=> b!1227573 m!1132347))

(assert (=> b!1227563 m!1132343))

(assert (=> b!1227563 m!1132343))

(declare-fun m!1132349 () Bool)

(assert (=> b!1227563 m!1132349))

(declare-fun m!1132351 () Bool)

(assert (=> b!1227567 m!1132351))

(declare-fun m!1132353 () Bool)

(assert (=> b!1227561 m!1132353))

(declare-fun m!1132355 () Bool)

(assert (=> b!1227568 m!1132355))

(declare-fun m!1132357 () Bool)

(assert (=> b!1227571 m!1132357))

(declare-fun m!1132359 () Bool)

(assert (=> b!1227564 m!1132359))

(push 1)

(assert (not b!1227572))

(assert (not start!102008))

(assert (not b!1227564))

(assert (not b!1227567))

(assert (not b!1227563))

(assert (not b!1227566))

(assert (not b!1227571))

(assert (not b!1227570))

(assert (not b!1227568))

(assert (not b!1227573))

(assert (not b!1227565))

(assert (not b!1227561))

(assert (not b!1227569))

(check-sat)

