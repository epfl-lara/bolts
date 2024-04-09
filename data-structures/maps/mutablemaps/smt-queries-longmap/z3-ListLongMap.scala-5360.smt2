; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71784 () Bool)

(assert start!71784)

(declare-fun res!567145 () Bool)

(declare-fun e!465301 () Bool)

(assert (=> start!71784 (=> (not res!567145) (not e!465301))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46638 0))(
  ( (array!46639 (arr!22349 (Array (_ BitVec 32) (_ BitVec 64))) (size!22770 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46638)

(assert (=> start!71784 (= res!567145 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22770 a!4227))))))

(assert (=> start!71784 e!465301))

(assert (=> start!71784 true))

(declare-fun array_inv!17772 (array!46638) Bool)

(assert (=> start!71784 (array_inv!17772 a!4227)))

(declare-fun b!833936 () Bool)

(declare-fun res!567147 () Bool)

(assert (=> b!833936 (=> (not res!567147) (not e!465301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!833936 (= res!567147 (not (validKeyInArray!0 (select (arr!22349 a!4227) i!1466))))))

(declare-fun b!833938 () Bool)

(declare-fun res!567146 () Bool)

(assert (=> b!833938 (=> (not res!567146) (not e!465301))))

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!833938 (= res!567146 (and (bvslt (size!22770 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22770 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!833939 () Bool)

(assert (=> b!833939 (= e!465301 false)))

(declare-fun lt!378711 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46638 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!833939 (= lt!378711 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun lt!378710 () (_ BitVec 32))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!833939 (= lt!378710 (arrayCountValidKeys!0 (array!46639 (store (arr!22349 a!4227) i!1466 k0!2968) (size!22770 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!833937 () Bool)

(declare-fun res!567148 () Bool)

(assert (=> b!833937 (=> (not res!567148) (not e!465301))))

(assert (=> b!833937 (= res!567148 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71784 res!567145) b!833936))

(assert (= (and b!833936 res!567147) b!833937))

(assert (= (and b!833937 res!567148) b!833938))

(assert (= (and b!833938 res!567146) b!833939))

(declare-fun m!778953 () Bool)

(assert (=> start!71784 m!778953))

(declare-fun m!778955 () Bool)

(assert (=> b!833936 m!778955))

(assert (=> b!833936 m!778955))

(declare-fun m!778957 () Bool)

(assert (=> b!833936 m!778957))

(declare-fun m!778959 () Bool)

(assert (=> b!833939 m!778959))

(declare-fun m!778961 () Bool)

(assert (=> b!833939 m!778961))

(declare-fun m!778963 () Bool)

(assert (=> b!833939 m!778963))

(declare-fun m!778965 () Bool)

(assert (=> b!833937 m!778965))

(check-sat (not b!833939) (not b!833937) (not start!71784) (not b!833936))
