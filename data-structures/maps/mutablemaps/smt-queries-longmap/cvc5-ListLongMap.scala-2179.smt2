; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36416 () Bool)

(assert start!36416)

(declare-fun b!363969 () Bool)

(declare-fun res!203281 () Bool)

(declare-fun e!222866 () Bool)

(assert (=> b!363969 (=> (not res!203281) (not e!222866))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20658 0))(
  ( (array!20659 (arr!9805 (Array (_ BitVec 32) (_ BitVec 64))) (size!10157 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20658)

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20658 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363969 (= res!203281 (= (arrayCountValidKeys!0 (array!20659 (store (arr!9805 a!4289) i!1472 k!2974) (size!10157 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!363970 () Bool)

(declare-fun res!203282 () Bool)

(assert (=> b!363970 (=> (not res!203282) (not e!222866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363970 (= res!203282 (not (validKeyInArray!0 (select (arr!9805 a!4289) i!1472))))))

(declare-fun b!363971 () Bool)

(declare-fun res!203284 () Bool)

(assert (=> b!363971 (=> (not res!203284) (not e!222866))))

(assert (=> b!363971 (= res!203284 (validKeyInArray!0 k!2974))))

(declare-fun b!363972 () Bool)

(assert (=> b!363972 (= e!222866 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun b!363973 () Bool)

(declare-fun res!203280 () Bool)

(assert (=> b!363973 (=> (not res!203280) (not e!222866))))

(assert (=> b!363973 (= res!203280 (and (bvslt (size!10157 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10157 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203283 () Bool)

(assert (=> start!36416 (=> (not res!203283) (not e!222866))))

(assert (=> start!36416 (= res!203283 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10157 a!4289))))))

(assert (=> start!36416 e!222866))

(assert (=> start!36416 true))

(declare-fun array_inv!7243 (array!20658) Bool)

(assert (=> start!36416 (array_inv!7243 a!4289)))

(assert (= (and start!36416 res!203283) b!363970))

(assert (= (and b!363970 res!203282) b!363971))

(assert (= (and b!363971 res!203284) b!363973))

(assert (= (and b!363973 res!203280) b!363969))

(assert (= (and b!363969 res!203281) b!363972))

(declare-fun m!361507 () Bool)

(assert (=> b!363969 m!361507))

(declare-fun m!361509 () Bool)

(assert (=> b!363969 m!361509))

(declare-fun m!361511 () Bool)

(assert (=> b!363969 m!361511))

(declare-fun m!361513 () Bool)

(assert (=> b!363970 m!361513))

(assert (=> b!363970 m!361513))

(declare-fun m!361515 () Bool)

(assert (=> b!363970 m!361515))

(declare-fun m!361517 () Bool)

(assert (=> b!363971 m!361517))

(declare-fun m!361519 () Bool)

(assert (=> start!36416 m!361519))

(push 1)

