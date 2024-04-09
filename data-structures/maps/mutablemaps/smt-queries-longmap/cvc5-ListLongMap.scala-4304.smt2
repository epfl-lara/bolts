; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59868 () Bool)

(assert start!59868)

(declare-fun b!661417 () Bool)

(declare-fun res!429668 () Bool)

(declare-fun e!379895 () Bool)

(assert (=> b!661417 (=> (not res!429668) (not e!379895))))

(declare-datatypes ((array!38871 0))(
  ( (array!38872 (arr!18624 (Array (_ BitVec 32) (_ BitVec 64))) (size!18988 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38871)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12718 0))(
  ( (Nil!12715) (Cons!12714 (h!13759 (_ BitVec 64)) (t!18954 List!12718)) )
))
(declare-fun acc!681 () List!12718)

(declare-fun arrayNoDuplicates!0 (array!38871 (_ BitVec 32) List!12718) Bool)

(assert (=> b!661417 (= res!429668 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661418 () Bool)

(assert (=> b!661418 (= e!379895 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661418 (arrayContainsKey!0 (array!38872 (store (arr!18624 a!3626) i!1382 k!2843) (size!18988 a!3626)) k!2843 from!3004)))

(declare-fun b!661419 () Bool)

(declare-fun res!429662 () Bool)

(assert (=> b!661419 (=> (not res!429662) (not e!379895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661419 (= res!429662 (validKeyInArray!0 k!2843))))

(declare-fun b!661420 () Bool)

(declare-fun e!379893 () Bool)

(declare-fun contains!3261 (List!12718 (_ BitVec 64)) Bool)

(assert (=> b!661420 (= e!379893 (not (contains!3261 acc!681 k!2843)))))

(declare-fun b!661421 () Bool)

(declare-fun res!429655 () Bool)

(assert (=> b!661421 (=> (not res!429655) (not e!379895))))

(assert (=> b!661421 (= res!429655 (not (contains!3261 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!429661 () Bool)

(assert (=> start!59868 (=> (not res!429661) (not e!379895))))

(assert (=> start!59868 (= res!429661 (and (bvslt (size!18988 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18988 a!3626))))))

(assert (=> start!59868 e!379895))

(assert (=> start!59868 true))

(declare-fun array_inv!14398 (array!38871) Bool)

(assert (=> start!59868 (array_inv!14398 a!3626)))

(declare-fun b!661422 () Bool)

(declare-fun res!429657 () Bool)

(assert (=> b!661422 (=> (not res!429657) (not e!379895))))

(assert (=> b!661422 (= res!429657 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12715))))

(declare-fun b!661423 () Bool)

(declare-fun res!429667 () Bool)

(assert (=> b!661423 (=> (not res!429667) (not e!379895))))

(assert (=> b!661423 (= res!429667 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18988 a!3626))))))

(declare-fun b!661424 () Bool)

(declare-fun res!429659 () Bool)

(assert (=> b!661424 (=> (not res!429659) (not e!379895))))

(assert (=> b!661424 (= res!429659 (not (contains!3261 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661425 () Bool)

(declare-fun res!429660 () Bool)

(assert (=> b!661425 (=> (not res!429660) (not e!379895))))

(declare-fun noDuplicate!508 (List!12718) Bool)

(assert (=> b!661425 (= res!429660 (noDuplicate!508 acc!681))))

(declare-fun b!661426 () Bool)

(declare-fun res!429656 () Bool)

(assert (=> b!661426 (=> (not res!429656) (not e!379895))))

(declare-fun e!379897 () Bool)

(assert (=> b!661426 (= res!429656 e!379897)))

(declare-fun res!429666 () Bool)

(assert (=> b!661426 (=> res!429666 e!379897)))

(declare-fun e!379894 () Bool)

(assert (=> b!661426 (= res!429666 e!379894)))

(declare-fun res!429658 () Bool)

(assert (=> b!661426 (=> (not res!429658) (not e!379894))))

(assert (=> b!661426 (= res!429658 (bvsgt from!3004 i!1382))))

(declare-fun b!661427 () Bool)

(assert (=> b!661427 (= e!379894 (contains!3261 acc!681 k!2843))))

(declare-fun b!661428 () Bool)

(assert (=> b!661428 (= e!379897 e!379893)))

(declare-fun res!429665 () Bool)

(assert (=> b!661428 (=> (not res!429665) (not e!379893))))

(assert (=> b!661428 (= res!429665 (bvsle from!3004 i!1382))))

(declare-fun b!661429 () Bool)

(declare-fun res!429663 () Bool)

(assert (=> b!661429 (=> (not res!429663) (not e!379895))))

(assert (=> b!661429 (= res!429663 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18988 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!661430 () Bool)

(declare-fun res!429664 () Bool)

(assert (=> b!661430 (=> (not res!429664) (not e!379895))))

(assert (=> b!661430 (= res!429664 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!59868 res!429661) b!661425))

(assert (= (and b!661425 res!429660) b!661424))

(assert (= (and b!661424 res!429659) b!661421))

(assert (= (and b!661421 res!429655) b!661426))

(assert (= (and b!661426 res!429658) b!661427))

(assert (= (and b!661426 (not res!429666)) b!661428))

(assert (= (and b!661428 res!429665) b!661420))

(assert (= (and b!661426 res!429656) b!661422))

(assert (= (and b!661422 res!429657) b!661417))

(assert (= (and b!661417 res!429668) b!661423))

(assert (= (and b!661423 res!429667) b!661419))

(assert (= (and b!661419 res!429662) b!661430))

(assert (= (and b!661430 res!429664) b!661429))

(assert (= (and b!661429 res!429663) b!661418))

(declare-fun m!633585 () Bool)

(assert (=> b!661419 m!633585))

(declare-fun m!633587 () Bool)

(assert (=> b!661417 m!633587))

(declare-fun m!633589 () Bool)

(assert (=> b!661424 m!633589))

(declare-fun m!633591 () Bool)

(assert (=> b!661430 m!633591))

(declare-fun m!633593 () Bool)

(assert (=> b!661420 m!633593))

(declare-fun m!633595 () Bool)

(assert (=> b!661422 m!633595))

(assert (=> b!661427 m!633593))

(declare-fun m!633597 () Bool)

(assert (=> b!661421 m!633597))

(declare-fun m!633599 () Bool)

(assert (=> b!661425 m!633599))

(declare-fun m!633601 () Bool)

(assert (=> start!59868 m!633601))

(declare-fun m!633603 () Bool)

(assert (=> b!661418 m!633603))

(declare-fun m!633605 () Bool)

(assert (=> b!661418 m!633605))

(push 1)

(assert (not b!661420))

(assert (not b!661418))

(assert (not start!59868))

(assert (not b!661417))

(assert (not b!661419))

(assert (not b!661430))

(assert (not b!661427))

(assert (not b!661421))

(assert (not b!661424))

(assert (not b!661422))

(assert (not b!661425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

