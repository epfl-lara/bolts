; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71786 () Bool)

(assert start!71786)

(declare-fun b!833951 () Bool)

(declare-fun e!465307 () Bool)

(assert (=> b!833951 (= e!465307 false)))

(declare-datatypes ((array!46640 0))(
  ( (array!46641 (arr!22350 (Array (_ BitVec 32) (_ BitVec 64))) (size!22771 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46640)

(declare-fun lt!378716 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46640 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!833951 (= lt!378716 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378717 () (_ BitVec 32))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!833951 (= lt!378717 (arrayCountValidKeys!0 (array!46641 (store (arr!22350 a!4227) i!1466 k!2968) (size!22771 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!833948 () Bool)

(declare-fun res!567157 () Bool)

(assert (=> b!833948 (=> (not res!567157) (not e!465307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833948 (= res!567157 (not (validKeyInArray!0 (select (arr!22350 a!4227) i!1466))))))

(declare-fun res!567159 () Bool)

(assert (=> start!71786 (=> (not res!567159) (not e!465307))))

(assert (=> start!71786 (= res!567159 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22771 a!4227))))))

(assert (=> start!71786 e!465307))

(assert (=> start!71786 true))

(declare-fun array_inv!17773 (array!46640) Bool)

(assert (=> start!71786 (array_inv!17773 a!4227)))

(declare-fun b!833950 () Bool)

(declare-fun res!567158 () Bool)

(assert (=> b!833950 (=> (not res!567158) (not e!465307))))

(assert (=> b!833950 (= res!567158 (and (bvslt (size!22771 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22771 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!833949 () Bool)

(declare-fun res!567160 () Bool)

(assert (=> b!833949 (=> (not res!567160) (not e!465307))))

(assert (=> b!833949 (= res!567160 (validKeyInArray!0 k!2968))))

(assert (= (and start!71786 res!567159) b!833948))

(assert (= (and b!833948 res!567157) b!833949))

(assert (= (and b!833949 res!567160) b!833950))

(assert (= (and b!833950 res!567158) b!833951))

(declare-fun m!778967 () Bool)

(assert (=> b!833951 m!778967))

(declare-fun m!778969 () Bool)

(assert (=> b!833951 m!778969))

(declare-fun m!778971 () Bool)

(assert (=> b!833951 m!778971))

(declare-fun m!778973 () Bool)

(assert (=> b!833948 m!778973))

(assert (=> b!833948 m!778973))

(declare-fun m!778975 () Bool)

(assert (=> b!833948 m!778975))

(declare-fun m!778977 () Bool)

(assert (=> start!71786 m!778977))

(declare-fun m!778979 () Bool)

(assert (=> b!833949 m!778979))

(push 1)

(assert (not b!833948))

(assert (not start!71786))

(assert (not b!833951))

(assert (not b!833949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

