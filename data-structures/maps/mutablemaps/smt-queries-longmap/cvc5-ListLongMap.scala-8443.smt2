; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102830 () Bool)

(assert start!102830)

(declare-fun b!1235289 () Bool)

(declare-fun res!823560 () Bool)

(declare-fun e!700419 () Bool)

(assert (=> b!1235289 (=> (not res!823560) (not e!700419))))

(declare-datatypes ((List!27363 0))(
  ( (Nil!27360) (Cons!27359 (h!28568 (_ BitVec 64)) (t!40833 List!27363)) )
))
(declare-fun acc!846 () List!27363)

(declare-fun contains!7278 (List!27363 (_ BitVec 64)) Bool)

(assert (=> b!1235289 (= res!823560 (not (contains!7278 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235290 () Bool)

(declare-datatypes ((Unit!40868 0))(
  ( (Unit!40869) )
))
(declare-fun e!700417 () Unit!40868)

(declare-fun Unit!40870 () Unit!40868)

(assert (=> b!1235290 (= e!700417 Unit!40870)))

(declare-fun b!1235291 () Bool)

(declare-fun res!823562 () Bool)

(assert (=> b!1235291 (=> (not res!823562) (not e!700419))))

(assert (=> b!1235291 (= res!823562 (not (contains!7278 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235292 () Bool)

(declare-fun res!823565 () Bool)

(assert (=> b!1235292 (=> (not res!823565) (not e!700419))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79616 0))(
  ( (array!79617 (arr!38412 (Array (_ BitVec 32) (_ BitVec 64))) (size!38949 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79616)

(assert (=> b!1235292 (= res!823565 (not (= from!3213 (bvsub (size!38949 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!823561 () Bool)

(assert (=> start!102830 (=> (not res!823561) (not e!700419))))

(assert (=> start!102830 (= res!823561 (and (bvslt (size!38949 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38949 a!3835))))))

(assert (=> start!102830 e!700419))

(declare-fun array_inv!29188 (array!79616) Bool)

(assert (=> start!102830 (array_inv!29188 a!3835)))

(assert (=> start!102830 true))

(declare-fun b!1235293 () Bool)

(declare-fun e!700420 () Bool)

(assert (=> b!1235293 (= e!700420 false)))

(declare-fun lt!560185 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79616 (_ BitVec 32) List!27363) Bool)

(assert (=> b!1235293 (= lt!560185 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235294 () Bool)

(declare-fun res!823559 () Bool)

(assert (=> b!1235294 (=> (not res!823559) (not e!700419))))

(declare-fun noDuplicate!1885 (List!27363) Bool)

(assert (=> b!1235294 (= res!823559 (noDuplicate!1885 acc!846))))

(declare-fun b!1235295 () Bool)

(declare-fun res!823558 () Bool)

(assert (=> b!1235295 (=> (not res!823558) (not e!700419))))

(assert (=> b!1235295 (= res!823558 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235296 () Bool)

(declare-fun res!823563 () Bool)

(assert (=> b!1235296 (=> (not res!823563) (not e!700419))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235296 (= res!823563 (contains!7278 acc!846 k!2925))))

(declare-fun b!1235297 () Bool)

(assert (=> b!1235297 (= e!700419 e!700420)))

(declare-fun res!823564 () Bool)

(assert (=> b!1235297 (=> (not res!823564) (not e!700420))))

(assert (=> b!1235297 (= res!823564 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38949 a!3835))))))

(declare-fun lt!560180 () Unit!40868)

(assert (=> b!1235297 (= lt!560180 e!700417)))

(declare-fun c!120728 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235297 (= c!120728 (validKeyInArray!0 (select (arr!38412 a!3835) from!3213)))))

(declare-fun b!1235298 () Bool)

(declare-fun lt!560184 () Unit!40868)

(assert (=> b!1235298 (= e!700417 lt!560184)))

(declare-fun lt!560183 () List!27363)

(assert (=> b!1235298 (= lt!560183 (Cons!27359 (select (arr!38412 a!3835) from!3213) acc!846))))

(declare-fun lt!560182 () Unit!40868)

(declare-fun lemmaListSubSeqRefl!0 (List!27363) Unit!40868)

(assert (=> b!1235298 (= lt!560182 (lemmaListSubSeqRefl!0 lt!560183))))

(declare-fun subseq!533 (List!27363 List!27363) Bool)

(assert (=> b!1235298 (subseq!533 lt!560183 lt!560183)))

(declare-fun lt!560181 () Unit!40868)

(declare-fun subseqTail!26 (List!27363 List!27363) Unit!40868)

(assert (=> b!1235298 (= lt!560181 (subseqTail!26 lt!560183 lt!560183))))

(assert (=> b!1235298 (subseq!533 acc!846 lt!560183)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79616 List!27363 List!27363 (_ BitVec 32)) Unit!40868)

(assert (=> b!1235298 (= lt!560184 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560183 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235298 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102830 res!823561) b!1235294))

(assert (= (and b!1235294 res!823559) b!1235291))

(assert (= (and b!1235291 res!823562) b!1235289))

(assert (= (and b!1235289 res!823560) b!1235295))

(assert (= (and b!1235295 res!823558) b!1235296))

(assert (= (and b!1235296 res!823563) b!1235292))

(assert (= (and b!1235292 res!823565) b!1235297))

(assert (= (and b!1235297 c!120728) b!1235298))

(assert (= (and b!1235297 (not c!120728)) b!1235290))

(assert (= (and b!1235297 res!823564) b!1235293))

(declare-fun m!1139231 () Bool)

(assert (=> b!1235295 m!1139231))

(declare-fun m!1139233 () Bool)

(assert (=> b!1235298 m!1139233))

(declare-fun m!1139235 () Bool)

(assert (=> b!1235298 m!1139235))

(declare-fun m!1139237 () Bool)

(assert (=> b!1235298 m!1139237))

(declare-fun m!1139239 () Bool)

(assert (=> b!1235298 m!1139239))

(declare-fun m!1139241 () Bool)

(assert (=> b!1235298 m!1139241))

(declare-fun m!1139243 () Bool)

(assert (=> b!1235298 m!1139243))

(declare-fun m!1139245 () Bool)

(assert (=> b!1235298 m!1139245))

(declare-fun m!1139247 () Bool)

(assert (=> b!1235291 m!1139247))

(assert (=> b!1235293 m!1139243))

(declare-fun m!1139249 () Bool)

(assert (=> b!1235294 m!1139249))

(declare-fun m!1139251 () Bool)

(assert (=> b!1235296 m!1139251))

(assert (=> b!1235297 m!1139245))

(assert (=> b!1235297 m!1139245))

(declare-fun m!1139253 () Bool)

(assert (=> b!1235297 m!1139253))

(declare-fun m!1139255 () Bool)

(assert (=> start!102830 m!1139255))

(declare-fun m!1139257 () Bool)

(assert (=> b!1235289 m!1139257))

(push 1)

