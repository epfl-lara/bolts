; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36434 () Bool)

(assert start!36434)

(declare-fun b!364094 () Bool)

(declare-fun res!203406 () Bool)

(declare-fun e!222920 () Bool)

(assert (=> b!364094 (=> (not res!203406) (not e!222920))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364094 (= res!203406 (validKeyInArray!0 k!2974))))

(declare-fun b!364096 () Bool)

(assert (=> b!364096 (= e!222920 false)))

(declare-fun lt!168413 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20676 0))(
  ( (array!20677 (arr!9814 (Array (_ BitVec 32) (_ BitVec 64))) (size!10166 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20676)

(declare-fun arrayCountValidKeys!0 (array!20676 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364096 (= lt!168413 (arrayCountValidKeys!0 (array!20677 (store (arr!9814 a!4289) i!1472 k!2974) (size!10166 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168412 () (_ BitVec 32))

(assert (=> b!364096 (= lt!168412 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364095 () Bool)

(declare-fun res!203405 () Bool)

(assert (=> b!364095 (=> (not res!203405) (not e!222920))))

(assert (=> b!364095 (= res!203405 (and (bvslt (size!10166 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10166 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364093 () Bool)

(declare-fun res!203404 () Bool)

(assert (=> b!364093 (=> (not res!203404) (not e!222920))))

(assert (=> b!364093 (= res!203404 (not (validKeyInArray!0 (select (arr!9814 a!4289) i!1472))))))

(declare-fun res!203407 () Bool)

(assert (=> start!36434 (=> (not res!203407) (not e!222920))))

(assert (=> start!36434 (= res!203407 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10166 a!4289))))))

(assert (=> start!36434 e!222920))

(assert (=> start!36434 true))

(declare-fun array_inv!7252 (array!20676) Bool)

(assert (=> start!36434 (array_inv!7252 a!4289)))

(assert (= (and start!36434 res!203407) b!364093))

(assert (= (and b!364093 res!203404) b!364094))

(assert (= (and b!364094 res!203406) b!364095))

(assert (= (and b!364095 res!203405) b!364096))

(declare-fun m!361633 () Bool)

(assert (=> b!364094 m!361633))

(declare-fun m!361635 () Bool)

(assert (=> b!364096 m!361635))

(declare-fun m!361637 () Bool)

(assert (=> b!364096 m!361637))

(declare-fun m!361639 () Bool)

(assert (=> b!364096 m!361639))

(declare-fun m!361641 () Bool)

(assert (=> b!364093 m!361641))

(assert (=> b!364093 m!361641))

(declare-fun m!361643 () Bool)

(assert (=> b!364093 m!361643))

(declare-fun m!361645 () Bool)

(assert (=> start!36434 m!361645))

(push 1)

(assert (not start!36434))

(assert (not b!364096))

(assert (not b!364094))

(assert (not b!364093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

