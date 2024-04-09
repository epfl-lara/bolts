; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131570 () Bool)

(assert start!131570)

(declare-fun res!1057849 () Bool)

(declare-fun e!857185 () Bool)

(assert (=> start!131570 (=> (not res!1057849) (not e!857185))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131570 (= res!1057849 (validMask!0 mask!4052))))

(assert (=> start!131570 e!857185))

(assert (=> start!131570 true))

(declare-datatypes ((array!102400 0))(
  ( (array!102401 (arr!49404 (Array (_ BitVec 32) (_ BitVec 64))) (size!49955 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102400)

(declare-fun array_inv!38349 (array!102400) Bool)

(assert (=> start!131570 (array_inv!38349 a!3920)))

(declare-fun b!1541165 () Bool)

(declare-fun res!1057850 () Bool)

(assert (=> b!1541165 (=> (not res!1057850) (not e!857185))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541165 (= res!1057850 (and (= (size!49955 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49955 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49955 a!3920))))))

(declare-fun b!1541166 () Bool)

(declare-fun res!1057851 () Bool)

(assert (=> b!1541166 (=> (not res!1057851) (not e!857185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102400 (_ BitVec 32)) Bool)

(assert (=> b!1541166 (= res!1057851 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541167 () Bool)

(assert (=> b!1541167 (= e!857185 (and (bvslt from!3298 newFrom!293) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3298) (size!49955 a!3920)))))))

(assert (= (and start!131570 res!1057849) b!1541165))

(assert (= (and b!1541165 res!1057850) b!1541166))

(assert (= (and b!1541166 res!1057851) b!1541167))

(declare-fun m!1423215 () Bool)

(assert (=> start!131570 m!1423215))

(declare-fun m!1423217 () Bool)

(assert (=> start!131570 m!1423217))

(declare-fun m!1423219 () Bool)

(assert (=> b!1541166 m!1423219))

(push 1)

(assert (not b!1541166))

(assert (not start!131570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

