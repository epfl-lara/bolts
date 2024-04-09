; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131558 () Bool)

(assert start!131558)

(declare-fun res!1057806 () Bool)

(declare-fun e!857150 () Bool)

(assert (=> start!131558 (=> (not res!1057806) (not e!857150))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131558 (= res!1057806 (validMask!0 mask!4052))))

(assert (=> start!131558 e!857150))

(assert (=> start!131558 true))

(declare-datatypes ((array!102388 0))(
  ( (array!102389 (arr!49398 (Array (_ BitVec 32) (_ BitVec 64))) (size!49949 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102388)

(declare-fun array_inv!38343 (array!102388) Bool)

(assert (=> start!131558 (array_inv!38343 a!3920)))

(declare-fun b!1541121 () Bool)

(declare-fun res!1057805 () Bool)

(assert (=> b!1541121 (=> (not res!1057805) (not e!857150))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541121 (= res!1057805 (and (= (size!49949 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49949 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49949 a!3920))))))

(declare-fun b!1541122 () Bool)

(assert (=> b!1541122 (= e!857150 false)))

(declare-fun lt!665554 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102388 (_ BitVec 32)) Bool)

(assert (=> b!1541122 (= lt!665554 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131558 res!1057806) b!1541121))

(assert (= (and b!1541121 res!1057805) b!1541122))

(declare-fun m!1423179 () Bool)

(assert (=> start!131558 m!1423179))

(declare-fun m!1423181 () Bool)

(assert (=> start!131558 m!1423181))

(declare-fun m!1423183 () Bool)

(assert (=> b!1541122 m!1423183))

(push 1)

(assert (not start!131558))

(assert (not b!1541122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

