; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122930 () Bool)

(assert start!122930)

(declare-fun b!1425282 () Bool)

(declare-fun res!960827 () Bool)

(declare-fun e!805325 () Bool)

(assert (=> b!1425282 (=> (not res!960827) (not e!805325))))

(declare-datatypes ((array!97213 0))(
  ( (array!97214 (arr!46920 (Array (_ BitVec 32) (_ BitVec 64))) (size!47471 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97213)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425282 (= res!960827 (validKeyInArray!0 (select (arr!46920 a!2831) i!982)))))

(declare-fun b!1425283 () Bool)

(declare-fun res!960825 () Bool)

(assert (=> b!1425283 (=> (not res!960825) (not e!805325))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11221 0))(
  ( (MissingZero!11221 (index!47275 (_ BitVec 32))) (Found!11221 (index!47276 (_ BitVec 32))) (Intermediate!11221 (undefined!12033 Bool) (index!47277 (_ BitVec 32)) (x!128914 (_ BitVec 32))) (Undefined!11221) (MissingVacant!11221 (index!47278 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97213 (_ BitVec 32)) SeekEntryResult!11221)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425283 (= res!960825 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46920 a!2831) j!81) mask!2608) (select (arr!46920 a!2831) j!81) a!2831 mask!2608) (Intermediate!11221 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425284 () Bool)

(declare-fun res!960830 () Bool)

(assert (=> b!1425284 (=> (not res!960830) (not e!805325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97213 (_ BitVec 32)) Bool)

(assert (=> b!1425284 (= res!960830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425285 () Bool)

(declare-fun res!960826 () Bool)

(assert (=> b!1425285 (=> (not res!960826) (not e!805325))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425285 (= res!960826 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47471 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47471 a!2831))))))

(declare-fun b!1425286 () Bool)

(declare-fun res!960831 () Bool)

(assert (=> b!1425286 (=> (not res!960831) (not e!805325))))

(assert (=> b!1425286 (= res!960831 (validKeyInArray!0 (select (arr!46920 a!2831) j!81)))))

(declare-fun res!960828 () Bool)

(assert (=> start!122930 (=> (not res!960828) (not e!805325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122930 (= res!960828 (validMask!0 mask!2608))))

(assert (=> start!122930 e!805325))

(assert (=> start!122930 true))

(declare-fun array_inv!35865 (array!97213) Bool)

(assert (=> start!122930 (array_inv!35865 a!2831)))

(declare-fun b!1425287 () Bool)

(assert (=> b!1425287 (= e!805325 false)))

(declare-fun lt!627745 () SeekEntryResult!11221)

(assert (=> b!1425287 (= lt!627745 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46920 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46920 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97214 (store (arr!46920 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47471 a!2831)) mask!2608))))

(declare-fun b!1425288 () Bool)

(declare-fun res!960829 () Bool)

(assert (=> b!1425288 (=> (not res!960829) (not e!805325))))

(assert (=> b!1425288 (= res!960829 (and (= (size!47471 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47471 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47471 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425289 () Bool)

(declare-fun res!960824 () Bool)

(assert (=> b!1425289 (=> (not res!960824) (not e!805325))))

(declare-datatypes ((List!33610 0))(
  ( (Nil!33607) (Cons!33606 (h!34908 (_ BitVec 64)) (t!48311 List!33610)) )
))
(declare-fun arrayNoDuplicates!0 (array!97213 (_ BitVec 32) List!33610) Bool)

(assert (=> b!1425289 (= res!960824 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33607))))

(assert (= (and start!122930 res!960828) b!1425288))

(assert (= (and b!1425288 res!960829) b!1425282))

(assert (= (and b!1425282 res!960827) b!1425286))

(assert (= (and b!1425286 res!960831) b!1425284))

(assert (= (and b!1425284 res!960830) b!1425289))

(assert (= (and b!1425289 res!960824) b!1425285))

(assert (= (and b!1425285 res!960826) b!1425283))

(assert (= (and b!1425283 res!960825) b!1425287))

(declare-fun m!1315909 () Bool)

(assert (=> b!1425287 m!1315909))

(declare-fun m!1315911 () Bool)

(assert (=> b!1425287 m!1315911))

(assert (=> b!1425287 m!1315911))

(declare-fun m!1315913 () Bool)

(assert (=> b!1425287 m!1315913))

(assert (=> b!1425287 m!1315913))

(assert (=> b!1425287 m!1315911))

(declare-fun m!1315915 () Bool)

(assert (=> b!1425287 m!1315915))

(declare-fun m!1315917 () Bool)

(assert (=> b!1425283 m!1315917))

(assert (=> b!1425283 m!1315917))

(declare-fun m!1315919 () Bool)

(assert (=> b!1425283 m!1315919))

(assert (=> b!1425283 m!1315919))

(assert (=> b!1425283 m!1315917))

(declare-fun m!1315921 () Bool)

(assert (=> b!1425283 m!1315921))

(declare-fun m!1315923 () Bool)

(assert (=> b!1425282 m!1315923))

(assert (=> b!1425282 m!1315923))

(declare-fun m!1315925 () Bool)

(assert (=> b!1425282 m!1315925))

(assert (=> b!1425286 m!1315917))

(assert (=> b!1425286 m!1315917))

(declare-fun m!1315927 () Bool)

(assert (=> b!1425286 m!1315927))

(declare-fun m!1315929 () Bool)

(assert (=> start!122930 m!1315929))

(declare-fun m!1315931 () Bool)

(assert (=> start!122930 m!1315931))

(declare-fun m!1315933 () Bool)

(assert (=> b!1425284 m!1315933))

(declare-fun m!1315935 () Bool)

(assert (=> b!1425289 m!1315935))

(push 1)

(assert (not b!1425284))

(assert (not b!1425287))

(assert (not b!1425282))

(assert (not b!1425286))

(assert (not b!1425289))

(assert (not start!122930))

(assert (not b!1425283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

