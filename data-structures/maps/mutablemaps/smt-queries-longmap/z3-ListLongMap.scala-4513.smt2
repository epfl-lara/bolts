; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62564 () Bool)

(assert start!62564)

(declare-fun res!468787 () Bool)

(declare-fun e!397671 () Bool)

(assert (=> start!62564 (=> (not res!468787) (not e!397671))))

(declare-datatypes ((array!40199 0))(
  ( (array!40200 (arr!19252 (Array (_ BitVec 32) (_ BitVec 64))) (size!19635 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40199)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62564 (= res!468787 (and (bvslt (size!19635 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19635 a!3591))))))

(assert (=> start!62564 e!397671))

(assert (=> start!62564 true))

(declare-fun array_inv!15026 (array!40199) Bool)

(assert (=> start!62564 (array_inv!15026 a!3591)))

(declare-fun b!704787 () Bool)

(declare-fun res!468776 () Bool)

(assert (=> b!704787 (=> (not res!468776) (not e!397671))))

(declare-datatypes ((List!13346 0))(
  ( (Nil!13343) (Cons!13342 (h!14387 (_ BitVec 64)) (t!19636 List!13346)) )
))
(declare-fun acc!652 () List!13346)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3889 (List!13346 (_ BitVec 64)) Bool)

(assert (=> b!704787 (= res!468776 (not (contains!3889 acc!652 k0!2824)))))

(declare-fun b!704788 () Bool)

(declare-fun res!468783 () Bool)

(assert (=> b!704788 (=> (not res!468783) (not e!397671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704788 (= res!468783 (validKeyInArray!0 k0!2824))))

(declare-fun b!704789 () Bool)

(declare-fun res!468780 () Bool)

(assert (=> b!704789 (=> (not res!468780) (not e!397671))))

(declare-fun newAcc!49 () List!13346)

(declare-fun noDuplicate!1136 (List!13346) Bool)

(assert (=> b!704789 (= res!468780 (noDuplicate!1136 newAcc!49))))

(declare-fun b!704790 () Bool)

(assert (=> b!704790 (= e!397671 false)))

(declare-fun lt!317817 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40199 (_ BitVec 32) List!13346) Bool)

(assert (=> b!704790 (= lt!317817 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704791 () Bool)

(declare-fun res!468788 () Bool)

(assert (=> b!704791 (=> (not res!468788) (not e!397671))))

(assert (=> b!704791 (= res!468788 (not (contains!3889 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704792 () Bool)

(declare-fun res!468782 () Bool)

(assert (=> b!704792 (=> (not res!468782) (not e!397671))))

(declare-fun subseq!333 (List!13346 List!13346) Bool)

(assert (=> b!704792 (= res!468782 (subseq!333 acc!652 newAcc!49))))

(declare-fun b!704793 () Bool)

(declare-fun res!468773 () Bool)

(assert (=> b!704793 (=> (not res!468773) (not e!397671))))

(assert (=> b!704793 (= res!468773 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19635 a!3591)))))

(declare-fun b!704794 () Bool)

(declare-fun res!468781 () Bool)

(assert (=> b!704794 (=> (not res!468781) (not e!397671))))

(assert (=> b!704794 (= res!468781 (noDuplicate!1136 acc!652))))

(declare-fun b!704795 () Bool)

(declare-fun res!468785 () Bool)

(assert (=> b!704795 (=> (not res!468785) (not e!397671))))

(assert (=> b!704795 (= res!468785 (not (contains!3889 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704796 () Bool)

(declare-fun res!468775 () Bool)

(assert (=> b!704796 (=> (not res!468775) (not e!397671))))

(declare-fun -!298 (List!13346 (_ BitVec 64)) List!13346)

(assert (=> b!704796 (= res!468775 (= (-!298 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704797 () Bool)

(declare-fun res!468784 () Bool)

(assert (=> b!704797 (=> (not res!468784) (not e!397671))))

(assert (=> b!704797 (= res!468784 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704798 () Bool)

(declare-fun res!468772 () Bool)

(assert (=> b!704798 (=> (not res!468772) (not e!397671))))

(declare-fun arrayContainsKey!0 (array!40199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704798 (= res!468772 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704799 () Bool)

(declare-fun res!468779 () Bool)

(assert (=> b!704799 (=> (not res!468779) (not e!397671))))

(assert (=> b!704799 (= res!468779 (not (validKeyInArray!0 (select (arr!19252 a!3591) from!2969))))))

(declare-fun b!704800 () Bool)

(declare-fun res!468777 () Bool)

(assert (=> b!704800 (=> (not res!468777) (not e!397671))))

(assert (=> b!704800 (= res!468777 (not (contains!3889 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704801 () Bool)

(declare-fun res!468771 () Bool)

(assert (=> b!704801 (=> (not res!468771) (not e!397671))))

(assert (=> b!704801 (= res!468771 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704802 () Bool)

(declare-fun res!468774 () Bool)

(assert (=> b!704802 (=> (not res!468774) (not e!397671))))

(assert (=> b!704802 (= res!468774 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704803 () Bool)

(declare-fun res!468778 () Bool)

(assert (=> b!704803 (=> (not res!468778) (not e!397671))))

(assert (=> b!704803 (= res!468778 (not (contains!3889 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704804 () Bool)

(declare-fun res!468786 () Bool)

(assert (=> b!704804 (=> (not res!468786) (not e!397671))))

(assert (=> b!704804 (= res!468786 (contains!3889 newAcc!49 k0!2824))))

(assert (= (and start!62564 res!468787) b!704794))

(assert (= (and b!704794 res!468781) b!704789))

(assert (= (and b!704789 res!468780) b!704800))

(assert (= (and b!704800 res!468777) b!704791))

(assert (= (and b!704791 res!468788) b!704798))

(assert (= (and b!704798 res!468772) b!704787))

(assert (= (and b!704787 res!468776) b!704788))

(assert (= (and b!704788 res!468783) b!704797))

(assert (= (and b!704797 res!468784) b!704792))

(assert (= (and b!704792 res!468782) b!704804))

(assert (= (and b!704804 res!468786) b!704796))

(assert (= (and b!704796 res!468775) b!704795))

(assert (= (and b!704795 res!468785) b!704803))

(assert (= (and b!704803 res!468778) b!704793))

(assert (= (and b!704793 res!468773) b!704799))

(assert (= (and b!704799 res!468779) b!704802))

(assert (= (and b!704802 res!468774) b!704801))

(assert (= (and b!704801 res!468771) b!704790))

(declare-fun m!663183 () Bool)

(assert (=> start!62564 m!663183))

(declare-fun m!663185 () Bool)

(assert (=> b!704795 m!663185))

(declare-fun m!663187 () Bool)

(assert (=> b!704790 m!663187))

(declare-fun m!663189 () Bool)

(assert (=> b!704804 m!663189))

(declare-fun m!663191 () Bool)

(assert (=> b!704797 m!663191))

(declare-fun m!663193 () Bool)

(assert (=> b!704798 m!663193))

(declare-fun m!663195 () Bool)

(assert (=> b!704803 m!663195))

(declare-fun m!663197 () Bool)

(assert (=> b!704791 m!663197))

(declare-fun m!663199 () Bool)

(assert (=> b!704800 m!663199))

(declare-fun m!663201 () Bool)

(assert (=> b!704796 m!663201))

(declare-fun m!663203 () Bool)

(assert (=> b!704789 m!663203))

(declare-fun m!663205 () Bool)

(assert (=> b!704787 m!663205))

(declare-fun m!663207 () Bool)

(assert (=> b!704799 m!663207))

(assert (=> b!704799 m!663207))

(declare-fun m!663209 () Bool)

(assert (=> b!704799 m!663209))

(declare-fun m!663211 () Bool)

(assert (=> b!704801 m!663211))

(declare-fun m!663213 () Bool)

(assert (=> b!704788 m!663213))

(declare-fun m!663215 () Bool)

(assert (=> b!704794 m!663215))

(declare-fun m!663217 () Bool)

(assert (=> b!704792 m!663217))

(check-sat (not b!704787) (not b!704803) (not b!704799) (not b!704790) (not b!704788) (not b!704797) (not b!704794) (not b!704801) (not b!704789) (not b!704796) (not start!62564) (not b!704804) (not b!704791) (not b!704792) (not b!704795) (not b!704800) (not b!704798))
(check-sat)
