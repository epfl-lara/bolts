; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71794 () Bool)

(assert start!71794)

(declare-fun b!834015 () Bool)

(declare-fun res!567223 () Bool)

(declare-fun e!465341 () Bool)

(assert (=> b!834015 (=> (not res!567223) (not e!465341))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834015 (= res!567223 (validKeyInArray!0 k!2968))))

(declare-fun b!834014 () Bool)

(declare-fun res!567225 () Bool)

(assert (=> b!834014 (=> (not res!567225) (not e!465341))))

(declare-datatypes ((array!46648 0))(
  ( (array!46649 (arr!22354 (Array (_ BitVec 32) (_ BitVec 64))) (size!22775 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46648)

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!834014 (= res!567225 (not (validKeyInArray!0 (select (arr!22354 a!4227) i!1466))))))

(declare-fun b!834017 () Bool)

(assert (=> b!834017 (= e!465341 false)))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun lt!378749 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46648 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834017 (= lt!378749 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378750 () (_ BitVec 32))

(assert (=> b!834017 (= lt!378750 (arrayCountValidKeys!0 (array!46649 (store (arr!22354 a!4227) i!1466 k!2968) (size!22775 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567226 () Bool)

(assert (=> start!71794 (=> (not res!567226) (not e!465341))))

(assert (=> start!71794 (= res!567226 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22775 a!4227))))))

(assert (=> start!71794 e!465341))

(assert (=> start!71794 true))

(declare-fun array_inv!17777 (array!46648) Bool)

(assert (=> start!71794 (array_inv!17777 a!4227)))

(declare-fun b!834016 () Bool)

(declare-fun res!567224 () Bool)

(assert (=> b!834016 (=> (not res!567224) (not e!465341))))

(assert (=> b!834016 (= res!567224 (and (bvslt (size!22775 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22775 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71794 res!567226) b!834014))

(assert (= (and b!834014 res!567225) b!834015))

(assert (= (and b!834015 res!567223) b!834016))

(assert (= (and b!834016 res!567224) b!834017))

(declare-fun m!779047 () Bool)

(assert (=> b!834015 m!779047))

(declare-fun m!779049 () Bool)

(assert (=> b!834014 m!779049))

(assert (=> b!834014 m!779049))

(declare-fun m!779051 () Bool)

(assert (=> b!834014 m!779051))

(declare-fun m!779053 () Bool)

(assert (=> b!834017 m!779053))

(declare-fun m!779055 () Bool)

(assert (=> b!834017 m!779055))

(declare-fun m!779057 () Bool)

(assert (=> b!834017 m!779057))

(declare-fun m!779059 () Bool)

(assert (=> start!71794 m!779059))

(push 1)

(assert (not start!71794))

(assert (not b!834017))

(assert (not b!834015))

(assert (not b!834014))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

