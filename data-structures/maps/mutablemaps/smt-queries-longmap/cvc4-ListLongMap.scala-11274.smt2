; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131522 () Bool)

(assert start!131522)

(declare-fun b!1541001 () Bool)

(declare-fun res!1057685 () Bool)

(declare-fun e!857042 () Bool)

(assert (=> b!1541001 (=> (not res!1057685) (not e!857042))))

(declare-datatypes ((array!102352 0))(
  ( (array!102353 (arr!49380 (Array (_ BitVec 32) (_ BitVec 64))) (size!49931 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102352)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102352 (_ BitVec 32)) Bool)

(assert (=> b!1541001 (= res!1057685 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1541002 () Bool)

(declare-fun res!1057686 () Bool)

(assert (=> b!1541002 (=> (not res!1057686) (not e!857042))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541002 (= res!1057686 (and (= (size!49931 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49931 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49931 a!3920))))))

(declare-fun b!1541003 () Bool)

(declare-fun res!1057689 () Bool)

(assert (=> b!1541003 (=> (not res!1057689) (not e!857042))))

(assert (=> b!1541003 (= res!1057689 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541004 () Bool)

(declare-fun res!1057688 () Bool)

(assert (=> b!1541004 (=> (not res!1057688) (not e!857042))))

(assert (=> b!1541004 (= res!1057688 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49931 a!3920))))))

(declare-fun res!1057687 () Bool)

(assert (=> start!131522 (=> (not res!1057687) (not e!857042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131522 (= res!1057687 (validMask!0 mask!4052))))

(assert (=> start!131522 e!857042))

(assert (=> start!131522 true))

(declare-fun array_inv!38325 (array!102352) Bool)

(assert (=> start!131522 (array_inv!38325 a!3920)))

(declare-fun b!1541005 () Bool)

(assert (=> b!1541005 (= e!857042 (not true))))

(assert (=> b!1541005 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51420 0))(
  ( (Unit!51421) )
))
(declare-fun lt!665509 () Unit!51420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51420)

(assert (=> b!1541005 (= lt!665509 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(assert (= (and start!131522 res!1057687) b!1541002))

(assert (= (and b!1541002 res!1057686) b!1541003))

(assert (= (and b!1541003 res!1057689) b!1541004))

(assert (= (and b!1541004 res!1057688) b!1541001))

(assert (= (and b!1541001 res!1057685) b!1541005))

(declare-fun m!1423065 () Bool)

(assert (=> b!1541001 m!1423065))

(declare-fun m!1423067 () Bool)

(assert (=> b!1541003 m!1423067))

(declare-fun m!1423069 () Bool)

(assert (=> start!131522 m!1423069))

(declare-fun m!1423071 () Bool)

(assert (=> start!131522 m!1423071))

(declare-fun m!1423073 () Bool)

(assert (=> b!1541005 m!1423073))

(declare-fun m!1423075 () Bool)

(assert (=> b!1541005 m!1423075))

(push 1)

(assert (not b!1541005))

(assert (not start!131522))

(assert (not b!1541003))

(assert (not b!1541001))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

