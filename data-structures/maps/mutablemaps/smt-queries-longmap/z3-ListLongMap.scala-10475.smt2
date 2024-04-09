; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123270 () Bool)

(assert start!123270)

(declare-fun b!1428661 () Bool)

(declare-fun res!963411 () Bool)

(declare-fun e!806854 () Bool)

(assert (=> b!1428661 (=> (not res!963411) (not e!806854))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97349 0))(
  ( (array!97350 (arr!46982 (Array (_ BitVec 32) (_ BitVec 64))) (size!47533 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97349)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428661 (= res!963411 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47533 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47533 a!2831))))))

(declare-fun b!1428662 () Bool)

(declare-fun e!806858 () Bool)

(assert (=> b!1428662 (= e!806854 e!806858)))

(declare-fun res!963410 () Bool)

(assert (=> b!1428662 (=> (not res!963410) (not e!806858))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11283 0))(
  ( (MissingZero!11283 (index!47523 (_ BitVec 32))) (Found!11283 (index!47524 (_ BitVec 32))) (Intermediate!11283 (undefined!12095 Bool) (index!47525 (_ BitVec 32)) (x!129168 (_ BitVec 32))) (Undefined!11283) (MissingVacant!11283 (index!47526 (_ BitVec 32))) )
))
(declare-fun lt!629041 () SeekEntryResult!11283)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97349 (_ BitVec 32)) SeekEntryResult!11283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428662 (= res!963410 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46982 a!2831) j!81) mask!2608) (select (arr!46982 a!2831) j!81) a!2831 mask!2608) lt!629041))))

(assert (=> b!1428662 (= lt!629041 (Intermediate!11283 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428663 () Bool)

(declare-fun res!963407 () Bool)

(declare-fun e!806856 () Bool)

(assert (=> b!1428663 (=> (not res!963407) (not e!806856))))

(assert (=> b!1428663 (= res!963407 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46982 a!2831) j!81) a!2831 mask!2608) lt!629041))))

(declare-fun b!1428664 () Bool)

(assert (=> b!1428664 (= e!806856 (not true))))

(declare-fun e!806855 () Bool)

(assert (=> b!1428664 e!806855))

(declare-fun res!963409 () Bool)

