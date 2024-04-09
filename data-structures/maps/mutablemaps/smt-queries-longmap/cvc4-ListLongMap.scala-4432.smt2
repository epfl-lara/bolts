; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61588 () Bool)

(assert start!61588)

(declare-fun b!688649 () Bool)

(declare-fun res!453478 () Bool)

(declare-fun e!392186 () Bool)

(assert (=> b!688649 (=> res!453478 e!392186)))

(declare-datatypes ((List!13104 0))(
  ( (Nil!13101) (Cons!13100 (h!14145 (_ BitVec 64)) (t!19376 List!13104)) )
))
(declare-fun lt!315882 () List!13104)

(declare-fun noDuplicate!894 (List!13104) Bool)

(assert (=> b!688649 (= res!453478 (not (noDuplicate!894 lt!315882)))))

(declare-fun b!688650 () Bool)

(declare-fun res!453460 () Bool)

(declare-fun e!392178 () Bool)

(assert (=> b!688650 (=> (not res!453460) (not e!392178))))

(declare-fun e!392187 () Bool)

(assert (=> b!688650 (= res!453460 e!392187)))

(declare-fun res!453466 () Bool)

(assert (=> b!688650 (=> res!453466 e!392187)))

(declare-fun e!392180 () Bool)

(assert (=> b!688650 (= res!453466 e!392180)))

(declare-fun res!453471 () Bool)

(assert (=> b!688650 (=> (not res!453471) (not e!392180))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688650 (= res!453471 (bvsgt from!3004 i!1382))))

(declare-fun b!688651 () Bool)

(declare-fun res!453461 () Bool)

(assert (=> b!688651 (=> (not res!453461) (not e!392178))))

(declare-fun acc!681 () List!13104)

(assert (=> b!688651 (= res!453461 (noDuplicate!894 acc!681))))

(declare-fun b!688652 () Bool)

(declare-datatypes ((Unit!24287 0))(
  ( (Unit!24288) )
))
(declare-fun e!392179 () Unit!24287)

(declare-fun Unit!24289 () Unit!24287)

(assert (=> b!688652 (= e!392179 Unit!24289)))

(declare-fun lt!315880 () Unit!24287)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39685 0))(
  ( (array!39686 (arr!19010 (Array (_ BitVec 32) (_ BitVec 64))) (size!19391 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39685)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39685 (_ BitVec 64) (_ BitVec 32)) Unit!24287)

(assert (=> b!688652 (= lt!315880 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!688652 false))

(declare-fun b!688653 () Bool)

(assert (=> b!688653 (= e!392178 (not e!392186))))

(declare-fun res!453474 () Bool)

(assert (=> b!688653 (=> res!453474 e!392186)))

(assert (=> b!688653 (= res!453474 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39685 (_ BitVec 32) List!13104) Bool)

(assert (=> b!688653 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315882)))

(declare-fun lt!315887 () Unit!24287)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39685 (_ BitVec 64) (_ BitVec 32) List!13104 List!13104) Unit!24287)

(assert (=> b!688653 (= lt!315887 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315882))))

(declare-fun -!197 (List!13104 (_ BitVec 64)) List!13104)

(assert (=> b!688653 (= (-!197 lt!315882 k!2843) acc!681)))

(declare-fun $colon$colon!396 (List!13104 (_ BitVec 64)) List!13104)

(assert (=> b!688653 (= lt!315882 ($colon$colon!396 acc!681 k!2843))))

(declare-fun lt!315883 () Unit!24287)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13104) Unit!24287)

