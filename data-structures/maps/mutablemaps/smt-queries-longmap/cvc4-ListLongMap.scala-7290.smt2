; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93202 () Bool)

(assert start!93202)

(declare-fun b!1056490 () Bool)

(declare-fun res!705344 () Bool)

(declare-fun e!600686 () Bool)

(assert (=> b!1056490 (=> (not res!705344) (not e!600686))))

(declare-datatypes ((array!66621 0))(
  ( (array!66622 (arr!32031 (Array (_ BitVec 32) (_ BitVec 64))) (size!32568 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66621)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1056490 (= res!705344 (= (select (arr!32031 a!3488) i!1381) k!2747))))

(declare-fun b!1056491 () Bool)

(declare-fun e!600688 () Bool)

(declare-fun e!600685 () Bool)

(assert (=> b!1056491 (= e!600688 e!600685)))

(declare-fun res!705346 () Bool)

(assert (=> b!1056491 (=> res!705346 e!600685)))

(declare-fun lt!466104 () (_ BitVec 32))

(assert (=> b!1056491 (= res!705346 (or (bvsgt lt!466104 i!1381) (bvsle i!1381 lt!466104)))))

(declare-fun b!1056492 () Bool)

(declare-fun e!600687 () Bool)

(assert (=> b!1056492 (= e!600687 (not true))))

(assert (=> b!1056492 e!600688))

(declare-fun res!705348 () Bool)

(assert (=> b!1056492 (=> (not res!705348) (not e!600688))))

(assert (=> b!1056492 (= res!705348 (= (select (store (arr!32031 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466104) k!2747))))

(declare-fun b!1056493 () Bool)

(declare-fun e!600689 () Bool)

(assert (=> b!1056493 (= e!600689 e!600687)))

(declare-fun res!705341 () Bool)

(assert (=> b!1056493 (=> (not res!705341) (not e!600687))))

(assert (=> b!1056493 (= res!705341 (not (= lt!466104 i!1381)))))

(declare-fun lt!466105 () array!66621)

(declare-fun arrayScanForKey!0 (array!66621 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056493 (= lt!466104 (arrayScanForKey!0 lt!466105 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056494 () Bool)

(declare-fun res!705343 () Bool)

(assert (=> b!1056494 (=> (not res!705343) (not e!600686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056494 (= res!705343 (validKeyInArray!0 k!2747))))

(declare-fun res!705342 () Bool)

(assert (=> start!93202 (=> (not res!705342) (not e!600686))))

(assert (=> start!93202 (= res!705342 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32568 a!3488)) (bvslt (size!32568 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93202 e!600686))

(assert (=> start!93202 true))

(declare-fun array_inv!24653 (array!66621) Bool)

(assert (=> start!93202 (array_inv!24653 a!3488)))

(declare-fun b!1056495 () Bool)

(assert (=> b!1056495 (= e!600686 e!600689)))

(declare-fun res!705347 () Bool)

(assert (=> b!1056495 (=> (not res!705347) (not e!600689))))

(declare-fun arrayContainsKey!0 (array!66621 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056495 (= res!705347 (arrayContainsKey!0 lt!466105 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056495 (= lt!466105 (array!66622 (store (arr!32031 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32568 a!3488)))))

(declare-fun b!1056496 () Bool)

(assert (=> b!1056496 (= e!600685 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056497 () Bool)

(declare-fun res!705345 () Bool)

(assert (=> b!1056497 (=> (not res!705345) (not e!600686))))

(declare-datatypes ((List!22474 0))(
  ( (Nil!22471) (Cons!22470 (h!23679 (_ BitVec 64)) (t!31788 List!22474)) )
))
(declare-fun arrayNoDuplicates!0 (array!66621 (_ BitVec 32) List!22474) Bool)

(assert (=> b!1056497 (= res!705345 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22471))))

(assert (= (and start!93202 res!705342) b!1056497))

(assert (= (and b!1056497 res!705345) b!1056494))

(assert (= (and b!1056494 res!705343) b!1056490))

(assert (= (and b!1056490 res!705344) b!1056495))

(assert (= (and b!1056495 res!705347) b!1056493))

(assert (= (and b!1056493 res!705341) b!1056492))

(assert (= (and b!1056492 res!705348) b!1056491))

(assert (= (and b!1056491 (not res!705346)) b!1056496))

(declare-fun m!976455 () Bool)

(assert (=> b!1056497 m!976455))

(declare-fun m!976457 () Bool)

(assert (=> b!1056495 m!976457))

(declare-fun m!976459 () Bool)

(assert (=> b!1056495 m!976459))

(declare-fun m!976461 () Bool)

(assert (=> b!1056494 m!976461))

(declare-fun m!976463 () Bool)

(assert (=> b!1056496 m!976463))

(declare-fun m!976465 () Bool)

(assert (=> b!1056493 m!976465))

(declare-fun m!976467 () Bool)

(assert (=> start!93202 m!976467))

(declare-fun m!976469 () Bool)

(assert (=> b!1056490 m!976469))

(assert (=> b!1056492 m!976459))

(declare-fun m!976471 () Bool)

(assert (=> b!1056492 m!976471))

(push 1)

(assert (not start!93202))

(assert (not b!1056495))

