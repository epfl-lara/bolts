; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92588 () Bool)

(assert start!92588)

(declare-fun b!1052712 () Bool)

(declare-fun res!701947 () Bool)

(declare-fun e!597781 () Bool)

(assert (=> b!1052712 (=> (not res!701947) (not e!597781))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052712 (= res!701947 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052713 () Bool)

(declare-fun res!701949 () Bool)

(assert (=> b!1052713 (=> (not res!701949) (not e!597781))))

(declare-datatypes ((array!66337 0))(
  ( (array!66338 (arr!31904 (Array (_ BitVec 32) (_ BitVec 64))) (size!32441 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66337)

(declare-datatypes ((List!22347 0))(
  ( (Nil!22344) (Cons!22343 (h!23552 (_ BitVec 64)) (t!31661 List!22347)) )
))
(declare-fun arrayNoDuplicates!0 (array!66337 (_ BitVec 32) List!22347) Bool)

(assert (=> b!1052713 (= res!701949 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22344))))

(declare-fun res!701952 () Bool)

(assert (=> start!92588 (=> (not res!701952) (not e!597781))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92588 (= res!701952 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32441 a!3488)) (bvslt (size!32441 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92588 e!597781))

(assert (=> start!92588 true))

(declare-fun array_inv!24526 (array!66337) Bool)

(assert (=> start!92588 (array_inv!24526 a!3488)))

(declare-fun b!1052714 () Bool)

(declare-fun e!597780 () Bool)

(assert (=> b!1052714 (= e!597781 e!597780)))

(declare-fun res!701950 () Bool)

(assert (=> b!1052714 (=> (not res!701950) (not e!597780))))

(declare-fun lt!464934 () array!66337)

(declare-fun arrayContainsKey!0 (array!66337 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052714 (= res!701950 (arrayContainsKey!0 lt!464934 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052714 (= lt!464934 (array!66338 (store (arr!31904 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32441 a!3488)))))

(declare-fun b!1052715 () Bool)

(declare-fun e!597779 () Bool)

(assert (=> b!1052715 (= e!597780 e!597779)))

(declare-fun res!701951 () Bool)

(assert (=> b!1052715 (=> (not res!701951) (not e!597779))))

(declare-fun lt!464935 () (_ BitVec 32))

(assert (=> b!1052715 (= res!701951 (not (= lt!464935 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66337 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052715 (= lt!464935 (arrayScanForKey!0 lt!464934 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052716 () Bool)

(assert (=> b!1052716 (= e!597779 (not true))))

(assert (=> b!1052716 (= (select (store (arr!31904 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464935) k0!2747)))

(declare-fun b!1052717 () Bool)

(declare-fun res!701948 () Bool)

(assert (=> b!1052717 (=> (not res!701948) (not e!597781))))

(assert (=> b!1052717 (= res!701948 (= (select (arr!31904 a!3488) i!1381) k0!2747))))

(assert (= (and start!92588 res!701952) b!1052713))

(assert (= (and b!1052713 res!701949) b!1052712))

(assert (= (and b!1052712 res!701947) b!1052717))

(assert (= (and b!1052717 res!701948) b!1052714))

(assert (= (and b!1052714 res!701950) b!1052715))

(assert (= (and b!1052715 res!701951) b!1052716))

(declare-fun m!973261 () Bool)

(assert (=> start!92588 m!973261))

(declare-fun m!973263 () Bool)

(assert (=> b!1052712 m!973263))

(declare-fun m!973265 () Bool)

(assert (=> b!1052715 m!973265))

(declare-fun m!973267 () Bool)

(assert (=> b!1052713 m!973267))

(declare-fun m!973269 () Bool)

(assert (=> b!1052716 m!973269))

(declare-fun m!973271 () Bool)

(assert (=> b!1052716 m!973271))

(declare-fun m!973273 () Bool)

(assert (=> b!1052714 m!973273))

(assert (=> b!1052714 m!973269))

(declare-fun m!973275 () Bool)

(assert (=> b!1052717 m!973275))

(check-sat (not b!1052714) (not b!1052712) (not start!92588) (not b!1052715) (not b!1052713))
(check-sat)
