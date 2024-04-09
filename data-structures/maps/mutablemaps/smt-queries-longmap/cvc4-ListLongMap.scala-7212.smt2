; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92374 () Bool)

(assert start!92374)

(declare-fun b!1049556 () Bool)

(declare-fun e!595543 () Bool)

(declare-fun e!595541 () Bool)

(assert (=> b!1049556 (= e!595543 e!595541)))

(declare-fun res!698791 () Bool)

(assert (=> b!1049556 (=> res!698791 e!595541)))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66123 0))(
  ( (array!66124 (arr!31797 (Array (_ BitVec 32) (_ BitVec 64))) (size!32334 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66123)

(assert (=> b!1049556 (= res!698791 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32334 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049556 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463561 () (_ BitVec 32))

(declare-datatypes ((Unit!34323 0))(
  ( (Unit!34324) )
))
(declare-fun lt!463562 () Unit!34323)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66123 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34323)

(assert (=> b!1049556 (= lt!463562 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463561 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22240 0))(
  ( (Nil!22237) (Cons!22236 (h!23445 (_ BitVec 64)) (t!31554 List!22240)) )
))
(declare-fun arrayNoDuplicates!0 (array!66123 (_ BitVec 32) List!22240) Bool)

(assert (=> b!1049556 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22237)))

(declare-fun lt!463564 () Unit!34323)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66123 (_ BitVec 32) (_ BitVec 32)) Unit!34323)

(assert (=> b!1049556 (= lt!463564 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049557 () Bool)

(declare-fun res!698796 () Bool)

(declare-fun e!595540 () Bool)

(assert (=> b!1049557 (=> (not res!698796) (not e!595540))))

(assert (=> b!1049557 (= res!698796 (= (select (arr!31797 a!3488) i!1381) k!2747))))

(declare-fun b!1049558 () Bool)

(declare-fun e!595539 () Bool)

(declare-fun e!595538 () Bool)

(assert (=> b!1049558 (= e!595539 e!595538)))

(declare-fun res!698795 () Bool)

(assert (=> b!1049558 (=> res!698795 e!595538)))

(assert (=> b!1049558 (= res!698795 (bvsle lt!463561 i!1381))))

(declare-fun b!1049559 () Bool)

(declare-fun res!698802 () Bool)

(assert (=> b!1049559 (=> (not res!698802) (not e!595540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049559 (= res!698802 (validKeyInArray!0 k!2747))))

(declare-fun b!1049560 () Bool)

(declare-fun res!698793 () Bool)

(assert (=> b!1049560 (=> res!698793 e!595541)))

(declare-fun contains!6132 (List!22240 (_ BitVec 64)) Bool)

(assert (=> b!1049560 (= res!698793 (contains!6132 Nil!22237 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049561 () Bool)

(declare-fun e!595537 () Bool)

(assert (=> b!1049561 (= e!595537 (not e!595543))))

(declare-fun res!698800 () Bool)

(assert (=> b!1049561 (=> res!698800 e!595543)))

(assert (=> b!1049561 (= res!698800 (bvsle lt!463561 i!1381))))

(assert (=> b!1049561 e!595539))

(declare-fun res!698797 () Bool)

(assert (=> b!1049561 (=> (not res!698797) (not e!595539))))

(assert (=> b!1049561 (= res!698797 (= (select (store (arr!31797 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463561) k!2747))))

(declare-fun res!698799 () Bool)

(assert (=> start!92374 (=> (not res!698799) (not e!595540))))

(assert (=> start!92374 (= res!698799 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32334 a!3488)) (bvslt (size!32334 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92374 e!595540))

(assert (=> start!92374 true))

(declare-fun array_inv!24419 (array!66123) Bool)

(assert (=> start!92374 (array_inv!24419 a!3488)))

(declare-fun b!1049562 () Bool)

(declare-fun res!698792 () Bool)

(assert (=> b!1049562 (=> (not res!698792) (not e!595540))))

(assert (=> b!1049562 (= res!698792 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22237))))

(declare-fun b!1049563 () Bool)

(declare-fun e!595542 () Bool)

(assert (=> b!1049563 (= e!595540 e!595542)))

(declare-fun res!698798 () Bool)

(assert (=> b!1049563 (=> (not res!698798) (not e!595542))))

(declare-fun lt!463563 () array!66123)

(assert (=> b!1049563 (= res!698798 (arrayContainsKey!0 lt!463563 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049563 (= lt!463563 (array!66124 (store (arr!31797 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32334 a!3488)))))

(declare-fun b!1049564 () Bool)

(assert (=> b!1049564 (= e!595541 true)))

(declare-fun lt!463560 () Bool)

(assert (=> b!1049564 (= lt!463560 (contains!6132 Nil!22237 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049565 () Bool)

(assert (=> b!1049565 (= e!595538 (arrayContainsKey!0 a!3488 k!2747 lt!463561))))

(declare-fun b!1049566 () Bool)

(declare-fun res!698794 () Bool)

(assert (=> b!1049566 (=> res!698794 e!595541)))

(declare-fun noDuplicate!1517 (List!22240) Bool)

(assert (=> b!1049566 (= res!698794 (not (noDuplicate!1517 Nil!22237)))))

(declare-fun b!1049567 () Bool)

(assert (=> b!1049567 (= e!595542 e!595537)))

(declare-fun res!698801 () Bool)

(assert (=> b!1049567 (=> (not res!698801) (not e!595537))))

(assert (=> b!1049567 (= res!698801 (not (= lt!463561 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66123 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049567 (= lt!463561 (arrayScanForKey!0 lt!463563 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92374 res!698799) b!1049562))

(assert (= (and b!1049562 res!698792) b!1049559))

(assert (= (and b!1049559 res!698802) b!1049557))

(assert (= (and b!1049557 res!698796) b!1049563))

(assert (= (and b!1049563 res!698798) b!1049567))

(assert (= (and b!1049567 res!698801) b!1049561))

(assert (= (and b!1049561 res!698797) b!1049558))

(assert (= (and b!1049558 (not res!698795)) b!1049565))

(assert (= (and b!1049561 (not res!698800)) b!1049556))

(assert (= (and b!1049556 (not res!698791)) b!1049566))

(assert (= (and b!1049566 (not res!698794)) b!1049560))

(assert (= (and b!1049560 (not res!698793)) b!1049564))

(declare-fun m!970441 () Bool)

(assert (=> b!1049557 m!970441))

(declare-fun m!970443 () Bool)

(assert (=> b!1049566 m!970443))

(declare-fun m!970445 () Bool)

(assert (=> b!1049560 m!970445))

(declare-fun m!970447 () Bool)

(assert (=> b!1049562 m!970447))

(declare-fun m!970449 () Bool)

(assert (=> b!1049556 m!970449))

(declare-fun m!970451 () Bool)

(assert (=> b!1049556 m!970451))

(declare-fun m!970453 () Bool)

(assert (=> b!1049556 m!970453))

(declare-fun m!970455 () Bool)

(assert (=> b!1049556 m!970455))

(declare-fun m!970457 () Bool)

(assert (=> b!1049565 m!970457))

(declare-fun m!970459 () Bool)

(assert (=> start!92374 m!970459))

(declare-fun m!970461 () Bool)

(assert (=> b!1049563 m!970461))

(declare-fun m!970463 () Bool)

(assert (=> b!1049563 m!970463))

(declare-fun m!970465 () Bool)

(assert (=> b!1049564 m!970465))

(declare-fun m!970467 () Bool)

(assert (=> b!1049559 m!970467))

(assert (=> b!1049561 m!970463))

(declare-fun m!970469 () Bool)

(assert (=> b!1049561 m!970469))

(declare-fun m!970471 () Bool)

(assert (=> b!1049567 m!970471))

(push 1)

