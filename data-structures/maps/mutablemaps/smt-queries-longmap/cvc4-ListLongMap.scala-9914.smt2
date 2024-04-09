; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117300 () Bool)

(assert start!117300)

(declare-fun b!1379447 () Bool)

(declare-fun res!921998 () Bool)

(declare-fun e!781472 () Bool)

(assert (=> b!1379447 (=> (not res!921998) (not e!781472))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379447 (= res!921998 (not (validKeyInArray!0 k!2953)))))

(declare-fun res!921999 () Bool)

(assert (=> start!117300 (=> (not res!921999) (not e!781472))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93812 0))(
  ( (array!93813 (arr!45300 (Array (_ BitVec 32) (_ BitVec 64))) (size!45851 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93812)

(assert (=> start!117300 (= res!921999 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45851 a!4094))))))

(assert (=> start!117300 e!781472))

(assert (=> start!117300 true))

(declare-fun array_inv!34245 (array!93812) Bool)

(assert (=> start!117300 (array_inv!34245 a!4094)))

(declare-fun b!1379448 () Bool)

(declare-fun e!781475 () Bool)

(assert (=> b!1379448 (= e!781475 true)))

(declare-fun lt!607586 () array!93812)

(declare-fun arrayCountValidKeys!0 (array!93812 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379448 (= (arrayCountValidKeys!0 lt!607586 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45825 0))(
  ( (Unit!45826) )
))
(declare-fun lt!607582 () Unit!45825)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93812 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45825)

(assert (=> b!1379448 (= lt!607582 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun b!1379449 () Bool)

(declare-fun e!781474 () Bool)

(assert (=> b!1379449 (= e!781474 (not e!781475))))

(declare-fun res!921994 () Bool)

(assert (=> b!1379449 (=> res!921994 e!781475)))

(declare-fun lt!607590 () (_ BitVec 32))

(declare-fun lt!607587 () (_ BitVec 32))

(assert (=> b!1379449 (= res!921994 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45851 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!607587 (bvsub lt!607590 #b00000000000000000000000000000001)))))))

(declare-fun lt!607588 () (_ BitVec 32))

(declare-fun lt!607584 () (_ BitVec 32))

(assert (=> b!1379449 (= (bvadd lt!607588 lt!607584) lt!607587)))

(assert (=> b!1379449 (= lt!607587 (arrayCountValidKeys!0 lt!607586 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379449 (= lt!607588 (arrayCountValidKeys!0 lt!607586 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607585 () Unit!45825)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45825)

(assert (=> b!1379449 (= lt!607585 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607586 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607583 () (_ BitVec 32))

(declare-fun lt!607589 () (_ BitVec 32))

(assert (=> b!1379449 (= (bvadd lt!607583 lt!607589) lt!607590)))

(assert (=> b!1379449 (= lt!607590 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379449 (= lt!607583 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607591 () Unit!45825)

(assert (=> b!1379449 (= lt!607591 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379450 () Bool)

(assert (=> b!1379450 (= e!781472 e!781474)))

(declare-fun res!921995 () Bool)

(assert (=> b!1379450 (=> (not res!921995) (not e!781474))))

(assert (=> b!1379450 (= res!921995 (and (= lt!607584 (bvsub lt!607589 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379450 (= lt!607584 (arrayCountValidKeys!0 lt!607586 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379450 (= lt!607589 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379450 (= lt!607586 (array!93813 (store (arr!45300 a!4094) i!1451 k!2953) (size!45851 a!4094)))))

(declare-fun b!1379451 () Bool)

(declare-fun res!921996 () Bool)

(assert (=> b!1379451 (=> (not res!921996) (not e!781472))))

(assert (=> b!1379451 (= res!921996 (and (bvslt (size!45851 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45851 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379452 () Bool)

(declare-fun res!921997 () Bool)

(assert (=> b!1379452 (=> (not res!921997) (not e!781472))))

(assert (=> b!1379452 (= res!921997 (validKeyInArray!0 (select (arr!45300 a!4094) i!1451)))))

(assert (= (and start!117300 res!921999) b!1379452))

(assert (= (and b!1379452 res!921997) b!1379447))

(assert (= (and b!1379447 res!921998) b!1379451))

(assert (= (and b!1379451 res!921996) b!1379450))

(assert (= (and b!1379450 res!921995) b!1379449))

(assert (= (and b!1379449 (not res!921994)) b!1379448))

(declare-fun m!1264645 () Bool)

(assert (=> b!1379450 m!1264645))

(declare-fun m!1264647 () Bool)

(assert (=> b!1379450 m!1264647))

(declare-fun m!1264649 () Bool)

(assert (=> b!1379450 m!1264649))

(declare-fun m!1264651 () Bool)

(assert (=> start!117300 m!1264651))

(declare-fun m!1264653 () Bool)

(assert (=> b!1379447 m!1264653))

(declare-fun m!1264655 () Bool)

(assert (=> b!1379452 m!1264655))

(assert (=> b!1379452 m!1264655))

(declare-fun m!1264657 () Bool)

(assert (=> b!1379452 m!1264657))

(declare-fun m!1264659 () Bool)

(assert (=> b!1379449 m!1264659))

(declare-fun m!1264661 () Bool)

(assert (=> b!1379449 m!1264661))

(declare-fun m!1264663 () Bool)

(assert (=> b!1379449 m!1264663))

(declare-fun m!1264665 () Bool)

(assert (=> b!1379449 m!1264665))

(declare-fun m!1264667 () Bool)

(assert (=> b!1379449 m!1264667))

(declare-fun m!1264669 () Bool)

(assert (=> b!1379449 m!1264669))

(declare-fun m!1264671 () Bool)

(assert (=> b!1379448 m!1264671))

(declare-fun m!1264673 () Bool)

(assert (=> b!1379448 m!1264673))

(declare-fun m!1264675 () Bool)

(assert (=> b!1379448 m!1264675))

(push 1)

(assert (not b!1379447))

(assert (not b!1379452))

(assert (not start!117300))

(assert (not b!1379449))

(assert (not b!1379448))

(assert (not b!1379450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

