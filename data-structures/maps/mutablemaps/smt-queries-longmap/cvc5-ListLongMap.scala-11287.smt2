; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131614 () Bool)

(assert start!131614)

(declare-fun b!1541370 () Bool)

(declare-fun res!1058028 () Bool)

(declare-fun e!857299 () Bool)

(assert (=> b!1541370 (=> (not res!1058028) (not e!857299))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541370 (= res!1058028 (bvsge from!3298 newFrom!293))))

(declare-fun b!1541368 () Bool)

(declare-fun res!1058029 () Bool)

(assert (=> b!1541368 (=> (not res!1058029) (not e!857299))))

(declare-datatypes ((array!102429 0))(
  ( (array!102430 (arr!49417 (Array (_ BitVec 32) (_ BitVec 64))) (size!49968 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102429)

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1541368 (= res!1058029 (and (= (size!49968 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49968 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49968 a!3920))))))

(declare-fun b!1541371 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102429 (_ BitVec 32)) Bool)

(assert (=> b!1541371 (= e!857299 (not (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))))

(declare-fun res!1058031 () Bool)

(assert (=> start!131614 (=> (not res!1058031) (not e!857299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131614 (= res!1058031 (validMask!0 mask!4052))))

(assert (=> start!131614 e!857299))

(assert (=> start!131614 true))

(declare-fun array_inv!38362 (array!102429) Bool)

(assert (=> start!131614 (array_inv!38362 a!3920)))

(declare-fun b!1541369 () Bool)

(declare-fun res!1058030 () Bool)

(assert (=> b!1541369 (=> (not res!1058030) (not e!857299))))

(assert (=> b!1541369 (= res!1058030 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131614 res!1058031) b!1541368))

(assert (= (and b!1541368 res!1058029) b!1541369))

(assert (= (and b!1541369 res!1058030) b!1541370))

(assert (= (and b!1541370 res!1058028) b!1541371))

(declare-fun m!1423395 () Bool)

(assert (=> b!1541371 m!1423395))

(declare-fun m!1423397 () Bool)

(assert (=> start!131614 m!1423397))

(declare-fun m!1423399 () Bool)

(assert (=> start!131614 m!1423399))

(declare-fun m!1423401 () Bool)

(assert (=> b!1541369 m!1423401))

(push 1)

(assert (not start!131614))

(assert (not b!1541371))

(assert (not b!1541369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

