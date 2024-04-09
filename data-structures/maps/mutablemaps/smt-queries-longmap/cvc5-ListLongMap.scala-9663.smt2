; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114152 () Bool)

(assert start!114152)

(declare-fun b!1355193 () Bool)

(declare-fun res!900270 () Bool)

(declare-fun e!769669 () Bool)

(assert (=> b!1355193 (=> (not res!900270) (not e!769669))))

(declare-datatypes ((List!31793 0))(
  ( (Nil!31790) (Cons!31789 (h!32998 (_ BitVec 64)) (t!46458 List!31793)) )
))
(declare-fun acc!759 () List!31793)

(declare-fun noDuplicate!2237 (List!31793) Bool)

(assert (=> b!1355193 (= res!900270 (noDuplicate!2237 acc!759))))

(declare-fun b!1355195 () Bool)

(declare-datatypes ((Unit!44480 0))(
  ( (Unit!44481) )
))
(declare-fun e!769670 () Unit!44480)

(declare-fun lt!598504 () Unit!44480)

(assert (=> b!1355195 (= e!769670 lt!598504)))

(declare-fun lt!598503 () Unit!44480)

(declare-fun lemmaListSubSeqRefl!0 (List!31793) Unit!44480)

(assert (=> b!1355195 (= lt!598503 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!767 (List!31793 List!31793) Bool)

(assert (=> b!1355195 (subseq!767 acc!759 acc!759)))

(declare-datatypes ((array!92257 0))(
  ( (array!92258 (arr!44572 (Array (_ BitVec 32) (_ BitVec 64))) (size!45123 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92257)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92257 List!31793 List!31793 (_ BitVec 32)) Unit!44480)

(declare-fun $colon$colon!784 (List!31793 (_ BitVec 64)) List!31793)

(assert (=> b!1355195 (= lt!598504 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!784 acc!759 (select (arr!44572 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92257 (_ BitVec 32) List!31793) Bool)

(assert (=> b!1355195 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355196 () Bool)

(declare-fun res!900267 () Bool)

(assert (=> b!1355196 (=> (not res!900267) (not e!769669))))

(assert (=> b!1355196 (= res!900267 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31790))))

(declare-fun b!1355197 () Bool)

(declare-fun e!769671 () Bool)

(assert (=> b!1355197 (= e!769669 e!769671)))

(declare-fun res!900268 () Bool)

(assert (=> b!1355197 (=> (not res!900268) (not e!769671))))

(declare-fun lt!598505 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355197 (= res!900268 (and (not (= from!3120 i!1404)) (not lt!598505) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598502 () Unit!44480)

(assert (=> b!1355197 (= lt!598502 e!769670)))

(declare-fun c!126907 () Bool)

(assert (=> b!1355197 (= c!126907 lt!598505)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355197 (= lt!598505 (validKeyInArray!0 (select (arr!44572 a!3742) from!3120)))))

(declare-fun b!1355198 () Bool)

(declare-fun res!900273 () Bool)

(assert (=> b!1355198 (=> (not res!900273) (not e!769669))))

(assert (=> b!1355198 (= res!900273 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45123 a!3742))))))

(declare-fun b!1355199 () Bool)

(assert (=> b!1355199 (= e!769671 false)))

(declare-fun lt!598501 () Bool)

(assert (=> b!1355199 (= lt!598501 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355200 () Bool)

(declare-fun res!900266 () Bool)

(assert (=> b!1355200 (=> (not res!900266) (not e!769669))))

(declare-fun contains!9358 (List!31793 (_ BitVec 64)) Bool)

(assert (=> b!1355200 (= res!900266 (not (contains!9358 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900265 () Bool)

(assert (=> start!114152 (=> (not res!900265) (not e!769669))))

(assert (=> start!114152 (= res!900265 (and (bvslt (size!45123 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45123 a!3742))))))

(assert (=> start!114152 e!769669))

(assert (=> start!114152 true))

(declare-fun array_inv!33517 (array!92257) Bool)

(assert (=> start!114152 (array_inv!33517 a!3742)))

(declare-fun b!1355194 () Bool)

(declare-fun res!900264 () Bool)

(assert (=> b!1355194 (=> (not res!900264) (not e!769669))))

(assert (=> b!1355194 (= res!900264 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45123 a!3742)))))

(declare-fun b!1355201 () Bool)

(declare-fun res!900272 () Bool)

(assert (=> b!1355201 (=> (not res!900272) (not e!769669))))

(assert (=> b!1355201 (= res!900272 (not (contains!9358 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355202 () Bool)

(declare-fun res!900271 () Bool)

(assert (=> b!1355202 (=> (not res!900271) (not e!769669))))

(assert (=> b!1355202 (= res!900271 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355203 () Bool)

(declare-fun res!900269 () Bool)

(assert (=> b!1355203 (=> (not res!900269) (not e!769669))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1355203 (= res!900269 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355204 () Bool)

(declare-fun Unit!44482 () Unit!44480)

(assert (=> b!1355204 (= e!769670 Unit!44482)))

(assert (= (and start!114152 res!900265) b!1355193))

(assert (= (and b!1355193 res!900270) b!1355201))

(assert (= (and b!1355201 res!900272) b!1355200))

(assert (= (and b!1355200 res!900266) b!1355196))

(assert (= (and b!1355196 res!900267) b!1355202))

(assert (= (and b!1355202 res!900271) b!1355198))

(assert (= (and b!1355198 res!900273) b!1355203))

(assert (= (and b!1355203 res!900269) b!1355194))

(assert (= (and b!1355194 res!900264) b!1355197))

(assert (= (and b!1355197 c!126907) b!1355195))

(assert (= (and b!1355197 (not c!126907)) b!1355204))

(assert (= (and b!1355197 res!900268) b!1355199))

(declare-fun m!1241449 () Bool)

(assert (=> b!1355201 m!1241449))

(declare-fun m!1241451 () Bool)

(assert (=> b!1355200 m!1241451))

(declare-fun m!1241453 () Bool)

(assert (=> b!1355203 m!1241453))

(declare-fun m!1241455 () Bool)

(assert (=> b!1355195 m!1241455))

(declare-fun m!1241457 () Bool)

(assert (=> b!1355195 m!1241457))

(declare-fun m!1241459 () Bool)

(assert (=> b!1355195 m!1241459))

(declare-fun m!1241461 () Bool)

(assert (=> b!1355195 m!1241461))

(declare-fun m!1241463 () Bool)

(assert (=> b!1355195 m!1241463))

(assert (=> b!1355195 m!1241457))

(assert (=> b!1355195 m!1241459))

(declare-fun m!1241465 () Bool)

(assert (=> b!1355195 m!1241465))

(declare-fun m!1241467 () Bool)

(assert (=> start!114152 m!1241467))

(assert (=> b!1355199 m!1241463))

(declare-fun m!1241469 () Bool)

(assert (=> b!1355202 m!1241469))

(assert (=> b!1355197 m!1241457))

(assert (=> b!1355197 m!1241457))

(declare-fun m!1241471 () Bool)

(assert (=> b!1355197 m!1241471))

(declare-fun m!1241473 () Bool)

(assert (=> b!1355193 m!1241473))

(declare-fun m!1241475 () Bool)

(assert (=> b!1355196 m!1241475))

(push 1)

