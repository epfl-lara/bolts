; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118078 () Bool)

(assert start!118078)

(declare-fun b!1382197 () Bool)

(declare-fun e!783475 () Bool)

(assert (=> b!1382197 (= e!783475 false)))

(declare-fun lt!608326 () Bool)

(declare-datatypes ((array!94358 0))(
  ( (array!94359 (arr!45556 (Array (_ BitVec 32) (_ BitVec 64))) (size!46107 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94358)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94358 (_ BitVec 32)) Bool)

(assert (=> b!1382197 (= lt!608326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923897 () Bool)

(assert (=> start!118078 (=> (not res!923897) (not e!783475))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118078 (= res!923897 (validMask!0 mask!3034))))

(assert (=> start!118078 e!783475))

(assert (=> start!118078 true))

(declare-fun array_inv!34501 (array!94358) Bool)

(assert (=> start!118078 (array_inv!34501 a!2971)))

(declare-fun b!1382194 () Bool)

(declare-fun res!923896 () Bool)

(assert (=> b!1382194 (=> (not res!923896) (not e!783475))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382194 (= res!923896 (and (= (size!46107 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46107 a!2971))))))

(declare-fun b!1382195 () Bool)

(declare-fun res!923895 () Bool)

(assert (=> b!1382195 (=> (not res!923895) (not e!783475))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382195 (= res!923895 (validKeyInArray!0 (select (arr!45556 a!2971) i!1094)))))

(declare-fun b!1382196 () Bool)

(declare-fun res!923898 () Bool)

(assert (=> b!1382196 (=> (not res!923898) (not e!783475))))

(declare-datatypes ((List!32270 0))(
  ( (Nil!32267) (Cons!32266 (h!33475 (_ BitVec 64)) (t!46971 List!32270)) )
))
(declare-fun arrayNoDuplicates!0 (array!94358 (_ BitVec 32) List!32270) Bool)

(assert (=> b!1382196 (= res!923898 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32267))))

(assert (= (and start!118078 res!923897) b!1382194))

(assert (= (and b!1382194 res!923896) b!1382195))

(assert (= (and b!1382195 res!923895) b!1382196))

(assert (= (and b!1382196 res!923898) b!1382197))

(declare-fun m!1267395 () Bool)

(assert (=> b!1382197 m!1267395))

(declare-fun m!1267397 () Bool)

(assert (=> start!118078 m!1267397))

(declare-fun m!1267399 () Bool)

(assert (=> start!118078 m!1267399))

(declare-fun m!1267401 () Bool)

(assert (=> b!1382195 m!1267401))

(assert (=> b!1382195 m!1267401))

(declare-fun m!1267403 () Bool)

(assert (=> b!1382195 m!1267403))

(declare-fun m!1267405 () Bool)

(assert (=> b!1382196 m!1267405))

(push 1)

(assert (not start!118078))

(assert (not b!1382196))

(assert (not b!1382197))

(assert (not b!1382195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

