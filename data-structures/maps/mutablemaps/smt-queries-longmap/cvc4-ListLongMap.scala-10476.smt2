; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123278 () Bool)

(assert start!123278)

(declare-fun b!1428817 () Bool)

(declare-fun res!963555 () Bool)

(declare-fun e!806914 () Bool)

(assert (=> b!1428817 (=> (not res!963555) (not e!806914))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428817 (= res!963555 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428818 () Bool)

(declare-fun res!963558 () Bool)

(declare-fun e!806915 () Bool)

(assert (=> b!1428818 (=> (not res!963558) (not e!806915))))

(declare-datatypes ((array!97357 0))(
  ( (array!97358 (arr!46986 (Array (_ BitVec 32) (_ BitVec 64))) (size!47537 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97357)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97357 (_ BitVec 32)) Bool)

(assert (=> b!1428818 (= res!963558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428819 () Bool)

(declare-fun e!806916 () Bool)

(assert (=> b!1428819 (= e!806915 e!806916)))

(declare-fun res!963559 () Bool)

(assert (=> b!1428819 (=> (not res!963559) (not e!806916))))

(declare-datatypes ((SeekEntryResult!11287 0))(
  ( (MissingZero!11287 (index!47539 (_ BitVec 32))) (Found!11287 (index!47540 (_ BitVec 32))) (Intermediate!11287 (undefined!12099 Bool) (index!47541 (_ BitVec 32)) (x!129180 (_ BitVec 32))) (Undefined!11287) (MissingVacant!11287 (index!47542 (_ BitVec 32))) )
))
(declare-fun lt!629101 () SeekEntryResult!11287)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97357 (_ BitVec 32)) SeekEntryResult!11287)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428819 (= res!963559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46986 a!2831) j!81) mask!2608) (select (arr!46986 a!2831) j!81) a!2831 mask!2608) lt!629101))))

