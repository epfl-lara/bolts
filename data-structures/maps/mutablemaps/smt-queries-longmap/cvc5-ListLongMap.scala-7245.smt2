; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92568 () Bool)

(assert start!92568)

(declare-fun b!1052457 () Bool)

(declare-fun res!701692 () Bool)

(declare-fun e!597590 () Bool)

(assert (=> b!1052457 (=> (not res!701692) (not e!597590))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052457 (= res!701692 (validKeyInArray!0 k!2747))))

(declare-fun b!1052458 () Bool)

(declare-fun e!597586 () Bool)

(declare-fun e!597584 () Bool)

(assert (=> b!1052458 (= e!597586 e!597584)))

(declare-fun res!701699 () Bool)

(assert (=> b!1052458 (=> (not res!701699) (not e!597584))))

(declare-fun lt!464778 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052458 (= res!701699 (not (= lt!464778 i!1381)))))

(declare-datatypes ((array!66317 0))(
  ( (array!66318 (arr!31894 (Array (_ BitVec 32) (_ BitVec 64))) (size!32431 (_ BitVec 32))) )
))
(declare-fun lt!464776 () array!66317)

(declare-fun arrayScanForKey!0 (array!66317 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052458 (= lt!464778 (arrayScanForKey!0 lt!464776 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052459 () Bool)

(assert (=> b!1052459 (= e!597590 e!597586)))

(declare-fun res!701693 () Bool)

(assert (=> b!1052459 (=> (not res!701693) (not e!597586))))

(declare-fun arrayContainsKey!0 (array!66317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052459 (= res!701693 (arrayContainsKey!0 lt!464776 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66317)

(assert (=> b!1052459 (= lt!464776 (array!66318 (store (arr!31894 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32431 a!3488)))))

(declare-fun b!1052460 () Bool)

(declare-fun res!701696 () Bool)

(assert (=> b!1052460 (=> (not res!701696) (not e!597590))))

(declare-datatypes ((List!22337 0))(
  ( (Nil!22334) (Cons!22333 (h!23542 (_ BitVec 64)) (t!31651 List!22337)) )
))
(declare-fun arrayNoDuplicates!0 (array!66317 (_ BitVec 32) List!22337) Bool)

(assert (=> b!1052460 (= res!701696 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22334))))

(declare-fun res!701695 () Bool)

(assert (=> start!92568 (=> (not res!701695) (not e!597590))))

(assert (=> start!92568 (= res!701695 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32431 a!3488)) (bvslt (size!32431 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92568 e!597590))

(assert (=> start!92568 true))

(declare-fun array_inv!24516 (array!66317) Bool)

(assert (=> start!92568 (array_inv!24516 a!3488)))

(declare-fun b!1052461 () Bool)

(declare-fun e!597587 () Bool)

(assert (=> b!1052461 (= e!597587 true)))

(assert (=> b!1052461 (not (= (select (arr!31894 a!3488) lt!464778) k!2747))))

(declare-datatypes ((Unit!34469 0))(
  ( (Unit!34470) )
))
(declare-fun lt!464775 () Unit!34469)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66317 (_ BitVec 64) (_ BitVec 32) List!22337) Unit!34469)

(assert (=> b!1052461 (= lt!464775 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464778 Nil!22334))))

(declare-fun lt!464777 () (_ BitVec 32))

(assert (=> b!1052461 (arrayContainsKey!0 a!3488 k!2747 lt!464777)))

(declare-fun lt!464774 () Unit!34469)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66317 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34469)

(assert (=> b!1052461 (= lt!464774 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464777))))

(assert (=> b!1052461 (= lt!464777 (bvadd #b00000000000000000000000000000001 lt!464778))))

(assert (=> b!1052461 (arrayNoDuplicates!0 a!3488 lt!464778 Nil!22334)))

(declare-fun lt!464779 () Unit!34469)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66317 (_ BitVec 32) (_ BitVec 32)) Unit!34469)

(assert (=> b!1052461 (= lt!464779 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464778))))

(declare-fun b!1052462 () Bool)

(declare-fun res!701697 () Bool)

(assert (=> b!1052462 (=> (not res!701697) (not e!597590))))

(assert (=> b!1052462 (= res!701697 (= (select (arr!31894 a!3488) i!1381) k!2747))))

(declare-fun b!1052463 () Bool)

(declare-fun e!597585 () Bool)

(declare-fun e!597588 () Bool)

(assert (=> b!1052463 (= e!597585 e!597588)))

(declare-fun res!701694 () Bool)

(assert (=> b!1052463 (=> res!701694 e!597588)))

(assert (=> b!1052463 (= res!701694 (or (bvsgt lt!464778 i!1381) (bvsle i!1381 lt!464778)))))

(declare-fun b!1052464 () Bool)

(assert (=> b!1052464 (= e!597584 (not e!597587))))

(declare-fun res!701698 () Bool)

(assert (=> b!1052464 (=> res!701698 e!597587)))

(assert (=> b!1052464 (= res!701698 (or (bvsgt lt!464778 i!1381) (bvsle i!1381 lt!464778)))))

(assert (=> b!1052464 e!597585))

(declare-fun res!701700 () Bool)

(assert (=> b!1052464 (=> (not res!701700) (not e!597585))))

(assert (=> b!1052464 (= res!701700 (= (select (store (arr!31894 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464778) k!2747))))

(declare-fun b!1052465 () Bool)

(assert (=> b!1052465 (= e!597588 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92568 res!701695) b!1052460))

(assert (= (and b!1052460 res!701696) b!1052457))

(assert (= (and b!1052457 res!701692) b!1052462))

(assert (= (and b!1052462 res!701697) b!1052459))

(assert (= (and b!1052459 res!701693) b!1052458))

(assert (= (and b!1052458 res!701699) b!1052464))

(assert (= (and b!1052464 res!701700) b!1052463))

(assert (= (and b!1052463 (not res!701694)) b!1052465))

(assert (= (and b!1052464 (not res!701698)) b!1052461))

(declare-fun m!972975 () Bool)

(assert (=> b!1052465 m!972975))

(declare-fun m!972977 () Bool)

(assert (=> b!1052461 m!972977))

(declare-fun m!972979 () Bool)

(assert (=> b!1052461 m!972979))

(declare-fun m!972981 () Bool)

(assert (=> b!1052461 m!972981))

(declare-fun m!972983 () Bool)

(assert (=> b!1052461 m!972983))

(declare-fun m!972985 () Bool)

(assert (=> b!1052461 m!972985))

(declare-fun m!972987 () Bool)

(assert (=> b!1052461 m!972987))

(declare-fun m!972989 () Bool)

(assert (=> b!1052460 m!972989))

(declare-fun m!972991 () Bool)

(assert (=> b!1052459 m!972991))

(declare-fun m!972993 () Bool)

(assert (=> b!1052459 m!972993))

(declare-fun m!972995 () Bool)

(assert (=> b!1052457 m!972995))

(declare-fun m!972997 () Bool)

(assert (=> b!1052458 m!972997))

(declare-fun m!972999 () Bool)

(assert (=> b!1052462 m!972999))

(assert (=> b!1052464 m!972993))

(declare-fun m!973001 () Bool)

(assert (=> b!1052464 m!973001))

(declare-fun m!973003 () Bool)

(assert (=> start!92568 m!973003))

(push 1)

