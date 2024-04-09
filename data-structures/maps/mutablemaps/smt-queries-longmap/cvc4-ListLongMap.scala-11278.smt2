; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131546 () Bool)

(assert start!131546)

(declare-fun res!1057769 () Bool)

(declare-fun e!857113 () Bool)

(assert (=> start!131546 (=> (not res!1057769) (not e!857113))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131546 (= res!1057769 (validMask!0 mask!4052))))

(assert (=> start!131546 e!857113))

(assert (=> start!131546 true))

(declare-datatypes ((array!102376 0))(
  ( (array!102377 (arr!49392 (Array (_ BitVec 32) (_ BitVec 64))) (size!49943 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102376)

(declare-fun array_inv!38337 (array!102376) Bool)

(assert (=> start!131546 (array_inv!38337 a!3920)))

(declare-fun b!1541085 () Bool)

(declare-fun res!1057770 () Bool)

(assert (=> b!1541085 (=> (not res!1057770) (not e!857113))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541085 (= res!1057770 (and (= (size!49943 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49943 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49943 a!3920))))))

(declare-fun b!1541086 () Bool)

(assert (=> b!1541086 (= e!857113 false)))

(declare-fun lt!665536 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102376 (_ BitVec 32)) Bool)

(assert (=> b!1541086 (= lt!665536 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131546 res!1057769) b!1541085))

(assert (= (and b!1541085 res!1057770) b!1541086))

(declare-fun m!1423143 () Bool)

(assert (=> start!131546 m!1423143))

(declare-fun m!1423145 () Bool)

(assert (=> start!131546 m!1423145))

(declare-fun m!1423147 () Bool)

(assert (=> b!1541086 m!1423147))

(push 1)

(assert (not start!131546))

(assert (not b!1541086))

(check-sat)

(pop 1)

