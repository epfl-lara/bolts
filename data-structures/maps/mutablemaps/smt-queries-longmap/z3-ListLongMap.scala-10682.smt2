; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125274 () Bool)

(assert start!125274)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1461043 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!639976 () (_ BitVec 64))

(declare-datatypes ((array!98639 0))(
  ( (array!98640 (arr!47603 (Array (_ BitVec 32) (_ BitVec 64))) (size!48154 (_ BitVec 32))) )
))
(declare-fun lt!639972 () array!98639)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!639970 () (_ BitVec 32))

(declare-fun e!821456 () Bool)

(declare-datatypes ((SeekEntryResult!11878 0))(
  ( (MissingZero!11878 (index!49903 (_ BitVec 32))) (Found!11878 (index!49904 (_ BitVec 32))) (Intermediate!11878 (undefined!12690 Bool) (index!49905 (_ BitVec 32)) (x!131506 (_ BitVec 32))) (Undefined!11878) (MissingVacant!11878 (index!49906 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98639 (_ BitVec 32)) SeekEntryResult!11878)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98639 (_ BitVec 32)) SeekEntryResult!11878)

(assert (=> b!1461043 (= e!821456 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639970 intermediateAfterIndex!19 lt!639976 lt!639972 mask!2687) (seekEntryOrOpen!0 lt!639976 lt!639972 mask!2687))))))

(declare-fun b!1461044 () Bool)

(declare-fun res!990833 () Bool)

(declare-fun e!821462 () Bool)

(assert (=> b!1461044 (=> (not res!990833) (not e!821462))))

(declare-fun e!821455 () Bool)

(assert (=> b!1461044 (= res!990833 e!821455)))

(declare-fun c!134624 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461044 (= c!134624 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461045 () Bool)

(declare-fun res!990840 () Bool)

(declare-fun e!821457 () Bool)

(assert (=> b!1461045 (=> res!990840 e!821457)))

(declare-fun a!2862 () array!98639)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!639975 () SeekEntryResult!11878)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98639 (_ BitVec 32)) SeekEntryResult!11878)

(assert (=> b!1461045 (= res!990840 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639970 (select (arr!47603 a!2862) j!93) a!2862 mask!2687) lt!639975)))))

(declare-fun b!1461046 () Bool)

(assert (=> b!1461046 (= e!821457 true)))

(declare-fun lt!639974 () Bool)

(assert (=> b!1461046 (= lt!639974 e!821456)))

(declare-fun c!134623 () Bool)

