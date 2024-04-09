; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92872 () Bool)

(assert start!92872)

(declare-fun b!1054203 () Bool)

(declare-datatypes ((array!66480 0))(
  ( (array!66481 (arr!31968 (Array (_ BitVec 32) (_ BitVec 64))) (size!32505 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66480)

(declare-fun lt!465327 () (_ BitVec 32))

(declare-fun e!598923 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054203 (= e!598923 (arrayContainsKey!0 a!3488 k!2747 lt!465327))))

(declare-fun b!1054204 () Bool)

(declare-fun e!598924 () Bool)

(declare-fun e!598922 () Bool)

(assert (=> b!1054204 (= e!598924 (not e!598922))))

(declare-fun res!703254 () Bool)

(assert (=> b!1054204 (=> res!703254 e!598922)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054204 (= res!703254 (bvsle lt!465327 i!1381))))

(declare-fun e!598921 () Bool)

(assert (=> b!1054204 e!598921))

(declare-fun res!703259 () Bool)

(assert (=> b!1054204 (=> (not res!703259) (not e!598921))))

(assert (=> b!1054204 (= res!703259 (= (select (store (arr!31968 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465327) k!2747))))

(declare-fun b!1054205 () Bool)

(declare-fun res!703256 () Bool)

(declare-fun e!598925 () Bool)

(assert (=> b!1054205 (=> (not res!703256) (not e!598925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054205 (= res!703256 (validKeyInArray!0 k!2747))))

(declare-fun b!1054206 () Bool)

(declare-fun e!598920 () Bool)

(assert (=> b!1054206 (= e!598920 e!598924)))

(declare-fun res!703253 () Bool)

(assert (=> b!1054206 (=> (not res!703253) (not e!598924))))

(assert (=> b!1054206 (= res!703253 (not (= lt!465327 i!1381)))))

(declare-fun lt!465326 () array!66480)

(declare-fun arrayScanForKey!0 (array!66480 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054206 (= lt!465327 (arrayScanForKey!0 lt!465326 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054207 () Bool)

(assert (=> b!1054207 (= e!598921 e!598923)))

(declare-fun res!703258 () Bool)

(assert (=> b!1054207 (=> res!703258 e!598923)))

(assert (=> b!1054207 (= res!703258 (bvsle lt!465327 i!1381))))

(declare-fun b!1054208 () Bool)

(assert (=> b!1054208 (= e!598925 e!598920)))

(declare-fun res!703260 () Bool)

(assert (=> b!1054208 (=> (not res!703260) (not e!598920))))

(assert (=> b!1054208 (= res!703260 (arrayContainsKey!0 lt!465326 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054208 (= lt!465326 (array!66481 (store (arr!31968 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32505 a!3488)))))

(declare-fun res!703257 () Bool)

(assert (=> start!92872 (=> (not res!703257) (not e!598925))))

(assert (=> start!92872 (= res!703257 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32505 a!3488)) (bvslt (size!32505 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92872 e!598925))

(assert (=> start!92872 true))

(declare-fun array_inv!24590 (array!66480) Bool)

(assert (=> start!92872 (array_inv!24590 a!3488)))

(declare-fun b!1054209 () Bool)

(declare-fun res!703252 () Bool)

(assert (=> b!1054209 (=> (not res!703252) (not e!598925))))

(assert (=> b!1054209 (= res!703252 (= (select (arr!31968 a!3488) i!1381) k!2747))))

(declare-fun b!1054210 () Bool)

(assert (=> b!1054210 (= e!598922 (or (bvslt lt!465327 #b00000000000000000000000000000000) (bvsge lt!465327 (size!32505 a!3488)) (bvsge (bvadd #b00000000000000000000000000000001 i!1381) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!22411 0))(
  ( (Nil!22408) (Cons!22407 (h!23616 (_ BitVec 64)) (t!31725 List!22411)) )
))
(declare-fun arrayNoDuplicates!0 (array!66480 (_ BitVec 32) List!22411) Bool)

(assert (=> b!1054210 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22408)))

(declare-datatypes ((Unit!34503 0))(
  ( (Unit!34504) )
))
(declare-fun lt!465328 () Unit!34503)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66480 (_ BitVec 32) (_ BitVec 32)) Unit!34503)

(assert (=> b!1054210 (= lt!465328 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054211 () Bool)

(declare-fun res!703255 () Bool)

(assert (=> b!1054211 (=> (not res!703255) (not e!598925))))

(assert (=> b!1054211 (= res!703255 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22408))))

(assert (= (and start!92872 res!703257) b!1054211))

(assert (= (and b!1054211 res!703255) b!1054205))

(assert (= (and b!1054205 res!703256) b!1054209))

(assert (= (and b!1054209 res!703252) b!1054208))

(assert (= (and b!1054208 res!703260) b!1054206))

(assert (= (and b!1054206 res!703253) b!1054204))

(assert (= (and b!1054204 res!703259) b!1054207))

(assert (= (and b!1054207 (not res!703258)) b!1054203))

(assert (= (and b!1054204 (not res!703254)) b!1054210))

(declare-fun m!974447 () Bool)

(assert (=> start!92872 m!974447))

(declare-fun m!974449 () Bool)

(assert (=> b!1054208 m!974449))

(declare-fun m!974451 () Bool)

(assert (=> b!1054208 m!974451))

(declare-fun m!974453 () Bool)

(assert (=> b!1054209 m!974453))

(declare-fun m!974455 () Bool)

(assert (=> b!1054210 m!974455))

(declare-fun m!974457 () Bool)

(assert (=> b!1054210 m!974457))

(declare-fun m!974459 () Bool)

(assert (=> b!1054206 m!974459))

(declare-fun m!974461 () Bool)

(assert (=> b!1054211 m!974461))

(declare-fun m!974463 () Bool)

(assert (=> b!1054203 m!974463))

(assert (=> b!1054204 m!974451))

(declare-fun m!974465 () Bool)

(assert (=> b!1054204 m!974465))

(declare-fun m!974467 () Bool)

(assert (=> b!1054205 m!974467))

(push 1)

(assert (not b!1054206))

