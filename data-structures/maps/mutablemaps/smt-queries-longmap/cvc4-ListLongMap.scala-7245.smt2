; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92572 () Bool)

(assert start!92572)

(declare-fun b!1052511 () Bool)

(declare-fun res!701748 () Bool)

(declare-fun e!597630 () Bool)

(assert (=> b!1052511 (=> (not res!701748) (not e!597630))))

(declare-datatypes ((array!66321 0))(
  ( (array!66322 (arr!31896 (Array (_ BitVec 32) (_ BitVec 64))) (size!32433 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66321)

(declare-datatypes ((List!22339 0))(
  ( (Nil!22336) (Cons!22335 (h!23544 (_ BitVec 64)) (t!31653 List!22339)) )
))
(declare-fun arrayNoDuplicates!0 (array!66321 (_ BitVec 32) List!22339) Bool)

(assert (=> b!1052511 (= res!701748 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22336))))

(declare-fun b!1052512 () Bool)

(declare-fun e!597631 () Bool)

(declare-fun e!597627 () Bool)

(assert (=> b!1052512 (= e!597631 e!597627)))

(declare-fun res!701752 () Bool)

(assert (=> b!1052512 (=> (not res!701752) (not e!597627))))

(declare-fun lt!464812 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052512 (= res!701752 (not (= lt!464812 i!1381)))))

(declare-fun lt!464814 () array!66321)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66321 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052512 (= lt!464812 (arrayScanForKey!0 lt!464814 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!701754 () Bool)

(assert (=> start!92572 (=> (not res!701754) (not e!597630))))

(assert (=> start!92572 (= res!701754 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32433 a!3488)) (bvslt (size!32433 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92572 e!597630))

(assert (=> start!92572 true))

(declare-fun array_inv!24518 (array!66321) Bool)

(assert (=> start!92572 (array_inv!24518 a!3488)))

(declare-fun b!1052513 () Bool)

(declare-fun e!597626 () Bool)

(declare-fun e!597629 () Bool)

(assert (=> b!1052513 (= e!597626 e!597629)))

(declare-fun res!701750 () Bool)

(assert (=> b!1052513 (=> res!701750 e!597629)))

(assert (=> b!1052513 (= res!701750 (or (bvsgt lt!464812 i!1381) (bvsle i!1381 lt!464812)))))

(declare-fun b!1052514 () Bool)

(declare-fun e!597632 () Bool)

(assert (=> b!1052514 (= e!597632 true)))

(assert (=> b!1052514 (not (= (select (arr!31896 a!3488) lt!464812) k!2747))))

(declare-datatypes ((Unit!34473 0))(
  ( (Unit!34474) )
))
(declare-fun lt!464813 () Unit!34473)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66321 (_ BitVec 64) (_ BitVec 32) List!22339) Unit!34473)

(assert (=> b!1052514 (= lt!464813 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 lt!464812 Nil!22336))))

(declare-fun lt!464811 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052514 (arrayContainsKey!0 a!3488 k!2747 lt!464811)))

(declare-fun lt!464810 () Unit!34473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66321 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34473)

(assert (=> b!1052514 (= lt!464810 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464811))))

(assert (=> b!1052514 (= lt!464811 (bvadd #b00000000000000000000000000000001 lt!464812))))

(assert (=> b!1052514 (arrayNoDuplicates!0 a!3488 lt!464812 Nil!22336)))

(declare-fun lt!464815 () Unit!34473)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66321 (_ BitVec 32) (_ BitVec 32)) Unit!34473)

(assert (=> b!1052514 (= lt!464815 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464812))))

(declare-fun b!1052515 () Bool)

(declare-fun res!701753 () Bool)

(assert (=> b!1052515 (=> (not res!701753) (not e!597630))))

(assert (=> b!1052515 (= res!701753 (= (select (arr!31896 a!3488) i!1381) k!2747))))

(declare-fun b!1052516 () Bool)

(assert (=> b!1052516 (= e!597627 (not e!597632))))

(declare-fun res!701747 () Bool)

(assert (=> b!1052516 (=> res!701747 e!597632)))

(assert (=> b!1052516 (= res!701747 (or (bvsgt lt!464812 i!1381) (bvsle i!1381 lt!464812)))))

(assert (=> b!1052516 e!597626))

(declare-fun res!701751 () Bool)

(assert (=> b!1052516 (=> (not res!701751) (not e!597626))))

(assert (=> b!1052516 (= res!701751 (= (select (store (arr!31896 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464812) k!2747))))

(declare-fun b!1052517 () Bool)

(assert (=> b!1052517 (= e!597630 e!597631)))

(declare-fun res!701746 () Bool)

(assert (=> b!1052517 (=> (not res!701746) (not e!597631))))

(assert (=> b!1052517 (= res!701746 (arrayContainsKey!0 lt!464814 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052517 (= lt!464814 (array!66322 (store (arr!31896 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32433 a!3488)))))

(declare-fun b!1052518 () Bool)

(declare-fun res!701749 () Bool)

(assert (=> b!1052518 (=> (not res!701749) (not e!597630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052518 (= res!701749 (validKeyInArray!0 k!2747))))

(declare-fun b!1052519 () Bool)

(assert (=> b!1052519 (= e!597629 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92572 res!701754) b!1052511))

(assert (= (and b!1052511 res!701748) b!1052518))

(assert (= (and b!1052518 res!701749) b!1052515))

(assert (= (and b!1052515 res!701753) b!1052517))

(assert (= (and b!1052517 res!701746) b!1052512))

(assert (= (and b!1052512 res!701752) b!1052516))

(assert (= (and b!1052516 res!701751) b!1052513))

(assert (= (and b!1052513 (not res!701750)) b!1052519))

(assert (= (and b!1052516 (not res!701747)) b!1052514))

(declare-fun m!973035 () Bool)

(assert (=> b!1052511 m!973035))

(declare-fun m!973037 () Bool)

(assert (=> b!1052512 m!973037))

(declare-fun m!973039 () Bool)

(assert (=> b!1052519 m!973039))

(declare-fun m!973041 () Bool)

(assert (=> b!1052514 m!973041))

(declare-fun m!973043 () Bool)

(assert (=> b!1052514 m!973043))

(declare-fun m!973045 () Bool)

(assert (=> b!1052514 m!973045))

(declare-fun m!973047 () Bool)

(assert (=> b!1052514 m!973047))

(declare-fun m!973049 () Bool)

(assert (=> b!1052514 m!973049))

(declare-fun m!973051 () Bool)

(assert (=> b!1052514 m!973051))

(declare-fun m!973053 () Bool)

(assert (=> b!1052516 m!973053))

(declare-fun m!973055 () Bool)

(assert (=> b!1052516 m!973055))

(declare-fun m!973057 () Bool)

(assert (=> b!1052517 m!973057))

(assert (=> b!1052517 m!973053))

(declare-fun m!973059 () Bool)

(assert (=> b!1052518 m!973059))

(declare-fun m!973061 () Bool)

(assert (=> start!92572 m!973061))

(declare-fun m!973063 () Bool)

(assert (=> b!1052515 m!973063))

(push 1)

