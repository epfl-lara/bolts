; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131502 () Bool)

(assert start!131502)

(declare-fun b!1540851 () Bool)

(declare-fun e!856982 () Bool)

(assert (=> b!1540851 (= e!856982 (not true))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102332 0))(
  ( (array!102333 (arr!49370 (Array (_ BitVec 32) (_ BitVec 64))) (size!49921 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102332)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102332 (_ BitVec 32)) Bool)

(assert (=> b!1540851 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51400 0))(
  ( (Unit!51401) )
))
(declare-fun lt!665479 () Unit!51400)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102332 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51400)

(assert (=> b!1540851 (= lt!665479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun res!1057537 () Bool)

(assert (=> start!131502 (=> (not res!1057537) (not e!856982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131502 (= res!1057537 (validMask!0 mask!4052))))

(assert (=> start!131502 e!856982))

(assert (=> start!131502 true))

(declare-fun array_inv!38315 (array!102332) Bool)

(assert (=> start!131502 (array_inv!38315 a!3920)))

(declare-fun b!1540852 () Bool)

(declare-fun res!1057535 () Bool)

(assert (=> b!1540852 (=> (not res!1057535) (not e!856982))))

(assert (=> b!1540852 (= res!1057535 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49921 a!3920))))))

(declare-fun b!1540853 () Bool)

(declare-fun res!1057539 () Bool)

(assert (=> b!1540853 (=> (not res!1057539) (not e!856982))))

(assert (=> b!1540853 (= res!1057539 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540854 () Bool)

(declare-fun res!1057536 () Bool)

(assert (=> b!1540854 (=> (not res!1057536) (not e!856982))))

(assert (=> b!1540854 (= res!1057536 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540855 () Bool)

(declare-fun res!1057538 () Bool)

(assert (=> b!1540855 (=> (not res!1057538) (not e!856982))))

(assert (=> b!1540855 (= res!1057538 (and (= (size!49921 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49921 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49921 a!3920))))))

(assert (= (and start!131502 res!1057537) b!1540855))

(assert (= (and b!1540855 res!1057538) b!1540854))

(assert (= (and b!1540854 res!1057536) b!1540852))

(assert (= (and b!1540852 res!1057535) b!1540853))

(assert (= (and b!1540853 res!1057539) b!1540851))

(declare-fun m!1422945 () Bool)

(assert (=> b!1540851 m!1422945))

(declare-fun m!1422947 () Bool)

(assert (=> b!1540851 m!1422947))

(declare-fun m!1422949 () Bool)

(assert (=> start!131502 m!1422949))

(declare-fun m!1422951 () Bool)

(assert (=> start!131502 m!1422951))

(declare-fun m!1422953 () Bool)

(assert (=> b!1540853 m!1422953))

(declare-fun m!1422955 () Bool)

(assert (=> b!1540854 m!1422955))

(check-sat (not b!1540854) (not b!1540851) (not b!1540853) (not start!131502))
