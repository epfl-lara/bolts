; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36420 () Bool)

(assert start!36420)

(declare-fun b!363999 () Bool)

(declare-fun res!203310 () Bool)

(declare-fun e!222877 () Bool)

(assert (=> b!363999 (=> (not res!203310) (not e!222877))))

(declare-datatypes ((array!20662 0))(
  ( (array!20663 (arr!9807 (Array (_ BitVec 32) (_ BitVec 64))) (size!10159 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20662)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363999 (= res!203310 (not (validKeyInArray!0 (select (arr!9807 a!4289) i!1472))))))

(declare-fun b!364000 () Bool)

(declare-fun res!203311 () Bool)

(assert (=> b!364000 (=> (not res!203311) (not e!222877))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364000 (= res!203311 (and (bvslt (size!10159 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10159 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364001 () Bool)

(declare-fun res!203313 () Bool)

(assert (=> b!364001 (=> (not res!203313) (not e!222877))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364001 (= res!203313 (validKeyInArray!0 k!2974))))

(declare-fun res!203314 () Bool)

(assert (=> start!36420 (=> (not res!203314) (not e!222877))))

(assert (=> start!36420 (= res!203314 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10159 a!4289))))))

(assert (=> start!36420 e!222877))

(assert (=> start!36420 true))

(declare-fun array_inv!7245 (array!20662) Bool)

(assert (=> start!36420 (array_inv!7245 a!4289)))

(declare-fun b!364002 () Bool)

(assert (=> b!364002 (= e!222877 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun b!364003 () Bool)

(declare-fun res!203312 () Bool)

(assert (=> b!364003 (=> (not res!203312) (not e!222877))))

(declare-fun arrayCountValidKeys!0 (array!20662 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364003 (= res!203312 (= (arrayCountValidKeys!0 (array!20663 (store (arr!9807 a!4289) i!1472 k!2974) (size!10159 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(assert (= (and start!36420 res!203314) b!363999))

(assert (= (and b!363999 res!203310) b!364001))

(assert (= (and b!364001 res!203313) b!364000))

(assert (= (and b!364000 res!203311) b!364003))

(assert (= (and b!364003 res!203312) b!364002))

(declare-fun m!361535 () Bool)

(assert (=> b!363999 m!361535))

(assert (=> b!363999 m!361535))

(declare-fun m!361537 () Bool)

(assert (=> b!363999 m!361537))

(declare-fun m!361539 () Bool)

(assert (=> b!364001 m!361539))

(declare-fun m!361541 () Bool)

(assert (=> start!36420 m!361541))

(declare-fun m!361543 () Bool)

(assert (=> b!364003 m!361543))

(declare-fun m!361545 () Bool)

(assert (=> b!364003 m!361545))

(declare-fun m!361547 () Bool)

(assert (=> b!364003 m!361547))

(push 1)

(assert (not b!364001))

(assert (not b!364003))

(assert (not b!363999))

(assert (not start!36420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

