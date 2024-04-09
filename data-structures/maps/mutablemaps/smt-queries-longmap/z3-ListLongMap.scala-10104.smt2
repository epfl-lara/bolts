; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119160 () Bool)

(assert start!119160)

(declare-fun b!1389599 () Bool)

(declare-fun res!929869 () Bool)

(declare-fun e!787106 () Bool)

(assert (=> b!1389599 (=> (not res!929869) (not e!787106))))

(declare-datatypes ((array!95015 0))(
  ( (array!95016 (arr!45869 (Array (_ BitVec 32) (_ BitVec 64))) (size!46420 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95015)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389599 (= res!929869 (validKeyInArray!0 (select (arr!45869 a!2901) i!1037)))))

(declare-fun b!1389600 () Bool)

(declare-fun res!929874 () Bool)

(assert (=> b!1389600 (=> (not res!929874) (not e!787106))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389600 (= res!929874 (validKeyInArray!0 (select (arr!45869 a!2901) j!112)))))

(declare-fun res!929873 () Bool)

(assert (=> start!119160 (=> (not res!929873) (not e!787106))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119160 (= res!929873 (validMask!0 mask!2840))))

(assert (=> start!119160 e!787106))

(assert (=> start!119160 true))

(declare-fun array_inv!34814 (array!95015) Bool)

(assert (=> start!119160 (array_inv!34814 a!2901)))

(declare-fun b!1389601 () Bool)

(declare-fun res!929872 () Bool)

(assert (=> b!1389601 (=> (not res!929872) (not e!787106))))

(declare-datatypes ((List!32568 0))(
  ( (Nil!32565) (Cons!32564 (h!33782 (_ BitVec 64)) (t!47269 List!32568)) )
))
(declare-fun arrayNoDuplicates!0 (array!95015 (_ BitVec 32) List!32568) Bool)

(assert (=> b!1389601 (= res!929872 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32565))))

(declare-fun b!1389602 () Bool)

(declare-fun res!929870 () Bool)

(assert (=> b!1389602 (=> (not res!929870) (not e!787106))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95015 (_ BitVec 32)) Bool)

(assert (=> b!1389602 (= res!929870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389603 () Bool)

(declare-fun res!929871 () Bool)

(assert (=> b!1389603 (=> (not res!929871) (not e!787106))))

(assert (=> b!1389603 (= res!929871 (and (= (size!46420 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46420 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46420 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389604 () Bool)

(assert (=> b!1389604 (= e!787106 false)))

(declare-datatypes ((SeekEntryResult!10208 0))(
  ( (MissingZero!10208 (index!43202 (_ BitVec 32))) (Found!10208 (index!43203 (_ BitVec 32))) (Intermediate!10208 (undefined!11020 Bool) (index!43204 (_ BitVec 32)) (x!124897 (_ BitVec 32))) (Undefined!10208) (MissingVacant!10208 (index!43205 (_ BitVec 32))) )
))
(declare-fun lt!610546 () SeekEntryResult!10208)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95015 (_ BitVec 32)) SeekEntryResult!10208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389604 (= lt!610546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45869 a!2901) j!112) mask!2840) (select (arr!45869 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119160 res!929873) b!1389603))

(assert (= (and b!1389603 res!929871) b!1389599))

(assert (= (and b!1389599 res!929869) b!1389600))

(assert (= (and b!1389600 res!929874) b!1389602))

(assert (= (and b!1389602 res!929870) b!1389601))

(assert (= (and b!1389601 res!929872) b!1389604))

(declare-fun m!1275319 () Bool)

(assert (=> b!1389599 m!1275319))

(assert (=> b!1389599 m!1275319))

(declare-fun m!1275321 () Bool)

(assert (=> b!1389599 m!1275321))

(declare-fun m!1275323 () Bool)

(assert (=> b!1389600 m!1275323))

(assert (=> b!1389600 m!1275323))

(declare-fun m!1275325 () Bool)

(assert (=> b!1389600 m!1275325))

(declare-fun m!1275327 () Bool)

(assert (=> b!1389602 m!1275327))

(declare-fun m!1275329 () Bool)

(assert (=> b!1389601 m!1275329))

(declare-fun m!1275331 () Bool)

(assert (=> start!119160 m!1275331))

(declare-fun m!1275333 () Bool)

(assert (=> start!119160 m!1275333))

(assert (=> b!1389604 m!1275323))

(assert (=> b!1389604 m!1275323))

(declare-fun m!1275335 () Bool)

(assert (=> b!1389604 m!1275335))

(assert (=> b!1389604 m!1275335))

(assert (=> b!1389604 m!1275323))

(declare-fun m!1275337 () Bool)

(assert (=> b!1389604 m!1275337))

(check-sat (not start!119160) (not b!1389601) (not b!1389599) (not b!1389604) (not b!1389602) (not b!1389600))
