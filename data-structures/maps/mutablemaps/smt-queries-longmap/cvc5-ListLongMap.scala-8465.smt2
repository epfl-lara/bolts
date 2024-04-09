; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103026 () Bool)

(assert start!103026)

(declare-fun b!1237229 () Bool)

(declare-fun res!825226 () Bool)

(declare-fun e!701245 () Bool)

(assert (=> b!1237229 (=> (not res!825226) (not e!701245))))

(declare-datatypes ((array!79751 0))(
  ( (array!79752 (arr!38478 (Array (_ BitVec 32) (_ BitVec 64))) (size!39015 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79751)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237229 (= res!825226 (validKeyInArray!0 (select (arr!38478 a!3835) from!3213)))))

(declare-fun res!825227 () Bool)

(assert (=> start!103026 (=> (not res!825227) (not e!701245))))

(assert (=> start!103026 (= res!825227 (and (bvslt (size!39015 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39015 a!3835))))))

(assert (=> start!103026 e!701245))

(declare-fun array_inv!29254 (array!79751) Bool)

(assert (=> start!103026 (array_inv!29254 a!3835)))

(assert (=> start!103026 true))

(declare-fun b!1237230 () Bool)

(declare-fun res!825228 () Bool)

(assert (=> b!1237230 (=> (not res!825228) (not e!701245))))

(declare-datatypes ((List!27429 0))(
  ( (Nil!27426) (Cons!27425 (h!28634 (_ BitVec 64)) (t!40899 List!27429)) )
))
(declare-fun acc!846 () List!27429)

(declare-fun contains!7344 (List!27429 (_ BitVec 64)) Bool)

(assert (=> b!1237230 (= res!825228 (not (contains!7344 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237231 () Bool)

(declare-fun res!825225 () Bool)

(assert (=> b!1237231 (=> (not res!825225) (not e!701245))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1237231 (= res!825225 (contains!7344 acc!846 k!2925))))

(declare-fun b!1237232 () Bool)

(declare-fun res!825229 () Bool)

(assert (=> b!1237232 (=> (not res!825229) (not e!701245))))

(assert (=> b!1237232 (= res!825229 (not (contains!7344 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237233 () Bool)

(assert (=> b!1237233 (= e!701245 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000)))))

(declare-fun lt!560949 () List!27429)

(declare-fun subseq!581 (List!27429 List!27429) Bool)

(assert (=> b!1237233 (subseq!581 acc!846 lt!560949)))

(declare-datatypes ((Unit!41002 0))(
  ( (Unit!41003) )
))
(declare-fun lt!560948 () Unit!41002)

(declare-fun subseqTail!68 (List!27429 List!27429) Unit!41002)

(assert (=> b!1237233 (= lt!560948 (subseqTail!68 lt!560949 lt!560949))))

(assert (=> b!1237233 (subseq!581 lt!560949 lt!560949)))

(declare-fun lt!560950 () Unit!41002)

(declare-fun lemmaListSubSeqRefl!0 (List!27429) Unit!41002)

(assert (=> b!1237233 (= lt!560950 (lemmaListSubSeqRefl!0 lt!560949))))

(assert (=> b!1237233 (= lt!560949 (Cons!27425 (select (arr!38478 a!3835) from!3213) acc!846))))

(declare-fun b!1237234 () Bool)

(declare-fun res!825223 () Bool)

(assert (=> b!1237234 (=> (not res!825223) (not e!701245))))

(assert (=> b!1237234 (= res!825223 (not (= from!3213 (bvsub (size!39015 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237235 () Bool)

(declare-fun res!825224 () Bool)

(assert (=> b!1237235 (=> (not res!825224) (not e!701245))))

(declare-fun arrayNoDuplicates!0 (array!79751 (_ BitVec 32) List!27429) Bool)

(assert (=> b!1237235 (= res!825224 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237236 () Bool)

(declare-fun res!825222 () Bool)

(assert (=> b!1237236 (=> (not res!825222) (not e!701245))))

(declare-fun noDuplicate!1951 (List!27429) Bool)

(assert (=> b!1237236 (= res!825222 (noDuplicate!1951 acc!846))))

(assert (= (and start!103026 res!825227) b!1237236))

(assert (= (and b!1237236 res!825222) b!1237230))

(assert (= (and b!1237230 res!825228) b!1237232))

(assert (= (and b!1237232 res!825229) b!1237235))

(assert (= (and b!1237235 res!825224) b!1237231))

(assert (= (and b!1237231 res!825225) b!1237234))

(assert (= (and b!1237234 res!825223) b!1237229))

(assert (= (and b!1237229 res!825226) b!1237233))

(declare-fun m!1140983 () Bool)

(assert (=> start!103026 m!1140983))

(declare-fun m!1140985 () Bool)

(assert (=> b!1237232 m!1140985))

(declare-fun m!1140987 () Bool)

(assert (=> b!1237229 m!1140987))

(assert (=> b!1237229 m!1140987))

(declare-fun m!1140989 () Bool)

(assert (=> b!1237229 m!1140989))

(declare-fun m!1140991 () Bool)

(assert (=> b!1237230 m!1140991))

(declare-fun m!1140993 () Bool)

(assert (=> b!1237233 m!1140993))

(assert (=> b!1237233 m!1140987))

(declare-fun m!1140995 () Bool)

(assert (=> b!1237233 m!1140995))

(declare-fun m!1140997 () Bool)

(assert (=> b!1237233 m!1140997))

(declare-fun m!1140999 () Bool)

(assert (=> b!1237233 m!1140999))

(declare-fun m!1141001 () Bool)

(assert (=> b!1237236 m!1141001))

(declare-fun m!1141003 () Bool)

(assert (=> b!1237235 m!1141003))

(declare-fun m!1141005 () Bool)

(assert (=> b!1237231 m!1141005))

(push 1)

