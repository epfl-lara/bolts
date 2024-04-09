; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92596 () Bool)

(assert start!92596)

(declare-fun b!1052784 () Bool)

(declare-fun e!597829 () Bool)

(declare-fun e!597830 () Bool)

(assert (=> b!1052784 (= e!597829 e!597830)))

(declare-fun res!702023 () Bool)

(assert (=> b!1052784 (=> (not res!702023) (not e!597830))))

(declare-fun lt!464959 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052784 (= res!702023 (not (= lt!464959 i!1381)))))

(declare-datatypes ((array!66345 0))(
  ( (array!66346 (arr!31908 (Array (_ BitVec 32) (_ BitVec 64))) (size!32445 (_ BitVec 32))) )
))
(declare-fun lt!464958 () array!66345)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66345 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052784 (= lt!464959 (arrayScanForKey!0 lt!464958 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052785 () Bool)

(declare-fun res!702019 () Bool)

(declare-fun e!597827 () Bool)

(assert (=> b!1052785 (=> (not res!702019) (not e!597827))))

(declare-fun a!3488 () array!66345)

(assert (=> b!1052785 (= res!702019 (= (select (arr!31908 a!3488) i!1381) k!2747))))

(declare-fun res!702022 () Bool)

(assert (=> start!92596 (=> (not res!702022) (not e!597827))))

(assert (=> start!92596 (= res!702022 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32445 a!3488)) (bvslt (size!32445 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92596 e!597827))

(assert (=> start!92596 true))

(declare-fun array_inv!24530 (array!66345) Bool)

(assert (=> start!92596 (array_inv!24530 a!3488)))

(declare-fun b!1052786 () Bool)

(assert (=> b!1052786 (= e!597830 (not (or (bvsgt lt!464959 i!1381) (bvsgt i!1381 lt!464959) (bvslt #b00000000000000000000000000000000 (size!32445 a!3488)))))))

(assert (=> b!1052786 (= (select (store (arr!31908 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464959) k!2747)))

(declare-fun b!1052787 () Bool)

(declare-fun res!702021 () Bool)

(assert (=> b!1052787 (=> (not res!702021) (not e!597827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052787 (= res!702021 (validKeyInArray!0 k!2747))))

(declare-fun b!1052788 () Bool)

(declare-fun res!702020 () Bool)

(assert (=> b!1052788 (=> (not res!702020) (not e!597827))))

(declare-datatypes ((List!22351 0))(
  ( (Nil!22348) (Cons!22347 (h!23556 (_ BitVec 64)) (t!31665 List!22351)) )
))
(declare-fun arrayNoDuplicates!0 (array!66345 (_ BitVec 32) List!22351) Bool)

(assert (=> b!1052788 (= res!702020 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22348))))

(declare-fun b!1052789 () Bool)

(assert (=> b!1052789 (= e!597827 e!597829)))

(declare-fun res!702024 () Bool)

(assert (=> b!1052789 (=> (not res!702024) (not e!597829))))

(declare-fun arrayContainsKey!0 (array!66345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052789 (= res!702024 (arrayContainsKey!0 lt!464958 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052789 (= lt!464958 (array!66346 (store (arr!31908 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32445 a!3488)))))

(assert (= (and start!92596 res!702022) b!1052788))

(assert (= (and b!1052788 res!702020) b!1052787))

(assert (= (and b!1052787 res!702021) b!1052785))

(assert (= (and b!1052785 res!702019) b!1052789))

(assert (= (and b!1052789 res!702024) b!1052784))

(assert (= (and b!1052784 res!702023) b!1052786))

(declare-fun m!973325 () Bool)

(assert (=> b!1052788 m!973325))

(declare-fun m!973327 () Bool)

(assert (=> start!92596 m!973327))

(declare-fun m!973329 () Bool)

(assert (=> b!1052785 m!973329))

(declare-fun m!973331 () Bool)

(assert (=> b!1052784 m!973331))

(declare-fun m!973333 () Bool)

(assert (=> b!1052786 m!973333))

(declare-fun m!973335 () Bool)

(assert (=> b!1052786 m!973335))

(declare-fun m!973337 () Bool)

(assert (=> b!1052787 m!973337))

(declare-fun m!973339 () Bool)

(assert (=> b!1052789 m!973339))

(assert (=> b!1052789 m!973333))

(push 1)

(assert (not b!1052789))

