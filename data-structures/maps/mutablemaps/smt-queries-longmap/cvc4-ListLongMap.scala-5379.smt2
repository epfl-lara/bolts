; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71900 () Bool)

(assert start!71900)

(declare-fun res!568138 () Bool)

(declare-fun e!465910 () Bool)

(assert (=> start!71900 (=> (not res!568138) (not e!465910))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46754 0))(
  ( (array!46755 (arr!22407 (Array (_ BitVec 32) (_ BitVec 64))) (size!22828 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46754)

(assert (=> start!71900 (= res!568138 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22828 a!4227))))))

(assert (=> start!71900 e!465910))

(assert (=> start!71900 true))

(declare-fun array_inv!17830 (array!46754) Bool)

(assert (=> start!71900 (array_inv!17830 a!4227)))

(declare-fun b!835088 () Bool)

(declare-fun res!568137 () Bool)

(assert (=> b!835088 (=> (not res!568137) (not e!465910))))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835088 (= res!568137 (validKeyInArray!0 (select (arr!22407 a!4227) to!390)))))

(declare-fun b!835089 () Bool)

(declare-fun res!568140 () Bool)

(assert (=> b!835089 (=> (not res!568140) (not e!465910))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835089 (= res!568140 (validKeyInArray!0 k!2968))))

(declare-fun b!835090 () Bool)

(declare-fun res!568141 () Bool)

(assert (=> b!835090 (=> (not res!568141) (not e!465910))))

(declare-fun arrayCountValidKeys!0 (array!46754 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835090 (= res!568141 (= (arrayCountValidKeys!0 (array!46755 (store (arr!22407 a!4227) i!1466 k!2968) (size!22828 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835091 () Bool)

(declare-fun res!568135 () Bool)

(assert (=> b!835091 (=> (not res!568135) (not e!465910))))

(assert (=> b!835091 (= res!568135 (and (bvslt (size!22828 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22828 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835092 () Bool)

(declare-fun res!568139 () Bool)

(assert (=> b!835092 (=> (not res!568139) (not e!465910))))

(assert (=> b!835092 (= res!568139 (not (validKeyInArray!0 (select (arr!22407 a!4227) i!1466))))))

(declare-fun b!835093 () Bool)

(declare-fun res!568136 () Bool)

(assert (=> b!835093 (=> (not res!568136) (not e!465910))))

(assert (=> b!835093 (= res!568136 (not (= to!390 (size!22828 a!4227))))))

(declare-fun b!835094 () Bool)

(assert (=> b!835094 (= e!465910 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22828 a!4227))))))

(assert (= (and start!71900 res!568138) b!835092))

(assert (= (and b!835092 res!568139) b!835089))

(assert (= (and b!835089 res!568140) b!835091))

(assert (= (and b!835091 res!568135) b!835090))

(assert (= (and b!835090 res!568141) b!835093))

(assert (= (and b!835093 res!568136) b!835088))

(assert (= (and b!835088 res!568137) b!835094))

(declare-fun m!780349 () Bool)

(assert (=> b!835089 m!780349))

(declare-fun m!780351 () Bool)

(assert (=> b!835092 m!780351))

(assert (=> b!835092 m!780351))

(declare-fun m!780353 () Bool)

(assert (=> b!835092 m!780353))

(declare-fun m!780355 () Bool)

(assert (=> start!71900 m!780355))

(declare-fun m!780357 () Bool)

(assert (=> b!835088 m!780357))

(assert (=> b!835088 m!780357))

(declare-fun m!780359 () Bool)

(assert (=> b!835088 m!780359))

(declare-fun m!780361 () Bool)

(assert (=> b!835090 m!780361))

(declare-fun m!780363 () Bool)

(assert (=> b!835090 m!780363))

(declare-fun m!780365 () Bool)

(assert (=> b!835090 m!780365))

(push 1)

(assert (not start!71900))

(assert (not b!835092))

(assert (not b!835089))

(assert (not b!835090))

(assert (not b!835088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

