; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122928 () Bool)

(assert start!122928)

(declare-fun b!1425258 () Bool)

(declare-fun res!960802 () Bool)

(declare-fun e!805319 () Bool)

(assert (=> b!1425258 (=> (not res!960802) (not e!805319))))

(declare-datatypes ((array!97211 0))(
  ( (array!97212 (arr!46919 (Array (_ BitVec 32) (_ BitVec 64))) (size!47470 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97211)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97211 (_ BitVec 32)) Bool)

(assert (=> b!1425258 (= res!960802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960805 () Bool)

(assert (=> start!122928 (=> (not res!960805) (not e!805319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122928 (= res!960805 (validMask!0 mask!2608))))

(assert (=> start!122928 e!805319))

(assert (=> start!122928 true))

(declare-fun array_inv!35864 (array!97211) Bool)

(assert (=> start!122928 (array_inv!35864 a!2831)))

(declare-fun b!1425259 () Bool)

(declare-fun res!960803 () Bool)

(assert (=> b!1425259 (=> (not res!960803) (not e!805319))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425259 (= res!960803 (validKeyInArray!0 (select (arr!46919 a!2831) i!982)))))

(declare-fun b!1425260 () Bool)

(declare-fun res!960806 () Bool)

(assert (=> b!1425260 (=> (not res!960806) (not e!805319))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1425260 (= res!960806 (and (= (size!47470 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47470 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47470 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425261 () Bool)

(assert (=> b!1425261 (= e!805319 false)))

(declare-datatypes ((SeekEntryResult!11220 0))(
  ( (MissingZero!11220 (index!47271 (_ BitVec 32))) (Found!11220 (index!47272 (_ BitVec 32))) (Intermediate!11220 (undefined!12032 Bool) (index!47273 (_ BitVec 32)) (x!128913 (_ BitVec 32))) (Undefined!11220) (MissingVacant!11220 (index!47274 (_ BitVec 32))) )
))
(declare-fun lt!627742 () SeekEntryResult!11220)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97211 (_ BitVec 32)) SeekEntryResult!11220)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425261 (= lt!627742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46919 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46919 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97212 (store (arr!46919 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47470 a!2831)) mask!2608))))

(declare-fun b!1425262 () Bool)

(declare-fun res!960804 () Bool)

(assert (=> b!1425262 (=> (not res!960804) (not e!805319))))

(assert (=> b!1425262 (= res!960804 (validKeyInArray!0 (select (arr!46919 a!2831) j!81)))))

(declare-fun b!1425263 () Bool)

(declare-fun res!960800 () Bool)

(assert (=> b!1425263 (=> (not res!960800) (not e!805319))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425263 (= res!960800 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46919 a!2831) j!81) mask!2608) (select (arr!46919 a!2831) j!81) a!2831 mask!2608) (Intermediate!11220 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425264 () Bool)

(declare-fun res!960801 () Bool)

(assert (=> b!1425264 (=> (not res!960801) (not e!805319))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1425264 (= res!960801 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47470 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47470 a!2831))))))

(declare-fun b!1425265 () Bool)

(declare-fun res!960807 () Bool)

(assert (=> b!1425265 (=> (not res!960807) (not e!805319))))

(declare-datatypes ((List!33609 0))(
  ( (Nil!33606) (Cons!33605 (h!34907 (_ BitVec 64)) (t!48310 List!33609)) )
))
(declare-fun arrayNoDuplicates!0 (array!97211 (_ BitVec 32) List!33609) Bool)

(assert (=> b!1425265 (= res!960807 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33606))))

(assert (= (and start!122928 res!960805) b!1425260))

(assert (= (and b!1425260 res!960806) b!1425259))

(assert (= (and b!1425259 res!960803) b!1425262))

(assert (= (and b!1425262 res!960804) b!1425258))

(assert (= (and b!1425258 res!960802) b!1425265))

(assert (= (and b!1425265 res!960807) b!1425264))

(assert (= (and b!1425264 res!960801) b!1425263))

(assert (= (and b!1425263 res!960800) b!1425261))

(declare-fun m!1315881 () Bool)

(assert (=> b!1425261 m!1315881))

(declare-fun m!1315883 () Bool)

(assert (=> b!1425261 m!1315883))

(assert (=> b!1425261 m!1315883))

(declare-fun m!1315885 () Bool)

(assert (=> b!1425261 m!1315885))

(assert (=> b!1425261 m!1315885))

(assert (=> b!1425261 m!1315883))

(declare-fun m!1315887 () Bool)

(assert (=> b!1425261 m!1315887))

(declare-fun m!1315889 () Bool)

(assert (=> b!1425259 m!1315889))

(assert (=> b!1425259 m!1315889))

(declare-fun m!1315891 () Bool)

(assert (=> b!1425259 m!1315891))

(declare-fun m!1315893 () Bool)

(assert (=> b!1425265 m!1315893))

(declare-fun m!1315895 () Bool)

(assert (=> b!1425262 m!1315895))

(assert (=> b!1425262 m!1315895))

(declare-fun m!1315897 () Bool)

(assert (=> b!1425262 m!1315897))

(declare-fun m!1315899 () Bool)

(assert (=> b!1425258 m!1315899))

(declare-fun m!1315901 () Bool)

(assert (=> start!122928 m!1315901))

(declare-fun m!1315903 () Bool)

(assert (=> start!122928 m!1315903))

(assert (=> b!1425263 m!1315895))

(assert (=> b!1425263 m!1315895))

(declare-fun m!1315905 () Bool)

(assert (=> b!1425263 m!1315905))

(assert (=> b!1425263 m!1315905))

(assert (=> b!1425263 m!1315895))

(declare-fun m!1315907 () Bool)

(assert (=> b!1425263 m!1315907))

(check-sat (not b!1425263) (not b!1425262) (not start!122928) (not b!1425258) (not b!1425259) (not b!1425265) (not b!1425261))
