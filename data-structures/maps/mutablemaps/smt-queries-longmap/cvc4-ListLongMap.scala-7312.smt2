; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93514 () Bool)

(assert start!93514)

(declare-fun res!707338 () Bool)

(declare-fun e!602375 () Bool)

(assert (=> start!93514 (=> (not res!707338) (not e!602375))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66765 0))(
  ( (array!66766 (arr!32097 (Array (_ BitVec 32) (_ BitVec 64))) (size!32634 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66765)

(assert (=> start!93514 (= res!707338 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32634 a!3488)) (bvslt (size!32634 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93514 e!602375))

(assert (=> start!93514 true))

(declare-fun array_inv!24719 (array!66765) Bool)

(assert (=> start!93514 (array_inv!24719 a!3488)))

(declare-fun b!1058655 () Bool)

(assert (=> b!1058655 (= e!602375 false)))

(declare-fun lt!467017 () Bool)

(declare-datatypes ((List!22540 0))(
  ( (Nil!22537) (Cons!22536 (h!23745 (_ BitVec 64)) (t!31854 List!22540)) )
))
(declare-fun arrayNoDuplicates!0 (array!66765 (_ BitVec 32) List!22540) Bool)

(assert (=> b!1058655 (= lt!467017 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22537))))

(assert (= (and start!93514 res!707338) b!1058655))

(declare-fun m!978455 () Bool)

(assert (=> start!93514 m!978455))

(declare-fun m!978457 () Bool)

(assert (=> b!1058655 m!978457))

(push 1)

(assert (not b!1058655))

(assert (not start!93514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

