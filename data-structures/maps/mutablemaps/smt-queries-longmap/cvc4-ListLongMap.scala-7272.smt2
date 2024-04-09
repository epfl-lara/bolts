; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92890 () Bool)

(assert start!92890)

(declare-fun b!1054446 () Bool)

(declare-fun e!599110 () Bool)

(declare-fun e!599108 () Bool)

(assert (=> b!1054446 (= e!599110 (not e!599108))))

(declare-fun res!703502 () Bool)

(assert (=> b!1054446 (=> res!703502 e!599108)))

(declare-fun lt!465409 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054446 (= res!703502 (bvsle lt!465409 i!1381))))

(declare-fun e!599109 () Bool)

(assert (=> b!1054446 e!599109))

(declare-fun res!703500 () Bool)

(assert (=> b!1054446 (=> (not res!703500) (not e!599109))))

(declare-datatypes ((array!66498 0))(
  ( (array!66499 (arr!31977 (Array (_ BitVec 32) (_ BitVec 64))) (size!32514 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66498)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1054446 (= res!703500 (= (select (store (arr!31977 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465409) k!2747))))

(declare-fun res!703499 () Bool)

(declare-fun e!599114 () Bool)

(assert (=> start!92890 (=> (not res!703499) (not e!599114))))

(assert (=> start!92890 (= res!703499 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32514 a!3488)) (bvslt (size!32514 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92890 e!599114))

(assert (=> start!92890 true))

(declare-fun array_inv!24599 (array!66498) Bool)

(assert (=> start!92890 (array_inv!24599 a!3488)))

(declare-fun e!599111 () Bool)

(declare-fun b!1054447 () Bool)

(declare-fun arrayContainsKey!0 (array!66498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054447 (= e!599111 (arrayContainsKey!0 a!3488 k!2747 lt!465409))))

(declare-fun b!1054448 () Bool)

(declare-fun res!703498 () Bool)

(assert (=> b!1054448 (=> (not res!703498) (not e!599114))))

(assert (=> b!1054448 (= res!703498 (= (select (arr!31977 a!3488) i!1381) k!2747))))

(declare-fun b!1054449 () Bool)

(declare-fun e!599113 () Bool)

(assert (=> b!1054449 (= e!599114 e!599113)))

(declare-fun res!703503 () Bool)

(assert (=> b!1054449 (=> (not res!703503) (not e!599113))))

(declare-fun lt!465407 () array!66498)

(assert (=> b!1054449 (= res!703503 (arrayContainsKey!0 lt!465407 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054449 (= lt!465407 (array!66499 (store (arr!31977 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32514 a!3488)))))

(declare-fun b!1054450 () Bool)

(assert (=> b!1054450 (= e!599109 e!599111)))

(declare-fun res!703501 () Bool)

(assert (=> b!1054450 (=> res!703501 e!599111)))

(assert (=> b!1054450 (= res!703501 (bvsle lt!465409 i!1381))))

(declare-fun b!1054451 () Bool)

(declare-fun res!703496 () Bool)

(assert (=> b!1054451 (=> (not res!703496) (not e!599114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054451 (= res!703496 (validKeyInArray!0 k!2747))))

(declare-fun b!1054452 () Bool)

(assert (=> b!1054452 (= e!599108 true)))

(declare-datatypes ((List!22420 0))(
  ( (Nil!22417) (Cons!22416 (h!23625 (_ BitVec 64)) (t!31734 List!22420)) )
))
(declare-fun arrayNoDuplicates!0 (array!66498 (_ BitVec 32) List!22420) Bool)

(assert (=> b!1054452 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22417)))

(declare-datatypes ((Unit!34521 0))(
  ( (Unit!34522) )
))
(declare-fun lt!465408 () Unit!34521)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66498 (_ BitVec 32) (_ BitVec 32)) Unit!34521)

(assert (=> b!1054452 (= lt!465408 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054453 () Bool)

(assert (=> b!1054453 (= e!599113 e!599110)))

(declare-fun res!703495 () Bool)

(assert (=> b!1054453 (=> (not res!703495) (not e!599110))))

(assert (=> b!1054453 (= res!703495 (not (= lt!465409 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66498 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054453 (= lt!465409 (arrayScanForKey!0 lt!465407 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054454 () Bool)

(declare-fun res!703497 () Bool)

(assert (=> b!1054454 (=> (not res!703497) (not e!599114))))

(assert (=> b!1054454 (= res!703497 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22417))))

(assert (= (and start!92890 res!703499) b!1054454))

(assert (= (and b!1054454 res!703497) b!1054451))

(assert (= (and b!1054451 res!703496) b!1054448))

(assert (= (and b!1054448 res!703498) b!1054449))

(assert (= (and b!1054449 res!703503) b!1054453))

(assert (= (and b!1054453 res!703495) b!1054446))

(assert (= (and b!1054446 res!703500) b!1054450))

(assert (= (and b!1054450 (not res!703501)) b!1054447))

(assert (= (and b!1054446 (not res!703502)) b!1054452))

(declare-fun m!974645 () Bool)

(assert (=> b!1054452 m!974645))

(declare-fun m!974647 () Bool)

(assert (=> b!1054452 m!974647))

(declare-fun m!974649 () Bool)

(assert (=> b!1054448 m!974649))

(declare-fun m!974651 () Bool)

(assert (=> start!92890 m!974651))

(declare-fun m!974653 () Bool)

(assert (=> b!1054447 m!974653))

(declare-fun m!974655 () Bool)

(assert (=> b!1054454 m!974655))

(declare-fun m!974657 () Bool)

(assert (=> b!1054451 m!974657))

(declare-fun m!974659 () Bool)

(assert (=> b!1054449 m!974659))

(declare-fun m!974661 () Bool)

(assert (=> b!1054449 m!974661))

(declare-fun m!974663 () Bool)

(assert (=> b!1054453 m!974663))

(assert (=> b!1054446 m!974661))

(declare-fun m!974665 () Bool)

(assert (=> b!1054446 m!974665))

(push 1)

