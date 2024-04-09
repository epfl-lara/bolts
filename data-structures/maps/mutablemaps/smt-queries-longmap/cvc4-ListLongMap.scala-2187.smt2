; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36468 () Bool)

(assert start!36468)

(declare-fun res!203664 () Bool)

(declare-fun e!223049 () Bool)

(assert (=> start!36468 (=> (not res!203664) (not e!223049))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20710 0))(
  ( (array!20711 (arr!9831 (Array (_ BitVec 32) (_ BitVec 64))) (size!10183 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20710)

(assert (=> start!36468 (= res!203664 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10183 a!4289))))))

(assert (=> start!36468 e!223049))

(assert (=> start!36468 true))

(declare-fun array_inv!7269 (array!20710) Bool)

(assert (=> start!36468 (array_inv!7269 a!4289)))

(declare-fun b!364350 () Bool)

(declare-fun e!223047 () Bool)

(assert (=> b!364350 (= e!223049 e!223047)))

(declare-fun res!203663 () Bool)

(assert (=> b!364350 (=> (not res!203663) (not e!223047))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168521 () (_ BitVec 32))

(declare-fun lt!168522 () (_ BitVec 32))

(assert (=> b!364350 (= res!203663 (and (= lt!168521 (bvadd #b00000000000000000000000000000001 lt!168522)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168524 () array!20710)

(declare-fun arrayCountValidKeys!0 (array!20710 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364350 (= lt!168521 (arrayCountValidKeys!0 lt!168524 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364350 (= lt!168522 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364350 (= lt!168524 (array!20711 (store (arr!9831 a!4289) i!1472 k!2974) (size!10183 a!4289)))))

(declare-fun b!364351 () Bool)

(declare-fun res!203661 () Bool)

(assert (=> b!364351 (=> (not res!203661) (not e!223049))))

(assert (=> b!364351 (= res!203661 (and (bvslt (size!10183 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10183 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364352 () Bool)

(declare-fun res!203665 () Bool)

(assert (=> b!364352 (=> (not res!203665) (not e!223049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364352 (= res!203665 (not (validKeyInArray!0 (select (arr!9831 a!4289) i!1472))))))

(declare-fun b!364353 () Bool)

(declare-fun res!203662 () Bool)

(assert (=> b!364353 (=> (not res!203662) (not e!223049))))

(assert (=> b!364353 (= res!203662 (validKeyInArray!0 k!2974))))

(declare-fun b!364354 () Bool)

(assert (=> b!364354 (= e!223047 (not true))))

(assert (=> b!364354 (= (bvadd (arrayCountValidKeys!0 lt!168524 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168521) (arrayCountValidKeys!0 lt!168524 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11321 0))(
  ( (Unit!11322) )
))
(declare-fun lt!168523 () Unit!11321)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11321)

(assert (=> b!364354 (= lt!168523 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168524 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364354 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168522) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168520 () Unit!11321)

(assert (=> b!364354 (= lt!168520 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36468 res!203664) b!364352))

(assert (= (and b!364352 res!203665) b!364353))

(assert (= (and b!364353 res!203662) b!364351))

(assert (= (and b!364351 res!203661) b!364350))

(assert (= (and b!364350 res!203663) b!364354))

(declare-fun m!361931 () Bool)

(assert (=> start!36468 m!361931))

(declare-fun m!361933 () Bool)

(assert (=> b!364350 m!361933))

(declare-fun m!361935 () Bool)

(assert (=> b!364350 m!361935))

(declare-fun m!361937 () Bool)

(assert (=> b!364350 m!361937))

(declare-fun m!361939 () Bool)

(assert (=> b!364352 m!361939))

(assert (=> b!364352 m!361939))

(declare-fun m!361941 () Bool)

(assert (=> b!364352 m!361941))

(declare-fun m!361943 () Bool)

(assert (=> b!364353 m!361943))

(declare-fun m!361945 () Bool)

(assert (=> b!364354 m!361945))

(declare-fun m!361947 () Bool)

(assert (=> b!364354 m!361947))

(declare-fun m!361949 () Bool)

(assert (=> b!364354 m!361949))

(declare-fun m!361951 () Bool)

(assert (=> b!364354 m!361951))

(declare-fun m!361953 () Bool)

(assert (=> b!364354 m!361953))

(declare-fun m!361955 () Bool)

(assert (=> b!364354 m!361955))

(push 1)

(assert (not b!364354))

(assert (not b!364353))

(assert (not b!364350))

(assert (not start!36468))

(assert (not b!364352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

