; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36450 () Bool)

(assert start!36450)

(declare-fun res!203509 () Bool)

(declare-fun e!222967 () Bool)

(assert (=> start!36450 (=> (not res!203509) (not e!222967))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20692 0))(
  ( (array!20693 (arr!9822 (Array (_ BitVec 32) (_ BitVec 64))) (size!10174 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20692)

(assert (=> start!36450 (= res!203509 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10174 a!4289))))))

(assert (=> start!36450 e!222967))

(assert (=> start!36450 true))

(declare-fun array_inv!7260 (array!20692) Bool)

(assert (=> start!36450 (array_inv!7260 a!4289)))

(declare-fun b!364197 () Bool)

(declare-fun res!203512 () Bool)

(assert (=> b!364197 (=> (not res!203512) (not e!222967))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364197 (= res!203512 (and (bvslt (size!10174 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10174 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364198 () Bool)

(assert (=> b!364198 (= e!222967 (and (bvsgt from!3650 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvslt from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364199 () Bool)

(declare-fun res!203508 () Bool)

(assert (=> b!364199 (=> (not res!203508) (not e!222967))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20692 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364199 (= res!203508 (= (arrayCountValidKeys!0 (array!20693 (store (arr!9822 a!4289) i!1472 k!2974) (size!10174 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364200 () Bool)

(declare-fun res!203511 () Bool)

(assert (=> b!364200 (=> (not res!203511) (not e!222967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364200 (= res!203511 (validKeyInArray!0 k!2974))))

(declare-fun b!364201 () Bool)

(declare-fun res!203510 () Bool)

(assert (=> b!364201 (=> (not res!203510) (not e!222967))))

(assert (=> b!364201 (= res!203510 (not (validKeyInArray!0 (select (arr!9822 a!4289) i!1472))))))

(assert (= (and start!36450 res!203509) b!364201))

(assert (= (and b!364201 res!203510) b!364200))

(assert (= (and b!364200 res!203511) b!364197))

(assert (= (and b!364197 res!203512) b!364199))

(assert (= (and b!364199 res!203508) b!364198))

(declare-fun m!361745 () Bool)

(assert (=> start!36450 m!361745))

(declare-fun m!361747 () Bool)

(assert (=> b!364199 m!361747))

(declare-fun m!361749 () Bool)

(assert (=> b!364199 m!361749))

(declare-fun m!361751 () Bool)

(assert (=> b!364199 m!361751))

(declare-fun m!361753 () Bool)

(assert (=> b!364200 m!361753))

(declare-fun m!361755 () Bool)

(assert (=> b!364201 m!361755))

(assert (=> b!364201 m!361755))

(declare-fun m!361757 () Bool)

(assert (=> b!364201 m!361757))

(push 1)

(assert (not b!364199))

(assert (not start!36450))

(assert (not b!364201))

(assert (not b!364200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

