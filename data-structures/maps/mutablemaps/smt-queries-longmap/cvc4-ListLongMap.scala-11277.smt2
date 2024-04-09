; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131540 () Bool)

(assert start!131540)

(declare-fun res!1057750 () Bool)

(declare-fun e!857095 () Bool)

(assert (=> start!131540 (=> (not res!1057750) (not e!857095))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131540 (= res!1057750 (validMask!0 mask!4052))))

(assert (=> start!131540 e!857095))

(assert (=> start!131540 true))

(declare-datatypes ((array!102370 0))(
  ( (array!102371 (arr!49389 (Array (_ BitVec 32) (_ BitVec 64))) (size!49940 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102370)

(declare-fun array_inv!38334 (array!102370) Bool)

(assert (=> start!131540 (array_inv!38334 a!3920)))

(declare-fun b!1541066 () Bool)

(declare-fun res!1057752 () Bool)

(assert (=> b!1541066 (=> (not res!1057752) (not e!857095))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541066 (= res!1057752 (and (= (size!49940 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49940 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49940 a!3920))))))

(declare-fun b!1541067 () Bool)

(declare-fun res!1057751 () Bool)

(assert (=> b!1541067 (=> (not res!1057751) (not e!857095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102370 (_ BitVec 32)) Bool)

(assert (=> b!1541067 (= res!1057751 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541068 () Bool)

(assert (=> b!1541068 (= e!857095 (and (bvsge from!3298 newFrom!293) (bvslt newFrom!293 #b00000000000000000000000000000000)))))

(assert (= (and start!131540 res!1057750) b!1541066))

(assert (= (and b!1541066 res!1057752) b!1541067))

(assert (= (and b!1541067 res!1057751) b!1541068))

(declare-fun m!1423125 () Bool)

(assert (=> start!131540 m!1423125))

(declare-fun m!1423127 () Bool)

(assert (=> start!131540 m!1423127))

(declare-fun m!1423129 () Bool)

(assert (=> b!1541067 m!1423129))

(push 1)

(assert (not b!1541067))

(assert (not start!131540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

