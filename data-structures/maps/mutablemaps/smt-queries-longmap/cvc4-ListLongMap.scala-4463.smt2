; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62146 () Bool)

(assert start!62146)

(declare-fun b!695415 () Bool)

(declare-fun e!395521 () Bool)

(declare-datatypes ((List!13197 0))(
  ( (Nil!13194) (Cons!13193 (h!14238 (_ BitVec 64)) (t!19487 List!13197)) )
))
(declare-fun acc!681 () List!13197)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3740 (List!13197 (_ BitVec 64)) Bool)

(assert (=> b!695415 (= e!395521 (not (contains!3740 acc!681 k!2843)))))

(declare-fun b!695416 () Bool)

(declare-fun res!459545 () Bool)

(declare-fun e!395518 () Bool)

(assert (=> b!695416 (=> (not res!459545) (not e!395518))))

(assert (=> b!695416 (= res!459545 (not (contains!3740 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!459541 () Bool)

(assert (=> start!62146 (=> (not res!459541) (not e!395518))))

(declare-datatypes ((array!39892 0))(
  ( (array!39893 (arr!19103 (Array (_ BitVec 32) (_ BitVec 64))) (size!19486 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39892)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62146 (= res!459541 (and (bvslt (size!19486 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19486 a!3626))))))

(assert (=> start!62146 e!395518))

(assert (=> start!62146 true))

(declare-fun array_inv!14877 (array!39892) Bool)

(assert (=> start!62146 (array_inv!14877 a!3626)))

(declare-fun b!695417 () Bool)

(declare-fun res!459539 () Bool)

(assert (=> b!695417 (=> (not res!459539) (not e!395518))))

(declare-fun e!395517 () Bool)

(assert (=> b!695417 (= res!459539 e!395517)))

(declare-fun res!459543 () Bool)

(assert (=> b!695417 (=> res!459543 e!395517)))

(declare-fun e!395519 () Bool)

(assert (=> b!695417 (= res!459543 e!395519)))

(declare-fun res!459540 () Bool)

(assert (=> b!695417 (=> (not res!459540) (not e!395519))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695417 (= res!459540 (bvsgt from!3004 i!1382))))

(declare-fun b!695418 () Bool)

(assert (=> b!695418 (= e!395519 (contains!3740 acc!681 k!2843))))

(declare-fun b!695419 () Bool)

(assert (=> b!695419 (= e!395518 false)))

(declare-fun lt!317007 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39892 (_ BitVec 32) List!13197) Bool)

(assert (=> b!695419 (= lt!317007 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695420 () Bool)

(declare-fun res!459542 () Bool)

(assert (=> b!695420 (=> (not res!459542) (not e!395518))))

(assert (=> b!695420 (= res!459542 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13194))))

(declare-fun b!695421 () Bool)

(declare-fun res!459538 () Bool)

(assert (=> b!695421 (=> (not res!459538) (not e!395518))))

(assert (=> b!695421 (= res!459538 (not (contains!3740 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695422 () Bool)

(declare-fun res!459544 () Bool)

(assert (=> b!695422 (=> (not res!459544) (not e!395518))))

(declare-fun noDuplicate!987 (List!13197) Bool)

(assert (=> b!695422 (= res!459544 (noDuplicate!987 acc!681))))

(declare-fun b!695423 () Bool)

(assert (=> b!695423 (= e!395517 e!395521)))

(declare-fun res!459537 () Bool)

(assert (=> b!695423 (=> (not res!459537) (not e!395521))))

(assert (=> b!695423 (= res!459537 (bvsle from!3004 i!1382))))

(assert (= (and start!62146 res!459541) b!695422))

(assert (= (and b!695422 res!459544) b!695416))

(assert (= (and b!695416 res!459545) b!695421))

(assert (= (and b!695421 res!459538) b!695417))

(assert (= (and b!695417 res!459540) b!695418))

(assert (= (and b!695417 (not res!459543)) b!695423))

(assert (= (and b!695423 res!459537) b!695415))

(assert (= (and b!695417 res!459539) b!695420))

(assert (= (and b!695420 res!459542) b!695419))

(declare-fun m!656899 () Bool)

(assert (=> b!695416 m!656899))

(declare-fun m!656901 () Bool)

(assert (=> start!62146 m!656901))

(declare-fun m!656903 () Bool)

(assert (=> b!695419 m!656903))

(declare-fun m!656905 () Bool)

(assert (=> b!695415 m!656905))

(declare-fun m!656907 () Bool)

(assert (=> b!695420 m!656907))

(declare-fun m!656909 () Bool)

(assert (=> b!695421 m!656909))

(assert (=> b!695418 m!656905))

(declare-fun m!656911 () Bool)

(assert (=> b!695422 m!656911))

(push 1)

(assert (not b!695420))

(assert (not b!695418))

(assert (not start!62146))

(assert (not b!695422))

(assert (not b!695419))

(assert (not b!695415))

(assert (not b!695421))

(assert (not b!695416))

(check-sat)

(pop 1)

