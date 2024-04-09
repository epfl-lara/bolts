; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36440 () Bool)

(assert start!36440)

(declare-fun b!364130 () Bool)

(declare-fun res!203442 () Bool)

(declare-fun e!222938 () Bool)

(assert (=> b!364130 (=> (not res!203442) (not e!222938))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364130 (= res!203442 (validKeyInArray!0 k!2974))))

(declare-fun res!203440 () Bool)

(assert (=> start!36440 (=> (not res!203440) (not e!222938))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20682 0))(
  ( (array!20683 (arr!9817 (Array (_ BitVec 32) (_ BitVec 64))) (size!10169 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20682)

(assert (=> start!36440 (= res!203440 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10169 a!4289))))))

(assert (=> start!36440 e!222938))

(assert (=> start!36440 true))

(declare-fun array_inv!7255 (array!20682) Bool)

(assert (=> start!36440 (array_inv!7255 a!4289)))

(declare-fun b!364132 () Bool)

(assert (=> b!364132 (= e!222938 false)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168431 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20682 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364132 (= lt!168431 (arrayCountValidKeys!0 (array!20683 (store (arr!9817 a!4289) i!1472 k!2974) (size!10169 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168430 () (_ BitVec 32))

(assert (=> b!364132 (= lt!168430 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364129 () Bool)

(declare-fun res!203441 () Bool)

(assert (=> b!364129 (=> (not res!203441) (not e!222938))))

(assert (=> b!364129 (= res!203441 (not (validKeyInArray!0 (select (arr!9817 a!4289) i!1472))))))

(declare-fun b!364131 () Bool)

(declare-fun res!203443 () Bool)

(assert (=> b!364131 (=> (not res!203443) (not e!222938))))

(assert (=> b!364131 (= res!203443 (and (bvslt (size!10169 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10169 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36440 res!203440) b!364129))

(assert (= (and b!364129 res!203441) b!364130))

(assert (= (and b!364130 res!203442) b!364131))

(assert (= (and b!364131 res!203443) b!364132))

(declare-fun m!361675 () Bool)

(assert (=> b!364130 m!361675))

(declare-fun m!361677 () Bool)

(assert (=> start!36440 m!361677))

(declare-fun m!361679 () Bool)

(assert (=> b!364132 m!361679))

(declare-fun m!361681 () Bool)

(assert (=> b!364132 m!361681))

(declare-fun m!361683 () Bool)

(assert (=> b!364132 m!361683))

(declare-fun m!361685 () Bool)

(assert (=> b!364129 m!361685))

(assert (=> b!364129 m!361685))

(declare-fun m!361687 () Bool)

(assert (=> b!364129 m!361687))

(push 1)

(assert (not b!364132))

(assert (not b!364130))

(assert (not b!364129))

(assert (not start!36440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

