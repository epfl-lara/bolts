; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103442 () Bool)

(assert start!103442)

(declare-fun res!827446 () Bool)

(declare-fun e!702844 () Bool)

(assert (=> start!103442 (=> (not res!827446) (not e!702844))))

(declare-datatypes ((array!79873 0))(
  ( (array!79874 (arr!38530 (Array (_ BitVec 32) (_ BitVec 64))) (size!39067 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79873)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103442 (= res!827446 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39067 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39067 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103442 e!702844))

(assert (=> start!103442 true))

(declare-fun array_inv!29306 (array!79873) Bool)

(assert (=> start!103442 (array_inv!29306 a!3575)))

(declare-fun b!1240036 () Bool)

(declare-fun res!827447 () Bool)

(assert (=> b!1240036 (=> (not res!827447) (not e!702844))))

(assert (=> b!1240036 (= res!827447 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39067 a!3575))))))

(declare-fun b!1240037 () Bool)

(declare-fun res!827449 () Bool)

(assert (=> b!1240037 (=> (not res!827449) (not e!702844))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240037 (= res!827449 (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)))))

(declare-fun b!1240035 () Bool)

(declare-fun res!827448 () Bool)

(assert (=> b!1240035 (=> (not res!827448) (not e!702844))))

(assert (=> b!1240035 (= res!827448 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240038 () Bool)

(assert (=> b!1240038 (= e!702844 (not true))))

(assert (=> b!1240038 (arrayContainsKey!0 a!3575 k0!2808 newFrom!281)))

(declare-datatypes ((Unit!41151 0))(
  ( (Unit!41152) )
))
(declare-fun lt!561829 () Unit!41151)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79873 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!41151)

(assert (=> b!1240038 (= lt!561829 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001) newFrom!281))))

(assert (= (and start!103442 res!827446) b!1240035))

(assert (= (and b!1240035 res!827448) b!1240036))

(assert (= (and b!1240036 res!827447) b!1240037))

(assert (= (and b!1240037 res!827449) b!1240038))

(declare-fun m!1143435 () Bool)

(assert (=> start!103442 m!1143435))

(declare-fun m!1143437 () Bool)

(assert (=> b!1240037 m!1143437))

(declare-fun m!1143439 () Bool)

(assert (=> b!1240035 m!1143439))

(declare-fun m!1143441 () Bool)

(assert (=> b!1240038 m!1143441))

(declare-fun m!1143443 () Bool)

(assert (=> b!1240038 m!1143443))

(check-sat (not start!103442) (not b!1240037) (not b!1240038) (not b!1240035))
