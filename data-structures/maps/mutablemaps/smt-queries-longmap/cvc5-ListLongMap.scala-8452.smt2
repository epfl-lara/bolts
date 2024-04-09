; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102884 () Bool)

(assert start!102884)

(declare-fun b!1236119 () Bool)

(declare-fun e!700743 () Bool)

(assert (=> b!1236119 (= e!700743 (not true))))

(declare-datatypes ((array!79670 0))(
  ( (array!79671 (arr!38439 (Array (_ BitVec 32) (_ BitVec 64))) (size!38976 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79670)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236119 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-datatypes ((Unit!40949 0))(
  ( (Unit!40950) )
))
(declare-fun lt!560667 () Unit!40949)

(declare-datatypes ((List!27390 0))(
  ( (Nil!27387) (Cons!27386 (h!28595 (_ BitVec 64)) (t!40860 List!27390)) )
))
(declare-fun acc!846 () List!27390)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79670 (_ BitVec 32) (_ BitVec 64) List!27390) Unit!40949)

(assert (=> b!1236119 (= lt!560667 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1236120 () Bool)

(declare-fun res!824227 () Bool)

(declare-fun e!700741 () Bool)

(assert (=> b!1236120 (=> (not res!824227) (not e!700741))))

(assert (=> b!1236120 (= res!824227 (not (= from!3213 (bvsub (size!38976 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236121 () Bool)

(assert (=> b!1236121 (= e!700741 e!700743)))

(declare-fun res!824232 () Bool)

(assert (=> b!1236121 (=> (not res!824232) (not e!700743))))

(assert (=> b!1236121 (= res!824232 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38976 a!3835))))))

(declare-fun lt!560668 () Unit!40949)

(declare-fun e!700744 () Unit!40949)

(assert (=> b!1236121 (= lt!560668 e!700744)))

(declare-fun c!120809 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236121 (= c!120809 (validKeyInArray!0 (select (arr!38439 a!3835) from!3213)))))

(declare-fun b!1236122 () Bool)

(declare-fun lt!560671 () Unit!40949)

(assert (=> b!1236122 (= e!700744 lt!560671)))

(declare-fun lt!560670 () List!27390)

(assert (=> b!1236122 (= lt!560670 (Cons!27386 (select (arr!38439 a!3835) from!3213) acc!846))))

(declare-fun lt!560666 () Unit!40949)

(declare-fun lemmaListSubSeqRefl!0 (List!27390) Unit!40949)

(assert (=> b!1236122 (= lt!560666 (lemmaListSubSeqRefl!0 lt!560670))))

(declare-fun subseq!560 (List!27390 List!27390) Bool)

(assert (=> b!1236122 (subseq!560 lt!560670 lt!560670)))

(declare-fun lt!560669 () Unit!40949)

(declare-fun subseqTail!53 (List!27390 List!27390) Unit!40949)

(assert (=> b!1236122 (= lt!560669 (subseqTail!53 lt!560670 lt!560670))))

(assert (=> b!1236122 (subseq!560 acc!846 lt!560670)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79670 List!27390 List!27390 (_ BitVec 32)) Unit!40949)

(assert (=> b!1236122 (= lt!560671 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560670 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79670 (_ BitVec 32) List!27390) Bool)

(assert (=> b!1236122 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1236123 () Bool)

(declare-fun res!824226 () Bool)

(assert (=> b!1236123 (=> (not res!824226) (not e!700741))))

(declare-fun contains!7305 (List!27390 (_ BitVec 64)) Bool)

(assert (=> b!1236123 (= res!824226 (not (contains!7305 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236124 () Bool)

(declare-fun res!824229 () Bool)

(assert (=> b!1236124 (=> (not res!824229) (not e!700741))))

(assert (=> b!1236124 (= res!824229 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!824228 () Bool)

(assert (=> start!102884 (=> (not res!824228) (not e!700741))))

(assert (=> start!102884 (= res!824228 (and (bvslt (size!38976 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38976 a!3835))))))

(assert (=> start!102884 e!700741))

(declare-fun array_inv!29215 (array!79670) Bool)

(assert (=> start!102884 (array_inv!29215 a!3835)))

(assert (=> start!102884 true))

(declare-fun b!1236125 () Bool)

(declare-fun res!824231 () Bool)

(assert (=> b!1236125 (=> (not res!824231) (not e!700741))))

(assert (=> b!1236125 (= res!824231 (contains!7305 acc!846 k!2925))))

(declare-fun b!1236126 () Bool)

(declare-fun res!824230 () Bool)

(assert (=> b!1236126 (=> (not res!824230) (not e!700741))))

(declare-fun noDuplicate!1912 (List!27390) Bool)

(assert (=> b!1236126 (= res!824230 (noDuplicate!1912 acc!846))))

(declare-fun b!1236127 () Bool)

(declare-fun Unit!40951 () Unit!40949)

(assert (=> b!1236127 (= e!700744 Unit!40951)))

(declare-fun b!1236128 () Bool)

(declare-fun res!824234 () Bool)

(assert (=> b!1236128 (=> (not res!824234) (not e!700741))))

(assert (=> b!1236128 (= res!824234 (not (contains!7305 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236129 () Bool)

(declare-fun res!824233 () Bool)

(assert (=> b!1236129 (=> (not res!824233) (not e!700743))))

(assert (=> b!1236129 (= res!824233 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(assert (= (and start!102884 res!824228) b!1236126))

(assert (= (and b!1236126 res!824230) b!1236128))

(assert (= (and b!1236128 res!824234) b!1236123))

(assert (= (and b!1236123 res!824226) b!1236124))

(assert (= (and b!1236124 res!824229) b!1236125))

(assert (= (and b!1236125 res!824231) b!1236120))

(assert (= (and b!1236120 res!824227) b!1236121))

(assert (= (and b!1236121 c!120809) b!1236122))

(assert (= (and b!1236121 (not c!120809)) b!1236127))

(assert (= (and b!1236121 res!824232) b!1236129))

(assert (= (and b!1236129 res!824233) b!1236119))

(declare-fun m!1140011 () Bool)

(assert (=> start!102884 m!1140011))

(declare-fun m!1140013 () Bool)

(assert (=> b!1236119 m!1140013))

(declare-fun m!1140015 () Bool)

(assert (=> b!1236119 m!1140015))

(declare-fun m!1140017 () Bool)

(assert (=> b!1236122 m!1140017))

(declare-fun m!1140019 () Bool)

(assert (=> b!1236122 m!1140019))

(declare-fun m!1140021 () Bool)

(assert (=> b!1236122 m!1140021))

(declare-fun m!1140023 () Bool)

(assert (=> b!1236122 m!1140023))

(declare-fun m!1140025 () Bool)

(assert (=> b!1236122 m!1140025))

(declare-fun m!1140027 () Bool)

(assert (=> b!1236122 m!1140027))

(declare-fun m!1140029 () Bool)

(assert (=> b!1236122 m!1140029))

(declare-fun m!1140031 () Bool)

(assert (=> b!1236123 m!1140031))

(declare-fun m!1140033 () Bool)

(assert (=> b!1236124 m!1140033))

(assert (=> b!1236121 m!1140023))

(assert (=> b!1236121 m!1140023))

(declare-fun m!1140035 () Bool)

(assert (=> b!1236121 m!1140035))

(assert (=> b!1236129 m!1140021))

(declare-fun m!1140037 () Bool)

(assert (=> b!1236128 m!1140037))

(declare-fun m!1140039 () Bool)

(assert (=> b!1236126 m!1140039))

(declare-fun m!1140041 () Bool)

(assert (=> b!1236125 m!1140041))

(push 1)

