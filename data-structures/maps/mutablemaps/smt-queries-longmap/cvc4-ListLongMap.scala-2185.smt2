; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36456 () Bool)

(assert start!36456)

(declare-fun b!364250 () Bool)

(declare-fun res!203561 () Bool)

(declare-fun e!222994 () Bool)

(assert (=> b!364250 (=> (not res!203561) (not e!222994))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20698 0))(
  ( (array!20699 (arr!9825 (Array (_ BitVec 32) (_ BitVec 64))) (size!10177 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20698)

(assert (=> b!364250 (= res!203561 (and (bvslt (size!10177 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10177 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364251 () Bool)

(declare-fun res!203566 () Bool)

(declare-fun e!222993 () Bool)

(assert (=> b!364251 (=> (not res!203566) (not e!222993))))

(assert (=> b!364251 (= res!203566 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun res!203564 () Bool)

(assert (=> start!36456 (=> (not res!203564) (not e!222994))))

(assert (=> start!36456 (= res!203564 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10177 a!4289))))))

(assert (=> start!36456 e!222994))

(assert (=> start!36456 true))

(declare-fun array_inv!7263 (array!20698) Bool)

(assert (=> start!36456 (array_inv!7263 a!4289)))

(declare-fun b!364252 () Bool)

(declare-fun res!203562 () Bool)

(assert (=> b!364252 (=> (not res!203562) (not e!222994))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364252 (= res!203562 (validKeyInArray!0 k!2974))))

(declare-fun b!364253 () Bool)

(declare-fun res!203565 () Bool)

(assert (=> b!364253 (=> (not res!203565) (not e!222994))))

(assert (=> b!364253 (= res!203565 (not (validKeyInArray!0 (select (arr!9825 a!4289) i!1472))))))

(declare-fun b!364254 () Bool)

(assert (=> b!364254 (= e!222994 e!222993)))

(declare-fun res!203563 () Bool)

(assert (=> b!364254 (=> (not res!203563) (not e!222993))))

(declare-fun lt!168461 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20698 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364254 (= res!203563 (= (arrayCountValidKeys!0 (array!20699 (store (arr!9825 a!4289) i!1472 k!2974) (size!10177 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168461)))))

(assert (=> b!364254 (= lt!168461 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364255 () Bool)

(assert (=> b!364255 (= e!222993 (not true))))

(assert (=> b!364255 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168461) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11309 0))(
  ( (Unit!11310) )
))
(declare-fun lt!168460 () Unit!11309)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20698 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11309)

(assert (=> b!364255 (= lt!168460 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36456 res!203564) b!364253))

(assert (= (and b!364253 res!203565) b!364252))

(assert (= (and b!364252 res!203562) b!364250))

(assert (= (and b!364250 res!203561) b!364254))

(assert (= (and b!364254 res!203563) b!364251))

(assert (= (and b!364251 res!203566) b!364255))

(declare-fun m!361799 () Bool)

(assert (=> b!364253 m!361799))

(assert (=> b!364253 m!361799))

(declare-fun m!361801 () Bool)

(assert (=> b!364253 m!361801))

(declare-fun m!361803 () Bool)

(assert (=> b!364254 m!361803))

(declare-fun m!361805 () Bool)

(assert (=> b!364254 m!361805))

(declare-fun m!361807 () Bool)

(assert (=> b!364254 m!361807))

(declare-fun m!361809 () Bool)

(assert (=> b!364252 m!361809))

(declare-fun m!361811 () Bool)

(assert (=> b!364255 m!361811))

(declare-fun m!361813 () Bool)

(assert (=> b!364255 m!361813))

(declare-fun m!361815 () Bool)

(assert (=> b!364255 m!361815))

(declare-fun m!361817 () Bool)

(assert (=> start!36456 m!361817))

(push 1)

(assert (not b!364254))

(assert (not start!36456))

(assert (not b!364252))

(assert (not b!364253))

(assert (not b!364255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

