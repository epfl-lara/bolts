; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131470 () Bool)

(assert start!131470)

(declare-fun res!1057338 () Bool)

(declare-fun e!856885 () Bool)

(assert (=> start!131470 (=> (not res!1057338) (not e!856885))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131470 (= res!1057338 (validMask!0 mask!4052))))

(assert (=> start!131470 e!856885))

(assert (=> start!131470 true))

(declare-datatypes ((array!102300 0))(
  ( (array!102301 (arr!49354 (Array (_ BitVec 32) (_ BitVec 64))) (size!49905 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102300)

(declare-fun array_inv!38299 (array!102300) Bool)

(assert (=> start!131470 (array_inv!38299 a!3920)))

(declare-fun b!1540654 () Bool)

(declare-fun res!1057340 () Bool)

(assert (=> b!1540654 (=> (not res!1057340) (not e!856885))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540654 (= res!1057340 (and (= (size!49905 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49905 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49905 a!3920))))))

(declare-fun b!1540657 () Bool)

(assert (=> b!1540657 (= e!856885 false)))

(declare-fun lt!665431 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102300 (_ BitVec 32)) Bool)

(assert (=> b!1540657 (= lt!665431 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540656 () Bool)

(declare-fun res!1057339 () Bool)

(assert (=> b!1540656 (=> (not res!1057339) (not e!856885))))

(assert (=> b!1540656 (= res!1057339 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49905 a!3920))))))

(declare-fun b!1540655 () Bool)

(declare-fun res!1057341 () Bool)

(assert (=> b!1540655 (=> (not res!1057341) (not e!856885))))

(assert (=> b!1540655 (= res!1057341 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131470 res!1057338) b!1540654))

(assert (= (and b!1540654 res!1057340) b!1540655))

(assert (= (and b!1540655 res!1057341) b!1540656))

(assert (= (and b!1540656 res!1057339) b!1540657))

(declare-fun m!1422813 () Bool)

(assert (=> start!131470 m!1422813))

(declare-fun m!1422815 () Bool)

(assert (=> start!131470 m!1422815))

(declare-fun m!1422817 () Bool)

(assert (=> b!1540657 m!1422817))

(declare-fun m!1422819 () Bool)

(assert (=> b!1540655 m!1422819))

(push 1)

(assert (not b!1540655))

(assert (not start!131470))

(assert (not b!1540657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

