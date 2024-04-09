; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92528 () Bool)

(assert start!92528)

(declare-fun b!1051743 () Bool)

(declare-fun e!597107 () Bool)

(declare-fun e!597110 () Bool)

(assert (=> b!1051743 (= e!597107 (not e!597110))))

(declare-fun res!700981 () Bool)

(assert (=> b!1051743 (=> res!700981 e!597110)))

(declare-fun lt!464416 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051743 (= res!700981 (or (bvsgt lt!464416 i!1381) (bvsle i!1381 lt!464416)))))

(declare-fun e!597112 () Bool)

(assert (=> b!1051743 e!597112))

(declare-fun res!700982 () Bool)

(assert (=> b!1051743 (=> (not res!700982) (not e!597112))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-datatypes ((array!66277 0))(
  ( (array!66278 (arr!31874 (Array (_ BitVec 32) (_ BitVec 64))) (size!32411 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66277)

(assert (=> b!1051743 (= res!700982 (= (select (store (arr!31874 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464416) k0!2747))))

(declare-fun e!597111 () Bool)

(declare-fun b!1051744 () Bool)

(declare-fun arrayContainsKey!0 (array!66277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051744 (= e!597111 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051745 () Bool)

(declare-fun e!597108 () Bool)

(declare-fun e!597113 () Bool)

(assert (=> b!1051745 (= e!597108 e!597113)))

(declare-fun res!700983 () Bool)

(assert (=> b!1051745 (=> (not res!700983) (not e!597113))))

(declare-fun lt!464418 () array!66277)

(assert (=> b!1051745 (= res!700983 (arrayContainsKey!0 lt!464418 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051745 (= lt!464418 (array!66278 (store (arr!31874 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32411 a!3488)))))

(declare-fun b!1051746 () Bool)

(assert (=> b!1051746 (= e!597112 e!597111)))

(declare-fun res!700978 () Bool)

(assert (=> b!1051746 (=> res!700978 e!597111)))

(assert (=> b!1051746 (= res!700978 (or (bvsgt lt!464416 i!1381) (bvsle i!1381 lt!464416)))))

(declare-fun b!1051747 () Bool)

(declare-fun res!700987 () Bool)

(declare-fun e!597109 () Bool)

(assert (=> b!1051747 (=> res!700987 e!597109)))

(declare-datatypes ((List!22317 0))(
  ( (Nil!22314) (Cons!22313 (h!23522 (_ BitVec 64)) (t!31631 List!22317)) )
))
(declare-fun noDuplicate!1543 (List!22317) Bool)

(assert (=> b!1051747 (= res!700987 (not (noDuplicate!1543 Nil!22314)))))

(declare-fun b!1051748 () Bool)

(declare-fun res!700979 () Bool)

(assert (=> b!1051748 (=> (not res!700979) (not e!597108))))

(declare-fun arrayNoDuplicates!0 (array!66277 (_ BitVec 32) List!22317) Bool)

(assert (=> b!1051748 (= res!700979 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22314))))

(declare-fun b!1051749 () Bool)

(assert (=> b!1051749 (= e!597110 e!597109)))

(declare-fun res!700980 () Bool)

(assert (=> b!1051749 (=> res!700980 e!597109)))

(declare-fun lt!464417 () (_ BitVec 32))

(assert (=> b!1051749 (= res!700980 (or (bvslt lt!464416 #b00000000000000000000000000000000) (bvsge lt!464417 (size!32411 a!3488)) (bvsge lt!464416 (size!32411 a!3488))))))

(assert (=> b!1051749 (arrayContainsKey!0 a!3488 k0!2747 lt!464417)))

(declare-datatypes ((Unit!34429 0))(
  ( (Unit!34430) )
))
(declare-fun lt!464419 () Unit!34429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66277 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34429)

(assert (=> b!1051749 (= lt!464419 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464417))))

(assert (=> b!1051749 (= lt!464417 (bvadd #b00000000000000000000000000000001 lt!464416))))

(assert (=> b!1051749 (arrayNoDuplicates!0 a!3488 lt!464416 Nil!22314)))

(declare-fun lt!464415 () Unit!34429)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66277 (_ BitVec 32) (_ BitVec 32)) Unit!34429)

(assert (=> b!1051749 (= lt!464415 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464416))))

(declare-fun b!1051751 () Bool)

(declare-fun res!700985 () Bool)

(assert (=> b!1051751 (=> (not res!700985) (not e!597108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051751 (= res!700985 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051752 () Bool)

(assert (=> b!1051752 (= e!597113 e!597107)))

(declare-fun res!700989 () Bool)

(assert (=> b!1051752 (=> (not res!700989) (not e!597107))))

(assert (=> b!1051752 (= res!700989 (not (= lt!464416 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66277 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051752 (= lt!464416 (arrayScanForKey!0 lt!464418 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051753 () Bool)

(assert (=> b!1051753 (= e!597109 true)))

(declare-fun lt!464414 () Bool)

(declare-fun contains!6158 (List!22317 (_ BitVec 64)) Bool)

(assert (=> b!1051753 (= lt!464414 (contains!6158 Nil!22314 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051754 () Bool)

(declare-fun res!700984 () Bool)

(assert (=> b!1051754 (=> res!700984 e!597109)))

(assert (=> b!1051754 (= res!700984 (contains!6158 Nil!22314 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051750 () Bool)

(declare-fun res!700986 () Bool)

(assert (=> b!1051750 (=> (not res!700986) (not e!597108))))

(assert (=> b!1051750 (= res!700986 (= (select (arr!31874 a!3488) i!1381) k0!2747))))

(declare-fun res!700988 () Bool)

(assert (=> start!92528 (=> (not res!700988) (not e!597108))))

(assert (=> start!92528 (= res!700988 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32411 a!3488)) (bvslt (size!32411 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92528 e!597108))

(assert (=> start!92528 true))

(declare-fun array_inv!24496 (array!66277) Bool)

(assert (=> start!92528 (array_inv!24496 a!3488)))

(assert (= (and start!92528 res!700988) b!1051748))

(assert (= (and b!1051748 res!700979) b!1051751))

(assert (= (and b!1051751 res!700985) b!1051750))

(assert (= (and b!1051750 res!700986) b!1051745))

(assert (= (and b!1051745 res!700983) b!1051752))

(assert (= (and b!1051752 res!700989) b!1051743))

(assert (= (and b!1051743 res!700982) b!1051746))

(assert (= (and b!1051746 (not res!700978)) b!1051744))

(assert (= (and b!1051743 (not res!700981)) b!1051749))

(assert (= (and b!1051749 (not res!700980)) b!1051747))

(assert (= (and b!1051747 (not res!700987)) b!1051754))

(assert (= (and b!1051754 (not res!700984)) b!1051753))

(declare-fun m!972335 () Bool)

(assert (=> b!1051743 m!972335))

(declare-fun m!972337 () Bool)

(assert (=> b!1051743 m!972337))

(declare-fun m!972339 () Bool)

(assert (=> b!1051753 m!972339))

(declare-fun m!972341 () Bool)

(assert (=> b!1051747 m!972341))

(declare-fun m!972343 () Bool)

(assert (=> b!1051744 m!972343))

(declare-fun m!972345 () Bool)

(assert (=> b!1051749 m!972345))

(declare-fun m!972347 () Bool)

(assert (=> b!1051749 m!972347))

(declare-fun m!972349 () Bool)

(assert (=> b!1051749 m!972349))

(declare-fun m!972351 () Bool)

(assert (=> b!1051749 m!972351))

(declare-fun m!972353 () Bool)

(assert (=> b!1051751 m!972353))

(declare-fun m!972355 () Bool)

(assert (=> b!1051752 m!972355))

(declare-fun m!972357 () Bool)

(assert (=> start!92528 m!972357))

(declare-fun m!972359 () Bool)

(assert (=> b!1051750 m!972359))

(declare-fun m!972361 () Bool)

(assert (=> b!1051745 m!972361))

(assert (=> b!1051745 m!972335))

(declare-fun m!972363 () Bool)

(assert (=> b!1051748 m!972363))

(declare-fun m!972365 () Bool)

(assert (=> b!1051754 m!972365))

(check-sat (not b!1051747) (not b!1051744) (not b!1051748) (not b!1051753) (not start!92528) (not b!1051749) (not b!1051754) (not b!1051745) (not b!1051752) (not b!1051751))
(check-sat)
