; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36404 () Bool)

(assert start!36404)

(declare-fun b!363863 () Bool)

(declare-fun res!203178 () Bool)

(declare-fun e!222799 () Bool)

(assert (=> b!363863 (=> (not res!203178) (not e!222799))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20646 0))(
  ( (array!20647 (arr!9799 (Array (_ BitVec 32) (_ BitVec 64))) (size!10151 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20646)

(assert (=> b!363863 (= res!203178 (and (bvslt (size!10151 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10151 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203174 () Bool)

(assert (=> start!36404 (=> (not res!203174) (not e!222799))))

(assert (=> start!36404 (= res!203174 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10151 a!4289))))))

(assert (=> start!36404 e!222799))

(assert (=> start!36404 true))

(declare-fun array_inv!7237 (array!20646) Bool)

(assert (=> start!36404 (array_inv!7237 a!4289)))

(declare-fun b!363864 () Bool)

(declare-fun e!222798 () Bool)

(assert (=> b!363864 (= e!222798 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168231 () array!20646)

(declare-fun arrayCountValidKeys!0 (array!20646 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363864 (= (arrayCountValidKeys!0 lt!168231 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11293 0))(
  ( (Unit!11294) )
))
(declare-fun lt!168237 () Unit!11293)

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20646 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11293)

(assert (=> b!363864 (= lt!168237 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!363865 () Bool)

(declare-fun e!222800 () Bool)

(assert (=> b!363865 (= e!222799 e!222800)))

(declare-fun res!203176 () Bool)

(assert (=> b!363865 (=> (not res!203176) (not e!222800))))

(declare-fun lt!168232 () (_ BitVec 32))

(declare-fun lt!168235 () (_ BitVec 32))

(assert (=> b!363865 (= res!203176 (and (= lt!168232 (bvadd #b00000000000000000000000000000001 lt!168235)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363865 (= lt!168232 (arrayCountValidKeys!0 lt!168231 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363865 (= lt!168235 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363865 (= lt!168231 (array!20647 (store (arr!9799 a!4289) i!1472 k!2974) (size!10151 a!4289)))))

(declare-fun b!363866 () Bool)

(declare-fun res!203177 () Bool)

(assert (=> b!363866 (=> (not res!203177) (not e!222799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363866 (= res!203177 (validKeyInArray!0 k!2974))))

(declare-fun b!363867 () Bool)

(declare-fun res!203175 () Bool)

(assert (=> b!363867 (=> (not res!203175) (not e!222799))))

(assert (=> b!363867 (= res!203175 (not (validKeyInArray!0 (select (arr!9799 a!4289) i!1472))))))

(declare-fun b!363868 () Bool)

(assert (=> b!363868 (= e!222800 (not e!222798))))

(declare-fun res!203179 () Bool)

(assert (=> b!363868 (=> res!203179 e!222798)))

(declare-fun lt!168230 () (_ BitVec 32))

(declare-fun lt!168238 () (_ BitVec 32))

(assert (=> b!363868 (= res!203179 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10151 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168230 (bvadd #b00000000000000000000000000000001 lt!168238)))))))

(declare-fun lt!168233 () (_ BitVec 32))

(assert (=> b!363868 (= (bvadd lt!168233 lt!168232) lt!168230)))

(assert (=> b!363868 (= lt!168230 (arrayCountValidKeys!0 lt!168231 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363868 (= lt!168233 (arrayCountValidKeys!0 lt!168231 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168239 () Unit!11293)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11293)

(assert (=> b!363868 (= lt!168239 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168231 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168234 () (_ BitVec 32))

(assert (=> b!363868 (= (bvadd lt!168234 lt!168235) lt!168238)))

(assert (=> b!363868 (= lt!168238 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363868 (= lt!168234 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168236 () Unit!11293)

(assert (=> b!363868 (= lt!168236 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36404 res!203174) b!363867))

(assert (= (and b!363867 res!203175) b!363866))

(assert (= (and b!363866 res!203177) b!363863))

(assert (= (and b!363863 res!203178) b!363865))

(assert (= (and b!363865 res!203176) b!363868))

(assert (= (and b!363868 (not res!203179)) b!363864))

(declare-fun m!361315 () Bool)

(assert (=> start!36404 m!361315))

(declare-fun m!361317 () Bool)

(assert (=> b!363864 m!361317))

(declare-fun m!361319 () Bool)

(assert (=> b!363864 m!361319))

(declare-fun m!361321 () Bool)

(assert (=> b!363864 m!361321))

(declare-fun m!361323 () Bool)

(assert (=> b!363865 m!361323))

(declare-fun m!361325 () Bool)

(assert (=> b!363865 m!361325))

(declare-fun m!361327 () Bool)

(assert (=> b!363865 m!361327))

(declare-fun m!361329 () Bool)

(assert (=> b!363868 m!361329))

(declare-fun m!361331 () Bool)

(assert (=> b!363868 m!361331))

(declare-fun m!361333 () Bool)

(assert (=> b!363868 m!361333))

(declare-fun m!361335 () Bool)

(assert (=> b!363868 m!361335))

(declare-fun m!361337 () Bool)

(assert (=> b!363868 m!361337))

(declare-fun m!361339 () Bool)

(assert (=> b!363868 m!361339))

(declare-fun m!361341 () Bool)

(assert (=> b!363866 m!361341))

(declare-fun m!361343 () Bool)

(assert (=> b!363867 m!361343))

(assert (=> b!363867 m!361343))

(declare-fun m!361345 () Bool)

(assert (=> b!363867 m!361345))

(push 1)

(assert (not b!363868))

(assert (not b!363864))

(assert (not b!363866))

(assert (not start!36404))

(assert (not b!363867))

(assert (not b!363865))

(check-sat)

(pop 1)

