; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102888 () Bool)

(assert start!102888)

(declare-fun b!1236185 () Bool)

(declare-fun res!824288 () Bool)

(declare-fun e!700767 () Bool)

(assert (=> b!1236185 (=> (not res!824288) (not e!700767))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79674 0))(
  ( (array!79675 (arr!38441 (Array (_ BitVec 32) (_ BitVec 64))) (size!38978 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79674)

(assert (=> b!1236185 (= res!824288 (not (= from!3213 (bvsub (size!38978 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236186 () Bool)

(declare-fun res!824280 () Bool)

(assert (=> b!1236186 (=> (not res!824280) (not e!700767))))

(declare-datatypes ((List!27392 0))(
  ( (Nil!27389) (Cons!27388 (h!28597 (_ BitVec 64)) (t!40862 List!27392)) )
))
(declare-fun acc!846 () List!27392)

(declare-fun arrayNoDuplicates!0 (array!79674 (_ BitVec 32) List!27392) Bool)

(assert (=> b!1236186 (= res!824280 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236187 () Bool)

(declare-fun res!824283 () Bool)

(declare-fun e!700768 () Bool)

(assert (=> b!1236187 (=> (not res!824283) (not e!700768))))

(assert (=> b!1236187 (= res!824283 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1236188 () Bool)

(declare-fun res!824287 () Bool)

(assert (=> b!1236188 (=> (not res!824287) (not e!700767))))

(declare-fun noDuplicate!1914 (List!27392) Bool)

(assert (=> b!1236188 (= res!824287 (noDuplicate!1914 acc!846))))

(declare-fun b!1236189 () Bool)

(assert (=> b!1236189 (= e!700767 e!700768)))

(declare-fun res!824284 () Bool)

(assert (=> b!1236189 (=> (not res!824284) (not e!700768))))

(assert (=> b!1236189 (= res!824284 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38978 a!3835))))))

(declare-datatypes ((Unit!40955 0))(
  ( (Unit!40956) )
))
(declare-fun lt!560705 () Unit!40955)

(declare-fun e!700765 () Unit!40955)

(assert (=> b!1236189 (= lt!560705 e!700765)))

(declare-fun c!120815 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236189 (= c!120815 (validKeyInArray!0 (select (arr!38441 a!3835) from!3213)))))

(declare-fun b!1236190 () Bool)

(declare-fun Unit!40957 () Unit!40955)

(assert (=> b!1236190 (= e!700765 Unit!40957)))

(declare-fun b!1236192 () Bool)

(declare-fun res!824282 () Bool)

(assert (=> b!1236192 (=> (not res!824282) (not e!700767))))

(declare-fun contains!7307 (List!27392 (_ BitVec 64)) Bool)

(assert (=> b!1236192 (= res!824282 (not (contains!7307 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236193 () Bool)

(declare-fun res!824281 () Bool)

(assert (=> b!1236193 (=> (not res!824281) (not e!700767))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236193 (= res!824281 (contains!7307 acc!846 k!2925))))

(declare-fun b!1236194 () Bool)

(assert (=> b!1236194 (= e!700768 (not true))))

(declare-fun arrayContainsKey!0 (array!79674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236194 (not (arrayContainsKey!0 a!3835 k!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560703 () Unit!40955)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79674 (_ BitVec 32) (_ BitVec 64) List!27392) Unit!40955)

(assert (=> b!1236194 (= lt!560703 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k!2925 acc!846))))

(declare-fun b!1236195 () Bool)

(declare-fun res!824286 () Bool)

(assert (=> b!1236195 (=> (not res!824286) (not e!700767))))

(assert (=> b!1236195 (= res!824286 (not (contains!7307 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236191 () Bool)

(declare-fun lt!560704 () Unit!40955)

(assert (=> b!1236191 (= e!700765 lt!560704)))

(declare-fun lt!560702 () List!27392)

(assert (=> b!1236191 (= lt!560702 (Cons!27388 (select (arr!38441 a!3835) from!3213) acc!846))))

(declare-fun lt!560706 () Unit!40955)

(declare-fun lemmaListSubSeqRefl!0 (List!27392) Unit!40955)

(assert (=> b!1236191 (= lt!560706 (lemmaListSubSeqRefl!0 lt!560702))))

(declare-fun subseq!562 (List!27392 List!27392) Bool)

(assert (=> b!1236191 (subseq!562 lt!560702 lt!560702)))

(declare-fun lt!560707 () Unit!40955)

(declare-fun subseqTail!55 (List!27392 List!27392) Unit!40955)

(assert (=> b!1236191 (= lt!560707 (subseqTail!55 lt!560702 lt!560702))))

(assert (=> b!1236191 (subseq!562 acc!846 lt!560702)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79674 List!27392 List!27392 (_ BitVec 32)) Unit!40955)

(assert (=> b!1236191 (= lt!560704 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560702 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1236191 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!824285 () Bool)

(assert (=> start!102888 (=> (not res!824285) (not e!700767))))

(assert (=> start!102888 (= res!824285 (and (bvslt (size!38978 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38978 a!3835))))))

(assert (=> start!102888 e!700767))

(declare-fun array_inv!29217 (array!79674) Bool)

(assert (=> start!102888 (array_inv!29217 a!3835)))

(assert (=> start!102888 true))

(assert (= (and start!102888 res!824285) b!1236188))

(assert (= (and b!1236188 res!824287) b!1236195))

(assert (= (and b!1236195 res!824286) b!1236192))

(assert (= (and b!1236192 res!824282) b!1236186))

(assert (= (and b!1236186 res!824280) b!1236193))

(assert (= (and b!1236193 res!824281) b!1236185))

(assert (= (and b!1236185 res!824288) b!1236189))

(assert (= (and b!1236189 c!120815) b!1236191))

(assert (= (and b!1236189 (not c!120815)) b!1236190))

(assert (= (and b!1236189 res!824284) b!1236187))

(assert (= (and b!1236187 res!824283) b!1236194))

(declare-fun m!1140075 () Bool)

(assert (=> b!1236186 m!1140075))

(declare-fun m!1140077 () Bool)

(assert (=> b!1236192 m!1140077))

(declare-fun m!1140079 () Bool)

(assert (=> start!102888 m!1140079))

(declare-fun m!1140081 () Bool)

(assert (=> b!1236193 m!1140081))

(declare-fun m!1140083 () Bool)

(assert (=> b!1236194 m!1140083))

(declare-fun m!1140085 () Bool)

(assert (=> b!1236194 m!1140085))

(declare-fun m!1140087 () Bool)

(assert (=> b!1236195 m!1140087))

(declare-fun m!1140089 () Bool)

(assert (=> b!1236191 m!1140089))

(declare-fun m!1140091 () Bool)

(assert (=> b!1236191 m!1140091))

(declare-fun m!1140093 () Bool)

(assert (=> b!1236191 m!1140093))

(declare-fun m!1140095 () Bool)

(assert (=> b!1236191 m!1140095))

(declare-fun m!1140097 () Bool)

(assert (=> b!1236191 m!1140097))

(declare-fun m!1140099 () Bool)

(assert (=> b!1236191 m!1140099))

(declare-fun m!1140101 () Bool)

(assert (=> b!1236191 m!1140101))

(assert (=> b!1236189 m!1140101))

(assert (=> b!1236189 m!1140101))

(declare-fun m!1140103 () Bool)

(assert (=> b!1236189 m!1140103))

(assert (=> b!1236187 m!1140099))

(declare-fun m!1140105 () Bool)

(assert (=> b!1236188 m!1140105))

(push 1)

(assert (not b!1236192))

