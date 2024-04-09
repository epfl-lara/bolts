; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36428 () Bool)

(assert start!36428)

(declare-fun b!364050 () Bool)

(declare-fun res!203363 () Bool)

(declare-fun e!222901 () Bool)

(assert (=> b!364050 (=> (not res!203363) (not e!222901))))

(declare-datatypes ((array!20670 0))(
  ( (array!20671 (arr!9811 (Array (_ BitVec 32) (_ BitVec 64))) (size!10163 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20670)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364050 (= res!203363 (not (validKeyInArray!0 (select (arr!9811 a!4289) i!1472))))))

(declare-fun b!364051 () Bool)

(declare-fun res!203361 () Bool)

(assert (=> b!364051 (=> (not res!203361) (not e!222901))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20670 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364051 (= res!203361 (= (arrayCountValidKeys!0 (array!20671 (store (arr!9811 a!4289) i!1472 k!2974) (size!10163 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun res!203364 () Bool)

(assert (=> start!36428 (=> (not res!203364) (not e!222901))))

(assert (=> start!36428 (= res!203364 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10163 a!4289))))))

(assert (=> start!36428 e!222901))

(assert (=> start!36428 true))

(declare-fun array_inv!7249 (array!20670) Bool)

(assert (=> start!36428 (array_inv!7249 a!4289)))

(declare-fun b!364052 () Bool)

(declare-fun res!203365 () Bool)

(assert (=> b!364052 (=> (not res!203365) (not e!222901))))

(assert (=> b!364052 (= res!203365 (and (bvslt (size!10163 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10163 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364053 () Bool)

(declare-fun res!203362 () Bool)

(assert (=> b!364053 (=> (not res!203362) (not e!222901))))

(assert (=> b!364053 (= res!203362 (validKeyInArray!0 k!2974))))

(declare-fun b!364054 () Bool)

(assert (=> b!364054 (= e!222901 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(assert (= (and start!36428 res!203364) b!364050))

(assert (= (and b!364050 res!203363) b!364053))

(assert (= (and b!364053 res!203362) b!364052))

(assert (= (and b!364052 res!203365) b!364051))

(assert (= (and b!364051 res!203361) b!364054))

(declare-fun m!361591 () Bool)

(assert (=> b!364050 m!361591))

(assert (=> b!364050 m!361591))

(declare-fun m!361593 () Bool)

(assert (=> b!364050 m!361593))

(declare-fun m!361595 () Bool)

(assert (=> b!364051 m!361595))

(declare-fun m!361597 () Bool)

(assert (=> b!364051 m!361597))

(declare-fun m!361599 () Bool)

(assert (=> b!364051 m!361599))

(declare-fun m!361601 () Bool)

(assert (=> start!36428 m!361601))

(declare-fun m!361603 () Bool)

(assert (=> b!364053 m!361603))

(push 1)

(assert (not b!364053))

(assert (not start!36428))

(assert (not b!364050))

(assert (not b!364051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

