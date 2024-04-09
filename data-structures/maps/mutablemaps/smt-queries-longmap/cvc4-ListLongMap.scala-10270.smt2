; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120824 () Bool)

(assert start!120824)

(declare-fun b!1405303 () Bool)

(declare-fun res!943629 () Bool)

(declare-fun e!795518 () Bool)

(assert (=> b!1405303 (=> (not res!943629) (not e!795518))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96049 0))(
  ( (array!96050 (arr!46368 (Array (_ BitVec 32) (_ BitVec 64))) (size!46919 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96049)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405303 (= res!943629 (and (= (size!46919 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46919 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46919 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405304 () Bool)

(assert (=> b!1405304 (= e!795518 (not true))))

(declare-fun e!795516 () Bool)

(assert (=> b!1405304 e!795516))

(declare-fun res!943630 () Bool)

(assert (=> b!1405304 (=> (not res!943630) (not e!795516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96049 (_ BitVec 32)) Bool)

(assert (=> b!1405304 (= res!943630 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47326 0))(
  ( (Unit!47327) )
))
(declare-fun lt!618951 () Unit!47326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47326)

(assert (=> b!1405304 (= lt!618951 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10701 0))(
  ( (MissingZero!10701 (index!45180 (_ BitVec 32))) (Found!10701 (index!45181 (_ BitVec 32))) (Intermediate!10701 (undefined!11513 Bool) (index!45182 (_ BitVec 32)) (x!126799 (_ BitVec 32))) (Undefined!10701) (MissingVacant!10701 (index!45183 (_ BitVec 32))) )
))
(declare-fun lt!618952 () SeekEntryResult!10701)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96049 (_ BitVec 32)) SeekEntryResult!10701)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405304 (= lt!618952 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46368 a!2901) j!112) mask!2840) (select (arr!46368 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405305 () Bool)

(declare-fun res!943635 () Bool)

(assert (=> b!1405305 (=> (not res!943635) (not e!795518))))

(declare-datatypes ((List!33067 0))(
  ( (Nil!33064) (Cons!33063 (h!34317 (_ BitVec 64)) (t!47768 List!33067)) )
))
(declare-fun arrayNoDuplicates!0 (array!96049 (_ BitVec 32) List!33067) Bool)

(assert (=> b!1405305 (= res!943635 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33064))))

(declare-fun b!1405306 () Bool)

(declare-fun res!943631 () Bool)

(assert (=> b!1405306 (=> (not res!943631) (not e!795518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405306 (= res!943631 (validKeyInArray!0 (select (arr!46368 a!2901) j!112)))))

(declare-fun b!1405307 () Bool)

(declare-fun res!943634 () Bool)

(assert (=> b!1405307 (=> (not res!943634) (not e!795518))))

(assert (=> b!1405307 (= res!943634 (validKeyInArray!0 (select (arr!46368 a!2901) i!1037)))))

(declare-fun b!1405308 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96049 (_ BitVec 32)) SeekEntryResult!10701)

(assert (=> b!1405308 (= e!795516 (= (seekEntryOrOpen!0 (select (arr!46368 a!2901) j!112) a!2901 mask!2840) (Found!10701 j!112)))))

(declare-fun b!1405309 () Bool)

(declare-fun res!943632 () Bool)

(assert (=> b!1405309 (=> (not res!943632) (not e!795518))))

(assert (=> b!1405309 (= res!943632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943633 () Bool)

(assert (=> start!120824 (=> (not res!943633) (not e!795518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120824 (= res!943633 (validMask!0 mask!2840))))

(assert (=> start!120824 e!795518))

(assert (=> start!120824 true))

(declare-fun array_inv!35313 (array!96049) Bool)

(assert (=> start!120824 (array_inv!35313 a!2901)))

(assert (= (and start!120824 res!943633) b!1405303))

(assert (= (and b!1405303 res!943629) b!1405307))

(assert (= (and b!1405307 res!943634) b!1405306))

(assert (= (and b!1405306 res!943631) b!1405309))

(assert (= (and b!1405309 res!943632) b!1405305))

(assert (= (and b!1405305 res!943635) b!1405304))

(assert (= (and b!1405304 res!943630) b!1405308))

(declare-fun m!1294131 () Bool)

(assert (=> b!1405306 m!1294131))

(assert (=> b!1405306 m!1294131))

(declare-fun m!1294133 () Bool)

(assert (=> b!1405306 m!1294133))

(declare-fun m!1294135 () Bool)

(assert (=> b!1405307 m!1294135))

(assert (=> b!1405307 m!1294135))

(declare-fun m!1294137 () Bool)

(assert (=> b!1405307 m!1294137))

(assert (=> b!1405304 m!1294131))

(declare-fun m!1294139 () Bool)

(assert (=> b!1405304 m!1294139))

(assert (=> b!1405304 m!1294131))

(declare-fun m!1294141 () Bool)

(assert (=> b!1405304 m!1294141))

(assert (=> b!1405304 m!1294139))

(assert (=> b!1405304 m!1294131))

(declare-fun m!1294143 () Bool)

(assert (=> b!1405304 m!1294143))

(declare-fun m!1294145 () Bool)

(assert (=> b!1405304 m!1294145))

(declare-fun m!1294147 () Bool)

(assert (=> b!1405305 m!1294147))

(assert (=> b!1405308 m!1294131))

(assert (=> b!1405308 m!1294131))

(declare-fun m!1294149 () Bool)

(assert (=> b!1405308 m!1294149))

(declare-fun m!1294151 () Bool)

(assert (=> b!1405309 m!1294151))

(declare-fun m!1294153 () Bool)

(assert (=> start!120824 m!1294153))

(declare-fun m!1294155 () Bool)

(assert (=> start!120824 m!1294155))

(push 1)

(assert (not b!1405306))

(assert (not start!120824))

(assert (not b!1405308))

(assert (not b!1405304))

(assert (not b!1405309))

(assert (not b!1405305))

(assert (not b!1405307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

