; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131528 () Bool)

(assert start!131528)

(declare-fun res!1057706 () Bool)

(declare-fun e!857060 () Bool)

(assert (=> start!131528 (=> (not res!1057706) (not e!857060))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131528 (= res!1057706 (validMask!0 mask!4052))))

(assert (=> start!131528 e!857060))

(assert (=> start!131528 true))

(declare-datatypes ((array!102358 0))(
  ( (array!102359 (arr!49383 (Array (_ BitVec 32) (_ BitVec 64))) (size!49934 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102358)

(declare-fun array_inv!38328 (array!102358) Bool)

(assert (=> start!131528 (array_inv!38328 a!3920)))

(declare-fun b!1541022 () Bool)

(declare-fun res!1057707 () Bool)

(assert (=> b!1541022 (=> (not res!1057707) (not e!857060))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541022 (= res!1057707 (and (= (size!49934 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49934 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49934 a!3920))))))

(declare-fun b!1541023 () Bool)

(assert (=> b!1541023 (= e!857060 false)))

(declare-fun lt!665518 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102358 (_ BitVec 32)) Bool)

(assert (=> b!1541023 (= lt!665518 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131528 res!1057706) b!1541022))

(assert (= (and b!1541022 res!1057707) b!1541023))

(declare-fun m!1423089 () Bool)

(assert (=> start!131528 m!1423089))

(declare-fun m!1423091 () Bool)

(assert (=> start!131528 m!1423091))

(declare-fun m!1423093 () Bool)

(assert (=> b!1541023 m!1423093))

(push 1)

(assert (not start!131528))

(assert (not b!1541023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

