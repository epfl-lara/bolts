; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92666 () Bool)

(assert start!92666)

(declare-fun res!702246 () Bool)

(declare-fun e!598039 () Bool)

(assert (=> start!92666 (=> (not res!702246) (not e!598039))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66388 0))(
  ( (array!66389 (arr!31928 (Array (_ BitVec 32) (_ BitVec 64))) (size!32465 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66388)

(assert (=> start!92666 (= res!702246 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32465 a!3488)) (bvslt (size!32465 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92666 e!598039))

(assert (=> start!92666 true))

(declare-fun array_inv!24550 (array!66388) Bool)

(assert (=> start!92666 (array_inv!24550 a!3488)))

(declare-fun b!1053047 () Bool)

(assert (=> b!1053047 (= e!598039 false)))

(declare-fun lt!465028 () Bool)

(declare-datatypes ((List!22371 0))(
  ( (Nil!22368) (Cons!22367 (h!23576 (_ BitVec 64)) (t!31685 List!22371)) )
))
(declare-fun arrayNoDuplicates!0 (array!66388 (_ BitVec 32) List!22371) Bool)

(assert (=> b!1053047 (= lt!465028 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22368))))

(assert (= (and start!92666 res!702246) b!1053047))

(declare-fun m!973555 () Bool)

(assert (=> start!92666 m!973555))

(declare-fun m!973557 () Bool)

(assert (=> b!1053047 m!973557))

(check-sat (not start!92666) (not b!1053047))
(check-sat)
