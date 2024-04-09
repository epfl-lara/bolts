; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131476 () Bool)

(assert start!131476)

(declare-fun b!1540691 () Bool)

(declare-fun res!1057377 () Bool)

(declare-fun e!856903 () Bool)

(assert (=> b!1540691 (=> (not res!1057377) (not e!856903))))

(declare-datatypes ((array!102306 0))(
  ( (array!102307 (arr!49357 (Array (_ BitVec 32) (_ BitVec 64))) (size!49908 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102306)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102306 (_ BitVec 32)) Bool)

(assert (=> b!1540691 (= res!1057377 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540690 () Bool)

(declare-fun res!1057375 () Bool)

(assert (=> b!1540690 (=> (not res!1057375) (not e!856903))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540690 (= res!1057375 (and (= (size!49908 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49908 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49908 a!3920))))))

(declare-fun res!1057376 () Bool)

(assert (=> start!131476 (=> (not res!1057376) (not e!856903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131476 (= res!1057376 (validMask!0 mask!4052))))

(assert (=> start!131476 e!856903))

(assert (=> start!131476 true))

(declare-fun array_inv!38302 (array!102306) Bool)

(assert (=> start!131476 (array_inv!38302 a!3920)))

(declare-fun b!1540692 () Bool)

(declare-fun res!1057374 () Bool)

(assert (=> b!1540692 (=> (not res!1057374) (not e!856903))))

(assert (=> b!1540692 (= res!1057374 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49908 a!3920))))))

(declare-fun b!1540693 () Bool)

(assert (=> b!1540693 (= e!856903 false)))

(declare-fun lt!665440 () Bool)

(assert (=> b!1540693 (= lt!665440 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131476 res!1057376) b!1540690))

(assert (= (and b!1540690 res!1057375) b!1540691))

(assert (= (and b!1540691 res!1057377) b!1540692))

(assert (= (and b!1540692 res!1057374) b!1540693))

(declare-fun m!1422837 () Bool)

(assert (=> b!1540691 m!1422837))

(declare-fun m!1422839 () Bool)

(assert (=> start!131476 m!1422839))

(declare-fun m!1422841 () Bool)

(assert (=> start!131476 m!1422841))

(declare-fun m!1422843 () Bool)

(assert (=> b!1540693 m!1422843))

(push 1)

(assert (not b!1540691))

(assert (not start!131476))

(assert (not b!1540693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

