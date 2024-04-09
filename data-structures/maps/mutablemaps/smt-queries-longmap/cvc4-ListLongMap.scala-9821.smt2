; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116634 () Bool)

(assert start!116634)

(declare-fun b!1374700 () Bool)

(declare-fun e!778802 () Bool)

(assert (=> b!1374700 (= e!778802 (not true))))

(declare-datatypes ((array!93242 0))(
  ( (array!93243 (arr!45021 (Array (_ BitVec 32) (_ BitVec 64))) (size!45572 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93242)

(declare-fun i!1457 () (_ BitVec 32))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93242 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374700 (= (arrayCountValidKeys!0 (array!93243 (store (arr!45021 a!4142) i!1457 k!2959) (size!45572 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45429 0))(
  ( (Unit!45430) )
))
(declare-fun lt!603826 () Unit!45429)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93242 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45429)

(assert (=> b!1374700 (= lt!603826 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374697 () Bool)

(declare-fun res!917948 () Bool)

(assert (=> b!1374697 (=> (not res!917948) (not e!778802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374697 (= res!917948 (validKeyInArray!0 (select (arr!45021 a!4142) i!1457)))))

(declare-fun b!1374699 () Bool)

(declare-fun res!917949 () Bool)

(assert (=> b!1374699 (=> (not res!917949) (not e!778802))))

(assert (=> b!1374699 (= res!917949 (bvslt (size!45572 a!4142) #b01111111111111111111111111111111))))

(declare-fun res!917947 () Bool)

(assert (=> start!116634 (=> (not res!917947) (not e!778802))))

(assert (=> start!116634 (= res!917947 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45572 a!4142))))))

(assert (=> start!116634 e!778802))

(assert (=> start!116634 true))

(declare-fun array_inv!33966 (array!93242) Bool)

(assert (=> start!116634 (array_inv!33966 a!4142)))

(declare-fun b!1374698 () Bool)

(declare-fun res!917946 () Bool)

(assert (=> b!1374698 (=> (not res!917946) (not e!778802))))

(assert (=> b!1374698 (= res!917946 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116634 res!917947) b!1374697))

(assert (= (and b!1374697 res!917948) b!1374698))

(assert (= (and b!1374698 res!917946) b!1374699))

(assert (= (and b!1374699 res!917949) b!1374700))

(declare-fun m!1258299 () Bool)

(assert (=> b!1374700 m!1258299))

(declare-fun m!1258301 () Bool)

(assert (=> b!1374700 m!1258301))

(declare-fun m!1258303 () Bool)

(assert (=> b!1374700 m!1258303))

(declare-fun m!1258305 () Bool)

(assert (=> b!1374700 m!1258305))

(declare-fun m!1258307 () Bool)

(assert (=> b!1374697 m!1258307))

(assert (=> b!1374697 m!1258307))

(declare-fun m!1258309 () Bool)

(assert (=> b!1374697 m!1258309))

(declare-fun m!1258311 () Bool)

(assert (=> start!116634 m!1258311))

(declare-fun m!1258313 () Bool)

(assert (=> b!1374698 m!1258313))

(push 1)

(assert (not b!1374700))

(assert (not b!1374698))

(assert (not start!116634))

(assert (not b!1374697))

(check-sat)

