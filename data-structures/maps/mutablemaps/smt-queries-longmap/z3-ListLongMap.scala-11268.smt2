; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131484 () Bool)

(assert start!131484)

(declare-fun res!1057424 () Bool)

(declare-fun e!856927 () Bool)

(assert (=> start!131484 (=> (not res!1057424) (not e!856927))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131484 (= res!1057424 (validMask!0 mask!4052))))

(assert (=> start!131484 e!856927))

(assert (=> start!131484 true))

(declare-datatypes ((array!102314 0))(
  ( (array!102315 (arr!49361 (Array (_ BitVec 32) (_ BitVec 64))) (size!49912 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102314)

(declare-fun array_inv!38306 (array!102314) Bool)

(assert (=> start!131484 (array_inv!38306 a!3920)))

(declare-fun b!1540738 () Bool)

(declare-fun res!1057422 () Bool)

(assert (=> b!1540738 (=> (not res!1057422) (not e!856927))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540738 (= res!1057422 (and (= (size!49912 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49912 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49912 a!3920))))))

(declare-fun b!1540739 () Bool)

(declare-fun res!1057425 () Bool)

(assert (=> b!1540739 (=> (not res!1057425) (not e!856927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102314 (_ BitVec 32)) Bool)

(assert (=> b!1540739 (= res!1057425 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540740 () Bool)

(declare-fun res!1057423 () Bool)

(assert (=> b!1540740 (=> (not res!1057423) (not e!856927))))

(assert (=> b!1540740 (= res!1057423 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49912 a!3920))))))

(declare-fun b!1540741 () Bool)

(assert (=> b!1540741 (= e!856927 false)))

(declare-fun lt!665452 () Bool)

(assert (=> b!1540741 (= lt!665452 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131484 res!1057424) b!1540738))

(assert (= (and b!1540738 res!1057422) b!1540739))

(assert (= (and b!1540739 res!1057425) b!1540740))

(assert (= (and b!1540740 res!1057423) b!1540741))

(declare-fun m!1422869 () Bool)

(assert (=> start!131484 m!1422869))

(declare-fun m!1422871 () Bool)

(assert (=> start!131484 m!1422871))

(declare-fun m!1422873 () Bool)

(assert (=> b!1540739 m!1422873))

(declare-fun m!1422875 () Bool)

(assert (=> b!1540741 m!1422875))

(check-sat (not b!1540739) (not start!131484) (not b!1540741))
