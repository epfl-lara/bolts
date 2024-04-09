; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60452 () Bool)

(assert start!60452)

(declare-fun b!678993 () Bool)

(declare-fun res!445551 () Bool)

(declare-fun e!386846 () Bool)

(assert (=> b!678993 (=> (not res!445551) (not e!386846))))

(declare-datatypes ((List!12992 0))(
  ( (Nil!12989) (Cons!12988 (h!14033 (_ BitVec 64)) (t!19228 List!12992)) )
))
(declare-fun acc!681 () List!12992)

(declare-fun noDuplicate!782 (List!12992) Bool)

(assert (=> b!678993 (= res!445551 (noDuplicate!782 acc!681))))

(declare-fun res!445556 () Bool)

(assert (=> start!60452 (=> (not res!445556) (not e!386846))))

(declare-datatypes ((array!39422 0))(
  ( (array!39423 (arr!18898 (Array (_ BitVec 32) (_ BitVec 64))) (size!19262 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39422)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60452 (= res!445556 (and (bvslt (size!19262 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19262 a!3626))))))

(assert (=> start!60452 e!386846))

(assert (=> start!60452 true))

(declare-fun array_inv!14672 (array!39422) Bool)

(assert (=> start!60452 (array_inv!14672 a!3626)))

(declare-fun b!678994 () Bool)

(declare-fun res!445558 () Bool)

(assert (=> b!678994 (=> (not res!445558) (not e!386846))))

(declare-fun arrayNoDuplicates!0 (array!39422 (_ BitVec 32) List!12992) Bool)

(assert (=> b!678994 (= res!445558 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678995 () Bool)

(declare-fun res!445563 () Bool)

(assert (=> b!678995 (=> (not res!445563) (not e!386846))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678995 (= res!445563 (validKeyInArray!0 k0!2843))))

(declare-fun b!678996 () Bool)

(declare-fun res!445561 () Bool)

(assert (=> b!678996 (=> (not res!445561) (not e!386846))))

(assert (=> b!678996 (= res!445561 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12989))))

(declare-fun b!678997 () Bool)

(declare-fun e!386848 () Bool)

(declare-fun arrayContainsKey!0 (array!39422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678997 (= e!386848 (arrayContainsKey!0 a!3626 k0!2843 from!3004))))

(declare-fun b!678998 () Bool)

(declare-fun res!445559 () Bool)

(assert (=> b!678998 (=> (not res!445559) (not e!386846))))

(declare-fun e!386851 () Bool)

(assert (=> b!678998 (= res!445559 e!386851)))

(declare-fun res!445553 () Bool)

(assert (=> b!678998 (=> res!445553 e!386851)))

(declare-fun e!386850 () Bool)

(assert (=> b!678998 (= res!445553 e!386850)))

(declare-fun res!445562 () Bool)

(assert (=> b!678998 (=> (not res!445562) (not e!386850))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678998 (= res!445562 (bvsgt from!3004 i!1382))))

(declare-fun b!678999 () Bool)

(declare-fun contains!3535 (List!12992 (_ BitVec 64)) Bool)

(assert (=> b!678999 (= e!386850 (contains!3535 acc!681 k0!2843))))

(declare-fun b!679000 () Bool)

(declare-fun e!386847 () Bool)

(assert (=> b!679000 (= e!386847 (not (contains!3535 acc!681 k0!2843)))))

(declare-fun b!679001 () Bool)

(declare-fun res!445565 () Bool)

(assert (=> b!679001 (=> (not res!445565) (not e!386846))))

(assert (=> b!679001 (= res!445565 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679002 () Bool)

(declare-fun res!445554 () Bool)

(assert (=> b!679002 (=> (not res!445554) (not e!386846))))

(assert (=> b!679002 (= res!445554 (not (contains!3535 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679003 () Bool)

(declare-fun res!445557 () Bool)

(assert (=> b!679003 (=> (not res!445557) (not e!386846))))

(assert (=> b!679003 (= res!445557 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19262 a!3626))))))

(declare-fun b!679004 () Bool)

(declare-fun res!445555 () Bool)

(assert (=> b!679004 (=> (not res!445555) (not e!386846))))

(assert (=> b!679004 (= res!445555 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19262 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679005 () Bool)

(declare-fun res!445552 () Bool)

(assert (=> b!679005 (=> (not res!445552) (not e!386846))))

(assert (=> b!679005 (= res!445552 (not (contains!3535 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679006 () Bool)

(assert (=> b!679006 (= e!386851 e!386847)))

(declare-fun res!445564 () Bool)

(assert (=> b!679006 (=> (not res!445564) (not e!386847))))

(assert (=> b!679006 (= res!445564 (bvsle from!3004 i!1382))))

(declare-fun b!679007 () Bool)

(assert (=> b!679007 (= e!386846 (not e!386848))))

(declare-fun res!445560 () Bool)

(assert (=> b!679007 (=> res!445560 e!386848)))

(assert (=> b!679007 (= res!445560 (not (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (=> b!679007 (arrayContainsKey!0 (array!39423 (store (arr!18898 a!3626) i!1382 k0!2843) (size!19262 a!3626)) k0!2843 from!3004)))

(assert (= (and start!60452 res!445556) b!678993))

(assert (= (and b!678993 res!445551) b!679002))

(assert (= (and b!679002 res!445554) b!679005))

(assert (= (and b!679005 res!445552) b!678998))

(assert (= (and b!678998 res!445562) b!678999))

(assert (= (and b!678998 (not res!445553)) b!679006))

(assert (= (and b!679006 res!445564) b!679000))

(assert (= (and b!678998 res!445559) b!678996))

(assert (= (and b!678996 res!445561) b!678994))

(assert (= (and b!678994 res!445558) b!679003))

(assert (= (and b!679003 res!445557) b!678995))

(assert (= (and b!678995 res!445563) b!679001))

(assert (= (and b!679001 res!445565) b!679004))

(assert (= (and b!679004 res!445555) b!679007))

(assert (= (and b!679007 (not res!445560)) b!678997))

(declare-fun m!644525 () Bool)

(assert (=> b!679007 m!644525))

(declare-fun m!644527 () Bool)

(assert (=> b!679007 m!644527))

(declare-fun m!644529 () Bool)

(assert (=> b!679007 m!644529))

(declare-fun m!644531 () Bool)

(assert (=> b!679001 m!644531))

(declare-fun m!644533 () Bool)

(assert (=> b!679002 m!644533))

(declare-fun m!644535 () Bool)

(assert (=> b!679005 m!644535))

(declare-fun m!644537 () Bool)

(assert (=> start!60452 m!644537))

(declare-fun m!644539 () Bool)

(assert (=> b!678996 m!644539))

(declare-fun m!644541 () Bool)

(assert (=> b!679000 m!644541))

(declare-fun m!644543 () Bool)

(assert (=> b!678993 m!644543))

(declare-fun m!644545 () Bool)

(assert (=> b!678997 m!644545))

(assert (=> b!678999 m!644541))

(declare-fun m!644547 () Bool)

(assert (=> b!678995 m!644547))

(declare-fun m!644549 () Bool)

(assert (=> b!678994 m!644549))

(check-sat (not b!678996) (not b!679001) (not b!678997) (not b!679007) (not start!60452) (not b!679000) (not b!678999) (not b!679002) (not b!678995) (not b!678994) (not b!679005) (not b!678993))
(check-sat)
(get-model)

(declare-fun d!93367 () Bool)

(declare-fun lt!312856 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!266 (List!12992) (InoxSet (_ BitVec 64)))

(assert (=> d!93367 (= lt!312856 (select (content!266 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!386893 () Bool)

(assert (=> d!93367 (= lt!312856 e!386893)))

(declare-fun res!445634 () Bool)

(assert (=> d!93367 (=> (not res!445634) (not e!386893))))

(get-info :version)

(assert (=> d!93367 (= res!445634 ((_ is Cons!12988) acc!681))))

(assert (=> d!93367 (= (contains!3535 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!312856)))

(declare-fun b!679075 () Bool)

(declare-fun e!386892 () Bool)

(assert (=> b!679075 (= e!386893 e!386892)))

(declare-fun res!445633 () Bool)

(assert (=> b!679075 (=> res!445633 e!386892)))

(assert (=> b!679075 (= res!445633 (= (h!14033 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!679076 () Bool)

(assert (=> b!679076 (= e!386892 (contains!3535 (t!19228 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93367 res!445634) b!679075))

(assert (= (and b!679075 (not res!445633)) b!679076))

(declare-fun m!644591 () Bool)

(assert (=> d!93367 m!644591))

(declare-fun m!644593 () Bool)

(assert (=> d!93367 m!644593))

(declare-fun m!644595 () Bool)

(assert (=> b!679076 m!644595))

(assert (=> b!679002 d!93367))

(declare-fun d!93373 () Bool)

(declare-fun res!445643 () Bool)

(declare-fun e!386902 () Bool)

(assert (=> d!93373 (=> res!445643 e!386902)))

(assert (=> d!93373 (= res!445643 (= (select (arr!18898 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93373 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!386902)))

(declare-fun b!679085 () Bool)

(declare-fun e!386903 () Bool)

(assert (=> b!679085 (= e!386902 e!386903)))

(declare-fun res!445644 () Bool)

(assert (=> b!679085 (=> (not res!445644) (not e!386903))))

(assert (=> b!679085 (= res!445644 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19262 a!3626)))))

(declare-fun b!679086 () Bool)

(assert (=> b!679086 (= e!386903 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93373 (not res!445643)) b!679085))

(assert (= (and b!679085 res!445644) b!679086))

(declare-fun m!644605 () Bool)

(assert (=> d!93373 m!644605))

(declare-fun m!644607 () Bool)

(assert (=> b!679086 m!644607))

(assert (=> b!679001 d!93373))

(declare-fun d!93379 () Bool)

(declare-fun lt!312857 () Bool)

(assert (=> d!93379 (= lt!312857 (select (content!266 acc!681) k0!2843))))

(declare-fun e!386905 () Bool)

(assert (=> d!93379 (= lt!312857 e!386905)))

(declare-fun res!445646 () Bool)

(assert (=> d!93379 (=> (not res!445646) (not e!386905))))

(assert (=> d!93379 (= res!445646 ((_ is Cons!12988) acc!681))))

(assert (=> d!93379 (= (contains!3535 acc!681 k0!2843) lt!312857)))

(declare-fun b!679087 () Bool)

(declare-fun e!386904 () Bool)

(assert (=> b!679087 (= e!386905 e!386904)))

(declare-fun res!445645 () Bool)

(assert (=> b!679087 (=> res!445645 e!386904)))

(assert (=> b!679087 (= res!445645 (= (h!14033 acc!681) k0!2843))))

(declare-fun b!679088 () Bool)

(assert (=> b!679088 (= e!386904 (contains!3535 (t!19228 acc!681) k0!2843))))

(assert (= (and d!93379 res!445646) b!679087))

(assert (= (and b!679087 (not res!445645)) b!679088))

(assert (=> d!93379 m!644591))

(declare-fun m!644609 () Bool)

(assert (=> d!93379 m!644609))

(declare-fun m!644611 () Bool)

(assert (=> b!679088 m!644611))

(assert (=> b!678999 d!93379))

(assert (=> b!679000 d!93379))

(declare-fun d!93381 () Bool)

(declare-fun res!445647 () Bool)

(declare-fun e!386906 () Bool)

(assert (=> d!93381 (=> res!445647 e!386906)))

(assert (=> d!93381 (= res!445647 (= (select (arr!18898 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93381 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!386906)))

(declare-fun b!679089 () Bool)

(declare-fun e!386907 () Bool)

(assert (=> b!679089 (= e!386906 e!386907)))

(declare-fun res!445648 () Bool)

(assert (=> b!679089 (=> (not res!445648) (not e!386907))))

(assert (=> b!679089 (= res!445648 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19262 a!3626)))))

(declare-fun b!679090 () Bool)

(assert (=> b!679090 (= e!386907 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93381 (not res!445647)) b!679089))

(assert (= (and b!679089 res!445648) b!679090))

(declare-fun m!644613 () Bool)

(assert (=> d!93381 m!644613))

(declare-fun m!644615 () Bool)

(assert (=> b!679090 m!644615))

(assert (=> b!679007 d!93381))

(declare-fun d!93383 () Bool)

(declare-fun res!445649 () Bool)

(declare-fun e!386908 () Bool)

(assert (=> d!93383 (=> res!445649 e!386908)))

(assert (=> d!93383 (= res!445649 (= (select (arr!18898 (array!39423 (store (arr!18898 a!3626) i!1382 k0!2843) (size!19262 a!3626))) from!3004) k0!2843))))

(assert (=> d!93383 (= (arrayContainsKey!0 (array!39423 (store (arr!18898 a!3626) i!1382 k0!2843) (size!19262 a!3626)) k0!2843 from!3004) e!386908)))

(declare-fun b!679091 () Bool)

(declare-fun e!386909 () Bool)

(assert (=> b!679091 (= e!386908 e!386909)))

(declare-fun res!445650 () Bool)

(assert (=> b!679091 (=> (not res!445650) (not e!386909))))

(assert (=> b!679091 (= res!445650 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19262 (array!39423 (store (arr!18898 a!3626) i!1382 k0!2843) (size!19262 a!3626)))))))

(declare-fun b!679092 () Bool)

(assert (=> b!679092 (= e!386909 (arrayContainsKey!0 (array!39423 (store (arr!18898 a!3626) i!1382 k0!2843) (size!19262 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93383 (not res!445649)) b!679091))

(assert (= (and b!679091 res!445650) b!679092))

(declare-fun m!644617 () Bool)

(assert (=> d!93383 m!644617))

(declare-fun m!644619 () Bool)

(assert (=> b!679092 m!644619))

(assert (=> b!679007 d!93383))

(declare-fun d!93385 () Bool)

(declare-fun res!445651 () Bool)

(declare-fun e!386910 () Bool)

(assert (=> d!93385 (=> res!445651 e!386910)))

(assert (=> d!93385 (= res!445651 (= (select (arr!18898 a!3626) from!3004) k0!2843))))

(assert (=> d!93385 (= (arrayContainsKey!0 a!3626 k0!2843 from!3004) e!386910)))

(declare-fun b!679093 () Bool)

(declare-fun e!386911 () Bool)

(assert (=> b!679093 (= e!386910 e!386911)))

(declare-fun res!445652 () Bool)

(assert (=> b!679093 (=> (not res!445652) (not e!386911))))

(assert (=> b!679093 (= res!445652 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19262 a!3626)))))

(declare-fun b!679094 () Bool)

(assert (=> b!679094 (= e!386911 (arrayContainsKey!0 a!3626 k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93385 (not res!445651)) b!679093))

(assert (= (and b!679093 res!445652) b!679094))

(declare-fun m!644621 () Bool)

(assert (=> d!93385 m!644621))

(declare-fun m!644623 () Bool)

(assert (=> b!679094 m!644623))

(assert (=> b!678997 d!93385))

(declare-fun d!93387 () Bool)

(assert (=> d!93387 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!678995 d!93387))

(declare-fun d!93389 () Bool)

(assert (=> d!93389 (= (array_inv!14672 a!3626) (bvsge (size!19262 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60452 d!93389))

(declare-fun d!93391 () Bool)

(declare-fun res!445677 () Bool)

(declare-fun e!386945 () Bool)

(assert (=> d!93391 (=> res!445677 e!386945)))

(assert (=> d!93391 (= res!445677 (bvsge #b00000000000000000000000000000000 (size!19262 a!3626)))))

(assert (=> d!93391 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12989) e!386945)))

(declare-fun b!679131 () Bool)

(declare-fun e!386944 () Bool)

(assert (=> b!679131 (= e!386944 (contains!3535 Nil!12989 (select (arr!18898 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679132 () Bool)

(declare-fun e!386942 () Bool)

(assert (=> b!679132 (= e!386945 e!386942)))

(declare-fun res!445679 () Bool)

(assert (=> b!679132 (=> (not res!445679) (not e!386942))))

(assert (=> b!679132 (= res!445679 (not e!386944))))

(declare-fun res!445678 () Bool)

(assert (=> b!679132 (=> (not res!445678) (not e!386944))))

(assert (=> b!679132 (= res!445678 (validKeyInArray!0 (select (arr!18898 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679133 () Bool)

(declare-fun e!386943 () Bool)

(declare-fun call!33930 () Bool)

(assert (=> b!679133 (= e!386943 call!33930)))

(declare-fun bm!33927 () Bool)

(declare-fun c!77094 () Bool)

(assert (=> bm!33927 (= call!33930 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77094 (Cons!12988 (select (arr!18898 a!3626) #b00000000000000000000000000000000) Nil!12989) Nil!12989)))))

(declare-fun b!679134 () Bool)

(assert (=> b!679134 (= e!386942 e!386943)))

(assert (=> b!679134 (= c!77094 (validKeyInArray!0 (select (arr!18898 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!679135 () Bool)

(assert (=> b!679135 (= e!386943 call!33930)))

(assert (= (and d!93391 (not res!445677)) b!679132))

(assert (= (and b!679132 res!445678) b!679131))

(assert (= (and b!679132 res!445679) b!679134))

(assert (= (and b!679134 c!77094) b!679135))

(assert (= (and b!679134 (not c!77094)) b!679133))

(assert (= (or b!679135 b!679133) bm!33927))

(assert (=> b!679131 m!644605))

(assert (=> b!679131 m!644605))

(declare-fun m!644649 () Bool)

(assert (=> b!679131 m!644649))

(assert (=> b!679132 m!644605))

(assert (=> b!679132 m!644605))

(declare-fun m!644651 () Bool)

(assert (=> b!679132 m!644651))

(assert (=> bm!33927 m!644605))

(declare-fun m!644653 () Bool)

(assert (=> bm!33927 m!644653))

(assert (=> b!679134 m!644605))

(assert (=> b!679134 m!644605))

(assert (=> b!679134 m!644651))

(assert (=> b!678996 d!93391))

(declare-fun d!93407 () Bool)

(declare-fun res!445684 () Bool)

(declare-fun e!386953 () Bool)

(assert (=> d!93407 (=> res!445684 e!386953)))

(assert (=> d!93407 (= res!445684 (bvsge from!3004 (size!19262 a!3626)))))

(assert (=> d!93407 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386953)))

(declare-fun e!386952 () Bool)

(declare-fun b!679140 () Bool)

(assert (=> b!679140 (= e!386952 (contains!3535 acc!681 (select (arr!18898 a!3626) from!3004)))))

(declare-fun b!679141 () Bool)

(declare-fun e!386950 () Bool)

(assert (=> b!679141 (= e!386953 e!386950)))

(declare-fun res!445686 () Bool)

(assert (=> b!679141 (=> (not res!445686) (not e!386950))))

(assert (=> b!679141 (= res!445686 (not e!386952))))

(declare-fun res!445685 () Bool)

(assert (=> b!679141 (=> (not res!445685) (not e!386952))))

(assert (=> b!679141 (= res!445685 (validKeyInArray!0 (select (arr!18898 a!3626) from!3004)))))

(declare-fun b!679142 () Bool)

(declare-fun e!386951 () Bool)

(declare-fun call!33931 () Bool)

(assert (=> b!679142 (= e!386951 call!33931)))

(declare-fun bm!33928 () Bool)

(declare-fun c!77095 () Bool)

(assert (=> bm!33928 (= call!33931 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77095 (Cons!12988 (select (arr!18898 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!679143 () Bool)

(assert (=> b!679143 (= e!386950 e!386951)))

(assert (=> b!679143 (= c!77095 (validKeyInArray!0 (select (arr!18898 a!3626) from!3004)))))

(declare-fun b!679144 () Bool)

(assert (=> b!679144 (= e!386951 call!33931)))

(assert (= (and d!93407 (not res!445684)) b!679141))

(assert (= (and b!679141 res!445685) b!679140))

(assert (= (and b!679141 res!445686) b!679143))

(assert (= (and b!679143 c!77095) b!679144))

(assert (= (and b!679143 (not c!77095)) b!679142))

(assert (= (or b!679144 b!679142) bm!33928))

(assert (=> b!679140 m!644621))

(assert (=> b!679140 m!644621))

(declare-fun m!644655 () Bool)

(assert (=> b!679140 m!644655))

(assert (=> b!679141 m!644621))

(assert (=> b!679141 m!644621))

(declare-fun m!644657 () Bool)

(assert (=> b!679141 m!644657))

(assert (=> bm!33928 m!644621))

(declare-fun m!644659 () Bool)

(assert (=> bm!33928 m!644659))

(assert (=> b!679143 m!644621))

(assert (=> b!679143 m!644621))

(assert (=> b!679143 m!644657))

(assert (=> b!678994 d!93407))

(declare-fun d!93409 () Bool)

(declare-fun lt!312862 () Bool)

(assert (=> d!93409 (= lt!312862 (select (content!266 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!386957 () Bool)

(assert (=> d!93409 (= lt!312862 e!386957)))

(declare-fun res!445690 () Bool)

(assert (=> d!93409 (=> (not res!445690) (not e!386957))))

(assert (=> d!93409 (= res!445690 ((_ is Cons!12988) acc!681))))

(assert (=> d!93409 (= (contains!3535 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312862)))

(declare-fun b!679147 () Bool)

(declare-fun e!386956 () Bool)

(assert (=> b!679147 (= e!386957 e!386956)))

(declare-fun res!445689 () Bool)

(assert (=> b!679147 (=> res!445689 e!386956)))

(assert (=> b!679147 (= res!445689 (= (h!14033 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!679148 () Bool)

(assert (=> b!679148 (= e!386956 (contains!3535 (t!19228 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93409 res!445690) b!679147))

(assert (= (and b!679147 (not res!445689)) b!679148))

(assert (=> d!93409 m!644591))

(declare-fun m!644667 () Bool)

(assert (=> d!93409 m!644667))

(declare-fun m!644669 () Bool)

(assert (=> b!679148 m!644669))

(assert (=> b!679005 d!93409))

(declare-fun d!93413 () Bool)

(declare-fun res!445699 () Bool)

(declare-fun e!386966 () Bool)

(assert (=> d!93413 (=> res!445699 e!386966)))

(assert (=> d!93413 (= res!445699 ((_ is Nil!12989) acc!681))))

(assert (=> d!93413 (= (noDuplicate!782 acc!681) e!386966)))

(declare-fun b!679157 () Bool)

(declare-fun e!386967 () Bool)

(assert (=> b!679157 (= e!386966 e!386967)))

(declare-fun res!445700 () Bool)

(assert (=> b!679157 (=> (not res!445700) (not e!386967))))

(assert (=> b!679157 (= res!445700 (not (contains!3535 (t!19228 acc!681) (h!14033 acc!681))))))

(declare-fun b!679158 () Bool)

(assert (=> b!679158 (= e!386967 (noDuplicate!782 (t!19228 acc!681)))))

(assert (= (and d!93413 (not res!445699)) b!679157))

(assert (= (and b!679157 res!445700) b!679158))

(declare-fun m!644679 () Bool)

(assert (=> b!679157 m!644679))

(declare-fun m!644681 () Bool)

(assert (=> b!679158 m!644681))

(assert (=> b!678993 d!93413))

(check-sat (not b!679131) (not b!679157) (not b!679158) (not b!679143) (not bm!33927) (not b!679141) (not b!679086) (not b!679132) (not b!679076) (not b!679148) (not d!93409) (not b!679140) (not b!679134) (not d!93367) (not b!679090) (not b!679088) (not d!93379) (not b!679092) (not b!679094) (not bm!33928))
(check-sat)
