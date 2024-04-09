; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62560 () Bool)

(assert start!62560)

(declare-fun b!704679 () Bool)

(declare-fun res!468669 () Bool)

(declare-fun e!397659 () Bool)

(assert (=> b!704679 (=> (not res!468669) (not e!397659))))

(declare-datatypes ((List!13344 0))(
  ( (Nil!13341) (Cons!13340 (h!14385 (_ BitVec 64)) (t!19634 List!13344)) )
))
(declare-fun acc!652 () List!13344)

(declare-fun newAcc!49 () List!13344)

(declare-fun subseq!331 (List!13344 List!13344) Bool)

(assert (=> b!704679 (= res!468669 (subseq!331 acc!652 newAcc!49))))

(declare-fun res!468670 () Bool)

(assert (=> start!62560 (=> (not res!468670) (not e!397659))))

(declare-datatypes ((array!40195 0))(
  ( (array!40196 (arr!19250 (Array (_ BitVec 32) (_ BitVec 64))) (size!19633 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40195)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62560 (= res!468670 (and (bvslt (size!19633 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19633 a!3591))))))

(assert (=> start!62560 e!397659))

(assert (=> start!62560 true))

(declare-fun array_inv!15024 (array!40195) Bool)

(assert (=> start!62560 (array_inv!15024 a!3591)))

(declare-fun b!704680 () Bool)

(assert (=> b!704680 (= e!397659 false)))

(declare-fun lt!317811 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40195 (_ BitVec 32) List!13344) Bool)

(assert (=> b!704680 (= lt!317811 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704681 () Bool)

(declare-fun res!468666 () Bool)

(assert (=> b!704681 (=> (not res!468666) (not e!397659))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3887 (List!13344 (_ BitVec 64)) Bool)

(assert (=> b!704681 (= res!468666 (not (contains!3887 acc!652 k!2824)))))

(declare-fun b!704682 () Bool)

(declare-fun res!468668 () Bool)

(assert (=> b!704682 (=> (not res!468668) (not e!397659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704682 (= res!468668 (not (validKeyInArray!0 (select (arr!19250 a!3591) from!2969))))))

(declare-fun b!704683 () Bool)

(declare-fun res!468679 () Bool)

(assert (=> b!704683 (=> (not res!468679) (not e!397659))))

(assert (=> b!704683 (= res!468679 (not (contains!3887 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704684 () Bool)

(declare-fun res!468677 () Bool)

(assert (=> b!704684 (=> (not res!468677) (not e!397659))))

(assert (=> b!704684 (= res!468677 (not (contains!3887 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704685 () Bool)

(declare-fun res!468676 () Bool)

(assert (=> b!704685 (=> (not res!468676) (not e!397659))))

(assert (=> b!704685 (= res!468676 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704686 () Bool)

(declare-fun res!468671 () Bool)

(assert (=> b!704686 (=> (not res!468671) (not e!397659))))

(declare-fun -!296 (List!13344 (_ BitVec 64)) List!13344)

(assert (=> b!704686 (= res!468671 (= (-!296 newAcc!49 k!2824) acc!652))))

(declare-fun b!704687 () Bool)

(declare-fun res!468672 () Bool)

(assert (=> b!704687 (=> (not res!468672) (not e!397659))))

(declare-fun arrayContainsKey!0 (array!40195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704687 (= res!468672 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704688 () Bool)

(declare-fun res!468663 () Bool)

(assert (=> b!704688 (=> (not res!468663) (not e!397659))))

(assert (=> b!704688 (= res!468663 (contains!3887 newAcc!49 k!2824))))

(declare-fun b!704689 () Bool)

(declare-fun res!468673 () Bool)

(assert (=> b!704689 (=> (not res!468673) (not e!397659))))

(assert (=> b!704689 (= res!468673 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704690 () Bool)

(declare-fun res!468665 () Bool)

(assert (=> b!704690 (=> (not res!468665) (not e!397659))))

(declare-fun noDuplicate!1134 (List!13344) Bool)

(assert (=> b!704690 (= res!468665 (noDuplicate!1134 acc!652))))

(declare-fun b!704691 () Bool)

(declare-fun res!468675 () Bool)

(assert (=> b!704691 (=> (not res!468675) (not e!397659))))

(assert (=> b!704691 (= res!468675 (noDuplicate!1134 newAcc!49))))

(declare-fun b!704692 () Bool)

(declare-fun res!468680 () Bool)

(assert (=> b!704692 (=> (not res!468680) (not e!397659))))

(assert (=> b!704692 (= res!468680 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19633 a!3591)))))

(declare-fun b!704693 () Bool)

(declare-fun res!468678 () Bool)

(assert (=> b!704693 (=> (not res!468678) (not e!397659))))

(assert (=> b!704693 (= res!468678 (not (contains!3887 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704694 () Bool)

(declare-fun res!468674 () Bool)

(assert (=> b!704694 (=> (not res!468674) (not e!397659))))

(assert (=> b!704694 (= res!468674 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704695 () Bool)

(declare-fun res!468667 () Bool)

(assert (=> b!704695 (=> (not res!468667) (not e!397659))))

(assert (=> b!704695 (= res!468667 (validKeyInArray!0 k!2824))))

(declare-fun b!704696 () Bool)

(declare-fun res!468664 () Bool)

(assert (=> b!704696 (=> (not res!468664) (not e!397659))))

(assert (=> b!704696 (= res!468664 (not (contains!3887 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62560 res!468670) b!704690))

(assert (= (and b!704690 res!468665) b!704691))

(assert (= (and b!704691 res!468675) b!704684))

(assert (= (and b!704684 res!468677) b!704683))

(assert (= (and b!704683 res!468679) b!704694))

(assert (= (and b!704694 res!468674) b!704681))

(assert (= (and b!704681 res!468666) b!704695))

(assert (= (and b!704695 res!468667) b!704689))

(assert (= (and b!704689 res!468673) b!704679))

(assert (= (and b!704679 res!468669) b!704688))

(assert (= (and b!704688 res!468663) b!704686))

(assert (= (and b!704686 res!468671) b!704693))

(assert (= (and b!704693 res!468678) b!704696))

(assert (= (and b!704696 res!468664) b!704692))

(assert (= (and b!704692 res!468680) b!704682))

(assert (= (and b!704682 res!468668) b!704685))

(assert (= (and b!704685 res!468676) b!704687))

(assert (= (and b!704687 res!468672) b!704680))

(declare-fun m!663111 () Bool)

(assert (=> b!704686 m!663111))

(declare-fun m!663113 () Bool)

(assert (=> b!704688 m!663113))

(declare-fun m!663115 () Bool)

(assert (=> b!704687 m!663115))

(declare-fun m!663117 () Bool)

(assert (=> b!704693 m!663117))

(declare-fun m!663119 () Bool)

(assert (=> b!704694 m!663119))

(declare-fun m!663121 () Bool)

(assert (=> b!704682 m!663121))

(assert (=> b!704682 m!663121))

(declare-fun m!663123 () Bool)

(assert (=> b!704682 m!663123))

(declare-fun m!663125 () Bool)

(assert (=> b!704695 m!663125))

(declare-fun m!663127 () Bool)

(assert (=> b!704680 m!663127))

(declare-fun m!663129 () Bool)

(assert (=> b!704690 m!663129))

(declare-fun m!663131 () Bool)

(assert (=> b!704691 m!663131))

(declare-fun m!663133 () Bool)

(assert (=> b!704689 m!663133))

(declare-fun m!663135 () Bool)

(assert (=> b!704684 m!663135))

(declare-fun m!663137 () Bool)

(assert (=> b!704679 m!663137))

(declare-fun m!663139 () Bool)

(assert (=> start!62560 m!663139))

(declare-fun m!663141 () Bool)

(assert (=> b!704696 m!663141))

(declare-fun m!663143 () Bool)

(assert (=> b!704681 m!663143))

(declare-fun m!663145 () Bool)

(assert (=> b!704683 m!663145))

(push 1)

(assert (not b!704681))

(assert (not b!704694))

(assert (not b!704687))

(assert (not b!704680))

(assert (not b!704682))

(assert (not b!704684))

(assert (not b!704679))

(assert (not b!704686))

(assert (not b!704688))

(assert (not start!62560))

(assert (not b!704690))

(assert (not b!704693))

(assert (not b!704696))

(assert (not b!704683))

(assert (not b!704691))

(assert (not b!704689))

(assert (not b!704695))

(check-sat)

(pop 1)

