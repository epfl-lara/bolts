; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116508 () Bool)

(assert start!116508)

(declare-fun b!1373913 () Bool)

(declare-fun res!917219 () Bool)

(declare-fun e!778359 () Bool)

(assert (=> b!1373913 (=> (not res!917219) (not e!778359))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1373913 (= res!917219 (not (validKeyInArray!0 k!2959)))))

(declare-fun b!1373912 () Bool)

(declare-fun res!917220 () Bool)

(assert (=> b!1373912 (=> (not res!917220) (not e!778359))))

(declare-datatypes ((array!93131 0))(
  ( (array!93132 (arr!44967 (Array (_ BitVec 32) (_ BitVec 64))) (size!45518 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93131)

(declare-fun i!1457 () (_ BitVec 32))

(assert (=> b!1373912 (= res!917220 (validKeyInArray!0 (select (arr!44967 a!4142) i!1457)))))

(declare-fun res!917217 () Bool)

(assert (=> start!116508 (=> (not res!917217) (not e!778359))))

(assert (=> start!116508 (= res!917217 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45518 a!4142))))))

(assert (=> start!116508 e!778359))

(assert (=> start!116508 true))

(declare-fun array_inv!33912 (array!93131) Bool)

(assert (=> start!116508 (array_inv!33912 a!4142)))

(declare-fun b!1373915 () Bool)

(assert (=> b!1373915 (= e!778359 false)))

(declare-fun lt!603127 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93131 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1373915 (= lt!603127 (arrayCountValidKeys!0 (array!93132 (store (arr!44967 a!4142) i!1457 k!2959) (size!45518 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603128 () (_ BitVec 32))

(assert (=> b!1373915 (= lt!603128 (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1373914 () Bool)

(declare-fun res!917218 () Bool)

(assert (=> b!1373914 (=> (not res!917218) (not e!778359))))

(assert (=> b!1373914 (= res!917218 (and (bvslt (size!45518 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45518 a!4142))))))

(assert (= (and start!116508 res!917217) b!1373912))

(assert (= (and b!1373912 res!917220) b!1373913))

(assert (= (and b!1373913 res!917219) b!1373914))

(assert (= (and b!1373914 res!917218) b!1373915))

(declare-fun m!1257155 () Bool)

(assert (=> b!1373913 m!1257155))

(declare-fun m!1257157 () Bool)

(assert (=> b!1373912 m!1257157))

(assert (=> b!1373912 m!1257157))

(declare-fun m!1257159 () Bool)

(assert (=> b!1373912 m!1257159))

(declare-fun m!1257161 () Bool)

(assert (=> start!116508 m!1257161))

(declare-fun m!1257163 () Bool)

(assert (=> b!1373915 m!1257163))

(declare-fun m!1257165 () Bool)

(assert (=> b!1373915 m!1257165))

(declare-fun m!1257167 () Bool)

(assert (=> b!1373915 m!1257167))

(push 1)

(assert (not b!1373915))

(assert (not start!116508))

(assert (not b!1373913))

(assert (not b!1373912))

(check-sat)

(pop 1)

(push 1)

