; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36348 () Bool)

(assert start!36348)

(declare-fun res!202729 () Bool)

(declare-fun e!222527 () Bool)

(assert (=> start!36348 (=> (not res!202729) (not e!222527))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20590 0))(
  ( (array!20591 (arr!9771 (Array (_ BitVec 32) (_ BitVec 64))) (size!10123 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20590)

(assert (=> start!36348 (= res!202729 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10123 a!4289))))))

(assert (=> start!36348 e!222527))

(assert (=> start!36348 true))

(declare-fun array_inv!7209 (array!20590) Bool)

(assert (=> start!36348 (array_inv!7209 a!4289)))

(declare-fun b!363417 () Bool)

(declare-fun res!202728 () Bool)

(assert (=> b!363417 (=> (not res!202728) (not e!222527))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363417 (= res!202728 (and (bvslt (size!10123 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10123 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363416 () Bool)

(declare-fun res!202726 () Bool)

(assert (=> b!363416 (=> (not res!202726) (not e!222527))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363416 (= res!202726 (validKeyInArray!0 k!2974))))

(declare-fun b!363415 () Bool)

(declare-fun res!202727 () Bool)

(assert (=> b!363415 (=> (not res!202727) (not e!222527))))

(assert (=> b!363415 (= res!202727 (not (validKeyInArray!0 (select (arr!9771 a!4289) i!1472))))))

(declare-fun b!363418 () Bool)

(assert (=> b!363418 (= e!222527 false)))

(declare-fun lt!167741 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20590 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363418 (= lt!167741 (arrayCountValidKeys!0 (array!20591 (store (arr!9771 a!4289) i!1472 k!2974) (size!10123 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167740 () (_ BitVec 32))

(assert (=> b!363418 (= lt!167740 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (= (and start!36348 res!202729) b!363415))

(assert (= (and b!363415 res!202727) b!363416))

(assert (= (and b!363416 res!202726) b!363417))

(assert (= (and b!363417 res!202728) b!363418))

(declare-fun m!360581 () Bool)

(assert (=> start!36348 m!360581))

(declare-fun m!360583 () Bool)

(assert (=> b!363416 m!360583))

(declare-fun m!360585 () Bool)

(assert (=> b!363415 m!360585))

(assert (=> b!363415 m!360585))

(declare-fun m!360587 () Bool)

(assert (=> b!363415 m!360587))

(declare-fun m!360589 () Bool)

(assert (=> b!363418 m!360589))

(declare-fun m!360591 () Bool)

(assert (=> b!363418 m!360591))

(declare-fun m!360593 () Bool)

(assert (=> b!363418 m!360593))

(push 1)

(assert (not b!363418))

(assert (not b!363416))

(assert (not start!36348))

(assert (not b!363415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