(assert (=> b!1428664 (=> (not res!963409) (not e!806855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97349 (_ BitVec 32)) Bool)

(assert (=> b!1428664 (= res!963409 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48260 0))(
  ( (Unit!48261) )
))
(declare-fun lt!629037 () Unit!48260)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48260)

(assert (=> b!1428664 (= lt!629037 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!963402 () Bool)

(assert (=> start!123270 (=> (not res!963402) (not e!806854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123270 (= res!963402 (validMask!0 mask!2608))))

(assert (=> start!123270 e!806854))

(assert (=> start!123270 true))

(declare-fun array_inv!35927 (array!97349) Bool)

(assert (=> start!123270 (array_inv!35927 a!2831)))

(declare-fun b!1428665 () Bool)

(assert (=> b!1428665 (= e!806858 e!806856)))

(declare-fun res!963408 () Bool)

(assert (=> b!1428665 (=> (not res!963408) (not e!806856))))

(declare-fun lt!629039 () array!97349)

(declare-fun lt!629040 () (_ BitVec 64))

(declare-fun lt!629038 () SeekEntryResult!11283)

(assert (=> b!1428665 (= res!963408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629040 mask!2608) lt!629040 lt!629039 mask!2608) lt!629038))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428665 (= lt!629038 (Intermediate!11283 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428665 (= lt!629040 (select (store (arr!46982 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428665 (= lt!629039 (array!97350 (store (arr!46982 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47533 a!2831)))))

(declare-fun b!1428666 () Bool)

(declare-fun res!963404 () Bool)

(assert (=> b!1428666 (=> (not res!963404) (not e!806854))))

(assert (=> b!1428666 (= res!963404 (and (= (size!47533 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47533 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47533 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428667 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97349 (_ BitVec 32)) SeekEntryResult!11283)

(assert (=> b!1428667 (= e!806855 (= (seekEntryOrOpen!0 (select (arr!46982 a!2831) j!81) a!2831 mask!2608) (Found!11283 j!81)))))

(declare-fun b!1428668 () Bool)

(declare-fun res!963401 () Bool)

(assert (=> b!1428668 (=> (not res!963401) (not e!806854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428668 (= res!963401 (validKeyInArray!0 (select (arr!46982 a!2831) i!982)))))

(declare-fun b!1428669 () Bool)

(declare-fun res!963399 () Bool)

(assert (=> b!1428669 (=> (not res!963399) (not e!806854))))

(assert (=> b!1428669 (= res!963399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428670 () Bool)

(declare-fun res!963403 () Bool)

(assert (=> b!1428670 (=> (not res!963403) (not e!806856))))

(assert (=> b!1428670 (= res!963403 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428671 () Bool)

(declare-fun res!963406 () Bool)

(assert (=> b!1428671 (=> (not res!963406) (not e!806854))))

(assert (=> b!1428671 (= res!963406 (validKeyInArray!0 (select (arr!46982 a!2831) j!81)))))

(declare-fun b!1428672 () Bool)

(declare-fun res!963400 () Bool)

(assert (=> b!1428672 (=> (not res!963400) (not e!806854))))

(declare-datatypes ((List!33672 0))(
  ( (Nil!33669) (Cons!33668 (h!34982 (_ BitVec 64)) (t!48373 List!33672)) )
))
(declare-fun arrayNoDuplicates!0 (array!97349 (_ BitVec 32) List!33672) Bool)

(assert (=> b!1428672 (= res!963400 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33669))))

(declare-fun b!1428673 () Bool)

(declare-fun res!963405 () Bool)

(assert (=> b!1428673 (=> (not res!963405) (not e!806856))))

(assert (=> b!1428673 (= res!963405 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629040 lt!629039 mask!2608) lt!629038))))

(assert (= (and start!123270 res!963402) b!1428666))

(assert (= (and b!1428666 res!963404) b!1428668))

(assert (= (and b!1428668 res!963401) b!1428671))

(assert (= (and b!1428671 res!963406) b!1428669))

(assert (= (and b!1428669 res!963399) b!1428672))

(assert (= (and b!1428672 res!963400) b!1428661))

(assert (= (and b!1428661 res!963411) b!1428662))

(assert (= (and b!1428662 res!963410) b!1428665))

(assert (= (and b!1428665 res!963408) b!1428663))

(assert (= (and b!1428663 res!963407) b!1428673))

(assert (= (and b!1428673 res!963405) b!1428670))

(assert (= (and b!1428670 res!963403) b!1428664))

(assert (= (and b!1428664 res!963409) b!1428667))

(declare-fun m!1318837 () Bool)

(assert (=> b!1428663 m!1318837))

(assert (=> b!1428663 m!1318837))

(declare-fun m!1318839 () Bool)

(assert (=> b!1428663 m!1318839))

(declare-fun m!1318841 () Bool)

(assert (=> b!1428668 m!1318841))

(assert (=> b!1428668 m!1318841))

(declare-fun m!1318843 () Bool)

(assert (=> b!1428668 m!1318843))

(declare-fun m!1318845 () Bool)

(assert (=> b!1428665 m!1318845))

(assert (=> b!1428665 m!1318845))

(declare-fun m!1318847 () Bool)

(assert (=> b!1428665 m!1318847))

(declare-fun m!1318849 () Bool)

(assert (=> b!1428665 m!1318849))

(declare-fun m!1318851 () Bool)

(assert (=> b!1428665 m!1318851))

(declare-fun m!1318853 () Bool)

(assert (=> b!1428672 m!1318853))

(assert (=> b!1428671 m!1318837))

(assert (=> b!1428671 m!1318837))

(declare-fun m!1318855 () Bool)

(assert (=> b!1428671 m!1318855))

(assert (=> b!1428667 m!1318837))

(assert (=> b!1428667 m!1318837))

(declare-fun m!1318857 () Bool)

(assert (=> b!1428667 m!1318857))

(declare-fun m!1318859 () Bool)

(assert (=> b!1428664 m!1318859))

(declare-fun m!1318861 () Bool)

(assert (=> b!1428664 m!1318861))

(assert (=> b!1428662 m!1318837))

(assert (=> b!1428662 m!1318837))

(declare-fun m!1318863 () Bool)

(assert (=> b!1428662 m!1318863))

(assert (=> b!1428662 m!1318863))

(assert (=> b!1428662 m!1318837))

(declare-fun m!1318865 () Bool)

(assert (=> b!1428662 m!1318865))

(declare-fun m!1318867 () Bool)

(assert (=> start!123270 m!1318867))

(declare-fun m!1318869 () Bool)

(assert (=> start!123270 m!1318869))

(declare-fun m!1318871 () Bool)

(assert (=> b!1428669 m!1318871))

(declare-fun m!1318873 () Bool)

(assert (=> b!1428673 m!1318873))

(check-sat (not start!123270) (not b!1428665) (not b!1428667) (not b!1428663) (not b!1428664) (not b!1428671) (not b!1428662) (not b!1428669) (not b!1428672) (not b!1428673) (not b!1428668))
(check-sat)
