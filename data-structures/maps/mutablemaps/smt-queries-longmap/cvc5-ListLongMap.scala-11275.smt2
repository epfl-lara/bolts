; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131524 () Bool)

(assert start!131524)

(declare-fun res!1057695 () Bool)

(declare-fun e!857047 () Bool)

(assert (=> start!131524 (=> (not res!1057695) (not e!857047))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131524 (= res!1057695 (validMask!0 mask!4052))))

(assert (=> start!131524 e!857047))

(assert (=> start!131524 true))

(declare-datatypes ((array!102354 0))(
  ( (array!102355 (arr!49381 (Array (_ BitVec 32) (_ BitVec 64))) (size!49932 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102354)

(declare-fun array_inv!38326 (array!102354) Bool)

(assert (=> start!131524 (array_inv!38326 a!3920)))

(declare-fun b!1541010 () Bool)

(declare-fun res!1057694 () Bool)

(assert (=> b!1541010 (=> (not res!1057694) (not e!857047))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541010 (= res!1057694 (and (= (size!49932 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49932 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49932 a!3920))))))

(declare-fun b!1541011 () Bool)

(assert (=> b!1541011 (= e!857047 false)))

(declare-fun lt!665512 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102354 (_ BitVec 32)) Bool)

(assert (=> b!1541011 (= lt!665512 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131524 res!1057695) b!1541010))

(assert (= (and b!1541010 res!1057694) b!1541011))

(declare-fun m!1423077 () Bool)

(assert (=> start!131524 m!1423077))

(declare-fun m!1423079 () Bool)

(assert (=> start!131524 m!1423079))

(declare-fun m!1423081 () Bool)

(assert (=> b!1541011 m!1423081))

(push 1)

(assert (not start!131524))

(assert (not b!1541011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

