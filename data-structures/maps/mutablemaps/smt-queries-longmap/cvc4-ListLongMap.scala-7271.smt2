; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92884 () Bool)

(assert start!92884)

(declare-fun b!1054365 () Bool)

(declare-fun res!703416 () Bool)

(declare-fun e!599046 () Bool)

(assert (=> b!1054365 (=> (not res!703416) (not e!599046))))

(declare-datatypes ((array!66492 0))(
  ( (array!66493 (arr!31974 (Array (_ BitVec 32) (_ BitVec 64))) (size!32511 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66492)

(declare-datatypes ((List!22417 0))(
  ( (Nil!22414) (Cons!22413 (h!23622 (_ BitVec 64)) (t!31731 List!22417)) )
))
(declare-fun arrayNoDuplicates!0 (array!66492 (_ BitVec 32) List!22417) Bool)

(assert (=> b!1054365 (= res!703416 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22414))))

(declare-fun b!1054366 () Bool)

(declare-fun e!599048 () Bool)

(declare-fun e!599049 () Bool)

(assert (=> b!1054366 (= e!599048 e!599049)))

(declare-fun res!703420 () Bool)

(assert (=> b!1054366 (=> res!703420 e!599049)))

(declare-fun lt!465382 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054366 (= res!703420 (bvsle lt!465382 i!1381))))

(declare-fun b!1054367 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054367 (= e!599049 (arrayContainsKey!0 a!3488 k!2747 lt!465382))))

(declare-fun b!1054368 () Bool)

(declare-fun e!599051 () Bool)

(assert (=> b!1054368 (= e!599046 e!599051)))

(declare-fun res!703418 () Bool)

(assert (=> b!1054368 (=> (not res!703418) (not e!599051))))

(declare-fun lt!465380 () array!66492)

(assert (=> b!1054368 (= res!703418 (arrayContainsKey!0 lt!465380 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054368 (= lt!465380 (array!66493 (store (arr!31974 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32511 a!3488)))))

(declare-fun res!703421 () Bool)

(assert (=> start!92884 (=> (not res!703421) (not e!599046))))

(assert (=> start!92884 (= res!703421 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32511 a!3488)) (bvslt (size!32511 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92884 e!599046))

(assert (=> start!92884 true))

(declare-fun array_inv!24596 (array!66492) Bool)

(assert (=> start!92884 (array_inv!24596 a!3488)))

(declare-fun b!1054369 () Bool)

(declare-fun res!703417 () Bool)

(assert (=> b!1054369 (=> (not res!703417) (not e!599046))))

(assert (=> b!1054369 (= res!703417 (= (select (arr!31974 a!3488) i!1381) k!2747))))

(declare-fun b!1054370 () Bool)

(declare-fun e!599045 () Bool)

(assert (=> b!1054370 (= e!599045 true)))

(assert (=> b!1054370 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22414)))

(declare-datatypes ((Unit!34515 0))(
  ( (Unit!34516) )
))
(declare-fun lt!465381 () Unit!34515)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66492 (_ BitVec 32) (_ BitVec 32)) Unit!34515)

(assert (=> b!1054370 (= lt!465381 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054371 () Bool)

(declare-fun e!599047 () Bool)

(assert (=> b!1054371 (= e!599051 e!599047)))

(declare-fun res!703419 () Bool)

(assert (=> b!1054371 (=> (not res!703419) (not e!599047))))

(assert (=> b!1054371 (= res!703419 (not (= lt!465382 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66492 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054371 (= lt!465382 (arrayScanForKey!0 lt!465380 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054372 () Bool)

(declare-fun res!703422 () Bool)

(assert (=> b!1054372 (=> (not res!703422) (not e!599046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054372 (= res!703422 (validKeyInArray!0 k!2747))))

(declare-fun b!1054373 () Bool)

(assert (=> b!1054373 (= e!599047 (not e!599045))))

(declare-fun res!703415 () Bool)

(assert (=> b!1054373 (=> res!703415 e!599045)))

(assert (=> b!1054373 (= res!703415 (bvsle lt!465382 i!1381))))

(assert (=> b!1054373 e!599048))

(declare-fun res!703414 () Bool)

(assert (=> b!1054373 (=> (not res!703414) (not e!599048))))

(assert (=> b!1054373 (= res!703414 (= (select (store (arr!31974 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465382) k!2747))))

(assert (= (and start!92884 res!703421) b!1054365))

(assert (= (and b!1054365 res!703416) b!1054372))

(assert (= (and b!1054372 res!703422) b!1054369))

(assert (= (and b!1054369 res!703417) b!1054368))

(assert (= (and b!1054368 res!703418) b!1054371))

(assert (= (and b!1054371 res!703419) b!1054373))

(assert (= (and b!1054373 res!703414) b!1054366))

(assert (= (and b!1054366 (not res!703420)) b!1054367))

(assert (= (and b!1054373 (not res!703415)) b!1054370))

(declare-fun m!974579 () Bool)

(assert (=> b!1054370 m!974579))

(declare-fun m!974581 () Bool)

(assert (=> b!1054370 m!974581))

(declare-fun m!974583 () Bool)

(assert (=> b!1054368 m!974583))

(declare-fun m!974585 () Bool)

(assert (=> b!1054368 m!974585))

(declare-fun m!974587 () Bool)

(assert (=> start!92884 m!974587))

(declare-fun m!974589 () Bool)

(assert (=> b!1054365 m!974589))

(declare-fun m!974591 () Bool)

(assert (=> b!1054372 m!974591))

(declare-fun m!974593 () Bool)

(assert (=> b!1054371 m!974593))

(declare-fun m!974595 () Bool)

(assert (=> b!1054367 m!974595))

(declare-fun m!974597 () Bool)

(assert (=> b!1054369 m!974597))

(assert (=> b!1054373 m!974585))

(declare-fun m!974599 () Bool)

(assert (=> b!1054373 m!974599))

(push 1)

(assert (not b!1054372))

(assert (not start!92884))

(assert (not b!1054365))

(assert (not b!1054371))

(assert (not b!1054368))

(assert (not b!1054367))

(assert (not b!1054370))

(check-sat)

(pop 1)

(push 1)

(check-sat)

