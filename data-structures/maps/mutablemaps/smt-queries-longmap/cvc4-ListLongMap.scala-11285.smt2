; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131606 () Bool)

(assert start!131606)

(declare-fun b!1541310 () Bool)

(declare-fun e!857276 () Bool)

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541310 (= e!857276 (bvsge (bvsub newFrom!293 (bvadd #b00000000000000000000000000000001 from!3298)) (bvsub newFrom!293 from!3298)))))

(declare-fun res!1057974 () Bool)

(assert (=> start!131606 (=> (not res!1057974) (not e!857276))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131606 (= res!1057974 (validMask!0 mask!4052))))

(assert (=> start!131606 e!857276))

(assert (=> start!131606 true))

(declare-datatypes ((array!102421 0))(
  ( (array!102422 (arr!49413 (Array (_ BitVec 32) (_ BitVec 64))) (size!49964 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102421)

(declare-fun array_inv!38358 (array!102421) Bool)

(assert (=> start!131606 (array_inv!38358 a!3920)))

(declare-fun b!1541311 () Bool)

(declare-fun res!1057973 () Bool)

(assert (=> b!1541311 (=> (not res!1057973) (not e!857276))))

(assert (=> b!1541311 (= res!1057973 (and (= (size!49964 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49964 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49964 a!3920))))))

(declare-fun b!1541312 () Bool)

(declare-fun res!1057970 () Bool)

(assert (=> b!1541312 (=> (not res!1057970) (not e!857276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102421 (_ BitVec 32)) Bool)

(assert (=> b!1541312 (= res!1057970 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541313 () Bool)

(declare-fun res!1057971 () Bool)

(assert (=> b!1541313 (=> (not res!1057971) (not e!857276))))

(assert (=> b!1541313 (= res!1057971 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1541314 () Bool)

(declare-fun res!1057972 () Bool)

(assert (=> b!1541314 (=> (not res!1057972) (not e!857276))))

(assert (=> b!1541314 (= res!1057972 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49964 a!3920))))))

(assert (= (and start!131606 res!1057974) b!1541311))

(assert (= (and b!1541311 res!1057973) b!1541312))

(assert (= (and b!1541312 res!1057970) b!1541314))

(assert (= (and b!1541314 res!1057972) b!1541313))

(assert (= (and b!1541313 res!1057971) b!1541310))

(declare-fun m!1423351 () Bool)

(assert (=> start!131606 m!1423351))

(declare-fun m!1423353 () Bool)

(assert (=> start!131606 m!1423353))

(declare-fun m!1423355 () Bool)

(assert (=> b!1541312 m!1423355))

(declare-fun m!1423357 () Bool)

(assert (=> b!1541313 m!1423357))

(push 1)

(assert (not b!1541312))

(assert (not start!131606))

(assert (not b!1541313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

