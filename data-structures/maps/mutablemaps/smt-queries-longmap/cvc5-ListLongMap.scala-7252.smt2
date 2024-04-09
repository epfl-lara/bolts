; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92610 () Bool)

(assert start!92610)

(declare-fun b!1052863 () Bool)

(declare-fun e!597889 () Bool)

(declare-datatypes ((array!66359 0))(
  ( (array!66360 (arr!31915 (Array (_ BitVec 32) (_ BitVec 64))) (size!32452 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66359)

(assert (=> b!1052863 (= e!597889 (bvsge #b00000000000000000000000000000000 (size!32452 a!3488)))))

(declare-fun b!1052864 () Bool)

(declare-fun res!702101 () Bool)

(assert (=> b!1052864 (=> (not res!702101) (not e!597889))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052864 (= res!702101 (validKeyInArray!0 k!2747))))

(declare-fun b!1052865 () Bool)

(declare-fun res!702102 () Bool)

(assert (=> b!1052865 (=> (not res!702102) (not e!597889))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052865 (= res!702102 (= (select (arr!31915 a!3488) i!1381) k!2747))))

(declare-fun b!1052866 () Bool)

(declare-fun res!702099 () Bool)

(assert (=> b!1052866 (=> (not res!702099) (not e!597889))))

(declare-fun arrayContainsKey!0 (array!66359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052866 (= res!702099 (not (arrayContainsKey!0 (array!66360 (store (arr!31915 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32452 a!3488)) k!2747 #b00000000000000000000000000000000)))))

(declare-fun res!702100 () Bool)

(assert (=> start!92610 (=> (not res!702100) (not e!597889))))

(assert (=> start!92610 (= res!702100 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32452 a!3488)) (bvslt (size!32452 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92610 e!597889))

(assert (=> start!92610 true))

(declare-fun array_inv!24537 (array!66359) Bool)

(assert (=> start!92610 (array_inv!24537 a!3488)))

(declare-fun b!1052867 () Bool)

(declare-fun res!702098 () Bool)

(assert (=> b!1052867 (=> (not res!702098) (not e!597889))))

(declare-datatypes ((List!22358 0))(
  ( (Nil!22355) (Cons!22354 (h!23563 (_ BitVec 64)) (t!31672 List!22358)) )
))
(declare-fun arrayNoDuplicates!0 (array!66359 (_ BitVec 32) List!22358) Bool)

(assert (=> b!1052867 (= res!702098 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22355))))

(assert (= (and start!92610 res!702100) b!1052867))

(assert (= (and b!1052867 res!702098) b!1052864))

(assert (= (and b!1052864 res!702101) b!1052865))

(assert (= (and b!1052865 res!702102) b!1052866))

(assert (= (and b!1052866 res!702099) b!1052863))

(declare-fun m!973401 () Bool)

(assert (=> b!1052867 m!973401))

(declare-fun m!973403 () Bool)

(assert (=> b!1052866 m!973403))

(declare-fun m!973405 () Bool)

(assert (=> b!1052866 m!973405))

(declare-fun m!973407 () Bool)

(assert (=> b!1052864 m!973407))

(declare-fun m!973409 () Bool)

(assert (=> start!92610 m!973409))

(declare-fun m!973411 () Bool)

(assert (=> b!1052865 m!973411))

(push 1)

(assert (not b!1052864))

(assert (not start!92610))

(assert (not b!1052867))

(assert (not b!1052866))

(check-sat)

