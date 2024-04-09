; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62562 () Bool)

(assert start!62562)

(declare-fun b!704733 () Bool)

(declare-fun res!468721 () Bool)

(declare-fun e!397665 () Bool)

(assert (=> b!704733 (=> (not res!468721) (not e!397665))))

(declare-datatypes ((List!13345 0))(
  ( (Nil!13342) (Cons!13341 (h!14386 (_ BitVec 64)) (t!19635 List!13345)) )
))
(declare-fun acc!652 () List!13345)

(declare-fun newAcc!49 () List!13345)

(declare-fun subseq!332 (List!13345 List!13345) Bool)

(assert (=> b!704733 (= res!468721 (subseq!332 acc!652 newAcc!49))))

(declare-fun b!704734 () Bool)

(declare-fun res!468730 () Bool)

(assert (=> b!704734 (=> (not res!468730) (not e!397665))))

(declare-fun noDuplicate!1135 (List!13345) Bool)

(assert (=> b!704734 (= res!468730 (noDuplicate!1135 newAcc!49))))

(declare-fun b!704735 () Bool)

(declare-fun res!468726 () Bool)

(assert (=> b!704735 (=> (not res!468726) (not e!397665))))

(declare-fun contains!3888 (List!13345 (_ BitVec 64)) Bool)

