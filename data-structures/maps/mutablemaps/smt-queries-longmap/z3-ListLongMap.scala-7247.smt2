; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92582 () Bool)

(assert start!92582)

(declare-fun b!1052646 () Bool)

(declare-fun e!597735 () Bool)

(declare-fun e!597734 () Bool)

(assert (=> b!1052646 (= e!597735 e!597734)))

(declare-fun res!701881 () Bool)

(assert (=> b!1052646 (=> (not res!701881) (not e!597734))))

(declare-datatypes ((array!66331 0))(
  ( (array!66332 (arr!31901 (Array (_ BitVec 32) (_ BitVec 64))) (size!32438 (_ BitVec 32))) )
))
(declare-fun lt!464902 () array!66331)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052646 (= res!701881 (arrayContainsKey!0 lt!464902 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66331)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052646 (= lt!464902 (array!66332 (store (arr!31901 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32438 a!3488)))))

(declare-fun b!1052647 () Bool)

(declare-fun e!597737 () Bool)

(declare-fun e!597732 () Bool)

(assert (=> b!1052647 (= e!597737 (not e!597732))))

(declare-fun res!701883 () Bool)

(assert (=> b!1052647 (=> res!701883 e!597732)))

(declare-fun lt!464905 () (_ BitVec 32))

(assert (=> b!1052647 (= res!701883 (or (bvsgt lt!464905 i!1381) (bvsle i!1381 lt!464905)))))

(declare-fun e!597736 () Bool)

(assert (=> b!1052647 e!597736))

(declare-fun res!701885 () Bool)

(assert (=> b!1052647 (=> (not res!701885) (not e!597736))))

(assert (=> b!1052647 (= res!701885 (= (select (store (arr!31901 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464905) k0!2747))))

(declare-fun b!1052648 () Bool)

(declare-fun res!701889 () Bool)

(assert (=> b!1052648 (=> (not res!701889) (not e!597735))))

(assert (=> b!1052648 (= res!701889 (= (select (arr!31901 a!3488) i!1381) k0!2747))))

(declare-fun b!1052650 () Bool)

(assert (=> b!1052650 (= e!597732 true)))

(assert (=> b!1052650 (not (= (select (arr!31901 a!3488) lt!464905) k0!2747))))

(declare-datatypes ((Unit!34483 0))(
  ( (Unit!34484) )
))
(declare-fun lt!464904 () Unit!34483)

(declare-datatypes ((List!22344 0))(
  ( (Nil!22341) (Cons!22340 (h!23549 (_ BitVec 64)) (t!31658 List!22344)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66331 (_ BitVec 64) (_ BitVec 32) List!22344) Unit!34483)

(assert (=> b!1052650 (= lt!464904 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!464905 Nil!22341))))

(declare-fun lt!464901 () (_ BitVec 32))

(assert (=> b!1052650 (arrayContainsKey!0 a!3488 k0!2747 lt!464901)))

(declare-fun lt!464900 () Unit!34483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66331 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34483)

(assert (=> b!1052650 (= lt!464900 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464901))))

(assert (=> b!1052650 (= lt!464901 (bvadd #b00000000000000000000000000000001 lt!464905))))

(declare-fun arrayNoDuplicates!0 (array!66331 (_ BitVec 32) List!22344) Bool)

(assert (=> b!1052650 (arrayNoDuplicates!0 a!3488 lt!464905 Nil!22341)))

(declare-fun lt!464903 () Unit!34483)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66331 (_ BitVec 32) (_ BitVec 32)) Unit!34483)

(assert (=> b!1052650 (= lt!464903 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464905))))

(declare-fun b!1052651 () Bool)

(assert (=> b!1052651 (= e!597734 e!597737)))

(declare-fun res!701888 () Bool)

(assert (=> b!1052651 (=> (not res!701888) (not e!597737))))

(assert (=> b!1052651 (= res!701888 (not (= lt!464905 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66331 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052651 (= lt!464905 (arrayScanForKey!0 lt!464902 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052652 () Bool)

(declare-fun e!597733 () Bool)

(assert (=> b!1052652 (= e!597733 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun res!701884 () Bool)

(assert (=> start!92582 (=> (not res!701884) (not e!597735))))

(assert (=> start!92582 (= res!701884 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32438 a!3488)) (bvslt (size!32438 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92582 e!597735))

(assert (=> start!92582 true))

(declare-fun array_inv!24523 (array!66331) Bool)

(assert (=> start!92582 (array_inv!24523 a!3488)))

(declare-fun b!1052649 () Bool)

(assert (=> b!1052649 (= e!597736 e!597733)))

(declare-fun res!701882 () Bool)

(assert (=> b!1052649 (=> res!701882 e!597733)))

(assert (=> b!1052649 (= res!701882 (or (bvsgt lt!464905 i!1381) (bvsle i!1381 lt!464905)))))

(declare-fun b!1052653 () Bool)

(declare-fun res!701886 () Bool)

(assert (=> b!1052653 (=> (not res!701886) (not e!597735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052653 (= res!701886 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052654 () Bool)

(declare-fun res!701887 () Bool)

(assert (=> b!1052654 (=> (not res!701887) (not e!597735))))

(assert (=> b!1052654 (= res!701887 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22341))))

(assert (= (and start!92582 res!701884) b!1052654))

(assert (= (and b!1052654 res!701887) b!1052653))

(assert (= (and b!1052653 res!701886) b!1052648))

(assert (= (and b!1052648 res!701889) b!1052646))

(assert (= (and b!1052646 res!701881) b!1052651))

(assert (= (and b!1052651 res!701888) b!1052647))

(assert (= (and b!1052647 res!701885) b!1052649))

(assert (= (and b!1052649 (not res!701882)) b!1052652))

(assert (= (and b!1052647 (not res!701883)) b!1052650))

(declare-fun m!973185 () Bool)

(assert (=> start!92582 m!973185))

(declare-fun m!973187 () Bool)

(assert (=> b!1052654 m!973187))

(declare-fun m!973189 () Bool)

(assert (=> b!1052652 m!973189))

(declare-fun m!973191 () Bool)

(assert (=> b!1052647 m!973191))

(declare-fun m!973193 () Bool)

(assert (=> b!1052647 m!973193))

(declare-fun m!973195 () Bool)

(assert (=> b!1052648 m!973195))

(declare-fun m!973197 () Bool)

(assert (=> b!1052653 m!973197))

(declare-fun m!973199 () Bool)

(assert (=> b!1052646 m!973199))

(assert (=> b!1052646 m!973191))

(declare-fun m!973201 () Bool)

(assert (=> b!1052651 m!973201))

(declare-fun m!973203 () Bool)

(assert (=> b!1052650 m!973203))

(declare-fun m!973205 () Bool)

(assert (=> b!1052650 m!973205))

(declare-fun m!973207 () Bool)

(assert (=> b!1052650 m!973207))

(declare-fun m!973209 () Bool)

(assert (=> b!1052650 m!973209))

(declare-fun m!973211 () Bool)

(assert (=> b!1052650 m!973211))

(declare-fun m!973213 () Bool)

(assert (=> b!1052650 m!973213))

(check-sat (not b!1052650) (not b!1052646) (not b!1052654) (not b!1052653) (not b!1052651) (not start!92582) (not b!1052652))
(check-sat)
