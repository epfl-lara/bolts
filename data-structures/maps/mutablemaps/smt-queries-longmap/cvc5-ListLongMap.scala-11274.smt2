; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131518 () Bool)

(assert start!131518)

(declare-fun b!1540971 () Bool)

(declare-fun res!1057657 () Bool)

(declare-fun e!857030 () Bool)

(assert (=> b!1540971 (=> (not res!1057657) (not e!857030))))

(declare-datatypes ((array!102348 0))(
  ( (array!102349 (arr!49378 (Array (_ BitVec 32) (_ BitVec 64))) (size!49929 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102348)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102348 (_ BitVec 32)) Bool)

(assert (=> b!1540971 (= res!1057657 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540972 () Bool)

(declare-fun res!1057655 () Bool)

(assert (=> b!1540972 (=> (not res!1057655) (not e!857030))))

(assert (=> b!1540972 (= res!1057655 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540973 () Bool)

(declare-fun res!1057656 () Bool)

(assert (=> b!1540973 (=> (not res!1057656) (not e!857030))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540973 (= res!1057656 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49929 a!3920))))))

(declare-fun res!1057659 () Bool)

(assert (=> start!131518 (=> (not res!1057659) (not e!857030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131518 (= res!1057659 (validMask!0 mask!4052))))

(assert (=> start!131518 e!857030))

(assert (=> start!131518 true))

(declare-fun array_inv!38323 (array!102348) Bool)

(assert (=> start!131518 (array_inv!38323 a!3920)))

(declare-fun b!1540974 () Bool)

(declare-fun res!1057658 () Bool)

(assert (=> b!1540974 (=> (not res!1057658) (not e!857030))))

(assert (=> b!1540974 (= res!1057658 (and (= (size!49929 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49929 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49929 a!3920))))))

(declare-fun b!1540975 () Bool)

(assert (=> b!1540975 (= e!857030 (not true))))

(assert (=> b!1540975 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51416 0))(
  ( (Unit!51417) )
))
(declare-fun lt!665503 () Unit!51416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51416)

(assert (=> b!1540975 (= lt!665503 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(assert (= (and start!131518 res!1057659) b!1540974))

(assert (= (and b!1540974 res!1057658) b!1540972))

(assert (= (and b!1540972 res!1057655) b!1540973))

(assert (= (and b!1540973 res!1057656) b!1540971))

(assert (= (and b!1540971 res!1057657) b!1540975))

(declare-fun m!1423041 () Bool)

(assert (=> b!1540971 m!1423041))

(declare-fun m!1423043 () Bool)

(assert (=> b!1540972 m!1423043))

(declare-fun m!1423045 () Bool)

(assert (=> start!131518 m!1423045))

(declare-fun m!1423047 () Bool)

(assert (=> start!131518 m!1423047))

(declare-fun m!1423049 () Bool)

(assert (=> b!1540975 m!1423049))

(declare-fun m!1423051 () Bool)

(assert (=> b!1540975 m!1423051))

(push 1)

(assert (not b!1540972))

(assert (not b!1540971))

(assert (not b!1540975))

(assert (not start!131518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

