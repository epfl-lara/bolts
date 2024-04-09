; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59902 () Bool)

(assert start!59902)

(declare-fun b!662483 () Bool)

(declare-fun res!430633 () Bool)

(declare-fun e!380282 () Bool)

(assert (=> b!662483 (=> (not res!430633) (not e!380282))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662483 (= res!430633 (validKeyInArray!0 k!2843))))

(declare-fun b!662484 () Bool)

(declare-fun res!430641 () Bool)

(assert (=> b!662484 (=> (not res!430641) (not e!380282))))

(declare-datatypes ((array!38905 0))(
  ( (array!38906 (arr!18641 (Array (_ BitVec 32) (_ BitVec 64))) (size!19005 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38905)

(declare-fun arrayContainsKey!0 (array!38905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662484 (= res!430641 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662485 () Bool)

(declare-fun e!380285 () Bool)

(declare-fun e!380286 () Bool)

(assert (=> b!662485 (= e!380285 e!380286)))

(declare-fun res!430640 () Bool)

(assert (=> b!662485 (=> (not res!430640) (not e!380286))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662485 (= res!430640 (bvsle from!3004 i!1382))))

(declare-fun b!662486 () Bool)

(declare-fun res!430647 () Bool)

(assert (=> b!662486 (=> (not res!430647) (not e!380282))))

(declare-datatypes ((List!12735 0))(
  ( (Nil!12732) (Cons!12731 (h!13776 (_ BitVec 64)) (t!18971 List!12735)) )
))
(declare-fun acc!681 () List!12735)

(declare-fun noDuplicate!525 (List!12735) Bool)

(assert (=> b!662486 (= res!430647 (noDuplicate!525 acc!681))))

(declare-fun res!430639 () Bool)

(assert (=> start!59902 (=> (not res!430639) (not e!380282))))

(assert (=> start!59902 (= res!430639 (and (bvslt (size!19005 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19005 a!3626))))))

(assert (=> start!59902 e!380282))

(assert (=> start!59902 true))

(declare-fun array_inv!14415 (array!38905) Bool)

(assert (=> start!59902 (array_inv!14415 a!3626)))

(declare-fun b!662487 () Bool)

(declare-fun e!380284 () Bool)

(assert (=> b!662487 (= e!380282 (not e!380284))))

(declare-fun res!430638 () Bool)

(assert (=> b!662487 (=> res!430638 e!380284)))

(assert (=> b!662487 (= res!430638 (not (validKeyInArray!0 (select (arr!18641 a!3626) from!3004))))))

(declare-datatypes ((Unit!23010 0))(
  ( (Unit!23011) )
))
(declare-fun lt!309027 () Unit!23010)

(declare-fun e!380287 () Unit!23010)

(assert (=> b!662487 (= lt!309027 e!380287)))

(declare-fun c!76292 () Bool)

(assert (=> b!662487 (= c!76292 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662487 (arrayContainsKey!0 (array!38906 (store (arr!18641 a!3626) i!1382 k!2843) (size!19005 a!3626)) k!2843 from!3004)))

(declare-fun b!662488 () Bool)

(declare-fun res!430637 () Bool)

(declare-fun e!380283 () Bool)

(assert (=> b!662488 (=> res!430637 e!380283)))

(declare-fun lt!309026 () List!12735)

(declare-fun contains!3278 (List!12735 (_ BitVec 64)) Bool)

(assert (=> b!662488 (= res!430637 (contains!3278 lt!309026 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662489 () Bool)

(assert (=> b!662489 (= e!380286 (not (contains!3278 acc!681 k!2843)))))

(declare-fun b!662490 () Bool)

(declare-fun res!430645 () Bool)

(assert (=> b!662490 (=> (not res!430645) (not e!380282))))

(assert (=> b!662490 (= res!430645 (not (contains!3278 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662491 () Bool)

(declare-fun res!430646 () Bool)

(assert (=> b!662491 (=> (not res!430646) (not e!380282))))

(declare-fun arrayNoDuplicates!0 (array!38905 (_ BitVec 32) List!12735) Bool)

(assert (=> b!662491 (= res!430646 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662492 () Bool)

(assert (=> b!662492 (= e!380284 e!380283)))

(declare-fun res!430650 () Bool)

(assert (=> b!662492 (=> res!430650 e!380283)))

(assert (=> b!662492 (= res!430650 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!147 (List!12735 (_ BitVec 64)) List!12735)

(assert (=> b!662492 (= lt!309026 ($colon$colon!147 acc!681 (select (arr!18641 a!3626) from!3004)))))

(declare-fun subseq!16 (List!12735 List!12735) Bool)

(assert (=> b!662492 (subseq!16 acc!681 acc!681)))

(declare-fun lt!309024 () Unit!23010)

(declare-fun lemmaListSubSeqRefl!0 (List!12735) Unit!23010)

(assert (=> b!662492 (= lt!309024 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662493 () Bool)

(declare-fun e!380280 () Bool)

(assert (=> b!662493 (= e!380280 (contains!3278 acc!681 k!2843))))

(declare-fun b!662494 () Bool)

(assert (=> b!662494 (= e!380283 true)))

(declare-fun lt!309022 () Bool)

(assert (=> b!662494 (= lt!309022 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309026))))

(declare-fun lt!309023 () Unit!23010)

(declare-fun noDuplicateSubseq!16 (List!12735 List!12735) Unit!23010)

(assert (=> b!662494 (= lt!309023 (noDuplicateSubseq!16 acc!681 lt!309026))))

(declare-fun b!662495 () Bool)

(declare-fun Unit!23012 () Unit!23010)

(assert (=> b!662495 (= e!380287 Unit!23012)))

(declare-fun b!662496 () Bool)

(declare-fun res!430652 () Bool)

(assert (=> b!662496 (=> res!430652 e!380283)))

(assert (=> b!662496 (= res!430652 (not (noDuplicate!525 lt!309026)))))

(declare-fun b!662497 () Bool)

(declare-fun res!430643 () Bool)

(assert (=> b!662497 (=> (not res!430643) (not e!380282))))

(assert (=> b!662497 (= res!430643 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12732))))

(declare-fun b!662498 () Bool)

(declare-fun res!430651 () Bool)

(assert (=> b!662498 (=> (not res!430651) (not e!380282))))

(assert (=> b!662498 (= res!430651 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19005 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662499 () Bool)

(declare-fun res!430634 () Bool)

(assert (=> b!662499 (=> res!430634 e!380283)))

(assert (=> b!662499 (= res!430634 (not (subseq!16 acc!681 lt!309026)))))

(declare-fun b!662500 () Bool)

(declare-fun res!430642 () Bool)

(assert (=> b!662500 (=> (not res!430642) (not e!380282))))

(assert (=> b!662500 (= res!430642 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19005 a!3626))))))

(declare-fun b!662501 () Bool)

(declare-fun res!430649 () Bool)

(assert (=> b!662501 (=> (not res!430649) (not e!380282))))

(assert (=> b!662501 (= res!430649 (not (contains!3278 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662502 () Bool)

(declare-fun res!430648 () Bool)

(assert (=> b!662502 (=> res!430648 e!380283)))

(assert (=> b!662502 (= res!430648 (contains!3278 lt!309026 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662503 () Bool)

(declare-fun Unit!23013 () Unit!23010)

(assert (=> b!662503 (= e!380287 Unit!23013)))

(declare-fun lt!309025 () Unit!23010)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38905 (_ BitVec 64) (_ BitVec 32)) Unit!23010)

(assert (=> b!662503 (= lt!309025 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662503 false))

(declare-fun b!662504 () Bool)

(declare-fun res!430636 () Bool)

(assert (=> b!662504 (=> (not res!430636) (not e!380282))))

(assert (=> b!662504 (= res!430636 e!380285)))

(declare-fun res!430635 () Bool)

(assert (=> b!662504 (=> res!430635 e!380285)))

(assert (=> b!662504 (= res!430635 e!380280)))

(declare-fun res!430644 () Bool)

(assert (=> b!662504 (=> (not res!430644) (not e!380280))))

(assert (=> b!662504 (= res!430644 (bvsgt from!3004 i!1382))))

(assert (= (and start!59902 res!430639) b!662486))

(assert (= (and b!662486 res!430647) b!662501))

(assert (= (and b!662501 res!430649) b!662490))

(assert (= (and b!662490 res!430645) b!662504))

(assert (= (and b!662504 res!430644) b!662493))

(assert (= (and b!662504 (not res!430635)) b!662485))

(assert (= (and b!662485 res!430640) b!662489))

(assert (= (and b!662504 res!430636) b!662497))

(assert (= (and b!662497 res!430643) b!662491))

(assert (= (and b!662491 res!430646) b!662500))

(assert (= (and b!662500 res!430642) b!662483))

(assert (= (and b!662483 res!430633) b!662484))

(assert (= (and b!662484 res!430641) b!662498))

(assert (= (and b!662498 res!430651) b!662487))

(assert (= (and b!662487 c!76292) b!662503))

(assert (= (and b!662487 (not c!76292)) b!662495))

(assert (= (and b!662487 (not res!430638)) b!662492))

(assert (= (and b!662492 (not res!430650)) b!662496))

(assert (= (and b!662496 (not res!430652)) b!662502))

(assert (= (and b!662502 (not res!430648)) b!662488))

(assert (= (and b!662488 (not res!430637)) b!662499))

(assert (= (and b!662499 (not res!430634)) b!662494))

(declare-fun m!634323 () Bool)

(assert (=> b!662493 m!634323))

(declare-fun m!634325 () Bool)

(assert (=> b!662499 m!634325))

(declare-fun m!634327 () Bool)

(assert (=> b!662497 m!634327))

(declare-fun m!634329 () Bool)

(assert (=> b!662486 m!634329))

(declare-fun m!634331 () Bool)

(assert (=> b!662503 m!634331))

(declare-fun m!634333 () Bool)

(assert (=> start!59902 m!634333))

(assert (=> b!662489 m!634323))

(declare-fun m!634335 () Bool)

(assert (=> b!662490 m!634335))

(declare-fun m!634337 () Bool)

(assert (=> b!662487 m!634337))

(declare-fun m!634339 () Bool)

(assert (=> b!662487 m!634339))

(declare-fun m!634341 () Bool)

(assert (=> b!662487 m!634341))

(assert (=> b!662487 m!634337))

(declare-fun m!634343 () Bool)

(assert (=> b!662487 m!634343))

(declare-fun m!634345 () Bool)

(assert (=> b!662487 m!634345))

(declare-fun m!634347 () Bool)

(assert (=> b!662488 m!634347))

(declare-fun m!634349 () Bool)

(assert (=> b!662491 m!634349))

(declare-fun m!634351 () Bool)

(assert (=> b!662502 m!634351))

(declare-fun m!634353 () Bool)

(assert (=> b!662494 m!634353))

(declare-fun m!634355 () Bool)

(assert (=> b!662494 m!634355))

(declare-fun m!634357 () Bool)

(assert (=> b!662484 m!634357))

(declare-fun m!634359 () Bool)

(assert (=> b!662496 m!634359))

(declare-fun m!634361 () Bool)

(assert (=> b!662483 m!634361))

(declare-fun m!634363 () Bool)

(assert (=> b!662501 m!634363))

(assert (=> b!662492 m!634337))

(assert (=> b!662492 m!634337))

(declare-fun m!634365 () Bool)

(assert (=> b!662492 m!634365))

(declare-fun m!634367 () Bool)

(assert (=> b!662492 m!634367))

(declare-fun m!634369 () Bool)

(assert (=> b!662492 m!634369))

(push 1)

