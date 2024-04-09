; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102488 () Bool)

(assert start!102488)

(declare-fun b!1232248 () Bool)

(declare-fun res!820739 () Bool)

(declare-fun e!698976 () Bool)

(assert (=> b!1232248 (=> (not res!820739) (not e!698976))))

(declare-datatypes ((array!79458 0))(
  ( (array!79459 (arr!38339 (Array (_ BitVec 32) (_ BitVec 64))) (size!38876 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79458)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232248 (= res!820739 (validKeyInArray!0 (select (arr!38339 a!3806) from!3184)))))

(declare-fun b!1232249 () Bool)

(assert (=> b!1232249 (= e!698976 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-fun e!698977 () Bool)

(assert (=> b!1232249 e!698977))

(declare-fun res!820736 () Bool)

(assert (=> b!1232249 (=> (not res!820736) (not e!698977))))

(declare-datatypes ((List!27290 0))(
  ( (Nil!27287) (Cons!27286 (h!28495 (_ BitVec 64)) (t!40760 List!27290)) )
))
(declare-fun arrayNoDuplicates!0 (array!79458 (_ BitVec 32) List!27290) Bool)

(assert (=> b!1232249 (= res!820736 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27287))))

(declare-fun acc!823 () List!27290)

(declare-datatypes ((Unit!40758 0))(
  ( (Unit!40759) )
))
(declare-fun lt!559448 () Unit!40758)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79458 List!27290 List!27290 (_ BitVec 32)) Unit!40758)

(assert (=> b!1232249 (= lt!559448 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27287 from!3184))))

(assert (=> b!1232249 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27286 (select (arr!38339 a!3806) from!3184) acc!823))))

(declare-fun b!1232250 () Bool)

(declare-fun res!820733 () Bool)

(assert (=> b!1232250 (=> (not res!820733) (not e!698976))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1232250 (= res!820733 (validKeyInArray!0 k!2913))))

(declare-fun b!1232251 () Bool)

(assert (=> b!1232251 (= e!698977 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27286 (select (arr!38339 a!3806) from!3184) Nil!27287)))))

(declare-fun b!1232252 () Bool)

(declare-fun res!820732 () Bool)

(assert (=> b!1232252 (=> (not res!820732) (not e!698976))))

(assert (=> b!1232252 (= res!820732 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232247 () Bool)

(declare-fun res!820730 () Bool)

(assert (=> b!1232247 (=> (not res!820730) (not e!698976))))

(declare-fun noDuplicate!1812 (List!27290) Bool)

(assert (=> b!1232247 (= res!820730 (noDuplicate!1812 acc!823))))

(declare-fun res!820735 () Bool)

(assert (=> start!102488 (=> (not res!820735) (not e!698976))))

(assert (=> start!102488 (= res!820735 (bvslt (size!38876 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102488 e!698976))

(declare-fun array_inv!29115 (array!79458) Bool)

(assert (=> start!102488 (array_inv!29115 a!3806)))

(assert (=> start!102488 true))

(declare-fun b!1232253 () Bool)

(declare-fun res!820734 () Bool)

(assert (=> b!1232253 (=> (not res!820734) (not e!698976))))

(declare-fun contains!7205 (List!27290 (_ BitVec 64)) Bool)

(assert (=> b!1232253 (= res!820734 (not (contains!7205 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232254 () Bool)

(declare-fun res!820731 () Bool)

(assert (=> b!1232254 (=> (not res!820731) (not e!698976))))

(assert (=> b!1232254 (= res!820731 (not (contains!7205 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232255 () Bool)

(declare-fun res!820737 () Bool)

(assert (=> b!1232255 (=> (not res!820737) (not e!698976))))

(assert (=> b!1232255 (= res!820737 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38876 a!3806)) (bvslt from!3184 (size!38876 a!3806))))))

(declare-fun b!1232256 () Bool)

(declare-fun res!820738 () Bool)

(assert (=> b!1232256 (=> (not res!820738) (not e!698976))))

(declare-fun arrayContainsKey!0 (array!79458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232256 (= res!820738 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102488 res!820735) b!1232250))

(assert (= (and b!1232250 res!820733) b!1232255))

(assert (= (and b!1232255 res!820737) b!1232247))

(assert (= (and b!1232247 res!820730) b!1232253))

(assert (= (and b!1232253 res!820734) b!1232254))

(assert (= (and b!1232254 res!820731) b!1232256))

(assert (= (and b!1232256 res!820738) b!1232252))

(assert (= (and b!1232252 res!820732) b!1232248))

(assert (= (and b!1232248 res!820739) b!1232249))

(assert (= (and b!1232249 res!820736) b!1232251))

(declare-fun m!1136325 () Bool)

(assert (=> b!1232254 m!1136325))

(declare-fun m!1136327 () Bool)

(assert (=> b!1232250 m!1136327))

(declare-fun m!1136329 () Bool)

(assert (=> b!1232248 m!1136329))

(assert (=> b!1232248 m!1136329))

(declare-fun m!1136331 () Bool)

(assert (=> b!1232248 m!1136331))

(assert (=> b!1232251 m!1136329))

(declare-fun m!1136333 () Bool)

(assert (=> b!1232251 m!1136333))

(declare-fun m!1136335 () Bool)

(assert (=> b!1232256 m!1136335))

(declare-fun m!1136337 () Bool)

(assert (=> b!1232253 m!1136337))

(declare-fun m!1136339 () Bool)

(assert (=> start!102488 m!1136339))

(declare-fun m!1136341 () Bool)

(assert (=> b!1232249 m!1136341))

(declare-fun m!1136343 () Bool)

(assert (=> b!1232249 m!1136343))

(assert (=> b!1232249 m!1136329))

(declare-fun m!1136345 () Bool)

(assert (=> b!1232249 m!1136345))

(declare-fun m!1136347 () Bool)

(assert (=> b!1232252 m!1136347))

(declare-fun m!1136349 () Bool)

(assert (=> b!1232247 m!1136349))

(push 1)

(assert (not b!1232251))

(assert (not b!1232256))

(assert (not b!1232250))

(assert (not b!1232248))

(assert (not b!1232253))

