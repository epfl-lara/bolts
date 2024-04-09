; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102004 () Bool)

(assert start!102004)

(declare-fun b!1227483 () Bool)

(declare-fun res!816216 () Bool)

(declare-fun e!697008 () Bool)

(assert (=> b!1227483 (=> (not res!816216) (not e!697008))))

(declare-datatypes ((List!27180 0))(
  ( (Nil!27177) (Cons!27176 (h!28385 (_ BitVec 64)) (t!40650 List!27180)) )
))
(declare-fun acc!823 () List!27180)

(declare-fun noDuplicate!1702 (List!27180) Bool)

(assert (=> b!1227483 (= res!816216 (noDuplicate!1702 acc!823))))

(declare-fun b!1227485 () Bool)

(declare-fun res!816223 () Bool)

(declare-fun e!697007 () Bool)

(assert (=> b!1227485 (=> res!816223 e!697007)))

(declare-fun contains!7095 (List!27180 (_ BitVec 64)) Bool)

(assert (=> b!1227485 (= res!816223 (contains!7095 Nil!27177 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227486 () Bool)

(declare-fun res!816217 () Bool)

(assert (=> b!1227486 (=> (not res!816217) (not e!697008))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227486 (= res!816217 (validKeyInArray!0 k!2913))))

(declare-fun b!1227487 () Bool)

(declare-fun res!816214 () Bool)

(assert (=> b!1227487 (=> (not res!816214) (not e!697008))))

(declare-datatypes ((array!79220 0))(
  ( (array!79221 (arr!38229 (Array (_ BitVec 32) (_ BitVec 64))) (size!38766 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79220)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79220 (_ BitVec 32) List!27180) Bool)

(assert (=> b!1227487 (= res!816214 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227488 () Bool)

(declare-fun res!816213 () Bool)

(assert (=> b!1227488 (=> (not res!816213) (not e!697008))))

(assert (=> b!1227488 (= res!816213 (validKeyInArray!0 (select (arr!38229 a!3806) from!3184)))))

(declare-fun b!1227489 () Bool)

(declare-fun res!816212 () Bool)

(assert (=> b!1227489 (=> (not res!816212) (not e!697008))))

(assert (=> b!1227489 (= res!816212 (not (contains!7095 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227490 () Bool)

(assert (=> b!1227490 (= e!697007 true)))

(declare-datatypes ((Unit!40598 0))(
  ( (Unit!40599) )
))
(declare-fun lt!558863 () Unit!40598)

(declare-fun noDuplicateSubseq!35 (List!27180 List!27180) Unit!40598)

(assert (=> b!1227490 (= lt!558863 (noDuplicateSubseq!35 Nil!27177 acc!823))))

(declare-fun b!1227491 () Bool)

(declare-fun res!816222 () Bool)

(assert (=> b!1227491 (=> (not res!816222) (not e!697008))))

(assert (=> b!1227491 (= res!816222 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38766 a!3806)) (bvslt from!3184 (size!38766 a!3806))))))

(declare-fun b!1227492 () Bool)

(declare-fun res!816221 () Bool)

(assert (=> b!1227492 (=> res!816221 e!697007)))

(declare-fun subseq!482 (List!27180 List!27180) Bool)

(assert (=> b!1227492 (= res!816221 (not (subseq!482 Nil!27177 acc!823)))))

(declare-fun b!1227493 () Bool)

(declare-fun res!816219 () Bool)

(assert (=> b!1227493 (=> (not res!816219) (not e!697008))))

(declare-fun arrayContainsKey!0 (array!79220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227493 (= res!816219 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227494 () Bool)

(declare-fun res!816218 () Bool)

(assert (=> b!1227494 (=> res!816218 e!697007)))

(assert (=> b!1227494 (= res!816218 (contains!7095 Nil!27177 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227495 () Bool)

(declare-fun res!816215 () Bool)

(assert (=> b!1227495 (=> (not res!816215) (not e!697008))))

(assert (=> b!1227495 (= res!816215 (not (contains!7095 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!816220 () Bool)

(assert (=> start!102004 (=> (not res!816220) (not e!697008))))

(assert (=> start!102004 (= res!816220 (bvslt (size!38766 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102004 e!697008))

(declare-fun array_inv!29005 (array!79220) Bool)

(assert (=> start!102004 (array_inv!29005 a!3806)))

(assert (=> start!102004 true))

(declare-fun b!1227484 () Bool)

(assert (=> b!1227484 (= e!697008 (not e!697007))))

(declare-fun res!816224 () Bool)

(assert (=> b!1227484 (=> res!816224 e!697007)))

(assert (=> b!1227484 (= res!816224 (bvsgt from!3184 (size!38766 a!3806)))))

(assert (=> b!1227484 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27176 (select (arr!38229 a!3806) from!3184) acc!823))))

(assert (= (and start!102004 res!816220) b!1227486))

(assert (= (and b!1227486 res!816217) b!1227491))

(assert (= (and b!1227491 res!816222) b!1227483))

(assert (= (and b!1227483 res!816216) b!1227489))

(assert (= (and b!1227489 res!816212) b!1227495))

(assert (= (and b!1227495 res!816215) b!1227493))

(assert (= (and b!1227493 res!816219) b!1227487))

(assert (= (and b!1227487 res!816214) b!1227488))

(assert (= (and b!1227488 res!816213) b!1227484))

(assert (= (and b!1227484 (not res!816224)) b!1227494))

(assert (= (and b!1227494 (not res!816218)) b!1227485))

(assert (= (and b!1227485 (not res!816223)) b!1227492))

(assert (= (and b!1227492 (not res!816221)) b!1227490))

(declare-fun m!1132277 () Bool)

(assert (=> b!1227492 m!1132277))

(declare-fun m!1132279 () Bool)

(assert (=> b!1227488 m!1132279))

(assert (=> b!1227488 m!1132279))

(declare-fun m!1132281 () Bool)

(assert (=> b!1227488 m!1132281))

(declare-fun m!1132283 () Bool)

(assert (=> b!1227483 m!1132283))

(assert (=> b!1227484 m!1132279))

(declare-fun m!1132285 () Bool)

(assert (=> b!1227484 m!1132285))

(declare-fun m!1132287 () Bool)

(assert (=> b!1227487 m!1132287))

(declare-fun m!1132289 () Bool)

(assert (=> b!1227486 m!1132289))

(declare-fun m!1132291 () Bool)

(assert (=> b!1227485 m!1132291))

(declare-fun m!1132293 () Bool)

(assert (=> b!1227490 m!1132293))

(declare-fun m!1132295 () Bool)

(assert (=> b!1227489 m!1132295))

(declare-fun m!1132297 () Bool)

(assert (=> start!102004 m!1132297))

(declare-fun m!1132299 () Bool)

(assert (=> b!1227493 m!1132299))

(declare-fun m!1132301 () Bool)

(assert (=> b!1227495 m!1132301))

(declare-fun m!1132303 () Bool)

(assert (=> b!1227494 m!1132303))

(push 1)

(assert (not b!1227495))

(assert (not b!1227490))

(assert (not b!1227483))

(assert (not b!1227485))

(assert (not b!1227486))

(assert (not b!1227494))

(assert (not b!1227492))

(assert (not b!1227488))

(assert (not b!1227484))

(assert (not b!1227493))

(assert (not start!102004))

(assert (not b!1227487))

(assert (not b!1227489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

