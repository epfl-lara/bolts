; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122550 () Bool)

(assert start!122550)

(declare-fun b!1419156 () Bool)

(declare-fun res!954792 () Bool)

(declare-fun e!802996 () Bool)

(assert (=> b!1419156 (=> (not res!954792) (not e!802996))))

(declare-datatypes ((array!96872 0))(
  ( (array!96873 (arr!46751 (Array (_ BitVec 32) (_ BitVec 64))) (size!47302 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96872)

(declare-datatypes ((List!33441 0))(
  ( (Nil!33438) (Cons!33437 (h!34736 (_ BitVec 64)) (t!48142 List!33441)) )
))
(declare-fun arrayNoDuplicates!0 (array!96872 (_ BitVec 32) List!33441) Bool)

(assert (=> b!1419156 (= res!954792 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33438))))

(declare-fun b!1419157 () Bool)

(declare-fun res!954785 () Bool)

(assert (=> b!1419157 (=> (not res!954785) (not e!802996))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419157 (= res!954785 (validKeyInArray!0 (select (arr!46751 a!2831) i!982)))))

(declare-fun res!954788 () Bool)

(assert (=> start!122550 (=> (not res!954788) (not e!802996))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122550 (= res!954788 (validMask!0 mask!2608))))

(assert (=> start!122550 e!802996))

(assert (=> start!122550 true))

(declare-fun array_inv!35696 (array!96872) Bool)

(assert (=> start!122550 (array_inv!35696 a!2831)))

(declare-fun b!1419158 () Bool)

(declare-fun res!954787 () Bool)

(assert (=> b!1419158 (=> (not res!954787) (not e!802996))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11058 0))(
  ( (MissingZero!11058 (index!46623 (_ BitVec 32))) (Found!11058 (index!46624 (_ BitVec 32))) (Intermediate!11058 (undefined!11870 Bool) (index!46625 (_ BitVec 32)) (x!128297 (_ BitVec 32))) (Undefined!11058) (MissingVacant!11058 (index!46626 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96872 (_ BitVec 32)) SeekEntryResult!11058)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419158 (= res!954787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46751 a!2831) j!81) mask!2608) (select (arr!46751 a!2831) j!81) a!2831 mask!2608) (Intermediate!11058 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419159 () Bool)

(declare-fun res!954786 () Bool)

(assert (=> b!1419159 (=> (not res!954786) (not e!802996))))

(assert (=> b!1419159 (= res!954786 (validKeyInArray!0 (select (arr!46751 a!2831) j!81)))))

(declare-fun b!1419160 () Bool)

(declare-fun res!954789 () Bool)

(assert (=> b!1419160 (=> (not res!954789) (not e!802996))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419160 (= res!954789 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47302 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47302 a!2831))))))

(declare-fun b!1419161 () Bool)

(assert (=> b!1419161 (= e!802996 false)))

(declare-fun lt!625684 () (_ BitVec 32))

(assert (=> b!1419161 (= lt!625684 (toIndex!0 (select (store (arr!46751 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419162 () Bool)

(declare-fun res!954790 () Bool)

(assert (=> b!1419162 (=> (not res!954790) (not e!802996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96872 (_ BitVec 32)) Bool)

(assert (=> b!1419162 (= res!954790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419163 () Bool)

(declare-fun res!954791 () Bool)

(assert (=> b!1419163 (=> (not res!954791) (not e!802996))))

(assert (=> b!1419163 (= res!954791 (and (= (size!47302 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47302 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47302 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122550 res!954788) b!1419163))

(assert (= (and b!1419163 res!954791) b!1419157))

(assert (= (and b!1419157 res!954785) b!1419159))

(assert (= (and b!1419159 res!954786) b!1419162))

(assert (= (and b!1419162 res!954790) b!1419156))

(assert (= (and b!1419156 res!954792) b!1419160))

(assert (= (and b!1419160 res!954789) b!1419158))

(assert (= (and b!1419158 res!954787) b!1419161))

(declare-fun m!1309729 () Bool)

(assert (=> b!1419156 m!1309729))

(declare-fun m!1309731 () Bool)

(assert (=> b!1419159 m!1309731))

(assert (=> b!1419159 m!1309731))

(declare-fun m!1309733 () Bool)

(assert (=> b!1419159 m!1309733))

(declare-fun m!1309735 () Bool)

(assert (=> start!122550 m!1309735))

(declare-fun m!1309737 () Bool)

(assert (=> start!122550 m!1309737))

(assert (=> b!1419158 m!1309731))

(assert (=> b!1419158 m!1309731))

(declare-fun m!1309739 () Bool)

(assert (=> b!1419158 m!1309739))

(assert (=> b!1419158 m!1309739))

(assert (=> b!1419158 m!1309731))

(declare-fun m!1309741 () Bool)

(assert (=> b!1419158 m!1309741))

(declare-fun m!1309743 () Bool)

(assert (=> b!1419157 m!1309743))

(assert (=> b!1419157 m!1309743))

(declare-fun m!1309745 () Bool)

(assert (=> b!1419157 m!1309745))

(declare-fun m!1309747 () Bool)

(assert (=> b!1419162 m!1309747))

(declare-fun m!1309749 () Bool)

(assert (=> b!1419161 m!1309749))

(declare-fun m!1309751 () Bool)

(assert (=> b!1419161 m!1309751))

(assert (=> b!1419161 m!1309751))

(declare-fun m!1309753 () Bool)

(assert (=> b!1419161 m!1309753))

(check-sat (not b!1419162) (not b!1419159) (not b!1419158) (not start!122550) (not b!1419161) (not b!1419157) (not b!1419156))
