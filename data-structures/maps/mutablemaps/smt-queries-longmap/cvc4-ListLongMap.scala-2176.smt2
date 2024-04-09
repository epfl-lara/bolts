; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36402 () Bool)

(assert start!36402)

(declare-fun b!363845 () Bool)

(declare-fun res!203156 () Bool)

(declare-fun e!222786 () Bool)

(assert (=> b!363845 (=> (not res!203156) (not e!222786))))

(declare-datatypes ((array!20644 0))(
  ( (array!20645 (arr!9798 (Array (_ BitVec 32) (_ BitVec 64))) (size!10150 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20644)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363845 (= res!203156 (not (validKeyInArray!0 (select (arr!9798 a!4289) i!1472))))))

(declare-fun res!203158 () Bool)

(assert (=> start!36402 (=> (not res!203158) (not e!222786))))

(assert (=> start!36402 (= res!203158 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10150 a!4289))))))

(assert (=> start!36402 e!222786))

(assert (=> start!36402 true))

(declare-fun array_inv!7236 (array!20644) Bool)

(assert (=> start!36402 (array_inv!7236 a!4289)))

(declare-fun b!363846 () Bool)

(declare-fun res!203161 () Bool)

(assert (=> b!363846 (=> (not res!203161) (not e!222786))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363846 (= res!203161 (validKeyInArray!0 k!2974))))

(declare-fun b!363847 () Bool)

(declare-fun e!222787 () Bool)

(assert (=> b!363847 (= e!222786 e!222787)))

(declare-fun res!203159 () Bool)

(assert (=> b!363847 (=> (not res!203159) (not e!222787))))

(declare-fun lt!168209 () (_ BitVec 32))

(declare-fun lt!168202 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363847 (= res!203159 (and (= lt!168209 (bvadd #b00000000000000000000000000000001 lt!168202)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168201 () array!20644)

(declare-fun arrayCountValidKeys!0 (array!20644 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363847 (= lt!168209 (arrayCountValidKeys!0 lt!168201 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363847 (= lt!168202 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363847 (= lt!168201 (array!20645 (store (arr!9798 a!4289) i!1472 k!2974) (size!10150 a!4289)))))

(declare-fun b!363848 () Bool)

(declare-fun res!203160 () Bool)

(assert (=> b!363848 (=> (not res!203160) (not e!222786))))

(assert (=> b!363848 (= res!203160 (and (bvslt (size!10150 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10150 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363849 () Bool)

(declare-fun e!222788 () Bool)

(assert (=> b!363849 (= e!222787 (not e!222788))))

(declare-fun res!203157 () Bool)

(assert (=> b!363849 (=> res!203157 e!222788)))

(declare-fun lt!168205 () (_ BitVec 32))

(declare-fun lt!168208 () (_ BitVec 32))

(assert (=> b!363849 (= res!203157 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10150 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168205 (bvadd #b00000000000000000000000000000001 lt!168208)))))))

(declare-fun lt!168204 () (_ BitVec 32))

(assert (=> b!363849 (= (bvadd lt!168204 lt!168209) lt!168205)))

(assert (=> b!363849 (= lt!168205 (arrayCountValidKeys!0 lt!168201 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363849 (= lt!168204 (arrayCountValidKeys!0 lt!168201 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11291 0))(
  ( (Unit!11292) )
))
(declare-fun lt!168200 () Unit!11291)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11291)

(assert (=> b!363849 (= lt!168200 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168201 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168206 () (_ BitVec 32))

(assert (=> b!363849 (= (bvadd lt!168206 lt!168202) lt!168208)))

(assert (=> b!363849 (= lt!168208 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363849 (= lt!168206 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168207 () Unit!11291)

(assert (=> b!363849 (= lt!168207 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363850 () Bool)

(assert (=> b!363850 (= e!222788 true)))

(assert (=> b!363850 (= (arrayCountValidKeys!0 lt!168201 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun lt!168203 () Unit!11291)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20644 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11291)

(assert (=> b!363850 (= lt!168203 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(assert (= (and start!36402 res!203158) b!363845))

(assert (= (and b!363845 res!203156) b!363846))

(assert (= (and b!363846 res!203161) b!363848))

(assert (= (and b!363848 res!203160) b!363847))

(assert (= (and b!363847 res!203159) b!363849))

(assert (= (and b!363849 (not res!203157)) b!363850))

(declare-fun m!361283 () Bool)

(assert (=> b!363849 m!361283))

(declare-fun m!361285 () Bool)

(assert (=> b!363849 m!361285))

(declare-fun m!361287 () Bool)

(assert (=> b!363849 m!361287))

(declare-fun m!361289 () Bool)

(assert (=> b!363849 m!361289))

(declare-fun m!361291 () Bool)

(assert (=> b!363849 m!361291))

(declare-fun m!361293 () Bool)

(assert (=> b!363849 m!361293))

(declare-fun m!361295 () Bool)

(assert (=> b!363847 m!361295))

(declare-fun m!361297 () Bool)

(assert (=> b!363847 m!361297))

(declare-fun m!361299 () Bool)

(assert (=> b!363847 m!361299))

(declare-fun m!361301 () Bool)

(assert (=> start!36402 m!361301))

(declare-fun m!361303 () Bool)

(assert (=> b!363850 m!361303))

(declare-fun m!361305 () Bool)

(assert (=> b!363850 m!361305))

(declare-fun m!361307 () Bool)

(assert (=> b!363850 m!361307))

(declare-fun m!361309 () Bool)

(assert (=> b!363846 m!361309))

(declare-fun m!361311 () Bool)

(assert (=> b!363845 m!361311))

(assert (=> b!363845 m!361311))

(declare-fun m!361313 () Bool)

(assert (=> b!363845 m!361313))

(push 1)

(assert (not b!363850))

(assert (not b!363845))

(assert (not b!363847))

(assert (not start!36402))

(assert (not b!363846))

(assert (not b!363849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

