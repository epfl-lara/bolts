; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136708 () Bool)

(assert start!136708)

(declare-fun b!1578179 () Bool)

(declare-fun e!880293 () Bool)

(declare-fun x!466 () (_ BitVec 32))

(assert (=> b!1578179 (= e!880293 (bvsge (bvsub #b01111111111111111111111111111111 (bvadd #b00000000000000000000000000000001 x!466)) (bvsub #b01111111111111111111111111111111 x!466)))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun lt!676138 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578179 (= lt!676138 (nextIndex!0 ee!18 x!466 mask!918))))

(declare-fun b!1578178 () Bool)

(declare-fun res!1078361 () Bool)

(assert (=> b!1578178 (=> (not res!1078361) (not e!880293))))

(declare-fun k!772 () (_ BitVec 64))

(declare-datatypes ((array!105701 0))(
  ( (array!105702 (arr!50958 (Array (_ BitVec 32) (_ BitVec 64))) (size!51509 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105701)

(assert (=> b!1578178 (= res!1078361 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50958 _keys!614) ee!18) k!772)) (not (= (select (arr!50958 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578177 () Bool)

(declare-fun res!1078364 () Bool)

(assert (=> b!1578177 (=> (not res!1078364) (not e!880293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578177 (= res!1078364 (validKeyInArray!0 k!772))))

(declare-fun b!1578176 () Bool)

(declare-fun res!1078363 () Bool)

(assert (=> b!1578176 (=> (not res!1078363) (not e!880293))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578176 (= res!1078363 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51509 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50958 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078362 () Bool)

(assert (=> start!136708 (=> (not res!1078362) (not e!880293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136708 (= res!1078362 (validMask!0 mask!918))))

(assert (=> start!136708 e!880293))

(assert (=> start!136708 true))

(declare-fun array_inv!39603 (array!105701) Bool)

(assert (=> start!136708 (array_inv!39603 _keys!614)))

(assert (= (and start!136708 res!1078362) b!1578176))

(assert (= (and b!1578176 res!1078363) b!1578177))

(assert (= (and b!1578177 res!1078364) b!1578178))

(assert (= (and b!1578178 res!1078361) b!1578179))

(declare-fun m!1450319 () Bool)

(assert (=> b!1578179 m!1450319))

(declare-fun m!1450321 () Bool)

(assert (=> b!1578178 m!1450321))

(declare-fun m!1450323 () Bool)

(assert (=> start!136708 m!1450323))

(declare-fun m!1450325 () Bool)

(assert (=> start!136708 m!1450325))

(declare-fun m!1450327 () Bool)

(assert (=> b!1578176 m!1450327))

(declare-fun m!1450329 () Bool)

(assert (=> b!1578177 m!1450329))

(push 1)

(assert (not b!1578179))

(assert (not b!1578177))

(assert (not start!136708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

