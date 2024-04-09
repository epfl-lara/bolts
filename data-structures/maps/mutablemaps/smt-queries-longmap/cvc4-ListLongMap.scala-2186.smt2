; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36462 () Bool)

(assert start!36462)

(declare-fun b!364304 () Bool)

(declare-fun res!203615 () Bool)

(declare-fun e!223021 () Bool)

(assert (=> b!364304 (=> (not res!203615) (not e!223021))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364304 (= res!203615 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun b!364305 () Bool)

(declare-fun i!1472 () (_ BitVec 32))

(assert (=> b!364305 (= e!223021 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun lt!168478 () (_ BitVec 32))

(declare-datatypes ((array!20704 0))(
  ( (array!20705 (arr!9828 (Array (_ BitVec 32) (_ BitVec 64))) (size!10180 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20704)

(declare-fun arrayCountValidKeys!0 (array!20704 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364305 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168478) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11315 0))(
  ( (Unit!11316) )
))
(declare-fun lt!168479 () Unit!11315)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11315)

(assert (=> b!364305 (= lt!168479 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364306 () Bool)

(declare-fun res!203618 () Bool)

(declare-fun e!223020 () Bool)

(assert (=> b!364306 (=> (not res!203618) (not e!223020))))

(assert (=> b!364306 (= res!203618 (and (bvslt (size!10180 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10180 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364307 () Bool)

(declare-fun res!203617 () Bool)

(assert (=> b!364307 (=> (not res!203617) (not e!223020))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364307 (= res!203617 (not (validKeyInArray!0 (select (arr!9828 a!4289) i!1472))))))

(declare-fun b!364308 () Bool)

(declare-fun res!203616 () Bool)

(assert (=> b!364308 (=> (not res!203616) (not e!223020))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364308 (= res!203616 (validKeyInArray!0 k!2974))))

(declare-fun b!364309 () Bool)

(assert (=> b!364309 (= e!223020 e!223021)))

(declare-fun res!203619 () Bool)

(assert (=> b!364309 (=> (not res!203619) (not e!223021))))

(assert (=> b!364309 (= res!203619 (= (arrayCountValidKeys!0 (array!20705 (store (arr!9828 a!4289) i!1472 k!2974) (size!10180 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168478)))))

(assert (=> b!364309 (= lt!168478 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun res!203620 () Bool)

(assert (=> start!36462 (=> (not res!203620) (not e!223020))))

(assert (=> start!36462 (= res!203620 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10180 a!4289))))))

(assert (=> start!36462 e!223020))

(assert (=> start!36462 true))

(declare-fun array_inv!7266 (array!20704) Bool)

(assert (=> start!36462 (array_inv!7266 a!4289)))

(assert (= (and start!36462 res!203620) b!364307))

(assert (= (and b!364307 res!203617) b!364308))

(assert (= (and b!364308 res!203616) b!364306))

(assert (= (and b!364306 res!203618) b!364309))

(assert (= (and b!364309 res!203619) b!364304))

(assert (= (and b!364304 res!203615) b!364305))

(declare-fun m!361859 () Bool)

(assert (=> b!364307 m!361859))

(assert (=> b!364307 m!361859))

(declare-fun m!361861 () Bool)

(assert (=> b!364307 m!361861))

(declare-fun m!361863 () Bool)

(assert (=> start!36462 m!361863))

(declare-fun m!361865 () Bool)

(assert (=> b!364308 m!361865))

(declare-fun m!361867 () Bool)

(assert (=> b!364309 m!361867))

(declare-fun m!361869 () Bool)

(assert (=> b!364309 m!361869))

(declare-fun m!361871 () Bool)

(assert (=> b!364309 m!361871))

(declare-fun m!361873 () Bool)

(assert (=> b!364305 m!361873))

(declare-fun m!361875 () Bool)

(assert (=> b!364305 m!361875))

(declare-fun m!361877 () Bool)

(assert (=> b!364305 m!361877))

(push 1)

(assert (not b!364307))

(assert (not start!36462))

(assert (not b!364305))

(assert (not b!364309))

(assert (not b!364308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