(assert (=> b!688653 (= lt!315883 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!232 (List!13104 List!13104) Bool)

(assert (=> b!688653 (subseq!232 acc!681 acc!681)))

(declare-fun lt!315879 () Unit!24287)

(declare-fun lemmaListSubSeqRefl!0 (List!13104) Unit!24287)

(assert (=> b!688653 (= lt!315879 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688653 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315886 () Unit!24287)

(declare-fun e!392182 () Unit!24287)

(assert (=> b!688653 (= lt!315886 e!392182)))

(declare-fun c!77962 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688653 (= c!77962 (validKeyInArray!0 (select (arr!19010 a!3626) from!3004)))))

(declare-fun lt!315885 () Unit!24287)

(assert (=> b!688653 (= lt!315885 e!392179)))

(declare-fun c!77963 () Bool)

(declare-fun arrayContainsKey!0 (array!39685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688653 (= c!77963 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688653 (arrayContainsKey!0 (array!39686 (store (arr!19010 a!3626) i!1382 k!2843) (size!19391 a!3626)) k!2843 from!3004)))

(declare-fun b!688654 () Bool)

(declare-fun lt!315884 () Unit!24287)

(assert (=> b!688654 (= e!392182 lt!315884)))

(declare-fun lt!315888 () Unit!24287)

(assert (=> b!688654 (= lt!315888 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688654 (subseq!232 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39685 List!13104 List!13104 (_ BitVec 32)) Unit!24287)

(assert (=> b!688654 (= lt!315884 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!396 acc!681 (select (arr!19010 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688654 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688655 () Bool)

(declare-fun Unit!24290 () Unit!24287)

(assert (=> b!688655 (= e!392179 Unit!24290)))

(declare-fun b!688656 () Bool)

(assert (=> b!688656 (= e!392186 true)))

(declare-fun lt!315881 () Bool)

(declare-fun e!392188 () Bool)

(assert (=> b!688656 (= lt!315881 e!392188)))

(declare-fun res!453472 () Bool)

(assert (=> b!688656 (=> res!453472 e!392188)))

(declare-fun e!392185 () Bool)

(assert (=> b!688656 (= res!453472 e!392185)))

(declare-fun res!453468 () Bool)

(assert (=> b!688656 (=> (not res!453468) (not e!392185))))

(assert (=> b!688656 (= res!453468 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688657 () Bool)

(declare-fun res!453476 () Bool)

(assert (=> b!688657 (=> res!453476 e!392186)))

(declare-fun contains!3647 (List!13104 (_ BitVec 64)) Bool)

(assert (=> b!688657 (= res!453476 (contains!3647 lt!315882 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688658 () Bool)

(assert (=> b!688658 (= e!392180 (contains!3647 acc!681 k!2843))))

(declare-fun b!688659 () Bool)

(declare-fun res!453459 () Bool)

(assert (=> b!688659 (=> (not res!453459) (not e!392178))))

(assert (=> b!688659 (= res!453459 (not (contains!3647 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688660 () Bool)

(assert (=> b!688660 (= e!392185 (contains!3647 lt!315882 k!2843))))

(declare-fun b!688661 () Bool)

(declare-fun e!392184 () Bool)

(assert (=> b!688661 (= e!392188 e!392184)))

(declare-fun res!453462 () Bool)

(assert (=> b!688661 (=> (not res!453462) (not e!392184))))

(assert (=> b!688661 (= res!453462 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688662 () Bool)

(declare-fun e!392183 () Bool)

(assert (=> b!688662 (= e!392187 e!392183)))

(declare-fun res!453470 () Bool)

(assert (=> b!688662 (=> (not res!453470) (not e!392183))))

(assert (=> b!688662 (= res!453470 (bvsle from!3004 i!1382))))

(declare-fun b!688663 () Bool)

(declare-fun res!453469 () Bool)

(assert (=> b!688663 (=> (not res!453469) (not e!392178))))

(assert (=> b!688663 (= res!453469 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19391 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688665 () Bool)

(declare-fun res!453475 () Bool)

(assert (=> b!688665 (=> (not res!453475) (not e!392178))))

(assert (=> b!688665 (= res!453475 (validKeyInArray!0 k!2843))))

(declare-fun b!688666 () Bool)

(declare-fun res!453467 () Bool)

(assert (=> b!688666 (=> (not res!453467) (not e!392178))))

(assert (=> b!688666 (= res!453467 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688667 () Bool)

(declare-fun res!453473 () Bool)

(assert (=> b!688667 (=> (not res!453473) (not e!392178))))

(assert (=> b!688667 (= res!453473 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688668 () Bool)

(assert (=> b!688668 (= e!392184 (not (contains!3647 lt!315882 k!2843)))))

(declare-fun b!688669 () Bool)

(declare-fun res!453477 () Bool)

(assert (=> b!688669 (=> (not res!453477) (not e!392178))))

(assert (=> b!688669 (= res!453477 (not (contains!3647 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688670 () Bool)

(declare-fun Unit!24291 () Unit!24287)

(assert (=> b!688670 (= e!392182 Unit!24291)))

(declare-fun b!688671 () Bool)

(declare-fun res!453463 () Bool)

(assert (=> b!688671 (=> (not res!453463) (not e!392178))))

(assert (=> b!688671 (= res!453463 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19391 a!3626))))))

(declare-fun b!688672 () Bool)

(declare-fun res!453465 () Bool)

(assert (=> b!688672 (=> res!453465 e!392186)))

(assert (=> b!688672 (= res!453465 (contains!3647 lt!315882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688673 () Bool)

(declare-fun res!453464 () Bool)

(assert (=> b!688673 (=> (not res!453464) (not e!392178))))

(assert (=> b!688673 (= res!453464 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13101))))

(declare-fun res!453479 () Bool)

(assert (=> start!61588 (=> (not res!453479) (not e!392178))))

(assert (=> start!61588 (= res!453479 (and (bvslt (size!19391 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19391 a!3626))))))

(assert (=> start!61588 e!392178))

(assert (=> start!61588 true))

(declare-fun array_inv!14784 (array!39685) Bool)

(assert (=> start!61588 (array_inv!14784 a!3626)))

(declare-fun b!688664 () Bool)

(assert (=> b!688664 (= e!392183 (not (contains!3647 acc!681 k!2843)))))

(assert (= (and start!61588 res!453479) b!688651))

(assert (= (and b!688651 res!453461) b!688659))

(assert (= (and b!688659 res!453459) b!688669))

(assert (= (and b!688669 res!453477) b!688650))

(assert (= (and b!688650 res!453471) b!688658))

(assert (= (and b!688650 (not res!453466)) b!688662))

(assert (= (and b!688662 res!453470) b!688664))

(assert (= (and b!688650 res!453460) b!688673))

(assert (= (and b!688673 res!453464) b!688667))

(assert (= (and b!688667 res!453473) b!688671))

(assert (= (and b!688671 res!453463) b!688665))

(assert (= (and b!688665 res!453475) b!688666))

(assert (= (and b!688666 res!453467) b!688663))

(assert (= (and b!688663 res!453469) b!688653))

(assert (= (and b!688653 c!77963) b!688652))

(assert (= (and b!688653 (not c!77963)) b!688655))

(assert (= (and b!688653 c!77962) b!688654))

(assert (= (and b!688653 (not c!77962)) b!688670))

(assert (= (and b!688653 (not res!453474)) b!688649))

(assert (= (and b!688649 (not res!453478)) b!688672))

(assert (= (and b!688672 (not res!453465)) b!688657))

(assert (= (and b!688657 (not res!453476)) b!688656))

(assert (= (and b!688656 res!453468) b!688660))

(assert (= (and b!688656 (not res!453472)) b!688661))

(assert (= (and b!688661 res!453462) b!688668))

(declare-fun m!652517 () Bool)

(assert (=> b!688665 m!652517))

(declare-fun m!652519 () Bool)

(assert (=> b!688673 m!652519))

(declare-fun m!652521 () Bool)

(assert (=> b!688654 m!652521))

(declare-fun m!652523 () Bool)

(assert (=> b!688654 m!652523))

(declare-fun m!652525 () Bool)

(assert (=> b!688654 m!652525))

(declare-fun m!652527 () Bool)

(assert (=> b!688654 m!652527))

(assert (=> b!688654 m!652523))

(assert (=> b!688654 m!652525))

(declare-fun m!652529 () Bool)

(assert (=> b!688654 m!652529))

(declare-fun m!652531 () Bool)

(assert (=> b!688654 m!652531))

(declare-fun m!652533 () Bool)

(assert (=> b!688649 m!652533))

(declare-fun m!652535 () Bool)

(assert (=> b!688653 m!652535))

(assert (=> b!688653 m!652521))

(declare-fun m!652537 () Bool)

(assert (=> b!688653 m!652537))

(declare-fun m!652539 () Bool)

(assert (=> b!688653 m!652539))

(assert (=> b!688653 m!652529))

(declare-fun m!652541 () Bool)

(assert (=> b!688653 m!652541))

(declare-fun m!652543 () Bool)

(assert (=> b!688653 m!652543))

(declare-fun m!652545 () Bool)

(assert (=> b!688653 m!652545))

(assert (=> b!688653 m!652523))

(declare-fun m!652547 () Bool)

(assert (=> b!688653 m!652547))

(assert (=> b!688653 m!652523))

(declare-fun m!652549 () Bool)

(assert (=> b!688653 m!652549))

(declare-fun m!652551 () Bool)

(assert (=> b!688653 m!652551))

(assert (=> b!688653 m!652531))

(declare-fun m!652553 () Bool)

(assert (=> b!688668 m!652553))

(declare-fun m!652555 () Bool)

(assert (=> b!688651 m!652555))

(declare-fun m!652557 () Bool)

(assert (=> b!688658 m!652557))

(declare-fun m!652559 () Bool)

(assert (=> b!688667 m!652559))

(assert (=> b!688660 m!652553))

(declare-fun m!652561 () Bool)

(assert (=> b!688672 m!652561))

(declare-fun m!652563 () Bool)

(assert (=> b!688657 m!652563))

(declare-fun m!652565 () Bool)

(assert (=> b!688652 m!652565))

(declare-fun m!652567 () Bool)

(assert (=> b!688659 m!652567))

(declare-fun m!652569 () Bool)

(assert (=> start!61588 m!652569))

(declare-fun m!652571 () Bool)

(assert (=> b!688666 m!652571))

(assert (=> b!688664 m!652557))

(declare-fun m!652573 () Bool)

(assert (=> b!688669 m!652573))

(push 1)

(assert (not b!688660))

(assert (not b!688673))

(assert (not b!688667))

(assert (not b!688672))

(assert (not b!688658))

(assert (not b!688665))

(assert (not b!688657))

(assert (not b!688651))

(assert (not b!688668))

(assert (not b!688669))

(assert (not b!688654))

(assert (not b!688666))

(assert (not b!688659))

(assert (not start!61588))

(assert (not b!688652))

(assert (not b!688649))

(assert (not b!688664))

(assert (not b!688653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

