; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102836 () Bool)

(assert start!102836)

(declare-fun b!1235379 () Bool)

(declare-fun res!823632 () Bool)

(declare-fun e!700456 () Bool)

(assert (=> b!1235379 (=> (not res!823632) (not e!700456))))

(declare-datatypes ((List!27366 0))(
  ( (Nil!27363) (Cons!27362 (h!28571 (_ BitVec 64)) (t!40836 List!27366)) )
))
(declare-fun acc!846 () List!27366)

(declare-fun noDuplicate!1888 (List!27366) Bool)

(assert (=> b!1235379 (= res!823632 (noDuplicate!1888 acc!846))))

(declare-fun b!1235380 () Bool)

(declare-fun res!823630 () Bool)

(assert (=> b!1235380 (=> (not res!823630) (not e!700456))))

(declare-datatypes ((array!79622 0))(
  ( (array!79623 (arr!38415 (Array (_ BitVec 32) (_ BitVec 64))) (size!38952 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79622)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79622 (_ BitVec 32) List!27366) Bool)

(assert (=> b!1235380 (= res!823630 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235381 () Bool)

(declare-fun res!823634 () Bool)

(assert (=> b!1235381 (=> (not res!823634) (not e!700456))))

(declare-fun contains!7281 (List!27366 (_ BitVec 64)) Bool)

(assert (=> b!1235381 (= res!823634 (not (contains!7281 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235383 () Bool)

(declare-fun e!700454 () Bool)

(assert (=> b!1235383 (= e!700454 false)))

(declare-fun lt!560235 () Bool)

(assert (=> b!1235383 (= lt!560235 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235384 () Bool)

(assert (=> b!1235384 (= e!700456 e!700454)))

(declare-fun res!823633 () Bool)

(assert (=> b!1235384 (=> (not res!823633) (not e!700454))))

(assert (=> b!1235384 (= res!823633 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38952 a!3835))))))

(declare-datatypes ((Unit!40877 0))(
  ( (Unit!40878) )
))
(declare-fun lt!560236 () Unit!40877)

(declare-fun e!700455 () Unit!40877)

(assert (=> b!1235384 (= lt!560236 e!700455)))

(declare-fun c!120737 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235384 (= c!120737 (validKeyInArray!0 (select (arr!38415 a!3835) from!3213)))))

(declare-fun b!1235385 () Bool)

(declare-fun res!823636 () Bool)

(assert (=> b!1235385 (=> (not res!823636) (not e!700456))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235385 (= res!823636 (contains!7281 acc!846 k!2925))))

(declare-fun b!1235386 () Bool)

(declare-fun lt!560234 () Unit!40877)

(assert (=> b!1235386 (= e!700455 lt!560234)))

(declare-fun lt!560237 () List!27366)

(assert (=> b!1235386 (= lt!560237 (Cons!27362 (select (arr!38415 a!3835) from!3213) acc!846))))

(declare-fun lt!560239 () Unit!40877)

(declare-fun lemmaListSubSeqRefl!0 (List!27366) Unit!40877)

(assert (=> b!1235386 (= lt!560239 (lemmaListSubSeqRefl!0 lt!560237))))

(declare-fun subseq!536 (List!27366 List!27366) Bool)

(assert (=> b!1235386 (subseq!536 lt!560237 lt!560237)))

(declare-fun lt!560238 () Unit!40877)

(declare-fun subseqTail!29 (List!27366 List!27366) Unit!40877)

(assert (=> b!1235386 (= lt!560238 (subseqTail!29 lt!560237 lt!560237))))

(assert (=> b!1235386 (subseq!536 acc!846 lt!560237)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79622 List!27366 List!27366 (_ BitVec 32)) Unit!40877)

(assert (=> b!1235386 (= lt!560234 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560237 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235386 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235387 () Bool)

(declare-fun Unit!40879 () Unit!40877)

(assert (=> b!1235387 (= e!700455 Unit!40879)))

(declare-fun b!1235388 () Bool)

(declare-fun res!823631 () Bool)

(assert (=> b!1235388 (=> (not res!823631) (not e!700456))))

(assert (=> b!1235388 (= res!823631 (not (contains!7281 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!823637 () Bool)

(assert (=> start!102836 (=> (not res!823637) (not e!700456))))

(assert (=> start!102836 (= res!823637 (and (bvslt (size!38952 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38952 a!3835))))))

(assert (=> start!102836 e!700456))

(declare-fun array_inv!29191 (array!79622) Bool)

(assert (=> start!102836 (array_inv!29191 a!3835)))

(assert (=> start!102836 true))

(declare-fun b!1235382 () Bool)

(declare-fun res!823635 () Bool)

(assert (=> b!1235382 (=> (not res!823635) (not e!700456))))

(assert (=> b!1235382 (= res!823635 (not (= from!3213 (bvsub (size!38952 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102836 res!823637) b!1235379))

(assert (= (and b!1235379 res!823632) b!1235388))

(assert (= (and b!1235388 res!823631) b!1235381))

(assert (= (and b!1235381 res!823634) b!1235380))

(assert (= (and b!1235380 res!823630) b!1235385))

(assert (= (and b!1235385 res!823636) b!1235382))

(assert (= (and b!1235382 res!823635) b!1235384))

(assert (= (and b!1235384 c!120737) b!1235386))

(assert (= (and b!1235384 (not c!120737)) b!1235387))

(assert (= (and b!1235384 res!823633) b!1235383))

(declare-fun m!1139315 () Bool)

(assert (=> b!1235384 m!1139315))

(assert (=> b!1235384 m!1139315))

(declare-fun m!1139317 () Bool)

(assert (=> b!1235384 m!1139317))

(declare-fun m!1139319 () Bool)

(assert (=> b!1235383 m!1139319))

(declare-fun m!1139321 () Bool)

(assert (=> b!1235380 m!1139321))

(declare-fun m!1139323 () Bool)

(assert (=> b!1235386 m!1139323))

(declare-fun m!1139325 () Bool)

(assert (=> b!1235386 m!1139325))

(assert (=> b!1235386 m!1139315))

(declare-fun m!1139327 () Bool)

(assert (=> b!1235386 m!1139327))

(declare-fun m!1139329 () Bool)

(assert (=> b!1235386 m!1139329))

(assert (=> b!1235386 m!1139319))

(declare-fun m!1139331 () Bool)

(assert (=> b!1235386 m!1139331))

(declare-fun m!1139333 () Bool)

(assert (=> b!1235385 m!1139333))

(declare-fun m!1139335 () Bool)

(assert (=> b!1235388 m!1139335))

(declare-fun m!1139337 () Bool)

(assert (=> start!102836 m!1139337))

(declare-fun m!1139339 () Bool)

(assert (=> b!1235381 m!1139339))

(declare-fun m!1139341 () Bool)

(assert (=> b!1235379 m!1139341))

(push 1)