(assert (=> b!1461046 (= c!134623 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461047 () Bool)

(declare-fun res!990839 () Bool)

(declare-fun e!821461 () Bool)

(assert (=> b!1461047 (=> (not res!990839) (not e!821461))))

(assert (=> b!1461047 (= res!990839 (= (seekEntryOrOpen!0 (select (arr!47603 a!2862) j!93) a!2862 mask!2687) (Found!11878 j!93)))))

(declare-fun b!1461048 () Bool)

(declare-fun res!990823 () Bool)

(declare-fun e!821458 () Bool)

(assert (=> b!1461048 (=> (not res!990823) (not e!821458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98639 (_ BitVec 32)) Bool)

(assert (=> b!1461048 (= res!990823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461049 () Bool)

(declare-fun res!990826 () Bool)

(assert (=> b!1461049 (=> (not res!990826) (not e!821462))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461049 (= res!990826 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!990824 () Bool)

(assert (=> start!125274 (=> (not res!990824) (not e!821458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125274 (= res!990824 (validMask!0 mask!2687))))

(assert (=> start!125274 e!821458))

(assert (=> start!125274 true))

(declare-fun array_inv!36548 (array!98639) Bool)

(assert (=> start!125274 (array_inv!36548 a!2862)))

(declare-fun b!1461050 () Bool)

(declare-fun res!990831 () Bool)

(assert (=> b!1461050 (=> (not res!990831) (not e!821458))))

(assert (=> b!1461050 (= res!990831 (and (= (size!48154 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48154 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48154 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461051 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1461051 (= e!821455 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639976 lt!639972 mask!2687) (seekEntryOrOpen!0 lt!639976 lt!639972 mask!2687)))))

(declare-fun b!1461052 () Bool)

(declare-fun e!821454 () Bool)

(assert (=> b!1461052 (= e!821458 e!821454)))

(declare-fun res!990825 () Bool)

(assert (=> b!1461052 (=> (not res!990825) (not e!821454))))

(assert (=> b!1461052 (= res!990825 (= (select (store (arr!47603 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461052 (= lt!639972 (array!98640 (store (arr!47603 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48154 a!2862)))))

(declare-fun b!1461053 () Bool)

(declare-fun res!990838 () Bool)

(assert (=> b!1461053 (=> (not res!990838) (not e!821458))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1461053 (= res!990838 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48154 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48154 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48154 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461054 () Bool)

(declare-fun e!821453 () Bool)

(assert (=> b!1461054 (= e!821453 e!821457)))

(declare-fun res!990827 () Bool)

(assert (=> b!1461054 (=> res!990827 e!821457)))

(assert (=> b!1461054 (= res!990827 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639970 #b00000000000000000000000000000000) (bvsge lt!639970 (size!48154 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461054 (= lt!639970 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!639971 () SeekEntryResult!11878)

(declare-fun b!1461055 () Bool)

(assert (=> b!1461055 (= e!821455 (= lt!639971 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639976 lt!639972 mask!2687)))))

(declare-fun b!1461056 () Bool)

(declare-fun e!821459 () Bool)

(assert (=> b!1461056 (= e!821454 e!821459)))

(declare-fun res!990836 () Bool)

(assert (=> b!1461056 (=> (not res!990836) (not e!821459))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461056 (= res!990836 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47603 a!2862) j!93) mask!2687) (select (arr!47603 a!2862) j!93) a!2862 mask!2687) lt!639975))))

(assert (=> b!1461056 (= lt!639975 (Intermediate!11878 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461057 () Bool)

(assert (=> b!1461057 (= e!821462 (not e!821453))))

(declare-fun res!990834 () Bool)

(assert (=> b!1461057 (=> res!990834 e!821453)))

(assert (=> b!1461057 (= res!990834 (or (and (= (select (arr!47603 a!2862) index!646) (select (store (arr!47603 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47603 a!2862) index!646) (select (arr!47603 a!2862) j!93))) (= (select (arr!47603 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461057 e!821461))

(declare-fun res!990830 () Bool)

(assert (=> b!1461057 (=> (not res!990830) (not e!821461))))

(assert (=> b!1461057 (= res!990830 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49200 0))(
  ( (Unit!49201) )
))
(declare-fun lt!639973 () Unit!49200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49200)

(assert (=> b!1461057 (= lt!639973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461058 () Bool)

(assert (=> b!1461058 (= e!821456 (not (= lt!639971 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639970 lt!639976 lt!639972 mask!2687))))))

(declare-fun b!1461059 () Bool)

(declare-fun res!990828 () Bool)

(assert (=> b!1461059 (=> (not res!990828) (not e!821459))))

(assert (=> b!1461059 (= res!990828 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47603 a!2862) j!93) a!2862 mask!2687) lt!639975))))

(declare-fun b!1461060 () Bool)

(declare-fun res!990829 () Bool)

(assert (=> b!1461060 (=> (not res!990829) (not e!821458))))

(declare-datatypes ((List!34284 0))(
  ( (Nil!34281) (Cons!34280 (h!35630 (_ BitVec 64)) (t!48985 List!34284)) )
))
(declare-fun arrayNoDuplicates!0 (array!98639 (_ BitVec 32) List!34284) Bool)

(assert (=> b!1461060 (= res!990829 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34281))))

(declare-fun b!1461061 () Bool)

(declare-fun res!990837 () Bool)

(assert (=> b!1461061 (=> (not res!990837) (not e!821458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461061 (= res!990837 (validKeyInArray!0 (select (arr!47603 a!2862) j!93)))))

(declare-fun b!1461062 () Bool)

(declare-fun res!990832 () Bool)

(assert (=> b!1461062 (=> (not res!990832) (not e!821458))))

(assert (=> b!1461062 (= res!990832 (validKeyInArray!0 (select (arr!47603 a!2862) i!1006)))))

(declare-fun b!1461063 () Bool)

(assert (=> b!1461063 (= e!821459 e!821462)))

(declare-fun res!990835 () Bool)

(assert (=> b!1461063 (=> (not res!990835) (not e!821462))))

(assert (=> b!1461063 (= res!990835 (= lt!639971 (Intermediate!11878 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461063 (= lt!639971 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639976 mask!2687) lt!639976 lt!639972 mask!2687))))

(assert (=> b!1461063 (= lt!639976 (select (store (arr!47603 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461064 () Bool)

(assert (=> b!1461064 (= e!821461 (or (= (select (arr!47603 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47603 a!2862) intermediateBeforeIndex!19) (select (arr!47603 a!2862) j!93))))))

(assert (= (and start!125274 res!990824) b!1461050))

(assert (= (and b!1461050 res!990831) b!1461062))

(assert (= (and b!1461062 res!990832) b!1461061))

(assert (= (and b!1461061 res!990837) b!1461048))

(assert (= (and b!1461048 res!990823) b!1461060))

(assert (= (and b!1461060 res!990829) b!1461053))

(assert (= (and b!1461053 res!990838) b!1461052))

(assert (= (and b!1461052 res!990825) b!1461056))

(assert (= (and b!1461056 res!990836) b!1461059))

(assert (= (and b!1461059 res!990828) b!1461063))

(assert (= (and b!1461063 res!990835) b!1461044))

(assert (= (and b!1461044 c!134624) b!1461055))

(assert (= (and b!1461044 (not c!134624)) b!1461051))

(assert (= (and b!1461044 res!990833) b!1461049))

(assert (= (and b!1461049 res!990826) b!1461057))

(assert (= (and b!1461057 res!990830) b!1461047))

(assert (= (and b!1461047 res!990839) b!1461064))

(assert (= (and b!1461057 (not res!990834)) b!1461054))

(assert (= (and b!1461054 (not res!990827)) b!1461045))

(assert (= (and b!1461045 (not res!990840)) b!1461046))

(assert (= (and b!1461046 c!134623) b!1461058))

(assert (= (and b!1461046 (not c!134623)) b!1461043))

(declare-fun m!1348717 () Bool)

(assert (=> b!1461043 m!1348717))

(declare-fun m!1348719 () Bool)

(assert (=> b!1461043 m!1348719))

(declare-fun m!1348721 () Bool)

(assert (=> b!1461056 m!1348721))

(assert (=> b!1461056 m!1348721))

(declare-fun m!1348723 () Bool)

(assert (=> b!1461056 m!1348723))

(assert (=> b!1461056 m!1348723))

(assert (=> b!1461056 m!1348721))

(declare-fun m!1348725 () Bool)

(assert (=> b!1461056 m!1348725))

(assert (=> b!1461047 m!1348721))

(assert (=> b!1461047 m!1348721))

(declare-fun m!1348727 () Bool)

(assert (=> b!1461047 m!1348727))

(declare-fun m!1348729 () Bool)

(assert (=> b!1461055 m!1348729))

(declare-fun m!1348731 () Bool)

(assert (=> b!1461063 m!1348731))

(assert (=> b!1461063 m!1348731))

(declare-fun m!1348733 () Bool)

(assert (=> b!1461063 m!1348733))

(declare-fun m!1348735 () Bool)

(assert (=> b!1461063 m!1348735))

(declare-fun m!1348737 () Bool)

(assert (=> b!1461063 m!1348737))

(declare-fun m!1348739 () Bool)

(assert (=> b!1461060 m!1348739))

(declare-fun m!1348741 () Bool)

(assert (=> b!1461048 m!1348741))

(declare-fun m!1348743 () Bool)

(assert (=> b!1461058 m!1348743))

(declare-fun m!1348745 () Bool)

(assert (=> start!125274 m!1348745))

(declare-fun m!1348747 () Bool)

(assert (=> start!125274 m!1348747))

(assert (=> b!1461061 m!1348721))

(assert (=> b!1461061 m!1348721))

(declare-fun m!1348749 () Bool)

(assert (=> b!1461061 m!1348749))

(assert (=> b!1461045 m!1348721))

(assert (=> b!1461045 m!1348721))

(declare-fun m!1348751 () Bool)

(assert (=> b!1461045 m!1348751))

(declare-fun m!1348753 () Bool)

(assert (=> b!1461057 m!1348753))

(assert (=> b!1461057 m!1348735))

(declare-fun m!1348755 () Bool)

(assert (=> b!1461057 m!1348755))

(declare-fun m!1348757 () Bool)

(assert (=> b!1461057 m!1348757))

(declare-fun m!1348759 () Bool)

(assert (=> b!1461057 m!1348759))

(assert (=> b!1461057 m!1348721))

(declare-fun m!1348761 () Bool)

(assert (=> b!1461064 m!1348761))

(assert (=> b!1461064 m!1348721))

(assert (=> b!1461059 m!1348721))

(assert (=> b!1461059 m!1348721))

(declare-fun m!1348763 () Bool)

(assert (=> b!1461059 m!1348763))

(assert (=> b!1461052 m!1348735))

(declare-fun m!1348765 () Bool)

(assert (=> b!1461052 m!1348765))

(declare-fun m!1348767 () Bool)

(assert (=> b!1461062 m!1348767))

(assert (=> b!1461062 m!1348767))

(declare-fun m!1348769 () Bool)

(assert (=> b!1461062 m!1348769))

(declare-fun m!1348771 () Bool)

(assert (=> b!1461054 m!1348771))

(declare-fun m!1348773 () Bool)

(assert (=> b!1461051 m!1348773))

(assert (=> b!1461051 m!1348719))

(check-sat (not b!1461058) (not b!1461045) (not b!1461062) (not b!1461051) (not b!1461048) (not start!125274) (not b!1461056) (not b!1461061) (not b!1461059) (not b!1461060) (not b!1461057) (not b!1461047) (not b!1461055) (not b!1461043) (not b!1461063) (not b!1461054))
(check-sat)
