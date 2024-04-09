; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71882 () Bool)

(assert start!71882)

(declare-fun res!567988 () Bool)

(declare-fun e!465857 () Bool)

(assert (=> start!71882 (=> (not res!567988) (not e!465857))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46736 0))(
  ( (array!46737 (arr!22398 (Array (_ BitVec 32) (_ BitVec 64))) (size!22819 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46736)

(assert (=> start!71882 (= res!567988 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22819 a!4227))))))

(assert (=> start!71882 e!465857))

(assert (=> start!71882 true))

(declare-fun array_inv!17821 (array!46736) Bool)

(assert (=> start!71882 (array_inv!17821 a!4227)))

(declare-fun b!834940 () Bool)

(declare-fun res!567987 () Bool)

(assert (=> b!834940 (=> (not res!567987) (not e!465857))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!834940 (= res!567987 (and (bvslt (size!22819 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22819 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834938 () Bool)

(declare-fun res!567985 () Bool)

(assert (=> b!834938 (=> (not res!567985) (not e!465857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834938 (= res!567985 (not (validKeyInArray!0 (select (arr!22398 a!4227) i!1466))))))

(declare-fun b!834941 () Bool)

(assert (=> b!834941 (= e!465857 false)))

(declare-fun lt!379598 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46736 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834941 (= lt!379598 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun lt!379599 () (_ BitVec 32))

(assert (=> b!834941 (= lt!379599 (arrayCountValidKeys!0 (array!46737 (store (arr!22398 a!4227) i!1466 k!2968) (size!22819 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!834939 () Bool)

(declare-fun res!567986 () Bool)

(assert (=> b!834939 (=> (not res!567986) (not e!465857))))

(assert (=> b!834939 (= res!567986 (validKeyInArray!0 k!2968))))

(assert (= (and start!71882 res!567988) b!834938))

(assert (= (and b!834938 res!567985) b!834939))

(assert (= (and b!834939 res!567986) b!834940))

(assert (= (and b!834940 res!567987) b!834941))

(declare-fun m!780215 () Bool)

(assert (=> start!71882 m!780215))

(declare-fun m!780217 () Bool)

(assert (=> b!834938 m!780217))

(assert (=> b!834938 m!780217))

(declare-fun m!780219 () Bool)

(assert (=> b!834938 m!780219))

(declare-fun m!780221 () Bool)

(assert (=> b!834941 m!780221))

(declare-fun m!780223 () Bool)

(assert (=> b!834941 m!780223))

(declare-fun m!780225 () Bool)

(assert (=> b!834941 m!780225))

(declare-fun m!780227 () Bool)

(assert (=> b!834939 m!780227))

(push 1)

(assert (not b!834941))

(assert (not b!834939))

(assert (not b!834938))

(assert (not start!71882))

(check-sat)

(pop 1)

(push 1)

(check-sat)

