; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102002 () Bool)

(assert start!102002)

(declare-fun b!1227444 () Bool)

(declare-fun res!816183 () Bool)

(declare-fun e!696998 () Bool)

(assert (=> b!1227444 (=> (not res!816183) (not e!696998))))

(declare-datatypes ((List!27179 0))(
  ( (Nil!27176) (Cons!27175 (h!28384 (_ BitVec 64)) (t!40649 List!27179)) )
))
(declare-fun acc!823 () List!27179)

(declare-fun contains!7094 (List!27179 (_ BitVec 64)) Bool)

(assert (=> b!1227444 (= res!816183 (not (contains!7094 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227445 () Bool)

(declare-fun res!816184 () Bool)

(declare-fun e!697000 () Bool)

(assert (=> b!1227445 (=> res!816184 e!697000)))

(assert (=> b!1227445 (= res!816184 (contains!7094 Nil!27176 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227446 () Bool)

(assert (=> b!1227446 (= e!697000 true)))

(declare-datatypes ((Unit!40596 0))(
  ( (Unit!40597) )
))
(declare-fun lt!558860 () Unit!40596)

(declare-fun noDuplicateSubseq!34 (List!27179 List!27179) Unit!40596)

(assert (=> b!1227446 (= lt!558860 (noDuplicateSubseq!34 Nil!27176 acc!823))))

(declare-fun b!1227447 () Bool)

(declare-fun res!816175 () Bool)

(assert (=> b!1227447 (=> (not res!816175) (not e!696998))))

(declare-fun noDuplicate!1701 (List!27179) Bool)

(assert (=> b!1227447 (= res!816175 (noDuplicate!1701 acc!823))))

(declare-fun b!1227449 () Bool)

(declare-fun res!816180 () Bool)

(assert (=> b!1227449 (=> res!816180 e!697000)))

(declare-fun subseq!481 (List!27179 List!27179) Bool)

(assert (=> b!1227449 (= res!816180 (not (subseq!481 Nil!27176 acc!823)))))

(declare-fun b!1227450 () Bool)

(declare-fun res!816185 () Bool)

(assert (=> b!1227450 (=> (not res!816185) (not e!696998))))

(declare-datatypes ((array!79218 0))(
  ( (array!79219 (arr!38228 (Array (_ BitVec 32) (_ BitVec 64))) (size!38765 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79218)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227450 (= res!816185 (validKeyInArray!0 (select (arr!38228 a!3806) from!3184)))))

(declare-fun b!1227451 () Bool)

(declare-fun res!816182 () Bool)

(assert (=> b!1227451 (=> res!816182 e!697000)))

(assert (=> b!1227451 (= res!816182 (contains!7094 Nil!27176 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227452 () Bool)

(declare-fun res!816177 () Bool)

(assert (=> b!1227452 (=> (not res!816177) (not e!696998))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1227452 (= res!816177 (validKeyInArray!0 k!2913))))

(declare-fun b!1227453 () Bool)

(declare-fun res!816179 () Bool)

(assert (=> b!1227453 (=> (not res!816179) (not e!696998))))

(assert (=> b!1227453 (= res!816179 (not (contains!7094 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227454 () Bool)

(declare-fun res!816181 () Bool)

(assert (=> b!1227454 (=> (not res!816181) (not e!696998))))

(declare-fun arrayNoDuplicates!0 (array!79218 (_ BitVec 32) List!27179) Bool)

(assert (=> b!1227454 (= res!816181 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227448 () Bool)

(declare-fun res!816178 () Bool)

(assert (=> b!1227448 (=> (not res!816178) (not e!696998))))

(declare-fun arrayContainsKey!0 (array!79218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227448 (= res!816178 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!816174 () Bool)

(assert (=> start!102002 (=> (not res!816174) (not e!696998))))

(assert (=> start!102002 (= res!816174 (bvslt (size!38765 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102002 e!696998))

(declare-fun array_inv!29004 (array!79218) Bool)

(assert (=> start!102002 (array_inv!29004 a!3806)))

(assert (=> start!102002 true))

(declare-fun b!1227455 () Bool)

(assert (=> b!1227455 (= e!696998 (not e!697000))))

(declare-fun res!816173 () Bool)

(assert (=> b!1227455 (=> res!816173 e!697000)))

(assert (=> b!1227455 (= res!816173 (bvsgt from!3184 (size!38765 a!3806)))))

(assert (=> b!1227455 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27175 (select (arr!38228 a!3806) from!3184) acc!823))))

(declare-fun b!1227456 () Bool)

(declare-fun res!816176 () Bool)

(assert (=> b!1227456 (=> (not res!816176) (not e!696998))))

(assert (=> b!1227456 (= res!816176 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38765 a!3806)) (bvslt from!3184 (size!38765 a!3806))))))

(assert (= (and start!102002 res!816174) b!1227452))

(assert (= (and b!1227452 res!816177) b!1227456))

(assert (= (and b!1227456 res!816176) b!1227447))

(assert (= (and b!1227447 res!816175) b!1227453))

(assert (= (and b!1227453 res!816179) b!1227444))

(assert (= (and b!1227444 res!816183) b!1227448))

(assert (= (and b!1227448 res!816178) b!1227454))

(assert (= (and b!1227454 res!816181) b!1227450))

(assert (= (and b!1227450 res!816185) b!1227455))

(assert (= (and b!1227455 (not res!816173)) b!1227451))

(assert (= (and b!1227451 (not res!816182)) b!1227445))

(assert (= (and b!1227445 (not res!816184)) b!1227449))

(assert (= (and b!1227449 (not res!816180)) b!1227446))

(declare-fun m!1132249 () Bool)

(assert (=> b!1227448 m!1132249))

(declare-fun m!1132251 () Bool)

(assert (=> b!1227455 m!1132251))

(declare-fun m!1132253 () Bool)

(assert (=> b!1227455 m!1132253))

(assert (=> b!1227450 m!1132251))

(assert (=> b!1227450 m!1132251))

(declare-fun m!1132255 () Bool)

(assert (=> b!1227450 m!1132255))

(declare-fun m!1132257 () Bool)

(assert (=> b!1227445 m!1132257))

(declare-fun m!1132259 () Bool)

(assert (=> b!1227453 m!1132259))

(declare-fun m!1132261 () Bool)

(assert (=> b!1227451 m!1132261))

(declare-fun m!1132263 () Bool)

(assert (=> b!1227447 m!1132263))

(declare-fun m!1132265 () Bool)

(assert (=> b!1227444 m!1132265))

(declare-fun m!1132267 () Bool)

(assert (=> start!102002 m!1132267))

(declare-fun m!1132269 () Bool)

(assert (=> b!1227446 m!1132269))

(declare-fun m!1132271 () Bool)

(assert (=> b!1227454 m!1132271))

(declare-fun m!1132273 () Bool)

(assert (=> b!1227449 m!1132273))

(declare-fun m!1132275 () Bool)

(assert (=> b!1227452 m!1132275))

(push 1)

(assert (not start!102002))

(assert (not b!1227453))

(assert (not b!1227444))

(assert (not b!1227455))

(assert (not b!1227451))

(assert (not b!1227452))

(assert (not b!1227445))

(assert (not b!1227449))

(assert (not b!1227448))

(assert (not b!1227450))

(assert (not b!1227454))

(assert (not b!1227447))

(assert (not b!1227446))

(check-sat)

(pop 1)

