; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136416 () Bool)

(assert start!136416)

(declare-fun b!1577075 () Bool)

(declare-fun e!879668 () Bool)

(assert (=> b!1577075 (= e!879668 false)))

(declare-fun lt!675889 () (_ BitVec 32))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577075 (= lt!675889 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun res!1077475 () Bool)

(assert (=> start!136416 (=> (not res!1077475) (not e!879668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136416 (= res!1077475 (validMask!0 mask!910))))

(assert (=> start!136416 e!879668))

(assert (=> start!136416 true))

(declare-datatypes ((array!105538 0))(
  ( (array!105539 (arr!50884 (Array (_ BitVec 32) (_ BitVec 64))) (size!51435 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105538)

(declare-fun array_inv!39529 (array!105538) Bool)

(assert (=> start!136416 (array_inv!39529 _keys!610)))

(declare-fun b!1577072 () Bool)

(declare-fun res!1077474 () Bool)

(assert (=> b!1577072 (=> (not res!1077474) (not e!879668))))

(assert (=> b!1577072 (= res!1077474 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51435 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577073 () Bool)

(declare-fun res!1077476 () Bool)

(assert (=> b!1577073 (=> (not res!1077476) (not e!879668))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577073 (= res!1077476 (validKeyInArray!0 k!768))))

(declare-fun b!1577074 () Bool)

(declare-fun res!1077473 () Bool)

(assert (=> b!1577074 (=> (not res!1077473) (not e!879668))))

(assert (=> b!1577074 (= res!1077473 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50884 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50884 _keys!610) ee!12) (select (arr!50884 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136416 res!1077475) b!1577072))

(assert (= (and b!1577072 res!1077474) b!1577073))

(assert (= (and b!1577073 res!1077476) b!1577074))

(assert (= (and b!1577074 res!1077473) b!1577075))

(declare-fun m!1449425 () Bool)

(assert (=> b!1577075 m!1449425))

(declare-fun m!1449427 () Bool)

(assert (=> start!136416 m!1449427))

(declare-fun m!1449429 () Bool)

(assert (=> start!136416 m!1449429))

(declare-fun m!1449431 () Bool)

(assert (=> b!1577073 m!1449431))

(declare-fun m!1449433 () Bool)

(assert (=> b!1577074 m!1449433))

(push 1)

(assert (not b!1577075))

(assert (not b!1577073))

(assert (not start!136416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

