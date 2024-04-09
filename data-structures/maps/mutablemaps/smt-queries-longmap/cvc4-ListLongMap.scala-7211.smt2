; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92368 () Bool)

(assert start!92368)

(declare-fun b!1049448 () Bool)

(declare-fun e!595471 () Bool)

(declare-fun e!595468 () Bool)

(assert (=> b!1049448 (= e!595471 e!595468)))

(declare-fun res!698684 () Bool)

(assert (=> b!1049448 (=> res!698684 e!595468)))

(declare-fun lt!463519 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049448 (= res!698684 (bvsle lt!463519 i!1381))))

(declare-fun b!1049449 () Bool)

(declare-fun e!595467 () Bool)

(declare-fun e!595465 () Bool)

(assert (=> b!1049449 (= e!595467 e!595465)))

(declare-fun res!698685 () Bool)

(assert (=> b!1049449 (=> (not res!698685) (not e!595465))))

(assert (=> b!1049449 (= res!698685 (not (= lt!463519 i!1381)))))

(declare-datatypes ((array!66117 0))(
  ( (array!66118 (arr!31794 (Array (_ BitVec 32) (_ BitVec 64))) (size!32331 (_ BitVec 32))) )
))
(declare-fun lt!463516 () array!66117)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66117 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049449 (= lt!463519 (arrayScanForKey!0 lt!463516 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049450 () Bool)

(declare-fun res!698686 () Bool)

(declare-fun e!595466 () Bool)

(assert (=> b!1049450 (=> (not res!698686) (not e!595466))))

(declare-fun a!3488 () array!66117)

(declare-datatypes ((List!22237 0))(
  ( (Nil!22234) (Cons!22233 (h!23442 (_ BitVec 64)) (t!31551 List!22237)) )
))
(declare-fun arrayNoDuplicates!0 (array!66117 (_ BitVec 32) List!22237) Bool)

(assert (=> b!1049450 (= res!698686 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22234))))

(declare-fun b!1049451 () Bool)

(declare-fun e!595470 () Bool)

(declare-fun e!595469 () Bool)

(assert (=> b!1049451 (= e!595470 e!595469)))

(declare-fun res!698688 () Bool)

(assert (=> b!1049451 (=> res!698688 e!595469)))

(assert (=> b!1049451 (= res!698688 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32331 a!3488)))))

(declare-fun arrayContainsKey!0 (array!66117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049451 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34317 0))(
  ( (Unit!34318) )
))
(declare-fun lt!463518 () Unit!34317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66117 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34317)

(assert (=> b!1049451 (= lt!463518 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463519 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049451 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22234)))

(declare-fun lt!463517 () Unit!34317)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66117 (_ BitVec 32) (_ BitVec 32)) Unit!34317)

