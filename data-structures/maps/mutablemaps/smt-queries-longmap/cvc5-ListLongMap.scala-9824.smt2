; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116648 () Bool)

(assert start!116648)

(declare-fun b!1374783 () Bool)

(declare-fun res!918033 () Bool)

(declare-fun e!778843 () Bool)

(assert (=> b!1374783 (=> (not res!918033) (not e!778843))))

(declare-datatypes ((array!93256 0))(
  ( (array!93257 (arr!45028 (Array (_ BitVec 32) (_ BitVec 64))) (size!45579 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93256)

(assert (=> b!1374783 (= res!918033 (bvslt (size!45579 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374784 () Bool)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1374784 (= e!778843 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1457) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 i!1457) i!1457))))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93256 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374784 (= (arrayCountValidKeys!0 (array!93257 (store (arr!45028 a!4142) i!1457 k!2959) (size!45579 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45443 0))(
  ( (Unit!45444) )
))
(declare-fun lt!603847 () Unit!45443)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45443)

(assert (=> b!1374784 (= lt!603847 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun res!918030 () Bool)

(assert (=> start!116648 (=> (not res!918030) (not e!778843))))

(assert (=> start!116648 (= res!918030 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45579 a!4142))))))

(assert (=> start!116648 e!778843))

(assert (=> start!116648 true))

(declare-fun array_inv!33973 (array!93256) Bool)

(assert (=> start!116648 (array_inv!33973 a!4142)))

(declare-fun b!1374782 () Bool)

(declare-fun res!918032 () Bool)

(assert (=> b!1374782 (=> (not res!918032) (not e!778843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374782 (= res!918032 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1374781 () Bool)

(declare-fun res!918031 () Bool)

(assert (=> b!1374781 (=> (not res!918031) (not e!778843))))

(assert (=> b!1374781 (= res!918031 (validKeyInArray!0 (select (arr!45028 a!4142) i!1457)))))

(assert (= (and start!116648 res!918030) b!1374781))

(assert (= (and b!1374781 res!918031) b!1374782))

(assert (= (and b!1374782 res!918032) b!1374783))

(assert (= (and b!1374783 res!918033) b!1374784))

(declare-fun m!1258411 () Bool)

(assert (=> b!1374784 m!1258411))

(declare-fun m!1258413 () Bool)

(assert (=> b!1374784 m!1258413))

(declare-fun m!1258415 () Bool)

(assert (=> b!1374784 m!1258415))

(declare-fun m!1258417 () Bool)

(assert (=> b!1374784 m!1258417))

(declare-fun m!1258419 () Bool)

(assert (=> start!116648 m!1258419))

(declare-fun m!1258421 () Bool)

(assert (=> b!1374782 m!1258421))

(declare-fun m!1258423 () Bool)

(assert (=> b!1374781 m!1258423))

(assert (=> b!1374781 m!1258423))

(declare-fun m!1258425 () Bool)

(assert (=> b!1374781 m!1258425))

(push 1)

(assert (not b!1374782))

(assert (not b!1374781))

(assert (not start!116648))

(assert (not b!1374784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

