; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60594 () Bool)

(assert start!60594)

(declare-fun b!680470 () Bool)

(declare-fun res!446878 () Bool)

(declare-fun e!387622 () Bool)

(assert (=> b!680470 (=> (not res!446878) (not e!387622))))

(declare-fun e!387623 () Bool)

(assert (=> b!680470 (= res!446878 e!387623)))

(declare-fun res!446870 () Bool)

(assert (=> b!680470 (=> res!446870 e!387623)))

(declare-fun e!387621 () Bool)

(assert (=> b!680470 (= res!446870 e!387621)))

(declare-fun res!446879 () Bool)

(assert (=> b!680470 (=> (not res!446879) (not e!387621))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680470 (= res!446879 (bvsgt from!3004 i!1382))))

(declare-fun b!680471 () Bool)

(declare-fun res!446876 () Bool)

(assert (=> b!680471 (=> (not res!446876) (not e!387622))))

(declare-datatypes ((array!39474 0))(
  ( (array!39475 (arr!18921 (Array (_ BitVec 32) (_ BitVec 64))) (size!19285 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39474)

(declare-datatypes ((List!13015 0))(
  ( (Nil!13012) (Cons!13011 (h!14056 (_ BitVec 64)) (t!19254 List!13015)) )
))
(declare-fun acc!681 () List!13015)

(declare-fun arrayNoDuplicates!0 (array!39474 (_ BitVec 32) List!13015) Bool)

(assert (=> b!680471 (= res!446876 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680472 () Bool)

(declare-fun res!446873 () Bool)

(assert (=> b!680472 (=> (not res!446873) (not e!387622))))

(declare-fun contains!3558 (List!13015 (_ BitVec 64)) Bool)

(assert (=> b!680472 (= res!446873 (not (contains!3558 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680473 () Bool)

(declare-fun res!446868 () Bool)

(assert (=> b!680473 (=> (not res!446868) (not e!387622))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680473 (= res!446868 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680474 () Bool)

(declare-fun res!446869 () Bool)

(assert (=> b!680474 (=> (not res!446869) (not e!387622))))

(assert (=> b!680474 (= res!446869 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19285 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680475 () Bool)

(declare-fun res!446875 () Bool)

(assert (=> b!680475 (=> (not res!446875) (not e!387622))))

(assert (=> b!680475 (= res!446875 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19285 a!3626))))))

(declare-fun b!680476 () Bool)

(assert (=> b!680476 (= e!387621 (contains!3558 acc!681 k!2843))))

(declare-fun b!680477 () Bool)

(declare-fun res!446883 () Bool)

(assert (=> b!680477 (=> (not res!446883) (not e!387622))))

(assert (=> b!680477 (= res!446883 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13012))))

(declare-fun b!680478 () Bool)

(declare-fun e!387627 () Bool)

(assert (=> b!680478 (= e!387623 e!387627)))

(declare-fun res!446880 () Bool)

(assert (=> b!680478 (=> (not res!446880) (not e!387627))))

(assert (=> b!680478 (= res!446880 (bvsle from!3004 i!1382))))

(declare-fun b!680479 () Bool)

(declare-fun res!446871 () Bool)

(assert (=> b!680479 (=> (not res!446871) (not e!387622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680479 (= res!446871 (validKeyInArray!0 k!2843))))

(declare-fun b!680481 () Bool)

(declare-fun e!387625 () Bool)

(assert (=> b!680481 (= e!387622 (not e!387625))))

(declare-fun res!446885 () Bool)

(assert (=> b!680481 (=> res!446885 e!387625)))

(assert (=> b!680481 (= res!446885 (not (validKeyInArray!0 (select (arr!18921 a!3626) from!3004))))))

(declare-datatypes ((Unit!23854 0))(
  ( (Unit!23855) )
))
(declare-fun lt!313069 () Unit!23854)

(declare-fun e!387624 () Unit!23854)

(assert (=> b!680481 (= lt!313069 e!387624)))

(declare-fun c!77168 () Bool)

(assert (=> b!680481 (= c!77168 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680481 (arrayContainsKey!0 (array!39475 (store (arr!18921 a!3626) i!1382 k!2843) (size!19285 a!3626)) k!2843 from!3004)))

(declare-fun b!680482 () Bool)

(declare-fun e!387620 () Bool)

(declare-fun e!387628 () Bool)

(assert (=> b!680482 (= e!387620 e!387628)))

(declare-fun res!446881 () Bool)

(assert (=> b!680482 (=> (not res!446881) (not e!387628))))

(declare-fun lt!313071 () List!13015)

(assert (=> b!680482 (= res!446881 (not (contains!3558 lt!313071 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680483 () Bool)

(declare-fun Unit!23856 () Unit!23854)

(assert (=> b!680483 (= e!387624 Unit!23856)))

(declare-fun lt!313068 () Unit!23854)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39474 (_ BitVec 64) (_ BitVec 32)) Unit!23854)

(assert (=> b!680483 (= lt!313068 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680483 false))

(declare-fun b!680484 () Bool)

(assert (=> b!680484 (= e!387628 (not (contains!3558 lt!313071 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680485 () Bool)

(declare-fun Unit!23857 () Unit!23854)

(assert (=> b!680485 (= e!387624 Unit!23857)))

(declare-fun b!680486 () Bool)

(assert (=> b!680486 (= e!387627 (not (contains!3558 acc!681 k!2843)))))

(declare-fun b!680487 () Bool)

(declare-fun res!446874 () Bool)

(assert (=> b!680487 (=> (not res!446874) (not e!387622))))

(assert (=> b!680487 (= res!446874 (not (contains!3558 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680480 () Bool)

(declare-fun res!446882 () Bool)

(assert (=> b!680480 (=> res!446882 e!387620)))

(declare-fun noDuplicate!805 (List!13015) Bool)

(assert (=> b!680480 (= res!446882 (not (noDuplicate!805 lt!313071)))))

(declare-fun res!446884 () Bool)

(assert (=> start!60594 (=> (not res!446884) (not e!387622))))

(assert (=> start!60594 (= res!446884 (and (bvslt (size!19285 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19285 a!3626))))))

(assert (=> start!60594 e!387622))

(assert (=> start!60594 true))

(declare-fun array_inv!14695 (array!39474) Bool)

(assert (=> start!60594 (array_inv!14695 a!3626)))

(declare-fun b!680488 () Bool)

(declare-fun res!446872 () Bool)

(assert (=> b!680488 (=> (not res!446872) (not e!387622))))

(assert (=> b!680488 (= res!446872 (noDuplicate!805 acc!681))))

(declare-fun b!680489 () Bool)

(assert (=> b!680489 (= e!387625 e!387620)))

(declare-fun res!446877 () Bool)

(assert (=> b!680489 (=> res!446877 e!387620)))

(assert (=> b!680489 (= res!446877 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!307 (List!13015 (_ BitVec 64)) List!13015)

(assert (=> b!680489 (= lt!313071 ($colon$colon!307 acc!681 (select (arr!18921 a!3626) from!3004)))))

(declare-fun subseq!143 (List!13015 List!13015) Bool)

(assert (=> b!680489 (subseq!143 acc!681 acc!681)))

(declare-fun lt!313070 () Unit!23854)

(declare-fun lemmaListSubSeqRefl!0 (List!13015) Unit!23854)

(assert (=> b!680489 (= lt!313070 (lemmaListSubSeqRefl!0 acc!681))))

(assert (= (and start!60594 res!446884) b!680488))

(assert (= (and b!680488 res!446872) b!680487))

(assert (= (and b!680487 res!446874) b!680472))

(assert (= (and b!680472 res!446873) b!680470))

(assert (= (and b!680470 res!446879) b!680476))

(assert (= (and b!680470 (not res!446870)) b!680478))

(assert (= (and b!680478 res!446880) b!680486))

(assert (= (and b!680470 res!446878) b!680477))

(assert (= (and b!680477 res!446883) b!680471))

(assert (= (and b!680471 res!446876) b!680475))

(assert (= (and b!680475 res!446875) b!680479))

(assert (= (and b!680479 res!446871) b!680473))

(assert (= (and b!680473 res!446868) b!680474))

(assert (= (and b!680474 res!446869) b!680481))

(assert (= (and b!680481 c!77168) b!680483))

(assert (= (and b!680481 (not c!77168)) b!680485))

(assert (= (and b!680481 (not res!446885)) b!680489))

(assert (= (and b!680489 (not res!446877)) b!680480))

(assert (= (and b!680480 (not res!446882)) b!680482))

(assert (= (and b!680482 res!446881) b!680484))

(declare-fun m!645549 () Bool)

(assert (=> b!680483 m!645549))

(declare-fun m!645551 () Bool)

(assert (=> b!680488 m!645551))

(declare-fun m!645553 () Bool)

(assert (=> b!680487 m!645553))

(declare-fun m!645555 () Bool)

(assert (=> b!680484 m!645555))

(declare-fun m!645557 () Bool)

(assert (=> b!680486 m!645557))

(declare-fun m!645559 () Bool)

(assert (=> b!680481 m!645559))

(declare-fun m!645561 () Bool)

(assert (=> b!680481 m!645561))

(declare-fun m!645563 () Bool)

(assert (=> b!680481 m!645563))

(assert (=> b!680481 m!645559))

(declare-fun m!645565 () Bool)

(assert (=> b!680481 m!645565))

(declare-fun m!645567 () Bool)

(assert (=> b!680481 m!645567))

(declare-fun m!645569 () Bool)

(assert (=> b!680471 m!645569))

(declare-fun m!645571 () Bool)

(assert (=> b!680477 m!645571))

(declare-fun m!645573 () Bool)

(assert (=> b!680472 m!645573))

(declare-fun m!645575 () Bool)

(assert (=> b!680473 m!645575))

(declare-fun m!645577 () Bool)

(assert (=> b!680480 m!645577))

(declare-fun m!645579 () Bool)

(assert (=> start!60594 m!645579))

(declare-fun m!645581 () Bool)

(assert (=> b!680482 m!645581))

(assert (=> b!680476 m!645557))

(assert (=> b!680489 m!645559))

(assert (=> b!680489 m!645559))

(declare-fun m!645583 () Bool)

(assert (=> b!680489 m!645583))

(declare-fun m!645585 () Bool)

(assert (=> b!680489 m!645585))

(declare-fun m!645587 () Bool)

(assert (=> b!680489 m!645587))

(declare-fun m!645589 () Bool)

(assert (=> b!680479 m!645589))

(push 1)

(assert (not b!680479))

(assert (not b!680487))

(assert (not b!680476))

(assert (not b!680473))

(assert (not b!680472))

(assert (not b!680477))

(assert (not b!680489))

(assert (not b!680482))

(assert (not b!680483))

(assert (not start!60594))

(assert (not b!680471))

(assert (not b!680481))

(assert (not b!680484))

(assert (not b!680480))

(assert (not b!680486))

(assert (not b!680488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93563 () Bool)

(assert (=> d!93563 (= (validKeyInArray!0 (select (arr!18921 a!3626) from!3004)) (and (not (= (select (arr!18921 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18921 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680481 d!93563))

(declare-fun d!93569 () Bool)

(declare-fun res!447024 () Bool)

(declare-fun e!387713 () Bool)

(assert (=> d!93569 (=> res!447024 e!387713)))

(assert (=> d!93569 (= res!447024 (= (select (arr!18921 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93569 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!387713)))

(declare-fun b!680640 () Bool)

(declare-fun e!387714 () Bool)

(assert (=> b!680640 (= e!387713 e!387714)))

(declare-fun res!447025 () Bool)

(assert (=> b!680640 (=> (not res!447025) (not e!387714))))

(assert (=> b!680640 (= res!447025 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19285 a!3626)))))

(declare-fun b!680641 () Bool)

(assert (=> b!680641 (= e!387714 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93569 (not res!447024)) b!680640))

(assert (= (and b!680640 res!447025) b!680641))

(declare-fun m!645697 () Bool)

(assert (=> d!93569 m!645697))

(declare-fun m!645699 () Bool)

(assert (=> b!680641 m!645699))

(assert (=> b!680481 d!93569))

(declare-fun d!93575 () Bool)

(declare-fun res!447028 () Bool)

(declare-fun e!387717 () Bool)

(assert (=> d!93575 (=> res!447028 e!387717)))

(assert (=> d!93575 (= res!447028 (= (select (arr!18921 (array!39475 (store (arr!18921 a!3626) i!1382 k!2843) (size!19285 a!3626))) from!3004) k!2843))))

(assert (=> d!93575 (= (arrayContainsKey!0 (array!39475 (store (arr!18921 a!3626) i!1382 k!2843) (size!19285 a!3626)) k!2843 from!3004) e!387717)))

(declare-fun b!680644 () Bool)

(declare-fun e!387718 () Bool)

(assert (=> b!680644 (= e!387717 e!387718)))

(declare-fun res!447029 () Bool)

(assert (=> b!680644 (=> (not res!447029) (not e!387718))))

(assert (=> b!680644 (= res!447029 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19285 (array!39475 (store (arr!18921 a!3626) i!1382 k!2843) (size!19285 a!3626)))))))

(declare-fun b!680645 () Bool)

(assert (=> b!680645 (= e!387718 (arrayContainsKey!0 (array!39475 (store (arr!18921 a!3626) i!1382 k!2843) (size!19285 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93575 (not res!447028)) b!680644))

(assert (= (and b!680644 res!447029) b!680645))

(declare-fun m!645707 () Bool)

(assert (=> d!93575 m!645707))

(declare-fun m!645709 () Bool)

(assert (=> b!680645 m!645709))

(assert (=> b!680481 d!93575))

(declare-fun d!93581 () Bool)

(declare-fun res!447048 () Bool)

(declare-fun e!387737 () Bool)

(assert (=> d!93581 (=> res!447048 e!387737)))

(assert (=> d!93581 (= res!447048 (is-Nil!13012 lt!313071))))

(assert (=> d!93581 (= (noDuplicate!805 lt!313071) e!387737)))

(declare-fun b!680666 () Bool)

(declare-fun e!387738 () Bool)

(assert (=> b!680666 (= e!387737 e!387738)))

(declare-fun res!447049 () Bool)

(assert (=> b!680666 (=> (not res!447049) (not e!387738))))

(assert (=> b!680666 (= res!447049 (not (contains!3558 (t!19254 lt!313071) (h!14056 lt!313071))))))

(declare-fun b!680667 () Bool)

(assert (=> b!680667 (= e!387738 (noDuplicate!805 (t!19254 lt!313071)))))

(assert (= (and d!93581 (not res!447048)) b!680666))

(assert (= (and b!680666 res!447049) b!680667))

(declare-fun m!645729 () Bool)

(assert (=> b!680666 m!645729))

(declare-fun m!645731 () Bool)

(assert (=> b!680667 m!645731))

(assert (=> b!680480 d!93581))

(declare-fun d!93591 () Bool)

(assert (=> d!93591 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680479 d!93591))

(declare-fun d!93593 () Bool)

(declare-fun res!447050 () Bool)

(declare-fun e!387741 () Bool)

(assert (=> d!93593 (=> res!447050 e!387741)))

(assert (=> d!93593 (= res!447050 (= (select (arr!18921 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93593 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!387741)))

(declare-fun b!680670 () Bool)

(declare-fun e!387742 () Bool)

(assert (=> b!680670 (= e!387741 e!387742)))

(declare-fun res!447051 () Bool)

(assert (=> b!680670 (=> (not res!447051) (not e!387742))))

(assert (=> b!680670 (= res!447051 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19285 a!3626)))))

(declare-fun b!680671 () Bool)

(assert (=> b!680671 (= e!387742 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93593 (not res!447050)) b!680670))

(assert (= (and b!680670 res!447051) b!680671))

(declare-fun m!645733 () Bool)

(assert (=> d!93593 m!645733))

(declare-fun m!645735 () Bool)

(assert (=> b!680671 m!645735))

(assert (=> b!680473 d!93593))

(declare-fun d!93595 () Bool)

(declare-fun lt!313110 () Bool)

(declare-fun content!273 (List!13015) (Set (_ BitVec 64)))

(assert (=> d!93595 (= lt!313110 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!273 lt!313071)))))

(declare-fun e!387752 () Bool)

(assert (=> d!93595 (= lt!313110 e!387752)))

(declare-fun res!447060 () Bool)

(assert (=> d!93595 (=> (not res!447060) (not e!387752))))

(assert (=> d!93595 (= res!447060 (is-Cons!13011 lt!313071))))

(assert (=> d!93595 (= (contains!3558 lt!313071 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313110)))

(declare-fun b!680681 () Bool)

(declare-fun e!387751 () Bool)

(assert (=> b!680681 (= e!387752 e!387751)))

(declare-fun res!447059 () Bool)

(assert (=> b!680681 (=> res!447059 e!387751)))

(assert (=> b!680681 (= res!447059 (= (h!14056 lt!313071) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680682 () Bool)

(assert (=> b!680682 (= e!387751 (contains!3558 (t!19254 lt!313071) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93595 res!447060) b!680681))

(assert (= (and b!680681 (not res!447059)) b!680682))

(declare-fun m!645743 () Bool)

(assert (=> d!93595 m!645743))

(declare-fun m!645745 () Bool)

(assert (=> d!93595 m!645745))

(declare-fun m!645747 () Bool)

(assert (=> b!680682 m!645747))

(assert (=> b!680484 d!93595))

(declare-fun d!93603 () Bool)

(assert (=> d!93603 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313114 () Unit!23854)

(declare-fun choose!13 (array!39474 (_ BitVec 64) (_ BitVec 32)) Unit!23854)

(assert (=> d!93603 (= lt!313114 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!93603 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93603 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313114)))

(declare-fun bs!19983 () Bool)

(assert (= bs!19983 d!93603))

(assert (=> bs!19983 m!645575))

(declare-fun m!645767 () Bool)

(assert (=> bs!19983 m!645767))

(assert (=> b!680483 d!93603))

(declare-fun d!93613 () Bool)

(assert (=> d!93613 (= (array_inv!14695 a!3626) (bvsge (size!19285 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60594 d!93613))

(declare-fun d!93615 () Bool)

(declare-fun lt!313117 () Bool)

(assert (=> d!93615 (= lt!313117 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!273 acc!681)))))

(declare-fun e!387772 () Bool)

(assert (=> d!93615 (= lt!313117 e!387772)))

(declare-fun res!447079 () Bool)

(assert (=> d!93615 (=> (not res!447079) (not e!387772))))

(assert (=> d!93615 (= res!447079 (is-Cons!13011 acc!681))))

(assert (=> d!93615 (= (contains!3558 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313117)))

(declare-fun b!680702 () Bool)

(declare-fun e!387771 () Bool)

(assert (=> b!680702 (= e!387772 e!387771)))

(declare-fun res!447078 () Bool)

(assert (=> b!680702 (=> res!447078 e!387771)))

(assert (=> b!680702 (= res!447078 (= (h!14056 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680703 () Bool)

(assert (=> b!680703 (= e!387771 (contains!3558 (t!19254 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93615 res!447079) b!680702))

(assert (= (and b!680702 (not res!447078)) b!680703))

(declare-fun m!645769 () Bool)

(assert (=> d!93615 m!645769))

(declare-fun m!645771 () Bool)

(assert (=> d!93615 m!645771))

(declare-fun m!645773 () Bool)

(assert (=> b!680703 m!645773))

(assert (=> b!680472 d!93615))

(declare-fun e!387809 () Bool)

(declare-fun b!680744 () Bool)

(assert (=> b!680744 (= e!387809 (contains!3558 acc!681 (select (arr!18921 a!3626) from!3004)))))

(declare-fun c!77183 () Bool)

(declare-fun bm!33953 () Bool)

(declare-fun call!33956 () Bool)

(assert (=> bm!33953 (= call!33956 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77183 (Cons!13011 (select (arr!18921 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun d!93617 () Bool)

(declare-fun res!447114 () Bool)

(declare-fun e!387812 () Bool)

(assert (=> d!93617 (=> res!447114 e!387812)))

(assert (=> d!93617 (= res!447114 (bvsge from!3004 (size!19285 a!3626)))))

(assert (=> d!93617 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387812)))

(declare-fun b!680745 () Bool)

(declare-fun e!387810 () Bool)

(assert (=> b!680745 (= e!387810 call!33956)))

(declare-fun b!680746 () Bool)

(declare-fun e!387811 () Bool)

(assert (=> b!680746 (= e!387811 e!387810)))

(assert (=> b!680746 (= c!77183 (validKeyInArray!0 (select (arr!18921 a!3626) from!3004)))))

(declare-fun b!680747 () Bool)

(assert (=> b!680747 (= e!387812 e!387811)))

(declare-fun res!447113 () Bool)

(assert (=> b!680747 (=> (not res!447113) (not e!387811))))

(assert (=> b!680747 (= res!447113 (not e!387809))))

(declare-fun res!447112 () Bool)

(assert (=> b!680747 (=> (not res!447112) (not e!387809))))

(assert (=> b!680747 (= res!447112 (validKeyInArray!0 (select (arr!18921 a!3626) from!3004)))))

(declare-fun b!680748 () Bool)

(assert (=> b!680748 (= e!387810 call!33956)))

(assert (= (and d!93617 (not res!447114)) b!680747))

(assert (= (and b!680747 res!447112) b!680744))

(assert (= (and b!680747 res!447113) b!680746))

(assert (= (and b!680746 c!77183) b!680745))

(assert (= (and b!680746 (not c!77183)) b!680748))

(assert (= (or b!680745 b!680748) bm!33953))

(assert (=> b!680744 m!645559))

(assert (=> b!680744 m!645559))

(declare-fun m!645793 () Bool)

(assert (=> b!680744 m!645793))

(assert (=> bm!33953 m!645559))

(declare-fun m!645797 () Bool)

(assert (=> bm!33953 m!645797))

(assert (=> b!680746 m!645559))

(assert (=> b!680746 m!645559))

(assert (=> b!680746 m!645565))

(assert (=> b!680747 m!645559))

(assert (=> b!680747 m!645559))

(assert (=> b!680747 m!645565))

(assert (=> b!680471 d!93617))

(declare-fun d!93631 () Bool)

(declare-fun lt!313121 () Bool)

(assert (=> d!93631 (= lt!313121 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!273 lt!313071)))))

(declare-fun e!387822 () Bool)

(assert (=> d!93631 (= lt!313121 e!387822)))

(declare-fun res!447123 () Bool)

(assert (=> d!93631 (=> (not res!447123) (not e!387822))))

(assert (=> d!93631 (= res!447123 (is-Cons!13011 lt!313071))))

(assert (=> d!93631 (= (contains!3558 lt!313071 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313121)))

(declare-fun b!680758 () Bool)

(declare-fun e!387821 () Bool)

(assert (=> b!680758 (= e!387822 e!387821)))

(declare-fun res!447122 () Bool)

(assert (=> b!680758 (=> res!447122 e!387821)))

(assert (=> b!680758 (= res!447122 (= (h!14056 lt!313071) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680759 () Bool)

(assert (=> b!680759 (= e!387821 (contains!3558 (t!19254 lt!313071) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93631 res!447123) b!680758))

(assert (= (and b!680758 (not res!447122)) b!680759))

(assert (=> d!93631 m!645743))

(declare-fun m!645805 () Bool)

(assert (=> d!93631 m!645805))

(declare-fun m!645807 () Bool)

(assert (=> b!680759 m!645807))

(assert (=> b!680482 d!93631))

(declare-fun d!93637 () Bool)

(declare-fun lt!313122 () Bool)

(assert (=> d!93637 (= lt!313122 (set.member k!2843 (content!273 acc!681)))))

(declare-fun e!387828 () Bool)

(assert (=> d!93637 (= lt!313122 e!387828)))

(declare-fun res!447128 () Bool)

(assert (=> d!93637 (=> (not res!447128) (not e!387828))))

(assert (=> d!93637 (= res!447128 (is-Cons!13011 acc!681))))

(assert (=> d!93637 (= (contains!3558 acc!681 k!2843) lt!313122)))

(declare-fun b!680765 () Bool)

(declare-fun e!387827 () Bool)

(assert (=> b!680765 (= e!387828 e!387827)))

(declare-fun res!447127 () Bool)

(assert (=> b!680765 (=> res!447127 e!387827)))

(assert (=> b!680765 (= res!447127 (= (h!14056 acc!681) k!2843))))

(declare-fun b!680766 () Bool)

(assert (=> b!680766 (= e!387827 (contains!3558 (t!19254 acc!681) k!2843))))

(assert (= (and d!93637 res!447128) b!680765))

(assert (= (and b!680765 (not res!447127)) b!680766))

(assert (=> d!93637 m!645769))

(declare-fun m!645809 () Bool)

(assert (=> d!93637 m!645809))

(declare-fun m!645811 () Bool)

(assert (=> b!680766 m!645811))

(assert (=> b!680476 d!93637))

(assert (=> b!680486 d!93637))

(declare-fun d!93639 () Bool)

(assert (=> d!93639 (= ($colon$colon!307 acc!681 (select (arr!18921 a!3626) from!3004)) (Cons!13011 (select (arr!18921 a!3626) from!3004) acc!681))))

(assert (=> b!680489 d!93639))

(declare-fun b!680786 () Bool)

(declare-fun e!387848 () Bool)

(declare-fun e!387847 () Bool)

(assert (=> b!680786 (= e!387848 e!387847)))

(declare-fun res!447147 () Bool)

(assert (=> b!680786 (=> res!447147 e!387847)))

(declare-fun e!387850 () Bool)

(assert (=> b!680786 (= res!447147 e!387850)))

(declare-fun res!447149 () Bool)

(assert (=> b!680786 (=> (not res!447149) (not e!387850))))

(assert (=> b!680786 (= res!447149 (= (h!14056 acc!681) (h!14056 acc!681)))))

(declare-fun b!680787 () Bool)

(assert (=> b!680787 (= e!387850 (subseq!143 (t!19254 acc!681) (t!19254 acc!681)))))

(declare-fun b!680785 () Bool)

(declare-fun e!387849 () Bool)

(assert (=> b!680785 (= e!387849 e!387848)))

(declare-fun res!447150 () Bool)

(assert (=> b!680785 (=> (not res!447150) (not e!387848))))

(assert (=> b!680785 (= res!447150 (is-Cons!13011 acc!681))))

(declare-fun b!680788 () Bool)

(assert (=> b!680788 (= e!387847 (subseq!143 acc!681 (t!19254 acc!681)))))

(declare-fun d!93643 () Bool)

(declare-fun res!447148 () Bool)

(assert (=> d!93643 (=> res!447148 e!387849)))

(assert (=> d!93643 (= res!447148 (is-Nil!13012 acc!681))))

(assert (=> d!93643 (= (subseq!143 acc!681 acc!681) e!387849)))

(assert (= (and d!93643 (not res!447148)) b!680785))

(assert (= (and b!680785 res!447150) b!680786))

(assert (= (and b!680786 res!447149) b!680787))

(assert (= (and b!680786 (not res!447147)) b!680788))

(declare-fun m!645833 () Bool)

(assert (=> b!680787 m!645833))

(declare-fun m!645835 () Bool)

(assert (=> b!680788 m!645835))

(assert (=> b!680489 d!93643))

(declare-fun d!93655 () Bool)

(assert (=> d!93655 (subseq!143 acc!681 acc!681)))

(declare-fun lt!313130 () Unit!23854)

(declare-fun choose!36 (List!13015) Unit!23854)

(assert (=> d!93655 (= lt!313130 (choose!36 acc!681))))

(assert (=> d!93655 (= (lemmaListSubSeqRefl!0 acc!681) lt!313130)))

(declare-fun bs!19986 () Bool)

(assert (= bs!19986 d!93655))

(assert (=> bs!19986 m!645585))

(declare-fun m!645843 () Bool)

(assert (=> bs!19986 m!645843))

(assert (=> b!680489 d!93655))

(declare-fun b!680793 () Bool)

(declare-fun e!387855 () Bool)

(assert (=> b!680793 (= e!387855 (contains!3558 Nil!13012 (select (arr!18921 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33956 () Bool)

(declare-fun call!33959 () Bool)

(declare-fun c!77186 () Bool)

(assert (=> bm!33956 (= call!33959 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77186 (Cons!13011 (select (arr!18921 a!3626) #b00000000000000000000000000000000) Nil!13012) Nil!13012)))))

(declare-fun d!93661 () Bool)

(declare-fun res!447157 () Bool)

(declare-fun e!387858 () Bool)

(assert (=> d!93661 (=> res!447157 e!387858)))

(assert (=> d!93661 (= res!447157 (bvsge #b00000000000000000000000000000000 (size!19285 a!3626)))))

(assert (=> d!93661 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13012) e!387858)))

(declare-fun b!680794 () Bool)

(declare-fun e!387856 () Bool)

(assert (=> b!680794 (= e!387856 call!33959)))

(declare-fun b!680795 () Bool)

(declare-fun e!387857 () Bool)

(assert (=> b!680795 (= e!387857 e!387856)))

(assert (=> b!680795 (= c!77186 (validKeyInArray!0 (select (arr!18921 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680796 () Bool)

(assert (=> b!680796 (= e!387858 e!387857)))

(declare-fun res!447156 () Bool)

(assert (=> b!680796 (=> (not res!447156) (not e!387857))))

(assert (=> b!680796 (= res!447156 (not e!387855))))

(declare-fun res!447155 () Bool)

(assert (=> b!680796 (=> (not res!447155) (not e!387855))))

(assert (