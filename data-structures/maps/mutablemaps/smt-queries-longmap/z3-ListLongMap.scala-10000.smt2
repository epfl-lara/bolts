; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118080 () Bool)

(assert start!118080)

(declare-fun b!1382206 () Bool)

(declare-fun res!923908 () Bool)

(declare-fun e!783481 () Bool)

(assert (=> b!1382206 (=> (not res!923908) (not e!783481))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94360 0))(
  ( (array!94361 (arr!45557 (Array (_ BitVec 32) (_ BitVec 64))) (size!46108 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94360)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382206 (= res!923908 (and (= (size!46108 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46108 a!2971))))))

(declare-fun b!1382209 () Bool)

(assert (=> b!1382209 (= e!783481 false)))

(declare-fun lt!608329 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94360 (_ BitVec 32)) Bool)

(assert (=> b!1382209 (= lt!608329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923909 () Bool)

(assert (=> start!118080 (=> (not res!923909) (not e!783481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118080 (= res!923909 (validMask!0 mask!3034))))

(assert (=> start!118080 e!783481))

(assert (=> start!118080 true))

(declare-fun array_inv!34502 (array!94360) Bool)

(assert (=> start!118080 (array_inv!34502 a!2971)))

(declare-fun b!1382207 () Bool)

(declare-fun res!923910 () Bool)

(assert (=> b!1382207 (=> (not res!923910) (not e!783481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382207 (= res!923910 (validKeyInArray!0 (select (arr!45557 a!2971) i!1094)))))

(declare-fun b!1382208 () Bool)

(declare-fun res!923907 () Bool)

(assert (=> b!1382208 (=> (not res!923907) (not e!783481))))

(declare-datatypes ((List!32271 0))(
  ( (Nil!32268) (Cons!32267 (h!33476 (_ BitVec 64)) (t!46972 List!32271)) )
))
(declare-fun arrayNoDuplicates!0 (array!94360 (_ BitVec 32) List!32271) Bool)

(assert (=> b!1382208 (= res!923907 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32268))))

(assert (= (and start!118080 res!923909) b!1382206))

(assert (= (and b!1382206 res!923908) b!1382207))

(assert (= (and b!1382207 res!923910) b!1382208))

(assert (= (and b!1382208 res!923907) b!1382209))

(declare-fun m!1267407 () Bool)

(assert (=> b!1382209 m!1267407))

(declare-fun m!1267409 () Bool)

(assert (=> start!118080 m!1267409))

(declare-fun m!1267411 () Bool)

(assert (=> start!118080 m!1267411))

(declare-fun m!1267413 () Bool)

(assert (=> b!1382207 m!1267413))

(assert (=> b!1382207 m!1267413))

(declare-fun m!1267415 () Bool)

(assert (=> b!1382207 m!1267415))

(declare-fun m!1267417 () Bool)

(assert (=> b!1382208 m!1267417))

(check-sat (not b!1382209) (not start!118080) (not b!1382208) (not b!1382207))
