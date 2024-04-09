; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102834 () Bool)

(assert start!102834)

(declare-fun b!1235349 () Bool)

(declare-fun res!823608 () Bool)

(declare-fun e!700441 () Bool)

(assert (=> b!1235349 (=> (not res!823608) (not e!700441))))

(declare-datatypes ((array!79620 0))(
  ( (array!79621 (arr!38414 (Array (_ BitVec 32) (_ BitVec 64))) (size!38951 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79620)

(declare-datatypes ((List!27365 0))(
  ( (Nil!27362) (Cons!27361 (h!28570 (_ BitVec 64)) (t!40835 List!27365)) )
))
(declare-fun acc!846 () List!27365)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79620 (_ BitVec 32) List!27365) Bool)

(assert (=> b!1235349 (= res!823608 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235350 () Bool)

(declare-fun res!823607 () Bool)

(assert (=> b!1235350 (=> (not res!823607) (not e!700441))))

(declare-fun noDuplicate!1887 (List!27365) Bool)

(assert (=> b!1235350 (= res!823607 (noDuplicate!1887 acc!846))))

(declare-fun res!823611 () Bool)

(assert (=> start!102834 (=> (not res!823611) (not e!700441))))

(assert (=> start!102834 (= res!823611 (and (bvslt (size!38951 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38951 a!3835))))))

(assert (=> start!102834 e!700441))

(declare-fun array_inv!29190 (array!79620) Bool)

(assert (=> start!102834 (array_inv!29190 a!3835)))

(assert (=> start!102834 true))

(declare-fun b!1235351 () Bool)

(declare-fun res!823609 () Bool)

(assert (=> b!1235351 (=> (not res!823609) (not e!700441))))

(declare-fun contains!7280 (List!27365 (_ BitVec 64)) Bool)

(assert (=> b!1235351 (= res!823609 (not (contains!7280 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235352 () Bool)

(declare-datatypes ((Unit!40874 0))(
  ( (Unit!40875) )
))
(declare-fun e!700442 () Unit!40874)

(declare-fun Unit!40876 () Unit!40874)

(assert (=> b!1235352 (= e!700442 Unit!40876)))

(declare-fun b!1235353 () Bool)

(declare-fun lt!560218 () Unit!40874)

(assert (=> b!1235353 (= e!700442 lt!560218)))

(declare-fun lt!560216 () List!27365)

(assert (=> b!1235353 (= lt!560216 (Cons!27361 (select (arr!38414 a!3835) from!3213) acc!846))))

(declare-fun lt!560221 () Unit!40874)

(declare-fun lemmaListSubSeqRefl!0 (List!27365) Unit!40874)

(assert (=> b!1235353 (= lt!560221 (lemmaListSubSeqRefl!0 lt!560216))))

(declare-fun subseq!535 (List!27365 List!27365) Bool)

(assert (=> b!1235353 (subseq!535 lt!560216 lt!560216)))

(declare-fun lt!560220 () Unit!40874)

(declare-fun subseqTail!28 (List!27365 List!27365) Unit!40874)

(assert (=> b!1235353 (= lt!560220 (subseqTail!28 lt!560216 lt!560216))))

(assert (=> b!1235353 (subseq!535 acc!846 lt!560216)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79620 List!27365 List!27365 (_ BitVec 32)) Unit!40874)

(assert (=> b!1235353 (= lt!560218 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560216 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235353 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235354 () Bool)

(declare-fun res!823613 () Bool)

(assert (=> b!1235354 (=> (not res!823613) (not e!700441))))

(assert (=> b!1235354 (= res!823613 (not (contains!7280 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235355 () Bool)

(declare-fun e!700444 () Bool)

(assert (=> b!1235355 (= e!700444 false)))

(declare-fun lt!560219 () Bool)

(assert (=> b!1235355 (= lt!560219 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235356 () Bool)

(declare-fun res!823610 () Bool)

(assert (=> b!1235356 (=> (not res!823610) (not e!700441))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235356 (= res!823610 (contains!7280 acc!846 k!2925))))

(declare-fun b!1235357 () Bool)

(declare-fun res!823606 () Bool)

(assert (=> b!1235357 (=> (not res!823606) (not e!700441))))

(assert (=> b!1235357 (= res!823606 (not (= from!3213 (bvsub (size!38951 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235358 () Bool)

(assert (=> b!1235358 (= e!700441 e!700444)))

(declare-fun res!823612 () Bool)

(assert (=> b!1235358 (=> (not res!823612) (not e!700444))))

(assert (=> b!1235358 (= res!823612 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38951 a!3835))))))

(declare-fun lt!560217 () Unit!40874)

(assert (=> b!1235358 (= lt!560217 e!700442)))

(declare-fun c!120734 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235358 (= c!120734 (validKeyInArray!0 (select (arr!38414 a!3835) from!3213)))))

(assert (= (and start!102834 res!823611) b!1235350))

(assert (= (and b!1235350 res!823607) b!1235354))

(assert (= (and b!1235354 res!823613) b!1235351))

(assert (= (and b!1235351 res!823609) b!1235349))

(assert (= (and b!1235349 res!823608) b!1235356))

(assert (= (and b!1235356 res!823610) b!1235357))

(assert (= (and b!1235357 res!823606) b!1235358))

(assert (= (and b!1235358 c!120734) b!1235353))

(assert (= (and b!1235358 (not c!120734)) b!1235352))

(assert (= (and b!1235358 res!823612) b!1235355))

(declare-fun m!1139287 () Bool)

(assert (=> b!1235358 m!1139287))

(assert (=> b!1235358 m!1139287))

(declare-fun m!1139289 () Bool)

(assert (=> b!1235358 m!1139289))

(declare-fun m!1139291 () Bool)

(assert (=> b!1235349 m!1139291))

(declare-fun m!1139293 () Bool)

(assert (=> b!1235354 m!1139293))

(declare-fun m!1139295 () Bool)

(assert (=> b!1235351 m!1139295))

(declare-fun m!1139297 () Bool)

(assert (=> b!1235353 m!1139297))

(declare-fun m!1139299 () Bool)

(assert (=> b!1235353 m!1139299))

(declare-fun m!1139301 () Bool)

(assert (=> b!1235353 m!1139301))

(declare-fun m!1139303 () Bool)

(assert (=> b!1235353 m!1139303))

(declare-fun m!1139305 () Bool)

(assert (=> b!1235353 m!1139305))

(declare-fun m!1139307 () Bool)

(assert (=> b!1235353 m!1139307))

(assert (=> b!1235353 m!1139287))

(declare-fun m!1139309 () Bool)

(assert (=> b!1235350 m!1139309))

(declare-fun m!1139311 () Bool)

(assert (=> start!102834 m!1139311))

(assert (=> b!1235355 m!1139307))

(declare-fun m!1139313 () Bool)

(assert (=> b!1235356 m!1139313))

(push 1)

(assert (not start!102834))

(assert (not b!1235358))