(assert (=> b!1428819 (= lt!629101 (Intermediate!11287 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428820 () Bool)

(declare-fun res!963556 () Bool)

(assert (=> b!1428820 (=> (not res!963556) (not e!806915))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428820 (= res!963556 (and (= (size!47537 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47537 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47537 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428821 () Bool)

(declare-fun res!963557 () Bool)

(assert (=> b!1428821 (=> (not res!963557) (not e!806915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428821 (= res!963557 (validKeyInArray!0 (select (arr!46986 a!2831) j!81)))))

(declare-fun b!1428823 () Bool)

(assert (=> b!1428823 (= e!806916 e!806914)))

(declare-fun res!963563 () Bool)

(assert (=> b!1428823 (=> (not res!963563) (not e!806914))))

(declare-fun lt!629098 () array!97357)

(declare-fun lt!629100 () (_ BitVec 64))

(declare-fun lt!629099 () SeekEntryResult!11287)

(assert (=> b!1428823 (= res!963563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629100 mask!2608) lt!629100 lt!629098 mask!2608) lt!629099))))

(assert (=> b!1428823 (= lt!629099 (Intermediate!11287 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428823 (= lt!629100 (select (store (arr!46986 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428823 (= lt!629098 (array!97358 (store (arr!46986 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47537 a!2831)))))

(declare-fun b!1428824 () Bool)

(declare-fun res!963564 () Bool)

(assert (=> b!1428824 (=> (not res!963564) (not e!806915))))

(declare-datatypes ((List!33676 0))(
  ( (Nil!33673) (Cons!33672 (h!34986 (_ BitVec 64)) (t!48377 List!33676)) )
))
(declare-fun arrayNoDuplicates!0 (array!97357 (_ BitVec 32) List!33676) Bool)

(assert (=> b!1428824 (= res!963564 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33673))))

(declare-fun b!1428825 () Bool)

(declare-fun res!963567 () Bool)

(assert (=> b!1428825 (=> (not res!963567) (not e!806915))))

(assert (=> b!1428825 (= res!963567 (validKeyInArray!0 (select (arr!46986 a!2831) i!982)))))

(declare-fun b!1428826 () Bool)

(assert (=> b!1428826 (= e!806914 (not true))))

(declare-fun e!806917 () Bool)

(assert (=> b!1428826 e!806917))

(declare-fun res!963562 () Bool)

(assert (=> b!1428826 (=> (not res!963562) (not e!806917))))

(assert (=> b!1428826 (= res!963562 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48268 0))(
  ( (Unit!48269) )
))
(declare-fun lt!629097 () Unit!48268)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48268)

(assert (=> b!1428826 (= lt!629097 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428827 () Bool)

(declare-fun res!963560 () Bool)

(assert (=> b!1428827 (=> (not res!963560) (not e!806914))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1428827 (= res!963560 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46986 a!2831) j!81) a!2831 mask!2608) lt!629101))))

(declare-fun b!1428828 () Bool)

(declare-fun res!963566 () Bool)

(assert (=> b!1428828 (=> (not res!963566) (not e!806915))))

(assert (=> b!1428828 (= res!963566 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47537 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47537 a!2831))))))

(declare-fun b!1428829 () Bool)

(declare-fun res!963565 () Bool)

(assert (=> b!1428829 (=> (not res!963565) (not e!806914))))

(assert (=> b!1428829 (= res!963565 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629100 lt!629098 mask!2608) lt!629099))))

(declare-fun res!963561 () Bool)

(assert (=> start!123278 (=> (not res!963561) (not e!806915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123278 (= res!963561 (validMask!0 mask!2608))))

(assert (=> start!123278 e!806915))

(assert (=> start!123278 true))

(declare-fun array_inv!35931 (array!97357) Bool)

(assert (=> start!123278 (array_inv!35931 a!2831)))

(declare-fun b!1428822 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97357 (_ BitVec 32)) SeekEntryResult!11287)

(assert (=> b!1428822 (= e!806917 (= (seekEntryOrOpen!0 (select (arr!46986 a!2831) j!81) a!2831 mask!2608) (Found!11287 j!81)))))

(assert (= (and start!123278 res!963561) b!1428820))

(assert (= (and b!1428820 res!963556) b!1428825))

(assert (= (and b!1428825 res!963567) b!1428821))

(assert (= (and b!1428821 res!963557) b!1428818))

(assert (= (and b!1428818 res!963558) b!1428824))

(assert (= (and b!1428824 res!963564) b!1428828))

(assert (= (and b!1428828 res!963566) b!1428819))

(assert (= (and b!1428819 res!963559) b!1428823))

(assert (= (and b!1428823 res!963563) b!1428827))

(assert (= (and b!1428827 res!963560) b!1428829))

(assert (= (and b!1428829 res!963565) b!1428817))

(assert (= (and b!1428817 res!963555) b!1428826))

(assert (= (and b!1428826 res!963562) b!1428822))

(declare-fun m!1318989 () Bool)

(assert (=> b!1428821 m!1318989))

(assert (=> b!1428821 m!1318989))

(declare-fun m!1318991 () Bool)

(assert (=> b!1428821 m!1318991))

(declare-fun m!1318993 () Bool)

(assert (=> b!1428824 m!1318993))

(declare-fun m!1318995 () Bool)

(assert (=> b!1428818 m!1318995))

(declare-fun m!1318997 () Bool)

(assert (=> b!1428826 m!1318997))

(declare-fun m!1318999 () Bool)

(assert (=> b!1428826 m!1318999))

(assert (=> b!1428819 m!1318989))

(assert (=> b!1428819 m!1318989))

(declare-fun m!1319001 () Bool)

(assert (=> b!1428819 m!1319001))

(assert (=> b!1428819 m!1319001))

(assert (=> b!1428819 m!1318989))

(declare-fun m!1319003 () Bool)

(assert (=> b!1428819 m!1319003))

(assert (=> b!1428827 m!1318989))

(assert (=> b!1428827 m!1318989))

(declare-fun m!1319005 () Bool)

(assert (=> b!1428827 m!1319005))

(assert (=> b!1428822 m!1318989))

(assert (=> b!1428822 m!1318989))

(declare-fun m!1319007 () Bool)

(assert (=> b!1428822 m!1319007))

(declare-fun m!1319009 () Bool)

(assert (=> start!123278 m!1319009))

(declare-fun m!1319011 () Bool)

(assert (=> start!123278 m!1319011))

(declare-fun m!1319013 () Bool)

(assert (=> b!1428823 m!1319013))

(assert (=> b!1428823 m!1319013))

(declare-fun m!1319015 () Bool)

(assert (=> b!1428823 m!1319015))

(declare-fun m!1319017 () Bool)

(assert (=> b!1428823 m!1319017))

(declare-fun m!1319019 () Bool)

(assert (=> b!1428823 m!1319019))

(declare-fun m!1319021 () Bool)

(assert (=> b!1428825 m!1319021))

(assert (=> b!1428825 m!1319021))

(declare-fun m!1319023 () Bool)

(assert (=> b!1428825 m!1319023))

(declare-fun m!1319025 () Bool)

(assert (=> b!1428829 m!1319025))

(push 1)

(assert (not b!1428821))

(assert (not b!1428822))

(assert (not b!1428824))

(assert (not start!123278))

(assert (not b!1428823))

(assert (not b!1428826))

(assert (not b!1428825))

(assert (not b!1428827))

(assert (not b!1428829))

(assert (not b!1428818))

(assert (not b!1428819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

