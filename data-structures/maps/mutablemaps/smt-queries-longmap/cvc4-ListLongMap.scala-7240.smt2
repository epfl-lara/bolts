; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92542 () Bool)

(assert start!92542)

(declare-fun b!1051995 () Bool)

(declare-fun e!597281 () Bool)

(declare-fun e!597280 () Bool)

(assert (=> b!1051995 (= e!597281 e!597280)))

(declare-fun res!701232 () Bool)

(assert (=> b!1051995 (=> res!701232 e!597280)))

(declare-datatypes ((array!66291 0))(
  ( (array!66292 (arr!31881 (Array (_ BitVec 32) (_ BitVec 64))) (size!32418 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66291)

(declare-fun lt!464542 () (_ BitVec 32))

(declare-fun lt!464544 () (_ BitVec 32))

(assert (=> b!1051995 (= res!701232 (or (bvslt lt!464544 #b00000000000000000000000000000000) (bvsge lt!464542 (size!32418 a!3488)) (bvsge lt!464544 (size!32418 a!3488))))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051995 (arrayContainsKey!0 a!3488 k!2747 lt!464542)))

(declare-datatypes ((Unit!34443 0))(
  ( (Unit!34444) )
))
(declare-fun lt!464540 () Unit!34443)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66291 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34443)

(assert (=> b!1051995 (= lt!464540 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464542))))

(assert (=> b!1051995 (= lt!464542 (bvadd #b00000000000000000000000000000001 lt!464544))))

(declare-datatypes ((List!22324 0))(
  ( (Nil!22321) (Cons!22320 (h!23529 (_ BitVec 64)) (t!31638 List!22324)) )
))
(declare-fun arrayNoDuplicates!0 (array!66291 (_ BitVec 32) List!22324) Bool)

(assert (=> b!1051995 (arrayNoDuplicates!0 a!3488 lt!464544 Nil!22321)))

(declare-fun lt!464543 () Unit!34443)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66291 (_ BitVec 32) (_ BitVec 32)) Unit!34443)

(assert (=> b!1051995 (= lt!464543 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464544))))

(declare-fun b!1051996 () Bool)

(declare-fun e!597278 () Bool)

(declare-fun e!597275 () Bool)

(assert (=> b!1051996 (= e!597278 e!597275)))

(declare-fun res!701236 () Bool)

(assert (=> b!1051996 (=> (not res!701236) (not e!597275))))

(assert (=> b!1051996 (= res!701236 (not (= lt!464544 i!1381)))))

(declare-fun lt!464545 () array!66291)

(declare-fun arrayScanForKey!0 (array!66291 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051996 (= lt!464544 (arrayScanForKey!0 lt!464545 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051997 () Bool)

(declare-fun e!597274 () Bool)

(assert (=> b!1051997 (= e!597274 e!597278)))

(declare-fun res!701235 () Bool)

(assert (=> b!1051997 (=> (not res!701235) (not e!597278))))

(assert (=> b!1051997 (= res!701235 (arrayContainsKey!0 lt!464545 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051997 (= lt!464545 (array!66292 (store (arr!31881 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32418 a!3488)))))

(declare-fun b!1051998 () Bool)

(declare-fun res!701238 () Bool)

(assert (=> b!1051998 (=> (not res!701238) (not e!597274))))

(assert (=> b!1051998 (= res!701238 (= (select (arr!31881 a!3488) i!1381) k!2747))))

(declare-fun b!1051999 () Bool)

(declare-fun res!701233 () Bool)

(assert (=> b!1051999 (=> res!701233 e!597280)))

(declare-fun noDuplicate!1550 (List!22324) Bool)

(assert (=> b!1051999 (= res!701233 (not (noDuplicate!1550 Nil!22321)))))

(declare-fun b!1052000 () Bool)

(assert (=> b!1052000 (= e!597275 (not e!597281))))

(declare-fun res!701230 () Bool)

(assert (=> b!1052000 (=> res!701230 e!597281)))

(assert (=> b!1052000 (= res!701230 (or (bvsgt lt!464544 i!1381) (bvsle i!1381 lt!464544)))))

(declare-fun e!597279 () Bool)

(assert (=> b!1052000 e!597279))

(declare-fun res!701239 () Bool)

(assert (=> b!1052000 (=> (not res!701239) (not e!597279))))

(assert (=> b!1052000 (= res!701239 (= (select (store (arr!31881 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464544) k!2747))))

(declare-fun b!1052001 () Bool)

(declare-fun e!597277 () Bool)

(assert (=> b!1052001 (= e!597277 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1052002 () Bool)

(assert (=> b!1052002 (= e!597279 e!597277)))

(declare-fun res!701241 () Bool)

(assert (=> b!1052002 (=> res!701241 e!597277)))

(assert (=> b!1052002 (= res!701241 (or (bvsgt lt!464544 i!1381) (bvsle i!1381 lt!464544)))))

(declare-fun b!1052003 () Bool)

(declare-fun res!701231 () Bool)

(assert (=> b!1052003 (=> (not res!701231) (not e!597274))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052003 (= res!701231 (validKeyInArray!0 k!2747))))

(declare-fun b!1052004 () Bool)

(declare-fun res!701237 () Bool)

(assert (=> b!1052004 (=> (not res!701237) (not e!597274))))

(assert (=> b!1052004 (= res!701237 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22321))))

(declare-fun b!1052005 () Bool)

(assert (=> b!1052005 (= e!597280 true)))

(declare-fun lt!464541 () Bool)

(declare-fun contains!6165 (List!22324 (_ BitVec 64)) Bool)

(assert (=> b!1052005 (= lt!464541 (contains!6165 Nil!22321 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052006 () Bool)

(declare-fun res!701234 () Bool)

(assert (=> b!1052006 (=> res!701234 e!597280)))

(assert (=> b!1052006 (= res!701234 (contains!6165 Nil!22321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!701240 () Bool)

(assert (=> start!92542 (=> (not res!701240) (not e!597274))))

(assert (=> start!92542 (= res!701240 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32418 a!3488)) (bvslt (size!32418 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92542 e!597274))

(assert (=> start!92542 true))

(declare-fun array_inv!24503 (array!66291) Bool)

(assert (=> start!92542 (array_inv!24503 a!3488)))

(assert (= (and start!92542 res!701240) b!1052004))

(assert (= (and b!1052004 res!701237) b!1052003))

(assert (= (and b!1052003 res!701231) b!1051998))

(assert (= (and b!1051998 res!701238) b!1051997))

(assert (= (and b!1051997 res!701235) b!1051996))

(assert (= (and b!1051996 res!701236) b!1052000))

(assert (= (and b!1052000 res!701239) b!1052002))

(assert (= (and b!1052002 (not res!701241)) b!1052001))

(assert (= (and b!1052000 (not res!701230)) b!1051995))

(assert (= (and b!1051995 (not res!701232)) b!1051999))

(assert (= (and b!1051999 (not res!701233)) b!1052006))

(assert (= (and b!1052006 (not res!701234)) b!1052005))

(declare-fun m!972559 () Bool)

(assert (=> b!1051999 m!972559))

(declare-fun m!972561 () Bool)

(assert (=> b!1051995 m!972561))

(declare-fun m!972563 () Bool)

(assert (=> b!1051995 m!972563))

(declare-fun m!972565 () Bool)

(assert (=> b!1051995 m!972565))

(declare-fun m!972567 () Bool)

(assert (=> b!1051995 m!972567))

(declare-fun m!972569 () Bool)

(assert (=> b!1052003 m!972569))

(declare-fun m!972571 () Bool)

(assert (=> b!1052005 m!972571))

(declare-fun m!972573 () Bool)

(assert (=> b!1052006 m!972573))

(declare-fun m!972575 () Bool)

(assert (=> b!1052001 m!972575))

(declare-fun m!972577 () Bool)

(assert (=> b!1052004 m!972577))

(declare-fun m!972579 () Bool)

(assert (=> b!1051996 m!972579))

(declare-fun m!972581 () Bool)

(assert (=> b!1051998 m!972581))

(declare-fun m!972583 () Bool)

(assert (=> b!1051997 m!972583))

(declare-fun m!972585 () Bool)

(assert (=> b!1051997 m!972585))

(declare-fun m!972587 () Bool)

(assert (=> start!92542 m!972587))

(assert (=> b!1052000 m!972585))

(declare-fun m!972589 () Bool)

(assert (=> b!1052000 m!972589))

(push 1)

