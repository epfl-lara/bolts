; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136804 () Bool)

(assert start!136804)

(declare-fun b!1578451 () Bool)

(declare-fun res!1078526 () Bool)

(declare-fun e!880434 () Bool)

(assert (=> b!1578451 (=> (not res!1078526) (not e!880434))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105733 0))(
  ( (array!105734 (arr!50971 (Array (_ BitVec 32) (_ BitVec 64))) (size!51522 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105733)

(declare-fun arrayContainsKey!0 (array!105733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578451 (= res!1078526 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578449 () Bool)

(declare-fun res!1078528 () Bool)

(assert (=> b!1578449 (=> (not res!1078528) (not e!880434))))

(assert (=> b!1578449 (= res!1078528 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun res!1078529 () Bool)

(assert (=> start!136804 (=> (not res!1078529) (not e!880434))))

(assert (=> start!136804 (= res!1078529 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51522 a!3559)) (bvslt (size!51522 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136804 e!880434))

(assert (=> start!136804 true))

(declare-fun array_inv!39616 (array!105733) Bool)

(assert (=> start!136804 (array_inv!39616 a!3559)))

(declare-fun b!1578450 () Bool)

(declare-fun res!1078527 () Bool)

(assert (=> b!1578450 (=> (not res!1078527) (not e!880434))))

(assert (=> b!1578450 (= res!1078527 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51522 a!3559))))))

(declare-fun b!1578452 () Bool)

(assert (=> b!1578452 (= e!880434 (not (bvslt #b00000000000000000000000000000000 (size!51522 a!3559))))))

(assert (=> b!1578452 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52120 0))(
  ( (Unit!52121) )
))
(declare-fun lt!676228 () Unit!52120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105733 (_ BitVec 64) (_ BitVec 32)) Unit!52120)

(assert (=> b!1578452 (= lt!676228 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(assert (= (and start!136804 res!1078529) b!1578449))

(assert (= (and b!1578449 res!1078528) b!1578450))

(assert (= (and b!1578450 res!1078527) b!1578451))

(assert (= (and b!1578451 res!1078526) b!1578452))

(declare-fun m!1450565 () Bool)

(assert (=> b!1578451 m!1450565))

(declare-fun m!1450567 () Bool)

(assert (=> b!1578449 m!1450567))

(declare-fun m!1450569 () Bool)

(assert (=> start!136804 m!1450569))

(declare-fun m!1450571 () Bool)

(assert (=> b!1578452 m!1450571))

(declare-fun m!1450573 () Bool)

(assert (=> b!1578452 m!1450573))

(push 1)

(assert (not b!1578449))

(assert (not b!1578452))

(assert (not start!136804))

(assert (not b!1578451))

(check-sat)

(pop 1)

(push 1)

(check-sat)

