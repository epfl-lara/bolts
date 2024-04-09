; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93532 () Bool)

(assert start!93532)

(declare-fun res!707394 () Bool)

(declare-fun e!602424 () Bool)

(assert (=> start!93532 (=> (not res!707394) (not e!602424))))

(declare-fun from!2850 () (_ BitVec 32))

(declare-datatypes ((array!66778 0))(
  ( (array!66779 (arr!32103 (Array (_ BitVec 32) (_ BitVec 64))) (size!32640 (_ BitVec 32))) )
))
(declare-fun a!3475 () array!66778)

(assert (=> start!93532 (= res!707394 (and (bvsge from!2850 #b00000000000000000000000000000000) (bvslt from!2850 (size!32640 a!3475)) (bvslt (size!32640 a!3475) #b01111111111111111111111111111111)))))

(assert (=> start!93532 e!602424))

(assert (=> start!93532 true))

(declare-fun array_inv!24725 (array!66778) Bool)

(assert (=> start!93532 (array_inv!24725 a!3475)))

(declare-fun b!1058710 () Bool)

(declare-fun res!707395 () Bool)

(assert (=> b!1058710 (=> (not res!707395) (not e!602424))))

(declare-fun k!2741 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1058710 (= res!707395 (arrayContainsKey!0 a!3475 k!2741 from!2850))))

(declare-fun b!1058711 () Bool)

(declare-fun res!707393 () Bool)

(assert (=> b!1058711 (=> (not res!707393) (not e!602424))))

(assert (=> b!1058711 (= res!707393 (and (not (= (select (arr!32103 a!3475) from!2850) k!2741)) (bvsge (bvadd #b00000000000000000000000000000001 from!2850) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2850) (size!32640 a!3475))))))

(declare-fun b!1058712 () Bool)

(assert (=> b!1058712 (= e!602424 (not (arrayContainsKey!0 a!3475 k!2741 (bvadd #b00000000000000000000000000000001 from!2850))))))

(assert (= (and start!93532 res!707394) b!1058710))

(assert (= (and b!1058710 res!707395) b!1058711))

(assert (= (and b!1058711 res!707393) b!1058712))

(declare-fun m!978495 () Bool)

(assert (=> start!93532 m!978495))

(declare-fun m!978497 () Bool)

(assert (=> b!1058710 m!978497))

(declare-fun m!978499 () Bool)

(assert (=> b!1058711 m!978499))

(declare-fun m!978501 () Bool)

(assert (=> b!1058712 m!978501))

(push 1)

(assert (not start!93532))

(assert (not b!1058710))

(assert (not b!1058712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128587 () Bool)

(assert (=> d!128587 (= (array_inv!24725 a!3475) (bvsge (size!32640 a!3475) #b00000000000000000000000000000000))))

(assert (=> start!93532 d!128587))

(declare-fun d!128589 () Bool)

(declare-fun res!707416 () Bool)

(declare-fun e!602445 () Bool)

(assert (=> d!128589 (=> res!707416 e!602445)))

(assert (=> d!128589 (= res!707416 (= (select (arr!32103 a!3475) from!2850) k!2741))))

(assert (=> d!128589 (= (arrayContainsKey!0 a!3475 k!2741 from!2850) e!602445)))

(declare-fun b!1058733 () Bool)

(declare-fun e!602446 () Bool)

(assert (=> b!1058733 (= e!602445 e!602446)))

(declare-fun res!707417 () Bool)

(assert (=> b!1058733 (=> (not res!707417) (not e!602446))))

(assert (=> b!1058733 (= res!707417 (bvslt (bvadd from!2850 #b00000000000000000000000000000001) (size!32640 a!3475)))))

