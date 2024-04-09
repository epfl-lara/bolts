; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131486 () Bool)

(assert start!131486)

(declare-fun b!1540751 () Bool)

(declare-fun res!1057436 () Bool)

(declare-fun e!856934 () Bool)

(assert (=> b!1540751 (=> (not res!1057436) (not e!856934))))

(declare-datatypes ((array!102316 0))(
  ( (array!102317 (arr!49362 (Array (_ BitVec 32) (_ BitVec 64))) (size!49913 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102316)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102316 (_ BitVec 32)) Bool)

(assert (=> b!1540751 (= res!1057436 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540752 () Bool)

(declare-fun res!1057437 () Bool)

(assert (=> b!1540752 (=> (not res!1057437) (not e!856934))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540752 (= res!1057437 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49913 a!3920))))))

(declare-fun b!1540753 () Bool)

(assert (=> b!1540753 (= e!856934 false)))

(declare-fun lt!665455 () Bool)

(assert (=> b!1540753 (= lt!665455 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540750 () Bool)

(declare-fun res!1057434 () Bool)

(assert (=> b!1540750 (=> (not res!1057434) (not e!856934))))

(assert (=> b!1540750 (= res!1057434 (and (= (size!49913 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49913 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49913 a!3920))))))

(declare-fun res!1057435 () Bool)

(assert (=> start!131486 (=> (not res!1057435) (not e!856934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131486 (= res!1057435 (validMask!0 mask!4052))))

(assert (=> start!131486 e!856934))

(assert (=> start!131486 true))

(declare-fun array_inv!38307 (array!102316) Bool)

(assert (=> start!131486 (array_inv!38307 a!3920)))

(assert (= (and start!131486 res!1057435) b!1540750))

(assert (= (and b!1540750 res!1057434) b!1540751))

(assert (= (and b!1540751 res!1057436) b!1540752))

(assert (= (and b!1540752 res!1057437) b!1540753))

(declare-fun m!1422877 () Bool)

(assert (=> b!1540751 m!1422877))

(declare-fun m!1422879 () Bool)

(assert (=> b!1540753 m!1422879))

(declare-fun m!1422881 () Bool)

(assert (=> start!131486 m!1422881))

(declare-fun m!1422883 () Bool)

(assert (=> start!131486 m!1422883))

(push 1)

(assert (not b!1540751))

(assert (not start!131486))

(assert (not b!1540753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

