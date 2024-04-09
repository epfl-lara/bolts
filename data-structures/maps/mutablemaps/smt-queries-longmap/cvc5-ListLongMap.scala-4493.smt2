; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62442 () Bool)

(assert start!62442)

(declare-fun b!700667 () Bool)

(declare-fun res!464673 () Bool)

(declare-fun e!397228 () Bool)

(assert (=> b!700667 (=> (not res!464673) (not e!397228))))

(declare-datatypes ((List!13285 0))(
  ( (Nil!13282) (Cons!13281 (h!14326 (_ BitVec 64)) (t!19575 List!13285)) )
))
(declare-fun acc!652 () List!13285)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3828 (List!13285 (_ BitVec 64)) Bool)

(assert (=> b!700667 (= res!464673 (not (contains!3828 acc!652 k!2824)))))

(declare-fun b!700668 () Bool)

(declare-fun res!464668 () Bool)

(declare-fun e!397227 () Bool)

(assert (=> b!700668 (=> (not res!464668) (not e!397227))))

(declare-fun lt!317477 () List!13285)

(assert (=> b!700668 (= res!464668 (not (contains!3828 lt!317477 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!464666 () Bool)

(assert (=> start!62442 (=> (not res!464666) (not e!397228))))

(declare-datatypes ((array!40077 0))(
  ( (array!40078 (arr!19191 (Array (_ BitVec 32) (_ BitVec 64))) (size!19574 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40077)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62442 (= res!464666 (and (bvslt (size!19574 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19574 a!3591))))))

(assert (=> start!62442 e!397228))

(assert (=> start!62442 true))

(declare-fun array_inv!14965 (array!40077) Bool)

(assert (=> start!62442 (array_inv!14965 a!3591)))

(declare-fun b!700669 () Bool)

(declare-fun res!464663 () Bool)

(assert (=> b!700669 (=> (not res!464663) (not e!397228))))

(assert (=> b!700669 (= res!464663 (not (contains!3828 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700670 () Bool)

(declare-fun res!464670 () Bool)

(assert (=> b!700670 (=> (not res!464670) (not e!397227))))

(declare-fun lt!317476 () List!13285)

(declare-fun -!237 (List!13285 (_ BitVec 64)) List!13285)

(assert (=> b!700670 (= res!464670 (= (-!237 lt!317476 k!2824) lt!317477))))

(declare-fun b!700671 () Bool)

(declare-fun res!464675 () Bool)

(assert (=> b!700671 (=> (not res!464675) (not e!397228))))

(declare-fun newAcc!49 () List!13285)

(assert (=> b!700671 (= res!464675 (not (contains!3828 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700672 () Bool)

(declare-fun res!464658 () Bool)

(assert (=> b!700672 (=> (not res!464658) (not e!397227))))

(declare-fun noDuplicate!1075 (List!13285) Bool)

(assert (=> b!700672 (= res!464658 (noDuplicate!1075 lt!317476))))

(declare-fun b!700673 () Bool)

(declare-fun res!464652 () Bool)

(assert (=> b!700673 (=> (not res!464652) (not e!397228))))

(assert (=> b!700673 (= res!464652 (contains!3828 newAcc!49 k!2824))))

(declare-fun b!700674 () Bool)

(declare-fun res!464662 () Bool)

(assert (=> b!700674 (=> (not res!464662) (not e!397228))))

(declare-fun arrayContainsKey!0 (array!40077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!700674 (= res!464662 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!700675 () Bool)

(declare-fun res!464678 () Bool)

(assert (=> b!700675 (=> (not res!464678) (not e!397228))))

(assert (=> b!700675 (= res!464678 (noDuplicate!1075 newAcc!49))))

(declare-fun b!700676 () Bool)

(declare-fun res!464654 () Bool)

(assert (=> b!700676 (=> (not res!464654) (not e!397228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!700676 (= res!464654 (validKeyInArray!0 k!2824))))

(declare-fun b!700677 () Bool)

(declare-fun res!464661 () Bool)

(assert (=> b!700677 (=> (not res!464661) (not e!397228))))

(assert (=> b!700677 (= res!464661 (validKeyInArray!0 (select (arr!19191 a!3591) from!2969)))))

(declare-fun b!700678 () Bool)

(declare-fun res!464656 () Bool)

(assert (=> b!700678 (=> (not res!464656) (not e!397228))))

(declare-fun arrayNoDuplicates!0 (array!40077 (_ BitVec 32) List!13285) Bool)

(assert (=> b!700678 (= res!464656 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!700679 () Bool)

(assert (=> b!700679 (= e!397227 false)))

(declare-fun lt!317478 () Bool)

(assert (=> b!700679 (= lt!317478 (contains!3828 lt!317476 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!700680 () Bool)

(declare-fun res!464657 () Bool)

(assert (=> b!700680 (=> (not res!464657) (not e!397227))))

(assert (=> b!700680 (= res!464657 (not (contains!3828 lt!317476 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700681 () Bool)

(declare-fun res!464669 () Bool)

(assert (=> b!700681 (=> (not res!464669) (not e!397228))))

(assert (=> b!700681 (= res!464669 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19574 a!3591)))))

(declare-fun b!700682 () Bool)

(declare-fun res!464665 () Bool)

(assert (=> b!700682 (=> (not res!464665) (not e!397227))))

(assert (=> b!700682 (= res!464665 (not (contains!3828 lt!317477 k!2824)))))

(declare-fun b!700683 () Bool)

(declare-fun res!464672 () Bool)

(assert (=> b!700683 (=> (not res!464672) (not e!397228))))

(assert (=> b!700683 (= res!464672 (not (contains!3828 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700684 () Bool)

(declare-fun res!464676 () Bool)

(assert (=> b!700684 (=> (not res!464676) (not e!397227))))

(assert (=> b!700684 (= res!464676 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!700685 () Bool)

(declare-fun res!464655 () Bool)

(assert (=> b!700685 (=> (not res!464655) (not e!397227))))

(assert (=> b!700685 (= res!464655 (noDuplicate!1075 lt!317477))))

(declare-fun b!700686 () Bool)

(declare-fun res!464651 () Bool)

(assert (=> b!700686 (=> (not res!464651) (not e!397227))))

(assert (=> b!700686 (= res!464651 (not (contains!3828 lt!317477 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700687 () Bool)

(declare-fun res!464667 () Bool)

(assert (=> b!700687 (=> (not res!464667) (not e!397227))))

(assert (=> b!700687 (= res!464667 (contains!3828 lt!317476 k!2824))))

(declare-fun b!700688 () Bool)

(declare-fun res!464660 () Bool)

(assert (=> b!700688 (=> (not res!464660) (not e!397228))))

(assert (=> b!700688 (= res!464660 (noDuplicate!1075 acc!652))))

(declare-fun b!700689 () Bool)

(assert (=> b!700689 (= e!397228 e!397227)))

(declare-fun res!464659 () Bool)

(assert (=> b!700689 (=> (not res!464659) (not e!397227))))

(assert (=> b!700689 (= res!464659 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!469 (List!13285 (_ BitVec 64)) List!13285)

(assert (=> b!700689 (= lt!317476 ($colon$colon!469 newAcc!49 (select (arr!19191 a!3591) from!2969)))))

(assert (=> b!700689 (= lt!317477 ($colon$colon!469 acc!652 (select (arr!19191 a!3591) from!2969)))))

(declare-fun b!700690 () Bool)

(declare-fun res!464677 () Bool)

(assert (=> b!700690 (=> (not res!464677) (not e!397228))))

(assert (=> b!700690 (= res!464677 (= (-!237 newAcc!49 k!2824) acc!652))))

(declare-fun b!700691 () Bool)

(declare-fun res!464671 () Bool)

(assert (=> b!700691 (=> (not res!464671) (not e!397227))))

(declare-fun subseq!272 (List!13285 List!13285) Bool)

(assert (=> b!700691 (= res!464671 (subseq!272 lt!317477 lt!317476))))

(declare-fun b!700692 () Bool)

(declare-fun res!464674 () Bool)

(assert (=> b!700692 (=> (not res!464674) (not e!397228))))

(assert (=> b!700692 (= res!464674 (not (contains!3828 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!700693 () Bool)

(declare-fun res!464653 () Bool)

(assert (=> b!700693 (=> (not res!464653) (not e!397227))))

(assert (=> b!700693 (= res!464653 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317477))))

(declare-fun b!700694 () Bool)

(declare-fun res!464664 () Bool)

(assert (=> b!700694 (=> (not res!464664) (not e!397228))))

(assert (=> b!700694 (= res!464664 (subseq!272 acc!652 newAcc!49))))

(assert (= (and start!62442 res!464666) b!700688))

(assert (= (and b!700688 res!464660) b!700675))

(assert (= (and b!700675 res!464678) b!700669))

(assert (= (and b!700669 res!464663) b!700692))

(assert (= (and b!700692 res!464674) b!700674))

(assert (= (and b!700674 res!464662) b!700667))

(assert (= (and b!700667 res!464673) b!700676))

(assert (= (and b!700676 res!464654) b!700678))

(assert (= (and b!700678 res!464656) b!700694))

(assert (= (and b!700694 res!464664) b!700673))

(assert (= (and b!700673 res!464652) b!700690))

(assert (= (and b!700690 res!464677) b!700683))

(assert (= (and b!700683 res!464672) b!700671))

(assert (= (and b!700671 res!464675) b!700681))

(assert (= (and b!700681 res!464669) b!700677))

(assert (= (and b!700677 res!464661) b!700689))

(assert (= (and b!700689 res!464659) b!700685))

(assert (= (and b!700685 res!464655) b!700672))

(assert (= (and b!700672 res!464658) b!700668))

(assert (= (and b!700668 res!464668) b!700686))

(assert (= (and b!700686 res!464651) b!700684))

(assert (= (and b!700684 res!464676) b!700682))

(assert (= (and b!700682 res!464665) b!700693))

(assert (= (and b!700693 res!464653) b!700691))

(assert (= (and b!700691 res!464671) b!700687))

(assert (= (and b!700687 res!464667) b!700670))

(assert (= (and b!700670 res!464670) b!700680))

(assert (= (and b!700680 res!464657) b!700679))

(declare-fun m!660291 () Bool)

(assert (=> b!700676 m!660291))

(declare-fun m!660293 () Bool)

(assert (=> b!700675 m!660293))

(declare-fun m!660295 () Bool)

(assert (=> b!700683 m!660295))

(declare-fun m!660297 () Bool)

(assert (=> b!700687 m!660297))

(declare-fun m!660299 () Bool)

(assert (=> b!700686 m!660299))

(declare-fun m!660301 () Bool)

(assert (=> b!700669 m!660301))

(declare-fun m!660303 () Bool)

(assert (=> b!700682 m!660303))

(declare-fun m!660305 () Bool)

(assert (=> b!700667 m!660305))

(declare-fun m!660307 () Bool)

(assert (=> b!700679 m!660307))

(declare-fun m!660309 () Bool)

(assert (=> b!700684 m!660309))

(declare-fun m!660311 () Bool)

(assert (=> b!700674 m!660311))

(declare-fun m!660313 () Bool)

(assert (=> b!700690 m!660313))

(declare-fun m!660315 () Bool)

(assert (=> b!700688 m!660315))

(declare-fun m!660317 () Bool)

(assert (=> b!700673 m!660317))

(declare-fun m!660319 () Bool)

(assert (=> b!700668 m!660319))

(declare-fun m!660321 () Bool)

(assert (=> b!700691 m!660321))

(declare-fun m!660323 () Bool)

(assert (=> b!700693 m!660323))

(declare-fun m!660325 () Bool)

(assert (=> b!700678 m!660325))

(declare-fun m!660327 () Bool)

(assert (=> start!62442 m!660327))

(declare-fun m!660329 () Bool)

(assert (=> b!700694 m!660329))

(declare-fun m!660331 () Bool)

(assert (=> b!700672 m!660331))

(declare-fun m!660333 () Bool)

(assert (=> b!700680 m!660333))

(declare-fun m!660335 () Bool)

(assert (=> b!700670 m!660335))

(declare-fun m!660337 () Bool)

(assert (=> b!700671 m!660337))

(declare-fun m!660339 () Bool)

(assert (=> b!700692 m!660339))

(declare-fun m!660341 () Bool)

(assert (=> b!700689 m!660341))

(assert (=> b!700689 m!660341))

(declare-fun m!660343 () Bool)

(assert (=> b!700689 m!660343))

(assert (=> b!700689 m!660341))

(declare-fun m!660345 () Bool)

(assert (=> b!700689 m!660345))

(declare-fun m!660347 () Bool)

(assert (=> b!700685 m!660347))

(assert (=> b!700677 m!660341))

(assert (=> b!700677 m!660341))

(declare-fun m!660349 () Bool)

(assert (=> b!700677 m!660349))

(push 1)

