; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59824 () Bool)

(assert start!59824)

(declare-fun b!660543 () Bool)

(declare-fun e!379565 () Bool)

(assert (=> b!660543 (= e!379565 false)))

(declare-datatypes ((array!38827 0))(
  ( (array!38828 (arr!18602 (Array (_ BitVec 32) (_ BitVec 64))) (size!18966 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38827)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!308748 () Bool)

(declare-datatypes ((List!12696 0))(
  ( (Nil!12693) (Cons!12692 (h!13737 (_ BitVec 64)) (t!18932 List!12696)) )
))
(declare-fun acc!681 () List!12696)

(declare-fun arrayNoDuplicates!0 (array!38827 (_ BitVec 32) List!12696) Bool)

(assert (=> b!660543 (= lt!308748 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660544 () Bool)

(declare-fun res!428784 () Bool)

(assert (=> b!660544 (=> (not res!428784) (not e!379565))))

(declare-fun contains!3239 (List!12696 (_ BitVec 64)) Bool)

(assert (=> b!660544 (= res!428784 (not (contains!3239 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660545 () Bool)

(declare-fun e!379567 () Bool)

(declare-fun e!379564 () Bool)

(assert (=> b!660545 (= e!379567 e!379564)))

(declare-fun res!428787 () Bool)

(assert (=> b!660545 (=> (not res!428787) (not e!379564))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660545 (= res!428787 (bvsle from!3004 i!1382))))

(declare-fun b!660546 () Bool)

(declare-fun res!428783 () Bool)

(assert (=> b!660546 (=> (not res!428783) (not e!379565))))

(assert (=> b!660546 (= res!428783 e!379567)))

(declare-fun res!428782 () Bool)

(assert (=> b!660546 (=> res!428782 e!379567)))

(declare-fun e!379566 () Bool)

(assert (=> b!660546 (= res!428782 e!379566)))

(declare-fun res!428785 () Bool)

(assert (=> b!660546 (=> (not res!428785) (not e!379566))))

(assert (=> b!660546 (= res!428785 (bvsgt from!3004 i!1382))))

(declare-fun b!660547 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660547 (= e!379564 (not (contains!3239 acc!681 k!2843)))))

(declare-fun b!660549 () Bool)

(declare-fun res!428786 () Bool)

(assert (=> b!660549 (=> (not res!428786) (not e!379565))))

(assert (=> b!660549 (= res!428786 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12693))))

(declare-fun b!660550 () Bool)

(declare-fun res!428789 () Bool)

(assert (=> b!660550 (=> (not res!428789) (not e!379565))))

(declare-fun noDuplicate!486 (List!12696) Bool)

(assert (=> b!660550 (= res!428789 (noDuplicate!486 acc!681))))

(declare-fun b!660551 () Bool)

(assert (=> b!660551 (= e!379566 (contains!3239 acc!681 k!2843))))

(declare-fun res!428788 () Bool)

(assert (=> start!59824 (=> (not res!428788) (not e!379565))))

(assert (=> start!59824 (= res!428788 (and (bvslt (size!18966 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18966 a!3626))))))

(assert (=> start!59824 e!379565))

(assert (=> start!59824 true))

(declare-fun array_inv!14376 (array!38827) Bool)

(assert (=> start!59824 (array_inv!14376 a!3626)))

(declare-fun b!660548 () Bool)

(declare-fun res!428781 () Bool)

(assert (=> b!660548 (=> (not res!428781) (not e!379565))))

(assert (=> b!660548 (= res!428781 (not (contains!3239 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59824 res!428788) b!660550))

(assert (= (and b!660550 res!428789) b!660544))

(assert (= (and b!660544 res!428784) b!660548))

(assert (= (and b!660548 res!428781) b!660546))

(assert (= (and b!660546 res!428785) b!660551))

(assert (= (and b!660546 (not res!428782)) b!660545))

(assert (= (and b!660545 res!428787) b!660547))

(assert (= (and b!660546 res!428783) b!660549))

(assert (= (and b!660549 res!428786) b!660543))

(declare-fun m!633133 () Bool)

(assert (=> start!59824 m!633133))

(declare-fun m!633135 () Bool)

(assert (=> b!660543 m!633135))

(declare-fun m!633137 () Bool)

(assert (=> b!660544 m!633137))

(declare-fun m!633139 () Bool)

(assert (=> b!660551 m!633139))

(declare-fun m!633141 () Bool)

(assert (=> b!660550 m!633141))

(assert (=> b!660547 m!633139))

(declare-fun m!633143 () Bool)

(assert (=> b!660548 m!633143))

(declare-fun m!633145 () Bool)

(assert (=> b!660549 m!633145))

(push 1)

(assert (not b!660551))

(assert (not b!660543))

(assert (not start!59824))

(assert (not b!660547))

(assert (not b!660549))

(assert (not b!660550))

(assert (not b!660544))

(assert (not b!660548))

(check-sat)

(pop 1)

