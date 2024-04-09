; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92384 () Bool)

(assert start!92384)

(declare-fun res!698981 () Bool)

(declare-fun e!595660 () Bool)

(assert (=> start!92384 (=> (not res!698981) (not e!595660))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66133 0))(
  ( (array!66134 (arr!31802 (Array (_ BitVec 32) (_ BitVec 64))) (size!32339 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66133)

(assert (=> start!92384 (= res!698981 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32339 a!3488)) (bvslt (size!32339 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92384 e!595660))

(assert (=> start!92384 true))

(declare-fun array_inv!24424 (array!66133) Bool)

(assert (=> start!92384 (array_inv!24424 a!3488)))

(declare-fun b!1049736 () Bool)

(declare-fun res!698975 () Bool)

(declare-fun e!595663 () Bool)

(assert (=> b!1049736 (=> res!698975 e!595663)))

(declare-datatypes ((List!22245 0))(
  ( (Nil!22242) (Cons!22241 (h!23450 (_ BitVec 64)) (t!31559 List!22245)) )
))
(declare-fun noDuplicate!1522 (List!22245) Bool)

(assert (=> b!1049736 (= res!698975 (not (noDuplicate!1522 Nil!22242)))))

(declare-fun b!1049737 () Bool)

(declare-fun res!698972 () Bool)

(assert (=> b!1049737 (=> (not res!698972) (not e!595660))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1049737 (= res!698972 (= (select (arr!31802 a!3488) i!1381) k0!2747))))

(declare-fun b!1049738 () Bool)

(declare-fun res!698973 () Bool)

(assert (=> b!1049738 (=> (not res!698973) (not e!595660))))

(declare-fun arrayNoDuplicates!0 (array!66133 (_ BitVec 32) List!22245) Bool)

(assert (=> b!1049738 (= res!698973 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22242))))

(declare-fun b!1049739 () Bool)

(declare-fun res!698976 () Bool)

(assert (=> b!1049739 (=> res!698976 e!595663)))

(declare-fun contains!6137 (List!22245 (_ BitVec 64)) Bool)

(assert (=> b!1049739 (= res!698976 (contains!6137 Nil!22242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049740 () Bool)

(declare-fun e!595661 () Bool)

(declare-fun e!595662 () Bool)

(assert (=> b!1049740 (= e!595661 e!595662)))

(declare-fun res!698974 () Bool)

(assert (=> b!1049740 (=> (not res!698974) (not e!595662))))

(declare-fun lt!463635 () (_ BitVec 32))

(assert (=> b!1049740 (= res!698974 (not (= lt!463635 i!1381)))))

(declare-fun lt!463636 () array!66133)

(declare-fun arrayScanForKey!0 (array!66133 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049740 (= lt!463635 (arrayScanForKey!0 lt!463636 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049741 () Bool)

(declare-fun res!698977 () Bool)

(assert (=> b!1049741 (=> (not res!698977) (not e!595660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049741 (= res!698977 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049742 () Bool)

(declare-fun e!595658 () Bool)

(declare-fun arrayContainsKey!0 (array!66133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049742 (= e!595658 (arrayContainsKey!0 a!3488 k0!2747 lt!463635))))

(declare-fun b!1049743 () Bool)

(declare-fun e!595659 () Bool)

(assert (=> b!1049743 (= e!595659 e!595658)))

(declare-fun res!698979 () Bool)

(assert (=> b!1049743 (=> res!698979 e!595658)))

(assert (=> b!1049743 (= res!698979 (bvsle lt!463635 i!1381))))

(declare-fun b!1049744 () Bool)

(declare-fun e!595664 () Bool)

(assert (=> b!1049744 (= e!595662 (not e!595664))))

(declare-fun res!698980 () Bool)

(assert (=> b!1049744 (=> res!698980 e!595664)))

(assert (=> b!1049744 (= res!698980 (bvsle lt!463635 i!1381))))

(assert (=> b!1049744 e!595659))

(declare-fun res!698971 () Bool)

(assert (=> b!1049744 (=> (not res!698971) (not e!595659))))

(assert (=> b!1049744 (= res!698971 (= (select (store (arr!31802 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463635) k0!2747))))

(declare-fun b!1049745 () Bool)

(assert (=> b!1049745 (= e!595663 true)))

(declare-fun lt!463637 () Bool)

(assert (=> b!1049745 (= lt!463637 (contains!6137 Nil!22242 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049746 () Bool)

(assert (=> b!1049746 (= e!595660 e!595661)))

(declare-fun res!698978 () Bool)

(assert (=> b!1049746 (=> (not res!698978) (not e!595661))))

(assert (=> b!1049746 (= res!698978 (arrayContainsKey!0 lt!463636 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049746 (= lt!463636 (array!66134 (store (arr!31802 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32339 a!3488)))))

(declare-fun b!1049747 () Bool)

(assert (=> b!1049747 (= e!595664 e!595663)))

(declare-fun res!698982 () Bool)

(assert (=> b!1049747 (=> res!698982 e!595663)))

(assert (=> b!1049747 (= res!698982 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32339 a!3488)))))

(assert (=> b!1049747 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34333 0))(
  ( (Unit!34334) )
))
(declare-fun lt!463638 () Unit!34333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66133 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34333)

(assert (=> b!1049747 (= lt!463638 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463635 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049747 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22242)))

(declare-fun lt!463639 () Unit!34333)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66133 (_ BitVec 32) (_ BitVec 32)) Unit!34333)

(assert (=> b!1049747 (= lt!463639 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92384 res!698981) b!1049738))

(assert (= (and b!1049738 res!698973) b!1049741))

(assert (= (and b!1049741 res!698977) b!1049737))

(assert (= (and b!1049737 res!698972) b!1049746))

(assert (= (and b!1049746 res!698978) b!1049740))

(assert (= (and b!1049740 res!698974) b!1049744))

(assert (= (and b!1049744 res!698971) b!1049743))

(assert (= (and b!1049743 (not res!698979)) b!1049742))

(assert (= (and b!1049744 (not res!698980)) b!1049747))

(assert (= (and b!1049747 (not res!698982)) b!1049736))

(assert (= (and b!1049736 (not res!698975)) b!1049739))

(assert (= (and b!1049739 (not res!698976)) b!1049745))

(declare-fun m!970601 () Bool)

(assert (=> b!1049739 m!970601))

(declare-fun m!970603 () Bool)

(assert (=> b!1049740 m!970603))

(declare-fun m!970605 () Bool)

(assert (=> b!1049741 m!970605))

(declare-fun m!970607 () Bool)

(assert (=> b!1049737 m!970607))

(declare-fun m!970609 () Bool)

(assert (=> start!92384 m!970609))

(declare-fun m!970611 () Bool)

(assert (=> b!1049742 m!970611))

(declare-fun m!970613 () Bool)

(assert (=> b!1049746 m!970613))

(declare-fun m!970615 () Bool)

(assert (=> b!1049746 m!970615))

(declare-fun m!970617 () Bool)

(assert (=> b!1049738 m!970617))

(declare-fun m!970619 () Bool)

(assert (=> b!1049747 m!970619))

(declare-fun m!970621 () Bool)

(assert (=> b!1049747 m!970621))

(declare-fun m!970623 () Bool)

(assert (=> b!1049747 m!970623))

(declare-fun m!970625 () Bool)

(assert (=> b!1049747 m!970625))

(assert (=> b!1049744 m!970615))

(declare-fun m!970627 () Bool)

(assert (=> b!1049744 m!970627))

(declare-fun m!970629 () Bool)

(assert (=> b!1049745 m!970629))

(declare-fun m!970631 () Bool)

(assert (=> b!1049736 m!970631))

(check-sat (not b!1049746) (not b!1049745) (not b!1049740) (not start!92384) (not b!1049742) (not b!1049739) (not b!1049747) (not b!1049741) (not b!1049736) (not b!1049738))
(check-sat)
