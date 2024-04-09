; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92230 () Bool)

(assert start!92230)

(declare-fun res!697371 () Bool)

(declare-fun e!594472 () Bool)

(assert (=> start!92230 (=> (not res!697371) (not e!594472))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66006 0))(
  ( (array!66007 (arr!31740 (Array (_ BitVec 32) (_ BitVec 64))) (size!32277 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66006)

(assert (=> start!92230 (= res!697371 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32277 a!3488)) (bvslt (size!32277 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92230 e!594472))

(assert (=> start!92230 true))

(declare-fun array_inv!24362 (array!66006) Bool)

(assert (=> start!92230 (array_inv!24362 a!3488)))

(declare-fun b!1048100 () Bool)

(assert (=> b!1048100 (= e!594472 false)))

(declare-fun lt!463105 () Bool)

(declare-datatypes ((List!22183 0))(
  ( (Nil!22180) (Cons!22179 (h!23388 (_ BitVec 64)) (t!31497 List!22183)) )
))
(declare-fun arrayNoDuplicates!0 (array!66006 (_ BitVec 32) List!22183) Bool)

(assert (=> b!1048100 (= lt!463105 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22180))))

(assert (= (and start!92230 res!697371) b!1048100))

(declare-fun m!969275 () Bool)

(assert (=> start!92230 m!969275))

(declare-fun m!969277 () Bool)

(assert (=> b!1048100 m!969277))

(push 1)

(assert (not start!92230))

(assert (not b!1048100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

