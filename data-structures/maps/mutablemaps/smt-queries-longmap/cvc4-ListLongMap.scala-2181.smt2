; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36432 () Bool)

(assert start!36432)

(declare-fun b!364080 () Bool)

(declare-fun res!203394 () Bool)

(declare-fun e!222913 () Bool)

(assert (=> b!364080 (=> (not res!203394) (not e!222913))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364080 (= res!203394 (validKeyInArray!0 k!2974))))

(declare-fun b!364081 () Bool)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(assert (=> b!364081 (= e!222913 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun b!364082 () Bool)

(declare-fun res!203391 () Bool)

(assert (=> b!364082 (=> (not res!203391) (not e!222913))))

(declare-datatypes ((array!20674 0))(
  ( (array!20675 (arr!9813 (Array (_ BitVec 32) (_ BitVec 64))) (size!10165 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20674)

(assert (=> b!364082 (= res!203391 (not (validKeyInArray!0 (select (arr!9813 a!4289) i!1472))))))

(declare-fun b!364084 () Bool)

(declare-fun res!203392 () Bool)

(assert (=> b!364084 (=> (not res!203392) (not e!222913))))

(assert (=> b!364084 (= res!203392 (and (bvslt (size!10165 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10165 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364083 () Bool)

(declare-fun res!203393 () Bool)

(assert (=> b!364083 (=> (not res!203393) (not e!222913))))

(declare-fun arrayCountValidKeys!0 (array!20674 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364083 (= res!203393 (= (arrayCountValidKeys!0 (array!20675 (store (arr!9813 a!4289) i!1472 k!2974) (size!10165 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun res!203395 () Bool)

(assert (=> start!36432 (=> (not res!203395) (not e!222913))))

(assert (=> start!36432 (= res!203395 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10165 a!4289))))))

(assert (=> start!36432 e!222913))

(assert (=> start!36432 true))

(declare-fun array_inv!7251 (array!20674) Bool)

(assert (=> start!36432 (array_inv!7251 a!4289)))

(assert (= (and start!36432 res!203395) b!364082))

(assert (= (and b!364082 res!203391) b!364080))

(assert (= (and b!364080 res!203394) b!364084))

(assert (= (and b!364084 res!203392) b!364083))

(assert (= (and b!364083 res!203393) b!364081))

(declare-fun m!361619 () Bool)

(assert (=> b!364080 m!361619))

(declare-fun m!361621 () Bool)

(assert (=> b!364082 m!361621))

(assert (=> b!364082 m!361621))

(declare-fun m!361623 () Bool)

(assert (=> b!364082 m!361623))

(declare-fun m!361625 () Bool)

(assert (=> b!364083 m!361625))

(declare-fun m!361627 () Bool)

(assert (=> b!364083 m!361627))

(declare-fun m!361629 () Bool)

(assert (=> b!364083 m!361629))

(declare-fun m!361631 () Bool)

(assert (=> start!36432 m!361631))

(push 1)

(assert (not b!364082))

(assert (not b!364083))

(assert (not start!36432))

(assert (not b!364080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

