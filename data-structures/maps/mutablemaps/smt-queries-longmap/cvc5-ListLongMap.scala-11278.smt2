; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131542 () Bool)

(assert start!131542)

(declare-fun res!1057757 () Bool)

(declare-fun e!857101 () Bool)

(assert (=> start!131542 (=> (not res!1057757) (not e!857101))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131542 (= res!1057757 (validMask!0 mask!4052))))

(assert (=> start!131542 e!857101))

(assert (=> start!131542 true))

(declare-datatypes ((array!102372 0))(
  ( (array!102373 (arr!49390 (Array (_ BitVec 32) (_ BitVec 64))) (size!49941 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102372)

(declare-fun array_inv!38335 (array!102372) Bool)

(assert (=> start!131542 (array_inv!38335 a!3920)))

(declare-fun b!1541073 () Bool)

(declare-fun res!1057758 () Bool)

(assert (=> b!1541073 (=> (not res!1057758) (not e!857101))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541073 (= res!1057758 (and (= (size!49941 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49941 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49941 a!3920))))))

(declare-fun b!1541074 () Bool)

(assert (=> b!1541074 (= e!857101 false)))

(declare-fun lt!665530 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102372 (_ BitVec 32)) Bool)

(assert (=> b!1541074 (= lt!665530 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131542 res!1057757) b!1541073))

(assert (= (and b!1541073 res!1057758) b!1541074))

(declare-fun m!1423131 () Bool)

(assert (=> start!131542 m!1423131))

(declare-fun m!1423133 () Bool)

(assert (=> start!131542 m!1423133))

(declare-fun m!1423135 () Bool)

(assert (=> b!1541074 m!1423135))

(push 1)

(assert (not b!1541074))

(assert (not start!131542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

