; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92598 () Bool)

(assert start!92598)

(declare-fun b!1052802 () Bool)

(declare-fun res!702042 () Bool)

(declare-fun e!597842 () Bool)

(assert (=> b!1052802 (=> (not res!702042) (not e!597842))))

(declare-datatypes ((array!66347 0))(
  ( (array!66348 (arr!31909 (Array (_ BitVec 32) (_ BitVec 64))) (size!32446 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66347)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052802 (= res!702042 (= (select (arr!31909 a!3488) i!1381) k!2747))))

(declare-fun b!1052803 () Bool)

(declare-fun e!597839 () Bool)

(assert (=> b!1052803 (= e!597842 e!597839)))

(declare-fun res!702039 () Bool)

(assert (=> b!1052803 (=> (not res!702039) (not e!597839))))

(declare-fun lt!464965 () array!66347)

(declare-fun arrayContainsKey!0 (array!66347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052803 (= res!702039 (arrayContainsKey!0 lt!464965 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052803 (= lt!464965 (array!66348 (store (arr!31909 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32446 a!3488)))))

(declare-fun b!1052804 () Bool)

(declare-fun res!702040 () Bool)

(assert (=> b!1052804 (=> (not res!702040) (not e!597842))))

(declare-datatypes ((List!22352 0))(
  ( (Nil!22349) (Cons!22348 (h!23557 (_ BitVec 64)) (t!31666 List!22352)) )
))
(declare-fun arrayNoDuplicates!0 (array!66347 (_ BitVec 32) List!22352) Bool)

(assert (=> b!1052804 (= res!702040 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22349))))

(declare-fun res!702041 () Bool)

(assert (=> start!92598 (=> (not res!702041) (not e!597842))))

(assert (=> start!92598 (= res!702041 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32446 a!3488)) (bvslt (size!32446 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92598 e!597842))

(assert (=> start!92598 true))

(declare-fun array_inv!24531 (array!66347) Bool)

(assert (=> start!92598 (array_inv!24531 a!3488)))

(declare-fun b!1052805 () Bool)

(declare-fun res!702037 () Bool)

(assert (=> b!1052805 (=> (not res!702037) (not e!597842))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052805 (= res!702037 (validKeyInArray!0 k!2747))))

(declare-fun b!1052806 () Bool)

(declare-fun e!597841 () Bool)

(assert (=> b!1052806 (= e!597841 (not true))))

(declare-fun lt!464964 () (_ BitVec 32))

(assert (=> b!1052806 (= (select (store (arr!31909 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464964) k!2747)))

(declare-fun b!1052807 () Bool)

(assert (=> b!1052807 (= e!597839 e!597841)))

(declare-fun res!702038 () Bool)

(assert (=> b!1052807 (=> (not res!702038) (not e!597841))))

(assert (=> b!1052807 (= res!702038 (not (= lt!464964 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66347 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052807 (= lt!464964 (arrayScanForKey!0 lt!464965 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92598 res!702041) b!1052804))

(assert (= (and b!1052804 res!702040) b!1052805))

(assert (= (and b!1052805 res!702037) b!1052802))

(assert (= (and b!1052802 res!702042) b!1052803))

(assert (= (and b!1052803 res!702039) b!1052807))

(assert (= (and b!1052807 res!702038) b!1052806))

(declare-fun m!973341 () Bool)

(assert (=> b!1052805 m!973341))

(declare-fun m!973343 () Bool)

(assert (=> b!1052804 m!973343))

(declare-fun m!973345 () Bool)

(assert (=> b!1052807 m!973345))

(declare-fun m!973347 () Bool)

(assert (=> b!1052803 m!973347))

(declare-fun m!973349 () Bool)

(assert (=> b!1052803 m!973349))

(assert (=> b!1052806 m!973349))

(declare-fun m!973351 () Bool)

(assert (=> b!1052806 m!973351))

(declare-fun m!973353 () Bool)

(assert (=> b!1052802 m!973353))

(declare-fun m!973355 () Bool)

(assert (=> start!92598 m!973355))

(push 1)

