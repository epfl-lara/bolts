; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92380 () Bool)

(assert start!92380)

(declare-fun e!595612 () Bool)

(declare-datatypes ((array!66129 0))(
  ( (array!66130 (arr!31800 (Array (_ BitVec 32) (_ BitVec 64))) (size!32337 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66129)

(declare-fun b!1049664 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun lt!463608 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049664 (= e!595612 (arrayContainsKey!0 a!3488 k!2747 lt!463608))))

(declare-fun b!1049666 () Bool)

(declare-fun e!595616 () Bool)

(declare-fun e!595611 () Bool)

(assert (=> b!1049666 (= e!595616 e!595611)))

(declare-fun res!698899 () Bool)

(assert (=> b!1049666 (=> (not res!698899) (not e!595611))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049666 (= res!698899 (not (= lt!463608 i!1381)))))

(declare-fun lt!463606 () array!66129)

(declare-fun arrayScanForKey!0 (array!66129 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049666 (= lt!463608 (arrayScanForKey!0 lt!463606 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049667 () Bool)

(declare-fun e!595610 () Bool)

(assert (=> b!1049667 (= e!595610 e!595612)))

(declare-fun res!698900 () Bool)

(assert (=> b!1049667 (=> res!698900 e!595612)))

(assert (=> b!1049667 (= res!698900 (bvsle lt!463608 i!1381))))

(declare-fun b!1049668 () Bool)

(declare-fun e!595615 () Bool)

(assert (=> b!1049668 (= e!595615 e!595616)))

(declare-fun res!698909 () Bool)

(assert (=> b!1049668 (=> (not res!698909) (not e!595616))))

(assert (=> b!1049668 (= res!698909 (arrayContainsKey!0 lt!463606 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049668 (= lt!463606 (array!66130 (store (arr!31800 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32337 a!3488)))))

(declare-fun b!1049669 () Bool)

(declare-fun res!698902 () Bool)

(assert (=> b!1049669 (=> (not res!698902) (not e!595615))))

(declare-datatypes ((List!22243 0))(
  ( (Nil!22240) (Cons!22239 (h!23448 (_ BitVec 64)) (t!31557 List!22243)) )
))
(declare-fun arrayNoDuplicates!0 (array!66129 (_ BitVec 32) List!22243) Bool)

(assert (=> b!1049669 (= res!698902 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22240))))

(declare-fun b!1049670 () Bool)

(declare-fun res!698904 () Bool)

(declare-fun e!595609 () Bool)

(assert (=> b!1049670 (=> res!698904 e!595609)))

(declare-fun contains!6135 (List!22243 (_ BitVec 64)) Bool)

(assert (=> b!1049670 (= res!698904 (contains!6135 Nil!22240 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049671 () Bool)

(declare-fun e!595614 () Bool)

(assert (=> b!1049671 (= e!595611 (not e!595614))))

(declare-fun res!698906 () Bool)

(assert (=> b!1049671 (=> res!698906 e!595614)))

(assert (=> b!1049671 (= res!698906 (bvsle lt!463608 i!1381))))

(assert (=> b!1049671 e!595610))

(declare-fun res!698901 () Bool)

(assert (=> b!1049671 (=> (not res!698901) (not e!595610))))

(assert (=> b!1049671 (= res!698901 (= (select (store (arr!31800 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463608) k!2747))))

(declare-fun b!1049672 () Bool)

(declare-fun res!698907 () Bool)

(assert (=> b!1049672 (=> res!698907 e!595609)))

(declare-fun noDuplicate!1520 (List!22243) Bool)

(assert (=> b!1049672 (= res!698907 (not (noDuplicate!1520 Nil!22240)))))

(declare-fun b!1049673 () Bool)

(declare-fun res!698910 () Bool)

(assert (=> b!1049673 (=> (not res!698910) (not e!595615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049673 (= res!698910 (validKeyInArray!0 k!2747))))

(declare-fun res!698908 () Bool)

(assert (=> start!92380 (=> (not res!698908) (not e!595615))))

(assert (=> start!92380 (= res!698908 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32337 a!3488)) (bvslt (size!32337 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92380 e!595615))

(assert (=> start!92380 true))

(declare-fun array_inv!24422 (array!66129) Bool)

(assert (=> start!92380 (array_inv!24422 a!3488)))

(declare-fun b!1049665 () Bool)

(assert (=> b!1049665 (= e!595609 true)))

(declare-fun lt!463609 () Bool)

(assert (=> b!1049665 (= lt!463609 (contains!6135 Nil!22240 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049674 () Bool)

(assert (=> b!1049674 (= e!595614 e!595609)))

(declare-fun res!698905 () Bool)

(assert (=> b!1049674 (=> res!698905 e!595609)))

(assert (=> b!1049674 (= res!698905 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32337 a!3488)))))

(assert (=> b!1049674 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34329 0))(
  ( (Unit!34330) )
))
(declare-fun lt!463607 () Unit!34329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66129 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34329)

(assert (=> b!1049674 (= lt!463607 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463608 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049674 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22240)))

(declare-fun lt!463605 () Unit!34329)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66129 (_ BitVec 32) (_ BitVec 32)) Unit!34329)

(assert (=> b!1049674 (= lt!463605 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049675 () Bool)

(declare-fun res!698903 () Bool)

(assert (=> b!1049675 (=> (not res!698903) (not e!595615))))

(assert (=> b!1049675 (= res!698903 (= (select (arr!31800 a!3488) i!1381) k!2747))))

(assert (= (and start!92380 res!698908) b!1049669))

(assert (= (and b!1049669 res!698902) b!1049673))

(assert (= (and b!1049673 res!698910) b!1049675))

(assert (= (and b!1049675 res!698903) b!1049668))

(assert (= (and b!1049668 res!698909) b!1049666))

(assert (= (and b!1049666 res!698899) b!1049671))

(assert (= (and b!1049671 res!698901) b!1049667))

(assert (= (and b!1049667 (not res!698900)) b!1049664))

(assert (= (and b!1049671 (not res!698906)) b!1049674))

(assert (= (and b!1049674 (not res!698905)) b!1049672))

(assert (= (and b!1049672 (not res!698907)) b!1049670))

(assert (= (and b!1049670 (not res!698904)) b!1049665))

(declare-fun m!970537 () Bool)

(assert (=> b!1049675 m!970537))

(declare-fun m!970539 () Bool)

(assert (=> b!1049674 m!970539))

(declare-fun m!970541 () Bool)

(assert (=> b!1049674 m!970541))

(declare-fun m!970543 () Bool)

(assert (=> b!1049674 m!970543))

(declare-fun m!970545 () Bool)

(assert (=> b!1049674 m!970545))

(declare-fun m!970547 () Bool)

(assert (=> b!1049664 m!970547))

(declare-fun m!970549 () Bool)

(assert (=> b!1049665 m!970549))

(declare-fun m!970551 () Bool)

(assert (=> b!1049670 m!970551))

(declare-fun m!970553 () Bool)

(assert (=> b!1049671 m!970553))

(declare-fun m!970555 () Bool)

(assert (=> b!1049671 m!970555))

(declare-fun m!970557 () Bool)

(assert (=> b!1049673 m!970557))

(declare-fun m!970559 () Bool)

(assert (=> b!1049666 m!970559))

(declare-fun m!970561 () Bool)

(assert (=> b!1049672 m!970561))

(declare-fun m!970563 () Bool)

(assert (=> b!1049668 m!970563))

(assert (=> b!1049668 m!970553))

(declare-fun m!970565 () Bool)

(assert (=> b!1049669 m!970565))

(declare-fun m!970567 () Bool)

(assert (=> start!92380 m!970567))

(push 1)

