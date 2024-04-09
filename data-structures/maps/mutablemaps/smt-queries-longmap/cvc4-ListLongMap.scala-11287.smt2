; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131618 () Bool)

(assert start!131618)

(declare-fun b!1541394 () Bool)

(declare-fun res!1058054 () Bool)

(declare-fun e!857311 () Bool)

(assert (=> b!1541394 (=> (not res!1058054) (not e!857311))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541394 (= res!1058054 (bvsge from!3298 newFrom!293))))

(declare-datatypes ((array!102433 0))(
  ( (array!102434 (arr!49419 (Array (_ BitVec 32) (_ BitVec 64))) (size!49970 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102433)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun b!1541395 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102433 (_ BitVec 32)) Bool)

(assert (=> b!1541395 (= e!857311 (not (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))))

(declare-fun b!1541393 () Bool)

(declare-fun res!1058053 () Bool)

(assert (=> b!1541393 (=> (not res!1058053) (not e!857311))))

(assert (=> b!1541393 (= res!1058053 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541392 () Bool)

(declare-fun res!1058052 () Bool)

(assert (=> b!1541392 (=> (not res!1058052) (not e!857311))))

(assert (=> b!1541392 (= res!1058052 (and (= (size!49970 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49970 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49970 a!3920))))))

(declare-fun res!1058055 () Bool)

(assert (=> start!131618 (=> (not res!1058055) (not e!857311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131618 (= res!1058055 (validMask!0 mask!4052))))

(assert (=> start!131618 e!857311))

(assert (=> start!131618 true))

(declare-fun array_inv!38364 (array!102433) Bool)

(assert (=> start!131618 (array_inv!38364 a!3920)))

(assert (= (and start!131618 res!1058055) b!1541392))

(assert (= (and b!1541392 res!1058052) b!1541393))

(assert (= (and b!1541393 res!1058053) b!1541394))

(assert (= (and b!1541394 res!1058054) b!1541395))

(declare-fun m!1423411 () Bool)

(assert (=> b!1541395 m!1423411))

(declare-fun m!1423413 () Bool)

(assert (=> b!1541393 m!1423413))

(declare-fun m!1423415 () Bool)

(assert (=> start!131618 m!1423415))

(declare-fun m!1423417 () Bool)

(assert (=> start!131618 m!1423417))

(push 1)

(assert (not start!131618))

(assert (not b!1541393))

(assert (not b!1541395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

