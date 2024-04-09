; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116486 () Bool)

(assert start!116486)

(declare-fun b!1373782 () Bool)

(declare-fun res!917087 () Bool)

(declare-fun e!778294 () Bool)

(assert (=> b!1373782 (=> (not res!917087) (not e!778294))))

(declare-datatypes ((array!93109 0))(
  ( (array!93110 (arr!44956 (Array (_ BitVec 32) (_ BitVec 64))) (size!45507 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93109)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373782 (= res!917087 (and (bvslt (size!45507 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45507 a!4142))))))

(declare-fun b!1373781 () Bool)

(declare-fun res!917086 () Bool)

(assert (=> b!1373781 (=> (not res!917086) (not e!778294))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373781 (= res!917086 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373783 () Bool)

(assert (=> b!1373783 (= e!778294 false)))

(declare-fun lt!603062 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93109 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373783 (= lt!603062 (arrayCountValidKeys!0 (array!93110 (store (arr!44956 a!4142) i!1457 k!2959) (size!45507 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603061 () (_ BitVec 32))

(assert (=> b!1373783 (= lt!603061 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun res!917088 () Bool)

(assert (=> start!116486 (=> (not res!917088) (not e!778294))))

(assert (=> start!116486 (= res!917088 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45507 a!4142))))))

(assert (=> start!116486 e!778294))

(assert (=> start!116486 true))

(declare-fun array_inv!33901 (array!93109) Bool)

(assert (=> start!116486 (array_inv!33901 a!4142)))

(declare-fun b!1373780 () Bool)

(declare-fun res!917085 () Bool)

(assert (=> b!1373780 (=> (not res!917085) (not e!778294))))

(assert (=> b!1373780 (= res!917085 (validKeyInArray!0 (select (arr!44956 a!4142) i!1457)))))

(assert (= (and start!116486 res!917088) b!1373780))

(assert (= (and b!1373780 res!917085) b!1373781))

(assert (= (and b!1373781 res!917086) b!1373782))

(assert (= (and b!1373782 res!917087) b!1373783))

(declare-fun m!1257001 () Bool)

(assert (=> b!1373781 m!1257001))

(declare-fun m!1257003 () Bool)

(assert (=> b!1373783 m!1257003))

(declare-fun m!1257005 () Bool)

(assert (=> b!1373783 m!1257005))

(declare-fun m!1257007 () Bool)

(assert (=> b!1373783 m!1257007))

(declare-fun m!1257009 () Bool)

(assert (=> start!116486 m!1257009))

(declare-fun m!1257011 () Bool)

(assert (=> b!1373780 m!1257011))

(assert (=> b!1373780 m!1257011))

(declare-fun m!1257013 () Bool)

(assert (=> b!1373780 m!1257013))

(push 1)

(assert (not b!1373781))

(assert (not start!116486))

(assert (not b!1373780))

(assert (not b!1373783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

