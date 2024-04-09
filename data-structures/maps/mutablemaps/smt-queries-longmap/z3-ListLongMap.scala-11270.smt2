; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131496 () Bool)

(assert start!131496)

(declare-fun b!1540813 () Bool)

(declare-fun e!856963 () Bool)

(assert (=> b!1540813 (= e!856963 false)))

(declare-datatypes ((array!102326 0))(
  ( (array!102327 (arr!49367 (Array (_ BitVec 32) (_ BitVec 64))) (size!49918 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102326)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun lt!665470 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102326 (_ BitVec 32)) Bool)

(assert (=> b!1540813 (= lt!665470 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540812 () Bool)

(declare-fun res!1057495 () Bool)

(assert (=> b!1540812 (=> (not res!1057495) (not e!856963))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540812 (= res!1057495 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49918 a!3920))))))

(declare-fun res!1057494 () Bool)

(assert (=> start!131496 (=> (not res!1057494) (not e!856963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131496 (= res!1057494 (validMask!0 mask!4052))))

(assert (=> start!131496 e!856963))

(assert (=> start!131496 true))

(declare-fun array_inv!38312 (array!102326) Bool)

(assert (=> start!131496 (array_inv!38312 a!3920)))

(declare-fun b!1540811 () Bool)

(declare-fun res!1057496 () Bool)

(assert (=> b!1540811 (=> (not res!1057496) (not e!856963))))

(assert (=> b!1540811 (= res!1057496 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540810 () Bool)

(declare-fun res!1057497 () Bool)

(assert (=> b!1540810 (=> (not res!1057497) (not e!856963))))

(assert (=> b!1540810 (= res!1057497 (and (= (size!49918 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49918 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49918 a!3920))))))

(assert (= (and start!131496 res!1057494) b!1540810))

(assert (= (and b!1540810 res!1057497) b!1540811))

(assert (= (and b!1540811 res!1057496) b!1540812))

(assert (= (and b!1540812 res!1057495) b!1540813))

(declare-fun m!1422917 () Bool)

(assert (=> b!1540813 m!1422917))

(declare-fun m!1422919 () Bool)

(assert (=> start!131496 m!1422919))

(declare-fun m!1422921 () Bool)

(assert (=> start!131496 m!1422921))

(declare-fun m!1422923 () Bool)

(assert (=> b!1540811 m!1422923))

(check-sat (not b!1540811) (not start!131496) (not b!1540813))
