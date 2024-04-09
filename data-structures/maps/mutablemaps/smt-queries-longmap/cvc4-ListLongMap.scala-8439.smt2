; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102810 () Bool)

(assert start!102810)

(declare-fun b!1234933 () Bool)

(declare-fun res!823212 () Bool)

(declare-fun e!700327 () Bool)

(assert (=> b!1234933 (=> (not res!823212) (not e!700327))))

(declare-datatypes ((List!27353 0))(
  ( (Nil!27350) (Cons!27349 (h!28558 (_ BitVec 64)) (t!40823 List!27353)) )
))
(declare-fun acc!846 () List!27353)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7268 (List!27353 (_ BitVec 64)) Bool)

(assert (=> b!1234933 (= res!823212 (contains!7268 acc!846 k!2925))))

(declare-fun res!823217 () Bool)

(assert (=> start!102810 (=> (not res!823217) (not e!700327))))

(declare-datatypes ((array!79596 0))(
  ( (array!79597 (arr!38402 (Array (_ BitVec 32) (_ BitVec 64))) (size!38939 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79596)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102810 (= res!823217 (and (bvslt (size!38939 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38939 a!3835))))))

(assert (=> start!102810 e!700327))

(declare-fun array_inv!29178 (array!79596) Bool)

(assert (=> start!102810 (array_inv!29178 a!3835)))

(assert (=> start!102810 true))

(declare-fun b!1234934 () Bool)

(declare-fun res!823216 () Bool)

(assert (=> b!1234934 (=> (not res!823216) (not e!700327))))

(declare-fun noDuplicate!1875 (List!27353) Bool)

(assert (=> b!1234934 (= res!823216 (noDuplicate!1875 acc!846))))

(declare-fun b!1234935 () Bool)

(declare-fun res!823210 () Bool)

(assert (=> b!1234935 (=> (not res!823210) (not e!700327))))

(assert (=> b!1234935 (= res!823210 (not (contains!7268 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234936 () Bool)

(declare-fun res!823208 () Bool)

(declare-fun e!700326 () Bool)

(assert (=> b!1234936 (=> res!823208 e!700326)))

(declare-fun lt!560028 () List!27353)

(assert (=> b!1234936 (= res!823208 (contains!7268 lt!560028 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234937 () Bool)

(declare-fun res!823206 () Bool)

(assert (=> b!1234937 (=> res!823206 e!700326)))

(assert (=> b!1234937 (= res!823206 (contains!7268 lt!560028 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234938 () Bool)

(assert (=> b!1234938 (= e!700327 (not e!700326))))

(declare-fun res!823209 () Bool)

(assert (=> b!1234938 (=> res!823209 e!700326)))

(assert (=> b!1234938 (= res!823209 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!523 (List!27353 List!27353) Bool)

(assert (=> b!1234938 (subseq!523 acc!846 lt!560028)))

(declare-datatypes ((Unit!40848 0))(
  ( (Unit!40849) )
))
(declare-fun lt!560031 () Unit!40848)

(declare-fun subseqTail!16 (List!27353 List!27353) Unit!40848)

(assert (=> b!1234938 (= lt!560031 (subseqTail!16 lt!560028 lt!560028))))

(assert (=> b!1234938 (subseq!523 lt!560028 lt!560028)))

(declare-fun lt!560029 () Unit!40848)

(declare-fun lemmaListSubSeqRefl!0 (List!27353) Unit!40848)

(assert (=> b!1234938 (= lt!560029 (lemmaListSubSeqRefl!0 lt!560028))))

(assert (=> b!1234938 (= lt!560028 (Cons!27349 (select (arr!38402 a!3835) from!3213) acc!846))))

(declare-fun b!1234939 () Bool)

(declare-fun res!823211 () Bool)

(assert (=> b!1234939 (=> (not res!823211) (not e!700327))))

(assert (=> b!1234939 (= res!823211 (not (contains!7268 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234940 () Bool)

(declare-fun res!823214 () Bool)

(assert (=> b!1234940 (=> (not res!823214) (not e!700327))))

(assert (=> b!1234940 (= res!823214 (not (= from!3213 (bvsub (size!38939 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234941 () Bool)

(declare-fun res!823215 () Bool)

(assert (=> b!1234941 (=> res!823215 e!700326)))

(assert (=> b!1234941 (= res!823215 (not (noDuplicate!1875 lt!560028)))))

(declare-fun b!1234942 () Bool)

(declare-fun res!823213 () Bool)

(assert (=> b!1234942 (=> (not res!823213) (not e!700327))))

(declare-fun arrayNoDuplicates!0 (array!79596 (_ BitVec 32) List!27353) Bool)

(assert (=> b!1234942 (= res!823213 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234943 () Bool)

(assert (=> b!1234943 (= e!700326 true)))

(declare-fun lt!560032 () Bool)

(assert (=> b!1234943 (= lt!560032 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560028))))

(declare-fun lt!560030 () Unit!40848)

(declare-fun noDuplicateSubseq!70 (List!27353 List!27353) Unit!40848)

(assert (=> b!1234943 (= lt!560030 (noDuplicateSubseq!70 acc!846 lt!560028))))

(declare-fun b!1234944 () Bool)

(declare-fun res!823207 () Bool)

(assert (=> b!1234944 (=> (not res!823207) (not e!700327))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234944 (= res!823207 (validKeyInArray!0 (select (arr!38402 a!3835) from!3213)))))

(assert (= (and start!102810 res!823217) b!1234934))

(assert (= (and b!1234934 res!823216) b!1234935))

(assert (= (and b!1234935 res!823210) b!1234939))

(assert (= (and b!1234939 res!823211) b!1234942))

(assert (= (and b!1234942 res!823213) b!1234933))

(assert (= (and b!1234933 res!823212) b!1234940))

(assert (= (and b!1234940 res!823214) b!1234944))

(assert (= (and b!1234944 res!823207) b!1234938))

(assert (= (and b!1234938 (not res!823209)) b!1234941))

(assert (= (and b!1234941 (not res!823215)) b!1234937))

(assert (= (and b!1234937 (not res!823206)) b!1234936))

(assert (= (and b!1234936 (not res!823208)) b!1234943))

(declare-fun m!1138891 () Bool)

(assert (=> b!1234936 m!1138891))

(declare-fun m!1138893 () Bool)

(assert (=> b!1234937 m!1138893))

(declare-fun m!1138895 () Bool)

(assert (=> b!1234943 m!1138895))

(declare-fun m!1138897 () Bool)

(assert (=> b!1234943 m!1138897))

(declare-fun m!1138899 () Bool)

(assert (=> start!102810 m!1138899))

(declare-fun m!1138901 () Bool)

(assert (=> b!1234944 m!1138901))

(assert (=> b!1234944 m!1138901))

(declare-fun m!1138903 () Bool)

(assert (=> b!1234944 m!1138903))

(declare-fun m!1138905 () Bool)

(assert (=> b!1234934 m!1138905))

(declare-fun m!1138907 () Bool)

(assert (=> b!1234933 m!1138907))

(declare-fun m!1138909 () Bool)

(assert (=> b!1234941 m!1138909))

(declare-fun m!1138911 () Bool)

(assert (=> b!1234939 m!1138911))

(declare-fun m!1138913 () Bool)

(assert (=> b!1234935 m!1138913))

(declare-fun m!1138915 () Bool)

(assert (=> b!1234938 m!1138915))

(declare-fun m!1138917 () Bool)

(assert (=> b!1234938 m!1138917))

(declare-fun m!1138919 () Bool)

(assert (=> b!1234938 m!1138919))

(declare-fun m!1138921 () Bool)

(assert (=> b!1234938 m!1138921))

(assert (=> b!1234938 m!1138901))

(declare-fun m!1138923 () Bool)

(assert (=> b!1234942 m!1138923))

(push 1)

(assert (not b!1234934))

(assert (not b!1234936))

(assert (not b!1234942))

(assert (not b!1234938))

(assert (not b!1234935))

(assert (not b!1234944))

(assert (not b!1234933))

(assert (not b!1234939))

(assert (not b!1234937))

(assert (not start!102810))

(assert (not b!1234943))

(assert (not b!1234941))

(check-sat)

(pop 1)

(push 1)

