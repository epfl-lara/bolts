; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92564 () Bool)

(assert start!92564)

(declare-fun res!701631 () Bool)

(declare-fun e!597542 () Bool)

(assert (=> start!92564 (=> (not res!701631) (not e!597542))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66313 0))(
  ( (array!66314 (arr!31892 (Array (_ BitVec 32) (_ BitVec 64))) (size!32429 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66313)

(assert (=> start!92564 (= res!701631 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32429 a!3488)) (bvslt (size!32429 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92564 e!597542))

(assert (=> start!92564 true))

(declare-fun array_inv!24514 (array!66313) Bool)

(assert (=> start!92564 (array_inv!24514 a!3488)))

(declare-fun b!1052391 () Bool)

(declare-fun e!597541 () Bool)

(assert (=> b!1052391 (= e!597541 true)))

(declare-fun lt!464742 () Bool)

(declare-datatypes ((List!22335 0))(
  ( (Nil!22332) (Cons!22331 (h!23540 (_ BitVec 64)) (t!31649 List!22335)) )
))
(declare-fun contains!6176 (List!22335 (_ BitVec 64)) Bool)

(assert (=> b!1052391 (= lt!464742 (contains!6176 Nil!22332 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052392 () Bool)

(declare-fun e!597543 () Bool)

(assert (=> b!1052392 (= e!597542 e!597543)))

(declare-fun res!701626 () Bool)

(assert (=> b!1052392 (=> (not res!701626) (not e!597543))))

(declare-fun lt!464741 () array!66313)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052392 (= res!701626 (arrayContainsKey!0 lt!464741 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052392 (= lt!464741 (array!66314 (store (arr!31892 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32429 a!3488)))))

(declare-fun b!1052393 () Bool)

(declare-fun res!701630 () Bool)

(assert (=> b!1052393 (=> (not res!701630) (not e!597542))))

(declare-fun arrayNoDuplicates!0 (array!66313 (_ BitVec 32) List!22335) Bool)

(assert (=> b!1052393 (= res!701630 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22332))))

(declare-fun b!1052394 () Bool)

(declare-fun res!701635 () Bool)

(assert (=> b!1052394 (=> res!701635 e!597541)))

(declare-fun noDuplicate!1561 (List!22335) Bool)

(assert (=> b!1052394 (= res!701635 (not (noDuplicate!1561 Nil!22332)))))

(declare-fun e!597539 () Bool)

(declare-fun b!1052395 () Bool)

(assert (=> b!1052395 (= e!597539 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1052396 () Bool)

(declare-fun e!597540 () Bool)

(assert (=> b!1052396 (= e!597540 e!597539)))

(declare-fun res!701637 () Bool)

(assert (=> b!1052396 (=> res!701637 e!597539)))

(declare-fun lt!464743 () (_ BitVec 32))

(assert (=> b!1052396 (= res!701637 (or (bvsgt lt!464743 i!1381) (bvsle i!1381 lt!464743)))))

(declare-fun b!1052397 () Bool)

(declare-fun e!597545 () Bool)

(declare-fun e!597544 () Bool)

(assert (=> b!1052397 (= e!597545 (not e!597544))))

(declare-fun res!701628 () Bool)

(assert (=> b!1052397 (=> res!701628 e!597544)))

(assert (=> b!1052397 (= res!701628 (or (bvsgt lt!464743 i!1381) (bvsle i!1381 lt!464743)))))

(assert (=> b!1052397 e!597540))

(declare-fun res!701633 () Bool)

(assert (=> b!1052397 (=> (not res!701633) (not e!597540))))

(assert (=> b!1052397 (= res!701633 (= (select (store (arr!31892 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464743) k0!2747))))

(declare-fun b!1052398 () Bool)

(declare-fun res!701634 () Bool)

(assert (=> b!1052398 (=> (not res!701634) (not e!597542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052398 (= res!701634 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052399 () Bool)

(assert (=> b!1052399 (= e!597544 e!597541)))

(declare-fun res!701629 () Bool)

(assert (=> b!1052399 (=> res!701629 e!597541)))

(declare-fun lt!464738 () (_ BitVec 32))

(assert (=> b!1052399 (= res!701629 (or (bvslt lt!464743 #b00000000000000000000000000000000) (bvsge lt!464738 (size!32429 a!3488)) (bvsge lt!464743 (size!32429 a!3488))))))

(assert (=> b!1052399 (arrayContainsKey!0 a!3488 k0!2747 lt!464738)))

(declare-datatypes ((Unit!34465 0))(
  ( (Unit!34466) )
))
(declare-fun lt!464740 () Unit!34465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66313 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34465)

(assert (=> b!1052399 (= lt!464740 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464738))))

(assert (=> b!1052399 (= lt!464738 (bvadd #b00000000000000000000000000000001 lt!464743))))

(assert (=> b!1052399 (arrayNoDuplicates!0 a!3488 lt!464743 Nil!22332)))

(declare-fun lt!464739 () Unit!34465)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66313 (_ BitVec 32) (_ BitVec 32)) Unit!34465)

(assert (=> b!1052399 (= lt!464739 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464743))))

(declare-fun b!1052400 () Bool)

(declare-fun res!701627 () Bool)

(assert (=> b!1052400 (=> res!701627 e!597541)))

(assert (=> b!1052400 (= res!701627 (contains!6176 Nil!22332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052401 () Bool)

(assert (=> b!1052401 (= e!597543 e!597545)))

(declare-fun res!701632 () Bool)

(assert (=> b!1052401 (=> (not res!701632) (not e!597545))))

(assert (=> b!1052401 (= res!701632 (not (= lt!464743 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66313 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052401 (= lt!464743 (arrayScanForKey!0 lt!464741 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052402 () Bool)

(declare-fun res!701636 () Bool)

(assert (=> b!1052402 (=> (not res!701636) (not e!597542))))

(assert (=> b!1052402 (= res!701636 (= (select (arr!31892 a!3488) i!1381) k0!2747))))

(assert (= (and start!92564 res!701631) b!1052393))

(assert (= (and b!1052393 res!701630) b!1052398))

(assert (= (and b!1052398 res!701634) b!1052402))

(assert (= (and b!1052402 res!701636) b!1052392))

(assert (= (and b!1052392 res!701626) b!1052401))

(assert (= (and b!1052401 res!701632) b!1052397))

(assert (= (and b!1052397 res!701633) b!1052396))

(assert (= (and b!1052396 (not res!701637)) b!1052395))

(assert (= (and b!1052397 (not res!701628)) b!1052399))

(assert (= (and b!1052399 (not res!701629)) b!1052394))

(assert (= (and b!1052394 (not res!701635)) b!1052400))

(assert (= (and b!1052400 (not res!701627)) b!1052391))

(declare-fun m!972911 () Bool)

(assert (=> b!1052392 m!972911))

(declare-fun m!972913 () Bool)

(assert (=> b!1052392 m!972913))

(declare-fun m!972915 () Bool)

(assert (=> start!92564 m!972915))

(declare-fun m!972917 () Bool)

(assert (=> b!1052401 m!972917))

(declare-fun m!972919 () Bool)

(assert (=> b!1052400 m!972919))

(declare-fun m!972921 () Bool)

(assert (=> b!1052394 m!972921))

(declare-fun m!972923 () Bool)

(assert (=> b!1052398 m!972923))

(declare-fun m!972925 () Bool)

(assert (=> b!1052391 m!972925))

(assert (=> b!1052397 m!972913))

(declare-fun m!972927 () Bool)

(assert (=> b!1052397 m!972927))

(declare-fun m!972929 () Bool)

(assert (=> b!1052402 m!972929))

(declare-fun m!972931 () Bool)

(assert (=> b!1052399 m!972931))

(declare-fun m!972933 () Bool)

(assert (=> b!1052399 m!972933))

(declare-fun m!972935 () Bool)

(assert (=> b!1052399 m!972935))

(declare-fun m!972937 () Bool)

(assert (=> b!1052399 m!972937))

(declare-fun m!972939 () Bool)

(assert (=> b!1052393 m!972939))

(declare-fun m!972941 () Bool)

(assert (=> b!1052395 m!972941))

(check-sat (not b!1052394) (not b!1052400) (not b!1052398) (not b!1052401) (not b!1052391) (not b!1052395) (not b!1052393) (not b!1052392) (not b!1052399) (not start!92564))
(check-sat)
