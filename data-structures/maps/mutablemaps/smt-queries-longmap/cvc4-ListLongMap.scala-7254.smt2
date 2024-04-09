; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92626 () Bool)

(assert start!92626)

(declare-fun b!1052947 () Bool)

(declare-fun e!597947 () Bool)

(declare-fun e!597946 () Bool)

(assert (=> b!1052947 (= e!597947 e!597946)))

(declare-fun res!702186 () Bool)

(assert (=> b!1052947 (=> (not res!702186) (not e!597946))))

(declare-datatypes ((array!66375 0))(
  ( (array!66376 (arr!31923 (Array (_ BitVec 32) (_ BitVec 64))) (size!32460 (_ BitVec 32))) )
))
(declare-fun lt!465004 () array!66375)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052947 (= res!702186 (arrayContainsKey!0 lt!465004 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66375)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052947 (= lt!465004 (array!66376 (store (arr!31923 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32460 a!3488)))))

(declare-fun b!1052948 () Bool)

(declare-fun res!702183 () Bool)

(assert (=> b!1052948 (=> (not res!702183) (not e!597947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052948 (= res!702183 (validKeyInArray!0 k!2747))))

(declare-fun res!702184 () Bool)

(assert (=> start!92626 (=> (not res!702184) (not e!597947))))

(assert (=> start!92626 (= res!702184 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32460 a!3488)) (bvslt (size!32460 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92626 e!597947))

(assert (=> start!92626 true))

(declare-fun array_inv!24545 (array!66375) Bool)

(assert (=> start!92626 (array_inv!24545 a!3488)))

(declare-fun b!1052949 () Bool)

(declare-fun arrayScanForKey!0 (array!66375 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052949 (= e!597946 (= (arrayScanForKey!0 lt!465004 k!2747 #b00000000000000000000000000000000) i!1381))))

(declare-fun b!1052950 () Bool)

(declare-fun res!702185 () Bool)

(assert (=> b!1052950 (=> (not res!702185) (not e!597947))))

(assert (=> b!1052950 (= res!702185 (= (select (arr!31923 a!3488) i!1381) k!2747))))

(declare-fun b!1052951 () Bool)

(declare-fun res!702182 () Bool)

(assert (=> b!1052951 (=> (not res!702182) (not e!597947))))

(declare-datatypes ((List!22366 0))(
  ( (Nil!22363) (Cons!22362 (h!23571 (_ BitVec 64)) (t!31680 List!22366)) )
))
(declare-fun arrayNoDuplicates!0 (array!66375 (_ BitVec 32) List!22366) Bool)

(assert (=> b!1052951 (= res!702182 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22363))))

(assert (= (and start!92626 res!702184) b!1052951))

(assert (= (and b!1052951 res!702182) b!1052948))

(assert (= (and b!1052948 res!702183) b!1052950))

(assert (= (and b!1052950 res!702185) b!1052947))

(assert (= (and b!1052947 res!702186) b!1052949))

(declare-fun m!973477 () Bool)

(assert (=> b!1052951 m!973477))

(declare-fun m!973479 () Bool)

(assert (=> start!92626 m!973479))

(declare-fun m!973481 () Bool)

(assert (=> b!1052947 m!973481))

(declare-fun m!973483 () Bool)

(assert (=> b!1052947 m!973483))

(declare-fun m!973485 () Bool)

(assert (=> b!1052949 m!973485))

(declare-fun m!973487 () Bool)

(assert (=> b!1052948 m!973487))

(declare-fun m!973489 () Bool)

(assert (=> b!1052950 m!973489))

(push 1)

(assert (not start!92626))

(assert (not b!1052947))

(assert (not b!1052948))

(assert (not b!1052949))

(assert (not b!1052951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127757 () Bool)

