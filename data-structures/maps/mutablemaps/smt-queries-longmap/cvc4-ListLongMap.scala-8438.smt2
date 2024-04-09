; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102804 () Bool)

(assert start!102804)

(declare-fun b!1234825 () Bool)

(declare-fun res!823100 () Bool)

(declare-fun e!700299 () Bool)

(assert (=> b!1234825 (=> res!823100 e!700299)))

(declare-datatypes ((List!27350 0))(
  ( (Nil!27347) (Cons!27346 (h!28555 (_ BitVec 64)) (t!40820 List!27350)) )
))
(declare-fun lt!559983 () List!27350)

(declare-fun contains!7265 (List!27350 (_ BitVec 64)) Bool)

(assert (=> b!1234825 (= res!823100 (contains!7265 lt!559983 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234826 () Bool)

(declare-fun res!823099 () Bool)

(declare-fun e!700300 () Bool)

(assert (=> b!1234826 (=> (not res!823099) (not e!700300))))

(declare-fun acc!846 () List!27350)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234826 (= res!823099 (contains!7265 acc!846 k!2925))))

(declare-fun b!1234827 () Bool)

(declare-fun res!823098 () Bool)

(assert (=> b!1234827 (=> (not res!823098) (not e!700300))))

(declare-datatypes ((array!79590 0))(
  ( (array!79591 (arr!38399 (Array (_ BitVec 32) (_ BitVec 64))) (size!38936 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79590)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79590 (_ BitVec 32) List!27350) Bool)

(assert (=> b!1234827 (= res!823098 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!823108 () Bool)

(assert (=> start!102804 (=> (not res!823108) (not e!700300))))

(assert (=> start!102804 (= res!823108 (and (bvslt (size!38936 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38936 a!3835))))))

(assert (=> start!102804 e!700300))

(declare-fun array_inv!29175 (array!79590) Bool)

(assert (=> start!102804 (array_inv!29175 a!3835)))

(assert (=> start!102804 true))

(declare-fun b!1234828 () Bool)

(declare-fun res!823104 () Bool)

(assert (=> b!1234828 (=> res!823104 e!700299)))

(declare-fun noDuplicate!1872 (List!27350) Bool)

(assert (=> b!1234828 (= res!823104 (not (noDuplicate!1872 lt!559983)))))

(declare-fun b!1234829 () Bool)

(assert (=> b!1234829 (= e!700299 true)))

(declare-fun lt!559985 () Bool)

(assert (=> b!1234829 (= lt!559985 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559983))))

(declare-datatypes ((Unit!40842 0))(
  ( (Unit!40843) )
))
(declare-fun lt!559984 () Unit!40842)

(declare-fun noDuplicateSubseq!67 (List!27350 List!27350) Unit!40842)

(assert (=> b!1234829 (= lt!559984 (noDuplicateSubseq!67 acc!846 lt!559983))))

(declare-fun b!1234830 () Bool)

(declare-fun res!823101 () Bool)

(assert (=> b!1234830 (=> res!823101 e!700299)))

(assert (=> b!1234830 (= res!823101 (contains!7265 lt!559983 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234831 () Bool)

(declare-fun res!823107 () Bool)

(assert (=> b!1234831 (=> (not res!823107) (not e!700300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234831 (= res!823107 (validKeyInArray!0 (select (arr!38399 a!3835) from!3213)))))

(declare-fun b!1234832 () Bool)

(declare-fun res!823105 () Bool)

(assert (=> b!1234832 (=> (not res!823105) (not e!700300))))

(assert (=> b!1234832 (= res!823105 (noDuplicate!1872 acc!846))))

(declare-fun b!1234833 () Bool)

(declare-fun res!823102 () Bool)

(assert (=> b!1234833 (=> (not res!823102) (not e!700300))))

(assert (=> b!1234833 (= res!823102 (not (contains!7265 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234834 () Bool)

(assert (=> b!1234834 (= e!700300 (not e!700299))))

(declare-fun res!823103 () Bool)

(assert (=> b!1234834 (=> res!823103 e!700299)))

(assert (=> b!1234834 (= res!823103 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!520 (List!27350 List!27350) Bool)

(assert (=> b!1234834 (subseq!520 acc!846 lt!559983)))

(declare-fun lt!559987 () Unit!40842)

(declare-fun subseqTail!13 (List!27350 List!27350) Unit!40842)

(assert (=> b!1234834 (= lt!559987 (subseqTail!13 lt!559983 lt!559983))))

(assert (=> b!1234834 (subseq!520 lt!559983 lt!559983)))

(declare-fun lt!559986 () Unit!40842)

(declare-fun lemmaListSubSeqRefl!0 (List!27350) Unit!40842)

(assert (=> b!1234834 (= lt!559986 (lemmaListSubSeqRefl!0 lt!559983))))

(assert (=> b!1234834 (= lt!559983 (Cons!27346 (select (arr!38399 a!3835) from!3213) acc!846))))

(declare-fun b!1234835 () Bool)

(declare-fun res!823106 () Bool)

(assert (=> b!1234835 (=> (not res!823106) (not e!700300))))

(assert (=> b!1234835 (= res!823106 (not (= from!3213 (bvsub (size!38936 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234836 () Bool)

(declare-fun res!823109 () Bool)

(assert (=> b!1234836 (=> (not res!823109) (not e!700300))))

(assert (=> b!1234836 (= res!823109 (not (contains!7265 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102804 res!823108) b!1234832))

(assert (= (and b!1234832 res!823105) b!1234836))

(assert (= (and b!1234836 res!823109) b!1234833))

(assert (= (and b!1234833 res!823102) b!1234827))

(assert (= (and b!1234827 res!823098) b!1234826))

(assert (= (and b!1234826 res!823099) b!1234835))

(assert (= (and b!1234835 res!823106) b!1234831))

(assert (= (and b!1234831 res!823107) b!1234834))

(assert (= (and b!1234834 (not res!823103)) b!1234828))

(assert (= (and b!1234828 (not res!823104)) b!1234830))

(assert (= (and b!1234830 (not res!823101)) b!1234825))

(assert (= (and b!1234825 (not res!823100)) b!1234829))

(declare-fun m!1138789 () Bool)

(assert (=> b!1234831 m!1138789))

(assert (=> b!1234831 m!1138789))

(declare-fun m!1138791 () Bool)

(assert (=> b!1234831 m!1138791))

(declare-fun m!1138793 () Bool)

(assert (=> b!1234834 m!1138793))

(declare-fun m!1138795 () Bool)

(assert (=> b!1234834 m!1138795))

(declare-fun m!1138797 () Bool)

(assert (=> b!1234834 m!1138797))

(declare-fun m!1138799 () Bool)

(assert (=> b!1234834 m!1138799))

(assert (=> b!1234834 m!1138789))

(declare-fun m!1138801 () Bool)

(assert (=> b!1234826 m!1138801))

(declare-fun m!1138803 () Bool)

(assert (=> b!1234825 m!1138803))

(declare-fun m!1138805 () Bool)

(assert (=> b!1234828 m!1138805))

(declare-fun m!1138807 () Bool)

(assert (=> b!1234836 m!1138807))

(declare-fun m!1138809 () Bool)

(assert (=> b!1234827 m!1138809))

(declare-fun m!1138811 () Bool)

(assert (=> start!102804 m!1138811))

(declare-fun m!1138813 () Bool)

(assert (=> b!1234832 m!1138813))

(declare-fun m!1138815 () Bool)

(assert (=> b!1234833 m!1138815))

(declare-fun m!1138817 () Bool)

(assert (=> b!1234830 m!1138817))

(declare-fun m!1138819 () Bool)

(assert (=> b!1234829 m!1138819))

(declare-fun m!1138821 () Bool)

(assert (=> b!1234829 m!1138821))

(push 1)

(assert (not b!1234828))

(assert (not b!1234836))

(assert (not b!1234830))

(assert (not b!1234829))

(assert (not b!1234834))

(assert (not b!1234825))

(assert (not b!1234833))

(assert (not b!1234832))

(assert (not b!1234826))

(assert (not b!1234831))

(assert (not start!102804))

(assert (not b!1234827))

(check-sat)

(pop 1)

