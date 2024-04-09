; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131534 () Bool)

(assert start!131534)

(declare-fun res!1057725 () Bool)

(declare-fun e!857078 () Bool)

(assert (=> start!131534 (=> (not res!1057725) (not e!857078))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131534 (= res!1057725 (validMask!0 mask!4052))))

(assert (=> start!131534 e!857078))

(assert (=> start!131534 true))

(declare-datatypes ((array!102364 0))(
  ( (array!102365 (arr!49386 (Array (_ BitVec 32) (_ BitVec 64))) (size!49937 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102364)

(declare-fun array_inv!38331 (array!102364) Bool)

(assert (=> start!131534 (array_inv!38331 a!3920)))

(declare-fun b!1541040 () Bool)

(declare-fun res!1057724 () Bool)

(assert (=> b!1541040 (=> (not res!1057724) (not e!857078))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541040 (= res!1057724 (and (= (size!49937 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49937 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49937 a!3920))))))

(declare-fun b!1541041 () Bool)

(assert (=> b!1541041 (= e!857078 false)))

(declare-fun lt!665527 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102364 (_ BitVec 32)) Bool)

(assert (=> b!1541041 (= lt!665527 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131534 res!1057725) b!1541040))

(assert (= (and b!1541040 res!1057724) b!1541041))

(declare-fun m!1423107 () Bool)

(assert (=> start!131534 m!1423107))

(declare-fun m!1423109 () Bool)

(assert (=> start!131534 m!1423109))

(declare-fun m!1423111 () Bool)

(assert (=> b!1541041 m!1423111))

(push 1)

(assert (not start!131534))

(assert (not b!1541041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

