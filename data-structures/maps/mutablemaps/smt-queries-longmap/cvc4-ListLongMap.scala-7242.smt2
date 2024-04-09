; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92554 () Bool)

(assert start!92554)

(declare-fun b!1052211 () Bool)

(declare-fun e!597419 () Bool)

(declare-fun e!597421 () Bool)

(assert (=> b!1052211 (= e!597419 e!597421)))

(declare-fun res!701448 () Bool)

(assert (=> b!1052211 (=> (not res!701448) (not e!597421))))

(declare-datatypes ((array!66303 0))(
  ( (array!66304 (arr!31887 (Array (_ BitVec 32) (_ BitVec 64))) (size!32424 (_ BitVec 32))) )
))
(declare-fun lt!464648 () array!66303)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052211 (= res!701448 (arrayContainsKey!0 lt!464648 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66303)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052211 (= lt!464648 (array!66304 (store (arr!31887 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32424 a!3488)))))

(declare-fun b!1052212 () Bool)

(declare-fun e!597420 () Bool)

(declare-fun e!597418 () Bool)

(assert (=> b!1052212 (= e!597420 (not e!597418))))

(declare-fun res!701447 () Bool)

(assert (=> b!1052212 (=> res!701447 e!597418)))

(declare-fun lt!464653 () (_ BitVec 32))

(assert (=> b!1052212 (= res!701447 (or (bvsgt lt!464653 i!1381) (bvsle i!1381 lt!464653)))))

(declare-fun e!597424 () Bool)

(assert (=> b!1052212 e!597424))

(declare-fun res!701451 () Bool)

(assert (=> b!1052212 (=> (not res!701451) (not e!597424))))

