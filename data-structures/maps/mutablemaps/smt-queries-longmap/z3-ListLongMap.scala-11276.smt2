; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131532 () Bool)

(assert start!131532)

(declare-fun res!1057718 () Bool)

(declare-fun e!857071 () Bool)

(assert (=> start!131532 (=> (not res!1057718) (not e!857071))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131532 (= res!1057718 (validMask!0 mask!4052))))

(assert (=> start!131532 e!857071))

(assert (=> start!131532 true))

(declare-datatypes ((array!102362 0))(
  ( (array!102363 (arr!49385 (Array (_ BitVec 32) (_ BitVec 64))) (size!49936 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102362)

(declare-fun array_inv!38330 (array!102362) Bool)

(assert (=> start!131532 (array_inv!38330 a!3920)))

(declare-fun b!1541034 () Bool)

(declare-fun res!1057719 () Bool)

(assert (=> b!1541034 (=> (not res!1057719) (not e!857071))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541034 (= res!1057719 (and (= (size!49936 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49936 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49936 a!3920))))))

(declare-fun b!1541035 () Bool)

(assert (=> b!1541035 (= e!857071 false)))

(declare-fun lt!665524 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102362 (_ BitVec 32)) Bool)

(assert (=> b!1541035 (= lt!665524 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131532 res!1057718) b!1541034))

(assert (= (and b!1541034 res!1057719) b!1541035))

(declare-fun m!1423101 () Bool)

(assert (=> start!131532 m!1423101))

(declare-fun m!1423103 () Bool)

(assert (=> start!131532 m!1423103))

(declare-fun m!1423105 () Bool)

(assert (=> b!1541035 m!1423105))

(check-sat (not start!131532) (not b!1541035))
