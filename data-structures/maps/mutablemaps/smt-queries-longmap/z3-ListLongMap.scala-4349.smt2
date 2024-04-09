; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60140 () Bool)

(assert start!60140)

(declare-fun b!670677 () Bool)

(declare-fun e!383427 () Bool)

(assert (=> b!670677 (= e!383427 false)))

(declare-fun lt!312102 () Bool)

(declare-datatypes ((array!39143 0))(
  ( (array!39144 (arr!18760 (Array (_ BitVec 32) (_ BitVec 64))) (size!19124 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39143)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12854 0))(
  ( (Nil!12851) (Cons!12850 (h!13895 (_ BitVec 64)) (t!19090 List!12854)) )
))
(declare-fun acc!681 () List!12854)

(declare-fun arrayNoDuplicates!0 (array!39143 (_ BitVec 32) List!12854) Bool)

(assert (=> b!670677 (= lt!312102 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670678 () Bool)

(declare-fun res!437549 () Bool)

(assert (=> b!670678 (=> (not res!437549) (not e!383427))))

(declare-fun e!383431 () Bool)

(assert (=> b!670678 (= res!437549 e!383431)))

(declare-fun res!437548 () Bool)

(assert (=> b!670678 (=> res!437548 e!383431)))

(declare-fun e!383428 () Bool)

(assert (=> b!670678 (= res!437548 e!383428)))

(declare-fun res!437554 () Bool)

(assert (=> b!670678 (=> (not res!437554) (not e!383428))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670678 (= res!437554 (bvsgt from!3004 i!1382))))

(declare-fun b!670679 () Bool)

(declare-fun res!437550 () Bool)

(assert (=> b!670679 (=> (not res!437550) (not e!383427))))

(declare-fun noDuplicate!644 (List!12854) Bool)

(assert (=> b!670679 (= res!437550 (noDuplicate!644 acc!681))))

(declare-fun b!670680 () Bool)

(declare-fun res!437552 () Bool)

(assert (=> b!670680 (=> (not res!437552) (not e!383427))))

(assert (=> b!670680 (= res!437552 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12851))))

(declare-fun b!670681 () Bool)

(declare-fun e!383430 () Bool)

(assert (=> b!670681 (= e!383431 e!383430)))

(declare-fun res!437555 () Bool)

(assert (=> b!670681 (=> (not res!437555) (not e!383430))))

(assert (=> b!670681 (= res!437555 (bvsle from!3004 i!1382))))

(declare-fun b!670682 () Bool)

(declare-fun res!437553 () Bool)

(assert (=> b!670682 (=> (not res!437553) (not e!383427))))

(declare-fun contains!3397 (List!12854 (_ BitVec 64)) Bool)

(assert (=> b!670682 (= res!437553 (not (contains!3397 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!437551 () Bool)

(assert (=> start!60140 (=> (not res!437551) (not e!383427))))

(assert (=> start!60140 (= res!437551 (and (bvslt (size!19124 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19124 a!3626))))))

(assert (=> start!60140 e!383427))

(assert (=> start!60140 true))

(declare-fun array_inv!14534 (array!39143) Bool)

(assert (=> start!60140 (array_inv!14534 a!3626)))

(declare-fun b!670683 () Bool)

(declare-fun res!437547 () Bool)

(assert (=> b!670683 (=> (not res!437547) (not e!383427))))

(assert (=> b!670683 (= res!437547 (not (contains!3397 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670684 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!670684 (= e!383428 (contains!3397 acc!681 k0!2843))))

(declare-fun b!670685 () Bool)

(assert (=> b!670685 (= e!383430 (not (contains!3397 acc!681 k0!2843)))))

(assert (= (and start!60140 res!437551) b!670679))

(assert (= (and b!670679 res!437550) b!670682))

(assert (= (and b!670682 res!437553) b!670683))

(assert (= (and b!670683 res!437547) b!670678))

(assert (= (and b!670678 res!437554) b!670684))

(assert (= (and b!670678 (not res!437548)) b!670681))

(assert (= (and b!670681 res!437555) b!670685))

(assert (= (and b!670678 res!437549) b!670680))

(assert (= (and b!670680 res!437552) b!670677))

(declare-fun m!640511 () Bool)

(assert (=> b!670682 m!640511))

(declare-fun m!640513 () Bool)

(assert (=> b!670680 m!640513))

(declare-fun m!640515 () Bool)

(assert (=> b!670683 m!640515))

(declare-fun m!640517 () Bool)

(assert (=> b!670684 m!640517))

(assert (=> b!670685 m!640517))

(declare-fun m!640519 () Bool)

(assert (=> start!60140 m!640519))

(declare-fun m!640521 () Bool)

(assert (=> b!670677 m!640521))

(declare-fun m!640523 () Bool)

(assert (=> b!670679 m!640523))

(check-sat (not b!670685) (not b!670684) (not b!670683) (not b!670679) (not b!670680) (not b!670682) (not start!60140) (not b!670677))
(check-sat)