(assert (=> b!1052212 (= res!701451 (= (select (store (arr!31887 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464653) k!2747))))

(declare-fun b!1052213 () Bool)

(declare-fun res!701449 () Bool)

(declare-fun e!597423 () Bool)

(assert (=> b!1052213 (=> res!701449 e!597423)))

(declare-datatypes ((List!22330 0))(
  ( (Nil!22327) (Cons!22326 (h!23535 (_ BitVec 64)) (t!31644 List!22330)) )
))
(declare-fun noDuplicate!1556 (List!22330) Bool)

(assert (=> b!1052213 (= res!701449 (not (noDuplicate!1556 Nil!22327)))))

(declare-fun b!1052214 () Bool)

(declare-fun res!701457 () Bool)

(assert (=> b!1052214 (=> (not res!701457) (not e!597419))))

(declare-fun arrayNoDuplicates!0 (array!66303 (_ BitVec 32) List!22330) Bool)

(assert (=> b!1052214 (= res!701457 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22327))))

(declare-fun e!597422 () Bool)

(declare-fun b!1052215 () Bool)

(assert (=> b!1052215 (= e!597422 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052216 () Bool)

(assert (=> b!1052216 (= e!597423 true)))

(declare-fun lt!464649 () Bool)

(declare-fun contains!6171 (List!22330 (_ BitVec 64)) Bool)

(assert (=> b!1052216 (= lt!464649 (contains!6171 Nil!22327 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052217 () Bool)

(assert (=> b!1052217 (= e!597421 e!597420)))

(declare-fun res!701450 () Bool)

(assert (=> b!1052217 (=> (not res!701450) (not e!597420))))

(assert (=> b!1052217 (= res!701450 (not (= lt!464653 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66303 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052217 (= lt!464653 (arrayScanForKey!0 lt!464648 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052218 () Bool)

(assert (=> b!1052218 (= e!597418 e!597423)))

(declare-fun res!701452 () Bool)

(assert (=> b!1052218 (=> res!701452 e!597423)))

(declare-fun lt!464650 () (_ BitVec 32))

(assert (=> b!1052218 (= res!701452 (or (bvslt lt!464653 #b00000000000000000000000000000000) (bvsge lt!464650 (size!32424 a!3488)) (bvsge lt!464653 (size!32424 a!3488))))))

(assert (=> b!1052218 (arrayContainsKey!0 a!3488 k!2747 lt!464650)))

(declare-datatypes ((Unit!34455 0))(
  ( (Unit!34456) )
))
(declare-fun lt!464652 () Unit!34455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66303 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34455)

(assert (=> b!1052218 (= lt!464652 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464650))))

(assert (=> b!1052218 (= lt!464650 (bvadd #b00000000000000000000000000000001 lt!464653))))

(assert (=> b!1052218 (arrayNoDuplicates!0 a!3488 lt!464653 Nil!22327)))

(declare-fun lt!464651 () Unit!34455)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66303 (_ BitVec 32) (_ BitVec 32)) Unit!34455)

(assert (=> b!1052218 (= lt!464651 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464653))))

(declare-fun res!701456 () Bool)

(assert (=> start!92554 (=> (not res!701456) (not e!597419))))

(assert (=> start!92554 (= res!701456 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32424 a!3488)) (bvslt (size!32424 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92554 e!597419))

(assert (=> start!92554 true))

(declare-fun array_inv!24509 (array!66303) Bool)

(assert (=> start!92554 (array_inv!24509 a!3488)))

(declare-fun b!1052219 () Bool)

(declare-fun res!701446 () Bool)

(assert (=> b!1052219 (=> (not res!701446) (not e!597419))))

(assert (=> b!1052219 (= res!701446 (= (select (arr!31887 a!3488) i!1381) k!2747))))

(declare-fun b!1052220 () Bool)

(declare-fun res!701453 () Bool)

(assert (=> b!1052220 (=> (not res!701453) (not e!597419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052220 (= res!701453 (validKeyInArray!0 k!2747))))

(declare-fun b!1052221 () Bool)

(assert (=> b!1052221 (= e!597424 e!597422)))

(declare-fun res!701454 () Bool)

(assert (=> b!1052221 (=> res!701454 e!597422)))

(assert (=> b!1052221 (= res!701454 (or (bvsgt lt!464653 i!1381) (bvsle i!1381 lt!464653)))))

(declare-fun b!1052222 () Bool)

(declare-fun res!701455 () Bool)

(assert (=> b!1052222 (=> res!701455 e!597423)))

(assert (=> b!1052222 (= res!701455 (contains!6171 Nil!22327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92554 res!701456) b!1052214))

(assert (= (and b!1052214 res!701457) b!1052220))

(assert (= (and b!1052220 res!701453) b!1052219))

(assert (= (and b!1052219 res!701446) b!1052211))

(assert (= (and b!1052211 res!701448) b!1052217))

(assert (= (and b!1052217 res!701450) b!1052212))

(assert (= (and b!1052212 res!701451) b!1052221))

(assert (= (and b!1052221 (not res!701454)) b!1052215))

(assert (= (and b!1052212 (not res!701447)) b!1052218))

(assert (= (and b!1052218 (not res!701452)) b!1052213))

(assert (= (and b!1052213 (not res!701449)) b!1052222))

(assert (= (and b!1052222 (not res!701455)) b!1052216))

(declare-fun m!972751 () Bool)

(assert (=> b!1052216 m!972751))

(declare-fun m!972753 () Bool)

(assert (=> b!1052214 m!972753))

(declare-fun m!972755 () Bool)

(assert (=> b!1052220 m!972755))

(declare-fun m!972757 () Bool)

(assert (=> b!1052217 m!972757))

(declare-fun m!972759 () Bool)

(assert (=> b!1052218 m!972759))

(declare-fun m!972761 () Bool)

(assert (=> b!1052218 m!972761))

(declare-fun m!972763 () Bool)

(assert (=> b!1052218 m!972763))

(declare-fun m!972765 () Bool)

(assert (=> b!1052218 m!972765))

(declare-fun m!972767 () Bool)

(assert (=> b!1052219 m!972767))

(declare-fun m!972769 () Bool)

(assert (=> b!1052222 m!972769))

(declare-fun m!972771 () Bool)

(assert (=> b!1052211 m!972771))

(declare-fun m!972773 () Bool)

(assert (=> b!1052211 m!972773))

(declare-fun m!972775 () Bool)

(assert (=> b!1052213 m!972775))

(assert (=> b!1052212 m!972773))

(declare-fun m!972777 () Bool)

(assert (=> b!1052212 m!972777))

(declare-fun m!972779 () Bool)

(assert (=> b!1052215 m!972779))

(declare-fun m!972781 () Bool)

(assert (=> start!92554 m!972781))

(push 1)

