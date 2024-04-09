; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71866 () Bool)

(assert start!71866)

(declare-fun b!834835 () Bool)

(declare-fun res!567881 () Bool)

(declare-fun e!465809 () Bool)

(assert (=> b!834835 (=> (not res!567881) (not e!465809))))

(declare-datatypes ((array!46720 0))(
  ( (array!46721 (arr!22390 (Array (_ BitVec 32) (_ BitVec 64))) (size!22811 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46720)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834835 (= res!567881 (and (bvslt (size!22811 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22811 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834836 () Bool)

(assert (=> b!834836 (= e!465809 false)))

(declare-fun lt!379569 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46720 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834836 (= lt!379569 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!379568 () (_ BitVec 32))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!834836 (= lt!379568 (arrayCountValidKeys!0 (array!46721 (store (arr!22390 a!4227) i!1466 k!2968) (size!22811 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun res!567882 () Bool)

(assert (=> start!71866 (=> (not res!567882) (not e!465809))))

(assert (=> start!71866 (= res!567882 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22811 a!4227))))))

(assert (=> start!71866 e!465809))

(assert (=> start!71866 true))

(declare-fun array_inv!17813 (array!46720) Bool)

(assert (=> start!71866 (array_inv!17813 a!4227)))

(declare-fun b!834834 () Bool)

(declare-fun res!567883 () Bool)

(assert (=> b!834834 (=> (not res!567883) (not e!465809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834834 (= res!567883 (validKeyInArray!0 k!2968))))

(declare-fun b!834833 () Bool)

(declare-fun res!567880 () Bool)

(assert (=> b!834833 (=> (not res!567880) (not e!465809))))

(assert (=> b!834833 (= res!567880 (not (validKeyInArray!0 (select (arr!22390 a!4227) i!1466))))))

(assert (= (and start!71866 res!567882) b!834833))

(assert (= (and b!834833 res!567880) b!834834))

(assert (= (and b!834834 res!567883) b!834835))

(assert (= (and b!834835 res!567881) b!834836))

(declare-fun m!780103 () Bool)

(assert (=> b!834836 m!780103))

(declare-fun m!780105 () Bool)

(assert (=> b!834836 m!780105))

(declare-fun m!780107 () Bool)

(assert (=> b!834836 m!780107))

(declare-fun m!780109 () Bool)

(assert (=> start!71866 m!780109))

(declare-fun m!780111 () Bool)

(assert (=> b!834834 m!780111))

(declare-fun m!780113 () Bool)

(assert (=> b!834833 m!780113))

(assert (=> b!834833 m!780113))

(declare-fun m!780115 () Bool)

(assert (=> b!834833 m!780115))

(push 1)

(assert (not b!834834))

(assert (not b!834833))

(assert (not start!71866))

(assert (not b!834836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

