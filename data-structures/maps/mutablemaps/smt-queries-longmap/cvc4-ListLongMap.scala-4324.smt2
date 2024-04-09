; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59992 () Bool)

(assert start!59992)

(declare-fun b!665459 () Bool)

(declare-fun e!381322 () Bool)

(assert (=> b!665459 (= e!381322 true)))

(declare-fun lt!310059 () Bool)

(declare-datatypes ((List!12780 0))(
  ( (Nil!12777) (Cons!12776 (h!13821 (_ BitVec 64)) (t!19016 List!12780)) )
))
(declare-fun lt!310061 () List!12780)

(declare-fun contains!3323 (List!12780 (_ BitVec 64)) Bool)

(assert (=> b!665459 (= lt!310059 (contains!3323 lt!310061 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665460 () Bool)

(declare-fun res!433143 () Bool)

(declare-fun e!381320 () Bool)

(assert (=> b!665460 (=> (not res!433143) (not e!381320))))

(declare-datatypes ((array!38995 0))(
  ( (array!38996 (arr!18686 (Array (_ BitVec 32) (_ BitVec 64))) (size!19050 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38995)

(declare-fun arrayNoDuplicates!0 (array!38995 (_ BitVec 32) List!12780) Bool)

(assert (=> b!665460 (= res!433143 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12777))))

(declare-fun b!665461 () Bool)

(declare-fun res!433130 () Bool)

(assert (=> b!665461 (=> res!433130 e!381322)))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!665461 (= res!433130 (not (contains!3323 lt!310061 k!2843)))))

(declare-fun b!665462 () Bool)

(declare-datatypes ((Unit!23225 0))(
  ( (Unit!23226) )
))
(declare-fun e!381316 () Unit!23225)

(declare-fun Unit!23227 () Unit!23225)

(assert (=> b!665462 (= e!381316 Unit!23227)))

(declare-fun lt!310058 () Unit!23225)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38995 (_ BitVec 64) (_ BitVec 32)) Unit!23225)

(assert (=> b!665462 (= lt!310058 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665462 false))

(declare-fun b!665463 () Bool)

(declare-fun res!433133 () Bool)

(assert (=> b!665463 (=> (not res!433133) (not e!381320))))

(declare-fun e!381319 () Bool)

(assert (=> b!665463 (= res!433133 e!381319)))

(declare-fun res!433127 () Bool)

(assert (=> b!665463 (=> res!433127 e!381319)))

(declare-fun e!381317 () Bool)

(assert (=> b!665463 (= res!433127 e!381317)))

(declare-fun res!433131 () Bool)

(assert (=> b!665463 (=> (not res!433131) (not e!381317))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665463 (= res!433131 (bvsgt from!3004 i!1382))))

(declare-fun b!665464 () Bool)

(declare-fun Unit!23228 () Unit!23225)

(assert (=> b!665464 (= e!381316 Unit!23228)))

(declare-fun b!665465 () Bool)

(declare-fun acc!681 () List!12780)

(assert (=> b!665465 (= e!381317 (contains!3323 acc!681 k!2843))))

(declare-fun b!665466 () Bool)

(declare-fun e!381321 () Bool)

(assert (=> b!665466 (= e!381321 (not (contains!3323 acc!681 k!2843)))))

(declare-fun b!665467 () Bool)

(declare-fun e!381315 () Unit!23225)

(declare-fun Unit!23229 () Unit!23225)

(assert (=> b!665467 (= e!381315 Unit!23229)))

(declare-fun b!665468 () Bool)

(assert (=> b!665468 (= e!381320 (not e!381322))))

(declare-fun res!433137 () Bool)

(assert (=> b!665468 (=> res!433137 e!381322)))

(assert (=> b!665468 (= res!433137 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!59 (List!12780 (_ BitVec 64)) List!12780)

(assert (=> b!665468 (= (-!59 lt!310061 k!2843) acc!681)))

(declare-fun $colon$colon!192 (List!12780 (_ BitVec 64)) List!12780)

(assert (=> b!665468 (= lt!310061 ($colon$colon!192 acc!681 k!2843))))

(declare-fun lt!310055 () Unit!23225)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12780) Unit!23225)

(assert (=> b!665468 (= lt!310055 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!61 (List!12780 List!12780) Bool)

(assert (=> b!665468 (subseq!61 acc!681 acc!681)))

(declare-fun lt!310056 () Unit!23225)

(declare-fun lemmaListSubSeqRefl!0 (List!12780) Unit!23225)

(assert (=> b!665468 (= lt!310056 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665468 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310057 () Unit!23225)

(assert (=> b!665468 (= lt!310057 e!381315)))

(declare-fun c!76534 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665468 (= c!76534 (validKeyInArray!0 (select (arr!18686 a!3626) from!3004)))))

(declare-fun lt!310054 () Unit!23225)

(assert (=> b!665468 (= lt!310054 e!381316)))

(declare-fun c!76535 () Bool)

(declare-fun lt!310062 () Bool)

(assert (=> b!665468 (= c!76535 lt!310062)))

(declare-fun arrayContainsKey!0 (array!38995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665468 (= lt!310062 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665468 (arrayContainsKey!0 (array!38996 (store (arr!18686 a!3626) i!1382 k!2843) (size!19050 a!3626)) k!2843 from!3004)))

(declare-fun b!665469 () Bool)

(declare-fun lt!310053 () Unit!23225)

(assert (=> b!665469 (= e!381315 lt!310053)))

(declare-fun lt!310060 () Unit!23225)

(assert (=> b!665469 (= lt!310060 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665469 (subseq!61 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38995 List!12780 List!12780 (_ BitVec 32)) Unit!23225)

(assert (=> b!665469 (= lt!310053 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!192 acc!681 (select (arr!18686 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665469 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665470 () Bool)

(declare-fun res!433136 () Bool)

(assert (=> b!665470 (=> res!433136 e!381322)))

(assert (=> b!665470 (= res!433136 (not (subseq!61 acc!681 lt!310061)))))

(declare-fun b!665471 () Bool)

(assert (=> b!665471 (= e!381319 e!381321)))

(declare-fun res!433129 () Bool)

(assert (=> b!665471 (=> (not res!433129) (not e!381321))))

(assert (=> b!665471 (= res!433129 (bvsle from!3004 i!1382))))

(declare-fun b!665472 () Bool)

(declare-fun res!433139 () Bool)

(assert (=> b!665472 (=> res!433139 e!381322)))

(assert (=> b!665472 (= res!433139 (contains!3323 acc!681 k!2843))))

(declare-fun b!665473 () Bool)

(declare-fun res!433138 () Bool)

(assert (=> b!665473 (=> (not res!433138) (not e!381320))))

(assert (=> b!665473 (= res!433138 (not (contains!3323 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665474 () Bool)

(declare-fun res!433140 () Bool)

(assert (=> b!665474 (=> res!433140 e!381322)))

(declare-fun noDuplicate!570 (List!12780) Bool)

(assert (=> b!665474 (= res!433140 (not (noDuplicate!570 lt!310061)))))

(declare-fun b!665475 () Bool)

(declare-fun res!433142 () Bool)

(assert (=> b!665475 (=> (not res!433142) (not e!381320))))

(assert (=> b!665475 (= res!433142 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665476 () Bool)

(declare-fun res!433141 () Bool)

(assert (=> b!665476 (=> (not res!433141) (not e!381320))))

(assert (=> b!665476 (= res!433141 (not (contains!3323 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665477 () Bool)

(declare-fun res!433145 () Bool)

(assert (=> b!665477 (=> (not res!433145) (not e!381320))))

(assert (=> b!665477 (= res!433145 (noDuplicate!570 acc!681))))

(declare-fun b!665478 () Bool)

(declare-fun res!433134 () Bool)

(assert (=> b!665478 (=> (not res!433134) (not e!381320))))

(assert (=> b!665478 (= res!433134 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665479 () Bool)

(declare-fun res!433132 () Bool)

(assert (=> b!665479 (=> res!433132 e!381322)))

(assert (=> b!665479 (= res!433132 (contains!3323 lt!310061 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665480 () Bool)

(declare-fun res!433135 () Bool)

(assert (=> b!665480 (=> (not res!433135) (not e!381320))))

(assert (=> b!665480 (= res!433135 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19050 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!433128 () Bool)

(assert (=> start!59992 (=> (not res!433128) (not e!381320))))

(assert (=> start!59992 (= res!433128 (and (bvslt (size!19050 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19050 a!3626))))))

(assert (=> start!59992 e!381320))

(assert (=> start!59992 true))

(declare-fun array_inv!14460 (array!38995) Bool)

(assert (=> start!59992 (array_inv!14460 a!3626)))

(declare-fun b!665481 () Bool)

(declare-fun res!433144 () Bool)

(assert (=> b!665481 (=> res!433144 e!381322)))

(assert (=> b!665481 (= res!433144 lt!310062)))

(declare-fun b!665482 () Bool)

(declare-fun res!433125 () Bool)

(assert (=> b!665482 (=> (not res!433125) (not e!381320))))

(assert (=> b!665482 (= res!433125 (validKeyInArray!0 k!2843))))

(declare-fun b!665483 () Bool)

(declare-fun res!433126 () Bool)

(assert (=> b!665483 (=> (not res!433126) (not e!381320))))

(assert (=> b!665483 (= res!433126 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19050 a!3626))))))

(assert (= (and start!59992 res!433128) b!665477))

(assert (= (and b!665477 res!433145) b!665473))

(assert (= (and b!665473 res!433138) b!665476))

(assert (= (and b!665476 res!433141) b!665463))

(assert (= (and b!665463 res!433131) b!665465))

(assert (= (and b!665463 (not res!433127)) b!665471))

(assert (= (and b!665471 res!433129) b!665466))

(assert (= (and b!665463 res!433133) b!665460))

(assert (= (and b!665460 res!433143) b!665475))

(assert (= (and b!665475 res!433142) b!665483))

(assert (= (and b!665483 res!433126) b!665482))

(assert (= (and b!665482 res!433125) b!665478))

(assert (= (and b!665478 res!433134) b!665480))

(assert (= (and b!665480 res!433135) b!665468))

(assert (= (and b!665468 c!76535) b!665462))

(assert (= (and b!665468 (not c!76535)) b!665464))

(assert (= (and b!665468 c!76534) b!665469))

(assert (= (and b!665468 (not c!76534)) b!665467))

(assert (= (and b!665468 (not res!433137)) b!665474))

(assert (= (and b!665474 (not res!433140)) b!665481))

(assert (= (and b!665481 (not res!433144)) b!665472))

(assert (= (and b!665472 (not res!433139)) b!665470))

(assert (= (and b!665470 (not res!433136)) b!665461))

(assert (= (and b!665461 (not res!433130)) b!665479))

(assert (= (and b!665479 (not res!433132)) b!665459))

(declare-fun m!636523 () Bool)

(assert (=> start!59992 m!636523))

(declare-fun m!636525 () Bool)

(assert (=> b!665472 m!636525))

(declare-fun m!636527 () Bool)

(assert (=> b!665470 m!636527))

(declare-fun m!636529 () Bool)

(assert (=> b!665469 m!636529))

(declare-fun m!636531 () Bool)

(assert (=> b!665469 m!636531))

(declare-fun m!636533 () Bool)

(assert (=> b!665469 m!636533))

(declare-fun m!636535 () Bool)

(assert (=> b!665469 m!636535))

(assert (=> b!665469 m!636531))

(assert (=> b!665469 m!636533))

(declare-fun m!636537 () Bool)

(assert (=> b!665469 m!636537))

(declare-fun m!636539 () Bool)

(assert (=> b!665469 m!636539))

(assert (=> b!665465 m!636525))

(declare-fun m!636541 () Bool)

(assert (=> b!665482 m!636541))

(declare-fun m!636543 () Bool)

(assert (=> b!665477 m!636543))

(declare-fun m!636545 () Bool)

(assert (=> b!665460 m!636545))

(assert (=> b!665468 m!636529))

(assert (=> b!665468 m!636531))

(declare-fun m!636547 () Bool)

(assert (=> b!665468 m!636547))

(assert (=> b!665468 m!636537))

(declare-fun m!636549 () Bool)

(assert (=> b!665468 m!636549))

(declare-fun m!636551 () Bool)

(assert (=> b!665468 m!636551))

(assert (=> b!665468 m!636531))

(declare-fun m!636553 () Bool)

(assert (=> b!665468 m!636553))

(declare-fun m!636555 () Bool)

(assert (=> b!665468 m!636555))

(declare-fun m!636557 () Bool)

(assert (=> b!665468 m!636557))

(declare-fun m!636559 () Bool)

(assert (=> b!665468 m!636559))

(assert (=> b!665468 m!636539))

(declare-fun m!636561 () Bool)

(assert (=> b!665479 m!636561))

(assert (=> b!665466 m!636525))

(declare-fun m!636563 () Bool)

(assert (=> b!665473 m!636563))

(declare-fun m!636565 () Bool)

(assert (=> b!665474 m!636565))

(declare-fun m!636567 () Bool)

(assert (=> b!665476 m!636567))

(declare-fun m!636569 () Bool)

(assert (=> b!665462 m!636569))

(declare-fun m!636571 () Bool)

(assert (=> b!665478 m!636571))

(declare-fun m!636573 () Bool)

(assert (=> b!665475 m!636573))

(declare-fun m!636575 () Bool)

(assert (=> b!665459 m!636575))

(declare-fun m!636577 () Bool)

(assert (=> b!665461 m!636577))

(push 1)

(assert (not start!59992))

(assert (not b!665482))

(assert (not b!665469))

(assert (not b!665460))

(assert (not b!665461))

(assert (not b!665478))

(assert (not b!665475))

(assert (not b!665473))

(assert (not b!665476))

(assert (not b!665474))

(assert (not b!665477))

(assert (not b!665470))

(assert (not b!665462))

(assert (not b!665465))

(assert (not b!665479))

(assert (not b!665459))

(assert (not b!665466))

(assert (not b!665468))

(assert (not b!665472))

(check-sat)

