; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131478 () Bool)

(assert start!131478)

(declare-fun res!1057388 () Bool)

(declare-fun e!856910 () Bool)

(assert (=> start!131478 (=> (not res!1057388) (not e!856910))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131478 (= res!1057388 (validMask!0 mask!4052))))

(assert (=> start!131478 e!856910))

(assert (=> start!131478 true))

(declare-datatypes ((array!102308 0))(
  ( (array!102309 (arr!49358 (Array (_ BitVec 32) (_ BitVec 64))) (size!49909 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102308)

(declare-fun array_inv!38303 (array!102308) Bool)

(assert (=> start!131478 (array_inv!38303 a!3920)))

(declare-fun b!1540705 () Bool)

(assert (=> b!1540705 (= e!856910 false)))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun lt!665443 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102308 (_ BitVec 32)) Bool)

(assert (=> b!1540705 (= lt!665443 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540704 () Bool)

(declare-fun res!1057387 () Bool)

(assert (=> b!1540704 (=> (not res!1057387) (not e!856910))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540704 (= res!1057387 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49909 a!3920))))))

(declare-fun b!1540702 () Bool)

(declare-fun res!1057389 () Bool)

(assert (=> b!1540702 (=> (not res!1057389) (not e!856910))))

(assert (=> b!1540702 (= res!1057389 (and (= (size!49909 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49909 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49909 a!3920))))))

(declare-fun b!1540703 () Bool)

(declare-fun res!1057386 () Bool)

(assert (=> b!1540703 (=> (not res!1057386) (not e!856910))))

(assert (=> b!1540703 (= res!1057386 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131478 res!1057388) b!1540702))

(assert (= (and b!1540702 res!1057389) b!1540703))

(assert (= (and b!1540703 res!1057386) b!1540704))

(assert (= (and b!1540704 res!1057387) b!1540705))

(declare-fun m!1422845 () Bool)

(assert (=> start!131478 m!1422845))

(declare-fun m!1422847 () Bool)

(assert (=> start!131478 m!1422847))

(declare-fun m!1422849 () Bool)

(assert (=> b!1540705 m!1422849))

(declare-fun m!1422851 () Bool)

(assert (=> b!1540703 m!1422851))

(check-sat (not b!1540703) (not start!131478) (not b!1540705))
