; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131548 () Bool)

(assert start!131548)

(declare-fun res!1057776 () Bool)

(declare-fun e!857120 () Bool)

(assert (=> start!131548 (=> (not res!1057776) (not e!857120))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131548 (= res!1057776 (validMask!0 mask!4052))))

(assert (=> start!131548 e!857120))

(assert (=> start!131548 true))

(declare-datatypes ((array!102378 0))(
  ( (array!102379 (arr!49393 (Array (_ BitVec 32) (_ BitVec 64))) (size!49944 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102378)

(declare-fun array_inv!38338 (array!102378) Bool)

(assert (=> start!131548 (array_inv!38338 a!3920)))

(declare-fun b!1541091 () Bool)

(declare-fun res!1057775 () Bool)

(assert (=> b!1541091 (=> (not res!1057775) (not e!857120))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541091 (= res!1057775 (and (= (size!49944 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49944 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49944 a!3920))))))

(declare-fun b!1541092 () Bool)

(assert (=> b!1541092 (= e!857120 false)))

(declare-fun lt!665539 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102378 (_ BitVec 32)) Bool)

(assert (=> b!1541092 (= lt!665539 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131548 res!1057776) b!1541091))

(assert (= (and b!1541091 res!1057775) b!1541092))

(declare-fun m!1423149 () Bool)

(assert (=> start!131548 m!1423149))

(declare-fun m!1423151 () Bool)

(assert (=> start!131548 m!1423151))

(declare-fun m!1423153 () Bool)

(assert (=> b!1541092 m!1423153))

(push 1)

(assert (not b!1541092))

(assert (not start!131548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

