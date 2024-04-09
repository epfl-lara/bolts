; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92566 () Bool)

(assert start!92566)

(declare-fun b!1052427 () Bool)

(declare-fun e!597565 () Bool)

(assert (=> b!1052427 (= e!597565 true)))

(declare-fun lt!464756 () Bool)

(declare-datatypes ((List!22336 0))(
  ( (Nil!22333) (Cons!22332 (h!23541 (_ BitVec 64)) (t!31650 List!22336)) )
))
(declare-fun contains!6177 (List!22336 (_ BitVec 64)) Bool)

(assert (=> b!1052427 (= lt!464756 (contains!6177 Nil!22333 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052428 () Bool)

(declare-fun e!597566 () Bool)

(declare-fun e!597567 () Bool)

(assert (=> b!1052428 (= e!597566 e!597567)))

(declare-fun res!701668 () Bool)

(assert (=> b!1052428 (=> (not res!701668) (not e!597567))))

(declare-datatypes ((array!66315 0))(
  ( (array!66316 (arr!31893 (Array (_ BitVec 32) (_ BitVec 64))) (size!32430 (_ BitVec 32))) )
))
(declare-fun lt!464759 () array!66315)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052428 (= res!701668 (arrayContainsKey!0 lt!464759 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66315)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052428 (= lt!464759 (array!66316 (store (arr!31893 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32430 a!3488)))))

(declare-fun b!1052430 () Bool)

(declare-fun res!701670 () Bool)

(assert (=> b!1052430 (=> (not res!701670) (not e!597566))))

(declare-fun arrayNoDuplicates!0 (array!66315 (_ BitVec 32) List!22336) Bool)

(assert (=> b!1052430 (= res!701670 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22333))))

(declare-fun b!1052431 () Bool)

(declare-fun res!701673 () Bool)

(assert (=> b!1052431 (=> res!701673 e!597565)))

(assert (=> b!1052431 (= res!701673 (contains!6177 Nil!22333 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052432 () Bool)

(declare-fun e!597564 () Bool)

(assert (=> b!1052432 (= e!597564 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052433 () Bool)

(declare-fun e!597569 () Bool)

(assert (=> b!1052433 (= e!597569 e!597564)))

(declare-fun res!701662 () Bool)

(assert (=> b!1052433 (=> res!701662 e!597564)))

(declare-fun lt!464760 () (_ BitVec 32))

(assert (=> b!1052433 (= res!701662 (or (bvsgt lt!464760 i!1381) (bvsle i!1381 lt!464760)))))

(declare-fun b!1052434 () Bool)

(declare-fun res!701664 () Bool)

(assert (=> b!1052434 (=> (not res!701664) (not e!597566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052434 (= res!701664 (validKeyInArray!0 k!2747))))

(declare-fun b!1052435 () Bool)

(declare-fun e!597563 () Bool)

(assert (=> b!1052435 (= e!597567 e!597563)))

(declare-fun res!701663 () Bool)

(assert (=> b!1052435 (=> (not res!701663) (not e!597563))))

(assert (=> b!1052435 (= res!701663 (not (= lt!464760 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66315 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052435 (= lt!464760 (arrayScanForKey!0 lt!464759 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052436 () Bool)

(declare-fun e!597562 () Bool)

(assert (=> b!1052436 (= e!597562 e!597565)))

(declare-fun res!701669 () Bool)

(assert (=> b!1052436 (=> res!701669 e!597565)))

(declare-fun lt!464757 () (_ BitVec 32))

(assert (=> b!1052436 (= res!701669 (or (bvslt lt!464760 #b00000000000000000000000000000000) (bvsge lt!464757 (size!32430 a!3488)) (bvsge lt!464760 (size!32430 a!3488))))))

(assert (=> b!1052436 (arrayContainsKey!0 a!3488 k!2747 lt!464757)))

(declare-datatypes ((Unit!34467 0))(
  ( (Unit!34468) )
))
(declare-fun lt!464758 () Unit!34467)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66315 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34467)

(assert (=> b!1052436 (= lt!464758 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464757))))

(assert (=> b!1052436 (= lt!464757 (bvadd #b00000000000000000000000000000001 lt!464760))))

(assert (=> b!1052436 (arrayNoDuplicates!0 a!3488 lt!464760 Nil!22333)))

(declare-fun lt!464761 () Unit!34467)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66315 (_ BitVec 32) (_ BitVec 32)) Unit!34467)

(assert (=> b!1052436 (= lt!464761 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464760))))

(declare-fun res!701666 () Bool)

(assert (=> start!92566 (=> (not res!701666) (not e!597566))))

(assert (=> start!92566 (= res!701666 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32430 a!3488)) (bvslt (size!32430 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92566 e!597566))

(assert (=> start!92566 true))

(declare-fun array_inv!24515 (array!66315) Bool)

(assert (=> start!92566 (array_inv!24515 a!3488)))

(declare-fun b!1052429 () Bool)

(declare-fun res!701667 () Bool)

(assert (=> b!1052429 (=> (not res!701667) (not e!597566))))

(assert (=> b!1052429 (= res!701667 (= (select (arr!31893 a!3488) i!1381) k!2747))))

(declare-fun b!1052437 () Bool)

(assert (=> b!1052437 (= e!597563 (not e!597562))))

(declare-fun res!701665 () Bool)

(assert (=> b!1052437 (=> res!701665 e!597562)))

(assert (=> b!1052437 (= res!701665 (or (bvsgt lt!464760 i!1381) (bvsle i!1381 lt!464760)))))

(assert (=> b!1052437 e!597569))

(declare-fun res!701671 () Bool)

(assert (=> b!1052437 (=> (not res!701671) (not e!597569))))

(assert (=> b!1052437 (= res!701671 (= (select (store (arr!31893 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464760) k!2747))))

(declare-fun b!1052438 () Bool)

(declare-fun res!701672 () Bool)

(assert (=> b!1052438 (=> res!701672 e!597565)))

(declare-fun noDuplicate!1562 (List!22336) Bool)

(assert (=> b!1052438 (= res!701672 (not (noDuplicate!1562 Nil!22333)))))

(assert (= (and start!92566 res!701666) b!1052430))

(assert (= (and b!1052430 res!701670) b!1052434))

(assert (= (and b!1052434 res!701664) b!1052429))

(assert (= (and b!1052429 res!701667) b!1052428))

(assert (= (and b!1052428 res!701668) b!1052435))

(assert (= (and b!1052435 res!701663) b!1052437))

(assert (= (and b!1052437 res!701671) b!1052433))

(assert (= (and b!1052433 (not res!701662)) b!1052432))

(assert (= (and b!1052437 (not res!701665)) b!1052436))

(assert (= (and b!1052436 (not res!701669)) b!1052438))

(assert (= (and b!1052438 (not res!701672)) b!1052431))

(assert (= (and b!1052431 (not res!701673)) b!1052427))

(declare-fun m!972943 () Bool)

(assert (=> b!1052437 m!972943))

(declare-fun m!972945 () Bool)

(assert (=> b!1052437 m!972945))

(declare-fun m!972947 () Bool)

(assert (=> b!1052428 m!972947))

(assert (=> b!1052428 m!972943))

(declare-fun m!972949 () Bool)

(assert (=> b!1052432 m!972949))

(declare-fun m!972951 () Bool)

(assert (=> b!1052436 m!972951))

(declare-fun m!972953 () Bool)

(assert (=> b!1052436 m!972953))

(declare-fun m!972955 () Bool)

(assert (=> b!1052436 m!972955))

(declare-fun m!972957 () Bool)

(assert (=> b!1052436 m!972957))

(declare-fun m!972959 () Bool)

(assert (=> start!92566 m!972959))

(declare-fun m!972961 () Bool)

(assert (=> b!1052430 m!972961))

(declare-fun m!972963 () Bool)

(assert (=> b!1052431 m!972963))

(declare-fun m!972965 () Bool)

(assert (=> b!1052434 m!972965))

(declare-fun m!972967 () Bool)

(assert (=> b!1052427 m!972967))

(declare-fun m!972969 () Bool)

(assert (=> b!1052435 m!972969))

(declare-fun m!972971 () Bool)

(assert (=> b!1052438 m!972971))

(declare-fun m!972973 () Bool)

(assert (=> b!1052429 m!972973))

(push 1)

