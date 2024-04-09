; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103018 () Bool)

(assert start!103018)

(declare-fun b!1237133 () Bool)

(declare-fun res!825126 () Bool)

(declare-fun e!701221 () Bool)

(assert (=> b!1237133 (=> (not res!825126) (not e!701221))))

(declare-datatypes ((List!27425 0))(
  ( (Nil!27422) (Cons!27421 (h!28630 (_ BitVec 64)) (t!40895 List!27425)) )
))
(declare-fun acc!846 () List!27425)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79743 0))(
  ( (array!79744 (arr!38474 (Array (_ BitVec 32) (_ BitVec 64))) (size!39011 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79743)

(declare-fun arrayNoDuplicates!0 (array!79743 (_ BitVec 32) List!27425) Bool)

(assert (=> b!1237133 (= res!825126 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237134 () Bool)

(declare-fun res!825130 () Bool)

(assert (=> b!1237134 (=> (not res!825130) (not e!701221))))

(assert (=> b!1237134 (= res!825130 (not (= from!3213 (bvsub (size!39011 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237136 () Bool)

(declare-fun res!825129 () Bool)

(assert (=> b!1237136 (=> (not res!825129) (not e!701221))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7340 (List!27425 (_ BitVec 64)) Bool)

(assert (=> b!1237136 (= res!825129 (contains!7340 acc!846 k!2925))))

(declare-fun b!1237137 () Bool)

(declare-fun res!825127 () Bool)

(assert (=> b!1237137 (=> (not res!825127) (not e!701221))))

(assert (=> b!1237137 (= res!825127 (not (contains!7340 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237138 () Bool)

(declare-fun res!825133 () Bool)

(assert (=> b!1237138 (=> (not res!825133) (not e!701221))))

(assert (=> b!1237138 (= res!825133 (not (contains!7340 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237139 () Bool)

(assert (=> b!1237139 (= e!701221 (not true))))

(declare-fun lt!560913 () List!27425)

(declare-fun subseq!577 (List!27425 List!27425) Bool)

(assert (=> b!1237139 (subseq!577 acc!846 lt!560913)))

(declare-datatypes ((Unit!40994 0))(
  ( (Unit!40995) )
))
(declare-fun lt!560914 () Unit!40994)

(declare-fun subseqTail!64 (List!27425 List!27425) Unit!40994)

(assert (=> b!1237139 (= lt!560914 (subseqTail!64 lt!560913 lt!560913))))

(assert (=> b!1237139 (subseq!577 lt!560913 lt!560913)))

(declare-fun lt!560912 () Unit!40994)

(declare-fun lemmaListSubSeqRefl!0 (List!27425) Unit!40994)

(assert (=> b!1237139 (= lt!560912 (lemmaListSubSeqRefl!0 lt!560913))))

(assert (=> b!1237139 (= lt!560913 (Cons!27421 (select (arr!38474 a!3835) from!3213) acc!846))))

(declare-fun b!1237140 () Bool)

(declare-fun res!825131 () Bool)

(assert (=> b!1237140 (=> (not res!825131) (not e!701221))))

(declare-fun noDuplicate!1947 (List!27425) Bool)

(assert (=> b!1237140 (= res!825131 (noDuplicate!1947 acc!846))))

(declare-fun b!1237135 () Bool)

(declare-fun res!825128 () Bool)

(assert (=> b!1237135 (=> (not res!825128) (not e!701221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237135 (= res!825128 (validKeyInArray!0 (select (arr!38474 a!3835) from!3213)))))

(declare-fun res!825132 () Bool)

(assert (=> start!103018 (=> (not res!825132) (not e!701221))))

(assert (=> start!103018 (= res!825132 (and (bvslt (size!39011 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39011 a!3835))))))

(assert (=> start!103018 e!701221))

(declare-fun array_inv!29250 (array!79743) Bool)

(assert (=> start!103018 (array_inv!29250 a!3835)))

(assert (=> start!103018 true))

(assert (= (and start!103018 res!825132) b!1237140))

(assert (= (and b!1237140 res!825131) b!1237137))

(assert (= (and b!1237137 res!825127) b!1237138))

(assert (= (and b!1237138 res!825133) b!1237133))

(assert (= (and b!1237133 res!825126) b!1237136))

(assert (= (and b!1237136 res!825129) b!1237134))

(assert (= (and b!1237134 res!825130) b!1237135))

(assert (= (and b!1237135 res!825128) b!1237139))

(declare-fun m!1140887 () Bool)

(assert (=> b!1237140 m!1140887))

(declare-fun m!1140889 () Bool)

(assert (=> b!1237137 m!1140889))

(declare-fun m!1140891 () Bool)

(assert (=> b!1237135 m!1140891))

(assert (=> b!1237135 m!1140891))

(declare-fun m!1140893 () Bool)

(assert (=> b!1237135 m!1140893))

(declare-fun m!1140895 () Bool)

(assert (=> b!1237136 m!1140895))

(declare-fun m!1140897 () Bool)

(assert (=> b!1237139 m!1140897))

(declare-fun m!1140899 () Bool)

(assert (=> b!1237139 m!1140899))

(declare-fun m!1140901 () Bool)

(assert (=> b!1237139 m!1140901))

(declare-fun m!1140903 () Bool)

(assert (=> b!1237139 m!1140903))

(assert (=> b!1237139 m!1140891))

(declare-fun m!1140905 () Bool)

(assert (=> b!1237138 m!1140905))

(declare-fun m!1140907 () Bool)

(assert (=> start!103018 m!1140907))

(declare-fun m!1140909 () Bool)

(assert (=> b!1237133 m!1140909))

(push 1)

(assert (not b!1237137))

(assert (not b!1237139))

(assert (not b!1237138))

(assert (not start!103018))

(assert (not b!1237133))

(assert (not b!1237140))

(assert (not b!1237136))

(assert (not b!1237135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

