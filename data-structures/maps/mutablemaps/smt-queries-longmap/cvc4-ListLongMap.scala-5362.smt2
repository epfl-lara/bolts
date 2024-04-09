; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71798 () Bool)

(assert start!71798)

(declare-fun b!834038 () Bool)

(declare-fun res!567248 () Bool)

(declare-fun e!465353 () Bool)

(assert (=> b!834038 (=> (not res!567248) (not e!465353))))

(declare-datatypes ((array!46652 0))(
  ( (array!46653 (arr!22356 (Array (_ BitVec 32) (_ BitVec 64))) (size!22777 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46652)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834038 (= res!567248 (not (validKeyInArray!0 (select (arr!22356 a!4227) i!1466))))))

(declare-fun res!567249 () Bool)

(assert (=> start!71798 (=> (not res!567249) (not e!465353))))

(assert (=> start!71798 (= res!567249 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22777 a!4227))))))

(assert (=> start!71798 e!465353))

(assert (=> start!71798 true))

(declare-fun array_inv!17779 (array!46652) Bool)

(assert (=> start!71798 (array_inv!17779 a!4227)))

(declare-fun b!834040 () Bool)

(declare-fun res!567247 () Bool)

(assert (=> b!834040 (=> (not res!567247) (not e!465353))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834040 (= res!567247 (and (bvslt (size!22777 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22777 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834039 () Bool)

(declare-fun res!567250 () Bool)

(assert (=> b!834039 (=> (not res!567250) (not e!465353))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834039 (= res!567250 (validKeyInArray!0 k!2968))))

(declare-fun b!834041 () Bool)

(assert (=> b!834041 (= e!465353 false)))

(declare-fun lt!378762 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834041 (= lt!378762 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378761 () (_ BitVec 32))

(assert (=> b!834041 (= lt!378761 (arrayCountValidKeys!0 (array!46653 (store (arr!22356 a!4227) i!1466 k!2968) (size!22777 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (= (and start!71798 res!567249) b!834038))

(assert (= (and b!834038 res!567248) b!834039))

(assert (= (and b!834039 res!567250) b!834040))

(assert (= (and b!834040 res!567247) b!834041))

(declare-fun m!779075 () Bool)

(assert (=> b!834038 m!779075))

(assert (=> b!834038 m!779075))

(declare-fun m!779077 () Bool)

(assert (=> b!834038 m!779077))

(declare-fun m!779079 () Bool)

(assert (=> start!71798 m!779079))

(declare-fun m!779081 () Bool)

(assert (=> b!834039 m!779081))

(declare-fun m!779083 () Bool)

(assert (=> b!834041 m!779083))

(declare-fun m!779085 () Bool)

(assert (=> b!834041 m!779085))

(declare-fun m!779087 () Bool)

(assert (=> b!834041 m!779087))

(push 1)

(assert (not b!834039))

(assert (not start!71798))

(assert (not b!834038))

(assert (not b!834041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

