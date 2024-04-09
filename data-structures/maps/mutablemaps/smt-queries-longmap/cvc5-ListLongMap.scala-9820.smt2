; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116624 () Bool)

(assert start!116624)

(declare-fun res!917887 () Bool)

(declare-fun e!778772 () Bool)

(assert (=> start!116624 (=> (not res!917887) (not e!778772))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93232 0))(
  ( (array!93233 (arr!45016 (Array (_ BitVec 32) (_ BitVec 64))) (size!45567 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93232)

(assert (=> start!116624 (= res!917887 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45567 a!4142))))))

(assert (=> start!116624 e!778772))

(assert (=> start!116624 true))

(declare-fun array_inv!33961 (array!93232) Bool)

(assert (=> start!116624 (array_inv!33961 a!4142)))

(declare-fun b!1374640 () Bool)

(assert (=> b!1374640 (= e!778772 (not true))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93232 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374640 (= (arrayCountValidKeys!0 (array!93233 (store (arr!45016 a!4142) i!1457 k!2959) (size!45567 a!4142)) #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45419 0))(
  ( (Unit!45420) )
))
(declare-fun lt!603811 () Unit!45419)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93232 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45419)

(assert (=> b!1374640 (= lt!603811 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4142 i!1457 k!2959 i!1457))))

(declare-fun b!1374637 () Bool)

(declare-fun res!917886 () Bool)

(assert (=> b!1374637 (=> (not res!917886) (not e!778772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374637 (= res!917886 (validKeyInArray!0 (select (arr!45016 a!4142) i!1457)))))

(declare-fun b!1374639 () Bool)

(declare-fun res!917888 () Bool)

(assert (=> b!1374639 (=> (not res!917888) (not e!778772))))

(assert (=> b!1374639 (= res!917888 (bvslt (size!45567 a!4142) #b01111111111111111111111111111111))))

(declare-fun b!1374638 () Bool)

(declare-fun res!917889 () Bool)

(assert (=> b!1374638 (=> (not res!917889) (not e!778772))))

(assert (=> b!1374638 (= res!917889 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116624 res!917887) b!1374637))

(assert (= (and b!1374637 res!917886) b!1374638))

(assert (= (and b!1374638 res!917889) b!1374639))

(assert (= (and b!1374639 res!917888) b!1374640))

(declare-fun m!1258219 () Bool)

(assert (=> start!116624 m!1258219))

(declare-fun m!1258221 () Bool)

(assert (=> b!1374640 m!1258221))

(declare-fun m!1258223 () Bool)

(assert (=> b!1374640 m!1258223))

(declare-fun m!1258225 () Bool)

(assert (=> b!1374640 m!1258225))

(declare-fun m!1258227 () Bool)

(assert (=> b!1374640 m!1258227))

(declare-fun m!1258229 () Bool)

(assert (=> b!1374637 m!1258229))

(assert (=> b!1374637 m!1258229))

(declare-fun m!1258231 () Bool)

(assert (=> b!1374637 m!1258231))

(declare-fun m!1258233 () Bool)

(assert (=> b!1374638 m!1258233))

(push 1)

(assert (not b!1374637))

(assert (not start!116624))

(assert (not b!1374640))

(assert (not b!1374638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

