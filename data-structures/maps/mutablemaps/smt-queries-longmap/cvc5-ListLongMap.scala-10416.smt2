; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122698 () Bool)

(assert start!122698)

(declare-fun b!1420747 () Bool)

(declare-fun res!956291 () Bool)

(declare-fun e!803501 () Bool)

(assert (=> b!1420747 (=> (not res!956291) (not e!803501))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96981 0))(
  ( (array!96982 (arr!46804 (Array (_ BitVec 32) (_ BitVec 64))) (size!47355 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96981)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420747 (= res!956291 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47355 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47355 a!2831))))))

(declare-fun b!1420748 () Bool)

(declare-fun res!956289 () Bool)

(assert (=> b!1420748 (=> (not res!956289) (not e!803501))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1420748 (= res!956289 (and (= (size!47355 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47355 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47355 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420749 () Bool)

(declare-fun res!956295 () Bool)

(assert (=> b!1420749 (=> (not res!956295) (not e!803501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96981 (_ BitVec 32)) Bool)

(assert (=> b!1420749 (= res!956295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420750 () Bool)

(declare-fun res!956290 () Bool)

(declare-fun e!803498 () Bool)

(assert (=> b!1420750 (=> (not res!956290) (not e!803498))))

(declare-datatypes ((SeekEntryResult!11111 0))(
  ( (MissingZero!11111 (index!46835 (_ BitVec 32))) (Found!11111 (index!46836 (_ BitVec 32))) (Intermediate!11111 (undefined!11923 Bool) (index!46837 (_ BitVec 32)) (x!128500 (_ BitVec 32))) (Undefined!11111) (MissingVacant!11111 (index!46838 (_ BitVec 32))) )
))
(declare-fun lt!625954 () SeekEntryResult!11111)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96981 (_ BitVec 32)) SeekEntryResult!11111)

(assert (=> b!1420750 (= res!956290 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46804 a!2831) j!81) a!2831 mask!2608) lt!625954))))

(declare-fun res!956298 () Bool)

(assert (=> start!122698 (=> (not res!956298) (not e!803501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122698 (= res!956298 (validMask!0 mask!2608))))

(assert (=> start!122698 e!803501))

(assert (=> start!122698 true))

(declare-fun array_inv!35749 (array!96981) Bool)

(assert (=> start!122698 (array_inv!35749 a!2831)))

(declare-fun b!1420751 () Bool)

(declare-fun e!803499 () Bool)

(assert (=> b!1420751 (= e!803499 e!803498)))

(declare-fun res!956296 () Bool)

(assert (=> b!1420751 (=> (not res!956296) (not e!803498))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!625957 () array!96981)

(declare-fun lt!625956 () (_ BitVec 64))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420751 (= res!956296 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625956 mask!2608) lt!625956 lt!625957 mask!2608) (Intermediate!11111 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420751 (= lt!625956 (select (store (arr!46804 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420751 (= lt!625957 (array!96982 (store (arr!46804 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47355 a!2831)))))

(declare-fun b!1420752 () Bool)

(declare-fun res!956292 () Bool)

(assert (=> b!1420752 (=> (not res!956292) (not e!803501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420752 (= res!956292 (validKeyInArray!0 (select (arr!46804 a!2831) i!982)))))

(declare-fun b!1420753 () Bool)

(assert (=> b!1420753 (= e!803498 false)))

(declare-fun lt!625955 () SeekEntryResult!11111)

(assert (=> b!1420753 (= lt!625955 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625956 lt!625957 mask!2608))))

(declare-fun b!1420754 () Bool)

(declare-fun res!956294 () Bool)

(assert (=> b!1420754 (=> (not res!956294) (not e!803501))))

(declare-datatypes ((List!33494 0))(
  ( (Nil!33491) (Cons!33490 (h!34792 (_ BitVec 64)) (t!48195 List!33494)) )
))
(declare-fun arrayNoDuplicates!0 (array!96981 (_ BitVec 32) List!33494) Bool)

(assert (=> b!1420754 (= res!956294 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33491))))

(declare-fun b!1420755 () Bool)

(declare-fun res!956293 () Bool)

(assert (=> b!1420755 (=> (not res!956293) (not e!803501))))

(assert (=> b!1420755 (= res!956293 (validKeyInArray!0 (select (arr!46804 a!2831) j!81)))))

(declare-fun b!1420756 () Bool)

(assert (=> b!1420756 (= e!803501 e!803499)))

(declare-fun res!956297 () Bool)

(assert (=> b!1420756 (=> (not res!956297) (not e!803499))))

(assert (=> b!1420756 (= res!956297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46804 a!2831) j!81) mask!2608) (select (arr!46804 a!2831) j!81) a!2831 mask!2608) lt!625954))))

(assert (=> b!1420756 (= lt!625954 (Intermediate!11111 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!122698 res!956298) b!1420748))

(assert (= (and b!1420748 res!956289) b!1420752))

(assert (= (and b!1420752 res!956292) b!1420755))

(assert (= (and b!1420755 res!956293) b!1420749))

(assert (= (and b!1420749 res!956295) b!1420754))

(assert (= (and b!1420754 res!956294) b!1420747))

(assert (= (and b!1420747 res!956291) b!1420756))

(assert (= (and b!1420756 res!956297) b!1420751))

(assert (= (and b!1420751 res!956296) b!1420750))

(assert (= (and b!1420750 res!956290) b!1420753))

(declare-fun m!1311335 () Bool)

(assert (=> b!1420752 m!1311335))

(assert (=> b!1420752 m!1311335))

(declare-fun m!1311337 () Bool)

(assert (=> b!1420752 m!1311337))

(declare-fun m!1311339 () Bool)

(assert (=> b!1420750 m!1311339))

(assert (=> b!1420750 m!1311339))

(declare-fun m!1311341 () Bool)

(assert (=> b!1420750 m!1311341))

(assert (=> b!1420756 m!1311339))

(assert (=> b!1420756 m!1311339))

(declare-fun m!1311343 () Bool)

(assert (=> b!1420756 m!1311343))

(assert (=> b!1420756 m!1311343))

(assert (=> b!1420756 m!1311339))

(declare-fun m!1311345 () Bool)

(assert (=> b!1420756 m!1311345))

(declare-fun m!1311347 () Bool)

(assert (=> b!1420751 m!1311347))

(assert (=> b!1420751 m!1311347))

(declare-fun m!1311349 () Bool)

(assert (=> b!1420751 m!1311349))

(declare-fun m!1311351 () Bool)

(assert (=> b!1420751 m!1311351))

(declare-fun m!1311353 () Bool)

(assert (=> b!1420751 m!1311353))

(declare-fun m!1311355 () Bool)

(assert (=> start!122698 m!1311355))

(declare-fun m!1311357 () Bool)

(assert (=> start!122698 m!1311357))

(declare-fun m!1311359 () Bool)

(assert (=> b!1420753 m!1311359))

(declare-fun m!1311361 () Bool)

(assert (=> b!1420754 m!1311361))

(assert (=> b!1420755 m!1311339))

(assert (=> b!1420755 m!1311339))

(declare-fun m!1311363 () Bool)

(assert (=> b!1420755 m!1311363))

(declare-fun m!1311365 () Bool)

(assert (=> b!1420749 m!1311365))

(push 1)

