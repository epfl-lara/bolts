; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103032 () Bool)

(assert start!103032)

(declare-fun b!1237301 () Bool)

(declare-fun res!825297 () Bool)

(declare-fun e!701263 () Bool)

(assert (=> b!1237301 (=> (not res!825297) (not e!701263))))

(declare-datatypes ((List!27432 0))(
  ( (Nil!27429) (Cons!27428 (h!28637 (_ BitVec 64)) (t!40902 List!27432)) )
))
(declare-fun acc!846 () List!27432)

(declare-fun contains!7347 (List!27432 (_ BitVec 64)) Bool)

(assert (=> b!1237301 (= res!825297 (not (contains!7347 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237302 () Bool)

(declare-fun res!825299 () Bool)

(assert (=> b!1237302 (=> (not res!825299) (not e!701263))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79757 0))(
  ( (array!79758 (arr!38481 (Array (_ BitVec 32) (_ BitVec 64))) (size!39018 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79757)

(assert (=> b!1237302 (= res!825299 (not (= from!3213 (bvsub (size!39018 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!825298 () Bool)

(assert (=> start!103032 (=> (not res!825298) (not e!701263))))

(assert (=> start!103032 (= res!825298 (and (bvslt (size!39018 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39018 a!3835))))))

(assert (=> start!103032 e!701263))

(declare-fun array_inv!29257 (array!79757) Bool)

(assert (=> start!103032 (array_inv!29257 a!3835)))

(assert (=> start!103032 true))

(declare-fun b!1237303 () Bool)

(declare-fun res!825300 () Bool)

(assert (=> b!1237303 (=> (not res!825300) (not e!701263))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237303 (= res!825300 (contains!7347 acc!846 k!2925))))

(declare-fun b!1237304 () Bool)

(declare-fun res!825295 () Bool)

(assert (=> b!1237304 (=> (not res!825295) (not e!701263))))

(declare-fun noDuplicate!1954 (List!27432) Bool)

(assert (=> b!1237304 (= res!825295 (noDuplicate!1954 acc!846))))

(declare-fun b!1237305 () Bool)

(declare-fun res!825296 () Bool)

(assert (=> b!1237305 (=> (not res!825296) (not e!701263))))

(declare-fun arrayNoDuplicates!0 (array!79757 (_ BitVec 32) List!27432) Bool)

(assert (=> b!1237305 (= res!825296 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237306 () Bool)

(declare-fun res!825301 () Bool)

(assert (=> b!1237306 (=> (not res!825301) (not e!701263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237306 (= res!825301 (validKeyInArray!0 (select (arr!38481 a!3835) from!3213)))))

(declare-fun b!1237307 () Bool)

(assert (=> b!1237307 (= e!701263 (not true))))

(declare-fun lt!560976 () List!27432)

(declare-fun subseq!584 (List!27432 List!27432) Bool)

(assert (=> b!1237307 (subseq!584 acc!846 lt!560976)))

(declare-datatypes ((Unit!41008 0))(
  ( (Unit!41009) )
))
(declare-fun lt!560977 () Unit!41008)

(declare-fun subseqTail!71 (List!27432 List!27432) Unit!41008)

(assert (=> b!1237307 (= lt!560977 (subseqTail!71 lt!560976 lt!560976))))

(assert (=> b!1237307 (subseq!584 lt!560976 lt!560976)))

(declare-fun lt!560975 () Unit!41008)

(declare-fun lemmaListSubSeqRefl!0 (List!27432) Unit!41008)

(assert (=> b!1237307 (= lt!560975 (lemmaListSubSeqRefl!0 lt!560976))))

(assert (=> b!1237307 (= lt!560976 (Cons!27428 (select (arr!38481 a!3835) from!3213) acc!846))))

(declare-fun b!1237308 () Bool)

(declare-fun res!825294 () Bool)

(assert (=> b!1237308 (=> (not res!825294) (not e!701263))))

(assert (=> b!1237308 (= res!825294 (not (contains!7347 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103032 res!825298) b!1237304))

(assert (= (and b!1237304 res!825295) b!1237301))

(assert (= (and b!1237301 res!825297) b!1237308))

(assert (= (and b!1237308 res!825294) b!1237305))

(assert (= (and b!1237305 res!825296) b!1237303))

(assert (= (and b!1237303 res!825300) b!1237302))

(assert (= (and b!1237302 res!825299) b!1237306))

(assert (= (and b!1237306 res!825301) b!1237307))

(declare-fun m!1141055 () Bool)

(assert (=> b!1237304 m!1141055))

(declare-fun m!1141057 () Bool)

(assert (=> b!1237308 m!1141057))

(declare-fun m!1141059 () Bool)

(assert (=> b!1237303 m!1141059))

(declare-fun m!1141061 () Bool)

(assert (=> b!1237301 m!1141061))

(declare-fun m!1141063 () Bool)

(assert (=> b!1237306 m!1141063))

(assert (=> b!1237306 m!1141063))

(declare-fun m!1141065 () Bool)

(assert (=> b!1237306 m!1141065))

(declare-fun m!1141067 () Bool)

(assert (=> b!1237307 m!1141067))

(declare-fun m!1141069 () Bool)

(assert (=> b!1237307 m!1141069))

(declare-fun m!1141071 () Bool)

(assert (=> b!1237307 m!1141071))

(declare-fun m!1141073 () Bool)

(assert (=> b!1237307 m!1141073))

(assert (=> b!1237307 m!1141063))

(declare-fun m!1141075 () Bool)

(assert (=> b!1237305 m!1141075))

(declare-fun m!1141077 () Bool)

(assert (=> start!103032 m!1141077))

(push 1)

(assert (not b!1237307))

(assert (not b!1237304))

(assert (not start!103032))

(assert (not b!1237306))

(assert (not b!1237303))

(assert (not b!1237301))

(assert (not b!1237308))

(assert (not b!1237305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

