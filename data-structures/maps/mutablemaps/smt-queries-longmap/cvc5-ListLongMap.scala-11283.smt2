; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131572 () Bool)

(assert start!131572)

(declare-fun res!1057857 () Bool)

(declare-fun e!857192 () Bool)

(assert (=> start!131572 (=> (not res!1057857) (not e!857192))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131572 (= res!1057857 (validMask!0 mask!4052))))

(assert (=> start!131572 e!857192))

(assert (=> start!131572 true))

(declare-datatypes ((array!102402 0))(
  ( (array!102403 (arr!49405 (Array (_ BitVec 32) (_ BitVec 64))) (size!49956 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102402)

(declare-fun array_inv!38350 (array!102402) Bool)

(assert (=> start!131572 (array_inv!38350 a!3920)))

(declare-fun b!1541172 () Bool)

(declare-fun res!1057856 () Bool)

(assert (=> b!1541172 (=> (not res!1057856) (not e!857192))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541172 (= res!1057856 (and (= (size!49956 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49956 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49956 a!3920))))))

(declare-fun b!1541173 () Bool)

(assert (=> b!1541173 (= e!857192 false)))

(declare-fun lt!665566 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102402 (_ BitVec 32)) Bool)

(assert (=> b!1541173 (= lt!665566 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131572 res!1057857) b!1541172))

(assert (= (and b!1541172 res!1057856) b!1541173))

(declare-fun m!1423221 () Bool)

(assert (=> start!131572 m!1423221))

(declare-fun m!1423223 () Bool)

(assert (=> start!131572 m!1423223))

(declare-fun m!1423225 () Bool)

(assert (=> b!1541173 m!1423225))

(push 1)

(assert (not start!131572))

(assert (not b!1541173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

