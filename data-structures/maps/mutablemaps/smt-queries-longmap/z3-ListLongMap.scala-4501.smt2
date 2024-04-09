; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62492 () Bool)

(assert start!62492)

(declare-fun b!702799 () Bool)

(declare-fun res!466809 () Bool)

(declare-fun e!397452 () Bool)

(assert (=> b!702799 (=> (not res!466809) (not e!397452))))

(declare-datatypes ((List!13310 0))(
  ( (Nil!13307) (Cons!13306 (h!14351 (_ BitVec 64)) (t!19600 List!13310)) )
))
(declare-fun lt!317701 () List!13310)

(declare-fun contains!3853 (List!13310 (_ BitVec 64)) Bool)

(assert (=> b!702799 (= res!466809 (not (contains!3853 lt!317701 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702800 () Bool)

(declare-fun res!466784 () Bool)

(declare-fun e!397451 () Bool)

(assert (=> b!702800 (=> (not res!466784) (not e!397451))))

(declare-fun acc!652 () List!13310)

(declare-fun noDuplicate!1100 (List!13310) Bool)

(assert (=> b!702800 (= res!466784 (noDuplicate!1100 acc!652))))

(declare-fun b!702801 () Bool)

(declare-fun res!466786 () Bool)

(assert (=> b!702801 (=> (not res!466786) (not e!397452))))

(assert (=> b!702801 (= res!466786 (not (contains!3853 lt!317701 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702802 () Bool)

(declare-fun res!466798 () Bool)

(assert (=> b!702802 (=> (not res!466798) (not e!397451))))

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!702802 (= res!466798 (not (contains!3853 acc!652 k0!2824)))))

(declare-fun b!702804 () Bool)

(declare-fun res!466811 () Bool)

(assert (=> b!702804 (=> (not res!466811) (not e!397452))))

(assert (=> b!702804 (= res!466811 (contains!3853 lt!317701 k0!2824))))

(declare-fun b!702805 () Bool)

(declare-fun res!466783 () Bool)

(assert (=> b!702805 (=> (not res!466783) (not e!397451))))

(declare-datatypes ((array!40127 0))(
  ( (array!40128 (arr!19216 (Array (_ BitVec 32) (_ BitVec 64))) (size!19599 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40127)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702805 (= res!466783 (validKeyInArray!0 (select (arr!19216 a!3591) from!2969)))))

(declare-fun b!702806 () Bool)

(declare-fun res!466791 () Bool)

(assert (=> b!702806 (=> (not res!466791) (not e!397451))))

(declare-fun newAcc!49 () List!13310)

(declare-fun -!262 (List!13310 (_ BitVec 64)) List!13310)

(assert (=> b!702806 (= res!466791 (= (-!262 newAcc!49 k0!2824) acc!652))))

(declare-fun b!702807 () Bool)

(assert (=> b!702807 (= e!397451 e!397452)))

(declare-fun res!466794 () Bool)

(assert (=> b!702807 (=> (not res!466794) (not e!397452))))

(assert (=> b!702807 (= res!466794 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!494 (List!13310 (_ BitVec 64)) List!13310)

(assert (=> b!702807 (= lt!317701 ($colon$colon!494 newAcc!49 (select (arr!19216 a!3591) from!2969)))))

(declare-fun lt!317702 () List!13310)

(assert (=> b!702807 (= lt!317702 ($colon$colon!494 acc!652 (select (arr!19216 a!3591) from!2969)))))

(declare-fun b!702808 () Bool)

(declare-fun res!466810 () Bool)

(assert (=> b!702808 (=> (not res!466810) (not e!397451))))

(assert (=> b!702808 (= res!466810 (noDuplicate!1100 newAcc!49))))

(declare-fun b!702809 () Bool)

(assert (=> b!702809 (= e!397452 (not true))))

(declare-fun arrayNoDuplicates!0 (array!40127 (_ BitVec 32) List!13310) Bool)

(assert (=> b!702809 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317701)))

(declare-datatypes ((Unit!24582 0))(
  ( (Unit!24583) )
))
(declare-fun lt!317703 () Unit!24582)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40127 (_ BitVec 64) (_ BitVec 32) List!13310 List!13310) Unit!24582)

(assert (=> b!702809 (= lt!317703 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317702 lt!317701))))

(declare-fun b!702810 () Bool)

(declare-fun res!466788 () Bool)

(assert (=> b!702810 (=> (not res!466788) (not e!397451))))

(assert (=> b!702810 (= res!466788 (not (contains!3853 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702811 () Bool)

(declare-fun res!466799 () Bool)

(assert (=> b!702811 (=> (not res!466799) (not e!397452))))

(assert (=> b!702811 (= res!466799 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317702))))

(declare-fun b!702812 () Bool)

(declare-fun res!466808 () Bool)

(assert (=> b!702812 (=> (not res!466808) (not e!397451))))

(assert (=> b!702812 (= res!466808 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702813 () Bool)

(declare-fun res!466789 () Bool)

(assert (=> b!702813 (=> (not res!466789) (not e!397452))))

(assert (=> b!702813 (= res!466789 (not (contains!3853 lt!317702 k0!2824)))))

(declare-fun b!702814 () Bool)

(declare-fun res!466797 () Bool)

(assert (=> b!702814 (=> (not res!466797) (not e!397452))))

(declare-fun arrayContainsKey!0 (array!40127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702814 (= res!466797 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun res!466801 () Bool)

(assert (=> start!62492 (=> (not res!466801) (not e!397451))))

(assert (=> start!62492 (= res!466801 (and (bvslt (size!19599 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19599 a!3591))))))

(assert (=> start!62492 e!397451))

(assert (=> start!62492 true))

(declare-fun array_inv!14990 (array!40127) Bool)

(assert (=> start!62492 (array_inv!14990 a!3591)))

(declare-fun b!702803 () Bool)

(declare-fun res!466800 () Bool)

(assert (=> b!702803 (=> (not res!466800) (not e!397451))))

(assert (=> b!702803 (= res!466800 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!702815 () Bool)

(declare-fun res!466804 () Bool)

(assert (=> b!702815 (=> (not res!466804) (not e!397451))))

(assert (=> b!702815 (= res!466804 (contains!3853 newAcc!49 k0!2824))))

(declare-fun b!702816 () Bool)

(declare-fun res!466803 () Bool)

(assert (=> b!702816 (=> (not res!466803) (not e!397451))))

(assert (=> b!702816 (= res!466803 (validKeyInArray!0 k0!2824))))

(declare-fun b!702817 () Bool)

(declare-fun res!466787 () Bool)

(assert (=> b!702817 (=> (not res!466787) (not e!397451))))

(assert (=> b!702817 (= res!466787 (not (contains!3853 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702818 () Bool)

(declare-fun res!466802 () Bool)

(assert (=> b!702818 (=> (not res!466802) (not e!397451))))

(assert (=> b!702818 (= res!466802 (not (contains!3853 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702819 () Bool)

(declare-fun res!466785 () Bool)

(assert (=> b!702819 (=> (not res!466785) (not e!397452))))

(assert (=> b!702819 (= res!466785 (noDuplicate!1100 lt!317701))))

(declare-fun b!702820 () Bool)

(declare-fun res!466805 () Bool)

(assert (=> b!702820 (=> (not res!466805) (not e!397451))))

(declare-fun subseq!297 (List!13310 List!13310) Bool)

(assert (=> b!702820 (= res!466805 (subseq!297 acc!652 newAcc!49))))

(declare-fun b!702821 () Bool)

(declare-fun res!466807 () Bool)

(assert (=> b!702821 (=> (not res!466807) (not e!397452))))

(assert (=> b!702821 (= res!466807 (noDuplicate!1100 lt!317702))))

(declare-fun b!702822 () Bool)

(declare-fun res!466792 () Bool)

(assert (=> b!702822 (=> (not res!466792) (not e!397452))))

(assert (=> b!702822 (= res!466792 (not (contains!3853 lt!317702 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702823 () Bool)

(declare-fun res!466790 () Bool)

(assert (=> b!702823 (=> (not res!466790) (not e!397452))))

(assert (=> b!702823 (= res!466790 (= (-!262 lt!317701 k0!2824) lt!317702))))

(declare-fun b!702824 () Bool)

(declare-fun res!466796 () Bool)

(assert (=> b!702824 (=> (not res!466796) (not e!397452))))

(assert (=> b!702824 (= res!466796 (subseq!297 lt!317702 lt!317701))))

(declare-fun b!702825 () Bool)

(declare-fun res!466795 () Bool)

(assert (=> b!702825 (=> (not res!466795) (not e!397451))))

(assert (=> b!702825 (= res!466795 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19599 a!3591)))))

(declare-fun b!702826 () Bool)

(declare-fun res!466806 () Bool)

(assert (=> b!702826 (=> (not res!466806) (not e!397452))))

(assert (=> b!702826 (= res!466806 (not (contains!3853 lt!317702 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702827 () Bool)

(declare-fun res!466793 () Bool)

(assert (=> b!702827 (=> (not res!466793) (not e!397451))))

(assert (=> b!702827 (= res!466793 (not (contains!3853 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62492 res!466801) b!702800))

(assert (= (and b!702800 res!466784) b!702808))

(assert (= (and b!702808 res!466810) b!702810))

(assert (= (and b!702810 res!466788) b!702818))

(assert (= (and b!702818 res!466802) b!702803))

(assert (= (and b!702803 res!466800) b!702802))

(assert (= (and b!702802 res!466798) b!702816))

(assert (= (and b!702816 res!466803) b!702812))

(assert (= (and b!702812 res!466808) b!702820))

(assert (= (and b!702820 res!466805) b!702815))

(assert (= (and b!702815 res!466804) b!702806))

(assert (= (and b!702806 res!466791) b!702817))

(assert (= (and b!702817 res!466787) b!702827))

(assert (= (and b!702827 res!466793) b!702825))

(assert (= (and b!702825 res!466795) b!702805))

(assert (= (and b!702805 res!466783) b!702807))

(assert (= (and b!702807 res!466794) b!702821))

(assert (= (and b!702821 res!466807) b!702819))

(assert (= (and b!702819 res!466785) b!702822))

(assert (= (and b!702822 res!466792) b!702826))

(assert (= (and b!702826 res!466806) b!702814))

(assert (= (and b!702814 res!466797) b!702813))

(assert (= (and b!702813 res!466789) b!702811))

(assert (= (and b!702811 res!466799) b!702824))

(assert (= (and b!702824 res!466796) b!702804))

(assert (= (and b!702804 res!466811) b!702823))

(assert (= (and b!702823 res!466790) b!702799))

(assert (= (and b!702799 res!466809) b!702801))

(assert (= (and b!702801 res!466786) b!702809))

(declare-fun m!661831 () Bool)

(assert (=> b!702816 m!661831))

(declare-fun m!661833 () Bool)

(assert (=> b!702811 m!661833))

(declare-fun m!661835 () Bool)

(assert (=> b!702804 m!661835))

(declare-fun m!661837 () Bool)

(assert (=> b!702809 m!661837))

(declare-fun m!661839 () Bool)

(assert (=> b!702809 m!661839))

(declare-fun m!661841 () Bool)

(assert (=> b!702807 m!661841))

(assert (=> b!702807 m!661841))

(declare-fun m!661843 () Bool)

(assert (=> b!702807 m!661843))

(assert (=> b!702807 m!661841))

(declare-fun m!661845 () Bool)

(assert (=> b!702807 m!661845))

(declare-fun m!661847 () Bool)

(assert (=> b!702815 m!661847))

(declare-fun m!661849 () Bool)

(assert (=> b!702827 m!661849))

(declare-fun m!661851 () Bool)

(assert (=> b!702818 m!661851))

(declare-fun m!661853 () Bool)

(assert (=> b!702821 m!661853))

(declare-fun m!661855 () Bool)

(assert (=> b!702803 m!661855))

(declare-fun m!661857 () Bool)

(assert (=> b!702822 m!661857))

(declare-fun m!661859 () Bool)

(assert (=> start!62492 m!661859))

(declare-fun m!661861 () Bool)

(assert (=> b!702820 m!661861))

(declare-fun m!661863 () Bool)

(assert (=> b!702824 m!661863))

(declare-fun m!661865 () Bool)

(assert (=> b!702810 m!661865))

(declare-fun m!661867 () Bool)

(assert (=> b!702800 m!661867))

(declare-fun m!661869 () Bool)

(assert (=> b!702814 m!661869))

(declare-fun m!661871 () Bool)

(assert (=> b!702799 m!661871))

(declare-fun m!661873 () Bool)

(assert (=> b!702823 m!661873))

(declare-fun m!661875 () Bool)

(assert (=> b!702808 m!661875))

(declare-fun m!661877 () Bool)

(assert (=> b!702819 m!661877))

(declare-fun m!661879 () Bool)

(assert (=> b!702812 m!661879))

(declare-fun m!661881 () Bool)

(assert (=> b!702802 m!661881))

(declare-fun m!661883 () Bool)

(assert (=> b!702801 m!661883))

(assert (=> b!702805 m!661841))

(assert (=> b!702805 m!661841))

(declare-fun m!661885 () Bool)

(assert (=> b!702805 m!661885))

(declare-fun m!661887 () Bool)

(assert (=> b!702806 m!661887))

(declare-fun m!661889 () Bool)

(assert (=> b!702817 m!661889))

(declare-fun m!661891 () Bool)

(assert (=> b!702826 m!661891))

(declare-fun m!661893 () Bool)

(assert (=> b!702813 m!661893))

(check-sat (not b!702804) (not b!702811) (not b!702823) (not b!702821) (not b!702800) (not b!702826) (not b!702807) (not b!702810) (not b!702803) (not b!702824) (not b!702808) (not b!702827) (not b!702809) (not b!702805) (not start!62492) (not b!702818) (not b!702802) (not b!702812) (not b!702815) (not b!702822) (not b!702799) (not b!702806) (not b!702801) (not b!702819) (not b!702814) (not b!702816) (not b!702813) (not b!702817) (not b!702820))
(check-sat)
