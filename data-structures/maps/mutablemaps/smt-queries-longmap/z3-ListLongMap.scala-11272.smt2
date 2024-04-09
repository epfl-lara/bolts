; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131508 () Bool)

(assert start!131508)

(declare-fun res!1057581 () Bool)

(declare-fun e!857000 () Bool)

(assert (=> start!131508 (=> (not res!1057581) (not e!857000))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131508 (= res!1057581 (validMask!0 mask!4052))))

(assert (=> start!131508 e!857000))

(assert (=> start!131508 true))

(declare-datatypes ((array!102338 0))(
  ( (array!102339 (arr!49373 (Array (_ BitVec 32) (_ BitVec 64))) (size!49924 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102338)

(declare-fun array_inv!38318 (array!102338) Bool)

(assert (=> start!131508 (array_inv!38318 a!3920)))

(declare-fun b!1540896 () Bool)

(declare-fun res!1057584 () Bool)

(assert (=> b!1540896 (=> (not res!1057584) (not e!857000))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102338 (_ BitVec 32)) Bool)

(assert (=> b!1540896 (= res!1057584 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540897 () Bool)

(assert (=> b!1540897 (= e!857000 (not true))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540897 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51406 0))(
  ( (Unit!51407) )
))
(declare-fun lt!665488 () Unit!51406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51406)

(assert (=> b!1540897 (= lt!665488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540898 () Bool)

(declare-fun res!1057583 () Bool)

(assert (=> b!1540898 (=> (not res!1057583) (not e!857000))))

(assert (=> b!1540898 (= res!1057583 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540899 () Bool)

(declare-fun res!1057582 () Bool)

(assert (=> b!1540899 (=> (not res!1057582) (not e!857000))))

(assert (=> b!1540899 (= res!1057582 (and (= (size!49924 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49924 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49924 a!3920))))))

(declare-fun b!1540900 () Bool)

(declare-fun res!1057580 () Bool)

(assert (=> b!1540900 (=> (not res!1057580) (not e!857000))))

(assert (=> b!1540900 (= res!1057580 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49924 a!3920))))))

(assert (= (and start!131508 res!1057581) b!1540899))

(assert (= (and b!1540899 res!1057582) b!1540896))

(assert (= (and b!1540896 res!1057584) b!1540900))

(assert (= (and b!1540900 res!1057580) b!1540898))

(assert (= (and b!1540898 res!1057583) b!1540897))

(declare-fun m!1422981 () Bool)

(assert (=> start!131508 m!1422981))

(declare-fun m!1422983 () Bool)

(assert (=> start!131508 m!1422983))

(declare-fun m!1422985 () Bool)

(assert (=> b!1540896 m!1422985))

(declare-fun m!1422987 () Bool)

(assert (=> b!1540897 m!1422987))

(declare-fun m!1422989 () Bool)

(assert (=> b!1540897 m!1422989))

(declare-fun m!1422991 () Bool)

(assert (=> b!1540898 m!1422991))

(check-sat (not b!1540896) (not b!1540897) (not b!1540898) (not start!131508))
