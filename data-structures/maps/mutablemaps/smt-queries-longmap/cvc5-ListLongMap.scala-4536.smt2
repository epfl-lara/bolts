; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62980 () Bool)

(assert start!62980)

(declare-fun b!709463 () Bool)

(declare-fun res!473135 () Bool)

(declare-fun e!399308 () Bool)

(assert (=> b!709463 (=> (not res!473135) (not e!399308))))

(declare-datatypes ((List!13414 0))(
  ( (Nil!13411) (Cons!13410 (h!14455 (_ BitVec 64)) (t!19719 List!13414)) )
))
(declare-fun acc!652 () List!13414)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3957 (List!13414 (_ BitVec 64)) Bool)

(assert (=> b!709463 (= res!473135 (not (contains!3957 acc!652 k!2824)))))

(declare-fun b!709464 () Bool)

(declare-fun res!473126 () Bool)

(assert (=> b!709464 (=> (not res!473126) (not e!399308))))

(assert (=> b!709464 (= res!473126 (not (contains!3957 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709465 () Bool)

(declare-fun e!399309 () Bool)

(assert (=> b!709465 (= e!399309 false)))

(declare-fun lt!318200 () Bool)

(declare-fun lt!318199 () List!13414)

(assert (=> b!709465 (= lt!318200 (contains!3957 lt!318199 k!2824))))

(declare-fun b!709466 () Bool)

(declare-fun res!473122 () Bool)

(assert (=> b!709466 (=> (not res!473122) (not e!399309))))

(assert (=> b!709466 (= res!473122 (not (contains!3957 lt!318199 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709467 () Bool)

(declare-fun res!473134 () Bool)

(assert (=> b!709467 (=> (not res!473134) (not e!399309))))

(declare-fun noDuplicate!1204 (List!13414) Bool)

(assert (=> b!709467 (= res!473134 (noDuplicate!1204 lt!318199))))

(declare-fun b!709468 () Bool)

(declare-fun res!473136 () Bool)

(assert (=> b!709468 (=> (not res!473136) (not e!399308))))

(declare-fun newAcc!49 () List!13414)

(assert (=> b!709468 (= res!473136 (not (contains!3957 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709469 () Bool)

(declare-fun res!473133 () Bool)

(assert (=> b!709469 (=> (not res!473133) (not e!399308))))

(declare-fun subseq!401 (List!13414 List!13414) Bool)

(assert (=> b!709469 (= res!473133 (subseq!401 acc!652 newAcc!49))))

(declare-fun b!709470 () Bool)

(declare-fun res!473128 () Bool)

(assert (=> b!709470 (=> (not res!473128) (not e!399308))))

(assert (=> b!709470 (= res!473128 (contains!3957 newAcc!49 k!2824))))

(declare-fun b!709471 () Bool)

(declare-fun res!473130 () Bool)

(assert (=> b!709471 (=> (not res!473130) (not e!399308))))

(declare-fun -!366 (List!13414 (_ BitVec 64)) List!13414)

(assert (=> b!709471 (= res!473130 (= (-!366 newAcc!49 k!2824) acc!652))))

(declare-fun b!709472 () Bool)

(assert (=> b!709472 (= e!399308 e!399309)))

(declare-fun res!473141 () Bool)

(assert (=> b!709472 (=> (not res!473141) (not e!399309))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!709472 (= res!473141 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((array!40350 0))(
  ( (array!40351 (arr!19320 (Array (_ BitVec 32) (_ BitVec 64))) (size!19716 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40350)

(declare-fun $colon$colon!511 (List!13414 (_ BitVec 64)) List!13414)

(assert (=> b!709472 (= lt!318199 ($colon$colon!511 acc!652 (select (arr!19320 a!3591) from!2969)))))

(declare-fun b!709473 () Bool)

(declare-fun res!473125 () Bool)

(assert (=> b!709473 (=> (not res!473125) (not e!399308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!709473 (= res!473125 (validKeyInArray!0 (select (arr!19320 a!3591) from!2969)))))

(declare-fun b!709474 () Bool)

(declare-fun res!473138 () Bool)

(assert (=> b!709474 (=> (not res!473138) (not e!399308))))

(assert (=> b!709474 (= res!473138 (noDuplicate!1204 newAcc!49))))

(declare-fun b!709475 () Bool)

(declare-fun res!473121 () Bool)

(assert (=> b!709475 (=> (not res!473121) (not e!399308))))

(declare-fun arrayContainsKey!0 (array!40350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!709475 (= res!473121 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!709476 () Bool)

(declare-fun res!473139 () Bool)

(assert (=> b!709476 (=> (not res!473139) (not e!399309))))

(assert (=> b!709476 (= res!473139 (noDuplicate!1204 ($colon$colon!511 newAcc!49 (select (arr!19320 a!3591) from!2969))))))

(declare-fun b!709477 () Bool)

(declare-fun res!473129 () Bool)

(assert (=> b!709477 (=> (not res!473129) (not e!399308))))

(assert (=> b!709477 (= res!473129 (noDuplicate!1204 acc!652))))

(declare-fun b!709478 () Bool)

(declare-fun res!473127 () Bool)

(assert (=> b!709478 (=> (not res!473127) (not e!399309))))

(assert (=> b!709478 (= res!473127 (not (contains!3957 lt!318199 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!473137 () Bool)

(assert (=> start!62980 (=> (not res!473137) (not e!399308))))

(assert (=> start!62980 (= res!473137 (and (bvslt (size!19716 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19716 a!3591))))))

(assert (=> start!62980 e!399308))

(assert (=> start!62980 true))

(declare-fun array_inv!15094 (array!40350) Bool)

(assert (=> start!62980 (array_inv!15094 a!3591)))

(declare-fun b!709479 () Bool)

(declare-fun res!473140 () Bool)

(assert (=> b!709479 (=> (not res!473140) (not e!399308))))

(assert (=> b!709479 (= res!473140 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19716 a!3591)))))

(declare-fun b!709480 () Bool)

(declare-fun res!473124 () Bool)

(assert (=> b!709480 (=> (not res!473124) (not e!399308))))

(assert (=> b!709480 (= res!473124 (validKeyInArray!0 k!2824))))

(declare-fun b!709481 () Bool)

(declare-fun res!473131 () Bool)

(assert (=> b!709481 (=> (not res!473131) (not e!399308))))

(declare-fun arrayNoDuplicates!0 (array!40350 (_ BitVec 32) List!13414) Bool)

(assert (=> b!709481 (= res!473131 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!709482 () Bool)

(declare-fun res!473123 () Bool)

(assert (=> b!709482 (=> (not res!473123) (not e!399309))))

(assert (=> b!709482 (= res!473123 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!709483 () Bool)

(declare-fun res!473132 () Bool)

(assert (=> b!709483 (=> (not res!473132) (not e!399308))))

(assert (=> b!709483 (= res!473132 (not (contains!3957 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!709484 () Bool)

(declare-fun res!473142 () Bool)

(assert (=> b!709484 (=> (not res!473142) (not e!399308))))

(assert (=> b!709484 (= res!473142 (not (contains!3957 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62980 res!473137) b!709477))

(assert (= (and b!709477 res!473129) b!709474))

(assert (= (and b!709474 res!473138) b!709464))

(assert (= (and b!709464 res!473126) b!709483))

(assert (= (and b!709483 res!473132) b!709475))

(assert (= (and b!709475 res!473121) b!709463))

(assert (= (and b!709463 res!473135) b!709480))

(assert (= (and b!709480 res!473124) b!709481))

(assert (= (and b!709481 res!473131) b!709469))

(assert (= (and b!709469 res!473133) b!709470))

(assert (= (and b!709470 res!473128) b!709471))

(assert (= (and b!709471 res!473130) b!709468))

(assert (= (and b!709468 res!473136) b!709484))

(assert (= (and b!709484 res!473142) b!709479))

(assert (= (and b!709479 res!473140) b!709473))

(assert (= (and b!709473 res!473125) b!709472))

(assert (= (and b!709472 res!473141) b!709467))

(assert (= (and b!709467 res!473134) b!709476))

(assert (= (and b!709476 res!473139) b!709466))

(assert (= (and b!709466 res!473122) b!709478))

(assert (= (and b!709478 res!473127) b!709482))

(assert (= (and b!709482 res!473123) b!709465))

(declare-fun m!666825 () Bool)

(assert (=> b!709484 m!666825))

(declare-fun m!666827 () Bool)

(assert (=> b!709471 m!666827))

(declare-fun m!666829 () Bool)

(assert (=> b!709473 m!666829))

(assert (=> b!709473 m!666829))

(declare-fun m!666831 () Bool)

(assert (=> b!709473 m!666831))

(declare-fun m!666833 () Bool)

(assert (=> b!709482 m!666833))

(declare-fun m!666835 () Bool)

(assert (=> b!709466 m!666835))

(declare-fun m!666837 () Bool)

(assert (=> b!709477 m!666837))

(declare-fun m!666839 () Bool)

(assert (=> start!62980 m!666839))

(declare-fun m!666841 () Bool)

(assert (=> b!709470 m!666841))

(declare-fun m!666843 () Bool)

(assert (=> b!709463 m!666843))

(declare-fun m!666845 () Bool)

(assert (=> b!709478 m!666845))

(declare-fun m!666847 () Bool)

(assert (=> b!709467 m!666847))

(declare-fun m!666849 () Bool)

(assert (=> b!709481 m!666849))

(declare-fun m!666851 () Bool)

(assert (=> b!709464 m!666851))

(declare-fun m!666853 () Bool)

(assert (=> b!709474 m!666853))

(declare-fun m!666855 () Bool)

(assert (=> b!709469 m!666855))

(declare-fun m!666857 () Bool)

(assert (=> b!709465 m!666857))

(declare-fun m!666859 () Bool)

(assert (=> b!709468 m!666859))

(assert (=> b!709472 m!666829))

(assert (=> b!709472 m!666829))

(declare-fun m!666861 () Bool)

(assert (=> b!709472 m!666861))

(declare-fun m!666863 () Bool)

(assert (=> b!709475 m!666863))

(declare-fun m!666865 () Bool)

(assert (=> b!709480 m!666865))

(assert (=> b!709476 m!666829))

(assert (=> b!709476 m!666829))

(declare-fun m!666867 () Bool)

(assert (=> b!709476 m!666867))

(assert (=> b!709476 m!666867))

(declare-fun m!666869 () Bool)

(assert (=> b!709476 m!666869))

(declare-fun m!666871 () Bool)

(assert (=> b!709483 m!666871))

(push 1)

