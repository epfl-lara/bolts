; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131604 () Bool)

(assert start!131604)

(declare-fun b!1541295 () Bool)

(declare-fun res!1057959 () Bool)

(declare-fun e!857270 () Bool)

(assert (=> b!1541295 (=> (not res!1057959) (not e!857270))))

(declare-datatypes ((array!102419 0))(
  ( (array!102420 (arr!49412 (Array (_ BitVec 32) (_ BitVec 64))) (size!49963 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102419)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102419 (_ BitVec 32)) Bool)

(assert (=> b!1541295 (= res!1057959 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541296 () Bool)

(declare-fun res!1057958 () Bool)

(assert (=> b!1541296 (=> (not res!1057958) (not e!857270))))

(assert (=> b!1541296 (= res!1057958 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1541297 () Bool)

(declare-fun res!1057955 () Bool)

(assert (=> b!1541297 (=> (not res!1057955) (not e!857270))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541297 (= res!1057955 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49963 a!3920))))))

(declare-fun b!1541298 () Bool)

(declare-fun res!1057957 () Bool)

(assert (=> b!1541298 (=> (not res!1057957) (not e!857270))))

(assert (=> b!1541298 (= res!1057957 (and (= (size!49963 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49963 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49963 a!3920))))))

(declare-fun res!1057956 () Bool)

(assert (=> start!131604 (=> (not res!1057956) (not e!857270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131604 (= res!1057956 (validMask!0 mask!4052))))

(assert (=> start!131604 e!857270))

(assert (=> start!131604 true))

(declare-fun array_inv!38357 (array!102419) Bool)

(assert (=> start!131604 (array_inv!38357 a!3920)))

(declare-fun b!1541299 () Bool)

(assert (=> b!1541299 (= e!857270 (bvsge (bvsub newFrom!293 (bvadd #b00000000000000000000000000000001 from!3298)) (bvsub newFrom!293 from!3298)))))

(assert (= (and start!131604 res!1057956) b!1541298))

(assert (= (and b!1541298 res!1057957) b!1541295))

(assert (= (and b!1541295 res!1057959) b!1541297))

(assert (= (and b!1541297 res!1057955) b!1541296))

(assert (= (and b!1541296 res!1057958) b!1541299))

(declare-fun m!1423343 () Bool)

(assert (=> b!1541295 m!1423343))

(declare-fun m!1423345 () Bool)

(assert (=> b!1541296 m!1423345))

(declare-fun m!1423347 () Bool)

(assert (=> start!131604 m!1423347))

(declare-fun m!1423349 () Bool)

(assert (=> start!131604 m!1423349))

(check-sat (not b!1541295) (not start!131604) (not b!1541296))
(check-sat)
