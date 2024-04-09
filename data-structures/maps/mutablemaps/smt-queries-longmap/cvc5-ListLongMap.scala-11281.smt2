; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131560 () Bool)

(assert start!131560)

(declare-fun res!1057812 () Bool)

(declare-fun e!857156 () Bool)

(assert (=> start!131560 (=> (not res!1057812) (not e!857156))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131560 (= res!1057812 (validMask!0 mask!4052))))

(assert (=> start!131560 e!857156))

(assert (=> start!131560 true))

(declare-datatypes ((array!102390 0))(
  ( (array!102391 (arr!49399 (Array (_ BitVec 32) (_ BitVec 64))) (size!49950 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102390)

(declare-fun array_inv!38344 (array!102390) Bool)

(assert (=> start!131560 (array_inv!38344 a!3920)))

(declare-fun b!1541127 () Bool)

(declare-fun res!1057811 () Bool)

(assert (=> b!1541127 (=> (not res!1057811) (not e!857156))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541127 (= res!1057811 (and (= (size!49950 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49950 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49950 a!3920))))))

(declare-fun b!1541128 () Bool)

(assert (=> b!1541128 (= e!857156 false)))

(declare-fun lt!665557 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102390 (_ BitVec 32)) Bool)

(assert (=> b!1541128 (= lt!665557 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131560 res!1057812) b!1541127))

(assert (= (and b!1541127 res!1057811) b!1541128))

(declare-fun m!1423185 () Bool)

(assert (=> start!131560 m!1423185))

(declare-fun m!1423187 () Bool)

(assert (=> start!131560 m!1423187))

(declare-fun m!1423189 () Bool)

(assert (=> b!1541128 m!1423189))

(push 1)

(assert (not start!131560))

(assert (not b!1541128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

