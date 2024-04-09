; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36336 () Bool)

(assert start!36336)

(declare-fun res!202665 () Bool)

(declare-fun e!222491 () Bool)

(assert (=> start!36336 (=> (not res!202665) (not e!222491))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20578 0))(
  ( (array!20579 (arr!9765 (Array (_ BitVec 32) (_ BitVec 64))) (size!10117 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20578)

(assert (=> start!36336 (= res!202665 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10117 a!4289))))))

(assert (=> start!36336 e!222491))

(assert (=> start!36336 true))

(declare-fun array_inv!7203 (array!20578) Bool)

(assert (=> start!36336 (array_inv!7203 a!4289)))

(declare-fun b!363353 () Bool)

(declare-fun res!202666 () Bool)

(assert (=> b!363353 (=> (not res!202666) (not e!222491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363353 (= res!202666 (not (validKeyInArray!0 (select (arr!9765 a!4289) i!1472))))))

(declare-fun b!363354 () Bool)

(declare-fun res!202664 () Bool)

(assert (=> b!363354 (=> (not res!202664) (not e!222491))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363354 (= res!202664 (validKeyInArray!0 k!2974))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun b!363355 () Bool)

(assert (=> b!363355 (= e!222491 (and (bvslt (size!10117 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10117 a!4289)) (bvsge i!1472 from!3650) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36336 res!202665) b!363353))

(assert (= (and b!363353 res!202666) b!363354))

(assert (= (and b!363354 res!202664) b!363355))

(declare-fun m!360521 () Bool)

(assert (=> start!36336 m!360521))

(declare-fun m!360523 () Bool)

(assert (=> b!363353 m!360523))

(assert (=> b!363353 m!360523))

(declare-fun m!360525 () Bool)

(assert (=> b!363353 m!360525))

(declare-fun m!360527 () Bool)

(assert (=> b!363354 m!360527))

(push 1)

(assert (not b!363354))

(assert (not b!363353))

(assert (not start!36336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

