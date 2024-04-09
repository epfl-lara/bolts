; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131566 () Bool)

(assert start!131566)

(declare-fun res!1057832 () Bool)

(declare-fun e!857174 () Bool)

(assert (=> start!131566 (=> (not res!1057832) (not e!857174))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131566 (= res!1057832 (validMask!0 mask!4052))))

(assert (=> start!131566 e!857174))

(assert (=> start!131566 true))

(declare-datatypes ((array!102396 0))(
  ( (array!102397 (arr!49402 (Array (_ BitVec 32) (_ BitVec 64))) (size!49953 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102396)

(declare-fun array_inv!38347 (array!102396) Bool)

(assert (=> start!131566 (array_inv!38347 a!3920)))

(declare-fun b!1541147 () Bool)

(declare-fun res!1057833 () Bool)

(assert (=> b!1541147 (=> (not res!1057833) (not e!857174))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541147 (= res!1057833 (and (= (size!49953 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49953 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49953 a!3920))))))

(declare-fun b!1541148 () Bool)

(declare-fun res!1057831 () Bool)

(assert (=> b!1541148 (=> (not res!1057831) (not e!857174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102396 (_ BitVec 32)) Bool)

(assert (=> b!1541148 (= res!1057831 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541149 () Bool)

(assert (=> b!1541149 (= e!857174 (and (bvslt from!3298 newFrom!293) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3298) (size!49953 a!3920)))))))

(assert (= (and start!131566 res!1057832) b!1541147))

(assert (= (and b!1541147 res!1057833) b!1541148))

(assert (= (and b!1541148 res!1057831) b!1541149))

(declare-fun m!1423203 () Bool)

(assert (=> start!131566 m!1423203))

(declare-fun m!1423205 () Bool)

(assert (=> start!131566 m!1423205))

(declare-fun m!1423207 () Bool)

(assert (=> b!1541148 m!1423207))

(push 1)

(assert (not b!1541148))

(assert (not start!131566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

