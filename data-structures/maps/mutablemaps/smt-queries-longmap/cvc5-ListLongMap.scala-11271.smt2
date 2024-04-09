; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131500 () Bool)

(assert start!131500)

(declare-fun res!1057521 () Bool)

(declare-fun e!856975 () Bool)

(assert (=> start!131500 (=> (not res!1057521) (not e!856975))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131500 (= res!1057521 (validMask!0 mask!4052))))

(assert (=> start!131500 e!856975))

(assert (=> start!131500 true))

(declare-datatypes ((array!102330 0))(
  ( (array!102331 (arr!49369 (Array (_ BitVec 32) (_ BitVec 64))) (size!49920 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102330)

(declare-fun array_inv!38314 (array!102330) Bool)

(assert (=> start!131500 (array_inv!38314 a!3920)))

(declare-fun b!1540836 () Bool)

(declare-fun res!1057520 () Bool)

(assert (=> b!1540836 (=> (not res!1057520) (not e!856975))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540836 (= res!1057520 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49920 a!3920))))))

(declare-fun b!1540837 () Bool)

(declare-fun res!1057523 () Bool)

(assert (=> b!1540837 (=> (not res!1057523) (not e!856975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102330 (_ BitVec 32)) Bool)

(assert (=> b!1540837 (= res!1057523 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540838 () Bool)

(assert (=> b!1540838 (= e!856975 (not true))))

(assert (=> b!1540838 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51398 0))(
  ( (Unit!51399) )
))
(declare-fun lt!665476 () Unit!51398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51398)

(assert (=> b!1540838 (= lt!665476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540839 () Bool)

(declare-fun res!1057522 () Bool)

(assert (=> b!1540839 (=> (not res!1057522) (not e!856975))))

(assert (=> b!1540839 (= res!1057522 (and (= (size!49920 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49920 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49920 a!3920))))))

(declare-fun b!1540840 () Bool)

(declare-fun res!1057524 () Bool)

(assert (=> b!1540840 (=> (not res!1057524) (not e!856975))))

(assert (=> b!1540840 (= res!1057524 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131500 res!1057521) b!1540839))

(assert (= (and b!1540839 res!1057522) b!1540840))

(assert (= (and b!1540840 res!1057524) b!1540836))

(assert (= (and b!1540836 res!1057520) b!1540837))

(assert (= (and b!1540837 res!1057523) b!1540838))

(declare-fun m!1422933 () Bool)

(assert (=> start!131500 m!1422933))

(declare-fun m!1422935 () Bool)

(assert (=> start!131500 m!1422935))

(declare-fun m!1422937 () Bool)

(assert (=> b!1540837 m!1422937))

(declare-fun m!1422939 () Bool)

(assert (=> b!1540838 m!1422939))

(declare-fun m!1422941 () Bool)

(assert (=> b!1540838 m!1422941))

(declare-fun m!1422943 () Bool)

(assert (=> b!1540840 m!1422943))

(push 1)

(assert (not b!1540840))

(assert (not b!1540837))

(assert (not b!1540838))

(assert (not start!131500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

