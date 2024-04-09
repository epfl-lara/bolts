; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61480 () Bool)

(assert start!61480)

(declare-fun b!687476 () Bool)

(declare-fun res!452504 () Bool)

(declare-fun e!391543 () Bool)

(assert (=> b!687476 (=> (not res!452504) (not e!391543))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!687476 (= res!452504 (validKeyInArray!0 k!2843))))

(declare-fun b!687477 () Bool)

(declare-fun res!452520 () Bool)

(assert (=> b!687477 (=> (not res!452520) (not e!391543))))

(declare-datatypes ((List!13092 0))(
  ( (Nil!13089) (Cons!13088 (h!14133 (_ BitVec 64)) (t!19361 List!13092)) )
))
(declare-fun acc!681 () List!13092)

(declare-fun contains!3635 (List!13092 (_ BitVec 64)) Bool)

(assert (=> b!687477 (= res!452520 (not (contains!3635 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687478 () Bool)

(declare-fun res!452511 () Bool)

(assert (=> b!687478 (=> (not res!452511) (not e!391543))))

(declare-datatypes ((array!39658 0))(
  ( (array!39659 (arr!18998 (Array (_ BitVec 32) (_ BitVec 64))) (size!19376 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39658)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39658 (_ BitVec 32) List!13092) Bool)

(assert (=> b!687478 (= res!452511 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!687479 () Bool)

(declare-fun res!452502 () Bool)

(assert (=> b!687479 (=> (not res!452502) (not e!391543))))

(declare-fun noDuplicate!882 (List!13092) Bool)

(assert (=> b!687479 (= res!452502 (noDuplicate!882 acc!681))))

(declare-fun b!687480 () Bool)

(declare-fun res!452506 () Bool)

(assert (=> b!687480 (=> (not res!452506) (not e!391543))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!687480 (= res!452506 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19376 a!3626))))))

(declare-fun b!687481 () Bool)

(declare-fun res!452521 () Bool)

(declare-fun e!391549 () Bool)

(assert (=> b!687481 (=> res!452521 e!391549)))

(declare-fun lt!315444 () List!13092)

(assert (=> b!687481 (= res!452521 (contains!3635 lt!315444 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687483 () Bool)

(declare-fun e!391548 () Bool)

(declare-fun e!391544 () Bool)

(assert (=> b!687483 (= e!391548 e!391544)))

(declare-fun res!452508 () Bool)

(assert (=> b!687483 (=> (not res!452508) (not e!391544))))

(assert (=> b!687483 (= res!452508 (bvsle from!3004 i!1382))))

(declare-fun b!687484 () Bool)

(declare-fun res!452514 () Bool)

(assert (=> b!687484 (=> (not res!452514) (not e!391543))))

(assert (=> b!687484 (= res!452514 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13089))))

(declare-fun b!687485 () Bool)

(declare-fun res!452515 () Bool)

(assert (=> b!687485 (=> res!452515 e!391549)))

(declare-fun e!391546 () Bool)

(assert (=> b!687485 (= res!452515 e!391546)))

(declare-fun res!452517 () Bool)

(assert (=> b!687485 (=> (not res!452517) (not e!391546))))

(assert (=> b!687485 (= res!452517 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687486 () Bool)

(assert (=> b!687486 (= e!391544 (not (contains!3635 acc!681 k!2843)))))

(declare-fun b!687487 () Bool)

(declare-fun res!452519 () Bool)

(assert (=> b!687487 (=> res!452519 e!391549)))

(assert (=> b!687487 (= res!452519 (not (noDuplicate!882 lt!315444)))))

(declare-fun b!687488 () Bool)

(declare-fun e!391552 () Bool)

(assert (=> b!687488 (= e!391549 e!391552)))

(declare-fun res!452509 () Bool)

(assert (=> b!687488 (=> (not res!452509) (not e!391552))))

(assert (=> b!687488 (= res!452509 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!687489 () Bool)

(declare-fun e!391551 () Bool)

(assert (=> b!687489 (= e!391551 (contains!3635 acc!681 k!2843))))

(declare-fun b!687490 () Bool)

(assert (=> b!687490 (= e!391552 (not (contains!3635 lt!315444 k!2843)))))

(declare-fun b!687491 () Bool)

(declare-datatypes ((Unit!24227 0))(
  ( (Unit!24228) )
))
(declare-fun e!391550 () Unit!24227)

(declare-fun Unit!24229 () Unit!24227)

(assert (=> b!687491 (= e!391550 Unit!24229)))

(declare-fun lt!315448 () Unit!24227)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39658 (_ BitVec 64) (_ BitVec 32)) Unit!24227)

(assert (=> b!687491 (= lt!315448 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!687491 false))

(declare-fun b!687492 () Bool)

(declare-fun res!452505 () Bool)

(assert (=> b!687492 (=> (not res!452505) (not e!391543))))

(assert (=> b!687492 (= res!452505 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19376 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!687493 () Bool)

(declare-fun res!452507 () Bool)

(assert (=> b!687493 (=> (not res!452507) (not e!391543))))

(declare-fun arrayContainsKey!0 (array!39658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!687493 (= res!452507 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!687494 () Bool)

(declare-fun e!391547 () Unit!24227)

(declare-fun Unit!24230 () Unit!24227)

(assert (=> b!687494 (= e!391547 Unit!24230)))

(declare-fun b!687495 () Bool)

(assert (=> b!687495 (= e!391543 (not e!391549))))

(declare-fun res!452503 () Bool)

(assert (=> b!687495 (=> res!452503 e!391549)))

(assert (=> b!687495 (= res!452503 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!687495 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315444)))

(declare-fun lt!315450 () Unit!24227)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39658 (_ BitVec 64) (_ BitVec 32) List!13092 List!13092) Unit!24227)

(assert (=> b!687495 (= lt!315450 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315444))))

(declare-fun -!185 (List!13092 (_ BitVec 64)) List!13092)

(assert (=> b!687495 (= (-!185 lt!315444 k!2843) acc!681)))

(declare-fun $colon$colon!384 (List!13092 (_ BitVec 64)) List!13092)

(assert (=> b!687495 (= lt!315444 ($colon$colon!384 acc!681 k!2843))))

(declare-fun lt!315449 () Unit!24227)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13092) Unit!24227)

(assert (=> b!687495 (= lt!315449 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!220 (List!13092 List!13092) Bool)

(assert (=> b!687495 (subseq!220 acc!681 acc!681)))

(declare-fun lt!315443 () Unit!24227)

(declare-fun lemmaListSubSeqRefl!0 (List!13092) Unit!24227)

(assert (=> b!687495 (= lt!315443 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687495 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315446 () Unit!24227)

(assert (=> b!687495 (= lt!315446 e!391547)))

(declare-fun c!77855 () Bool)

(assert (=> b!687495 (= c!77855 (validKeyInArray!0 (select (arr!18998 a!3626) from!3004)))))

(declare-fun lt!315445 () Unit!24227)

(assert (=> b!687495 (= lt!315445 e!391550)))

(declare-fun c!77854 () Bool)

(assert (=> b!687495 (= c!77854 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687495 (arrayContainsKey!0 (array!39659 (store (arr!18998 a!3626) i!1382 k!2843) (size!19376 a!3626)) k!2843 from!3004)))

(declare-fun b!687496 () Bool)

(declare-fun Unit!24231 () Unit!24227)

(assert (=> b!687496 (= e!391550 Unit!24231)))

(declare-fun b!687482 () Bool)

(assert (=> b!687482 (= e!391546 (contains!3635 lt!315444 k!2843))))

(declare-fun res!452518 () Bool)

(assert (=> start!61480 (=> (not res!452518) (not e!391543))))

(assert (=> start!61480 (= res!452518 (and (bvslt (size!19376 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19376 a!3626))))))

(assert (=> start!61480 e!391543))

(assert (=> start!61480 true))

(declare-fun array_inv!14772 (array!39658) Bool)

(assert (=> start!61480 (array_inv!14772 a!3626)))

(declare-fun b!687497 () Bool)

(declare-fun res!452516 () Bool)

(assert (=> b!687497 (=> res!452516 e!391549)))

(assert (=> b!687497 (= res!452516 (contains!3635 lt!315444 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687498 () Bool)

(declare-fun res!452510 () Bool)

(assert (=> b!687498 (=> (not res!452510) (not e!391543))))

(assert (=> b!687498 (= res!452510 e!391548)))

(declare-fun res!452522 () Bool)

(assert (=> b!687498 (=> res!452522 e!391548)))

(assert (=> b!687498 (= res!452522 e!391551)))

(declare-fun res!452513 () Bool)

(assert (=> b!687498 (=> (not res!452513) (not e!391551))))

(assert (=> b!687498 (= res!452513 (bvsgt from!3004 i!1382))))

(declare-fun b!687499 () Bool)

(declare-fun res!452512 () Bool)

(assert (=> b!687499 (=> (not res!452512) (not e!391543))))

(assert (=> b!687499 (= res!452512 (not (contains!3635 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!687500 () Bool)

(declare-fun lt!315442 () Unit!24227)

(assert (=> b!687500 (= e!391547 lt!315442)))

(declare-fun lt!315447 () Unit!24227)

(assert (=> b!687500 (= lt!315447 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!687500 (subseq!220 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39658 List!13092 List!13092 (_ BitVec 32)) Unit!24227)

(assert (=> b!687500 (= lt!315442 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!384 acc!681 (select (arr!18998 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!687500 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!61480 res!452518) b!687479))

(assert (= (and b!687479 res!452502) b!687499))

(assert (= (and b!687499 res!452512) b!687477))

(assert (= (and b!687477 res!452520) b!687498))

(assert (= (and b!687498 res!452513) b!687489))

(assert (= (and b!687498 (not res!452522)) b!687483))

(assert (= (and b!687483 res!452508) b!687486))

(assert (= (and b!687498 res!452510) b!687484))

(assert (= (and b!687484 res!452514) b!687478))

(assert (= (and b!687478 res!452511) b!687480))

(assert (= (and b!687480 res!452506) b!687476))

(assert (= (and b!687476 res!452504) b!687493))

(assert (= (and b!687493 res!452507) b!687492))

(assert (= (and b!687492 res!452505) b!687495))

(assert (= (and b!687495 c!77854) b!687491))

(assert (= (and b!687495 (not c!77854)) b!687496))

(assert (= (and b!687495 c!77855) b!687500))

(assert (= (and b!687495 (not c!77855)) b!687494))

(assert (= (and b!687495 (not res!452503)) b!687487))

(assert (= (and b!687487 (not res!452519)) b!687497))

(assert (= (and b!687497 (not res!452516)) b!687481))

(assert (= (and b!687481 (not res!452521)) b!687485))

(assert (= (and b!687485 res!452517) b!687482))

(assert (= (and b!687485 (not res!452515)) b!687488))

(assert (= (and b!687488 res!452509) b!687490))

(declare-fun m!651539 () Bool)

(assert (=> start!61480 m!651539))

(declare-fun m!651541 () Bool)

(assert (=> b!687493 m!651541))

(declare-fun m!651543 () Bool)

(assert (=> b!687487 m!651543))

(declare-fun m!651545 () Bool)

(assert (=> b!687486 m!651545))

(assert (=> b!687489 m!651545))

(declare-fun m!651547 () Bool)

(assert (=> b!687476 m!651547))

(declare-fun m!651549 () Bool)

(assert (=> b!687481 m!651549))

(declare-fun m!651551 () Bool)

(assert (=> b!687490 m!651551))

(declare-fun m!651553 () Bool)

(assert (=> b!687499 m!651553))

(declare-fun m!651555 () Bool)

(assert (=> b!687500 m!651555))

(declare-fun m!651557 () Bool)

(assert (=> b!687500 m!651557))

(declare-fun m!651559 () Bool)

(assert (=> b!687500 m!651559))

(declare-fun m!651561 () Bool)

(assert (=> b!687500 m!651561))

(assert (=> b!687500 m!651557))

(assert (=> b!687500 m!651559))

(declare-fun m!651563 () Bool)

(assert (=> b!687500 m!651563))

(declare-fun m!651565 () Bool)

(assert (=> b!687500 m!651565))

(declare-fun m!651567 () Bool)

(assert (=> b!687497 m!651567))

(declare-fun m!651569 () Bool)

(assert (=> b!687478 m!651569))

(declare-fun m!651571 () Bool)

(assert (=> b!687484 m!651571))

(declare-fun m!651573 () Bool)

(assert (=> b!687477 m!651573))

(assert (=> b!687482 m!651551))

(declare-fun m!651575 () Bool)

(assert (=> b!687491 m!651575))

(declare-fun m!651577 () Bool)

(assert (=> b!687495 m!651577))

(assert (=> b!687495 m!651555))

(assert (=> b!687495 m!651557))

(declare-fun m!651579 () Bool)

(assert (=> b!687495 m!651579))

(declare-fun m!651581 () Bool)

(assert (=> b!687495 m!651581))

(declare-fun m!651583 () Bool)

(assert (=> b!687495 m!651583))

(assert (=> b!687495 m!651563))

(declare-fun m!651585 () Bool)

(assert (=> b!687495 m!651585))

(assert (=> b!687495 m!651557))

(declare-fun m!651587 () Bool)

(assert (=> b!687495 m!651587))

(declare-fun m!651589 () Bool)

(assert (=> b!687495 m!651589))

(declare-fun m!651591 () Bool)

(assert (=> b!687495 m!651591))

(declare-fun m!651593 () Bool)

(assert (=> b!687495 m!651593))

(assert (=> b!687495 m!651565))

(declare-fun m!651595 () Bool)

(assert (=> b!687479 m!651595))

(push 1)

(assert (not b!687489))

(assert (not start!61480))

(assert (not b!687478))

(assert (not b!687476))

(assert (not b!687500))

(assert (not b!687495))

(assert (not b!687482))

(assert (not b!687497))

(assert (not b!687481))

(assert (not b!687491))

(assert (not b!687490))

(assert (not b!687493))

(assert (not b!687487))

(assert (not b!687499))

(assert (not b!687477))

(assert (not b!687484))

(assert (not b!687479))

(assert (not b!687486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!687511 () Bool)

(declare-fun e!391561 () Bool)

(assert (=> b!687511 (= e!391561 (contains!3635 Nil!13089 (select (arr!18998 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687512 () Bool)

(declare-fun e!391562 () Bool)

(declare-fun e!391563 () Bool)

(assert (=> b!687512 (= e!391562 e!391563)))

(declare-fun c!77858 () Bool)

(assert (=> b!687512 (= c!77858 (validKeyInArray!0 (select (arr!18998 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687514 () Bool)

(declare-fun e!391564 () Bool)

(assert (=> b!687514 (= e!391564 e!391562)))

(declare-fun res!452530 () Bool)

(assert (=> b!687514 (=> (not res!452530) (not e!391562))))

(assert (=> b!687514 (= res!452530 (not e!391561))))

(declare-fun res!452529 () Bool)

(assert (=> b!687514 (=> (not res!452529) (not e!391561))))

(assert (=> b!687514 (= res!452529 (validKeyInArray!0 (select (arr!18998 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!687513 () Bool)

(declare-fun call!34154 () Bool)

(assert (=> b!687513 (= e!391563 call!34154)))

(declare-fun d!94947 () Bool)

(declare-fun res!452531 () Bool)

(assert (=> d!94947 (=> res!452531 e!391564)))

(assert (=> d!94947 (= res!452531 (bvsge #b00000000000000000000000000000000 (size!19376 a!3626)))))

(assert (=> d!94947 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13089) e!391564)))

(declare-fun b!687515 () Bool)

(assert (=> b!687515 (= e!391563 call!34154)))

(declare-fun bm!34151 () Bool)

(assert (=> bm!34151 (= call!34154 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77858 (Cons!13088 (select (arr!18998 a!3626) #b00000000000000000000000000000000) Nil!13089) Nil!13089)))))

(assert (= (and d!94947 (not res!452531)) b!687514))

(assert (= (and b!687514 res!452529) b!687511))

(assert (= (and b!687514 res!452530) b!687512))

(assert (= (and b!687512 c!77858) b!687513))

(assert (= (and b!687512 (not c!77858)) b!687515))

(assert (= (or b!687513 b!687515) bm!34151))

(declare-fun m!651597 () Bool)

(assert (=> b!687511 m!651597))

(assert (=> b!687511 m!651597))

(declare-fun m!651599 () Bool)

(assert (=> b!687511 m!651599))

(assert (=> b!687512 m!651597))

(assert (=> b!687512 m!651597))

(declare-fun m!651601 () Bool)

(assert (=> b!687512 m!651601))

(assert (=> b!687514 m!651597))

(assert (=> b!687514 m!651597))

(assert (=> b!687514 m!651601))

(assert (=> bm!34151 m!651597))

(declare-fun m!651603 () Bool)

(assert (=> bm!34151 m!651603))

(assert (=> b!687484 d!94947))

(declare-fun d!94951 () Bool)

(declare-fun res!452542 () Bool)

(declare-fun e!391575 () Bool)

(assert (=> d!94951 (=> res!452542 e!391575)))

(assert (=> d!94951 (= res!452542 (= (select (arr!18998 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!94951 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!391575)))

(declare-fun b!687526 () Bool)

(declare-fun e!391576 () Bool)

(assert (=> b!687526 (= e!391575 e!391576)))

(declare-fun res!452543 () Bool)

(assert (=> b!687526 (=> (not res!452543) (not e!391576))))

(assert (=> b!687526 (= res!452543 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19376 a!3626)))))

(declare-fun b!687527 () Bool)

(assert (=> b!687527 (= e!391576 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!94951 (not res!452542)) b!687526))

(assert (= (and b!687526 res!452543) b!687527))

(assert (=> d!94951 m!651597))

(declare-fun m!651609 () Bool)

(assert (=> b!687527 m!651609))

(assert (=> b!687493 d!94951))

(declare-fun d!94955 () Bool)

(declare-fun lt!315453 () Bool)

(declare-fun content!302 (List!13092) (Set (_ BitVec 64)))

(assert (=> d!94955 (= lt!315453 (member k!2843 (content!302 lt!315444)))))

(declare-fun e!391589 () Bool)

(assert (=> d!94955 (= lt!315453 e!391589)))

(declare-fun res!452554 () Bool)

(assert (=> d!94955 (=> (not res!452554) (not e!391589))))

(assert (=> d!94955 (= res!452554 (is-Cons!13088 lt!315444))))

(assert (=> d!94955 (= (contains!3635 lt!315444 k!2843) lt!315453)))

(declare-fun b!687542 () Bool)

(declare-fun e!391590 () Bool)

(assert (=> b!687542 (= e!391589 e!391590)))

(declare-fun res!452555 () Bool)

(assert (=> b!687542 (=> res!452555 e!391590)))

(assert (=> b!687542 (= res!452555 (= (h!14133 lt!315444) k!2843))))

(declare-fun b!687543 () Bool)

(assert (=> b!687543 (= e!391590 (contains!3635 (t!19361 lt!315444) k!2843))))

(assert (= (and d!94955 res!452554) b!687542))

(assert (= (and b!687542 (not res!452555)) b!687543))

(declare-fun m!651611 () Bool)

(assert (=> d!94955 m!651611))

(declare-fun m!651613 () Bool)

(assert (=> d!94955 m!651613))

(declare-fun m!651615 () Bool)

(assert (=> b!687543 m!651615))

(assert (=> b!687482 d!94955))

(declare-fun d!94959 () Bool)

(declare-fun lt!315454 () Bool)

(assert (=> d!94959 (= lt!315454 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!302 lt!315444)))))

(declare-fun e!391591 () Bool)

(assert (=> d!94959 (= lt!315454 e!391591)))

(declare-fun res!452556 () Bool)

(assert (=> d!94959 (=> (not res!452556) (not e!391591))))

(assert (=> d!94959 (= res!452556 (is-Cons!13088 lt!315444))))

(assert (=> d!94959 (= (contains!3635 lt!315444 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315454)))

(declare-fun b!687544 () Bool)

(declare-fun e!391592 () Bool)

(assert (=> b!687544 (= e!391591 e!391592)))

(declare-fun res!452557 () Bool)

(assert (=> b!687544 (=> res!452557 e!391592)))

(assert (=> b!687544 (= res!452557 (= (h!14133 lt!315444) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687545 () Bool)

(assert (=> b!687545 (= e!391592 (contains!3635 (t!19361 lt!315444) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!94959 res!452556) b!687544))

(assert (= (and b!687544 (not res!452557)) b!687545))

(assert (=> d!94959 m!651611))

(declare-fun m!651617 () Bool)

(assert (=> d!94959 m!651617))

(declare-fun m!651619 () Bool)

(assert (=> b!687545 m!651619))

(assert (=> b!687497 d!94959))

(declare-fun d!94963 () Bool)

(assert (=> d!94963 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687476 d!94963))

(declare-fun d!94967 () Bool)

(declare-fun lt!315455 () Bool)

(assert (=> d!94967 (= lt!315455 (member k!2843 (content!302 acc!681)))))

(declare-fun e!391597 () Bool)

(assert (=> d!94967 (= lt!315455 e!391597)))

(declare-fun res!452561 () Bool)

(assert (=> d!94967 (=> (not res!452561) (not e!391597))))

(assert (=> d!94967 (= res!452561 (is-Cons!13088 acc!681))))

(assert (=> d!94967 (= (contains!3635 acc!681 k!2843) lt!315455)))

(declare-fun b!687551 () Bool)

(declare-fun e!391598 () Bool)

(assert (=> b!687551 (= e!391597 e!391598)))

(declare-fun res!452562 () Bool)

(assert (=> b!687551 (=> res!452562 e!391598)))

(assert (=> b!687551 (= res!452562 (= (h!14133 acc!681) k!2843))))

(declare-fun b!687552 () Bool)

(assert (=> b!687552 (= e!391598 (contains!3635 (t!19361 acc!681) k!2843))))

(assert (= (and d!94967 res!452561) b!687551))

(assert (= (and b!687551 (not res!452562)) b!687552))

(declare-fun m!651625 () Bool)

(assert (=> d!94967 m!651625))

(declare-fun m!651627 () Bool)

(assert (=> d!94967 m!651627))

(declare-fun m!651629 () Bool)

(assert (=> b!687552 m!651629))

(assert (=> b!687486 d!94967))

(declare-fun d!94969 () Bool)

(assert (=> d!94969 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315444)))

(declare-fun lt!315462 () Unit!24227)

(declare-fun choose!66 (array!39658 (_ BitVec 64) (_ BitVec 32) List!13092 List!13092) Unit!24227)

(assert (=> d!94969 (= lt!315462 (choose!66 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315444))))

(assert (=> d!94969 (bvslt (size!19376 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!94969 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315444) lt!315462)))

(declare-fun bs!20162 () Bool)

(assert (= bs!20162 d!94969))

(assert (=> bs!20162 m!651589))

(declare-fun m!651631 () Bool)

(assert (=> bs!20162 m!651631))

(assert (=> b!687495 d!94969))

(declare-fun d!94971 () Bool)

(assert (=> d!94971 (= (-!185 ($colon$colon!384 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!315468 () Unit!24227)

(declare-fun choose!16 ((_ BitVec 64) List!13092) Unit!24227)

(assert (=> d!94971 (= lt!315468 (choose!16 k!2843 acc!681))))

(assert (=> d!94971 (not (contains!3635 acc!681 k!2843))))

(assert (=> d!94971 (= (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681) lt!315468)))

(declare-fun bs!20163 () Bool)

(assert (= bs!20163 d!94971))

(assert (=> bs!20163 m!651585))

(assert (=> bs!20163 m!651585))

(declare-fun m!651653 () Bool)

(assert (=> bs!20163 m!651653))

(declare-fun m!651655 () Bool)

(assert (=> bs!20163 m!651655))

(assert (=> bs!20163 m!651545))

(assert (=> b!687495 d!94971))

(declare-fun d!94981 () Bool)

(declare-fun res!452578 () Bool)

(declare-fun e!391621 () Bool)

(assert (=> d!94981 (=> res!452578 e!391621)))

(assert (=> d!94981 (= res!452578 (= (select (arr!18998 (array!39659 (store (arr!18998 a!3626) i!1382 k!2843) (size!19376 a!3626))) from!3004) k!2843))))

(assert (=> d!94981 (= (arrayContainsKey!0 (array!39659 (store (arr!18998 a!3626) i!1382 k!2843) (size!19376 a!3626)) k!2843 from!3004) e!391621)))

(declare-fun b!687580 () Bool)

(declare-fun e!391622 () Bool)

(assert (=> b!687580 (= e!391621 e!391622)))

(declare-fun res!452579 () Bool)

(assert (=> b!687580 (=> (not res!452579) (not e!391622))))

(assert (=> b!687580 (= res!452579 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19376 (array!39659 (store (arr!18998 a!3626) i!1382 k!2843) (size!19376 a!3626)))))))

(declare-fun b!687581 () Bool)

(assert (=> b!687581 (= e!391622 (arrayContainsKey!0 (array!39659 (store (arr!18998 a!3626) i!1382 k!2843) (size!19376 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!94981 (not res!452578)) b!687580))

(assert (= (and b!687580 res!452579) b!687581))

(declare-fun m!651665 () Bool)

(assert (=> d!94981 m!651665))

(declare-fun m!651671 () Bool)

(assert (=> b!687581 m!651671))

(assert (=> b!687495 d!94981))

(declare-fun b!687605 () Bool)

(declare-fun e!391646 () Bool)

(declare-fun e!391647 () Bool)

(assert (=> b!687605 (= e!391646 e!391647)))

(declare-fun res!452603 () Bool)

(assert (=> b!687605 (=> res!452603 e!391647)))

(declare-fun e!391648 () Bool)

(assert (=> b!687605 (= res!452603 e!391648)))

(declare-fun res!452602 () Bool)

(assert (=> b!687605 (=> (not res!452602) (not e!391648))))

(assert (=> b!687605 (= res!452602 (= (h!14133 acc!681) (h!14133 acc!681)))))

(declare-fun d!94985 () Bool)

(declare-fun res!452605 () Bool)

(declare-fun e!391645 () Bool)

(assert (=> d!94985 (=> res!452605 e!391645)))

(assert (=> d!94985 (= res!452605 (is-Nil!13089 acc!681))))

(assert (=> d!94985 (= (subseq!220 acc!681 acc!681) e!391645)))

(declare-fun b!687606 () Bool)

(assert (=> b!687606 (= e!391648 (subseq!220 (t!19361 acc!681) (t!19361 acc!681)))))

(declare-fun b!687607 () Bool)

(assert (=> b!687607 (= e!391647 (subseq!220 acc!681 (t!19361 acc!681)))))

(declare-fun b!687604 () Bool)

(assert (=> b!687604 (= e!391645 e!391646)))

(declare-fun res!452604 () Bool)

(assert (=> b!687604 (=> (not res!452604) (not e!391646))))

(assert (=> b!687604 (= res!452604 (is-Cons!13088 acc!681))))

(assert (= (and d!94985 (not res!452605)) b!687604))

(assert (= (and b!687604 res!452604) b!687605))

(assert (= (and b!687605 res!452602) b!687606))

(assert (= (and b!687605 (not res!452603)) b!687607))

(declare-fun m!651687 () Bool)

(assert (=> b!687606 m!651687))

(declare-fun m!651689 () Bool)

(assert (=> b!687607 m!651689))

(assert (=> b!687495 d!94985))

(declare-fun b!687634 () Bool)

(declare-fun e!391672 () List!13092)

(declare-fun call!34163 () List!13092)

(assert (=> b!687634 (= e!391672 (Cons!13088 (h!14133 lt!315444) call!34163))))

(declare-fun b!687635 () Bool)

(assert (=> b!687635 (= e!391672 call!34163)))

(declare-fun bm!34160 () Bool)

(assert (=> bm!34160 (= call!34163 (-!185 (t!19361 lt!315444) k!2843))))

(declare-fun e!391673 () Bool)

(declare-fun b!687636 () Bool)

(declare-fun lt!315483 () List!13092)

(assert (=> b!687636 (= e!391673 (= (content!302 lt!315483) (setminus (content!302 lt!315444) (insert k!2843 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun d!94995 () Bool)

(assert (=> d!94995 e!391673))

(declare-fun res!452624 () Bool)

(assert (=> d!94995 (=> (not res!452624) (not e!391673))))

(declare-fun size!19378 (List!13092) Int)

(assert (=> d!94995 (= res!452624 (<= (size!19378 lt!315483) (size!19378 lt!315444)))))

(declare-fun e!391674 () List!13092)

(assert (=> d!94995 (= lt!315483 e!391674)))

(declare-fun c!77873 () Bool)

(assert (=> d!94995 (= c!77873 (is-Cons!13088 lt!315444))))

(assert (=> d!94995 (= (-!185 lt!315444 k!2843) lt!315483)))

(declare-fun b!687637 () Bool)

(assert (=> b!687637 (= e!391674 Nil!13089)))

(declare-fun b!687638 () Bool)

(assert (=> b!687638 (= e!391674 e!391672)))

(declare-fun c!77872 () Bool)

(assert (=> b!687638 (= c!77872 (= k!2843 (h!14133 lt!315444)))))

(assert (= (and d!94995 c!77873) b!687638))

(assert (= (and d!94995 (not c!77873)) b!687637))

(assert (= (and b!687638 c!77872) b!687635))

(assert (= (and b!687638 (not c!77872)) b!687634))

(assert (= (or b!687635 b!687634) bm!34160))

(assert (= (and d!94995 res!452624) b!687636))

(declare-fun m!651709 () Bool)

(assert (=> bm!34160 m!651709))

(declare-fun m!651711 () Bool)

(assert (=> b!687636 m!651711))

(assert (=> b!687636 m!651611))

(declare-fun m!651713 () Bool)

(assert (=> b!687636 m!651713))

(declare-fun m!651715 () Bool)

(assert (=> d!94995 m!651715))

(declare-fun m!651717 () Bool)

(assert (=> d!94995 m!651717))

(assert (=> b!687495 d!94995))

(declare-fun d!95011 () Bool)

(declare-fun res!452625 () Bool)

(declare-fun e!391675 () Bool)

(assert (=> d!95011 (=> res!452625 e!391675)))

(assert (=> d!95011 (= res!452625 (= (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!95011 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!391675)))

(declare-fun b!687639 () Bool)

(declare-fun e!391676 () Bool)

(assert (=> b!687639 (= e!391675 e!391676)))

(declare-fun res!452626 () Bool)

(assert (=> b!687639 (=> (not res!452626) (not e!391676))))

(assert (=> b!687639 (= res!452626 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19376 a!3626)))))

(declare-fun b!687640 () Bool)

(assert (=> b!687640 (= e!391676 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!95011 (not res!452625)) b!687639))

(assert (= (and b!687639 res!452626) b!687640))

(declare-fun m!651719 () Bool)

(assert (=> d!95011 m!651719))

(declare-fun m!651721 () Bool)

(assert (=> b!687640 m!651721))

(assert (=> b!687495 d!95011))

(declare-fun b!687641 () Bool)

(declare-fun e!391677 () Bool)

(assert (=> b!687641 (= e!391677 (contains!3635 lt!315444 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687642 () Bool)

(declare-fun e!391678 () Bool)

(declare-fun e!391679 () Bool)

(assert (=> b!687642 (= e!391678 e!391679)))

(declare-fun c!77874 () Bool)

(assert (=> b!687642 (= c!77874 (validKeyInArray!0 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687644 () Bool)

(declare-fun e!391680 () Bool)

(assert (=> b!687644 (= e!391680 e!391678)))

(declare-fun res!452628 () Bool)

(assert (=> b!687644 (=> (not res!452628) (not e!391678))))

(assert (=> b!687644 (= res!452628 (not e!391677))))

(declare-fun res!452627 () Bool)

(assert (=> b!687644 (=> (not res!452627) (not e!391677))))

(assert (=> b!687644 (= res!452627 (validKeyInArray!0 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687643 () Bool)

(declare-fun call!34164 () Bool)

(assert (=> b!687643 (= e!391679 call!34164)))

(declare-fun d!95013 () Bool)

(declare-fun res!452629 () Bool)

(assert (=> d!95013 (=> res!452629 e!391680)))

(assert (=> d!95013 (= res!452629 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19376 a!3626)))))

(assert (=> d!95013 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315444) e!391680)))

(declare-fun b!687645 () Bool)

(assert (=> b!687645 (= e!391679 call!34164)))

(declare-fun bm!34161 () Bool)

(assert (=> bm!34161 (= call!34164 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77874 (Cons!13088 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!315444) lt!315444)))))

(assert (= (and d!95013 (not res!452629)) b!687644))

(assert (= (and b!687644 res!452627) b!687641))

(assert (= (and b!687644 res!452628) b!687642))

(assert (= (and b!687642 c!77874) b!687643))

(assert (= (and b!687642 (not c!77874)) b!687645))

(assert (= (or b!687643 b!687645) bm!34161))

(assert (=> b!687641 m!651719))

(assert (=> b!687641 m!651719))

(declare-fun m!651723 () Bool)

(assert (=> b!687641 m!651723))

(assert (=> b!687642 m!651719))

(assert (=> b!687642 m!651719))

(declare-fun m!651725 () Bool)

(assert (=> b!687642 m!651725))

(assert (=> b!687644 m!651719))

(assert (=> b!687644 m!651719))

(assert (=> b!687644 m!651725))

(assert (=> bm!34161 m!651719))

(declare-fun m!651727 () Bool)

(assert (=> bm!34161 m!651727))

(assert (=> b!687495 d!95013))

(declare-fun d!95015 () Bool)

(assert (=> d!95015 (subseq!220 acc!681 acc!681)))

(declare-fun lt!315491 () Unit!24227)

(declare-fun choose!36 (List!13092) Unit!24227)

(assert (=> d!95015 (= lt!315491 (choose!36 acc!681))))

(assert (=> d!95015 (= (lemmaListSubSeqRefl!0 acc!681) lt!315491)))

(declare-fun bs!20168 () Bool)

(assert (= bs!20168 d!95015))

(assert (=> bs!20168 m!651565))

(declare-fun m!651731 () Bool)

(assert (=> bs!20168 m!651731))

(assert (=> b!687495 d!95015))

(declare-fun d!95019 () Bool)

(assert (=> d!95019 (= (validKeyInArray!0 (select (arr!18998 a!3626) from!3004)) (and (not (= (select (arr!18998 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18998 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!687495 d!95019))

(declare-fun d!95023 () Bool)

(assert (=> d!95023 (= ($colon$colon!384 acc!681 k!2843) (Cons!13088 k!2843 acc!681))))

(assert (=> b!687495 d!95023))

(declare-fun b!687661 () Bool)

(declare-fun e!391693 () Bool)

(assert (=> b!687661 (= e!391693 (contains!3635 acc!681 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687662 () Bool)

(declare-fun e!391694 () Bool)

(declare-fun e!391695 () Bool)

(assert (=> b!687662 (= e!391694 e!391695)))

(declare-fun c!77878 () Bool)

(assert (=> b!687662 (= c!77878 (validKeyInArray!0 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687664 () Bool)

(declare-fun e!391696 () Bool)

(assert (=> b!687664 (= e!391696 e!391694)))

(declare-fun res!452640 () Bool)

(assert (=> b!687664 (=> (not res!452640) (not e!391694))))

(assert (=> b!687664 (= res!452640 (not e!391693))))

(declare-fun res!452639 () Bool)

(assert (=> b!687664 (=> (not res!452639) (not e!391693))))

(assert (=> b!687664 (= res!452639 (validKeyInArray!0 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!687663 () Bool)

(declare-fun call!34168 () Bool)

(assert (=> b!687663 (= e!391695 call!34168)))

(declare-fun d!95025 () Bool)

(declare-fun res!452641 () Bool)

(assert (=> d!95025 (=> res!452641 e!391696)))

(assert (=> d!95025 (= res!452641 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19376 a!3626)))))

(assert (=> d!95025 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681) e!391696)))

(declare-fun b!687665 () Bool)

(assert (=> b!687665 (= e!391695 call!34168)))

(declare-fun bm!34165 () Bool)

(assert (=> bm!34165 (= call!34168 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!77878 (Cons!13088 (select (arr!18998 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

(assert (= (and d!95025 (not res!452641)) b!687664))

(assert (= (and b!687664 res!452639) b!687661))

(assert (= (and b!687664 res!452640) b!687662))

(assert (= (and b!687662 c!77878) b!687663))

(assert (= (and b!687662 (not c!77878)) b!687665))

(assert (= (or b!687663 b!687665) bm!34165))

(assert (=> b!687661 m!651719))

(assert (=> b!687661 m!651719))

(declare-fun m!651743 () Bool)

(assert (=> b!687661 m!651743))

(assert (=> b!687662 m!651719))

(assert (=> b!687662 m!651719))

(assert (=> b!687662 m!651725))

(assert (=> b!687664 m!651719))

(assert (=> b!687664 m!651719))

(assert (=> b!687664 m!651725))

(assert (=> bm!34165 m!651719))

(declare-fun m!651747 () Bool)

(assert (=> bm!34165 m!651747))

(assert (=> b!687495 d!95025))

(assert (=> b!687489 d!94967))

(declare-fun d!95031 () Bool)

(assert (=> d!95031 (= ($colon$colon!384 acc!681 (select (arr!18998 a!3626) from!3004)) (Cons!13088 (select (arr!18998 a!3626) from!3004) acc!681))))

(assert (=> b!687500 d!95031))

(assert (=> b!687500 d!94985))

(declare-fun d!95033 () Bool)

(assert (=> d!95033 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315496 () Unit!24227)

(declare-fun choose!80 (array!39658 List!13092 List!13092 (_ BitVec 32)) Unit!24227)

(assert (=> d!95033 (= lt!315496 (choose!80 a!3626 ($colon$colon!384 acc!681 (select (arr!18998 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95033 (bvslt (size!19376 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95033 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!384 acc!681 (select (arr!18998 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!315496)))

(declare-fun bs!20170 () Bool)

(assert (= bs!20170 d!95033))

(assert (=> bs!20170 m!651555))

(assert (=> bs!20170 m!651559))

(declare-fun m!651765 () Bool)

(assert (=> bs!20170 m!651765))

(assert (=> b!687500 d!95033))

(assert (=> b!687500 d!95015))

(assert (=> b!687500 d!95025))

(declare-fun d!95043 () Bool)

(declare-fun lt!315497 () Bool)

(assert (=> d!95043 (= lt!315497 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!302 acc!681)))))

(declare-fun e!391717 () Bool)

(assert (=> d!95043 (= lt!315497 e!391717)))

(declare-fun res!452660 () Bool)

(assert (=> d!95043 (=> (not res!452660) (not e!391717))))

(assert (=> d!95043 (= res!452660 (is-Cons!13088 acc!681))))

(assert (=> d!95043 (= (contains!3635 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!315497)))

(declare-fun b!687688 () Bool)

(declare-fun e!391718 () Bool)

(assert (=> b!687688 (= e!391717 e!391718)))

(declare-fun res!452661 () Bool)

(assert (=> b!687688 (=> res!452661 e!391718)))

(assert (=> b!687688 (= res!452661 (= (h!14133 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687689 () Bool)

(assert (=> b!687689 (= e!391718 (contains!3635 (t!19361 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95043 res!452660) b!687688))

(assert (= (and b!687688 (not res!452661)) b!687689))

(assert (=> d!95043 m!651625))

(declare-fun m!651767 () Bool)

(assert (=> d!95043 m!651767))

(declare-fun m!651769 () Bool)

(assert (=> b!687689 m!651769))

(assert (=> b!687499 d!95043))

(declare-fun b!687690 () Bool)

(declare-fun e!391719 () Bool)

(assert (=> b!687690 (= e!391719 (contains!3635 acc!681 (select (arr!18998 a!3626) from!3004)))))

(declare-fun b!687691 () Bool)

(declare-fun e!391720 () Bool)

(declare-fun e!391721 () Bool)

(assert (=> b!687691 (= e!391720 e!391721)))

(declare-fun c!77881 () Bool)

(assert (=> b!687691 (= c!77881 (validKeyInArray!0 (select (arr!18998 a!3626) from!3004)))))

(declare-fun b!687693 () Bool)

(declare-fun e!391722 () Bool)

(assert (=> b!687693 (= e!391722 e!391720)))

(declare-fun res!452663 () Bool)

(assert (=> b!687693 (=> (not res!452663) (not e!391720))))

(assert (=> b!687693 (= res!452663 (not e!391719))))

(declare-fun res!452662 () Bool)

(assert (=> b!687693 (=> (not res!452662) (not e!391719))))

(assert (=> b!687693 (= res!452662 (validKeyInArray!0 (select (arr!18998 a!3626) from!3004)))))

(declare-fun b!687692 () Bool)

(declare-fun call!34171 () Bool)

(assert (=> b!687692 (= e!391721 call!34171)))

(declare-fun d!95045 () Bool)

(declare-fun res!452664 () Bool)

(assert (=> d!95045 (=> res!452664 e!391722)))

(assert (=> d!95045 (= res!452664 (bvsge from!3004 (size!19376 a!3626)))))

(assert (=> d!95045 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!391722)))

(declare-fun b!687694 () Bool)

(assert (=> b!687694 (= e!391721 call!34171)))

(declare-fun bm!34168 () Bool)

(assert (=> bm!34168 (= call!34171 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77881 (Cons!13088 (select (arr!18998 a!3626) from!3004) acc!681) acc!681)))))

(assert (= (and d!95045 (not res!452664)) b!687693))

(assert (= (and b!687693 res!452662) b!687690))

(assert (= (and b!687693 res!452663) b!687691))

(assert (= (and b!687691 c!77881) b!687692))

(assert (= (and b!687691 (not c!77881)) b!687694))

(assert (= (or b!687692 b!687694) bm!34168))

(assert (=> b!687690 m!651557))

(assert (=> b!687690 m!651557))

(declare-fun m!651771 () Bool)

(assert (=> b!687690 m!651771))

(assert (=> b!687691 m!651557))

(assert (=> b!687691 m!651557))

(assert (=> b!687691 m!651587))

(assert (=> b!687693 m!651557))

(assert (=> b!687693 m!651557))

(assert (=> b!687693 m!651587))

(assert (=> bm!34168 m!651557))

(declare-fun m!651773 () Bool)

(assert (=> bm!34168 m!651773))

(assert (=> b!687478 d!95045))

(declare-fun d!95047 () Bool)

(declare-fun lt!315500 () Bool)

(assert (=> d!95047 (= lt!315500 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!302 acc!681)))))

(declare-fun e!391727 () Bool)

(assert (=> d!95047 (= lt!315500 e!391727)))

(declare-fun res!452669 () Bool)

(assert (=> d!95047 (=> (not res!452669) (not e!391727))))

(assert (=> d!95047 (= res!452669 (is-Cons!13088 acc!681))))

(assert (=> d!95047 (= (contains!3635 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315500)))

(declare-fun b!687699 () Bool)

(declare-fun e!391728 () Bool)

(assert (=> b!687699 (= e!391727 e!391728)))

(declare-fun res!452670 () Bool)

(assert (=> b!687699 (=> res!452670 e!391728)))

(assert (=> b!687699 (= res!452670 (= (h!14133 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687700 () Bool)

(assert (=> b!687700 (= e!391728 (contains!3635 (t!19361 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95047 res!452669) b!687699))

(assert (= (and b!687699 (not res!452670)) b!687700))

(assert (=> d!95047 m!651625))

(declare-fun m!651775 () Bool)

(assert (=> d!95047 m!651775))

(declare-fun m!651779 () Bool)

(assert (=> b!687700 m!651779))

(assert (=> b!687477 d!95047))

(declare-fun d!95051 () Bool)

(declare-fun res!452678 () Bool)

(declare-fun e!391737 () Bool)

(assert (=> d!95051 (=> res!452678 e!391737)))

(assert (=> d!95051 (= res!452678 (is-Nil!13089 lt!315444))))

(assert (=> d!95051 (= (noDuplicate!882 lt!315444) e!391737)))

(declare-fun b!687710 () Bool)

(declare-fun e!391738 () Bool)

(assert (=> b!687710 (= e!391737 e!391738)))

(declare-fun res!452679 () Bool)

(assert (=> b!687710 (=> (not res!452679) (not e!391738))))

(assert (=> b!687710 (= res!452679 (not (contains!3635 (t!19361 lt!315444) (h!14133 lt!315444))))))

(declare-fun b!687711 () Bool)

(assert (=> b!687711 (= e!391738 (noDuplicate!882 (t!19361 lt!315444)))))

(assert (= (and d!95051 (not res!452678)) b!687710))

(assert (= (and b!687710 res!452679) b!687711))

(declare-fun m!651791 () Bool)

(assert (=> b!687710 m!651791))

(declare-fun m!651793 () Bool)

(assert (=> b!687711 m!651793))

(assert (=> b!687487 d!95051))

(declare-fun d!95061 () Bool)

(declare-fun lt!315505 () Bool)

(assert (=> d!95061 (= lt!315505 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!302 lt!315444)))))

(declare-fun e!391739 () Bool)

(assert (=> d!95061 (= lt!315505 e!391739)))

(declare-fun res!452680 () Bool)

(assert (=> d!95061 (=> (not res!452680) (not e!391739))))

(assert (=> d!95061 (= res!452680 (is-Cons!13088 lt!315444))))

(assert (=> d!95061 (= (contains!3635 lt!315444 #b1000000000000000000000000000000000000000000000000000000000000000) lt!315505)))

(declare-fun b!687712 () Bool)

(declare-fun e!391740 () Bool)

(assert (=> b!687712 (= e!391739 e!391740)))

(declare-fun res!452681 () Bool)

(assert (=> b!687712 (=> res!452681 e!391740)))

(assert (=> b!687712 (= res!452681 (= (h!14133 lt!315444) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!687713 () Bool)

(assert (=> b!687713 (= e!391740 (contains!3635 (t!19361 lt!315444) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95061 res!452680) b!687712))

(assert (= (and b!687712 (not res!452681)) b!687713))

(assert (=> d!95061 m!651611))

(declare-fun m!651795 () Bool)

(assert (=> d!95061 m!651795))

(declare-fun m!651797 () Bool)

(assert (=> b!687713 m!651797))

(assert (=> b!687481 d!95061))

(declare-fun d!95065 () Bool)

(assert (=> d!95065 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!315511 () Unit!24227)

(declare-fun choose!13 (array!39658 (_ BitVec 64) (_ BitVec 32)) Unit!24227)

(assert (=> d!95065 (= lt!315511 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95065 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95065 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!315511)))

(declare-fun bs!20174 () Bool)

(assert (= bs!20174 d!95065))

