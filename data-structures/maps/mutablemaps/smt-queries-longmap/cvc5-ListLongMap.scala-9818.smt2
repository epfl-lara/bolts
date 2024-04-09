; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116594 () Bool)

(assert start!116594)

(declare-fun res!917822 () Bool)

(declare-fun e!778708 () Bool)

(assert (=> start!116594 (=> (not res!917822) (not e!778708))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93217 0))(
  ( (array!93218 (arr!45010 (Array (_ BitVec 32) (_ BitVec 64))) (size!45561 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93217)

(assert (=> start!116594 (= res!917822 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45561 a!4142))))))

(assert (=> start!116594 e!778708))

(assert (=> start!116594 true))

(declare-fun array_inv!33955 (array!93217) Bool)

(assert (=> start!116594 (array_inv!33955 a!4142)))

(declare-fun b!1374516 () Bool)

(declare-fun res!917823 () Bool)

(assert (=> b!1374516 (=> (not res!917823) (not e!778708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374516 (= res!917823 (validKeyInArray!0 (select (arr!45010 a!4142) i!1457)))))

(declare-fun b!1374517 () Bool)

(declare-fun res!917821 () Bool)

(assert (=> b!1374517 (=> (not res!917821) (not e!778708))))

(declare-fun k!2959 () (_ BitVec 64))

(assert (=> b!1374517 (= res!917821 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374518 () Bool)

(assert (=> b!1374518 (= e!778708 (and (bvslt (size!45561 a!4142) #b01111111111111111111111111111111) (bvsgt i!1457 (size!45561 a!4142))))))

(assert (= (and start!116594 res!917822) b!1374516))

(assert (= (and b!1374516 res!917823) b!1374517))

(assert (= (and b!1374517 res!917821) b!1374518))

(declare-fun m!1258117 () Bool)

(assert (=> start!116594 m!1258117))

(declare-fun m!1258119 () Bool)

(assert (=> b!1374516 m!1258119))

(assert (=> b!1374516 m!1258119))

(declare-fun m!1258121 () Bool)

(assert (=> b!1374516 m!1258121))

(declare-fun m!1258123 () Bool)

(assert (=> b!1374517 m!1258123))

(push 1)

(assert (not b!1374517))

(assert (not b!1374516))

(assert (not start!116594))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

