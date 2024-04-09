; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36344 () Bool)

(assert start!36344)

(declare-fun b!363391 () Bool)

(declare-fun res!202702 () Bool)

(declare-fun e!222515 () Bool)

(assert (=> b!363391 (=> (not res!202702) (not e!222515))))

(declare-datatypes ((array!20586 0))(
  ( (array!20587 (arr!9769 (Array (_ BitVec 32) (_ BitVec 64))) (size!10121 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20586)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363391 (= res!202702 (not (validKeyInArray!0 (select (arr!9769 a!4289) i!1472))))))

(declare-fun res!202704 () Bool)

(assert (=> start!36344 (=> (not res!202704) (not e!222515))))

(assert (=> start!36344 (= res!202704 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10121 a!4289))))))

(assert (=> start!36344 e!222515))

(assert (=> start!36344 true))

(declare-fun array_inv!7207 (array!20586) Bool)

(assert (=> start!36344 (array_inv!7207 a!4289)))

(declare-fun b!363393 () Bool)

(declare-fun res!202705 () Bool)

(assert (=> b!363393 (=> (not res!202705) (not e!222515))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363393 (= res!202705 (and (bvslt (size!10121 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10121 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363392 () Bool)

(declare-fun res!202703 () Bool)

(assert (=> b!363392 (=> (not res!202703) (not e!222515))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363392 (= res!202703 (validKeyInArray!0 k!2974))))

(declare-fun b!363394 () Bool)

(assert (=> b!363394 (= e!222515 false)))

(declare-fun lt!167729 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20586 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363394 (= lt!167729 (arrayCountValidKeys!0 (array!20587 (store (arr!9769 a!4289) i!1472 k!2974) (size!10121 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167728 () (_ BitVec 32))

(assert (=> b!363394 (= lt!167728 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36344 res!202704) b!363391))

(assert (= (and b!363391 res!202702) b!363392))

(assert (= (and b!363392 res!202703) b!363393))

(assert (= (and b!363393 res!202705) b!363394))

(declare-fun m!360553 () Bool)

(assert (=> b!363391 m!360553))

(assert (=> b!363391 m!360553))

(declare-fun m!360555 () Bool)

(assert (=> b!363391 m!360555))

(declare-fun m!360557 () Bool)

(assert (=> start!36344 m!360557))

(declare-fun m!360559 () Bool)

(assert (=> b!363392 m!360559))

(declare-fun m!360561 () Bool)

(assert (=> b!363394 m!360561))

(declare-fun m!360563 () Bool)

(assert (=> b!363394 m!360563))

(declare-fun m!360565 () Bool)

(assert (=> b!363394 m!360565))

(push 1)

(assert (not b!363391))

(assert (not start!36344))

(assert (not b!363394))

(assert (not b!363392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

