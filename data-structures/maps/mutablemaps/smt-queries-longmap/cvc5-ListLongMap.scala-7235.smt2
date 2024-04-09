; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92508 () Bool)

(assert start!92508)

(declare-fun b!1051404 () Bool)

(declare-fun res!700646 () Bool)

(declare-fun e!596878 () Bool)

(assert (=> b!1051404 (=> (not res!700646) (not e!596878))))

(declare-datatypes ((array!66257 0))(
  ( (array!66258 (arr!31864 (Array (_ BitVec 32) (_ BitVec 64))) (size!32401 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66257)

(declare-datatypes ((List!22307 0))(
  ( (Nil!22304) (Cons!22303 (h!23512 (_ BitVec 64)) (t!31621 List!22307)) )
))
(declare-fun arrayNoDuplicates!0 (array!66257 (_ BitVec 32) List!22307) Bool)

(assert (=> b!1051404 (= res!700646 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22304))))

(declare-fun b!1051405 () Bool)

(declare-fun e!596877 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051405 (= e!596877 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051406 () Bool)

(declare-fun e!596876 () Bool)

(assert (=> b!1051406 (= e!596876 e!596877)))

(declare-fun res!700643 () Bool)

(assert (=> b!1051406 (=> res!700643 e!596877)))

(declare-fun lt!464257 () (_ BitVec 32))

(assert (=> b!1051406 (= res!700643 (or (bvsgt lt!464257 i!1381) (bvsle i!1381 lt!464257)))))

(declare-fun b!1051407 () Bool)

(declare-fun res!700640 () Bool)

(assert (=> b!1051407 (=> (not res!700640) (not e!596878))))

(assert (=> b!1051407 (= res!700640 (= (select (arr!31864 a!3488) i!1381) k!2747))))

(declare-fun b!1051408 () Bool)

(declare-fun e!596879 () Bool)

(assert (=> b!1051408 (= e!596879 true)))

(assert (=> b!1051408 (arrayNoDuplicates!0 a!3488 lt!464257 Nil!22304)))

(declare-datatypes ((Unit!34409 0))(
  ( (Unit!34410) )
))
(declare-fun lt!464256 () Unit!34409)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66257 (_ BitVec 32) (_ BitVec 32)) Unit!34409)

(assert (=> b!1051408 (= lt!464256 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464257))))

(declare-fun b!1051409 () Bool)

(declare-fun e!596874 () Bool)

(assert (=> b!1051409 (= e!596878 e!596874)))

(declare-fun res!700644 () Bool)

(assert (=> b!1051409 (=> (not res!700644) (not e!596874))))

(declare-fun lt!464255 () array!66257)

(assert (=> b!1051409 (= res!700644 (arrayContainsKey!0 lt!464255 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051409 (= lt!464255 (array!66258 (store (arr!31864 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32401 a!3488)))))

(declare-fun res!700639 () Bool)

(assert (=> start!92508 (=> (not res!700639) (not e!596878))))

(assert (=> start!92508 (= res!700639 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32401 a!3488)) (bvslt (size!32401 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92508 e!596878))

(assert (=> start!92508 true))

(declare-fun array_inv!24486 (array!66257) Bool)

(assert (=> start!92508 (array_inv!24486 a!3488)))

(declare-fun b!1051410 () Bool)

(declare-fun e!596873 () Bool)

(assert (=> b!1051410 (= e!596874 e!596873)))

(declare-fun res!700647 () Bool)

(assert (=> b!1051410 (=> (not res!700647) (not e!596873))))

(assert (=> b!1051410 (= res!700647 (not (= lt!464257 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66257 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051410 (= lt!464257 (arrayScanForKey!0 lt!464255 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051411 () Bool)

(declare-fun res!700642 () Bool)

(assert (=> b!1051411 (=> (not res!700642) (not e!596878))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051411 (= res!700642 (validKeyInArray!0 k!2747))))

(declare-fun b!1051412 () Bool)

(assert (=> b!1051412 (= e!596873 (not e!596879))))

(declare-fun res!700641 () Bool)

(assert (=> b!1051412 (=> res!700641 e!596879)))

(assert (=> b!1051412 (= res!700641 (or (bvsgt lt!464257 i!1381) (bvsle i!1381 lt!464257)))))

(assert (=> b!1051412 e!596876))

(declare-fun res!700645 () Bool)

(assert (=> b!1051412 (=> (not res!700645) (not e!596876))))

(assert (=> b!1051412 (= res!700645 (= (select (store (arr!31864 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464257) k!2747))))

(assert (= (and start!92508 res!700639) b!1051404))

(assert (= (and b!1051404 res!700646) b!1051411))

(assert (= (and b!1051411 res!700642) b!1051407))

(assert (= (and b!1051407 res!700640) b!1051409))

(assert (= (and b!1051409 res!700644) b!1051410))

(assert (= (and b!1051410 res!700647) b!1051412))

(assert (= (and b!1051412 res!700645) b!1051406))

(assert (= (and b!1051406 (not res!700643)) b!1051405))

(assert (= (and b!1051412 (not res!700641)) b!1051408))

(declare-fun m!972045 () Bool)

(assert (=> b!1051411 m!972045))

(declare-fun m!972047 () Bool)

(assert (=> b!1051405 m!972047))

(declare-fun m!972049 () Bool)

(assert (=> b!1051408 m!972049))

(declare-fun m!972051 () Bool)

(assert (=> b!1051408 m!972051))

(declare-fun m!972053 () Bool)

(assert (=> start!92508 m!972053))

(declare-fun m!972055 () Bool)

(assert (=> b!1051404 m!972055))

(declare-fun m!972057 () Bool)

(assert (=> b!1051407 m!972057))

(declare-fun m!972059 () Bool)

(assert (=> b!1051412 m!972059))

(declare-fun m!972061 () Bool)

(assert (=> b!1051412 m!972061))

(declare-fun m!972063 () Bool)

(assert (=> b!1051409 m!972063))

(assert (=> b!1051409 m!972059))

(declare-fun m!972065 () Bool)

(assert (=> b!1051410 m!972065))

(push 1)

