; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131482 () Bool)

(assert start!131482)

(declare-fun b!1540728 () Bool)

(declare-fun res!1057411 () Bool)

(declare-fun e!856922 () Bool)

(assert (=> b!1540728 (=> (not res!1057411) (not e!856922))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102312 0))(
  ( (array!102313 (arr!49360 (Array (_ BitVec 32) (_ BitVec 64))) (size!49911 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102312)

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540728 (= res!1057411 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49911 a!3920))))))

(declare-fun b!1540727 () Bool)

(declare-fun res!1057413 () Bool)

(assert (=> b!1540727 (=> (not res!1057413) (not e!856922))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102312 (_ BitVec 32)) Bool)

(assert (=> b!1540727 (= res!1057413 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun res!1057412 () Bool)

(assert (=> start!131482 (=> (not res!1057412) (not e!856922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131482 (= res!1057412 (validMask!0 mask!4052))))

(assert (=> start!131482 e!856922))

(assert (=> start!131482 true))

(declare-fun array_inv!38305 (array!102312) Bool)

(assert (=> start!131482 (array_inv!38305 a!3920)))

(declare-fun b!1540729 () Bool)

(assert (=> b!1540729 (= e!856922 false)))

(declare-fun lt!665449 () Bool)

(assert (=> b!1540729 (= lt!665449 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540726 () Bool)

(declare-fun res!1057410 () Bool)

(assert (=> b!1540726 (=> (not res!1057410) (not e!856922))))

(assert (=> b!1540726 (= res!1057410 (and (= (size!49911 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49911 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49911 a!3920))))))

(assert (= (and start!131482 res!1057412) b!1540726))

(assert (= (and b!1540726 res!1057410) b!1540727))

(assert (= (and b!1540727 res!1057413) b!1540728))

(assert (= (and b!1540728 res!1057411) b!1540729))

(declare-fun m!1422861 () Bool)

(assert (=> b!1540727 m!1422861))

(declare-fun m!1422863 () Bool)

(assert (=> start!131482 m!1422863))

(declare-fun m!1422865 () Bool)

(assert (=> start!131482 m!1422865))

(declare-fun m!1422867 () Bool)

(assert (=> b!1540729 m!1422867))

(push 1)

(assert (not b!1540727))

(assert (not start!131482))

(assert (not b!1540729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

