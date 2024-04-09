; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92556 () Bool)

(assert start!92556)

(declare-fun b!1052247 () Bool)

(declare-fun e!597449 () Bool)

(declare-fun e!597442 () Bool)

(assert (=> b!1052247 (= e!597449 (not e!597442))))

(declare-fun res!701483 () Bool)

(assert (=> b!1052247 (=> res!701483 e!597442)))

(declare-fun lt!464669 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052247 (= res!701483 (or (bvsgt lt!464669 i!1381) (bvsle i!1381 lt!464669)))))

(declare-fun e!597444 () Bool)

(assert (=> b!1052247 e!597444))

(declare-fun res!701489 () Bool)

(assert (=> b!1052247 (=> (not res!701489) (not e!597444))))

(declare-datatypes ((array!66305 0))(
  ( (array!66306 (arr!31888 (Array (_ BitVec 32) (_ BitVec 64))) (size!32425 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66305)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1052247 (= res!701489 (= (select (store (arr!31888 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464669) k!2747))))

(declare-fun b!1052248 () Bool)

(declare-fun res!701482 () Bool)

(declare-fun e!597447 () Bool)

(assert (=> b!1052248 (=> (not res!701482) (not e!597447))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052248 (= res!701482 (validKeyInArray!0 k!2747))))

(declare-fun b!1052249 () Bool)

(declare-fun e!597445 () Bool)

(assert (=> b!1052249 (= e!597444 e!597445)))

(declare-fun res!701486 () Bool)

(assert (=> b!1052249 (=> res!701486 e!597445)))

(assert (=> b!1052249 (= res!701486 (or (bvsgt lt!464669 i!1381) (bvsle i!1381 lt!464669)))))

(declare-fun res!701492 () Bool)

(assert (=> start!92556 (=> (not res!701492) (not e!597447))))

(assert (=> start!92556 (= res!701492 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32425 a!3488)) (bvslt (size!32425 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92556 e!597447))

(assert (=> start!92556 true))

(declare-fun array_inv!24510 (array!66305) Bool)

(assert (=> start!92556 (array_inv!24510 a!3488)))

(declare-fun b!1052250 () Bool)

(declare-fun res!701493 () Bool)

(assert (=> b!1052250 (=> (not res!701493) (not e!597447))))

(assert (=> b!1052250 (= res!701493 (= (select (arr!31888 a!3488) i!1381) k!2747))))

(declare-fun b!1052251 () Bool)

(declare-fun res!701487 () Bool)

(assert (=> b!1052251 (=> (not res!701487) (not e!597447))))

(declare-datatypes ((List!22331 0))(
  ( (Nil!22328) (Cons!22327 (h!23536 (_ BitVec 64)) (t!31645 List!22331)) )
))
(declare-fun arrayNoDuplicates!0 (array!66305 (_ BitVec 32) List!22331) Bool)

(assert (=> b!1052251 (= res!701487 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22328))))

(declare-fun b!1052252 () Bool)

(declare-fun res!701488 () Bool)

(declare-fun e!597446 () Bool)

(assert (=> b!1052252 (=> res!701488 e!597446)))

(declare-fun contains!6172 (List!22331 (_ BitVec 64)) Bool)

(assert (=> b!1052252 (= res!701488 (contains!6172 Nil!22328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052253 () Bool)

(declare-fun e!597443 () Bool)

(assert (=> b!1052253 (= e!597443 e!597449)))

(declare-fun res!701491 () Bool)

(assert (=> b!1052253 (=> (not res!701491) (not e!597449))))

(assert (=> b!1052253 (= res!701491 (not (= lt!464669 i!1381)))))

(declare-fun lt!464667 () array!66305)

(declare-fun arrayScanForKey!0 (array!66305 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052253 (= lt!464669 (arrayScanForKey!0 lt!464667 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052254 () Bool)

(assert (=> b!1052254 (= e!597447 e!597443)))

(declare-fun res!701485 () Bool)

(assert (=> b!1052254 (=> (not res!701485) (not e!597443))))

(declare-fun arrayContainsKey!0 (array!66305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052254 (= res!701485 (arrayContainsKey!0 lt!464667 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052254 (= lt!464667 (array!66306 (store (arr!31888 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32425 a!3488)))))

(declare-fun b!1052255 () Bool)

(assert (=> b!1052255 (= e!597442 e!597446)))

(declare-fun res!701490 () Bool)

(assert (=> b!1052255 (=> res!701490 e!597446)))

(declare-fun lt!464666 () (_ BitVec 32))

(assert (=> b!1052255 (= res!701490 (or (bvslt lt!464669 #b00000000000000000000000000000000) (bvsge lt!464666 (size!32425 a!3488)) (bvsge lt!464669 (size!32425 a!3488))))))

(assert (=> b!1052255 (arrayContainsKey!0 a!3488 k!2747 lt!464666)))

(declare-datatypes ((Unit!34457 0))(
  ( (Unit!34458) )
))
(declare-fun lt!464668 () Unit!34457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66305 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34457)

(assert (=> b!1052255 (= lt!464668 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464666))))

(assert (=> b!1052255 (= lt!464666 (bvadd #b00000000000000000000000000000001 lt!464669))))

(assert (=> b!1052255 (arrayNoDuplicates!0 a!3488 lt!464669 Nil!22328)))

(declare-fun lt!464671 () Unit!34457)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66305 (_ BitVec 32) (_ BitVec 32)) Unit!34457)

(assert (=> b!1052255 (= lt!464671 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464669))))

(declare-fun b!1052256 () Bool)

(declare-fun res!701484 () Bool)

(assert (=> b!1052256 (=> res!701484 e!597446)))

(declare-fun noDuplicate!1557 (List!22331) Bool)

(assert (=> b!1052256 (= res!701484 (not (noDuplicate!1557 Nil!22328)))))

(declare-fun b!1052257 () Bool)

(assert (=> b!1052257 (= e!597446 true)))

(declare-fun lt!464670 () Bool)

(assert (=> b!1052257 (= lt!464670 (contains!6172 Nil!22328 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052258 () Bool)

(assert (=> b!1052258 (= e!597445 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92556 res!701492) b!1052251))

(assert (= (and b!1052251 res!701487) b!1052248))

(assert (= (and b!1052248 res!701482) b!1052250))

(assert (= (and b!1052250 res!701493) b!1052254))

(assert (= (and b!1052254 res!701485) b!1052253))

(assert (= (and b!1052253 res!701491) b!1052247))

(assert (= (and b!1052247 res!701489) b!1052249))

(assert (= (and b!1052249 (not res!701486)) b!1052258))

(assert (= (and b!1052247 (not res!701483)) b!1052255))

(assert (= (and b!1052255 (not res!701490)) b!1052256))

(assert (= (and b!1052256 (not res!701484)) b!1052252))

(assert (= (and b!1052252 (not res!701488)) b!1052257))

(declare-fun m!972783 () Bool)

(assert (=> b!1052257 m!972783))

(declare-fun m!972785 () Bool)

(assert (=> b!1052251 m!972785))

(declare-fun m!972787 () Bool)

(assert (=> b!1052254 m!972787))

(declare-fun m!972789 () Bool)

(assert (=> b!1052254 m!972789))

(declare-fun m!972791 () Bool)

(assert (=> b!1052253 m!972791))

(declare-fun m!972793 () Bool)

(assert (=> start!92556 m!972793))

(declare-fun m!972795 () Bool)

(assert (=> b!1052258 m!972795))

(declare-fun m!972797 () Bool)

(assert (=> b!1052250 m!972797))

(declare-fun m!972799 () Bool)

(assert (=> b!1052256 m!972799))

(assert (=> b!1052247 m!972789))

(declare-fun m!972801 () Bool)

(assert (=> b!1052247 m!972801))

(declare-fun m!972803 () Bool)

(assert (=> b!1052248 m!972803))

(declare-fun m!972805 () Bool)

(assert (=> b!1052252 m!972805))

(declare-fun m!972807 () Bool)

(assert (=> b!1052255 m!972807))

(declare-fun m!972809 () Bool)

(assert (=> b!1052255 m!972809))

(declare-fun m!972811 () Bool)

(assert (=> b!1052255 m!972811))

(declare-fun m!972813 () Bool)

(assert (=> b!1052255 m!972813))

(push 1)