(assert (=> b!704735 (= res!468726 (not (contains!3888 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704736 () Bool)

(assert (=> b!704736 (= e!397665 false)))

(declare-datatypes ((array!40197 0))(
  ( (array!40198 (arr!19251 (Array (_ BitVec 32) (_ BitVec 64))) (size!19634 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40197)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun lt!317814 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40197 (_ BitVec 32) List!13345) Bool)

(assert (=> b!704736 (= lt!317814 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704737 () Bool)

(declare-fun res!468722 () Bool)

(assert (=> b!704737 (=> (not res!468722) (not e!397665))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704737 (= res!468722 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704738 () Bool)

(declare-fun res!468723 () Bool)

(assert (=> b!704738 (=> (not res!468723) (not e!397665))))

(assert (=> b!704738 (= res!468723 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19634 a!3591)))))

(declare-fun b!704739 () Bool)

(declare-fun res!468733 () Bool)

(assert (=> b!704739 (=> (not res!468733) (not e!397665))))

(assert (=> b!704739 (= res!468733 (contains!3888 newAcc!49 k!2824))))

(declare-fun res!468718 () Bool)

(assert (=> start!62562 (=> (not res!468718) (not e!397665))))

(assert (=> start!62562 (= res!468718 (and (bvslt (size!19634 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19634 a!3591))))))

(assert (=> start!62562 e!397665))

(assert (=> start!62562 true))

(declare-fun array_inv!15025 (array!40197) Bool)

(assert (=> start!62562 (array_inv!15025 a!3591)))

(declare-fun b!704740 () Bool)

(declare-fun res!468719 () Bool)

(assert (=> b!704740 (=> (not res!468719) (not e!397665))))

(assert (=> b!704740 (= res!468719 (not (contains!3888 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704741 () Bool)

(declare-fun res!468720 () Bool)

(assert (=> b!704741 (=> (not res!468720) (not e!397665))))

(assert (=> b!704741 (= res!468720 (not (contains!3888 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704742 () Bool)

(declare-fun res!468734 () Bool)

(assert (=> b!704742 (=> (not res!468734) (not e!397665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704742 (= res!468734 (validKeyInArray!0 k!2824))))

(declare-fun b!704743 () Bool)

(declare-fun res!468725 () Bool)

(assert (=> b!704743 (=> (not res!468725) (not e!397665))))

(assert (=> b!704743 (= res!468725 (not (validKeyInArray!0 (select (arr!19251 a!3591) from!2969))))))

(declare-fun b!704744 () Bool)

(declare-fun res!468717 () Bool)

(assert (=> b!704744 (=> (not res!468717) (not e!397665))))

(assert (=> b!704744 (= res!468717 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704745 () Bool)

(declare-fun res!468732 () Bool)

(assert (=> b!704745 (=> (not res!468732) (not e!397665))))

(declare-fun -!297 (List!13345 (_ BitVec 64)) List!13345)

(assert (=> b!704745 (= res!468732 (= (-!297 newAcc!49 k!2824) acc!652))))

(declare-fun b!704746 () Bool)

(declare-fun res!468731 () Bool)

(assert (=> b!704746 (=> (not res!468731) (not e!397665))))

(assert (=> b!704746 (= res!468731 (noDuplicate!1135 acc!652))))

(declare-fun b!704747 () Bool)

(declare-fun res!468724 () Bool)

(assert (=> b!704747 (=> (not res!468724) (not e!397665))))

(assert (=> b!704747 (= res!468724 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704748 () Bool)

(declare-fun res!468727 () Bool)

(assert (=> b!704748 (=> (not res!468727) (not e!397665))))

(assert (=> b!704748 (= res!468727 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704749 () Bool)

(declare-fun res!468729 () Bool)

(assert (=> b!704749 (=> (not res!468729) (not e!397665))))

(assert (=> b!704749 (= res!468729 (not (contains!3888 acc!652 k!2824)))))

(declare-fun b!704750 () Bool)

(declare-fun res!468728 () Bool)

(assert (=> b!704750 (=> (not res!468728) (not e!397665))))

(assert (=> b!704750 (= res!468728 (not (contains!3888 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62562 res!468718) b!704746))

(assert (= (and b!704746 res!468731) b!704734))

(assert (= (and b!704734 res!468730) b!704735))

(assert (= (and b!704735 res!468726) b!704740))

(assert (= (and b!704740 res!468719) b!704737))

(assert (= (and b!704737 res!468722) b!704749))

(assert (= (and b!704749 res!468729) b!704742))

(assert (= (and b!704742 res!468734) b!704748))

(assert (= (and b!704748 res!468727) b!704733))

(assert (= (and b!704733 res!468721) b!704739))

(assert (= (and b!704739 res!468733) b!704745))

(assert (= (and b!704745 res!468732) b!704741))

(assert (= (and b!704741 res!468720) b!704750))

(assert (= (and b!704750 res!468728) b!704738))

(assert (= (and b!704738 res!468723) b!704743))

(assert (= (and b!704743 res!468725) b!704744))

(assert (= (and b!704744 res!468717) b!704747))

(assert (= (and b!704747 res!468724) b!704736))

(declare-fun m!663147 () Bool)

(assert (=> b!704746 m!663147))

(declare-fun m!663149 () Bool)

(assert (=> b!704739 m!663149))

(declare-fun m!663151 () Bool)

(assert (=> start!62562 m!663151))

(declare-fun m!663153 () Bool)

(assert (=> b!704748 m!663153))

(declare-fun m!663155 () Bool)

(assert (=> b!704741 m!663155))

(declare-fun m!663157 () Bool)

(assert (=> b!704742 m!663157))

(declare-fun m!663159 () Bool)

(assert (=> b!704733 m!663159))

(declare-fun m!663161 () Bool)

(assert (=> b!704735 m!663161))

(declare-fun m!663163 () Bool)

(assert (=> b!704737 m!663163))

(declare-fun m!663165 () Bool)

(assert (=> b!704745 m!663165))

(declare-fun m!663167 () Bool)

(assert (=> b!704747 m!663167))

(declare-fun m!663169 () Bool)

(assert (=> b!704749 m!663169))

(declare-fun m!663171 () Bool)

(assert (=> b!704734 m!663171))

(declare-fun m!663173 () Bool)

(assert (=> b!704743 m!663173))

(assert (=> b!704743 m!663173))

(declare-fun m!663175 () Bool)

(assert (=> b!704743 m!663175))

(declare-fun m!663177 () Bool)

(assert (=> b!704736 m!663177))

(declare-fun m!663179 () Bool)

(assert (=> b!704750 m!663179))

(declare-fun m!663181 () Bool)

(assert (=> b!704740 m!663181))

(push 1)

(assert (not b!704736))

(assert (not b!704746))

(assert (not b!704742))

(assert (not b!704733))

(assert (not b!704750))

(assert (not b!704735))

(assert (not b!704748))

(assert (not b!704749))

(assert (not b!704740))

(assert (not b!704737))

(assert (not start!62562))

(assert (not b!704743))

(assert (not b!704741))

(assert (not b!704745))

(assert (not b!704747))

(assert (not b!704739))

(assert (not b!704734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