(assert (=> b!1049451 (= lt!463517 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!698683 () Bool)

(assert (=> start!92368 (=> (not res!698683) (not e!595466))))

(assert (=> start!92368 (= res!698683 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32331 a!3488)) (bvslt (size!32331 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92368 e!595466))

(assert (=> start!92368 true))

(declare-fun array_inv!24416 (array!66117) Bool)

(assert (=> start!92368 (array_inv!24416 a!3488)))

(declare-fun b!1049452 () Bool)

(declare-fun res!698694 () Bool)

(assert (=> b!1049452 (=> res!698694 e!595469)))

(declare-fun noDuplicate!1514 (List!22237) Bool)

(assert (=> b!1049452 (= res!698694 (not (noDuplicate!1514 Nil!22234)))))

(declare-fun b!1049453 () Bool)

(assert (=> b!1049453 (= e!595469 true)))

(declare-fun lt!463515 () Bool)

(declare-fun contains!6129 (List!22237 (_ BitVec 64)) Bool)

(assert (=> b!1049453 (= lt!463515 (contains!6129 Nil!22234 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049454 () Bool)

(declare-fun res!698692 () Bool)

(assert (=> b!1049454 (=> (not res!698692) (not e!595466))))

(assert (=> b!1049454 (= res!698692 (= (select (arr!31794 a!3488) i!1381) k!2747))))

(declare-fun b!1049455 () Bool)

(declare-fun res!698690 () Bool)

(assert (=> b!1049455 (=> (not res!698690) (not e!595466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049455 (= res!698690 (validKeyInArray!0 k!2747))))

(declare-fun b!1049456 () Bool)

(assert (=> b!1049456 (= e!595466 e!595467)))

(declare-fun res!698689 () Bool)

(assert (=> b!1049456 (=> (not res!698689) (not e!595467))))

(assert (=> b!1049456 (= res!698689 (arrayContainsKey!0 lt!463516 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049456 (= lt!463516 (array!66118 (store (arr!31794 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32331 a!3488)))))

(declare-fun b!1049457 () Bool)

(declare-fun res!698687 () Bool)

(assert (=> b!1049457 (=> res!698687 e!595469)))

(assert (=> b!1049457 (= res!698687 (contains!6129 Nil!22234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049458 () Bool)

(assert (=> b!1049458 (= e!595468 (arrayContainsKey!0 a!3488 k!2747 lt!463519))))

(declare-fun b!1049459 () Bool)

(assert (=> b!1049459 (= e!595465 (not e!595470))))

(declare-fun res!698693 () Bool)

(assert (=> b!1049459 (=> res!698693 e!595470)))

(assert (=> b!1049459 (= res!698693 (bvsle lt!463519 i!1381))))

(assert (=> b!1049459 e!595471))

(declare-fun res!698691 () Bool)

(assert (=> b!1049459 (=> (not res!698691) (not e!595471))))

(assert (=> b!1049459 (= res!698691 (= (select (store (arr!31794 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463519) k!2747))))

(assert (= (and start!92368 res!698683) b!1049450))

(assert (= (and b!1049450 res!698686) b!1049455))

(assert (= (and b!1049455 res!698690) b!1049454))

(assert (= (and b!1049454 res!698692) b!1049456))

(assert (= (and b!1049456 res!698689) b!1049449))

(assert (= (and b!1049449 res!698685) b!1049459))

(assert (= (and b!1049459 res!698691) b!1049448))

(assert (= (and b!1049448 (not res!698684)) b!1049458))

(assert (= (and b!1049459 (not res!698693)) b!1049451))

(assert (= (and b!1049451 (not res!698688)) b!1049452))

(assert (= (and b!1049452 (not res!698694)) b!1049457))

(assert (= (and b!1049457 (not res!698687)) b!1049453))

(declare-fun m!970345 () Bool)

(assert (=> b!1049449 m!970345))

(declare-fun m!970347 () Bool)

(assert (=> b!1049456 m!970347))

(declare-fun m!970349 () Bool)

(assert (=> b!1049456 m!970349))

(declare-fun m!970351 () Bool)

(assert (=> b!1049453 m!970351))

(declare-fun m!970353 () Bool)

(assert (=> b!1049455 m!970353))

(declare-fun m!970355 () Bool)

(assert (=> b!1049451 m!970355))

(declare-fun m!970357 () Bool)

(assert (=> b!1049451 m!970357))

(declare-fun m!970359 () Bool)

(assert (=> b!1049451 m!970359))

(declare-fun m!970361 () Bool)

(assert (=> b!1049451 m!970361))

(declare-fun m!970363 () Bool)

(assert (=> b!1049454 m!970363))

(assert (=> b!1049459 m!970349))

(declare-fun m!970365 () Bool)

(assert (=> b!1049459 m!970365))

(declare-fun m!970367 () Bool)

(assert (=> start!92368 m!970367))

(declare-fun m!970369 () Bool)

(assert (=> b!1049457 m!970369))

(declare-fun m!970371 () Bool)

(assert (=> b!1049450 m!970371))

(declare-fun m!970373 () Bool)

(assert (=> b!1049452 m!970373))

(declare-fun m!970375 () Bool)

(assert (=> b!1049458 m!970375))

(push 1)

