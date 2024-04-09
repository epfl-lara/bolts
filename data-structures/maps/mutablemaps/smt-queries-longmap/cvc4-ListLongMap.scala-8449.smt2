; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102870 () Bool)

(assert start!102870)

(declare-fun b!1235889 () Bool)

(declare-fun e!700658 () Bool)

(declare-fun e!700657 () Bool)

(assert (=> b!1235889 (= e!700658 e!700657)))

(declare-fun res!824039 () Bool)

(assert (=> b!1235889 (=> (not res!824039) (not e!700657))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79656 0))(
  ( (array!79657 (arr!38432 (Array (_ BitVec 32) (_ BitVec 64))) (size!38969 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79656)

(assert (=> b!1235889 (= res!824039 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38969 a!3835))))))

(declare-datatypes ((Unit!40928 0))(
  ( (Unit!40929) )
))
(declare-fun lt!560545 () Unit!40928)

(declare-fun e!700660 () Unit!40928)

(assert (=> b!1235889 (= lt!560545 e!700660)))

(declare-fun c!120788 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235889 (= c!120788 (validKeyInArray!0 (select (arr!38432 a!3835) from!3213)))))

(declare-fun b!1235891 () Bool)

(declare-fun res!824042 () Bool)

(assert (=> b!1235891 (=> (not res!824042) (not e!700658))))

(declare-datatypes ((List!27383 0))(
  ( (Nil!27380) (Cons!27379 (h!28588 (_ BitVec 64)) (t!40853 List!27383)) )
))
(declare-fun acc!846 () List!27383)

(declare-fun arrayNoDuplicates!0 (array!79656 (_ BitVec 32) List!27383) Bool)

(assert (=> b!1235891 (= res!824042 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235892 () Bool)

(declare-fun res!824038 () Bool)

(assert (=> b!1235892 (=> (not res!824038) (not e!700658))))

(declare-fun noDuplicate!1905 (List!27383) Bool)

(assert (=> b!1235892 (= res!824038 (noDuplicate!1905 acc!846))))

(declare-fun b!1235893 () Bool)

(declare-fun Unit!40930 () Unit!40928)

(assert (=> b!1235893 (= e!700660 Unit!40930)))

(declare-fun b!1235894 () Bool)

(declare-fun res!824044 () Bool)

(assert (=> b!1235894 (=> (not res!824044) (not e!700658))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7298 (List!27383 (_ BitVec 64)) Bool)

(assert (=> b!1235894 (= res!824044 (contains!7298 acc!846 k!2925))))

(declare-fun b!1235895 () Bool)

(declare-fun res!824045 () Bool)

(assert (=> b!1235895 (=> (not res!824045) (not e!700658))))

(assert (=> b!1235895 (= res!824045 (not (contains!7298 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824043 () Bool)

(assert (=> start!102870 (=> (not res!824043) (not e!700658))))

(assert (=> start!102870 (= res!824043 (and (bvslt (size!38969 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38969 a!3835))))))

(assert (=> start!102870 e!700658))

(declare-fun array_inv!29208 (array!79656) Bool)

(assert (=> start!102870 (array_inv!29208 a!3835)))

(assert (=> start!102870 true))

(declare-fun b!1235890 () Bool)

(declare-fun res!824041 () Bool)

(assert (=> b!1235890 (=> (not res!824041) (not e!700658))))

(assert (=> b!1235890 (= res!824041 (not (contains!7298 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235896 () Bool)

(assert (=> b!1235896 (= e!700657 false)))

(declare-fun lt!560540 () Bool)

(assert (=> b!1235896 (= lt!560540 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235897 () Bool)

(declare-fun res!824040 () Bool)

(assert (=> b!1235897 (=> (not res!824040) (not e!700658))))

(assert (=> b!1235897 (= res!824040 (not (= from!3213 (bvsub (size!38969 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235898 () Bool)

(declare-fun lt!560541 () Unit!40928)

(assert (=> b!1235898 (= e!700660 lt!560541)))

(declare-fun lt!560544 () List!27383)

(assert (=> b!1235898 (= lt!560544 (Cons!27379 (select (arr!38432 a!3835) from!3213) acc!846))))

(declare-fun lt!560543 () Unit!40928)

(declare-fun lemmaListSubSeqRefl!0 (List!27383) Unit!40928)

(assert (=> b!1235898 (= lt!560543 (lemmaListSubSeqRefl!0 lt!560544))))

(declare-fun subseq!553 (List!27383 List!27383) Bool)

(assert (=> b!1235898 (subseq!553 lt!560544 lt!560544)))

(declare-fun lt!560542 () Unit!40928)

(declare-fun subseqTail!46 (List!27383 List!27383) Unit!40928)

(assert (=> b!1235898 (= lt!560542 (subseqTail!46 lt!560544 lt!560544))))

(assert (=> b!1235898 (subseq!553 acc!846 lt!560544)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79656 List!27383 List!27383 (_ BitVec 32)) Unit!40928)

(assert (=> b!1235898 (= lt!560541 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560544 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235898 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102870 res!824043) b!1235892))

(assert (= (and b!1235892 res!824038) b!1235895))

(assert (= (and b!1235895 res!824045) b!1235890))

(assert (= (and b!1235890 res!824041) b!1235891))

(assert (= (and b!1235891 res!824042) b!1235894))

(assert (= (and b!1235894 res!824044) b!1235897))

(assert (= (and b!1235897 res!824040) b!1235889))

(assert (= (and b!1235889 c!120788) b!1235898))

(assert (= (and b!1235889 (not c!120788)) b!1235893))

(assert (= (and b!1235889 res!824039) b!1235896))

(declare-fun m!1139791 () Bool)

(assert (=> b!1235891 m!1139791))

(declare-fun m!1139793 () Bool)

(assert (=> b!1235889 m!1139793))

(assert (=> b!1235889 m!1139793))

(declare-fun m!1139795 () Bool)

(assert (=> b!1235889 m!1139795))

(declare-fun m!1139797 () Bool)

(assert (=> b!1235894 m!1139797))

(declare-fun m!1139799 () Bool)

(assert (=> b!1235896 m!1139799))

(declare-fun m!1139801 () Bool)

(assert (=> start!102870 m!1139801))

(declare-fun m!1139803 () Bool)

(assert (=> b!1235892 m!1139803))

(declare-fun m!1139805 () Bool)

(assert (=> b!1235895 m!1139805))

(declare-fun m!1139807 () Bool)

(assert (=> b!1235898 m!1139807))

(declare-fun m!1139809 () Bool)

(assert (=> b!1235898 m!1139809))

(declare-fun m!1139811 () Bool)

(assert (=> b!1235898 m!1139811))

(declare-fun m!1139813 () Bool)

(assert (=> b!1235898 m!1139813))

(declare-fun m!1139815 () Bool)

(assert (=> b!1235898 m!1139815))

(assert (=> b!1235898 m!1139799))

(assert (=> b!1235898 m!1139793))

(declare-fun m!1139817 () Bool)

(assert (=> b!1235890 m!1139817))

(push 1)

(assert (not b!1235892))

(assert (not b!1235898))

(assert (not b!1235890))

(assert (not start!102870))

(assert (not b!1235894))

(assert (not b!1235891))

(assert (not b!1235889))

(assert (not b!1235895))

(assert (not b!1235896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

