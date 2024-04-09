; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103014 () Bool)

(assert start!103014)

(declare-fun b!1237085 () Bool)

(declare-fun res!825080 () Bool)

(declare-fun e!701209 () Bool)

(assert (=> b!1237085 (=> (not res!825080) (not e!701209))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79739 0))(
  ( (array!79740 (arr!38472 (Array (_ BitVec 32) (_ BitVec 64))) (size!39009 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79739)

(assert (=> b!1237085 (= res!825080 (not (= from!3213 (bvsub (size!39009 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237086 () Bool)

(assert (=> b!1237086 (= e!701209 (not true))))

(declare-datatypes ((List!27423 0))(
  ( (Nil!27420) (Cons!27419 (h!28628 (_ BitVec 64)) (t!40893 List!27423)) )
))
(declare-fun acc!846 () List!27423)

(declare-fun lt!560895 () List!27423)

(declare-fun subseq!575 (List!27423 List!27423) Bool)

(assert (=> b!1237086 (subseq!575 acc!846 lt!560895)))

(declare-datatypes ((Unit!40990 0))(
  ( (Unit!40991) )
))
(declare-fun lt!560896 () Unit!40990)

(declare-fun subseqTail!62 (List!27423 List!27423) Unit!40990)

(assert (=> b!1237086 (= lt!560896 (subseqTail!62 lt!560895 lt!560895))))

(assert (=> b!1237086 (subseq!575 lt!560895 lt!560895)))

(declare-fun lt!560894 () Unit!40990)

(declare-fun lemmaListSubSeqRefl!0 (List!27423) Unit!40990)

(assert (=> b!1237086 (= lt!560894 (lemmaListSubSeqRefl!0 lt!560895))))

(assert (=> b!1237086 (= lt!560895 (Cons!27419 (select (arr!38472 a!3835) from!3213) acc!846))))

(declare-fun b!1237087 () Bool)

(declare-fun res!825083 () Bool)

(assert (=> b!1237087 (=> (not res!825083) (not e!701209))))

(declare-fun contains!7338 (List!27423 (_ BitVec 64)) Bool)

(assert (=> b!1237087 (= res!825083 (not (contains!7338 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!825079 () Bool)

(assert (=> start!103014 (=> (not res!825079) (not e!701209))))

(assert (=> start!103014 (= res!825079 (and (bvslt (size!39009 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39009 a!3835))))))

(assert (=> start!103014 e!701209))

(declare-fun array_inv!29248 (array!79739) Bool)

(assert (=> start!103014 (array_inv!29248 a!3835)))

(assert (=> start!103014 true))

(declare-fun b!1237088 () Bool)

(declare-fun res!825078 () Bool)

(assert (=> b!1237088 (=> (not res!825078) (not e!701209))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237088 (= res!825078 (contains!7338 acc!846 k!2925))))

(declare-fun b!1237089 () Bool)

(declare-fun res!825081 () Bool)

(assert (=> b!1237089 (=> (not res!825081) (not e!701209))))

(declare-fun arrayNoDuplicates!0 (array!79739 (_ BitVec 32) List!27423) Bool)

(assert (=> b!1237089 (= res!825081 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237090 () Bool)

(declare-fun res!825082 () Bool)

(assert (=> b!1237090 (=> (not res!825082) (not e!701209))))

(declare-fun noDuplicate!1945 (List!27423) Bool)

(assert (=> b!1237090 (= res!825082 (noDuplicate!1945 acc!846))))

(declare-fun b!1237091 () Bool)

(declare-fun res!825085 () Bool)

(assert (=> b!1237091 (=> (not res!825085) (not e!701209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237091 (= res!825085 (validKeyInArray!0 (select (arr!38472 a!3835) from!3213)))))

(declare-fun b!1237092 () Bool)

(declare-fun res!825084 () Bool)

(assert (=> b!1237092 (=> (not res!825084) (not e!701209))))

(assert (=> b!1237092 (= res!825084 (not (contains!7338 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103014 res!825079) b!1237090))

(assert (= (and b!1237090 res!825082) b!1237092))

(assert (= (and b!1237092 res!825084) b!1237087))

(assert (= (and b!1237087 res!825083) b!1237089))

(assert (= (and b!1237089 res!825081) b!1237088))

(assert (= (and b!1237088 res!825078) b!1237085))

(assert (= (and b!1237085 res!825080) b!1237091))

(assert (= (and b!1237091 res!825085) b!1237086))

(declare-fun m!1140839 () Bool)

(assert (=> b!1237086 m!1140839))

(declare-fun m!1140841 () Bool)

(assert (=> b!1237086 m!1140841))

(declare-fun m!1140843 () Bool)

(assert (=> b!1237086 m!1140843))

(declare-fun m!1140845 () Bool)

(assert (=> b!1237086 m!1140845))

(declare-fun m!1140847 () Bool)

(assert (=> b!1237086 m!1140847))

(declare-fun m!1140849 () Bool)

(assert (=> b!1237090 m!1140849))

(declare-fun m!1140851 () Bool)

(assert (=> b!1237092 m!1140851))

(declare-fun m!1140853 () Bool)

(assert (=> start!103014 m!1140853))

(declare-fun m!1140855 () Bool)

(assert (=> b!1237087 m!1140855))

(assert (=> b!1237091 m!1140847))

(assert (=> b!1237091 m!1140847))

(declare-fun m!1140857 () Bool)

(assert (=> b!1237091 m!1140857))

(declare-fun m!1140859 () Bool)

(assert (=> b!1237089 m!1140859))

(declare-fun m!1140861 () Bool)

(assert (=> b!1237088 m!1140861))

(push 1)

(assert (not b!1237087))

(assert (not b!1237086))

(assert (not b!1237089))

(assert (not b!1237092))

(assert (not start!103014))

(assert (not b!1237090))

(assert (not b!1237088))

(assert (not b!1237091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

