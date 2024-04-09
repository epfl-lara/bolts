; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92676 () Bool)

(assert start!92676)

(declare-fun b!1053070 () Bool)

(declare-fun res!702273 () Bool)

(declare-fun e!598071 () Bool)

(assert (=> b!1053070 (=> (not res!702273) (not e!598071))))

(declare-datatypes ((array!66398 0))(
  ( (array!66399 (arr!31933 (Array (_ BitVec 32) (_ BitVec 64))) (size!32470 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66398)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053070 (= res!702273 (= (select (arr!31933 a!3488) i!1381) k!2747))))

(declare-fun b!1053071 () Bool)

(declare-fun res!702269 () Bool)

(assert (=> b!1053071 (=> (not res!702269) (not e!598071))))

(declare-datatypes ((List!22376 0))(
  ( (Nil!22373) (Cons!22372 (h!23581 (_ BitVec 64)) (t!31690 List!22376)) )
))
(declare-fun arrayNoDuplicates!0 (array!66398 (_ BitVec 32) List!22376) Bool)

(assert (=> b!1053071 (= res!702269 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22373))))

(declare-fun b!1053072 () Bool)

(declare-fun e!598073 () Bool)

(assert (=> b!1053072 (= e!598071 e!598073)))

(declare-fun res!702270 () Bool)

(assert (=> b!1053072 (=> (not res!702270) (not e!598073))))

(declare-fun lt!465046 () array!66398)

(declare-fun arrayContainsKey!0 (array!66398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053072 (= res!702270 (arrayContainsKey!0 lt!465046 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053072 (= lt!465046 (array!66399 (store (arr!31933 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32470 a!3488)))))

(declare-fun b!1053073 () Bool)

(assert (=> b!1053073 (= e!598073 false)))

(declare-fun lt!465045 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!66398 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053073 (= lt!465045 (arrayScanForKey!0 lt!465046 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053074 () Bool)

(declare-fun res!702271 () Bool)

(assert (=> b!1053074 (=> (not res!702271) (not e!598071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053074 (= res!702271 (validKeyInArray!0 k!2747))))

(declare-fun res!702272 () Bool)

(assert (=> start!92676 (=> (not res!702272) (not e!598071))))

(assert (=> start!92676 (= res!702272 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32470 a!3488)) (bvslt (size!32470 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92676 e!598071))

(assert (=> start!92676 true))

(declare-fun array_inv!24555 (array!66398) Bool)

(assert (=> start!92676 (array_inv!24555 a!3488)))

(assert (= (and start!92676 res!702272) b!1053071))

(assert (= (and b!1053071 res!702269) b!1053074))

(assert (= (and b!1053074 res!702271) b!1053070))

(assert (= (and b!1053070 res!702273) b!1053072))

(assert (= (and b!1053072 res!702270) b!1053073))

(declare-fun m!973575 () Bool)

(assert (=> b!1053072 m!973575))

(declare-fun m!973577 () Bool)

(assert (=> b!1053072 m!973577))

(declare-fun m!973579 () Bool)

(assert (=> b!1053074 m!973579))

(declare-fun m!973581 () Bool)

(assert (=> b!1053071 m!973581))

(declare-fun m!973583 () Bool)

(assert (=> start!92676 m!973583))

(declare-fun m!973585 () Bool)

(assert (=> b!1053070 m!973585))

(declare-fun m!973587 () Bool)

(assert (=> b!1053073 m!973587))

(push 1)

(assert (not b!1053073))

