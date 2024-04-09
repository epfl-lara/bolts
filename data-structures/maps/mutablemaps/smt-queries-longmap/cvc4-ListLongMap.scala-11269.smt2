; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131492 () Bool)

(assert start!131492)

(declare-fun b!1540789 () Bool)

(declare-fun e!856952 () Bool)

(assert (=> b!1540789 (= e!856952 false)))

(declare-fun lt!665464 () Bool)

(declare-datatypes ((array!102322 0))(
  ( (array!102323 (arr!49365 (Array (_ BitVec 32) (_ BitVec 64))) (size!49916 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102322)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102322 (_ BitVec 32)) Bool)

(assert (=> b!1540789 (= lt!665464 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun res!1057472 () Bool)

(assert (=> start!131492 (=> (not res!1057472) (not e!856952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131492 (= res!1057472 (validMask!0 mask!4052))))

(assert (=> start!131492 e!856952))

(assert (=> start!131492 true))

(declare-fun array_inv!38310 (array!102322) Bool)

(assert (=> start!131492 (array_inv!38310 a!3920)))

(declare-fun b!1540786 () Bool)

(declare-fun res!1057473 () Bool)

(assert (=> b!1540786 (=> (not res!1057473) (not e!856952))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540786 (= res!1057473 (and (= (size!49916 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49916 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49916 a!3920))))))

(declare-fun b!1540788 () Bool)

(declare-fun res!1057471 () Bool)

(assert (=> b!1540788 (=> (not res!1057471) (not e!856952))))

(assert (=> b!1540788 (= res!1057471 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49916 a!3920))))))

(declare-fun b!1540787 () Bool)

(declare-fun res!1057470 () Bool)

(assert (=> b!1540787 (=> (not res!1057470) (not e!856952))))

(assert (=> b!1540787 (= res!1057470 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131492 res!1057472) b!1540786))

(assert (= (and b!1540786 res!1057473) b!1540787))

(assert (= (and b!1540787 res!1057470) b!1540788))

(assert (= (and b!1540788 res!1057471) b!1540789))

(declare-fun m!1422901 () Bool)

(assert (=> b!1540789 m!1422901))

(declare-fun m!1422903 () Bool)

(assert (=> start!131492 m!1422903))

(declare-fun m!1422905 () Bool)

(assert (=> start!131492 m!1422905))

(declare-fun m!1422907 () Bool)

(assert (=> b!1540787 m!1422907))

(push 1)

(assert (not b!1540787))

(assert (not start!131492))

(assert (not b!1540789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

