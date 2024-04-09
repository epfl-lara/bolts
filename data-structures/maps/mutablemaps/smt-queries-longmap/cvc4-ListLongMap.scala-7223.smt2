; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92440 () Bool)

(assert start!92440)

(declare-fun b!1050561 () Bool)

(declare-fun res!699800 () Bool)

(declare-fun e!596236 () Bool)

(assert (=> b!1050561 (=> (not res!699800) (not e!596236))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050561 (= res!699800 (validKeyInArray!0 k!2747))))

(declare-fun b!1050562 () Bool)

(declare-fun res!699799 () Bool)

(assert (=> b!1050562 (=> (not res!699799) (not e!596236))))

(declare-datatypes ((array!66189 0))(
  ( (array!66190 (arr!31830 (Array (_ BitVec 32) (_ BitVec 64))) (size!32367 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66189)

(declare-datatypes ((List!22273 0))(
  ( (Nil!22270) (Cons!22269 (h!23478 (_ BitVec 64)) (t!31587 List!22273)) )
))
(declare-fun arrayNoDuplicates!0 (array!66189 (_ BitVec 32) List!22273) Bool)

(assert (=> b!1050562 (= res!699799 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22270))))

(declare-fun b!1050563 () Bool)

(declare-fun res!699801 () Bool)

(assert (=> b!1050563 (=> (not res!699801) (not e!596236))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050563 (= res!699801 (= (select (arr!31830 a!3488) i!1381) k!2747))))

(declare-fun b!1050564 () Bool)

(declare-fun e!596237 () Bool)

(assert (=> b!1050564 (= e!596237 (not true))))

(declare-fun lt!464004 () (_ BitVec 32))

(assert (=> b!1050564 (= (select (store (arr!31830 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464004) k!2747)))

(declare-fun b!1050565 () Bool)

(declare-fun e!596234 () Bool)

(assert (=> b!1050565 (= e!596236 e!596234)))

(declare-fun res!699796 () Bool)

(assert (=> b!1050565 (=> (not res!699796) (not e!596234))))

(declare-fun lt!464005 () array!66189)

(declare-fun arrayContainsKey!0 (array!66189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050565 (= res!699796 (arrayContainsKey!0 lt!464005 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050565 (= lt!464005 (array!66190 (store (arr!31830 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32367 a!3488)))))

(declare-fun b!1050566 () Bool)

(assert (=> b!1050566 (= e!596234 e!596237)))

(declare-fun res!699798 () Bool)

(assert (=> b!1050566 (=> (not res!699798) (not e!596237))))

(assert (=> b!1050566 (= res!699798 (not (= lt!464004 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66189 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050566 (= lt!464004 (arrayScanForKey!0 lt!464005 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!699797 () Bool)

(assert (=> start!92440 (=> (not res!699797) (not e!596236))))

(assert (=> start!92440 (= res!699797 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32367 a!3488)) (bvslt (size!32367 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92440 e!596236))

(assert (=> start!92440 true))

(declare-fun array_inv!24452 (array!66189) Bool)

(assert (=> start!92440 (array_inv!24452 a!3488)))

(assert (= (and start!92440 res!699797) b!1050562))

(assert (= (and b!1050562 res!699799) b!1050561))

(assert (= (and b!1050561 res!699800) b!1050563))

(assert (= (and b!1050563 res!699801) b!1050565))

(assert (= (and b!1050565 res!699796) b!1050566))

(assert (= (and b!1050566 res!699798) b!1050564))

(declare-fun m!971381 () Bool)

(assert (=> b!1050564 m!971381))

(declare-fun m!971383 () Bool)

(assert (=> b!1050564 m!971383))

(declare-fun m!971385 () Bool)

(assert (=> start!92440 m!971385))

(declare-fun m!971387 () Bool)

(assert (=> b!1050566 m!971387))

(declare-fun m!971389 () Bool)

(assert (=> b!1050562 m!971389))

(declare-fun m!971391 () Bool)

(assert (=> b!1050563 m!971391))

(declare-fun m!971393 () Bool)

(assert (=> b!1050565 m!971393))

(assert (=> b!1050565 m!971381))

(declare-fun m!971395 () Bool)

(assert (=> b!1050561 m!971395))

(push 1)

(assert (not b!1050565))

(assert (not b!1050561))

