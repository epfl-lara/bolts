; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131564 () Bool)

(assert start!131564)

(declare-fun res!1057823 () Bool)

(declare-fun e!857168 () Bool)

(assert (=> start!131564 (=> (not res!1057823) (not e!857168))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131564 (= res!1057823 (validMask!0 mask!4052))))

(assert (=> start!131564 e!857168))

(assert (=> start!131564 true))

(declare-datatypes ((array!102394 0))(
  ( (array!102395 (arr!49401 (Array (_ BitVec 32) (_ BitVec 64))) (size!49952 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102394)

(declare-fun array_inv!38346 (array!102394) Bool)

(assert (=> start!131564 (array_inv!38346 a!3920)))

(declare-fun b!1541139 () Bool)

(declare-fun res!1057824 () Bool)

(assert (=> b!1541139 (=> (not res!1057824) (not e!857168))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541139 (= res!1057824 (and (= (size!49952 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49952 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49952 a!3920))))))

(declare-fun b!1541140 () Bool)

(assert (=> b!1541140 (= e!857168 false)))

(declare-fun lt!665563 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102394 (_ BitVec 32)) Bool)

(assert (=> b!1541140 (= lt!665563 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131564 res!1057823) b!1541139))

(assert (= (and b!1541139 res!1057824) b!1541140))

(declare-fun m!1423197 () Bool)

(assert (=> start!131564 m!1423197))

(declare-fun m!1423199 () Bool)

(assert (=> start!131564 m!1423199))

(declare-fun m!1423201 () Bool)

(assert (=> b!1541140 m!1423201))

(push 1)

(assert (not start!131564))

(assert (not b!1541140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

