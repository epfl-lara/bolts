; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71894 () Bool)

(assert start!71894)

(declare-fun res!568077 () Bool)

(declare-fun e!465892 () Bool)

(assert (=> start!71894 (=> (not res!568077) (not e!465892))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46748 0))(
  ( (array!46749 (arr!22404 (Array (_ BitVec 32) (_ BitVec 64))) (size!22825 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46748)

(assert (=> start!71894 (= res!568077 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22825 a!4227))))))

(assert (=> start!71894 e!465892))

(assert (=> start!71894 true))

(declare-fun array_inv!17827 (array!46748) Bool)

(assert (=> start!71894 (array_inv!17827 a!4227)))

(declare-fun b!835027 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835027 (= e!465892 (and (not (= to!390 (size!22825 a!4227))) (bvsge to!390 (size!22825 a!4227))))))

(declare-fun b!835028 () Bool)

(declare-fun res!568075 () Bool)

(assert (=> b!835028 (=> (not res!568075) (not e!465892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835028 (= res!568075 (not (validKeyInArray!0 (select (arr!22404 a!4227) i!1466))))))

(declare-fun b!835029 () Bool)

(declare-fun res!568078 () Bool)

(assert (=> b!835029 (=> (not res!568078) (not e!465892))))

(declare-fun k!2968 () (_ BitVec 64))

(assert (=> b!835029 (= res!568078 (validKeyInArray!0 k!2968))))

(declare-fun b!835030 () Bool)

(declare-fun res!568076 () Bool)

(assert (=> b!835030 (=> (not res!568076) (not e!465892))))

(assert (=> b!835030 (= res!568076 (and (bvslt (size!22825 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22825 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835031 () Bool)

(declare-fun res!568074 () Bool)

(assert (=> b!835031 (=> (not res!568074) (not e!465892))))

(declare-fun arrayCountValidKeys!0 (array!46748 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835031 (= res!568074 (= (arrayCountValidKeys!0 (array!46749 (store (arr!22404 a!4227) i!1466 k!2968) (size!22825 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(assert (= (and start!71894 res!568077) b!835028))

(assert (= (and b!835028 res!568075) b!835029))

(assert (= (and b!835029 res!568078) b!835030))

(assert (= (and b!835030 res!568076) b!835031))

(assert (= (and b!835031 res!568074) b!835027))

(declare-fun m!780299 () Bool)

(assert (=> start!71894 m!780299))

(declare-fun m!780301 () Bool)

(assert (=> b!835028 m!780301))

(assert (=> b!835028 m!780301))

(declare-fun m!780303 () Bool)

(assert (=> b!835028 m!780303))

(declare-fun m!780305 () Bool)

(assert (=> b!835029 m!780305))

(declare-fun m!780307 () Bool)

(assert (=> b!835031 m!780307))

(declare-fun m!780309 () Bool)

(assert (=> b!835031 m!780309))

(declare-fun m!780311 () Bool)

(assert (=> b!835031 m!780311))

(push 1)

(assert (not start!71894))

(assert (not b!835031))

(assert (not b!835029))

(assert (not b!835028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

