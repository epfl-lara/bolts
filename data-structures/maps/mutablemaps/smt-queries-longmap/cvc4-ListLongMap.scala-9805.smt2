; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116520 () Bool)

(assert start!116520)

(declare-fun b!1373986 () Bool)

(declare-fun res!917289 () Bool)

(declare-fun e!778396 () Bool)

(assert (=> b!1373986 (=> (not res!917289) (not e!778396))))

(declare-datatypes ((array!93143 0))(
  ( (array!93144 (arr!44973 (Array (_ BitVec 32) (_ BitVec 64))) (size!45524 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93143)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373986 (= res!917289 (and (bvslt (size!45524 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45524 a!4142))))))

(declare-fun b!1373984 () Bool)

(declare-fun res!917291 () Bool)

(assert (=> b!1373984 (=> (not res!917291) (not e!778396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373984 (= res!917291 (validKeyInArray!0 (select (arr!44973 a!4142) i!1457)))))

(declare-fun b!1373987 () Bool)

(assert (=> b!1373987 (= e!778396 false)))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun lt!603163 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93143 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373987 (= lt!603163 (arrayCountValidKeys!0 (array!93144 (store (arr!44973 a!4142) i!1457 k!2959) (size!45524 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603164 () (_ BitVec 32))

(assert (=> b!1373987 (= lt!603164 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373985 () Bool)

(declare-fun res!917292 () Bool)

(assert (=> b!1373985 (=> (not res!917292) (not e!778396))))

(assert (=> b!1373985 (= res!917292 (not (validKeyInArray!0 k!2959)))))

(declare-fun res!917290 () Bool)

(assert (=> start!116520 (=> (not res!917290) (not e!778396))))

(assert (=> start!116520 (= res!917290 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45524 a!4142))))))

(assert (=> start!116520 e!778396))

(assert (=> start!116520 true))

(declare-fun array_inv!33918 (array!93143) Bool)

(assert (=> start!116520 (array_inv!33918 a!4142)))

(assert (= (and start!116520 res!917290) b!1373984))

(assert (= (and b!1373984 res!917291) b!1373985))

(assert (= (and b!1373985 res!917292) b!1373986))

(assert (= (and b!1373986 res!917289) b!1373987))

(declare-fun m!1257239 () Bool)

(assert (=> b!1373984 m!1257239))

(assert (=> b!1373984 m!1257239))

(declare-fun m!1257241 () Bool)

(assert (=> b!1373984 m!1257241))

(declare-fun m!1257243 () Bool)

(assert (=> b!1373987 m!1257243))

(declare-fun m!1257245 () Bool)

(assert (=> b!1373987 m!1257245))

(declare-fun m!1257247 () Bool)

(assert (=> b!1373987 m!1257247))

(declare-fun m!1257249 () Bool)

(assert (=> b!1373985 m!1257249))

(declare-fun m!1257251 () Bool)

(assert (=> start!116520 m!1257251))

(push 1)

(assert (not b!1373984))

(assert (not b!1373985))

(assert (not b!1373987))

(assert (not start!116520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

