; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60202 () Bool)

(assert start!60202)

(declare-fun b!672667 () Bool)

(declare-fun e!384212 () Bool)

(declare-datatypes ((List!12885 0))(
  ( (Nil!12882) (Cons!12881 (h!13926 (_ BitVec 64)) (t!19121 List!12885)) )
))
(declare-fun lt!312320 () List!12885)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3428 (List!12885 (_ BitVec 64)) Bool)

(assert (=> b!672667 (= e!384212 (contains!3428 lt!312320 k!2843))))

(declare-fun b!672668 () Bool)

(declare-fun res!439451 () Bool)

(declare-fun e!384217 () Bool)

(assert (=> b!672668 (=> (not res!439451) (not e!384217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672668 (= res!439451 (validKeyInArray!0 k!2843))))

(declare-fun b!672669 () Bool)

(declare-fun res!439445 () Bool)

(declare-fun e!384213 () Bool)

(assert (=> b!672669 (=> (not res!439445) (not e!384213))))

(assert (=> b!672669 (= res!439445 (not (contains!3428 lt!312320 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672670 () Bool)

(declare-fun res!439432 () Bool)

(assert (=> b!672670 (=> (not res!439432) (not e!384217))))

(declare-fun acc!681 () List!12885)

(assert (=> b!672670 (= res!439432 (not (contains!3428 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672671 () Bool)

(declare-fun res!439442 () Bool)

(assert (=> b!672671 (=> (not res!439442) (not e!384217))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39205 0))(
  ( (array!39206 (arr!18791 (Array (_ BitVec 32) (_ BitVec 64))) (size!19155 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39205)

(assert (=> b!672671 (= res!439442 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19155 a!3626))))))

(declare-fun b!672672 () Bool)

(declare-fun e!384211 () Bool)

(assert (=> b!672672 (= e!384211 (not (contains!3428 acc!681 k!2843)))))

(declare-fun b!672673 () Bool)

(declare-fun res!439449 () Bool)

(assert (=> b!672673 (=> (not res!439449) (not e!384217))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!672673 (= res!439449 (validKeyInArray!0 (select (arr!18791 a!3626) from!3004)))))

(declare-fun b!672674 () Bool)

(declare-datatypes ((Unit!23628 0))(
  ( (Unit!23629) )
))
(declare-fun e!384214 () Unit!23628)

(declare-fun Unit!23630 () Unit!23628)

(assert (=> b!672674 (= e!384214 Unit!23630)))

(declare-fun arrayContainsKey!0 (array!39205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672674 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312319 () Unit!23628)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39205 (_ BitVec 64) (_ BitVec 32)) Unit!23628)

(assert (=> b!672674 (= lt!312319 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672674 false))

(declare-fun b!672675 () Bool)

(declare-fun e!384220 () Bool)

(assert (=> b!672675 (= e!384220 e!384211)))

(declare-fun res!439452 () Bool)

(assert (=> b!672675 (=> (not res!439452) (not e!384211))))

(assert (=> b!672675 (= res!439452 (bvsle from!3004 i!1382))))

(declare-fun b!672676 () Bool)

(declare-fun res!439447 () Bool)

(assert (=> b!672676 (=> (not res!439447) (not e!384217))))

(declare-fun noDuplicate!675 (List!12885) Bool)

(assert (=> b!672676 (= res!439447 (noDuplicate!675 acc!681))))

(declare-fun b!672677 () Bool)

(declare-fun e!384210 () Bool)

(assert (=> b!672677 (= e!384210 (not (contains!3428 lt!312320 k!2843)))))

(declare-fun b!672678 () Bool)

(declare-fun res!439441 () Bool)

(assert (=> b!672678 (=> (not res!439441) (not e!384217))))

(assert (=> b!672678 (= res!439441 (not (contains!3428 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672679 () Bool)

(declare-fun e!384215 () Bool)

(assert (=> b!672679 (= e!384215 (contains!3428 acc!681 k!2843))))

(declare-fun b!672680 () Bool)

(declare-fun res!439443 () Bool)

(assert (=> b!672680 (=> (not res!439443) (not e!384217))))

(declare-fun arrayNoDuplicates!0 (array!39205 (_ BitVec 32) List!12885) Bool)

(assert (=> b!672680 (= res!439443 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12882))))

(declare-fun b!672681 () Bool)

(declare-fun res!439433 () Bool)

(assert (=> b!672681 (=> (not res!439433) (not e!384217))))

(assert (=> b!672681 (= res!439433 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672682 () Bool)

(declare-fun res!439437 () Bool)

(assert (=> b!672682 (=> (not res!439437) (not e!384213))))

(assert (=> b!672682 (= res!439437 (not (contains!3428 lt!312320 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672683 () Bool)

(declare-fun e!384219 () Bool)

(assert (=> b!672683 (= e!384219 e!384210)))

(declare-fun res!439450 () Bool)

(assert (=> b!672683 (=> (not res!439450) (not e!384210))))

(assert (=> b!672683 (= res!439450 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672684 () Bool)

(declare-fun e!384216 () Bool)

(assert (=> b!672684 (= e!384216 e!384213)))

(declare-fun res!439440 () Bool)

(assert (=> b!672684 (=> (not res!439440) (not e!384213))))

(assert (=> b!672684 (= res!439440 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!276 (List!12885 (_ BitVec 64)) List!12885)

(assert (=> b!672684 (= lt!312320 ($colon$colon!276 acc!681 (select (arr!18791 a!3626) from!3004)))))

(declare-fun b!672685 () Bool)

(declare-fun res!439431 () Bool)

(assert (=> b!672685 (=> (not res!439431) (not e!384217))))

(assert (=> b!672685 (= res!439431 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19155 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672686 () Bool)

(declare-fun res!439434 () Bool)

(assert (=> b!672686 (=> (not res!439434) (not e!384217))))

(assert (=> b!672686 (= res!439434 e!384220)))

(declare-fun res!439438 () Bool)

(assert (=> b!672686 (=> res!439438 e!384220)))

(assert (=> b!672686 (= res!439438 e!384215)))

(declare-fun res!439439 () Bool)

(assert (=> b!672686 (=> (not res!439439) (not e!384215))))

(assert (=> b!672686 (= res!439439 (bvsgt from!3004 i!1382))))

(declare-fun b!672687 () Bool)

(assert (=> b!672687 (= e!384213 false)))

(declare-fun lt!312318 () Bool)

(assert (=> b!672687 (= lt!312318 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312320))))

(declare-fun b!672688 () Bool)

(declare-fun res!439453 () Bool)

(assert (=> b!672688 (=> (not res!439453) (not e!384213))))

(assert (=> b!672688 (= res!439453 e!384219)))

(declare-fun res!439444 () Bool)

(assert (=> b!672688 (=> res!439444 e!384219)))

(assert (=> b!672688 (= res!439444 e!384212)))

(declare-fun res!439436 () Bool)

(assert (=> b!672688 (=> (not res!439436) (not e!384212))))

(assert (=> b!672688 (= res!439436 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!439435 () Bool)

(assert (=> start!60202 (=> (not res!439435) (not e!384217))))

(assert (=> start!60202 (= res!439435 (and (bvslt (size!19155 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19155 a!3626))))))

(assert (=> start!60202 e!384217))

(assert (=> start!60202 true))

(declare-fun array_inv!14565 (array!39205) Bool)

(assert (=> start!60202 (array_inv!14565 a!3626)))

(declare-fun b!672689 () Bool)

(declare-fun res!439448 () Bool)

(assert (=> b!672689 (=> (not res!439448) (not e!384213))))

(assert (=> b!672689 (= res!439448 (noDuplicate!675 lt!312320))))

(declare-fun b!672690 () Bool)

(assert (=> b!672690 (= e!384217 e!384216)))

(declare-fun res!439454 () Bool)

(assert (=> b!672690 (=> (not res!439454) (not e!384216))))

(assert (=> b!672690 (= res!439454 (not (= (select (arr!18791 a!3626) from!3004) k!2843)))))

(declare-fun lt!312321 () Unit!23628)

(assert (=> b!672690 (= lt!312321 e!384214)))

(declare-fun c!76985 () Bool)

(assert (=> b!672690 (= c!76985 (= (select (arr!18791 a!3626) from!3004) k!2843))))

(declare-fun b!672691 () Bool)

(declare-fun Unit!23631 () Unit!23628)

(assert (=> b!672691 (= e!384214 Unit!23631)))

(declare-fun b!672692 () Bool)

(declare-fun res!439446 () Bool)

(assert (=> b!672692 (=> (not res!439446) (not e!384217))))

(assert (=> b!672692 (= res!439446 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60202 res!439435) b!672676))

(assert (= (and b!672676 res!439447) b!672678))

(assert (= (and b!672678 res!439441) b!672670))

(assert (= (and b!672670 res!439432) b!672686))

(assert (= (and b!672686 res!439439) b!672679))

(assert (= (and b!672686 (not res!439438)) b!672675))

(assert (= (and b!672675 res!439452) b!672672))

(assert (= (and b!672686 res!439434) b!672680))

(assert (= (and b!672680 res!439443) b!672692))

(assert (= (and b!672692 res!439446) b!672671))

(assert (= (and b!672671 res!439442) b!672668))

(assert (= (and b!672668 res!439451) b!672681))

(assert (= (and b!672681 res!439433) b!672685))

(assert (= (and b!672685 res!439431) b!672673))

(assert (= (and b!672673 res!439449) b!672690))

(assert (= (and b!672690 c!76985) b!672674))

(assert (= (and b!672690 (not c!76985)) b!672691))

(assert (= (and b!672690 res!439454) b!672684))

(assert (= (and b!672684 res!439440) b!672689))

(assert (= (and b!672689 res!439448) b!672682))

(assert (= (and b!672682 res!439437) b!672669))

(assert (= (and b!672669 res!439445) b!672688))

(assert (= (and b!672688 res!439436) b!672667))

(assert (= (and b!672688 (not res!439444)) b!672683))

(assert (= (and b!672683 res!439450) b!672677))

(assert (= (and b!672688 res!439453) b!672687))

(declare-fun m!641473 () Bool)

(assert (=> b!672669 m!641473))

(declare-fun m!641475 () Bool)

(assert (=> b!672667 m!641475))

(declare-fun m!641477 () Bool)

(assert (=> b!672689 m!641477))

(declare-fun m!641479 () Bool)

(assert (=> b!672679 m!641479))

(declare-fun m!641481 () Bool)

(assert (=> b!672673 m!641481))

(assert (=> b!672673 m!641481))

(declare-fun m!641483 () Bool)

(assert (=> b!672673 m!641483))

(declare-fun m!641485 () Bool)

(assert (=> b!672668 m!641485))

(declare-fun m!641487 () Bool)

(assert (=> b!672680 m!641487))

(declare-fun m!641489 () Bool)

(assert (=> b!672687 m!641489))

(assert (=> b!672684 m!641481))

(assert (=> b!672684 m!641481))

(declare-fun m!641491 () Bool)

(assert (=> b!672684 m!641491))

(declare-fun m!641493 () Bool)

(assert (=> b!672674 m!641493))

(declare-fun m!641495 () Bool)

(assert (=> b!672674 m!641495))

(assert (=> b!672677 m!641475))

(assert (=> b!672672 m!641479))

(declare-fun m!641497 () Bool)

(assert (=> b!672682 m!641497))

(declare-fun m!641499 () Bool)

(assert (=> b!672681 m!641499))

(declare-fun m!641501 () Bool)

(assert (=> b!672678 m!641501))

(declare-fun m!641503 () Bool)

(assert (=> b!672670 m!641503))

(declare-fun m!641505 () Bool)

(assert (=> b!672676 m!641505))

(declare-fun m!641507 () Bool)

(assert (=> start!60202 m!641507))

(declare-fun m!641509 () Bool)

(assert (=> b!672692 m!641509))

(assert (=> b!672690 m!641481))

(push 1)

(assert (not b!672674))

(assert (not b!672667))

(assert (not b!672679))

(assert (not b!672678))

(assert (not b!672677))

(assert (not b!672687))

(assert (not b!672668))

