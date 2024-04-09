; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119130 () Bool)

(assert start!119130)

(declare-fun b!1389329 () Bool)

(declare-fun res!929601 () Bool)

(declare-fun e!787015 () Bool)

(assert (=> b!1389329 (=> (not res!929601) (not e!787015))))

(declare-datatypes ((array!94985 0))(
  ( (array!94986 (arr!45854 (Array (_ BitVec 32) (_ BitVec 64))) (size!46405 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94985)

(declare-datatypes ((List!32553 0))(
  ( (Nil!32550) (Cons!32549 (h!33767 (_ BitVec 64)) (t!47254 List!32553)) )
))
(declare-fun arrayNoDuplicates!0 (array!94985 (_ BitVec 32) List!32553) Bool)

(assert (=> b!1389329 (= res!929601 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32550))))

(declare-fun b!1389330 () Bool)

(declare-fun res!929600 () Bool)

(assert (=> b!1389330 (=> (not res!929600) (not e!787015))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94985 (_ BitVec 32)) Bool)

(assert (=> b!1389330 (= res!929600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389331 () Bool)

(declare-fun res!929602 () Bool)

(assert (=> b!1389331 (=> (not res!929602) (not e!787015))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389331 (= res!929602 (validKeyInArray!0 (select (arr!45854 a!2901) i!1037)))))

(declare-fun b!1389332 () Bool)

(assert (=> b!1389332 (= e!787015 false)))

(declare-fun lt!610501 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389332 (= lt!610501 (toIndex!0 (select (arr!45854 a!2901) j!112) mask!2840))))

(declare-fun b!1389334 () Bool)

(declare-fun res!929599 () Bool)

(assert (=> b!1389334 (=> (not res!929599) (not e!787015))))

(assert (=> b!1389334 (= res!929599 (validKeyInArray!0 (select (arr!45854 a!2901) j!112)))))

(declare-fun b!1389333 () Bool)

(declare-fun res!929603 () Bool)

(assert (=> b!1389333 (=> (not res!929603) (not e!787015))))

(assert (=> b!1389333 (= res!929603 (and (= (size!46405 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46405 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46405 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929604 () Bool)

(assert (=> start!119130 (=> (not res!929604) (not e!787015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119130 (= res!929604 (validMask!0 mask!2840))))

(assert (=> start!119130 e!787015))

(assert (=> start!119130 true))

(declare-fun array_inv!34799 (array!94985) Bool)

(assert (=> start!119130 (array_inv!34799 a!2901)))

(assert (= (and start!119130 res!929604) b!1389333))

(assert (= (and b!1389333 res!929603) b!1389331))

(assert (= (and b!1389331 res!929602) b!1389334))

(assert (= (and b!1389334 res!929599) b!1389330))

(assert (= (and b!1389330 res!929600) b!1389329))

(assert (= (and b!1389329 res!929601) b!1389332))

(declare-fun m!1275029 () Bool)

(assert (=> b!1389331 m!1275029))

(assert (=> b!1389331 m!1275029))

(declare-fun m!1275031 () Bool)

(assert (=> b!1389331 m!1275031))

(declare-fun m!1275033 () Bool)

(assert (=> b!1389330 m!1275033))

(declare-fun m!1275035 () Bool)

(assert (=> b!1389329 m!1275035))

(declare-fun m!1275037 () Bool)

(assert (=> b!1389332 m!1275037))

(assert (=> b!1389332 m!1275037))

(declare-fun m!1275039 () Bool)

(assert (=> b!1389332 m!1275039))

(assert (=> b!1389334 m!1275037))

(assert (=> b!1389334 m!1275037))

(declare-fun m!1275041 () Bool)

(assert (=> b!1389334 m!1275041))

(declare-fun m!1275043 () Bool)

(assert (=> start!119130 m!1275043))

(declare-fun m!1275045 () Bool)

(assert (=> start!119130 m!1275045))

(check-sat (not b!1389329) (not start!119130) (not b!1389332) (not b!1389330) (not b!1389331) (not b!1389334))
