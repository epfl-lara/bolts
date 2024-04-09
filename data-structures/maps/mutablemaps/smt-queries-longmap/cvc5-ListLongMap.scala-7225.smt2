; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92448 () Bool)

(assert start!92448)

(declare-fun b!1050637 () Bool)

(declare-fun res!699873 () Bool)

(declare-fun e!596291 () Bool)

(assert (=> b!1050637 (=> (not res!699873) (not e!596291))))

(declare-datatypes ((array!66197 0))(
  ( (array!66198 (arr!31834 (Array (_ BitVec 32) (_ BitVec 64))) (size!32371 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66197)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050637 (= res!699873 (= (select (arr!31834 a!3488) i!1381) k!2747))))

(declare-fun b!1050638 () Bool)

(declare-fun res!699875 () Bool)

(assert (=> b!1050638 (=> (not res!699875) (not e!596291))))

(declare-datatypes ((List!22277 0))(
  ( (Nil!22274) (Cons!22273 (h!23482 (_ BitVec 64)) (t!31591 List!22277)) )
))
(declare-fun arrayNoDuplicates!0 (array!66197 (_ BitVec 32) List!22277) Bool)

(assert (=> b!1050638 (= res!699875 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22274))))

(declare-fun b!1050639 () Bool)

(declare-fun e!596287 () Bool)

(assert (=> b!1050639 (= e!596287 (not true))))

(declare-fun e!596290 () Bool)

(assert (=> b!1050639 e!596290))

(declare-fun res!699872 () Bool)

(assert (=> b!1050639 (=> (not res!699872) (not e!596290))))

(declare-fun lt!464028 () (_ BitVec 32))

(assert (=> b!1050639 (= res!699872 (= (select (store (arr!31834 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464028) k!2747))))

(declare-fun b!1050640 () Bool)

(declare-fun e!596289 () Bool)

(declare-fun arrayContainsKey!0 (array!66197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050640 (= e!596289 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1050641 () Bool)

(assert (=> b!1050641 (= e!596290 e!596289)))

(declare-fun res!699879 () Bool)

(assert (=> b!1050641 (=> res!699879 e!596289)))

(assert (=> b!1050641 (= res!699879 (or (bvsgt lt!464028 i!1381) (bvsle i!1381 lt!464028)))))

(declare-fun b!1050642 () Bool)

(declare-fun res!699876 () Bool)

(assert (=> b!1050642 (=> (not res!699876) (not e!596291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050642 (= res!699876 (validKeyInArray!0 k!2747))))

(declare-fun res!699877 () Bool)

(assert (=> start!92448 (=> (not res!699877) (not e!596291))))

(assert (=> start!92448 (= res!699877 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32371 a!3488)) (bvslt (size!32371 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92448 e!596291))

(assert (=> start!92448 true))

(declare-fun array_inv!24456 (array!66197) Bool)

(assert (=> start!92448 (array_inv!24456 a!3488)))

(declare-fun b!1050643 () Bool)

(declare-fun e!596286 () Bool)

(assert (=> b!1050643 (= e!596286 e!596287)))

(declare-fun res!699878 () Bool)

(assert (=> b!1050643 (=> (not res!699878) (not e!596287))))

(assert (=> b!1050643 (= res!699878 (not (= lt!464028 i!1381)))))

(declare-fun lt!464029 () array!66197)

(declare-fun arrayScanForKey!0 (array!66197 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050643 (= lt!464028 (arrayScanForKey!0 lt!464029 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050644 () Bool)

(assert (=> b!1050644 (= e!596291 e!596286)))

(declare-fun res!699874 () Bool)

(assert (=> b!1050644 (=> (not res!699874) (not e!596286))))

(assert (=> b!1050644 (= res!699874 (arrayContainsKey!0 lt!464029 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050644 (= lt!464029 (array!66198 (store (arr!31834 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32371 a!3488)))))

(assert (= (and start!92448 res!699877) b!1050638))

(assert (= (and b!1050638 res!699875) b!1050642))

(assert (= (and b!1050642 res!699876) b!1050637))

(assert (= (and b!1050637 res!699873) b!1050644))

(assert (= (and b!1050644 res!699874) b!1050643))

(assert (= (and b!1050643 res!699878) b!1050639))

(assert (= (and b!1050639 res!699872) b!1050641))

(assert (= (and b!1050641 (not res!699879)) b!1050640))

(declare-fun m!971445 () Bool)

(assert (=> start!92448 m!971445))

(declare-fun m!971447 () Bool)

(assert (=> b!1050643 m!971447))

(declare-fun m!971449 () Bool)

(assert (=> b!1050637 m!971449))

(declare-fun m!971451 () Bool)

(assert (=> b!1050640 m!971451))

(declare-fun m!971453 () Bool)

(assert (=> b!1050642 m!971453))

(declare-fun m!971455 () Bool)

(assert (=> b!1050639 m!971455))

(declare-fun m!971457 () Bool)

(assert (=> b!1050639 m!971457))

(declare-fun m!971459 () Bool)

(assert (=> b!1050638 m!971459))

(declare-fun m!971461 () Bool)

(assert (=> b!1050644 m!971461))

(assert (=> b!1050644 m!971455))

(push 1)

