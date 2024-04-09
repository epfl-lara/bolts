; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102882 () Bool)

(assert start!102882)

(declare-fun b!1236086 () Bool)

(declare-fun res!824204 () Bool)

(declare-fun e!700729 () Bool)

(assert (=> b!1236086 (=> (not res!824204) (not e!700729))))

(declare-datatypes ((List!27389 0))(
  ( (Nil!27386) (Cons!27385 (h!28594 (_ BitVec 64)) (t!40859 List!27389)) )
))
(declare-fun acc!846 () List!27389)

(declare-fun noDuplicate!1911 (List!27389) Bool)

(assert (=> b!1236086 (= res!824204 (noDuplicate!1911 acc!846))))

(declare-fun b!1236087 () Bool)

(declare-fun res!824201 () Bool)

(declare-fun e!700730 () Bool)

(assert (=> b!1236087 (=> (not res!824201) (not e!700730))))

(declare-datatypes ((array!79668 0))(
  ( (array!79669 (arr!38438 (Array (_ BitVec 32) (_ BitVec 64))) (size!38975 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79668)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79668 (_ BitVec 32) List!27389) Bool)

(assert (=> b!1236087 (= res!824201 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1236088 () Bool)

(declare-datatypes ((Unit!40946 0))(
  ( (Unit!40947) )
))
(declare-fun e!700732 () Unit!40946)

(declare-fun Unit!40948 () Unit!40946)

(assert (=> b!1236088 (= e!700732 Unit!40948)))

(declare-fun b!1236089 () Bool)

(declare-fun res!824202 () Bool)

(assert (=> b!1236089 (=> (not res!824202) (not e!700729))))

(assert (=> b!1236089 (= res!824202 (not (= from!3213 (bvsub (size!38975 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236090 () Bool)

(assert (=> b!1236090 (= e!700729 e!700730)))

(declare-fun res!824207 () Bool)

(assert (=> b!1236090 (=> (not res!824207) (not e!700730))))

(assert (=> b!1236090 (= res!824207 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38975 a!3835))))))

(declare-fun lt!560651 () Unit!40946)

(assert (=> b!1236090 (= lt!560651 e!700732)))

(declare-fun c!120806 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236090 (= c!120806 (validKeyInArray!0 (select (arr!38438 a!3835) from!3213)))))

(declare-fun b!1236091 () Bool)

(declare-fun res!824199 () Bool)

(assert (=> b!1236091 (=> (not res!824199) (not e!700729))))

(assert (=> b!1236091 (= res!824199 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236092 () Bool)

(declare-fun res!824205 () Bool)

(assert (=> b!1236092 (=> (not res!824205) (not e!700729))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7304 (List!27389 (_ BitVec 64)) Bool)

(assert (=> b!1236092 (= res!824205 (contains!7304 acc!846 k!2925))))

(declare-fun b!1236093 () Bool)

(assert (=> b!1236093 (= e!700730 (not true))))

(declare-fun arrayContainsKey!0 (array!79668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236093 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560652 () Unit!40946)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79668 (_ BitVec 32) (_ BitVec 64) List!27389) Unit!40946)

(assert (=> b!1236093 (= lt!560652 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1236094 () Bool)

(declare-fun res!824200 () Bool)

(assert (=> b!1236094 (=> (not res!824200) (not e!700729))))

(assert (=> b!1236094 (= res!824200 (not (contains!7304 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824203 () Bool)

(assert (=> start!102882 (=> (not res!824203) (not e!700729))))

(assert (=> start!102882 (= res!824203 (and (bvslt (size!38975 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38975 a!3835))))))

(assert (=> start!102882 e!700729))

(declare-fun array_inv!29214 (array!79668) Bool)

(assert (=> start!102882 (array_inv!29214 a!3835)))

(assert (=> start!102882 true))

(declare-fun b!1236095 () Bool)

(declare-fun res!824206 () Bool)

(assert (=> b!1236095 (=> (not res!824206) (not e!700729))))

(assert (=> b!1236095 (= res!824206 (not (contains!7304 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236096 () Bool)

(declare-fun lt!560653 () Unit!40946)

(assert (=> b!1236096 (= e!700732 lt!560653)))

(declare-fun lt!560648 () List!27389)

(assert (=> b!1236096 (= lt!560648 (Cons!27385 (select (arr!38438 a!3835) from!3213) acc!846))))

(declare-fun lt!560650 () Unit!40946)

(declare-fun lemmaListSubSeqRefl!0 (List!27389) Unit!40946)

(assert (=> b!1236096 (= lt!560650 (lemmaListSubSeqRefl!0 lt!560648))))

(declare-fun subseq!559 (List!27389 List!27389) Bool)

(assert (=> b!1236096 (subseq!559 lt!560648 lt!560648)))

(declare-fun lt!560649 () Unit!40946)

(declare-fun subseqTail!52 (List!27389 List!27389) Unit!40946)

(assert (=> b!1236096 (= lt!560649 (subseqTail!52 lt!560648 lt!560648))))

(assert (=> b!1236096 (subseq!559 acc!846 lt!560648)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79668 List!27389 List!27389 (_ BitVec 32)) Unit!40946)

(assert (=> b!1236096 (= lt!560653 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560648 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1236096 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102882 res!824203) b!1236086))

(assert (= (and b!1236086 res!824204) b!1236094))

(assert (= (and b!1236094 res!824200) b!1236095))

(assert (= (and b!1236095 res!824206) b!1236091))

(assert (= (and b!1236091 res!824199) b!1236092))

(assert (= (and b!1236092 res!824205) b!1236089))

(assert (= (and b!1236089 res!824202) b!1236090))

(assert (= (and b!1236090 c!120806) b!1236096))

(assert (= (and b!1236090 (not c!120806)) b!1236088))

(assert (= (and b!1236090 res!824207) b!1236087))

(assert (= (and b!1236087 res!824201) b!1236093))

(declare-fun m!1139979 () Bool)

(assert (=> start!102882 m!1139979))

(declare-fun m!1139981 () Bool)

(assert (=> b!1236092 m!1139981))

(declare-fun m!1139983 () Bool)

(assert (=> b!1236095 m!1139983))

(declare-fun m!1139985 () Bool)

(assert (=> b!1236090 m!1139985))

(assert (=> b!1236090 m!1139985))

(declare-fun m!1139987 () Bool)

(assert (=> b!1236090 m!1139987))

(declare-fun m!1139989 () Bool)

(assert (=> b!1236096 m!1139989))

(declare-fun m!1139991 () Bool)

(assert (=> b!1236096 m!1139991))

(declare-fun m!1139993 () Bool)

(assert (=> b!1236096 m!1139993))

(declare-fun m!1139995 () Bool)

(assert (=> b!1236096 m!1139995))

(declare-fun m!1139997 () Bool)

(assert (=> b!1236096 m!1139997))

(declare-fun m!1139999 () Bool)

(assert (=> b!1236096 m!1139999))

(assert (=> b!1236096 m!1139985))

(assert (=> b!1236087 m!1139999))

(declare-fun m!1140001 () Bool)

(assert (=> b!1236094 m!1140001))

(declare-fun m!1140003 () Bool)

(assert (=> b!1236091 m!1140003))

(declare-fun m!1140005 () Bool)

(assert (=> b!1236093 m!1140005))

(declare-fun m!1140007 () Bool)

(assert (=> b!1236093 m!1140007))

(declare-fun m!1140009 () Bool)

(assert (=> b!1236086 m!1140009))

(push 1)

(assert (not b!1236095))

(assert (not b!1236086))

(assert (not b!1236096))

(assert (not b!1236093))

(assert (not b!1236094))

(assert (not b!1236091))

(assert (not b!1236090))

(assert (not b!1236092))

(assert (not start!102882))

(assert (not b!1236087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

