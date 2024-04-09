; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92430 () Bool)

(assert start!92430)

(declare-fun b!1050471 () Bool)

(declare-fun e!596177 () Bool)

(declare-fun e!596174 () Bool)

(assert (=> b!1050471 (= e!596177 e!596174)))

(declare-fun res!699709 () Bool)

(assert (=> b!1050471 (=> (not res!699709) (not e!596174))))

(declare-fun lt!463975 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050471 (= res!699709 (not (= lt!463975 i!1381)))))

(declare-datatypes ((array!66179 0))(
  ( (array!66180 (arr!31825 (Array (_ BitVec 32) (_ BitVec 64))) (size!32362 (_ BitVec 32))) )
))
(declare-fun lt!463974 () array!66179)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66179 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050471 (= lt!463975 (arrayScanForKey!0 lt!463974 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050472 () Bool)

(assert (=> b!1050472 (= e!596174 (not true))))

(declare-fun a!3488 () array!66179)

(assert (=> b!1050472 (= (select (store (arr!31825 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463975) k!2747)))

(declare-fun b!1050473 () Bool)

(declare-fun res!699707 () Bool)

(declare-fun e!596176 () Bool)

(assert (=> b!1050473 (=> (not res!699707) (not e!596176))))

(assert (=> b!1050473 (= res!699707 (= (select (arr!31825 a!3488) i!1381) k!2747))))

(declare-fun b!1050474 () Bool)

(declare-fun res!699708 () Bool)

(assert (=> b!1050474 (=> (not res!699708) (not e!596176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050474 (= res!699708 (validKeyInArray!0 k!2747))))

(declare-fun b!1050475 () Bool)

(declare-fun res!699706 () Bool)

(assert (=> b!1050475 (=> (not res!699706) (not e!596176))))

(declare-datatypes ((List!22268 0))(
  ( (Nil!22265) (Cons!22264 (h!23473 (_ BitVec 64)) (t!31582 List!22268)) )
))
(declare-fun arrayNoDuplicates!0 (array!66179 (_ BitVec 32) List!22268) Bool)

(assert (=> b!1050475 (= res!699706 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22265))))

(declare-fun b!1050476 () Bool)

(assert (=> b!1050476 (= e!596176 e!596177)))

(declare-fun res!699711 () Bool)

(assert (=> b!1050476 (=> (not res!699711) (not e!596177))))

(declare-fun arrayContainsKey!0 (array!66179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050476 (= res!699711 (arrayContainsKey!0 lt!463974 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050476 (= lt!463974 (array!66180 (store (arr!31825 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32362 a!3488)))))

(declare-fun res!699710 () Bool)

(assert (=> start!92430 (=> (not res!699710) (not e!596176))))

(assert (=> start!92430 (= res!699710 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32362 a!3488)) (bvslt (size!32362 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92430 e!596176))

(assert (=> start!92430 true))

(declare-fun array_inv!24447 (array!66179) Bool)

(assert (=> start!92430 (array_inv!24447 a!3488)))

(assert (= (and start!92430 res!699710) b!1050475))

(assert (= (and b!1050475 res!699706) b!1050474))

(assert (= (and b!1050474 res!699708) b!1050473))

(assert (= (and b!1050473 res!699707) b!1050476))

(assert (= (and b!1050476 res!699711) b!1050471))

(assert (= (and b!1050471 res!699709) b!1050472))

(declare-fun m!971301 () Bool)

(assert (=> b!1050472 m!971301))

(declare-fun m!971303 () Bool)

(assert (=> b!1050472 m!971303))

(declare-fun m!971305 () Bool)

(assert (=> b!1050471 m!971305))

(declare-fun m!971307 () Bool)

(assert (=> b!1050475 m!971307))

(declare-fun m!971309 () Bool)

(assert (=> start!92430 m!971309))

(declare-fun m!971311 () Bool)

(assert (=> b!1050476 m!971311))

(assert (=> b!1050476 m!971301))

(declare-fun m!971313 () Bool)

(assert (=> b!1050473 m!971313))

(declare-fun m!971315 () Bool)

(assert (=> b!1050474 m!971315))

(push 1)

