; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36354 () Bool)

(assert start!36354)

(declare-fun b!363467 () Bool)

(declare-fun res!202781 () Bool)

(declare-fun e!222553 () Bool)

(assert (=> b!363467 (=> (not res!202781) (not e!222553))))

(declare-datatypes ((array!20596 0))(
  ( (array!20597 (arr!9774 (Array (_ BitVec 32) (_ BitVec 64))) (size!10126 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20596)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363467 (= res!202781 (not (validKeyInArray!0 (select (arr!9774 a!4289) i!1472))))))

(declare-fun b!363468 () Bool)

(declare-fun res!202782 () Bool)

(assert (=> b!363468 (=> (not res!202782) (not e!222553))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363468 (= res!202782 (and (bvslt (size!10126 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10126 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363469 () Bool)

(declare-fun res!202783 () Bool)

(assert (=> b!363469 (=> (not res!202783) (not e!222553))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363469 (= res!202783 (validKeyInArray!0 k!2974))))

(declare-fun res!202778 () Bool)

(assert (=> start!36354 (=> (not res!202778) (not e!222553))))

(assert (=> start!36354 (= res!202778 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10126 a!4289))))))

(assert (=> start!36354 e!222553))

(assert (=> start!36354 true))

(declare-fun array_inv!7212 (array!20596) Bool)

(assert (=> start!36354 (array_inv!7212 a!4289)))

(declare-fun b!363470 () Bool)

(declare-fun res!202779 () Bool)

(declare-fun e!222552 () Bool)

(assert (=> b!363470 (=> (not res!202779) (not e!222552))))

(assert (=> b!363470 (= res!202779 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun b!363471 () Bool)

(assert (=> b!363471 (= e!222553 e!222552)))

(declare-fun res!202780 () Bool)

(assert (=> b!363471 (=> (not res!202780) (not e!222552))))

(declare-fun lt!167759 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20596 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363471 (= res!202780 (= (arrayCountValidKeys!0 (array!20597 (store (arr!9774 a!4289) i!1472 k!2974) (size!10126 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!167759)))))

(assert (=> b!363471 (= lt!167759 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!363472 () Bool)

(assert (=> b!363472 (= e!222552 (not true))))

(assert (=> b!363472 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167759) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11243 0))(
  ( (Unit!11244) )
))
(declare-fun lt!167758 () Unit!11243)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20596 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11243)

(assert (=> b!363472 (= lt!167758 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36354 res!202778) b!363467))

(assert (= (and b!363467 res!202781) b!363469))

(assert (= (and b!363469 res!202783) b!363468))

(assert (= (and b!363468 res!202782) b!363471))

(assert (= (and b!363471 res!202780) b!363470))

(assert (= (and b!363470 res!202779) b!363472))

(declare-fun m!360635 () Bool)

(assert (=> b!363469 m!360635))

(declare-fun m!360637 () Bool)

(assert (=> b!363472 m!360637))

(declare-fun m!360639 () Bool)

(assert (=> b!363472 m!360639))

(declare-fun m!360641 () Bool)

(assert (=> b!363472 m!360641))

(declare-fun m!360643 () Bool)

(assert (=> b!363471 m!360643))

(declare-fun m!360645 () Bool)

(assert (=> b!363471 m!360645))

(declare-fun m!360647 () Bool)

(assert (=> b!363471 m!360647))

(declare-fun m!360649 () Bool)

(assert (=> start!36354 m!360649))

(declare-fun m!360651 () Bool)

(assert (=> b!363467 m!360651))

(assert (=> b!363467 m!360651))

(declare-fun m!360653 () Bool)

(assert (=> b!363467 m!360653))

(push 1)

(assert (not b!363469))

(assert (not b!363471))

(assert (not b!363467))

(assert (not start!36354))

(assert (not b!363472))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

