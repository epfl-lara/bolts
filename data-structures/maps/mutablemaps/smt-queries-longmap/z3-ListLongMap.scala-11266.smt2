; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131472 () Bool)

(assert start!131472)

(declare-fun b!1540669 () Bool)

(declare-fun e!856892 () Bool)

(assert (=> b!1540669 (= e!856892 false)))

(declare-fun lt!665434 () Bool)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-datatypes ((array!102302 0))(
  ( (array!102303 (arr!49355 (Array (_ BitVec 32) (_ BitVec 64))) (size!49906 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102302)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102302 (_ BitVec 32)) Bool)

(assert (=> b!1540669 (= lt!665434 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540668 () Bool)

(declare-fun res!1057351 () Bool)

(assert (=> b!1540668 (=> (not res!1057351) (not e!856892))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540668 (= res!1057351 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49906 a!3920))))))

(declare-fun res!1057352 () Bool)

(assert (=> start!131472 (=> (not res!1057352) (not e!856892))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131472 (= res!1057352 (validMask!0 mask!4052))))

(assert (=> start!131472 e!856892))

(assert (=> start!131472 true))

(declare-fun array_inv!38300 (array!102302) Bool)

(assert (=> start!131472 (array_inv!38300 a!3920)))

(declare-fun b!1540667 () Bool)

(declare-fun res!1057353 () Bool)

(assert (=> b!1540667 (=> (not res!1057353) (not e!856892))))

(assert (=> b!1540667 (= res!1057353 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540666 () Bool)

(declare-fun res!1057350 () Bool)

(assert (=> b!1540666 (=> (not res!1057350) (not e!856892))))

(assert (=> b!1540666 (= res!1057350 (and (= (size!49906 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49906 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49906 a!3920))))))

(assert (= (and start!131472 res!1057352) b!1540666))

(assert (= (and b!1540666 res!1057350) b!1540667))

(assert (= (and b!1540667 res!1057353) b!1540668))

(assert (= (and b!1540668 res!1057351) b!1540669))

(declare-fun m!1422821 () Bool)

(assert (=> b!1540669 m!1422821))

(declare-fun m!1422823 () Bool)

(assert (=> start!131472 m!1422823))

(declare-fun m!1422825 () Bool)

(assert (=> start!131472 m!1422825))

(declare-fun m!1422827 () Bool)

(assert (=> b!1540667 m!1422827))

(check-sat (not b!1540667) (not start!131472) (not b!1540669))
