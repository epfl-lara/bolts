; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116514 () Bool)

(assert start!116514)

(declare-fun res!917254 () Bool)

(declare-fun e!778377 () Bool)

(assert (=> start!116514 (=> (not res!917254) (not e!778377))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93137 0))(
  ( (array!93138 (arr!44970 (Array (_ BitVec 32) (_ BitVec 64))) (size!45521 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93137)

(assert (=> start!116514 (= res!917254 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45521 a!4142))))))

(assert (=> start!116514 e!778377))

(assert (=> start!116514 true))

(declare-fun array_inv!33915 (array!93137) Bool)

(assert (=> start!116514 (array_inv!33915 a!4142)))

(declare-fun b!1373949 () Bool)

(declare-fun res!917253 () Bool)

(assert (=> b!1373949 (=> (not res!917253) (not e!778377))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373949 (= res!917253 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373950 () Bool)

(declare-fun res!917256 () Bool)

(assert (=> b!1373950 (=> (not res!917256) (not e!778377))))

(assert (=> b!1373950 (= res!917256 (and (bvslt (size!45521 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45521 a!4142))))))

(declare-fun b!1373948 () Bool)

(declare-fun res!917255 () Bool)

(assert (=> b!1373948 (=> (not res!917255) (not e!778377))))

(assert (=> b!1373948 (= res!917255 (validKeyInArray!0 (select (arr!44970 a!4142) i!1457)))))

(declare-fun b!1373951 () Bool)

(assert (=> b!1373951 (= e!778377 false)))

(declare-fun lt!603145 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93137 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373951 (= lt!603145 (arrayCountValidKeys!0 (array!93138 (store (arr!44970 a!4142) i!1457 k!2959) (size!45521 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603146 () (_ BitVec 32))

(assert (=> b!1373951 (= lt!603146 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and start!116514 res!917254) b!1373948))

(assert (= (and b!1373948 res!917255) b!1373949))

(assert (= (and b!1373949 res!917253) b!1373950))

(assert (= (and b!1373950 res!917256) b!1373951))

(declare-fun m!1257197 () Bool)

(assert (=> start!116514 m!1257197))

(declare-fun m!1257199 () Bool)

(assert (=> b!1373949 m!1257199))

(declare-fun m!1257201 () Bool)

(assert (=> b!1373948 m!1257201))

(assert (=> b!1373948 m!1257201))

(declare-fun m!1257203 () Bool)

(assert (=> b!1373948 m!1257203))

(declare-fun m!1257205 () Bool)

(assert (=> b!1373951 m!1257205))

(declare-fun m!1257207 () Bool)

(assert (=> b!1373951 m!1257207))

(declare-fun m!1257209 () Bool)

(assert (=> b!1373951 m!1257209))

(push 1)

(assert (not b!1373949))

(assert (not b!1373951))

(assert (not start!116514))

(assert (not b!1373948))

(check-sat)

(pop 1)

