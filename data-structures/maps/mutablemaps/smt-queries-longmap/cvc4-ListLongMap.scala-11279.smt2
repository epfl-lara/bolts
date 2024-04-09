; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131552 () Bool)

(assert start!131552)

(declare-fun res!1057787 () Bool)

(declare-fun e!857132 () Bool)

(assert (=> start!131552 (=> (not res!1057787) (not e!857132))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131552 (= res!1057787 (validMask!0 mask!4052))))

(assert (=> start!131552 e!857132))

(assert (=> start!131552 true))

(declare-datatypes ((array!102382 0))(
  ( (array!102383 (arr!49395 (Array (_ BitVec 32) (_ BitVec 64))) (size!49946 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102382)

(declare-fun array_inv!38340 (array!102382) Bool)

(assert (=> start!131552 (array_inv!38340 a!3920)))

(declare-fun b!1541103 () Bool)

(declare-fun res!1057788 () Bool)

(assert (=> b!1541103 (=> (not res!1057788) (not e!857132))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541103 (= res!1057788 (and (= (size!49946 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49946 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49946 a!3920))))))

(declare-fun b!1541104 () Bool)

(assert (=> b!1541104 (= e!857132 false)))

(declare-fun lt!665545 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102382 (_ BitVec 32)) Bool)

(assert (=> b!1541104 (= lt!665545 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131552 res!1057787) b!1541103))

(assert (= (and b!1541103 res!1057788) b!1541104))

(declare-fun m!1423161 () Bool)

(assert (=> start!131552 m!1423161))

(declare-fun m!1423163 () Bool)

(assert (=> start!131552 m!1423163))

(declare-fun m!1423165 () Bool)

(assert (=> b!1541104 m!1423165))

(push 1)

(assert (not b!1541104))

(assert (not start!131552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

