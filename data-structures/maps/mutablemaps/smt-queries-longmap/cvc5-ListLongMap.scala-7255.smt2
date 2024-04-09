; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92658 () Bool)

(assert start!92658)

(declare-fun res!702234 () Bool)

(declare-fun e!598015 () Bool)

(assert (=> start!92658 (=> (not res!702234) (not e!598015))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66380 0))(
  ( (array!66381 (arr!31924 (Array (_ BitVec 32) (_ BitVec 64))) (size!32461 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66380)

(assert (=> start!92658 (= res!702234 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32461 a!3488)) (bvslt (size!32461 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92658 e!598015))

(assert (=> start!92658 true))

(declare-fun array_inv!24546 (array!66380) Bool)

(assert (=> start!92658 (array_inv!24546 a!3488)))

(declare-fun b!1053035 () Bool)

(assert (=> b!1053035 (= e!598015 false)))

(declare-fun lt!465016 () Bool)

(declare-datatypes ((List!22367 0))(
  ( (Nil!22364) (Cons!22363 (h!23572 (_ BitVec 64)) (t!31681 List!22367)) )
))
(declare-fun arrayNoDuplicates!0 (array!66380 (_ BitVec 32) List!22367) Bool)

(assert (=> b!1053035 (= lt!465016 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22364))))

(assert (= (and start!92658 res!702234) b!1053035))

(declare-fun m!973539 () Bool)

(assert (=> start!92658 m!973539))

(declare-fun m!973541 () Bool)

(assert (=> b!1053035 m!973541))

(push 1)

(assert (not b!1053035))

(assert (not start!92658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

