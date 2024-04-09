; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122924 () Bool)

(assert start!122924)

(declare-fun b!1425210 () Bool)

(declare-fun e!805307 () Bool)

(assert (=> b!1425210 (= e!805307 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97207 0))(
  ( (array!97208 (arr!46917 (Array (_ BitVec 32) (_ BitVec 64))) (size!47468 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97207)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627736 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425210 (= lt!627736 (toIndex!0 (select (store (arr!46917 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1425211 () Bool)

(declare-fun res!960753 () Bool)

(assert (=> b!1425211 (=> (not res!960753) (not e!805307))))

(declare-datatypes ((List!33607 0))(
  ( (Nil!33604) (Cons!33603 (h!34905 (_ BitVec 64)) (t!48308 List!33607)) )
))
(declare-fun arrayNoDuplicates!0 (array!97207 (_ BitVec 32) List!33607) Bool)

(assert (=> b!1425211 (= res!960753 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33604))))

(declare-fun b!1425212 () Bool)

(declare-fun res!960755 () Bool)

(assert (=> b!1425212 (=> (not res!960755) (not e!805307))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11218 0))(
  ( (MissingZero!11218 (index!47263 (_ BitVec 32))) (Found!11218 (index!47264 (_ BitVec 32))) (Intermediate!11218 (undefined!12030 Bool) (index!47265 (_ BitVec 32)) (x!128903 (_ BitVec 32))) (Undefined!11218) (MissingVacant!11218 (index!47266 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97207 (_ BitVec 32)) SeekEntryResult!11218)

(assert (=> b!1425212 (= res!960755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46917 a!2831) j!81) mask!2608) (select (arr!46917 a!2831) j!81) a!2831 mask!2608) (Intermediate!11218 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425213 () Bool)

(declare-fun res!960759 () Bool)

(assert (=> b!1425213 (=> (not res!960759) (not e!805307))))

(assert (=> b!1425213 (= res!960759 (and (= (size!47468 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47468 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47468 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425214 () Bool)

(declare-fun res!960757 () Bool)

(assert (=> b!1425214 (=> (not res!960757) (not e!805307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425214 (= res!960757 (validKeyInArray!0 (select (arr!46917 a!2831) j!81)))))

(declare-fun res!960754 () Bool)

(assert (=> start!122924 (=> (not res!960754) (not e!805307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122924 (= res!960754 (validMask!0 mask!2608))))

(assert (=> start!122924 e!805307))

(assert (=> start!122924 true))

(declare-fun array_inv!35862 (array!97207) Bool)

(assert (=> start!122924 (array_inv!35862 a!2831)))

(declare-fun b!1425215 () Bool)

(declare-fun res!960756 () Bool)

(assert (=> b!1425215 (=> (not res!960756) (not e!805307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97207 (_ BitVec 32)) Bool)

(assert (=> b!1425215 (= res!960756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425216 () Bool)

(declare-fun res!960758 () Bool)

(assert (=> b!1425216 (=> (not res!960758) (not e!805307))))

(assert (=> b!1425216 (= res!960758 (validKeyInArray!0 (select (arr!46917 a!2831) i!982)))))

(declare-fun b!1425217 () Bool)

(declare-fun res!960752 () Bool)

(assert (=> b!1425217 (=> (not res!960752) (not e!805307))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1425217 (= res!960752 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47468 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47468 a!2831))))))

(assert (= (and start!122924 res!960754) b!1425213))

(assert (= (and b!1425213 res!960759) b!1425216))

(assert (= (and b!1425216 res!960758) b!1425214))

(assert (= (and b!1425214 res!960757) b!1425215))

(assert (= (and b!1425215 res!960756) b!1425211))

(assert (= (and b!1425211 res!960753) b!1425217))

(assert (= (and b!1425217 res!960752) b!1425212))

(assert (= (and b!1425212 res!960755) b!1425210))

(declare-fun m!1315827 () Bool)

(assert (=> b!1425210 m!1315827))

(declare-fun m!1315829 () Bool)

(assert (=> b!1425210 m!1315829))

(assert (=> b!1425210 m!1315829))

(declare-fun m!1315831 () Bool)

(assert (=> b!1425210 m!1315831))

(declare-fun m!1315833 () Bool)

(assert (=> b!1425215 m!1315833))

(declare-fun m!1315835 () Bool)

(assert (=> start!122924 m!1315835))

(declare-fun m!1315837 () Bool)

(assert (=> start!122924 m!1315837))

(declare-fun m!1315839 () Bool)

(assert (=> b!1425214 m!1315839))

(assert (=> b!1425214 m!1315839))

(declare-fun m!1315841 () Bool)

(assert (=> b!1425214 m!1315841))

(declare-fun m!1315843 () Bool)

(assert (=> b!1425216 m!1315843))

(assert (=> b!1425216 m!1315843))

(declare-fun m!1315845 () Bool)

(assert (=> b!1425216 m!1315845))

(declare-fun m!1315847 () Bool)

(assert (=> b!1425211 m!1315847))

(assert (=> b!1425212 m!1315839))

(assert (=> b!1425212 m!1315839))

(declare-fun m!1315849 () Bool)

(assert (=> b!1425212 m!1315849))

(assert (=> b!1425212 m!1315849))

(assert (=> b!1425212 m!1315839))

(declare-fun m!1315851 () Bool)

(assert (=> b!1425212 m!1315851))

(push 1)

(assert (not b!1425211))

(assert (not b!1425210))

(assert (not b!1425216))

(assert (not b!1425212))

(assert (not b!1425215))

(assert (not b!1425214))

(assert (not start!122924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

