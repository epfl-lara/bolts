; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92424 () Bool)

(assert start!92424)

(declare-fun lt!463938 () (_ BitVec 32))

(declare-fun b!1050396 () Bool)

(declare-datatypes ((array!66173 0))(
  ( (array!66174 (arr!31822 (Array (_ BitVec 32) (_ BitVec 64))) (size!32359 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66173)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun e!596121 () Bool)

(declare-fun arrayContainsKey!0 (array!66173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050396 (= e!596121 (arrayContainsKey!0 a!3488 k!2747 lt!463938))))

(declare-fun b!1050397 () Bool)

(declare-fun e!596118 () Bool)

(declare-fun e!596123 () Bool)

(assert (=> b!1050397 (= e!596118 (not e!596123))))

(declare-fun res!699635 () Bool)

(assert (=> b!1050397 (=> res!699635 e!596123)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050397 (= res!699635 (bvsle lt!463938 i!1381))))

(declare-fun e!596119 () Bool)

(assert (=> b!1050397 e!596119))

(declare-fun res!699639 () Bool)

(assert (=> b!1050397 (=> (not res!699639) (not e!596119))))

(assert (=> b!1050397 (= res!699639 (= (select (store (arr!31822 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463938) k!2747))))

(declare-fun b!1050398 () Bool)

(declare-fun res!699638 () Bool)

(declare-fun e!596122 () Bool)

(assert (=> b!1050398 (=> (not res!699638) (not e!596122))))

(assert (=> b!1050398 (= res!699638 (= (select (arr!31822 a!3488) i!1381) k!2747))))

(declare-fun b!1050399 () Bool)

(declare-fun res!699634 () Bool)

(assert (=> b!1050399 (=> (not res!699634) (not e!596122))))

(declare-datatypes ((List!22265 0))(
  ( (Nil!22262) (Cons!22261 (h!23470 (_ BitVec 64)) (t!31579 List!22265)) )
))
(declare-fun arrayNoDuplicates!0 (array!66173 (_ BitVec 32) List!22265) Bool)

(assert (=> b!1050399 (= res!699634 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22262))))

(declare-fun res!699633 () Bool)

(assert (=> start!92424 (=> (not res!699633) (not e!596122))))

(assert (=> start!92424 (= res!699633 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32359 a!3488)) (bvslt (size!32359 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92424 e!596122))

(assert (=> start!92424 true))

(declare-fun array_inv!24444 (array!66173) Bool)

(assert (=> start!92424 (array_inv!24444 a!3488)))

(declare-fun b!1050400 () Bool)

(declare-fun e!596117 () Bool)

(assert (=> b!1050400 (= e!596122 e!596117)))

(declare-fun res!699636 () Bool)

(assert (=> b!1050400 (=> (not res!699636) (not e!596117))))

(declare-fun lt!463937 () array!66173)

(assert (=> b!1050400 (= res!699636 (arrayContainsKey!0 lt!463937 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050400 (= lt!463937 (array!66174 (store (arr!31822 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32359 a!3488)))))

(declare-fun b!1050401 () Bool)

(assert (=> b!1050401 (= e!596119 e!596121)))

(declare-fun res!699637 () Bool)

(assert (=> b!1050401 (=> res!699637 e!596121)))

(assert (=> b!1050401 (= res!699637 (bvsle lt!463938 i!1381))))

(declare-fun b!1050402 () Bool)

(assert (=> b!1050402 (= e!596117 e!596118)))

(declare-fun res!699631 () Bool)

(assert (=> b!1050402 (=> (not res!699631) (not e!596118))))

(assert (=> b!1050402 (= res!699631 (not (= lt!463938 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66173 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050402 (= lt!463938 (arrayScanForKey!0 lt!463937 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050403 () Bool)

(declare-fun res!699632 () Bool)

(assert (=> b!1050403 (=> (not res!699632) (not e!596122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050403 (= res!699632 (validKeyInArray!0 k!2747))))

(declare-fun b!1050404 () Bool)

(assert (=> b!1050404 (= e!596123 true)))

(assert (=> b!1050404 false))

(declare-datatypes ((Unit!34373 0))(
  ( (Unit!34374) )
))
(declare-fun lt!463935 () Unit!34373)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66173 (_ BitVec 64) (_ BitVec 32) List!22265) Unit!34373)

(assert (=> b!1050404 (= lt!463935 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22262))))

(assert (=> b!1050404 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463939 () Unit!34373)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66173 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34373)

(assert (=> b!1050404 (= lt!463939 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463938 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1050404 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22262)))

(declare-fun lt!463936 () Unit!34373)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66173 (_ BitVec 32) (_ BitVec 32)) Unit!34373)

(assert (=> b!1050404 (= lt!463936 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92424 res!699633) b!1050399))

(assert (= (and b!1050399 res!699634) b!1050403))

(assert (= (and b!1050403 res!699632) b!1050398))

(assert (= (and b!1050398 res!699638) b!1050400))

(assert (= (and b!1050400 res!699636) b!1050402))

(assert (= (and b!1050402 res!699631) b!1050397))

(assert (= (and b!1050397 res!699639) b!1050401))

(assert (= (and b!1050401 (not res!699637)) b!1050396))

(assert (= (and b!1050397 (not res!699635)) b!1050404))

(declare-fun m!971217 () Bool)

(assert (=> b!1050399 m!971217))

(declare-fun m!971219 () Bool)

(assert (=> b!1050396 m!971219))

(declare-fun m!971221 () Bool)

(assert (=> b!1050402 m!971221))

(declare-fun m!971223 () Bool)

(assert (=> b!1050398 m!971223))

(declare-fun m!971225 () Bool)

(assert (=> b!1050397 m!971225))

(declare-fun m!971227 () Bool)

(assert (=> b!1050397 m!971227))

(declare-fun m!971229 () Bool)

(assert (=> b!1050403 m!971229))

(declare-fun m!971231 () Bool)

(assert (=> b!1050404 m!971231))

(declare-fun m!971233 () Bool)

(assert (=> b!1050404 m!971233))

(declare-fun m!971235 () Bool)

(assert (=> b!1050404 m!971235))

(declare-fun m!971237 () Bool)

(assert (=> b!1050404 m!971237))

(declare-fun m!971239 () Bool)

(assert (=> b!1050404 m!971239))

(declare-fun m!971241 () Bool)

(assert (=> b!1050400 m!971241))

(assert (=> b!1050400 m!971225))

(declare-fun m!971243 () Bool)

(assert (=> start!92424 m!971243))

(push 1)

