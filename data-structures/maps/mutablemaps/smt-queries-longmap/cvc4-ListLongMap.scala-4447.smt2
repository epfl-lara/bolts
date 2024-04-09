; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61804 () Bool)

(assert start!61804)

(declare-fun b!691513 () Bool)

(declare-fun res!456017 () Bool)

(declare-fun e!393499 () Bool)

(assert (=> b!691513 (=> (not res!456017) (not e!393499))))

(declare-datatypes ((array!39781 0))(
  ( (array!39782 (arr!19055 (Array (_ BitVec 32) (_ BitVec 64))) (size!19438 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39781)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!691513 (= res!456017 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!691515 () Bool)

(declare-fun e!393498 () Bool)

(declare-fun e!393497 () Bool)

(assert (=> b!691515 (= e!393498 e!393497)))

(declare-fun res!456015 () Bool)

(assert (=> b!691515 (=> (not res!456015) (not e!393497))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!691515 (= res!456015 (bvsle from!3004 i!1382))))

(declare-fun b!691516 () Bool)

(declare-fun res!456024 () Bool)

(assert (=> b!691516 (=> (not res!456024) (not e!393499))))

(declare-datatypes ((List!13149 0))(
  ( (Nil!13146) (Cons!13145 (h!14190 (_ BitVec 64)) (t!19424 List!13149)) )
))
(declare-fun acc!681 () List!13149)

(declare-fun contains!3692 (List!13149 (_ BitVec 64)) Bool)

(assert (=> b!691516 (= res!456024 (not (contains!3692 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691517 () Bool)

(declare-fun res!456021 () Bool)

(assert (=> b!691517 (=> (not res!456021) (not e!393499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!691517 (= res!456021 (validKeyInArray!0 (select (arr!19055 a!3626) from!3004)))))

(declare-fun b!691518 () Bool)

(declare-fun res!456028 () Bool)

(assert (=> b!691518 (=> (not res!456028) (not e!393499))))

(assert (=> b!691518 (= res!456028 (not (contains!3692 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!691519 () Bool)

(declare-fun e!393496 () Bool)

(assert (=> b!691519 (= e!393496 (contains!3692 acc!681 k!2843))))

(declare-fun b!691520 () Bool)

(assert (=> b!691520 (= e!393499 false)))

(declare-datatypes ((Unit!24390 0))(
  ( (Unit!24391) )
))
(declare-fun lt!316439 () Unit!24390)

(declare-fun e!393494 () Unit!24390)

(assert (=> b!691520 (= lt!316439 e!393494)))

(declare-fun c!78116 () Bool)

(assert (=> b!691520 (= c!78116 (= (select (arr!19055 a!3626) from!3004) k!2843))))

(declare-fun b!691521 () Bool)

(assert (=> b!691521 (= e!393497 (not (contains!3692 acc!681 k!2843)))))

(declare-fun b!691522 () Bool)

(declare-fun res!456019 () Bool)

(assert (=> b!691522 (=> (not res!456019) (not e!393499))))

(assert (=> b!691522 (= res!456019 e!393498)))

(declare-fun res!456027 () Bool)

(assert (=> b!691522 (=> res!456027 e!393498)))

(assert (=> b!691522 (= res!456027 e!393496)))

(declare-fun res!456020 () Bool)

(assert (=> b!691522 (=> (not res!456020) (not e!393496))))

(assert (=> b!691522 (= res!456020 (bvsgt from!3004 i!1382))))

(declare-fun b!691523 () Bool)

(declare-fun res!456026 () Bool)

(assert (=> b!691523 (=> (not res!456026) (not e!393499))))

(assert (=> b!691523 (= res!456026 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19438 a!3626))))))

(declare-fun res!456025 () Bool)

(assert (=> start!61804 (=> (not res!456025) (not e!393499))))

(assert (=> start!61804 (= res!456025 (and (bvslt (size!19438 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19438 a!3626))))))

(assert (=> start!61804 e!393499))

(assert (=> start!61804 true))

(declare-fun array_inv!14829 (array!39781) Bool)

(assert (=> start!61804 (array_inv!14829 a!3626)))

(declare-fun b!691514 () Bool)

(declare-fun Unit!24392 () Unit!24390)

(assert (=> b!691514 (= e!393494 Unit!24392)))

(declare-fun b!691524 () Bool)

(declare-fun res!456022 () Bool)

(assert (=> b!691524 (=> (not res!456022) (not e!393499))))

(declare-fun arrayNoDuplicates!0 (array!39781 (_ BitVec 32) List!13149) Bool)

(assert (=> b!691524 (= res!456022 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13146))))

(declare-fun b!691525 () Bool)

(declare-fun Unit!24393 () Unit!24390)

(assert (=> b!691525 (= e!393494 Unit!24393)))

(assert (=> b!691525 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316440 () Unit!24390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39781 (_ BitVec 64) (_ BitVec 32)) Unit!24390)

(assert (=> b!691525 (= lt!316440 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!691525 false))

(declare-fun b!691526 () Bool)

(declare-fun res!456016 () Bool)

(assert (=> b!691526 (=> (not res!456016) (not e!393499))))

(assert (=> b!691526 (= res!456016 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!691527 () Bool)

(declare-fun res!456023 () Bool)

(assert (=> b!691527 (=> (not res!456023) (not e!393499))))

(assert (=> b!691527 (= res!456023 (validKeyInArray!0 k!2843))))

(declare-fun b!691528 () Bool)

(declare-fun res!456018 () Bool)

(assert (=> b!691528 (=> (not res!456018) (not e!393499))))

(assert (=> b!691528 (= res!456018 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19438 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!691529 () Bool)

(declare-fun res!456029 () Bool)

(assert (=> b!691529 (=> (not res!456029) (not e!393499))))

(declare-fun noDuplicate!939 (List!13149) Bool)

(assert (=> b!691529 (= res!456029 (noDuplicate!939 acc!681))))

(assert (= (and start!61804 res!456025) b!691529))

(assert (= (and b!691529 res!456029) b!691516))

(assert (= (and b!691516 res!456024) b!691518))

(assert (= (and b!691518 res!456028) b!691522))

(assert (= (and b!691522 res!456020) b!691519))

(assert (= (and b!691522 (not res!456027)) b!691515))

(assert (= (and b!691515 res!456015) b!691521))

(assert (= (and b!691522 res!456019) b!691524))

(assert (= (and b!691524 res!456022) b!691526))

(assert (= (and b!691526 res!456016) b!691523))

(assert (= (and b!691523 res!456026) b!691527))

(assert (= (and b!691527 res!456023) b!691513))

(assert (= (and b!691513 res!456017) b!691528))

(assert (= (and b!691528 res!456018) b!691517))

(assert (= (and b!691517 res!456021) b!691520))

(assert (= (and b!691520 c!78116) b!691525))

(assert (= (and b!691520 (not c!78116)) b!691514))

(declare-fun m!654469 () Bool)

(assert (=> b!691519 m!654469))

(declare-fun m!654471 () Bool)

(assert (=> b!691518 m!654471))

(assert (=> b!691521 m!654469))

(declare-fun m!654473 () Bool)

(assert (=> b!691520 m!654473))

(declare-fun m!654475 () Bool)

(assert (=> b!691525 m!654475))

(declare-fun m!654477 () Bool)

(assert (=> b!691525 m!654477))

(declare-fun m!654479 () Bool)

(assert (=> start!61804 m!654479))

(declare-fun m!654481 () Bool)

(assert (=> b!691527 m!654481))

(assert (=> b!691517 m!654473))

(assert (=> b!691517 m!654473))

(declare-fun m!654483 () Bool)

(assert (=> b!691517 m!654483))

(declare-fun m!654485 () Bool)

(assert (=> b!691513 m!654485))

(declare-fun m!654487 () Bool)

(assert (=> b!691529 m!654487))

(declare-fun m!654489 () Bool)

(assert (=> b!691524 m!654489))

(declare-fun m!654491 () Bool)

(assert (=> b!691516 m!654491))

(declare-fun m!654493 () Bool)

(assert (=> b!691526 m!654493))

(push 1)

(assert (not b!691513))

(assert (not b!691524))

(assert (not b!691526))

(assert (not b!691521))

(assert (not b!691527))

(assert (not b!691518))

(assert (not start!61804))

(assert (not b!691529))

(assert (not b!691516))

(assert (not b!691519))

(assert (not b!691517))

(assert (not b!691525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

