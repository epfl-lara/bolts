; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102806 () Bool)

(assert start!102806)

(declare-fun b!1234861 () Bool)

(declare-fun res!823144 () Bool)

(declare-fun e!700309 () Bool)

(assert (=> b!1234861 (=> (not res!823144) (not e!700309))))

(declare-datatypes ((List!27351 0))(
  ( (Nil!27348) (Cons!27347 (h!28556 (_ BitVec 64)) (t!40821 List!27351)) )
))
(declare-fun acc!846 () List!27351)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7266 (List!27351 (_ BitVec 64)) Bool)

(assert (=> b!1234861 (= res!823144 (contains!7266 acc!846 k!2925))))

(declare-fun b!1234862 () Bool)

(declare-fun res!823135 () Bool)

(declare-fun e!700307 () Bool)

(assert (=> b!1234862 (=> res!823135 e!700307)))

(declare-fun lt!559998 () List!27351)

(declare-fun noDuplicate!1873 (List!27351) Bool)

(assert (=> b!1234862 (= res!823135 (not (noDuplicate!1873 lt!559998)))))

(declare-fun b!1234863 () Bool)

(declare-fun res!823143 () Bool)

(assert (=> b!1234863 (=> (not res!823143) (not e!700309))))

(declare-datatypes ((array!79592 0))(
  ( (array!79593 (arr!38400 (Array (_ BitVec 32) (_ BitVec 64))) (size!38937 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79592)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79592 (_ BitVec 32) List!27351) Bool)

(assert (=> b!1234863 (= res!823143 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234864 () Bool)

(assert (=> b!1234864 (= e!700307 true)))

(declare-fun lt!559999 () Bool)

(assert (=> b!1234864 (= lt!559999 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!559998))))

(declare-datatypes ((Unit!40844 0))(
  ( (Unit!40845) )
))
(declare-fun lt!560001 () Unit!40844)

(declare-fun noDuplicateSubseq!68 (List!27351 List!27351) Unit!40844)

(assert (=> b!1234864 (= lt!560001 (noDuplicateSubseq!68 acc!846 lt!559998))))

(declare-fun b!1234865 () Bool)

(declare-fun res!823137 () Bool)

(assert (=> b!1234865 (=> (not res!823137) (not e!700309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234865 (= res!823137 (validKeyInArray!0 (select (arr!38400 a!3835) from!3213)))))

(declare-fun res!823141 () Bool)

(assert (=> start!102806 (=> (not res!823141) (not e!700309))))

(assert (=> start!102806 (= res!823141 (and (bvslt (size!38937 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38937 a!3835))))))

(assert (=> start!102806 e!700309))

(declare-fun array_inv!29176 (array!79592) Bool)

(assert (=> start!102806 (array_inv!29176 a!3835)))

(assert (=> start!102806 true))

(declare-fun b!1234866 () Bool)

(declare-fun res!823145 () Bool)

(assert (=> b!1234866 (=> (not res!823145) (not e!700309))))

(assert (=> b!1234866 (= res!823145 (not (= from!3213 (bvsub (size!38937 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234867 () Bool)

(declare-fun res!823139 () Bool)

(assert (=> b!1234867 (=> (not res!823139) (not e!700309))))

(assert (=> b!1234867 (= res!823139 (noDuplicate!1873 acc!846))))

(declare-fun b!1234868 () Bool)

(declare-fun res!823140 () Bool)

(assert (=> b!1234868 (=> res!823140 e!700307)))

(assert (=> b!1234868 (= res!823140 (contains!7266 lt!559998 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234869 () Bool)

(declare-fun res!823134 () Bool)

(assert (=> b!1234869 (=> (not res!823134) (not e!700309))))

(assert (=> b!1234869 (= res!823134 (not (contains!7266 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234870 () Bool)

(declare-fun res!823142 () Bool)

(assert (=> b!1234870 (=> (not res!823142) (not e!700309))))

(assert (=> b!1234870 (= res!823142 (not (contains!7266 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234871 () Bool)

(declare-fun res!823138 () Bool)

(assert (=> b!1234871 (=> res!823138 e!700307)))

(assert (=> b!1234871 (= res!823138 (contains!7266 lt!559998 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234872 () Bool)

(assert (=> b!1234872 (= e!700309 (not e!700307))))

(declare-fun res!823136 () Bool)

(assert (=> b!1234872 (=> res!823136 e!700307)))

(assert (=> b!1234872 (= res!823136 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!521 (List!27351 List!27351) Bool)

(assert (=> b!1234872 (subseq!521 acc!846 lt!559998)))

(declare-fun lt!560002 () Unit!40844)

(declare-fun subseqTail!14 (List!27351 List!27351) Unit!40844)

(assert (=> b!1234872 (= lt!560002 (subseqTail!14 lt!559998 lt!559998))))

(assert (=> b!1234872 (subseq!521 lt!559998 lt!559998)))

(declare-fun lt!560000 () Unit!40844)

(declare-fun lemmaListSubSeqRefl!0 (List!27351) Unit!40844)

(assert (=> b!1234872 (= lt!560000 (lemmaListSubSeqRefl!0 lt!559998))))

(assert (=> b!1234872 (= lt!559998 (Cons!27347 (select (arr!38400 a!3835) from!3213) acc!846))))

(assert (= (and start!102806 res!823141) b!1234867))

(assert (= (and b!1234867 res!823139) b!1234870))

(assert (= (and b!1234870 res!823142) b!1234869))

(assert (= (and b!1234869 res!823134) b!1234863))

(assert (= (and b!1234863 res!823143) b!1234861))

(assert (= (and b!1234861 res!823144) b!1234866))

(assert (= (and b!1234866 res!823145) b!1234865))

(assert (= (and b!1234865 res!823137) b!1234872))

(assert (= (and b!1234872 (not res!823136)) b!1234862))

(assert (= (and b!1234862 (not res!823135)) b!1234868))

(assert (= (and b!1234868 (not res!823140)) b!1234871))

(assert (= (and b!1234871 (not res!823138)) b!1234864))

(declare-fun m!1138823 () Bool)

(assert (=> b!1234864 m!1138823))

(declare-fun m!1138825 () Bool)

(assert (=> b!1234864 m!1138825))

(declare-fun m!1138827 () Bool)

(assert (=> b!1234863 m!1138827))

(declare-fun m!1138829 () Bool)

(assert (=> b!1234872 m!1138829))

(declare-fun m!1138831 () Bool)

(assert (=> b!1234872 m!1138831))

(declare-fun m!1138833 () Bool)

(assert (=> b!1234872 m!1138833))

(declare-fun m!1138835 () Bool)

(assert (=> b!1234872 m!1138835))

(declare-fun m!1138837 () Bool)

(assert (=> b!1234872 m!1138837))

(declare-fun m!1138839 () Bool)

(assert (=> b!1234870 m!1138839))

(declare-fun m!1138841 () Bool)

(assert (=> b!1234861 m!1138841))

(declare-fun m!1138843 () Bool)

(assert (=> b!1234867 m!1138843))

(assert (=> b!1234865 m!1138837))

(assert (=> b!1234865 m!1138837))

(declare-fun m!1138845 () Bool)

(assert (=> b!1234865 m!1138845))

(declare-fun m!1138847 () Bool)

(assert (=> b!1234862 m!1138847))

(declare-fun m!1138849 () Bool)

(assert (=> b!1234869 m!1138849))

(declare-fun m!1138851 () Bool)

(assert (=> b!1234871 m!1138851))

(declare-fun m!1138853 () Bool)

(assert (=> b!1234868 m!1138853))

(declare-fun m!1138855 () Bool)

(assert (=> start!102806 m!1138855))

(push 1)

(assert (not b!1234870))

(assert (not b!1234869))

(assert (not b!1234865))

(assert (not b!1234861))

(assert (not start!102806))

(assert (not b!1234867))

(assert (not b!1234862))

(assert (not b!1234864))

(assert (not b!1234871))

(assert (not b!1234868))

(assert (not b!1234863))

(assert (not b!1234872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

