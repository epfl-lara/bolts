; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131538 () Bool)

(assert start!131538)

(declare-fun res!1057742 () Bool)

(declare-fun e!857090 () Bool)

(assert (=> start!131538 (=> (not res!1057742) (not e!857090))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131538 (= res!1057742 (validMask!0 mask!4052))))

(assert (=> start!131538 e!857090))

(assert (=> start!131538 true))

(declare-datatypes ((array!102368 0))(
  ( (array!102369 (arr!49388 (Array (_ BitVec 32) (_ BitVec 64))) (size!49939 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102368)

(declare-fun array_inv!38333 (array!102368) Bool)

(assert (=> start!131538 (array_inv!38333 a!3920)))

(declare-fun b!1541057 () Bool)

(declare-fun res!1057743 () Bool)

(assert (=> b!1541057 (=> (not res!1057743) (not e!857090))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541057 (= res!1057743 (and (= (size!49939 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49939 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49939 a!3920))))))

(declare-fun b!1541058 () Bool)

(declare-fun res!1057741 () Bool)

(assert (=> b!1541058 (=> (not res!1057741) (not e!857090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102368 (_ BitVec 32)) Bool)

(assert (=> b!1541058 (= res!1057741 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541059 () Bool)

(assert (=> b!1541059 (= e!857090 (and (bvsge from!3298 newFrom!293) (bvslt newFrom!293 #b00000000000000000000000000000000)))))

(assert (= (and start!131538 res!1057742) b!1541057))

(assert (= (and b!1541057 res!1057743) b!1541058))

(assert (= (and b!1541058 res!1057741) b!1541059))

(declare-fun m!1423119 () Bool)

(assert (=> start!131538 m!1423119))

(declare-fun m!1423121 () Bool)

(assert (=> start!131538 m!1423121))

(declare-fun m!1423123 () Bool)

(assert (=> b!1541058 m!1423123))

(check-sat (not b!1541058) (not start!131538))
(check-sat)
