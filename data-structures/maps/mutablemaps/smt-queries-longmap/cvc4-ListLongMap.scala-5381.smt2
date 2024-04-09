; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71912 () Bool)

(assert start!71912)

(declare-fun b!835205 () Bool)

(declare-fun res!568256 () Bool)

(declare-fun e!465973 () Bool)

(assert (=> b!835205 (=> (not res!568256) (not e!465973))))

(declare-datatypes ((array!46766 0))(
  ( (array!46767 (arr!22413 (Array (_ BitVec 32) (_ BitVec 64))) (size!22834 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46766)

(declare-fun i!1466 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835205 (= res!568256 (not (validKeyInArray!0 (select (arr!22413 a!4227) i!1466))))))

(declare-fun e!465972 () Bool)

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun b!835206 () Bool)

(declare-fun to!390 () (_ BitVec 32))

(assert (=> b!835206 (= e!465972 (validKeyInArray!0 (select (store (arr!22413 a!4227) i!1466 k!2968) to!390)))))

(declare-fun res!568254 () Bool)

(assert (=> start!71912 (=> (not res!568254) (not e!465973))))

(assert (=> start!71912 (= res!568254 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22834 a!4227))))))

(assert (=> start!71912 e!465973))

(assert (=> start!71912 true))

(declare-fun array_inv!17836 (array!46766) Bool)

(assert (=> start!71912 (array_inv!17836 a!4227)))

(declare-fun b!835207 () Bool)

(declare-fun res!568253 () Bool)

(assert (=> b!835207 (=> (not res!568253) (not e!465973))))

(assert (=> b!835207 (= res!568253 (and (bvslt (size!22834 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22834 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835208 () Bool)

(declare-fun e!465971 () Bool)

(assert (=> b!835208 (= e!465971 (not e!465972))))

(declare-fun res!568257 () Bool)

(assert (=> b!835208 (=> (not res!568257) (not e!465972))))

(assert (=> b!835208 (= res!568257 (and (bvsge (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvslt to!390 (size!22834 a!4227))))))

(declare-fun lt!379652 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46766 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835208 (= (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (bvadd #b00000000000000000000000000000001 to!390)) (bvadd #b00000000000000000000000000000001 lt!379652))))

(declare-datatypes ((Unit!28710 0))(
  ( (Unit!28711) )
))
(declare-fun lt!379651 () Unit!28710)

(declare-fun lemmaValidKeyIncreasesNumOfKeys!0 (array!46766 (_ BitVec 32) (_ BitVec 32)) Unit!28710)

(assert (=> b!835208 (= lt!379651 (lemmaValidKeyIncreasesNumOfKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835209 () Bool)

(declare-fun res!568255 () Bool)

(assert (=> b!835209 (=> (not res!568255) (not e!465971))))

(assert (=> b!835209 (= res!568255 (validKeyInArray!0 (select (arr!22413 a!4227) to!390)))))

(declare-fun b!835210 () Bool)

(assert (=> b!835210 (= e!465973 e!465971)))

(declare-fun res!568258 () Bool)

(assert (=> b!835210 (=> (not res!568258) (not e!465971))))

(declare-fun lt!379653 () (_ BitVec 32))

(assert (=> b!835210 (= res!568258 (and (= lt!379653 lt!379652) (not (= to!390 (size!22834 a!4227)))))))

(assert (=> b!835210 (= lt!379652 (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(assert (=> b!835210 (= lt!379653 (arrayCountValidKeys!0 (array!46767 (store (arr!22413 a!4227) i!1466 k!2968) (size!22834 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390))))

(declare-fun b!835211 () Bool)

(declare-fun res!568252 () Bool)

(assert (=> b!835211 (=> (not res!568252) (not e!465973))))

(assert (=> b!835211 (= res!568252 (validKeyInArray!0 k!2968))))

(assert (= (and start!71912 res!568254) b!835205))

(assert (= (and b!835205 res!568256) b!835211))

(assert (= (and b!835211 res!568252) b!835207))

(assert (= (and b!835207 res!568253) b!835210))

(assert (= (and b!835210 res!568258) b!835209))

(assert (= (and b!835209 res!568255) b!835208))

(assert (= (and b!835208 res!568257) b!835206))

(declare-fun m!780485 () Bool)

(assert (=> b!835208 m!780485))

(declare-fun m!780487 () Bool)

(assert (=> b!835208 m!780487))

(declare-fun m!780489 () Bool)

(assert (=> b!835210 m!780489))

(declare-fun m!780491 () Bool)

(assert (=> b!835210 m!780491))

(declare-fun m!780493 () Bool)

(assert (=> b!835210 m!780493))

(declare-fun m!780495 () Bool)

(assert (=> start!71912 m!780495))

(assert (=> b!835206 m!780491))

(declare-fun m!780497 () Bool)

(assert (=> b!835206 m!780497))

(assert (=> b!835206 m!780497))

(declare-fun m!780499 () Bool)

(assert (=> b!835206 m!780499))

(declare-fun m!780501 () Bool)

(assert (=> b!835205 m!780501))

(assert (=> b!835205 m!780501))

(declare-fun m!780503 () Bool)

(assert (=> b!835205 m!780503))

(declare-fun m!780505 () Bool)

(assert (=> b!835209 m!780505))

(assert (=> b!835209 m!780505))

(declare-fun m!780507 () Bool)

(assert (=> b!835209 m!780507))

(declare-fun m!780509 () Bool)

(assert (=> b!835211 m!780509))

(push 1)

(assert (not b!835208))

(assert (not b!835211))

(assert (not start!71912))

(assert (not b!835209))

(assert (not b!835205))

(assert (not b!835210))

(assert (not b!835206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

