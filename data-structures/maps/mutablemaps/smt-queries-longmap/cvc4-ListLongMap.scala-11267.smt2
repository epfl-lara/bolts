; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131480 () Bool)

(assert start!131480)

(declare-fun res!1057398 () Bool)

(declare-fun e!856915 () Bool)

(assert (=> start!131480 (=> (not res!1057398) (not e!856915))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131480 (= res!1057398 (validMask!0 mask!4052))))

(assert (=> start!131480 e!856915))

(assert (=> start!131480 true))

(declare-datatypes ((array!102310 0))(
  ( (array!102311 (arr!49359 (Array (_ BitVec 32) (_ BitVec 64))) (size!49910 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102310)

(declare-fun array_inv!38304 (array!102310) Bool)

(assert (=> start!131480 (array_inv!38304 a!3920)))

(declare-fun b!1540714 () Bool)

(declare-fun res!1057399 () Bool)

(assert (=> b!1540714 (=> (not res!1057399) (not e!856915))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540714 (= res!1057399 (and (= (size!49910 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49910 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49910 a!3920))))))

(declare-fun b!1540716 () Bool)

(declare-fun res!1057401 () Bool)

(assert (=> b!1540716 (=> (not res!1057401) (not e!856915))))

(assert (=> b!1540716 (= res!1057401 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49910 a!3920))))))

(declare-fun b!1540717 () Bool)

(assert (=> b!1540717 (= e!856915 false)))

(declare-fun lt!665446 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102310 (_ BitVec 32)) Bool)

(assert (=> b!1540717 (= lt!665446 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540715 () Bool)

(declare-fun res!1057400 () Bool)

(assert (=> b!1540715 (=> (not res!1057400) (not e!856915))))

(assert (=> b!1540715 (= res!1057400 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131480 res!1057398) b!1540714))

(assert (= (and b!1540714 res!1057399) b!1540715))

(assert (= (and b!1540715 res!1057400) b!1540716))

(assert (= (and b!1540716 res!1057401) b!1540717))

(declare-fun m!1422853 () Bool)

(assert (=> start!131480 m!1422853))

(declare-fun m!1422855 () Bool)

(assert (=> start!131480 m!1422855))

(declare-fun m!1422857 () Bool)

(assert (=> b!1540717 m!1422857))

(declare-fun m!1422859 () Bool)

(assert (=> b!1540715 m!1422859))

(push 1)

(assert (not b!1540715))

(assert (not start!131480))

(assert (not b!1540717))

(check-sat)

