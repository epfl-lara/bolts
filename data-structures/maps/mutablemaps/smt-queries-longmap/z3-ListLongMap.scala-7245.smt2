; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92570 () Bool)

(assert start!92570)

(declare-fun b!1052484 () Bool)

(declare-fun e!597611 () Bool)

(declare-fun e!597609 () Bool)

(assert (=> b!1052484 (= e!597611 e!597609)))

(declare-fun res!701722 () Bool)

(assert (=> b!1052484 (=> (not res!701722) (not e!597609))))

(declare-fun lt!464792 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052484 (= res!701722 (not (= lt!464792 i!1381)))))

(declare-datatypes ((array!66319 0))(
  ( (array!66320 (arr!31895 (Array (_ BitVec 32) (_ BitVec 64))) (size!32432 (_ BitVec 32))) )
))
(declare-fun lt!464793 () array!66319)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66319 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052484 (= lt!464792 (arrayScanForKey!0 lt!464793 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052485 () Bool)

(declare-fun e!597608 () Bool)

(declare-fun e!597605 () Bool)

(assert (=> b!1052485 (= e!597608 e!597605)))

(declare-fun res!701726 () Bool)

(assert (=> b!1052485 (=> res!701726 e!597605)))

(assert (=> b!1052485 (= res!701726 (or (bvsgt lt!464792 i!1381) (bvsle i!1381 lt!464792)))))

(declare-fun b!1052486 () Bool)

(declare-fun res!701727 () Bool)

(declare-fun e!597610 () Bool)

(assert (=> b!1052486 (=> (not res!701727) (not e!597610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052486 (= res!701727 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052487 () Bool)

(declare-fun res!701724 () Bool)

(assert (=> b!1052487 (=> (not res!701724) (not e!597610))))

(declare-fun a!3488 () array!66319)

(declare-datatypes ((List!22338 0))(
  ( (Nil!22335) (Cons!22334 (h!23543 (_ BitVec 64)) (t!31652 List!22338)) )
))
(declare-fun arrayNoDuplicates!0 (array!66319 (_ BitVec 32) List!22338) Bool)

(assert (=> b!1052487 (= res!701724 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22335))))

(declare-fun b!1052488 () Bool)

(declare-fun e!597607 () Bool)

(assert (=> b!1052488 (= e!597609 (not e!597607))))

(declare-fun res!701723 () Bool)

(assert (=> b!1052488 (=> res!701723 e!597607)))

(assert (=> b!1052488 (= res!701723 (or (bvsgt lt!464792 i!1381) (bvsle i!1381 lt!464792)))))

(assert (=> b!1052488 e!597608))

(declare-fun res!701721 () Bool)

(assert (=> b!1052488 (=> (not res!701721) (not e!597608))))

(assert (=> b!1052488 (= res!701721 (= (select (store (arr!31895 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464792) k0!2747))))

(declare-fun b!1052489 () Bool)

(assert (=> b!1052489 (= e!597607 true)))

(assert (=> b!1052489 (not (= (select (arr!31895 a!3488) lt!464792) k0!2747))))

(declare-datatypes ((Unit!34471 0))(
  ( (Unit!34472) )
))
(declare-fun lt!464796 () Unit!34471)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66319 (_ BitVec 64) (_ BitVec 32) List!22338) Unit!34471)

(assert (=> b!1052489 (= lt!464796 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 lt!464792 Nil!22335))))

(declare-fun lt!464797 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052489 (arrayContainsKey!0 a!3488 k0!2747 lt!464797)))

(declare-fun lt!464795 () Unit!34471)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66319 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34471)

(assert (=> b!1052489 (= lt!464795 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464797))))

(assert (=> b!1052489 (= lt!464797 (bvadd #b00000000000000000000000000000001 lt!464792))))

(assert (=> b!1052489 (arrayNoDuplicates!0 a!3488 lt!464792 Nil!22335)))

(declare-fun lt!464794 () Unit!34471)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66319 (_ BitVec 32) (_ BitVec 32)) Unit!34471)

(assert (=> b!1052489 (= lt!464794 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464792))))

(declare-fun b!1052490 () Bool)

(declare-fun res!701725 () Bool)

(assert (=> b!1052490 (=> (not res!701725) (not e!597610))))

(assert (=> b!1052490 (= res!701725 (= (select (arr!31895 a!3488) i!1381) k0!2747))))

(declare-fun res!701719 () Bool)

(assert (=> start!92570 (=> (not res!701719) (not e!597610))))

(assert (=> start!92570 (= res!701719 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32432 a!3488)) (bvslt (size!32432 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92570 e!597610))

(assert (=> start!92570 true))

(declare-fun array_inv!24517 (array!66319) Bool)

(assert (=> start!92570 (array_inv!24517 a!3488)))

(declare-fun b!1052491 () Bool)

(assert (=> b!1052491 (= e!597605 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1052492 () Bool)

(assert (=> b!1052492 (= e!597610 e!597611)))

(declare-fun res!701720 () Bool)

(assert (=> b!1052492 (=> (not res!701720) (not e!597611))))

(assert (=> b!1052492 (= res!701720 (arrayContainsKey!0 lt!464793 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052492 (= lt!464793 (array!66320 (store (arr!31895 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32432 a!3488)))))

(assert (= (and start!92570 res!701719) b!1052487))

(assert (= (and b!1052487 res!701724) b!1052486))

(assert (= (and b!1052486 res!701727) b!1052490))

(assert (= (and b!1052490 res!701725) b!1052492))

(assert (= (and b!1052492 res!701720) b!1052484))

(assert (= (and b!1052484 res!701722) b!1052488))

(assert (= (and b!1052488 res!701721) b!1052485))

(assert (= (and b!1052485 (not res!701726)) b!1052491))

(assert (= (and b!1052488 (not res!701723)) b!1052489))

(declare-fun m!973005 () Bool)

(assert (=> b!1052488 m!973005))

(declare-fun m!973007 () Bool)

(assert (=> b!1052488 m!973007))

(declare-fun m!973009 () Bool)

(assert (=> b!1052487 m!973009))

(declare-fun m!973011 () Bool)

(assert (=> b!1052484 m!973011))

(declare-fun m!973013 () Bool)

(assert (=> start!92570 m!973013))

(declare-fun m!973015 () Bool)

(assert (=> b!1052489 m!973015))

(declare-fun m!973017 () Bool)

(assert (=> b!1052489 m!973017))

(declare-fun m!973019 () Bool)

(assert (=> b!1052489 m!973019))

(declare-fun m!973021 () Bool)

(assert (=> b!1052489 m!973021))

(declare-fun m!973023 () Bool)

(assert (=> b!1052489 m!973023))

(declare-fun m!973025 () Bool)

(assert (=> b!1052489 m!973025))

(declare-fun m!973027 () Bool)

(assert (=> b!1052486 m!973027))

(declare-fun m!973029 () Bool)

(assert (=> b!1052492 m!973029))

(assert (=> b!1052492 m!973005))

(declare-fun m!973031 () Bool)

(assert (=> b!1052491 m!973031))

(declare-fun m!973033 () Bool)

(assert (=> b!1052490 m!973033))

(check-sat (not b!1052487) (not b!1052489) (not b!1052484) (not b!1052486) (not b!1052491) (not b!1052492) (not start!92570))
(check-sat)
