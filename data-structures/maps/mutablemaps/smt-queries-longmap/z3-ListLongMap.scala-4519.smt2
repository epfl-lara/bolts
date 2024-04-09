; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62600 () Bool)

(assert start!62600)

(declare-fun b!705791 () Bool)

(declare-fun res!469785 () Bool)

(declare-fun e!397779 () Bool)

(assert (=> b!705791 (=> (not res!469785) (not e!397779))))

(declare-datatypes ((array!40235 0))(
  ( (array!40236 (arr!19270 (Array (_ BitVec 32) (_ BitVec 64))) (size!19653 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40235)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13364 0))(
  ( (Nil!13361) (Cons!13360 (h!14405 (_ BitVec 64)) (t!19654 List!13364)) )
))
(declare-fun acc!652 () List!13364)

(declare-fun arrayNoDuplicates!0 (array!40235 (_ BitVec 32) List!13364) Bool)

(assert (=> b!705791 (= res!469785 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705793 () Bool)

(declare-fun res!469786 () Bool)

(assert (=> b!705793 (=> (not res!469786) (not e!397779))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705793 (= res!469786 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!705794 () Bool)

(declare-fun res!469780 () Bool)

(assert (=> b!705794 (=> (not res!469780) (not e!397779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705794 (= res!469780 (validKeyInArray!0 k0!2824))))

(declare-fun b!705795 () Bool)

(declare-fun res!469792 () Bool)

(assert (=> b!705795 (=> (not res!469792) (not e!397779))))

(assert (=> b!705795 (= res!469792 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705796 () Bool)

(declare-fun res!469793 () Bool)

(assert (=> b!705796 (=> (not res!469793) (not e!397779))))

(assert (=> b!705796 (= res!469793 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19653 a!3591)))))

(declare-fun b!705797 () Bool)

(declare-fun res!469782 () Bool)

(assert (=> b!705797 (=> (not res!469782) (not e!397779))))

(declare-fun contains!3907 (List!13364 (_ BitVec 64)) Bool)

(assert (=> b!705797 (= res!469782 (not (contains!3907 acc!652 k0!2824)))))

(declare-fun b!705798 () Bool)

(declare-fun res!469781 () Bool)

(assert (=> b!705798 (=> (not res!469781) (not e!397779))))

(declare-fun newAcc!49 () List!13364)

(assert (=> b!705798 (= res!469781 (not (contains!3907 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705799 () Bool)

(declare-fun res!469775 () Bool)

(assert (=> b!705799 (=> (not res!469775) (not e!397779))))

(declare-fun noDuplicate!1154 (List!13364) Bool)

(assert (=> b!705799 (= res!469775 (noDuplicate!1154 newAcc!49))))

(declare-fun b!705800 () Bool)

(declare-fun res!469790 () Bool)

(assert (=> b!705800 (=> (not res!469790) (not e!397779))))

(declare-fun -!316 (List!13364 (_ BitVec 64)) List!13364)

(assert (=> b!705800 (= res!469790 (= (-!316 newAcc!49 k0!2824) acc!652))))

(declare-fun b!705801 () Bool)

(assert (=> b!705801 (= e!397779 (not true))))

(assert (=> b!705801 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24606 0))(
  ( (Unit!24607) )
))
(declare-fun lt!317871 () Unit!24606)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40235 (_ BitVec 64) (_ BitVec 32) List!13364 List!13364) Unit!24606)

(assert (=> b!705801 (= lt!317871 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705802 () Bool)

(declare-fun res!469788 () Bool)

(assert (=> b!705802 (=> (not res!469788) (not e!397779))))

(assert (=> b!705802 (= res!469788 (not (contains!3907 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705803 () Bool)

(declare-fun res!469779 () Bool)

(assert (=> b!705803 (=> (not res!469779) (not e!397779))))

(assert (=> b!705803 (= res!469779 (noDuplicate!1154 acc!652))))

(declare-fun res!469778 () Bool)

(assert (=> start!62600 (=> (not res!469778) (not e!397779))))

(assert (=> start!62600 (= res!469778 (and (bvslt (size!19653 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19653 a!3591))))))

(assert (=> start!62600 e!397779))

(assert (=> start!62600 true))

(declare-fun array_inv!15044 (array!40235) Bool)

(assert (=> start!62600 (array_inv!15044 a!3591)))

(declare-fun b!705792 () Bool)

(declare-fun res!469789 () Bool)

(assert (=> b!705792 (=> (not res!469789) (not e!397779))))

(declare-fun subseq!351 (List!13364 List!13364) Bool)

(assert (=> b!705792 (= res!469789 (subseq!351 acc!652 newAcc!49))))

(declare-fun b!705804 () Bool)

(declare-fun res!469776 () Bool)

(assert (=> b!705804 (=> (not res!469776) (not e!397779))))

(assert (=> b!705804 (= res!469776 (contains!3907 newAcc!49 k0!2824))))

(declare-fun b!705805 () Bool)

(declare-fun res!469784 () Bool)

(assert (=> b!705805 (=> (not res!469784) (not e!397779))))

(assert (=> b!705805 (= res!469784 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705806 () Bool)

(declare-fun res!469783 () Bool)

(assert (=> b!705806 (=> (not res!469783) (not e!397779))))

(assert (=> b!705806 (= res!469783 (not (validKeyInArray!0 (select (arr!19270 a!3591) from!2969))))))

(declare-fun b!705807 () Bool)

(declare-fun res!469791 () Bool)

(assert (=> b!705807 (=> (not res!469791) (not e!397779))))

(assert (=> b!705807 (= res!469791 (not (contains!3907 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705808 () Bool)

(declare-fun res!469777 () Bool)

(assert (=> b!705808 (=> (not res!469777) (not e!397779))))

(assert (=> b!705808 (= res!469777 (not (contains!3907 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705809 () Bool)

(declare-fun res!469787 () Bool)

(assert (=> b!705809 (=> (not res!469787) (not e!397779))))

(assert (=> b!705809 (= res!469787 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(assert (= (and start!62600 res!469778) b!705803))

(assert (= (and b!705803 res!469779) b!705799))

(assert (= (and b!705799 res!469775) b!705808))

(assert (= (and b!705808 res!469777) b!705807))

(assert (= (and b!705807 res!469791) b!705793))

(assert (= (and b!705793 res!469786) b!705797))

(assert (= (and b!705797 res!469782) b!705794))

(assert (= (and b!705794 res!469780) b!705791))

(assert (= (and b!705791 res!469785) b!705792))

(assert (= (and b!705792 res!469789) b!705804))

(assert (= (and b!705804 res!469776) b!705800))

(assert (= (and b!705800 res!469790) b!705798))

(assert (= (and b!705798 res!469781) b!705802))

(assert (= (and b!705802 res!469788) b!705796))

(assert (= (and b!705796 res!469793) b!705806))

(assert (= (and b!705806 res!469783) b!705809))

(assert (= (and b!705809 res!469787) b!705805))

(assert (= (and b!705805 res!469784) b!705795))

(assert (= (and b!705795 res!469792) b!705801))

(declare-fun m!663871 () Bool)

(assert (=> b!705794 m!663871))

(declare-fun m!663873 () Bool)

(assert (=> b!705807 m!663873))

(declare-fun m!663875 () Bool)

(assert (=> b!705800 m!663875))

(declare-fun m!663877 () Bool)

(assert (=> b!705797 m!663877))

(declare-fun m!663879 () Bool)

(assert (=> b!705793 m!663879))

(declare-fun m!663881 () Bool)

(assert (=> start!62600 m!663881))

(declare-fun m!663883 () Bool)

(assert (=> b!705792 m!663883))

(declare-fun m!663885 () Bool)

(assert (=> b!705805 m!663885))

(declare-fun m!663887 () Bool)

(assert (=> b!705808 m!663887))

(declare-fun m!663889 () Bool)

(assert (=> b!705801 m!663889))

(declare-fun m!663891 () Bool)

(assert (=> b!705801 m!663891))

(declare-fun m!663893 () Bool)

(assert (=> b!705803 m!663893))

(declare-fun m!663895 () Bool)

(assert (=> b!705791 m!663895))

(declare-fun m!663897 () Bool)

(assert (=> b!705798 m!663897))

(declare-fun m!663899 () Bool)

(assert (=> b!705804 m!663899))

(declare-fun m!663901 () Bool)

(assert (=> b!705806 m!663901))

(assert (=> b!705806 m!663901))

(declare-fun m!663903 () Bool)

(assert (=> b!705806 m!663903))

(declare-fun m!663905 () Bool)

(assert (=> b!705802 m!663905))

(declare-fun m!663907 () Bool)

(assert (=> b!705799 m!663907))

(declare-fun m!663909 () Bool)

(assert (=> b!705795 m!663909))

(check-sat (not b!705808) (not b!705794) (not b!705793) (not b!705806) (not b!705807) (not start!62600) (not b!705792) (not b!705805) (not b!705801) (not b!705797) (not b!705791) (not b!705795) (not b!705798) (not b!705799) (not b!705803) (not b!705800) (not b!705802) (not b!705804))
(check-sat)
