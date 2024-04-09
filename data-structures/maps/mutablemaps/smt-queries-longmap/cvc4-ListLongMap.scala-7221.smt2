; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92428 () Bool)

(assert start!92428)

(declare-fun b!1050450 () Bool)

(declare-fun e!596159 () Bool)

(assert (=> b!1050450 (= e!596159 true)))

(assert (=> b!1050450 false))

(declare-datatypes ((Unit!34377 0))(
  ( (Unit!34378) )
))
(declare-fun lt!463968 () Unit!34377)

(declare-datatypes ((array!66177 0))(
  ( (array!66178 (arr!31824 (Array (_ BitVec 32) (_ BitVec 64))) (size!32361 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66177)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((List!22267 0))(
  ( (Nil!22264) (Cons!22263 (h!23472 (_ BitVec 64)) (t!31581 List!22267)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66177 (_ BitVec 64) (_ BitVec 32) List!22267) Unit!34377)

(assert (=> b!1050450 (= lt!463968 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22264))))

(declare-fun arrayContainsKey!0 (array!66177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050450 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463965 () Unit!34377)

(declare-fun lt!463969 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66177 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34377)

(assert (=> b!1050450 (= lt!463965 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463969 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66177 (_ BitVec 32) List!22267) Bool)

(assert (=> b!1050450 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22264)))

(declare-fun lt!463966 () Unit!34377)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66177 (_ BitVec 32) (_ BitVec 32)) Unit!34377)

(assert (=> b!1050450 (= lt!463966 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050451 () Bool)

(declare-fun e!596161 () Bool)

(declare-fun e!596163 () Bool)

(assert (=> b!1050451 (= e!596161 e!596163)))

(declare-fun res!699687 () Bool)

(assert (=> b!1050451 (=> (not res!699687) (not e!596163))))

(assert (=> b!1050451 (= res!699687 (not (= lt!463969 i!1381)))))

(declare-fun lt!463967 () array!66177)

(declare-fun arrayScanForKey!0 (array!66177 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050451 (= lt!463969 (arrayScanForKey!0 lt!463967 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050452 () Bool)

(assert (=> b!1050452 (= e!596163 (not e!596159))))

(declare-fun res!699685 () Bool)

(assert (=> b!1050452 (=> res!699685 e!596159)))

(assert (=> b!1050452 (= res!699685 (bvsle lt!463969 i!1381))))

(declare-fun e!596165 () Bool)

(assert (=> b!1050452 e!596165))

(declare-fun res!699689 () Bool)

(assert (=> b!1050452 (=> (not res!699689) (not e!596165))))

(assert (=> b!1050452 (= res!699689 (= (select (store (arr!31824 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463969) k!2747))))

(declare-fun b!1050453 () Bool)

(declare-fun res!699690 () Bool)

(declare-fun e!596160 () Bool)

(assert (=> b!1050453 (=> (not res!699690) (not e!596160))))

(assert (=> b!1050453 (= res!699690 (= (select (arr!31824 a!3488) i!1381) k!2747))))

(declare-fun res!699692 () Bool)

(assert (=> start!92428 (=> (not res!699692) (not e!596160))))

(assert (=> start!92428 (= res!699692 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32361 a!3488)) (bvslt (size!32361 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92428 e!596160))

(assert (=> start!92428 true))

(declare-fun array_inv!24446 (array!66177) Bool)

(assert (=> start!92428 (array_inv!24446 a!3488)))

(declare-fun b!1050454 () Bool)

(assert (=> b!1050454 (= e!596160 e!596161)))

(declare-fun res!699686 () Bool)

(assert (=> b!1050454 (=> (not res!699686) (not e!596161))))

(assert (=> b!1050454 (= res!699686 (arrayContainsKey!0 lt!463967 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050454 (= lt!463967 (array!66178 (store (arr!31824 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32361 a!3488)))))

(declare-fun b!1050455 () Bool)

(declare-fun res!699691 () Bool)

(assert (=> b!1050455 (=> (not res!699691) (not e!596160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050455 (= res!699691 (validKeyInArray!0 k!2747))))

(declare-fun e!596162 () Bool)

(declare-fun b!1050456 () Bool)

(assert (=> b!1050456 (= e!596162 (arrayContainsKey!0 a!3488 k!2747 lt!463969))))

(declare-fun b!1050457 () Bool)

(declare-fun res!699688 () Bool)

(assert (=> b!1050457 (=> (not res!699688) (not e!596160))))

(assert (=> b!1050457 (= res!699688 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22264))))

(declare-fun b!1050458 () Bool)

(assert (=> b!1050458 (= e!596165 e!596162)))

(declare-fun res!699693 () Bool)

(assert (=> b!1050458 (=> res!699693 e!596162)))

(assert (=> b!1050458 (= res!699693 (bvsle lt!463969 i!1381))))

(assert (= (and start!92428 res!699692) b!1050457))

(assert (= (and b!1050457 res!699688) b!1050455))

(assert (= (and b!1050455 res!699691) b!1050453))

(assert (= (and b!1050453 res!699690) b!1050454))

(assert (= (and b!1050454 res!699686) b!1050451))

(assert (= (and b!1050451 res!699687) b!1050452))

(assert (= (and b!1050452 res!699689) b!1050458))

(assert (= (and b!1050458 (not res!699693)) b!1050456))

(assert (= (and b!1050452 (not res!699685)) b!1050450))

(declare-fun m!971273 () Bool)

(assert (=> b!1050454 m!971273))

(declare-fun m!971275 () Bool)

(assert (=> b!1050454 m!971275))

(assert (=> b!1050452 m!971275))

(declare-fun m!971277 () Bool)

(assert (=> b!1050452 m!971277))

(declare-fun m!971279 () Bool)

(assert (=> b!1050451 m!971279))

(declare-fun m!971281 () Bool)

(assert (=> start!92428 m!971281))

(declare-fun m!971283 () Bool)

(assert (=> b!1050456 m!971283))

(declare-fun m!971285 () Bool)

(assert (=> b!1050457 m!971285))

(declare-fun m!971287 () Bool)

(assert (=> b!1050453 m!971287))

(declare-fun m!971289 () Bool)

(assert (=> b!1050450 m!971289))

(declare-fun m!971291 () Bool)

(assert (=> b!1050450 m!971291))

(declare-fun m!971293 () Bool)

(assert (=> b!1050450 m!971293))

(declare-fun m!971295 () Bool)

(assert (=> b!1050450 m!971295))

(declare-fun m!971297 () Bool)

(assert (=> b!1050450 m!971297))

(declare-fun m!971299 () Bool)

(assert (=> b!1050455 m!971299))

(push 1)

(assert (not b!1050450))

(assert (not b!1050457))

