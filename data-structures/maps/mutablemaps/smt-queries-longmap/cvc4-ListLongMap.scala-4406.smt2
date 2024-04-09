; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60736 () Bool)

(assert start!60736)

(declare-fun b!681551 () Bool)

(declare-fun res!447842 () Bool)

(declare-fun e!388263 () Bool)

(assert (=> b!681551 (=> (not res!447842) (not e!388263))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39502 0))(
  ( (array!39503 (arr!18932 (Array (_ BitVec 32) (_ BitVec 64))) (size!19296 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39502)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!681551 (= res!447842 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19296 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!681552 () Bool)

(declare-fun e!388269 () Bool)

(declare-datatypes ((List!13026 0))(
  ( (Nil!13023) (Cons!13022 (h!14067 (_ BitVec 64)) (t!19271 List!13026)) )
))
(declare-fun acc!681 () List!13026)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3569 (List!13026 (_ BitVec 64)) Bool)

(assert (=> b!681552 (= e!388269 (not (contains!3569 acc!681 k!2843)))))

(declare-fun b!681553 () Bool)

(declare-fun res!447835 () Bool)

(declare-fun e!388265 () Bool)

(assert (=> b!681553 (=> res!447835 e!388265)))

(declare-fun lt!313299 () List!13026)

(declare-fun noDuplicate!816 (List!13026) Bool)

(assert (=> b!681553 (= res!447835 (not (noDuplicate!816 lt!313299)))))

(declare-fun b!681555 () Bool)

(declare-fun res!447852 () Bool)

(assert (=> b!681555 (=> res!447852 e!388265)))

(declare-fun subseq!154 (List!13026 List!13026) Bool)

(assert (=> b!681555 (= res!447852 (not (subseq!154 acc!681 lt!313299)))))

(declare-fun b!681556 () Bool)

(declare-fun res!447838 () Bool)

(assert (=> b!681556 (=> res!447838 e!388265)))

(assert (=> b!681556 (= res!447838 (contains!3569 lt!313299 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681557 () Bool)

(declare-fun e!388268 () Bool)

(assert (=> b!681557 (= e!388263 (not e!388268))))

(declare-fun res!447849 () Bool)

(assert (=> b!681557 (=> res!447849 e!388268)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!681557 (= res!447849 (not (validKeyInArray!0 (select (arr!18932 a!3626) from!3004))))))

(declare-datatypes ((Unit!23898 0))(
  ( (Unit!23899) )
))
(declare-fun lt!313296 () Unit!23898)

(declare-fun e!388266 () Unit!23898)

(assert (=> b!681557 (= lt!313296 e!388266)))

(declare-fun c!77225 () Bool)

(declare-fun arrayContainsKey!0 (array!39502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!681557 (= c!77225 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!681557 (arrayContainsKey!0 (array!39503 (store (arr!18932 a!3626) i!1382 k!2843) (size!19296 a!3626)) k!2843 from!3004)))

(declare-fun b!681558 () Bool)

(declare-fun e!388267 () Bool)

(assert (=> b!681558 (= e!388267 (contains!3569 acc!681 k!2843))))

(declare-fun b!681559 () Bool)

(declare-fun res!447853 () Bool)

(assert (=> b!681559 (=> (not res!447853) (not e!388263))))

(assert (=> b!681559 (= res!447853 (validKeyInArray!0 k!2843))))

(declare-fun b!681560 () Bool)

(declare-fun e!388270 () Bool)

(assert (=> b!681560 (= e!388270 e!388269)))

(declare-fun res!447847 () Bool)

(assert (=> b!681560 (=> (not res!447847) (not e!388269))))

(assert (=> b!681560 (= res!447847 (bvsle from!3004 i!1382))))

(declare-fun b!681561 () Bool)

(declare-fun res!447837 () Bool)

(assert (=> b!681561 (=> (not res!447837) (not e!388263))))

(assert (=> b!681561 (= res!447837 (not (contains!3569 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681562 () Bool)

(declare-fun res!447848 () Bool)

(assert (=> b!681562 (=> (not res!447848) (not e!388263))))

(assert (=> b!681562 (= res!447848 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!681563 () Bool)

(declare-fun res!447846 () Bool)

(assert (=> b!681563 (=> (not res!447846) (not e!388263))))

(assert (=> b!681563 (= res!447846 (not (contains!3569 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!681564 () Bool)

(declare-fun res!447850 () Bool)

(assert (=> b!681564 (=> (not res!447850) (not e!388263))))

(assert (=> b!681564 (= res!447850 (noDuplicate!816 acc!681))))

(declare-fun b!681565 () Bool)

(assert (=> b!681565 (= e!388268 e!388265)))

(declare-fun res!447845 () Bool)

(assert (=> b!681565 (=> res!447845 e!388265)))

(assert (=> b!681565 (= res!447845 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!318 (List!13026 (_ BitVec 64)) List!13026)

(assert (=> b!681565 (= lt!313299 ($colon$colon!318 acc!681 (select (arr!18932 a!3626) from!3004)))))

(assert (=> b!681565 (subseq!154 acc!681 acc!681)))

(declare-fun lt!313297 () Unit!23898)

(declare-fun lemmaListSubSeqRefl!0 (List!13026) Unit!23898)

(assert (=> b!681565 (= lt!313297 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!681566 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39502 (_ BitVec 32) List!13026) Bool)

(assert (=> b!681566 (= e!388265 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!313299))))

(declare-fun lt!313295 () Unit!23898)

(declare-fun noDuplicateSubseq!28 (List!13026 List!13026) Unit!23898)

(assert (=> b!681566 (= lt!313295 (noDuplicateSubseq!28 acc!681 lt!313299))))

(declare-fun b!681554 () Bool)

(declare-fun res!447836 () Bool)

(assert (=> b!681554 (=> res!447836 e!388265)))

(assert (=> b!681554 (= res!447836 (contains!3569 lt!313299 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!447841 () Bool)

(assert (=> start!60736 (=> (not res!447841) (not e!388263))))

(assert (=> start!60736 (= res!447841 (and (bvslt (size!19296 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19296 a!3626))))))

(assert (=> start!60736 e!388263))

(assert (=> start!60736 true))

(declare-fun array_inv!14706 (array!39502) Bool)

(assert (=> start!60736 (array_inv!14706 a!3626)))

(declare-fun b!681567 () Bool)

(declare-fun res!447840 () Bool)

(assert (=> b!681567 (=> (not res!447840) (not e!388263))))

(assert (=> b!681567 (= res!447840 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13023))))

(declare-fun b!681568 () Bool)

(declare-fun Unit!23900 () Unit!23898)

(assert (=> b!681568 (= e!388266 Unit!23900)))

(declare-fun lt!313298 () Unit!23898)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39502 (_ BitVec 64) (_ BitVec 32)) Unit!23898)

(assert (=> b!681568 (= lt!313298 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!681568 false))

(declare-fun b!681569 () Bool)

(declare-fun Unit!23901 () Unit!23898)

(assert (=> b!681569 (= e!388266 Unit!23901)))

(declare-fun b!681570 () Bool)

(declare-fun res!447839 () Bool)

(assert (=> b!681570 (=> (not res!447839) (not e!388263))))

(assert (=> b!681570 (= res!447839 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19296 a!3626))))))

(declare-fun b!681571 () Bool)

(declare-fun res!447843 () Bool)

(assert (=> b!681571 (=> (not res!447843) (not e!388263))))

(assert (=> b!681571 (= res!447843 e!388270)))

(declare-fun res!447844 () Bool)

(assert (=> b!681571 (=> res!447844 e!388270)))

(assert (=> b!681571 (= res!447844 e!388267)))

(declare-fun res!447854 () Bool)

(assert (=> b!681571 (=> (not res!447854) (not e!388267))))

(assert (=> b!681571 (= res!447854 (bvsgt from!3004 i!1382))))

(declare-fun b!681572 () Bool)

(declare-fun res!447851 () Bool)

(assert (=> b!681572 (=> (not res!447851) (not e!388263))))

(assert (=> b!681572 (= res!447851 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60736 res!447841) b!681564))

(assert (= (and b!681564 res!447850) b!681563))

(assert (= (and b!681563 res!447846) b!681561))

(assert (= (and b!681561 res!447837) b!681571))

(assert (= (and b!681571 res!447854) b!681558))

(assert (= (and b!681571 (not res!447844)) b!681560))

(assert (= (and b!681560 res!447847) b!681552))

(assert (= (and b!681571 res!447843) b!681567))

(assert (= (and b!681567 res!447840) b!681572))

(assert (= (and b!681572 res!447851) b!681570))

(assert (= (and b!681570 res!447839) b!681559))

(assert (= (and b!681559 res!447853) b!681562))

(assert (= (and b!681562 res!447848) b!681551))

(assert (= (and b!681551 res!447842) b!681557))

(assert (= (and b!681557 c!77225) b!681568))

(assert (= (and b!681557 (not c!77225)) b!681569))

(assert (= (and b!681557 (not res!447849)) b!681565))

(assert (= (and b!681565 (not res!447845)) b!681553))

(assert (= (and b!681553 (not res!447835)) b!681554))

(assert (= (and b!681554 (not res!447836)) b!681556))

(assert (= (and b!681556 (not res!447838)) b!681555))

(assert (= (and b!681555 (not res!447852)) b!681566))

(declare-fun m!646413 () Bool)

(assert (=> b!681567 m!646413))

(declare-fun m!646415 () Bool)

(assert (=> b!681559 m!646415))

(declare-fun m!646417 () Bool)

(assert (=> b!681568 m!646417))

(declare-fun m!646419 () Bool)

(assert (=> b!681561 m!646419))

(declare-fun m!646421 () Bool)

(assert (=> b!681557 m!646421))

(declare-fun m!646423 () Bool)

(assert (=> b!681557 m!646423))

(declare-fun m!646425 () Bool)

(assert (=> b!681557 m!646425))

(assert (=> b!681557 m!646421))

(declare-fun m!646427 () Bool)

(assert (=> b!681557 m!646427))

(declare-fun m!646429 () Bool)

(assert (=> b!681557 m!646429))

(declare-fun m!646431 () Bool)

(assert (=> b!681556 m!646431))

(declare-fun m!646433 () Bool)

(assert (=> b!681562 m!646433))

(declare-fun m!646435 () Bool)

(assert (=> b!681563 m!646435))

(declare-fun m!646437 () Bool)

(assert (=> b!681552 m!646437))

(declare-fun m!646439 () Bool)

(assert (=> b!681553 m!646439))

(assert (=> b!681565 m!646421))

(assert (=> b!681565 m!646421))

(declare-fun m!646441 () Bool)

(assert (=> b!681565 m!646441))

(declare-fun m!646443 () Bool)

(assert (=> b!681565 m!646443))

(declare-fun m!646445 () Bool)

(assert (=> b!681565 m!646445))

(declare-fun m!646447 () Bool)

(assert (=> b!681566 m!646447))

(declare-fun m!646449 () Bool)

(assert (=> b!681566 m!646449))

(declare-fun m!646451 () Bool)

(assert (=> b!681554 m!646451))

(declare-fun m!646453 () Bool)

(assert (=> start!60736 m!646453))

(assert (=> b!681558 m!646437))

(declare-fun m!646455 () Bool)

(assert (=> b!681572 m!646455))

(declare-fun m!646457 () Bool)

(assert (=> b!681555 m!646457))

(declare-fun m!646459 () Bool)

(assert (=> b!681564 m!646459))

(push 1)

(assert (not b!681556))

(assert (not b!681561))

(assert (not b!681566))

(assert (not b!681568))

(assert (not b!681559))

(assert (not b!681552))

(assert (not b!681565))

(assert (not b!681553))

(assert (not b!681564))

(assert (not b!681563))

(assert (not b!681572))

(assert (not b!681567))

(assert (not b!681562))

(assert (not b!681555))

(assert (not b!681557))

(assert (not b!681554))

(assert (not b!681558))

(assert (not start!60736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93797 () Bool)

(assert (=> d!93797 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!681559 d!93797))

(declare-fun b!681628 () Bool)

(declare-fun e!388324 () Bool)

(declare-fun e!388323 () Bool)

(assert (=> b!681628 (= e!388324 e!388323)))

(declare-fun res!447902 () Bool)

(assert (=> b!681628 (=> (not res!447902) (not e!388323))))

(declare-fun e!388326 () Bool)

(assert (=> b!681628 (= res!447902 (not e!388326))))

(declare-fun res!447904 () Bool)

(assert (=> b!681628 (=> (not res!447904) (not e!388326))))

(assert (=> b!681628 (= res!447904 (validKeyInArray!0 (select (arr!18932 a!3626) from!3004)))))

(declare-fun b!681629 () Bool)

(declare-fun e!388325 () Bool)

(assert (=> b!681629 (= e!388323 e!388325)))

(declare-fun c!77231 () Bool)

(assert (=> b!681629 (= c!77231 (validKeyInArray!0 (select (arr!18932 a!3626) from!3004)))))

(declare-fun b!681630 () Bool)

(assert (=> b!681630 (= e!388326 (contains!3569 acc!681 (select (arr!18932 a!3626) from!3004)))))

(declare-fun d!93799 () Bool)

(declare-fun res!447903 () Bool)

(assert (=> d!93799 (=> res!447903 e!388324)))

(assert (=> d!93799 (= res!447903 (bvsge from!3004 (size!19296 a!3626)))))

(assert (=> d!93799 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!388324)))

(declare-fun b!681631 () Bool)

(declare-fun call!33977 () Bool)

(assert (=> b!681631 (= e!388325 call!33977)))

(declare-fun bm!33974 () Bool)

(assert (=> bm!33974 (= call!33977 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77231 (Cons!13022 (select (arr!18932 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!681632 () Bool)

(assert (=> b!681632 (= e!388325 call!33977)))

(assert (= (and d!93799 (not res!447903)) b!681628))

(assert (= (and b!681628 res!447904) b!681630))

(assert (= (and b!681628 res!447902) b!681629))

(assert (= (and b!681629 c!77231) b!681631))

(assert (= (and b!681629 (not c!77231)) b!681632))

(assert (= (or b!681631 b!681632) bm!33974))

(assert (=> b!681628 m!646421))

(assert (=> b!681628 m!646421))

(assert (=> b!681628 m!646427))

(assert (=> b!681629 m!646421))

(assert (=> b!681629 m!646421))

(assert (=> b!681629 m!646427))

(assert (=> b!681630 m!646421))

(assert (=> b!681630 m!646421))

(declare-fun m!646489 () Bool)

(assert (=> b!681630 m!646489))

(assert (=> bm!33974 m!646421))

(declare-fun m!646491 () Bool)

(assert (=> bm!33974 m!646491))

(assert (=> b!681572 d!93799))

(declare-fun d!93817 () Bool)

(declare-fun lt!313310 () Bool)

(declare-fun content!278 (List!13026) (Set (_ BitVec 64)))

(assert (=> d!93817 (= lt!313310 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!278 acc!681)))))

(declare-fun e!388354 () Bool)

(assert (=> d!93817 (= lt!313310 e!388354)))

(declare-fun res!447932 () Bool)

(assert (=> d!93817 (=> (not res!447932) (not e!388354))))

(assert (=> d!93817 (= res!447932 (is-Cons!13022 acc!681))))

(assert (=> d!93817 (= (contains!3569 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313310)))

(declare-fun b!681661 () Bool)

(declare-fun e!388353 () Bool)

(assert (=> b!681661 (= e!388354 e!388353)))

(declare-fun res!447931 () Bool)

(assert (=> b!681661 (=> res!447931 e!388353)))

(assert (=> b!681661 (= res!447931 (= (h!14067 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681662 () Bool)

(assert (=> b!681662 (= e!388353 (contains!3569 (t!19271 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93817 res!447932) b!681661))

(assert (= (and b!681661 (not res!447931)) b!681662))

(declare-fun m!646509 () Bool)

(assert (=> d!93817 m!646509))

(declare-fun m!646511 () Bool)

(assert (=> d!93817 m!646511))

(declare-fun m!646513 () Bool)

(assert (=> b!681662 m!646513))

(assert (=> b!681561 d!93817))

(declare-fun d!93833 () Bool)

(declare-fun res!447952 () Bool)

(declare-fun e!388375 () Bool)

(assert (=> d!93833 (=> res!447952 e!388375)))

(assert (=> d!93833 (= res!447952 (= (select (arr!18932 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93833 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!388375)))

(declare-fun b!681684 () Bool)

(declare-fun e!388376 () Bool)

(assert (=> b!681684 (= e!388375 e!388376)))

(declare-fun res!447953 () Bool)

(assert (=> b!681684 (=> (not res!447953) (not e!388376))))

(assert (=> b!681684 (= res!447953 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19296 a!3626)))))

(declare-fun b!681685 () Bool)

(assert (=> b!681685 (= e!388376 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93833 (not res!447952)) b!681684))

(assert (= (and b!681684 res!447953) b!681685))

(declare-fun m!646539 () Bool)

(assert (=> d!93833 m!646539))

(declare-fun m!646541 () Bool)

(assert (=> b!681685 m!646541))

(assert (=> b!681562 d!93833))

(declare-fun d!93849 () Bool)

(declare-fun lt!313317 () Bool)

(assert (=> d!93849 (= lt!313317 (member k!2843 (content!278 acc!681)))))

(declare-fun e!388378 () Bool)

(assert (=> d!93849 (= lt!313317 e!388378)))

(declare-fun res!447955 () Bool)

(assert (=> d!93849 (=> (not res!447955) (not e!388378))))

(assert (=> d!93849 (= res!447955 (is-Cons!13022 acc!681))))

(assert (=> d!93849 (= (contains!3569 acc!681 k!2843) lt!313317)))

(declare-fun b!681686 () Bool)

(declare-fun e!388377 () Bool)

(assert (=> b!681686 (= e!388378 e!388377)))

(declare-fun res!447954 () Bool)

(assert (=> b!681686 (=> res!447954 e!388377)))

(assert (=> b!681686 (= res!447954 (= (h!14067 acc!681) k!2843))))

(declare-fun b!681687 () Bool)

(assert (=> b!681687 (= e!388377 (contains!3569 (t!19271 acc!681) k!2843))))

(assert (= (and d!93849 res!447955) b!681686))

(assert (= (and b!681686 (not res!447954)) b!681687))

(assert (=> d!93849 m!646509))

(declare-fun m!646543 () Bool)

(assert (=> d!93849 m!646543))

(declare-fun m!646545 () Bool)

(assert (=> b!681687 m!646545))

(assert (=> b!681552 d!93849))

(declare-fun d!93851 () Bool)

(declare-fun lt!313318 () Bool)

(assert (=> d!93851 (= lt!313318 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!278 acc!681)))))

(declare-fun e!388382 () Bool)

(assert (=> d!93851 (= lt!313318 e!388382)))

(declare-fun res!447959 () Bool)

(assert (=> d!93851 (=> (not res!447959) (not e!388382))))

(assert (=> d!93851 (= res!447959 (is-Cons!13022 acc!681))))

(assert (=> d!93851 (= (contains!3569 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313318)))

(declare-fun b!681690 () Bool)

(declare-fun e!388381 () Bool)

(assert (=> b!681690 (= e!388382 e!388381)))

(declare-fun res!447958 () Bool)

(assert (=> b!681690 (=> res!447958 e!388381)))

(assert (=> b!681690 (= res!447958 (= (h!14067 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681691 () Bool)

(assert (=> b!681691 (= e!388381 (contains!3569 (t!19271 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93851 res!447959) b!681690))

(assert (= (and b!681690 (not res!447958)) b!681691))

(assert (=> d!93851 m!646509))

(declare-fun m!646551 () Bool)

(assert (=> d!93851 m!646551))

(declare-fun m!646553 () Bool)

(assert (=> b!681691 m!646553))

(assert (=> b!681563 d!93851))

(declare-fun d!93855 () Bool)

(declare-fun res!447980 () Bool)

(declare-fun e!388404 () Bool)

(assert (=> d!93855 (=> res!447980 e!388404)))

(assert (=> d!93855 (= res!447980 (is-Nil!13023 acc!681))))

(assert (=> d!93855 (= (noDuplicate!816 acc!681) e!388404)))

(declare-fun b!681712 () Bool)

(declare-fun e!388405 () Bool)

(assert (=> b!681712 (= e!388404 e!388405)))

(declare-fun res!447981 () Bool)

(assert (=> b!681712 (=> (not res!447981) (not e!388405))))

(assert (=> b!681712 (= res!447981 (not (contains!3569 (t!19271 acc!681) (h!14067 acc!681))))))

(declare-fun b!681715 () Bool)

(assert (=> b!681715 (= e!388405 (noDuplicate!816 (t!19271 acc!681)))))

(assert (= (and d!93855 (not res!447980)) b!681712))

(assert (= (and b!681712 res!447981) b!681715))

(declare-fun m!646577 () Bool)

(assert (=> b!681712 m!646577))

(declare-fun m!646581 () Bool)

(assert (=> b!681715 m!646581))

(assert (=> b!681564 d!93855))

(declare-fun d!93871 () Bool)

(assert (=> d!93871 (= (array_inv!14706 a!3626) (bvsge (size!19296 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60736 d!93871))

(declare-fun d!93873 () Bool)

(declare-fun res!447986 () Bool)

(declare-fun e!388410 () Bool)

(assert (=> d!93873 (=> res!447986 e!388410)))

(assert (=> d!93873 (= res!447986 (is-Nil!13023 lt!313299))))

(assert (=> d!93873 (= (noDuplicate!816 lt!313299) e!388410)))

(declare-fun b!681720 () Bool)

(declare-fun e!388411 () Bool)

(assert (=> b!681720 (= e!388410 e!388411)))

(declare-fun res!447987 () Bool)

(assert (=> b!681720 (=> (not res!447987) (not e!388411))))

(assert (=> b!681720 (= res!447987 (not (contains!3569 (t!19271 lt!313299) (h!14067 lt!313299))))))

(declare-fun b!681721 () Bool)

(assert (=> b!681721 (= e!388411 (noDuplicate!816 (t!19271 lt!313299)))))

(assert (= (and d!93873 (not res!447986)) b!681720))

(assert (= (and b!681720 res!447987) b!681721))

(declare-fun m!646583 () Bool)

(assert (=> b!681720 m!646583))

(declare-fun m!646585 () Bool)

(assert (=> b!681721 m!646585))

(assert (=> b!681553 d!93873))

(declare-fun d!93875 () Bool)

(declare-fun lt!313326 () Bool)

(assert (=> d!93875 (= lt!313326 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!278 lt!313299)))))

(declare-fun e!388413 () Bool)

(assert (=> d!93875 (= lt!313326 e!388413)))

(declare-fun res!447989 () Bool)

(assert (=> d!93875 (=> (not res!447989) (not e!388413))))

(assert (=> d!93875 (= res!447989 (is-Cons!13022 lt!313299))))

(assert (=> d!93875 (= (contains!3569 lt!313299 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313326)))

(declare-fun b!681722 () Bool)

(declare-fun e!388412 () Bool)

(assert (=> b!681722 (= e!388413 e!388412)))

(declare-fun res!447988 () Bool)

(assert (=> b!681722 (=> res!447988 e!388412)))

(assert (=> b!681722 (= res!447988 (= (h!14067 lt!313299) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!681723 () Bool)

(assert (=> b!681723 (= e!388412 (contains!3569 (t!19271 lt!313299) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93875 res!447989) b!681722))

(assert (= (and b!681722 (not res!447988)) b!681723))

(declare-fun m!646587 () Bool)

(assert (=> d!93875 m!646587))

(declare-fun m!646591 () Bool)

(assert (=> d!93875 m!646591))

(declare-fun m!646594 () Bool)

(assert (=> b!681723 m!646594))

(assert (=> b!681554 d!93875))

(declare-fun d!93877 () Bool)

(assert (=> d!93877 (= ($colon$colon!318 acc!681 (select (arr!18932 a!3626) from!3004)) (Cons!13022 (select (arr!18932 a!3626) from!3004) acc!681))))

(assert (=> b!681565 d!93877))

(declare-fun b!681749 () Bool)

(declare-fun e!388437 () Bool)

(declare-fun e!388436 () Bool)

(assert (=> b!681749 (= e!388437 e!388436)))

(declare-fun res!448013 () Bool)

(assert (=> b!681749 (=> res!448013 e!388436)))

(declare-fun e!388438 () Bool)

(assert (=> b!681749 (= res!448013 e!388438)))

(declare-fun res!448011 () Bool)

(assert (=> b!681749 (=> (not res!448011) (not e!388438))))

(assert (=> b!681749 (= res!448011 (= (h!14067 acc!681) (h!14067 acc!681)))))

(declare-fun b!681750 () Bool)

