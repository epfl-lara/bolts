; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60254 () Bool)

(assert start!60254)

(declare-fun b!674727 () Bool)

(declare-fun e!385069 () Bool)

(assert (=> b!674727 (= e!385069 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12911 0))(
  ( (Nil!12908) (Cons!12907 (h!13952 (_ BitVec 64)) (t!19147 List!12911)) )
))
(declare-fun lt!312630 () List!12911)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39257 0))(
  ( (array!39258 (arr!18817 (Array (_ BitVec 32) (_ BitVec 64))) (size!19181 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39257)

(declare-fun arrayNoDuplicates!0 (array!39257 (_ BitVec 32) List!12911) Bool)

(assert (=> b!674727 (arrayNoDuplicates!0 (array!39258 (store (arr!18817 a!3626) i!1382 k0!2843) (size!19181 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312630)))

(declare-datatypes ((Unit!23732 0))(
  ( (Unit!23733) )
))
(declare-fun lt!312633 () Unit!23732)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39257 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12911) Unit!23732)

(assert (=> b!674727 (= lt!312633 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312630))))

(declare-fun b!674728 () Bool)

(declare-fun res!441349 () Bool)

(declare-fun e!385078 () Bool)

(assert (=> b!674728 (=> (not res!441349) (not e!385078))))

(declare-fun acc!681 () List!12911)

(declare-fun contains!3454 (List!12911 (_ BitVec 64)) Bool)

(assert (=> b!674728 (= res!441349 (not (contains!3454 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!441343 () Bool)

(assert (=> start!60254 (=> (not res!441343) (not e!385078))))

(assert (=> start!60254 (= res!441343 (and (bvslt (size!19181 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19181 a!3626))))))

(assert (=> start!60254 e!385078))

(assert (=> start!60254 true))

(declare-fun array_inv!14591 (array!39257) Bool)

(assert (=> start!60254 (array_inv!14591 a!3626)))

(declare-fun b!674729 () Bool)

(declare-fun e!385071 () Bool)

(assert (=> b!674729 (= e!385071 e!385069)))

(declare-fun res!441347 () Bool)

(assert (=> b!674729 (=> (not res!441347) (not e!385069))))

(assert (=> b!674729 (= res!441347 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!302 (List!12911 (_ BitVec 64)) List!12911)

(assert (=> b!674729 (= lt!312630 ($colon$colon!302 acc!681 (select (arr!18817 a!3626) from!3004)))))

(declare-fun b!674730 () Bool)

(declare-fun res!441348 () Bool)

(assert (=> b!674730 (=> (not res!441348) (not e!385069))))

(declare-fun noDuplicate!701 (List!12911) Bool)

(assert (=> b!674730 (= res!441348 (noDuplicate!701 lt!312630))))

(declare-fun b!674731 () Bool)

(declare-fun e!385073 () Unit!23732)

(declare-fun Unit!23734 () Unit!23732)

(assert (=> b!674731 (= e!385073 Unit!23734)))

(declare-fun b!674732 () Bool)

(declare-fun res!441340 () Bool)

(assert (=> b!674732 (=> (not res!441340) (not e!385078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674732 (= res!441340 (validKeyInArray!0 k0!2843))))

(declare-fun b!674733 () Bool)

(declare-fun res!441336 () Bool)

(assert (=> b!674733 (=> (not res!441336) (not e!385078))))

(assert (=> b!674733 (= res!441336 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674734 () Bool)

(declare-fun e!385077 () Bool)

(assert (=> b!674734 (= e!385077 (contains!3454 lt!312630 k0!2843))))

(declare-fun b!674735 () Bool)

(declare-fun res!441353 () Bool)

(assert (=> b!674735 (=> (not res!441353) (not e!385078))))

(assert (=> b!674735 (= res!441353 (not (contains!3454 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674736 () Bool)

(declare-fun res!441346 () Bool)

(assert (=> b!674736 (=> (not res!441346) (not e!385078))))

(assert (=> b!674736 (= res!441346 (validKeyInArray!0 (select (arr!18817 a!3626) from!3004)))))

(declare-fun b!674737 () Bool)

(declare-fun e!385074 () Bool)

(assert (=> b!674737 (= e!385074 (not (contains!3454 acc!681 k0!2843)))))

(declare-fun b!674738 () Bool)

(declare-fun res!441338 () Bool)

(assert (=> b!674738 (=> (not res!441338) (not e!385069))))

(declare-fun e!385075 () Bool)

(assert (=> b!674738 (= res!441338 e!385075)))

(declare-fun res!441341 () Bool)

(assert (=> b!674738 (=> res!441341 e!385075)))

(assert (=> b!674738 (= res!441341 e!385077)))

(declare-fun res!441350 () Bool)

(assert (=> b!674738 (=> (not res!441350) (not e!385077))))

(assert (=> b!674738 (= res!441350 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674739 () Bool)

(declare-fun res!441339 () Bool)

(assert (=> b!674739 (=> (not res!441339) (not e!385078))))

(declare-fun arrayContainsKey!0 (array!39257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674739 (= res!441339 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674740 () Bool)

(declare-fun res!441357 () Bool)

(assert (=> b!674740 (=> (not res!441357) (not e!385078))))

(declare-fun e!385076 () Bool)

(assert (=> b!674740 (= res!441357 e!385076)))

(declare-fun res!441337 () Bool)

(assert (=> b!674740 (=> res!441337 e!385076)))

(declare-fun e!385072 () Bool)

(assert (=> b!674740 (= res!441337 e!385072)))

(declare-fun res!441356 () Bool)

(assert (=> b!674740 (=> (not res!441356) (not e!385072))))

(assert (=> b!674740 (= res!441356 (bvsgt from!3004 i!1382))))

(declare-fun b!674741 () Bool)

(declare-fun res!441342 () Bool)

(assert (=> b!674741 (=> (not res!441342) (not e!385078))))

(assert (=> b!674741 (= res!441342 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19181 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674742 () Bool)

(declare-fun e!385070 () Bool)

(assert (=> b!674742 (= e!385070 (not (contains!3454 lt!312630 k0!2843)))))

(declare-fun b!674743 () Bool)

(assert (=> b!674743 (= e!385076 e!385074)))

(declare-fun res!441355 () Bool)

(assert (=> b!674743 (=> (not res!441355) (not e!385074))))

(assert (=> b!674743 (= res!441355 (bvsle from!3004 i!1382))))

(declare-fun b!674744 () Bool)

(assert (=> b!674744 (= e!385075 e!385070)))

(declare-fun res!441351 () Bool)

(assert (=> b!674744 (=> (not res!441351) (not e!385070))))

(assert (=> b!674744 (= res!441351 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674745 () Bool)

(declare-fun res!441344 () Bool)

(assert (=> b!674745 (=> (not res!441344) (not e!385078))))

(assert (=> b!674745 (= res!441344 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19181 a!3626))))))

(declare-fun b!674746 () Bool)

(assert (=> b!674746 (= e!385078 e!385071)))

(declare-fun res!441354 () Bool)

(assert (=> b!674746 (=> (not res!441354) (not e!385071))))

(assert (=> b!674746 (= res!441354 (not (= (select (arr!18817 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312631 () Unit!23732)

(assert (=> b!674746 (= lt!312631 e!385073)))

(declare-fun c!77063 () Bool)

(assert (=> b!674746 (= c!77063 (= (select (arr!18817 a!3626) from!3004) k0!2843))))

(declare-fun b!674747 () Bool)

(assert (=> b!674747 (= e!385072 (contains!3454 acc!681 k0!2843))))

(declare-fun b!674748 () Bool)

(declare-fun Unit!23735 () Unit!23732)

(assert (=> b!674748 (= e!385073 Unit!23735)))

(assert (=> b!674748 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312632 () Unit!23732)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39257 (_ BitVec 64) (_ BitVec 32)) Unit!23732)

(assert (=> b!674748 (= lt!312632 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!674748 false))

(declare-fun b!674749 () Bool)

(declare-fun res!441345 () Bool)

(assert (=> b!674749 (=> (not res!441345) (not e!385069))))

(assert (=> b!674749 (= res!441345 (not (contains!3454 lt!312630 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674750 () Bool)

(declare-fun res!441335 () Bool)

(assert (=> b!674750 (=> (not res!441335) (not e!385069))))

(assert (=> b!674750 (= res!441335 (not (contains!3454 lt!312630 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674751 () Bool)

(declare-fun res!441359 () Bool)

(assert (=> b!674751 (=> (not res!441359) (not e!385069))))

(assert (=> b!674751 (= res!441359 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312630))))

(declare-fun b!674752 () Bool)

(declare-fun res!441358 () Bool)

(assert (=> b!674752 (=> (not res!441358) (not e!385078))))

(assert (=> b!674752 (= res!441358 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12908))))

(declare-fun b!674753 () Bool)

(declare-fun res!441352 () Bool)

(assert (=> b!674753 (=> (not res!441352) (not e!385078))))

(assert (=> b!674753 (= res!441352 (noDuplicate!701 acc!681))))

(assert (= (and start!60254 res!441343) b!674753))

(assert (= (and b!674753 res!441352) b!674735))

(assert (= (and b!674735 res!441353) b!674728))

(assert (= (and b!674728 res!441349) b!674740))

(assert (= (and b!674740 res!441356) b!674747))

(assert (= (and b!674740 (not res!441337)) b!674743))

(assert (= (and b!674743 res!441355) b!674737))

(assert (= (and b!674740 res!441357) b!674752))

(assert (= (and b!674752 res!441358) b!674733))

(assert (= (and b!674733 res!441336) b!674745))

(assert (= (and b!674745 res!441344) b!674732))

(assert (= (and b!674732 res!441340) b!674739))

(assert (= (and b!674739 res!441339) b!674741))

(assert (= (and b!674741 res!441342) b!674736))

(assert (= (and b!674736 res!441346) b!674746))

(assert (= (and b!674746 c!77063) b!674748))

(assert (= (and b!674746 (not c!77063)) b!674731))

(assert (= (and b!674746 res!441354) b!674729))

(assert (= (and b!674729 res!441347) b!674730))

(assert (= (and b!674730 res!441348) b!674749))

(assert (= (and b!674749 res!441345) b!674750))

(assert (= (and b!674750 res!441335) b!674738))

(assert (= (and b!674738 res!441350) b!674734))

(assert (= (and b!674738 (not res!441341)) b!674744))

(assert (= (and b!674744 res!441351) b!674742))

(assert (= (and b!674738 res!441338) b!674751))

(assert (= (and b!674751 res!441359) b!674727))

(declare-fun m!642521 () Bool)

(assert (=> start!60254 m!642521))

(declare-fun m!642523 () Bool)

(assert (=> b!674742 m!642523))

(declare-fun m!642525 () Bool)

(assert (=> b!674749 m!642525))

(declare-fun m!642527 () Bool)

(assert (=> b!674727 m!642527))

(declare-fun m!642529 () Bool)

(assert (=> b!674727 m!642529))

(declare-fun m!642531 () Bool)

(assert (=> b!674727 m!642531))

(declare-fun m!642533 () Bool)

(assert (=> b!674747 m!642533))

(declare-fun m!642535 () Bool)

(assert (=> b!674730 m!642535))

(declare-fun m!642537 () Bool)

(assert (=> b!674751 m!642537))

(declare-fun m!642539 () Bool)

(assert (=> b!674733 m!642539))

(declare-fun m!642541 () Bool)

(assert (=> b!674746 m!642541))

(declare-fun m!642543 () Bool)

(assert (=> b!674739 m!642543))

(declare-fun m!642545 () Bool)

(assert (=> b!674732 m!642545))

(assert (=> b!674737 m!642533))

(assert (=> b!674734 m!642523))

(declare-fun m!642547 () Bool)

(assert (=> b!674750 m!642547))

(declare-fun m!642549 () Bool)

(assert (=> b!674728 m!642549))

(declare-fun m!642551 () Bool)

(assert (=> b!674753 m!642551))

(assert (=> b!674736 m!642541))

(assert (=> b!674736 m!642541))

(declare-fun m!642553 () Bool)

(assert (=> b!674736 m!642553))

(assert (=> b!674729 m!642541))

(assert (=> b!674729 m!642541))

(declare-fun m!642555 () Bool)

(assert (=> b!674729 m!642555))

(declare-fun m!642557 () Bool)

(assert (=> b!674735 m!642557))

(declare-fun m!642559 () Bool)

(assert (=> b!674752 m!642559))

(declare-fun m!642561 () Bool)

(assert (=> b!674748 m!642561))

(declare-fun m!642563 () Bool)

(assert (=> b!674748 m!642563))

(check-sat (not start!60254) (not b!674742) (not b!674728) (not b!674734) (not b!674730) (not b!674736) (not b!674729) (not b!674739) (not b!674750) (not b!674747) (not b!674749) (not b!674751) (not b!674733) (not b!674732) (not b!674753) (not b!674737) (not b!674727) (not b!674748) (not b!674735) (not b!674752))
(check-sat)
