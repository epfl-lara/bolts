; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92880 () Bool)

(assert start!92880)

(declare-fun b!1054311 () Bool)

(declare-fun res!703367 () Bool)

(declare-fun e!599006 () Bool)

(assert (=> b!1054311 (=> (not res!703367) (not e!599006))))

(declare-datatypes ((array!66488 0))(
  ( (array!66489 (arr!31972 (Array (_ BitVec 32) (_ BitVec 64))) (size!32509 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66488)

(declare-datatypes ((List!22415 0))(
  ( (Nil!22412) (Cons!22411 (h!23620 (_ BitVec 64)) (t!31729 List!22415)) )
))
(declare-fun arrayNoDuplicates!0 (array!66488 (_ BitVec 32) List!22415) Bool)

(assert (=> b!1054311 (= res!703367 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22412))))

(declare-fun b!1054312 () Bool)

(declare-fun e!599007 () Bool)

(declare-fun e!599004 () Bool)

(assert (=> b!1054312 (= e!599007 e!599004)))

(declare-fun res!703366 () Bool)

(assert (=> b!1054312 (=> (not res!703366) (not e!599004))))

(declare-fun lt!465362 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054312 (= res!703366 (not (= lt!465362 i!1381)))))

(declare-fun lt!465363 () array!66488)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66488 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054312 (= lt!465362 (arrayScanForKey!0 lt!465363 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054313 () Bool)

(declare-fun e!599008 () Bool)

(assert (=> b!1054313 (= e!599008 true)))

(assert (=> b!1054313 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22412)))

(declare-datatypes ((Unit!34511 0))(
  ( (Unit!34512) )
))
(declare-fun lt!465364 () Unit!34511)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66488 (_ BitVec 32) (_ BitVec 32)) Unit!34511)

(assert (=> b!1054313 (= lt!465364 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054314 () Bool)

(declare-fun e!599009 () Bool)

(declare-fun e!599005 () Bool)

(assert (=> b!1054314 (= e!599009 e!599005)))

(declare-fun res!703363 () Bool)

(assert (=> b!1054314 (=> res!703363 e!599005)))

(assert (=> b!1054314 (= res!703363 (bvsle lt!465362 i!1381))))

(declare-fun b!1054315 () Bool)

(declare-fun res!703364 () Bool)

(assert (=> b!1054315 (=> (not res!703364) (not e!599006))))

(assert (=> b!1054315 (= res!703364 (= (select (arr!31972 a!3488) i!1381) k!2747))))

(declare-fun b!1054316 () Bool)

(declare-fun arrayContainsKey!0 (array!66488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054316 (= e!599005 (arrayContainsKey!0 a!3488 k!2747 lt!465362))))

(declare-fun b!1054317 () Bool)

(assert (=> b!1054317 (= e!599004 (not e!599008))))

(declare-fun res!703368 () Bool)

(assert (=> b!1054317 (=> res!703368 e!599008)))

(assert (=> b!1054317 (= res!703368 (bvsle lt!465362 i!1381))))

(assert (=> b!1054317 e!599009))

(declare-fun res!703360 () Bool)

(assert (=> b!1054317 (=> (not res!703360) (not e!599009))))

(assert (=> b!1054317 (= res!703360 (= (select (store (arr!31972 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465362) k!2747))))

(declare-fun b!1054318 () Bool)

(assert (=> b!1054318 (= e!599006 e!599007)))

(declare-fun res!703365 () Bool)

(assert (=> b!1054318 (=> (not res!703365) (not e!599007))))

(assert (=> b!1054318 (= res!703365 (arrayContainsKey!0 lt!465363 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054318 (= lt!465363 (array!66489 (store (arr!31972 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32509 a!3488)))))

(declare-fun res!703361 () Bool)

(assert (=> start!92880 (=> (not res!703361) (not e!599006))))

(assert (=> start!92880 (= res!703361 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32509 a!3488)) (bvslt (size!32509 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92880 e!599006))

(assert (=> start!92880 true))

(declare-fun array_inv!24594 (array!66488) Bool)

(assert (=> start!92880 (array_inv!24594 a!3488)))

(declare-fun b!1054319 () Bool)

(declare-fun res!703362 () Bool)

(assert (=> b!1054319 (=> (not res!703362) (not e!599006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054319 (= res!703362 (validKeyInArray!0 k!2747))))

(assert (= (and start!92880 res!703361) b!1054311))

(assert (= (and b!1054311 res!703367) b!1054319))

(assert (= (and b!1054319 res!703362) b!1054315))

(assert (= (and b!1054315 res!703364) b!1054318))

(assert (= (and b!1054318 res!703365) b!1054312))

(assert (= (and b!1054312 res!703366) b!1054317))

(assert (= (and b!1054317 res!703360) b!1054314))

(assert (= (and b!1054314 (not res!703363)) b!1054316))

(assert (= (and b!1054317 (not res!703368)) b!1054313))

(declare-fun m!974535 () Bool)

(assert (=> b!1054315 m!974535))

(declare-fun m!974537 () Bool)

(assert (=> b!1054317 m!974537))

(declare-fun m!974539 () Bool)

(assert (=> b!1054317 m!974539))

(declare-fun m!974541 () Bool)

(assert (=> b!1054311 m!974541))

(declare-fun m!974543 () Bool)

(assert (=> b!1054316 m!974543))

(declare-fun m!974545 () Bool)

(assert (=> b!1054313 m!974545))

(declare-fun m!974547 () Bool)

(assert (=> b!1054313 m!974547))

(declare-fun m!974549 () Bool)

(assert (=> start!92880 m!974549))

(declare-fun m!974551 () Bool)

(assert (=> b!1054312 m!974551))

(declare-fun m!974553 () Bool)

(assert (=> b!1054319 m!974553))

(declare-fun m!974555 () Bool)

(assert (=> b!1054318 m!974555))

(assert (=> b!1054318 m!974537))

(push 1)

