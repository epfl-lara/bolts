; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102214 () Bool)

(assert start!102214)

(declare-fun b!1229979 () Bool)

(declare-fun e!698010 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229979 (= e!698010 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-datatypes ((array!79328 0))(
  ( (array!79329 (arr!38280 (Array (_ BitVec 32) (_ BitVec 64))) (size!38817 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79328)

(declare-fun arrayContainsKey!0 (array!79328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229979 (not (arrayContainsKey!0 a!3806 (select (arr!38280 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40700 0))(
  ( (Unit!40701) )
))
(declare-fun lt!559249 () Unit!40700)

(declare-datatypes ((List!27231 0))(
  ( (Nil!27228) (Cons!27227 (h!28436 (_ BitVec 64)) (t!40701 List!27231)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79328 (_ BitVec 32) (_ BitVec 64) List!27231) Unit!40700)

(assert (=> b!1229979 (= lt!559249 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38280 a!3806) from!3184) (Cons!27227 (select (arr!38280 a!3806) from!3184) Nil!27228)))))

(declare-fun e!698011 () Bool)

(assert (=> b!1229979 e!698011))

(declare-fun res!818575 () Bool)

(assert (=> b!1229979 (=> (not res!818575) (not e!698011))))

(declare-fun arrayNoDuplicates!0 (array!79328 (_ BitVec 32) List!27231) Bool)

(assert (=> b!1229979 (= res!818575 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27228))))

(declare-fun acc!823 () List!27231)

(declare-fun lt!559250 () Unit!40700)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79328 List!27231 List!27231 (_ BitVec 32)) Unit!40700)

(assert (=> b!1229979 (= lt!559250 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27228 from!3184))))

(assert (=> b!1229979 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27227 (select (arr!38280 a!3806) from!3184) acc!823))))

(declare-fun b!1229980 () Bool)

(declare-fun res!818578 () Bool)

(assert (=> b!1229980 (=> (not res!818578) (not e!698010))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229980 (= res!818578 (validKeyInArray!0 k!2913))))

(declare-fun b!1229981 () Bool)

(declare-fun res!818579 () Bool)

(assert (=> b!1229981 (=> (not res!818579) (not e!698010))))

(assert (=> b!1229981 (= res!818579 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229982 () Bool)

(declare-fun res!818574 () Bool)

(assert (=> b!1229982 (=> (not res!818574) (not e!698010))))

(assert (=> b!1229982 (= res!818574 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38817 a!3806)) (bvslt from!3184 (size!38817 a!3806))))))

(declare-fun b!1229983 () Bool)

(declare-fun res!818573 () Bool)

(assert (=> b!1229983 (=> (not res!818573) (not e!698010))))

(assert (=> b!1229983 (= res!818573 (validKeyInArray!0 (select (arr!38280 a!3806) from!3184)))))

(declare-fun b!1229984 () Bool)

(declare-fun res!818570 () Bool)

(assert (=> b!1229984 (=> (not res!818570) (not e!698010))))

(declare-fun contains!7146 (List!27231 (_ BitVec 64)) Bool)

(assert (=> b!1229984 (= res!818570 (not (contains!7146 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229985 () Bool)

(declare-fun res!818571 () Bool)

(assert (=> b!1229985 (=> (not res!818571) (not e!698010))))

(assert (=> b!1229985 (= res!818571 (not (contains!7146 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229986 () Bool)

(declare-fun res!818572 () Bool)

(assert (=> b!1229986 (=> (not res!818572) (not e!698010))))

(assert (=> b!1229986 (= res!818572 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229987 () Bool)

(declare-fun res!818577 () Bool)

(assert (=> b!1229987 (=> (not res!818577) (not e!698010))))

(declare-fun noDuplicate!1753 (List!27231) Bool)

(assert (=> b!1229987 (= res!818577 (noDuplicate!1753 acc!823))))

(declare-fun b!1229988 () Bool)

(assert (=> b!1229988 (= e!698011 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27227 (select (arr!38280 a!3806) from!3184) Nil!27228)))))

(declare-fun res!818576 () Bool)

(assert (=> start!102214 (=> (not res!818576) (not e!698010))))

(assert (=> start!102214 (= res!818576 (bvslt (size!38817 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102214 e!698010))

(declare-fun array_inv!29056 (array!79328) Bool)

(assert (=> start!102214 (array_inv!29056 a!3806)))

(assert (=> start!102214 true))

(assert (= (and start!102214 res!818576) b!1229980))

(assert (= (and b!1229980 res!818578) b!1229982))

(assert (= (and b!1229982 res!818574) b!1229987))

(assert (= (and b!1229987 res!818577) b!1229984))

(assert (= (and b!1229984 res!818570) b!1229985))

(assert (= (and b!1229985 res!818571) b!1229981))

(assert (= (and b!1229981 res!818579) b!1229986))

(assert (= (and b!1229986 res!818572) b!1229983))

(assert (= (and b!1229983 res!818573) b!1229979))

(assert (= (and b!1229979 res!818575) b!1229988))

(declare-fun m!1134503 () Bool)

(assert (=> b!1229986 m!1134503))

(declare-fun m!1134505 () Bool)

(assert (=> b!1229987 m!1134505))

(declare-fun m!1134507 () Bool)

(assert (=> b!1229985 m!1134507))

(declare-fun m!1134509 () Bool)

(assert (=> b!1229979 m!1134509))

(declare-fun m!1134511 () Bool)

(assert (=> b!1229979 m!1134511))

(declare-fun m!1134513 () Bool)

(assert (=> b!1229979 m!1134513))

(declare-fun m!1134515 () Bool)

(assert (=> b!1229979 m!1134515))

(assert (=> b!1229979 m!1134513))

(declare-fun m!1134517 () Bool)

(assert (=> b!1229979 m!1134517))

(assert (=> b!1229979 m!1134513))

(declare-fun m!1134519 () Bool)

(assert (=> b!1229979 m!1134519))

(assert (=> b!1229988 m!1134513))

(declare-fun m!1134521 () Bool)

(assert (=> b!1229988 m!1134521))

(declare-fun m!1134523 () Bool)

(assert (=> b!1229981 m!1134523))

(declare-fun m!1134525 () Bool)

(assert (=> b!1229984 m!1134525))

(assert (=> b!1229983 m!1134513))

(assert (=> b!1229983 m!1134513))

(declare-fun m!1134527 () Bool)

(assert (=> b!1229983 m!1134527))

(declare-fun m!1134529 () Bool)

(assert (=> start!102214 m!1134529))

(declare-fun m!1134531 () Bool)

(assert (=> b!1229980 m!1134531))

(push 1)

