; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136414 () Bool)

(assert start!136414)

(declare-fun b!1577060 () Bool)

(declare-fun res!1077463 () Bool)

(declare-fun e!879663 () Bool)

(assert (=> b!1577060 (=> (not res!1077463) (not e!879663))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-datatypes ((array!105536 0))(
  ( (array!105537 (arr!50883 (Array (_ BitVec 32) (_ BitVec 64))) (size!51434 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105536)

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577060 (= res!1077463 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51434 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577061 () Bool)

(declare-fun res!1077464 () Bool)

(assert (=> b!1577061 (=> (not res!1077464) (not e!879663))))

(declare-fun k!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577061 (= res!1077464 (validKeyInArray!0 k!768))))

(declare-fun b!1577063 () Bool)

(declare-fun lt!675886 () (_ BitVec 32))

(assert (=> b!1577063 (= e!879663 (and (bvsge lt!675886 #b00000000000000000000000000000000) (bvslt lt!675886 (bvadd #b00000000000000000000000000000001 mask!910)) (bvslt (bvadd #b00000000000000000000000000000001 x!458) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577063 (= lt!675886 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun res!1077461 () Bool)

(assert (=> start!136414 (=> (not res!1077461) (not e!879663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136414 (= res!1077461 (validMask!0 mask!910))))

(assert (=> start!136414 e!879663))

(assert (=> start!136414 true))

(declare-fun array_inv!39528 (array!105536) Bool)

(assert (=> start!136414 (array_inv!39528 _keys!610)))

(declare-fun b!1577062 () Bool)

(declare-fun res!1077462 () Bool)

(assert (=> b!1577062 (=> (not res!1077462) (not e!879663))))

(assert (=> b!1577062 (= res!1077462 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50883 _keys!610) ee!12) k!768)) (not (= (bvadd (select (arr!50883 _keys!610) ee!12) (select (arr!50883 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!136414 res!1077461) b!1577060))

(assert (= (and b!1577060 res!1077463) b!1577061))

(assert (= (and b!1577061 res!1077464) b!1577062))

(assert (= (and b!1577062 res!1077462) b!1577063))

(declare-fun m!1449415 () Bool)

(assert (=> b!1577061 m!1449415))

(declare-fun m!1449417 () Bool)

(assert (=> b!1577063 m!1449417))

(declare-fun m!1449419 () Bool)

(assert (=> start!136414 m!1449419))

(declare-fun m!1449421 () Bool)

(assert (=> start!136414 m!1449421))

(declare-fun m!1449423 () Bool)

(assert (=> b!1577062 m!1449423))

(push 1)

(assert (not b!1577061))

(assert (not start!136414))

(assert (not b!1577063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

