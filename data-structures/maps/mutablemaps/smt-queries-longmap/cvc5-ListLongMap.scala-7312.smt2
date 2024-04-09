; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93510 () Bool)

(assert start!93510)

(declare-fun res!707332 () Bool)

(declare-fun e!602363 () Bool)

(assert (=> start!93510 (=> (not res!707332) (not e!602363))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66761 0))(
  ( (array!66762 (arr!32095 (Array (_ BitVec 32) (_ BitVec 64))) (size!32632 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66761)

(assert (=> start!93510 (= res!707332 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32632 a!3488)) (bvslt (size!32632 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93510 e!602363))

(assert (=> start!93510 true))

(declare-fun array_inv!24717 (array!66761) Bool)

(assert (=> start!93510 (array_inv!24717 a!3488)))

(declare-fun b!1058649 () Bool)

(assert (=> b!1058649 (= e!602363 false)))

(declare-fun lt!467011 () Bool)

(declare-datatypes ((List!22538 0))(
  ( (Nil!22535) (Cons!22534 (h!23743 (_ BitVec 64)) (t!31852 List!22538)) )
))
(declare-fun arrayNoDuplicates!0 (array!66761 (_ BitVec 32) List!22538) Bool)

(assert (=> b!1058649 (= lt!467011 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22535))))

(assert (= (and start!93510 res!707332) b!1058649))

(declare-fun m!978447 () Bool)

(assert (=> start!93510 m!978447))

(declare-fun m!978449 () Bool)

(assert (=> b!1058649 m!978449))

(push 1)

(assert (not start!93510))

(assert (not b!1058649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

