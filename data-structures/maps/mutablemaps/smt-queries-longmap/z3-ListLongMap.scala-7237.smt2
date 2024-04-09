; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92522 () Bool)

(assert start!92522)

(declare-fun b!1051636 () Bool)

(declare-fun e!597037 () Bool)

(declare-fun e!597034 () Bool)

(assert (=> b!1051636 (= e!597037 e!597034)))

(declare-fun res!700870 () Bool)

(assert (=> b!1051636 (=> (not res!700870) (not e!597034))))

(declare-datatypes ((array!66271 0))(
  ( (array!66272 (arr!31871 (Array (_ BitVec 32) (_ BitVec 64))) (size!32408 (_ BitVec 32))) )
))
(declare-fun lt!464365 () array!66271)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051636 (= res!700870 (arrayContainsKey!0 lt!464365 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66271)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051636 (= lt!464365 (array!66272 (store (arr!31871 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32408 a!3488)))))

(declare-fun b!1051637 () Bool)

(declare-fun res!700877 () Bool)

(assert (=> b!1051637 (=> (not res!700877) (not e!597037))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051637 (= res!700877 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051638 () Bool)

(declare-fun e!597038 () Bool)

(assert (=> b!1051638 (= e!597038 true)))

(declare-fun lt!464364 () Bool)

(declare-datatypes ((List!22314 0))(
  ( (Nil!22311) (Cons!22310 (h!23519 (_ BitVec 64)) (t!31628 List!22314)) )
))
(declare-fun contains!6155 (List!22314 (_ BitVec 64)) Bool)

(assert (=> b!1051638 (= lt!464364 (contains!6155 Nil!22311 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051639 () Bool)

(declare-fun res!700880 () Bool)

(assert (=> b!1051639 (=> (not res!700880) (not e!597037))))

(declare-fun arrayNoDuplicates!0 (array!66271 (_ BitVec 32) List!22314) Bool)

(assert (=> b!1051639 (= res!700880 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22311))))

(declare-fun b!1051640 () Bool)

(declare-fun e!597035 () Bool)

(declare-fun e!597039 () Bool)

(assert (=> b!1051640 (= e!597035 (not e!597039))))

(declare-fun res!700878 () Bool)

(assert (=> b!1051640 (=> res!700878 e!597039)))

(declare-fun lt!464360 () (_ BitVec 32))

(assert (=> b!1051640 (= res!700878 (or (bvsgt lt!464360 i!1381) (bvsle i!1381 lt!464360)))))

(declare-fun e!597036 () Bool)

(assert (=> b!1051640 e!597036))

(declare-fun res!700874 () Bool)

(assert (=> b!1051640 (=> (not res!700874) (not e!597036))))

(assert (=> b!1051640 (= res!700874 (= (select (store (arr!31871 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464360) k0!2747))))

(declare-fun b!1051641 () Bool)

(declare-fun res!700873 () Bool)

(assert (=> b!1051641 (=> res!700873 e!597038)))

(assert (=> b!1051641 (= res!700873 (contains!6155 Nil!22311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051642 () Bool)

(declare-fun e!597040 () Bool)

(assert (=> b!1051642 (= e!597040 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051643 () Bool)

(declare-fun res!700872 () Bool)

(assert (=> b!1051643 (=> (not res!700872) (not e!597037))))

(assert (=> b!1051643 (= res!700872 (= (select (arr!31871 a!3488) i!1381) k0!2747))))

(declare-fun b!1051644 () Bool)

(assert (=> b!1051644 (= e!597036 e!597040)))

(declare-fun res!700875 () Bool)

(assert (=> b!1051644 (=> res!700875 e!597040)))

(assert (=> b!1051644 (= res!700875 (or (bvsgt lt!464360 i!1381) (bvsle i!1381 lt!464360)))))

(declare-fun b!1051635 () Bool)

(declare-fun res!700879 () Bool)

(assert (=> b!1051635 (=> res!700879 e!597038)))

(declare-fun noDuplicate!1540 (List!22314) Bool)

(assert (=> b!1051635 (= res!700879 (not (noDuplicate!1540 Nil!22311)))))

(declare-fun res!700881 () Bool)

(assert (=> start!92522 (=> (not res!700881) (not e!597037))))

(assert (=> start!92522 (= res!700881 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32408 a!3488)) (bvslt (size!32408 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92522 e!597037))

(assert (=> start!92522 true))

(declare-fun array_inv!24493 (array!66271) Bool)

(assert (=> start!92522 (array_inv!24493 a!3488)))

(declare-fun b!1051645 () Bool)

(assert (=> b!1051645 (= e!597034 e!597035)))

(declare-fun res!700876 () Bool)

(assert (=> b!1051645 (=> (not res!700876) (not e!597035))))

(assert (=> b!1051645 (= res!700876 (not (= lt!464360 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66271 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051645 (= lt!464360 (arrayScanForKey!0 lt!464365 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051646 () Bool)

(assert (=> b!1051646 (= e!597039 e!597038)))

(declare-fun res!700871 () Bool)

(assert (=> b!1051646 (=> res!700871 e!597038)))

(declare-fun lt!464361 () (_ BitVec 32))

(assert (=> b!1051646 (= res!700871 (or (bvslt lt!464360 #b00000000000000000000000000000000) (bvsge lt!464361 (size!32408 a!3488)) (bvsge lt!464360 (size!32408 a!3488))))))

(assert (=> b!1051646 (arrayContainsKey!0 a!3488 k0!2747 lt!464361)))

(declare-datatypes ((Unit!34423 0))(
  ( (Unit!34424) )
))
(declare-fun lt!464363 () Unit!34423)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66271 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34423)

(assert (=> b!1051646 (= lt!464363 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464361))))

(assert (=> b!1051646 (= lt!464361 (bvadd #b00000000000000000000000000000001 lt!464360))))

(assert (=> b!1051646 (arrayNoDuplicates!0 a!3488 lt!464360 Nil!22311)))

(declare-fun lt!464362 () Unit!34423)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66271 (_ BitVec 32) (_ BitVec 32)) Unit!34423)

(assert (=> b!1051646 (= lt!464362 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464360))))

(assert (= (and start!92522 res!700881) b!1051639))

(assert (= (and b!1051639 res!700880) b!1051637))

(assert (= (and b!1051637 res!700877) b!1051643))

(assert (= (and b!1051643 res!700872) b!1051636))

(assert (= (and b!1051636 res!700870) b!1051645))

(assert (= (and b!1051645 res!700876) b!1051640))

(assert (= (and b!1051640 res!700874) b!1051644))

(assert (= (and b!1051644 (not res!700875)) b!1051642))

(assert (= (and b!1051640 (not res!700878)) b!1051646))

(assert (= (and b!1051646 (not res!700871)) b!1051635))

(assert (= (and b!1051635 (not res!700879)) b!1051641))

(assert (= (and b!1051641 (not res!700873)) b!1051638))

(declare-fun m!972239 () Bool)

(assert (=> b!1051640 m!972239))

(declare-fun m!972241 () Bool)

(assert (=> b!1051640 m!972241))

(declare-fun m!972243 () Bool)

(assert (=> b!1051635 m!972243))

(declare-fun m!972245 () Bool)

(assert (=> b!1051646 m!972245))

(declare-fun m!972247 () Bool)

(assert (=> b!1051646 m!972247))

(declare-fun m!972249 () Bool)

(assert (=> b!1051646 m!972249))

(declare-fun m!972251 () Bool)

(assert (=> b!1051646 m!972251))

(declare-fun m!972253 () Bool)

(assert (=> start!92522 m!972253))

(declare-fun m!972255 () Bool)

(assert (=> b!1051637 m!972255))

(declare-fun m!972257 () Bool)

(assert (=> b!1051638 m!972257))

(declare-fun m!972259 () Bool)

(assert (=> b!1051645 m!972259))

(declare-fun m!972261 () Bool)

(assert (=> b!1051639 m!972261))

(declare-fun m!972263 () Bool)

(assert (=> b!1051641 m!972263))

(declare-fun m!972265 () Bool)

(assert (=> b!1051643 m!972265))

(declare-fun m!972267 () Bool)

(assert (=> b!1051642 m!972267))

(declare-fun m!972269 () Bool)

(assert (=> b!1051636 m!972269))

(assert (=> b!1051636 m!972239))

(check-sat (not b!1051641) (not b!1051639) (not b!1051637) (not b!1051635) (not start!92522) (not b!1051642) (not b!1051636) (not b!1051646) (not b!1051638) (not b!1051645))
(check-sat)
