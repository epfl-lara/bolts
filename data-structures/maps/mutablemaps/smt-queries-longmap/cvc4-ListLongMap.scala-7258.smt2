; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92680 () Bool)

(assert start!92680)

(declare-fun b!1053100 () Bool)

(declare-fun e!598089 () Bool)

(declare-fun e!598090 () Bool)

(assert (=> b!1053100 (= e!598089 e!598090)))

(declare-fun res!702299 () Bool)

(assert (=> b!1053100 (=> (not res!702299) (not e!598090))))

(declare-datatypes ((array!66402 0))(
  ( (array!66403 (arr!31935 (Array (_ BitVec 32) (_ BitVec 64))) (size!32472 (_ BitVec 32))) )
))
(declare-fun lt!465057 () array!66402)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66402 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053100 (= res!702299 (arrayContainsKey!0 lt!465057 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66402)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053100 (= lt!465057 (array!66403 (store (arr!31935 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32472 a!3488)))))

(declare-fun b!1053101 () Bool)

(declare-fun res!702303 () Bool)

(assert (=> b!1053101 (=> (not res!702303) (not e!598089))))

(assert (=> b!1053101 (= res!702303 (= (select (arr!31935 a!3488) i!1381) k!2747))))

(declare-fun b!1053102 () Bool)

(declare-fun res!702302 () Bool)

(assert (=> b!1053102 (=> (not res!702302) (not e!598089))))

(declare-datatypes ((List!22378 0))(
  ( (Nil!22375) (Cons!22374 (h!23583 (_ BitVec 64)) (t!31692 List!22378)) )
))
(declare-fun arrayNoDuplicates!0 (array!66402 (_ BitVec 32) List!22378) Bool)

(assert (=> b!1053102 (= res!702302 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22375))))

(declare-fun b!1053103 () Bool)

(declare-fun res!702300 () Bool)

(assert (=> b!1053103 (=> (not res!702300) (not e!598089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053103 (= res!702300 (validKeyInArray!0 k!2747))))

(declare-fun res!702301 () Bool)

(assert (=> start!92680 (=> (not res!702301) (not e!598089))))

(assert (=> start!92680 (= res!702301 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32472 a!3488)) (bvslt (size!32472 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92680 e!598089))

(assert (=> start!92680 true))

(declare-fun array_inv!24557 (array!66402) Bool)

(assert (=> start!92680 (array_inv!24557 a!3488)))

(declare-fun b!1053104 () Bool)

(assert (=> b!1053104 (= e!598090 false)))

(declare-fun lt!465058 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!66402 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053104 (= lt!465058 (arrayScanForKey!0 lt!465057 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92680 res!702301) b!1053102))

(assert (= (and b!1053102 res!702302) b!1053103))

(assert (= (and b!1053103 res!702300) b!1053101))

(assert (= (and b!1053101 res!702303) b!1053100))

(assert (= (and b!1053100 res!702299) b!1053104))

(declare-fun m!973603 () Bool)

(assert (=> b!1053102 m!973603))

(declare-fun m!973605 () Bool)

(assert (=> b!1053104 m!973605))

(declare-fun m!973607 () Bool)

(assert (=> b!1053101 m!973607))

(declare-fun m!973609 () Bool)

(assert (=> b!1053103 m!973609))

(declare-fun m!973611 () Bool)

(assert (=> b!1053100 m!973611))

(declare-fun m!973613 () Bool)

(assert (=> b!1053100 m!973613))

(declare-fun m!973615 () Bool)

(assert (=> start!92680 m!973615))

(push 1)

(assert (not b!1053100))

(assert (not start!92680))

