; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126612 () Bool)

(assert start!126612)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648134 () (_ BitVec 32))

(declare-fun e!832885 () Bool)

(declare-datatypes ((array!99491 0))(
  ( (array!99492 (arr!48017 (Array (_ BitVec 32) (_ BitVec 64))) (size!48568 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99491)

(declare-fun b!1485659 () Bool)

(assert (=> b!1485659 (= e!832885 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!648134 #b00000000000000000000000000000000) (bvslt lt!648134 (size!48568 a!2862)))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485659 (= lt!648134 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485660 () Bool)

(declare-fun res!1010427 () Bool)

(declare-fun e!832882 () Bool)

(assert (=> b!1485660 (=> (not res!1010427) (not e!832882))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485660 (= res!1010427 (validKeyInArray!0 (select (arr!48017 a!2862) i!1006)))))

(declare-fun b!1485661 () Bool)

(declare-fun e!832880 () Bool)

(assert (=> b!1485661 (= e!832880 (not e!832885))))

(declare-fun res!1010421 () Bool)

(assert (=> b!1485661 (=> res!1010421 e!832885)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1485661 (= res!1010421 (or (and (= (select (arr!48017 a!2862) index!646) (select (store (arr!48017 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48017 a!2862) index!646) (select (arr!48017 a!2862) j!93))) (= (select (arr!48017 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832887 () Bool)

(assert (=> b!1485661 e!832887))

(declare-fun res!1010438 () Bool)

(assert (=> b!1485661 (=> (not res!1010438) (not e!832887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99491 (_ BitVec 32)) Bool)

(assert (=> b!1485661 (= res!1010438 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49848 0))(
  ( (Unit!49849) )
))
(declare-fun lt!648137 () Unit!49848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49848)

(assert (=> b!1485661 (= lt!648137 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485662 () Bool)

(declare-fun res!1010434 () Bool)

(assert (=> b!1485662 (=> (not res!1010434) (not e!832882))))

(assert (=> b!1485662 (= res!1010434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485663 () Bool)

(declare-fun res!1010433 () Bool)

(declare-fun e!832888 () Bool)

(assert (=> b!1485663 (=> (not res!1010433) (not e!832888))))

(declare-datatypes ((SeekEntryResult!12280 0))(
  ( (MissingZero!12280 (index!51511 (_ BitVec 32))) (Found!12280 (index!51512 (_ BitVec 32))) (Intermediate!12280 (undefined!13092 Bool) (index!51513 (_ BitVec 32)) (x!133087 (_ BitVec 32))) (Undefined!12280) (MissingVacant!12280 (index!51514 (_ BitVec 32))) )
))
(declare-fun lt!648139 () SeekEntryResult!12280)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99491 (_ BitVec 32)) SeekEntryResult!12280)

(assert (=> b!1485663 (= res!1010433 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48017 a!2862) j!93) a!2862 mask!2687) lt!648139))))

(declare-fun b!1485664 () Bool)

(declare-fun res!1010431 () Bool)

(assert (=> b!1485664 (=> (not res!1010431) (not e!832880))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485664 (= res!1010431 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485665 () Bool)

(declare-fun res!1010437 () Bool)

(assert (=> b!1485665 (=> (not res!1010437) (not e!832880))))

(declare-fun e!832886 () Bool)

(assert (=> b!1485665 (= res!1010437 e!832886)))

(declare-fun c!137144 () Bool)

(assert (=> b!1485665 (= c!137144 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485666 () Bool)

(declare-fun res!1010424 () Bool)

(assert (=> b!1485666 (=> (not res!1010424) (not e!832887))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1485666 (= res!1010424 (or (= (select (arr!48017 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48017 a!2862) intermediateBeforeIndex!19) (select (arr!48017 a!2862) j!93))))))

(declare-fun b!1485667 () Bool)

(declare-fun res!1010425 () Bool)

(assert (=> b!1485667 (=> (not res!1010425) (not e!832882))))

(assert (=> b!1485667 (= res!1010425 (validKeyInArray!0 (select (arr!48017 a!2862) j!93)))))

(declare-fun b!1485668 () Bool)

(declare-fun res!1010422 () Bool)

(assert (=> b!1485668 (=> (not res!1010422) (not e!832882))))

(declare-datatypes ((List!34698 0))(
  ( (Nil!34695) (Cons!34694 (h!36068 (_ BitVec 64)) (t!49399 List!34698)) )
))
(declare-fun arrayNoDuplicates!0 (array!99491 (_ BitVec 32) List!34698) Bool)

(assert (=> b!1485668 (= res!1010422 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34695))))

(declare-fun b!1485669 () Bool)

(declare-fun res!1010428 () Bool)

(assert (=> b!1485669 (=> (not res!1010428) (not e!832887))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99491 (_ BitVec 32)) SeekEntryResult!12280)

(assert (=> b!1485669 (= res!1010428 (= (seekEntryOrOpen!0 (select (arr!48017 a!2862) j!93) a!2862 mask!2687) (Found!12280 j!93)))))

(declare-fun b!1485670 () Bool)

(declare-fun res!1010435 () Bool)

(assert (=> b!1485670 (=> (not res!1010435) (not e!832882))))

(assert (=> b!1485670 (= res!1010435 (and (= (size!48568 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48568 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48568 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485671 () Bool)

(declare-fun e!832889 () Bool)

(assert (=> b!1485671 (= e!832887 e!832889)))

(declare-fun res!1010426 () Bool)

(assert (=> b!1485671 (=> res!1010426 e!832889)))

(declare-fun lt!648133 () (_ BitVec 64))

(assert (=> b!1485671 (= res!1010426 (or (and (= (select (arr!48017 a!2862) index!646) lt!648133) (= (select (arr!48017 a!2862) index!646) (select (arr!48017 a!2862) j!93))) (= (select (arr!48017 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485671 (= lt!648133 (select (store (arr!48017 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485673 () Bool)

(declare-fun e!832881 () Bool)

(assert (=> b!1485673 (= e!832881 e!832888)))

(declare-fun res!1010423 () Bool)

(assert (=> b!1485673 (=> (not res!1010423) (not e!832888))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485673 (= res!1010423 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) (select (arr!48017 a!2862) j!93) a!2862 mask!2687) lt!648139))))

(assert (=> b!1485673 (= lt!648139 (Intermediate!12280 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!648138 () array!99491)

(declare-fun b!1485674 () Bool)

(declare-fun e!832884 () Bool)

(declare-fun lt!648136 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99491 (_ BitVec 32)) SeekEntryResult!12280)

(assert (=> b!1485674 (= e!832884 (= (seekEntryOrOpen!0 lt!648136 lt!648138 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648136 lt!648138 mask!2687)))))

(declare-fun b!1485675 () Bool)

(declare-fun lt!648135 () SeekEntryResult!12280)

(assert (=> b!1485675 (= e!832886 (= lt!648135 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648136 lt!648138 mask!2687)))))

(declare-fun b!1485676 () Bool)

(assert (=> b!1485676 (= e!832888 e!832880)))

(declare-fun res!1010430 () Bool)

(assert (=> b!1485676 (=> (not res!1010430) (not e!832880))))

(assert (=> b!1485676 (= res!1010430 (= lt!648135 (Intermediate!12280 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1485676 (= lt!648135 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648136 mask!2687) lt!648136 lt!648138 mask!2687))))

(assert (=> b!1485676 (= lt!648136 (select (store (arr!48017 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485677 () Bool)

(declare-fun res!1010429 () Bool)

(assert (=> b!1485677 (=> (not res!1010429) (not e!832882))))

(assert (=> b!1485677 (= res!1010429 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48568 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48568 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48568 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485678 () Bool)

(assert (=> b!1485678 (= e!832889 e!832884)))

(declare-fun res!1010432 () Bool)

(assert (=> b!1485678 (=> (not res!1010432) (not e!832884))))

(assert (=> b!1485678 (= res!1010432 (and (= index!646 intermediateAfterIndex!19) (= lt!648133 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485679 () Bool)

(assert (=> b!1485679 (= e!832882 e!832881)))

(declare-fun res!1010439 () Bool)

(assert (=> b!1485679 (=> (not res!1010439) (not e!832881))))

(assert (=> b!1485679 (= res!1010439 (= (select (store (arr!48017 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485679 (= lt!648138 (array!99492 (store (arr!48017 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48568 a!2862)))))

(declare-fun b!1485672 () Bool)

(assert (=> b!1485672 (= e!832886 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648136 lt!648138 mask!2687) (seekEntryOrOpen!0 lt!648136 lt!648138 mask!2687)))))

(declare-fun res!1010436 () Bool)

(assert (=> start!126612 (=> (not res!1010436) (not e!832882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126612 (= res!1010436 (validMask!0 mask!2687))))

(assert (=> start!126612 e!832882))

(assert (=> start!126612 true))

(declare-fun array_inv!36962 (array!99491) Bool)

(assert (=> start!126612 (array_inv!36962 a!2862)))

(assert (= (and start!126612 res!1010436) b!1485670))

(assert (= (and b!1485670 res!1010435) b!1485660))

(assert (= (and b!1485660 res!1010427) b!1485667))

(assert (= (and b!1485667 res!1010425) b!1485662))

(assert (= (and b!1485662 res!1010434) b!1485668))

(assert (= (and b!1485668 res!1010422) b!1485677))

(assert (= (and b!1485677 res!1010429) b!1485679))

(assert (= (and b!1485679 res!1010439) b!1485673))

(assert (= (and b!1485673 res!1010423) b!1485663))

(assert (= (and b!1485663 res!1010433) b!1485676))

(assert (= (and b!1485676 res!1010430) b!1485665))

(assert (= (and b!1485665 c!137144) b!1485675))

(assert (= (and b!1485665 (not c!137144)) b!1485672))

(assert (= (and b!1485665 res!1010437) b!1485664))

(assert (= (and b!1485664 res!1010431) b!1485661))

(assert (= (and b!1485661 res!1010438) b!1485669))

(assert (= (and b!1485669 res!1010428) b!1485666))

(assert (= (and b!1485666 res!1010424) b!1485671))

(assert (= (and b!1485671 (not res!1010426)) b!1485678))

(assert (= (and b!1485678 res!1010432) b!1485674))

(assert (= (and b!1485661 (not res!1010421)) b!1485659))

(declare-fun m!1370797 () Bool)

(assert (=> b!1485662 m!1370797))

(declare-fun m!1370799 () Bool)

(assert (=> b!1485676 m!1370799))

(assert (=> b!1485676 m!1370799))

(declare-fun m!1370801 () Bool)

(assert (=> b!1485676 m!1370801))

(declare-fun m!1370803 () Bool)

(assert (=> b!1485676 m!1370803))

(declare-fun m!1370805 () Bool)

(assert (=> b!1485676 m!1370805))

(declare-fun m!1370807 () Bool)

(assert (=> b!1485663 m!1370807))

(assert (=> b!1485663 m!1370807))

(declare-fun m!1370809 () Bool)

(assert (=> b!1485663 m!1370809))

(declare-fun m!1370811 () Bool)

(assert (=> b!1485660 m!1370811))

(assert (=> b!1485660 m!1370811))

(declare-fun m!1370813 () Bool)

(assert (=> b!1485660 m!1370813))

(assert (=> b!1485667 m!1370807))

(assert (=> b!1485667 m!1370807))

(declare-fun m!1370815 () Bool)

(assert (=> b!1485667 m!1370815))

(assert (=> b!1485669 m!1370807))

(assert (=> b!1485669 m!1370807))

(declare-fun m!1370817 () Bool)

(assert (=> b!1485669 m!1370817))

(declare-fun m!1370819 () Bool)

(assert (=> b!1485666 m!1370819))

(assert (=> b!1485666 m!1370807))

(declare-fun m!1370821 () Bool)

(assert (=> b!1485668 m!1370821))

(declare-fun m!1370823 () Bool)

(assert (=> b!1485661 m!1370823))

(assert (=> b!1485661 m!1370803))

(declare-fun m!1370825 () Bool)

(assert (=> b!1485661 m!1370825))

(declare-fun m!1370827 () Bool)

(assert (=> b!1485661 m!1370827))

(declare-fun m!1370829 () Bool)

(assert (=> b!1485661 m!1370829))

(assert (=> b!1485661 m!1370807))

(assert (=> b!1485679 m!1370803))

(declare-fun m!1370831 () Bool)

(assert (=> b!1485679 m!1370831))

(declare-fun m!1370833 () Bool)

(assert (=> b!1485672 m!1370833))

(declare-fun m!1370835 () Bool)

(assert (=> b!1485672 m!1370835))

(declare-fun m!1370837 () Bool)

(assert (=> b!1485675 m!1370837))

(declare-fun m!1370839 () Bool)

(assert (=> b!1485659 m!1370839))

(assert (=> b!1485673 m!1370807))

(assert (=> b!1485673 m!1370807))

(declare-fun m!1370841 () Bool)

(assert (=> b!1485673 m!1370841))

(assert (=> b!1485673 m!1370841))

(assert (=> b!1485673 m!1370807))

(declare-fun m!1370843 () Bool)

(assert (=> b!1485673 m!1370843))

(declare-fun m!1370845 () Bool)

(assert (=> start!126612 m!1370845))

(declare-fun m!1370847 () Bool)

(assert (=> start!126612 m!1370847))

(assert (=> b!1485674 m!1370835))

(assert (=> b!1485674 m!1370833))

(assert (=> b!1485671 m!1370827))

(assert (=> b!1485671 m!1370807))

(assert (=> b!1485671 m!1370803))

(assert (=> b!1485671 m!1370825))

(check-sat (not b!1485668) (not b!1485659) (not b!1485667) (not b!1485662) (not b!1485660) (not b!1485669) (not b!1485663) (not b!1485675) (not b!1485674) (not b!1485676) (not b!1485673) (not b!1485661) (not start!126612) (not b!1485672))
(check-sat)
(get-model)

(declare-fun b!1485755 () Bool)

(declare-fun e!832928 () SeekEntryResult!12280)

(assert (=> b!1485755 (= e!832928 Undefined!12280)))

(declare-fun b!1485756 () Bool)

(declare-fun c!137154 () Bool)

(declare-fun lt!648168 () (_ BitVec 64))

(assert (=> b!1485756 (= c!137154 (= lt!648168 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!832926 () SeekEntryResult!12280)

(declare-fun e!832927 () SeekEntryResult!12280)

(assert (=> b!1485756 (= e!832926 e!832927)))

(declare-fun b!1485757 () Bool)

(declare-fun lt!648167 () SeekEntryResult!12280)

(assert (=> b!1485757 (= e!832927 (MissingZero!12280 (index!51513 lt!648167)))))

(declare-fun b!1485758 () Bool)

(assert (=> b!1485758 (= e!832927 (seekKeyOrZeroReturnVacant!0 (x!133087 lt!648167) (index!51513 lt!648167) (index!51513 lt!648167) lt!648136 lt!648138 mask!2687))))

(declare-fun d!156355 () Bool)

(declare-fun lt!648169 () SeekEntryResult!12280)

(get-info :version)

(assert (=> d!156355 (and (or ((_ is Undefined!12280) lt!648169) (not ((_ is Found!12280) lt!648169)) (and (bvsge (index!51512 lt!648169) #b00000000000000000000000000000000) (bvslt (index!51512 lt!648169) (size!48568 lt!648138)))) (or ((_ is Undefined!12280) lt!648169) ((_ is Found!12280) lt!648169) (not ((_ is MissingZero!12280) lt!648169)) (and (bvsge (index!51511 lt!648169) #b00000000000000000000000000000000) (bvslt (index!51511 lt!648169) (size!48568 lt!648138)))) (or ((_ is Undefined!12280) lt!648169) ((_ is Found!12280) lt!648169) ((_ is MissingZero!12280) lt!648169) (not ((_ is MissingVacant!12280) lt!648169)) (and (bvsge (index!51514 lt!648169) #b00000000000000000000000000000000) (bvslt (index!51514 lt!648169) (size!48568 lt!648138)))) (or ((_ is Undefined!12280) lt!648169) (ite ((_ is Found!12280) lt!648169) (= (select (arr!48017 lt!648138) (index!51512 lt!648169)) lt!648136) (ite ((_ is MissingZero!12280) lt!648169) (= (select (arr!48017 lt!648138) (index!51511 lt!648169)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12280) lt!648169) (= (select (arr!48017 lt!648138) (index!51514 lt!648169)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156355 (= lt!648169 e!832928)))

(declare-fun c!137156 () Bool)

(assert (=> d!156355 (= c!137156 (and ((_ is Intermediate!12280) lt!648167) (undefined!13092 lt!648167)))))

(assert (=> d!156355 (= lt!648167 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648136 mask!2687) lt!648136 lt!648138 mask!2687))))

(assert (=> d!156355 (validMask!0 mask!2687)))

(assert (=> d!156355 (= (seekEntryOrOpen!0 lt!648136 lt!648138 mask!2687) lt!648169)))

(declare-fun b!1485759 () Bool)

(assert (=> b!1485759 (= e!832928 e!832926)))

(assert (=> b!1485759 (= lt!648168 (select (arr!48017 lt!648138) (index!51513 lt!648167)))))

(declare-fun c!137155 () Bool)

(assert (=> b!1485759 (= c!137155 (= lt!648168 lt!648136))))

(declare-fun b!1485760 () Bool)

(assert (=> b!1485760 (= e!832926 (Found!12280 (index!51513 lt!648167)))))

(assert (= (and d!156355 c!137156) b!1485755))

(assert (= (and d!156355 (not c!137156)) b!1485759))

(assert (= (and b!1485759 c!137155) b!1485760))

(assert (= (and b!1485759 (not c!137155)) b!1485756))

(assert (= (and b!1485756 c!137154) b!1485757))

(assert (= (and b!1485756 (not c!137154)) b!1485758))

(declare-fun m!1370901 () Bool)

(assert (=> b!1485758 m!1370901))

(declare-fun m!1370903 () Bool)

(assert (=> d!156355 m!1370903))

(declare-fun m!1370905 () Bool)

(assert (=> d!156355 m!1370905))

(assert (=> d!156355 m!1370799))

(assert (=> d!156355 m!1370801))

(assert (=> d!156355 m!1370845))

(assert (=> d!156355 m!1370799))

(declare-fun m!1370907 () Bool)

(assert (=> d!156355 m!1370907))

(declare-fun m!1370909 () Bool)

(assert (=> b!1485759 m!1370909))

(assert (=> b!1485674 d!156355))

(declare-fun b!1485773 () Bool)

(declare-fun c!137163 () Bool)

(declare-fun lt!648178 () (_ BitVec 64))

(assert (=> b!1485773 (= c!137163 (= lt!648178 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!832936 () SeekEntryResult!12280)

(declare-fun e!832935 () SeekEntryResult!12280)

(assert (=> b!1485773 (= e!832936 e!832935)))

(declare-fun lt!648177 () SeekEntryResult!12280)

(declare-fun d!156357 () Bool)

(assert (=> d!156357 (and (or ((_ is Undefined!12280) lt!648177) (not ((_ is Found!12280) lt!648177)) (and (bvsge (index!51512 lt!648177) #b00000000000000000000000000000000) (bvslt (index!51512 lt!648177) (size!48568 lt!648138)))) (or ((_ is Undefined!12280) lt!648177) ((_ is Found!12280) lt!648177) (not ((_ is MissingVacant!12280) lt!648177)) (not (= (index!51514 lt!648177) intermediateAfterIndex!19)) (and (bvsge (index!51514 lt!648177) #b00000000000000000000000000000000) (bvslt (index!51514 lt!648177) (size!48568 lt!648138)))) (or ((_ is Undefined!12280) lt!648177) (ite ((_ is Found!12280) lt!648177) (= (select (arr!48017 lt!648138) (index!51512 lt!648177)) lt!648136) (and ((_ is MissingVacant!12280) lt!648177) (= (index!51514 lt!648177) intermediateAfterIndex!19) (= (select (arr!48017 lt!648138) (index!51514 lt!648177)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!832937 () SeekEntryResult!12280)

(assert (=> d!156357 (= lt!648177 e!832937)))

(declare-fun c!137164 () Bool)

(assert (=> d!156357 (= c!137164 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156357 (= lt!648178 (select (arr!48017 lt!648138) index!646))))

(assert (=> d!156357 (validMask!0 mask!2687)))

(assert (=> d!156357 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648136 lt!648138 mask!2687) lt!648177)))

(declare-fun b!1485774 () Bool)

(assert (=> b!1485774 (= e!832937 Undefined!12280)))

(declare-fun b!1485775 () Bool)

(assert (=> b!1485775 (= e!832935 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648136 lt!648138 mask!2687))))

(declare-fun b!1485776 () Bool)

(assert (=> b!1485776 (= e!832936 (Found!12280 index!646))))

(declare-fun b!1485777 () Bool)

(assert (=> b!1485777 (= e!832935 (MissingVacant!12280 intermediateAfterIndex!19))))

(declare-fun b!1485778 () Bool)

(assert (=> b!1485778 (= e!832937 e!832936)))

(declare-fun c!137165 () Bool)

(assert (=> b!1485778 (= c!137165 (= lt!648178 lt!648136))))

(assert (= (and d!156357 c!137164) b!1485774))

(assert (= (and d!156357 (not c!137164)) b!1485778))

(assert (= (and b!1485778 c!137165) b!1485776))

(assert (= (and b!1485778 (not c!137165)) b!1485773))

(assert (= (and b!1485773 c!137163) b!1485777))

(assert (= (and b!1485773 (not c!137163)) b!1485775))

(declare-fun m!1370913 () Bool)

(assert (=> d!156357 m!1370913))

(declare-fun m!1370915 () Bool)

(assert (=> d!156357 m!1370915))

(declare-fun m!1370917 () Bool)

(assert (=> d!156357 m!1370917))

(assert (=> d!156357 m!1370845))

(assert (=> b!1485775 m!1370839))

(assert (=> b!1485775 m!1370839))

(declare-fun m!1370919 () Bool)

(assert (=> b!1485775 m!1370919))

(assert (=> b!1485674 d!156357))

(declare-fun b!1485815 () Bool)

(declare-fun e!832957 () SeekEntryResult!12280)

(assert (=> b!1485815 (= e!832957 (Intermediate!12280 true index!646 x!665))))

(declare-fun b!1485816 () Bool)

(declare-fun e!832961 () SeekEntryResult!12280)

(assert (=> b!1485816 (= e!832957 e!832961)))

(declare-fun c!137182 () Bool)

(declare-fun lt!648189 () (_ BitVec 64))

(assert (=> b!1485816 (= c!137182 (or (= lt!648189 (select (arr!48017 a!2862) j!93)) (= (bvadd lt!648189 lt!648189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156363 () Bool)

(declare-fun e!832959 () Bool)

(assert (=> d!156363 e!832959))

(declare-fun c!137181 () Bool)

(declare-fun lt!648190 () SeekEntryResult!12280)

(assert (=> d!156363 (= c!137181 (and ((_ is Intermediate!12280) lt!648190) (undefined!13092 lt!648190)))))

(assert (=> d!156363 (= lt!648190 e!832957)))

(declare-fun c!137183 () Bool)

(assert (=> d!156363 (= c!137183 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156363 (= lt!648189 (select (arr!48017 a!2862) index!646))))

(assert (=> d!156363 (validMask!0 mask!2687)))

(assert (=> d!156363 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48017 a!2862) j!93) a!2862 mask!2687) lt!648190)))

(declare-fun b!1485817 () Bool)

(assert (=> b!1485817 (= e!832961 (Intermediate!12280 false index!646 x!665))))

(declare-fun b!1485818 () Bool)

(declare-fun e!832958 () Bool)

(assert (=> b!1485818 (= e!832959 e!832958)))

(declare-fun res!1010505 () Bool)

(assert (=> b!1485818 (= res!1010505 (and ((_ is Intermediate!12280) lt!648190) (not (undefined!13092 lt!648190)) (bvslt (x!133087 lt!648190) #b01111111111111111111111111111110) (bvsge (x!133087 lt!648190) #b00000000000000000000000000000000) (bvsge (x!133087 lt!648190) x!665)))))

(assert (=> b!1485818 (=> (not res!1010505) (not e!832958))))

(declare-fun b!1485819 () Bool)

(assert (=> b!1485819 (and (bvsge (index!51513 lt!648190) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648190) (size!48568 a!2862)))))

(declare-fun res!1010504 () Bool)

(assert (=> b!1485819 (= res!1010504 (= (select (arr!48017 a!2862) (index!51513 lt!648190)) (select (arr!48017 a!2862) j!93)))))

(declare-fun e!832960 () Bool)

(assert (=> b!1485819 (=> res!1010504 e!832960)))

(assert (=> b!1485819 (= e!832958 e!832960)))

(declare-fun b!1485820 () Bool)

(assert (=> b!1485820 (and (bvsge (index!51513 lt!648190) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648190) (size!48568 a!2862)))))

(declare-fun res!1010503 () Bool)

(assert (=> b!1485820 (= res!1010503 (= (select (arr!48017 a!2862) (index!51513 lt!648190)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485820 (=> res!1010503 e!832960)))

(declare-fun b!1485821 () Bool)

(assert (=> b!1485821 (= e!832959 (bvsge (x!133087 lt!648190) #b01111111111111111111111111111110))))

(declare-fun b!1485822 () Bool)

(assert (=> b!1485822 (= e!832961 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48017 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1485823 () Bool)

(assert (=> b!1485823 (and (bvsge (index!51513 lt!648190) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648190) (size!48568 a!2862)))))

(assert (=> b!1485823 (= e!832960 (= (select (arr!48017 a!2862) (index!51513 lt!648190)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156363 c!137183) b!1485815))

(assert (= (and d!156363 (not c!137183)) b!1485816))

(assert (= (and b!1485816 c!137182) b!1485817))

(assert (= (and b!1485816 (not c!137182)) b!1485822))

(assert (= (and d!156363 c!137181) b!1485821))

(assert (= (and d!156363 (not c!137181)) b!1485818))

(assert (= (and b!1485818 res!1010505) b!1485819))

(assert (= (and b!1485819 (not res!1010504)) b!1485820))

(assert (= (and b!1485820 (not res!1010503)) b!1485823))

(declare-fun m!1370929 () Bool)

(assert (=> b!1485823 m!1370929))

(assert (=> b!1485822 m!1370839))

(assert (=> b!1485822 m!1370839))

(assert (=> b!1485822 m!1370807))

(declare-fun m!1370931 () Bool)

(assert (=> b!1485822 m!1370931))

(assert (=> b!1485819 m!1370929))

(assert (=> d!156363 m!1370827))

(assert (=> d!156363 m!1370845))

(assert (=> b!1485820 m!1370929))

(assert (=> b!1485663 d!156363))

(declare-fun b!1485856 () Bool)

(declare-fun e!832982 () Bool)

(declare-fun call!67875 () Bool)

(assert (=> b!1485856 (= e!832982 call!67875)))

(declare-fun d!156371 () Bool)

(declare-fun res!1010511 () Bool)

(declare-fun e!832980 () Bool)

(assert (=> d!156371 (=> res!1010511 e!832980)))

(assert (=> d!156371 (= res!1010511 (bvsge #b00000000000000000000000000000000 (size!48568 a!2862)))))

(assert (=> d!156371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!832980)))

(declare-fun b!1485857 () Bool)

(assert (=> b!1485857 (= e!832980 e!832982)))

(declare-fun c!137198 () Bool)

(assert (=> b!1485857 (= c!137198 (validKeyInArray!0 (select (arr!48017 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1485858 () Bool)

(declare-fun e!832981 () Bool)

(assert (=> b!1485858 (= e!832982 e!832981)))

(declare-fun lt!648209 () (_ BitVec 64))

(assert (=> b!1485858 (= lt!648209 (select (arr!48017 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!648210 () Unit!49848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99491 (_ BitVec 64) (_ BitVec 32)) Unit!49848)

(assert (=> b!1485858 (= lt!648210 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648209 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1485858 (arrayContainsKey!0 a!2862 lt!648209 #b00000000000000000000000000000000)))

(declare-fun lt!648211 () Unit!49848)

(assert (=> b!1485858 (= lt!648211 lt!648210)))

(declare-fun res!1010510 () Bool)

(assert (=> b!1485858 (= res!1010510 (= (seekEntryOrOpen!0 (select (arr!48017 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12280 #b00000000000000000000000000000000)))))

(assert (=> b!1485858 (=> (not res!1010510) (not e!832981))))

(declare-fun bm!67872 () Bool)

(assert (=> bm!67872 (= call!67875 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1485859 () Bool)

(assert (=> b!1485859 (= e!832981 call!67875)))

(assert (= (and d!156371 (not res!1010511)) b!1485857))

(assert (= (and b!1485857 c!137198) b!1485858))

(assert (= (and b!1485857 (not c!137198)) b!1485856))

(assert (= (and b!1485858 res!1010510) b!1485859))

(assert (= (or b!1485859 b!1485856) bm!67872))

(declare-fun m!1370953 () Bool)

(assert (=> b!1485857 m!1370953))

(assert (=> b!1485857 m!1370953))

(declare-fun m!1370955 () Bool)

(assert (=> b!1485857 m!1370955))

(assert (=> b!1485858 m!1370953))

(declare-fun m!1370957 () Bool)

(assert (=> b!1485858 m!1370957))

(declare-fun m!1370959 () Bool)

(assert (=> b!1485858 m!1370959))

(assert (=> b!1485858 m!1370953))

(declare-fun m!1370961 () Bool)

(assert (=> b!1485858 m!1370961))

(declare-fun m!1370963 () Bool)

(assert (=> bm!67872 m!1370963))

(assert (=> b!1485662 d!156371))

(declare-fun d!156381 () Bool)

(assert (=> d!156381 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126612 d!156381))

(declare-fun d!156385 () Bool)

(assert (=> d!156385 (= (array_inv!36962 a!2862) (bvsge (size!48568 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126612 d!156385))

(declare-fun e!832998 () SeekEntryResult!12280)

(declare-fun b!1485887 () Bool)

(assert (=> b!1485887 (= e!832998 (Intermediate!12280 true (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1485888 () Bool)

(declare-fun e!833002 () SeekEntryResult!12280)

(assert (=> b!1485888 (= e!832998 e!833002)))

(declare-fun lt!648218 () (_ BitVec 64))

(declare-fun c!137209 () Bool)

(assert (=> b!1485888 (= c!137209 (or (= lt!648218 (select (arr!48017 a!2862) j!93)) (= (bvadd lt!648218 lt!648218) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156389 () Bool)

(declare-fun e!833000 () Bool)

(assert (=> d!156389 e!833000))

(declare-fun c!137208 () Bool)

(declare-fun lt!648219 () SeekEntryResult!12280)

(assert (=> d!156389 (= c!137208 (and ((_ is Intermediate!12280) lt!648219) (undefined!13092 lt!648219)))))

(assert (=> d!156389 (= lt!648219 e!832998)))

(declare-fun c!137210 () Bool)

(assert (=> d!156389 (= c!137210 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156389 (= lt!648218 (select (arr!48017 a!2862) (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687)))))

(assert (=> d!156389 (validMask!0 mask!2687)))

(assert (=> d!156389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) (select (arr!48017 a!2862) j!93) a!2862 mask!2687) lt!648219)))

(declare-fun b!1485889 () Bool)

(assert (=> b!1485889 (= e!833002 (Intermediate!12280 false (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1485890 () Bool)

(declare-fun e!832999 () Bool)

(assert (=> b!1485890 (= e!833000 e!832999)))

(declare-fun res!1010523 () Bool)

(assert (=> b!1485890 (= res!1010523 (and ((_ is Intermediate!12280) lt!648219) (not (undefined!13092 lt!648219)) (bvslt (x!133087 lt!648219) #b01111111111111111111111111111110) (bvsge (x!133087 lt!648219) #b00000000000000000000000000000000) (bvsge (x!133087 lt!648219) #b00000000000000000000000000000000)))))

(assert (=> b!1485890 (=> (not res!1010523) (not e!832999))))

(declare-fun b!1485891 () Bool)

(assert (=> b!1485891 (and (bvsge (index!51513 lt!648219) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648219) (size!48568 a!2862)))))

(declare-fun res!1010522 () Bool)

(assert (=> b!1485891 (= res!1010522 (= (select (arr!48017 a!2862) (index!51513 lt!648219)) (select (arr!48017 a!2862) j!93)))))

(declare-fun e!833001 () Bool)

(assert (=> b!1485891 (=> res!1010522 e!833001)))

(assert (=> b!1485891 (= e!832999 e!833001)))

(declare-fun b!1485892 () Bool)

(assert (=> b!1485892 (and (bvsge (index!51513 lt!648219) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648219) (size!48568 a!2862)))))

(declare-fun res!1010521 () Bool)

(assert (=> b!1485892 (= res!1010521 (= (select (arr!48017 a!2862) (index!51513 lt!648219)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485892 (=> res!1010521 e!833001)))

(declare-fun b!1485893 () Bool)

(assert (=> b!1485893 (= e!833000 (bvsge (x!133087 lt!648219) #b01111111111111111111111111111110))))

(declare-fun b!1485894 () Bool)

(assert (=> b!1485894 (= e!833002 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48017 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1485895 () Bool)

(assert (=> b!1485895 (and (bvsge (index!51513 lt!648219) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648219) (size!48568 a!2862)))))

(assert (=> b!1485895 (= e!833001 (= (select (arr!48017 a!2862) (index!51513 lt!648219)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156389 c!137210) b!1485887))

(assert (= (and d!156389 (not c!137210)) b!1485888))

(assert (= (and b!1485888 c!137209) b!1485889))

(assert (= (and b!1485888 (not c!137209)) b!1485894))

(assert (= (and d!156389 c!137208) b!1485893))

(assert (= (and d!156389 (not c!137208)) b!1485890))

(assert (= (and b!1485890 res!1010523) b!1485891))

(assert (= (and b!1485891 (not res!1010522)) b!1485892))

(assert (= (and b!1485892 (not res!1010521)) b!1485895))

(declare-fun m!1370969 () Bool)

(assert (=> b!1485895 m!1370969))

(assert (=> b!1485894 m!1370841))

(declare-fun m!1370971 () Bool)

(assert (=> b!1485894 m!1370971))

(assert (=> b!1485894 m!1370971))

(assert (=> b!1485894 m!1370807))

(declare-fun m!1370973 () Bool)

(assert (=> b!1485894 m!1370973))

(assert (=> b!1485891 m!1370969))

(assert (=> d!156389 m!1370841))

(declare-fun m!1370975 () Bool)

(assert (=> d!156389 m!1370975))

(assert (=> d!156389 m!1370845))

(assert (=> b!1485892 m!1370969))

(assert (=> b!1485673 d!156389))

(declare-fun d!156391 () Bool)

(declare-fun lt!648231 () (_ BitVec 32))

(declare-fun lt!648230 () (_ BitVec 32))

(assert (=> d!156391 (= lt!648231 (bvmul (bvxor lt!648230 (bvlshr lt!648230 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156391 (= lt!648230 ((_ extract 31 0) (bvand (bvxor (select (arr!48017 a!2862) j!93) (bvlshr (select (arr!48017 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156391 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1010524 (let ((h!36070 ((_ extract 31 0) (bvand (bvxor (select (arr!48017 a!2862) j!93) (bvlshr (select (arr!48017 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133094 (bvmul (bvxor h!36070 (bvlshr h!36070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133094 (bvlshr x!133094 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1010524 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1010524 #b00000000000000000000000000000000))))))

(assert (=> d!156391 (= (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) (bvand (bvxor lt!648231 (bvlshr lt!648231 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1485673 d!156391))

(assert (=> b!1485672 d!156357))

(assert (=> b!1485672 d!156355))

(declare-fun b!1485908 () Bool)

(declare-fun e!833013 () Bool)

(declare-fun call!67878 () Bool)

(assert (=> b!1485908 (= e!833013 call!67878)))

(declare-fun d!156393 () Bool)

(declare-fun res!1010530 () Bool)

(declare-fun e!833009 () Bool)

(assert (=> d!156393 (=> res!1010530 e!833009)))

(assert (=> d!156393 (= res!1010530 (bvsge j!93 (size!48568 a!2862)))))

(assert (=> d!156393 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!833009)))

(declare-fun b!1485909 () Bool)

(assert (=> b!1485909 (= e!833009 e!833013)))

(declare-fun c!137214 () Bool)

(assert (=> b!1485909 (= c!137214 (validKeyInArray!0 (select (arr!48017 a!2862) j!93)))))

(declare-fun b!1485910 () Bool)

(declare-fun e!833011 () Bool)

(assert (=> b!1485910 (= e!833013 e!833011)))

(declare-fun lt!648236 () (_ BitVec 64))

(assert (=> b!1485910 (= lt!648236 (select (arr!48017 a!2862) j!93))))

(declare-fun lt!648237 () Unit!49848)

(assert (=> b!1485910 (= lt!648237 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648236 j!93))))

(assert (=> b!1485910 (arrayContainsKey!0 a!2862 lt!648236 #b00000000000000000000000000000000)))

(declare-fun lt!648238 () Unit!49848)

(assert (=> b!1485910 (= lt!648238 lt!648237)))

(declare-fun res!1010529 () Bool)

(assert (=> b!1485910 (= res!1010529 (= (seekEntryOrOpen!0 (select (arr!48017 a!2862) j!93) a!2862 mask!2687) (Found!12280 j!93)))))

(assert (=> b!1485910 (=> (not res!1010529) (not e!833011))))

(declare-fun bm!67875 () Bool)

(assert (=> bm!67875 (= call!67878 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1485911 () Bool)

(assert (=> b!1485911 (= e!833011 call!67878)))

(assert (= (and d!156393 (not res!1010530)) b!1485909))

(assert (= (and b!1485909 c!137214) b!1485910))

(assert (= (and b!1485909 (not c!137214)) b!1485908))

(assert (= (and b!1485910 res!1010529) b!1485911))

(assert (= (or b!1485911 b!1485908) bm!67875))

(assert (=> b!1485909 m!1370807))

(assert (=> b!1485909 m!1370807))

(assert (=> b!1485909 m!1370815))

(assert (=> b!1485910 m!1370807))

(declare-fun m!1370977 () Bool)

(assert (=> b!1485910 m!1370977))

(declare-fun m!1370979 () Bool)

(assert (=> b!1485910 m!1370979))

(assert (=> b!1485910 m!1370807))

(assert (=> b!1485910 m!1370817))

(declare-fun m!1370981 () Bool)

(assert (=> bm!67875 m!1370981))

(assert (=> b!1485661 d!156393))

(declare-fun d!156395 () Bool)

(assert (=> d!156395 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!648244 () Unit!49848)

(declare-fun choose!38 (array!99491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49848)

(assert (=> d!156395 (= lt!648244 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156395 (validMask!0 mask!2687)))

(assert (=> d!156395 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!648244)))

(declare-fun bs!42753 () Bool)

(assert (= bs!42753 d!156395))

(assert (=> bs!42753 m!1370829))

(declare-fun m!1370989 () Bool)

(assert (=> bs!42753 m!1370989))

(assert (=> bs!42753 m!1370845))

(assert (=> b!1485661 d!156395))

(declare-fun d!156399 () Bool)

(declare-fun lt!648254 () (_ BitVec 32))

(assert (=> d!156399 (and (bvsge lt!648254 #b00000000000000000000000000000000) (bvslt lt!648254 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156399 (= lt!648254 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156399 (validMask!0 mask!2687)))

(assert (=> d!156399 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648254)))

(declare-fun bs!42755 () Bool)

(assert (= bs!42755 d!156399))

(declare-fun m!1370999 () Bool)

(assert (=> bs!42755 m!1370999))

(assert (=> bs!42755 m!1370845))

(assert (=> b!1485659 d!156399))

(declare-fun d!156405 () Bool)

(assert (=> d!156405 (= (validKeyInArray!0 (select (arr!48017 a!2862) i!1006)) (and (not (= (select (arr!48017 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48017 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485660 d!156405))

(declare-fun b!1485957 () Bool)

(declare-fun e!833042 () SeekEntryResult!12280)

(assert (=> b!1485957 (= e!833042 Undefined!12280)))

(declare-fun b!1485958 () Bool)

(declare-fun c!137230 () Bool)

(declare-fun lt!648260 () (_ BitVec 64))

(assert (=> b!1485958 (= c!137230 (= lt!648260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833040 () SeekEntryResult!12280)

(declare-fun e!833041 () SeekEntryResult!12280)

(assert (=> b!1485958 (= e!833040 e!833041)))

(declare-fun b!1485959 () Bool)

(declare-fun lt!648259 () SeekEntryResult!12280)

(assert (=> b!1485959 (= e!833041 (MissingZero!12280 (index!51513 lt!648259)))))

(declare-fun b!1485960 () Bool)

(assert (=> b!1485960 (= e!833041 (seekKeyOrZeroReturnVacant!0 (x!133087 lt!648259) (index!51513 lt!648259) (index!51513 lt!648259) (select (arr!48017 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!156409 () Bool)

(declare-fun lt!648261 () SeekEntryResult!12280)

(assert (=> d!156409 (and (or ((_ is Undefined!12280) lt!648261) (not ((_ is Found!12280) lt!648261)) (and (bvsge (index!51512 lt!648261) #b00000000000000000000000000000000) (bvslt (index!51512 lt!648261) (size!48568 a!2862)))) (or ((_ is Undefined!12280) lt!648261) ((_ is Found!12280) lt!648261) (not ((_ is MissingZero!12280) lt!648261)) (and (bvsge (index!51511 lt!648261) #b00000000000000000000000000000000) (bvslt (index!51511 lt!648261) (size!48568 a!2862)))) (or ((_ is Undefined!12280) lt!648261) ((_ is Found!12280) lt!648261) ((_ is MissingZero!12280) lt!648261) (not ((_ is MissingVacant!12280) lt!648261)) (and (bvsge (index!51514 lt!648261) #b00000000000000000000000000000000) (bvslt (index!51514 lt!648261) (size!48568 a!2862)))) (or ((_ is Undefined!12280) lt!648261) (ite ((_ is Found!12280) lt!648261) (= (select (arr!48017 a!2862) (index!51512 lt!648261)) (select (arr!48017 a!2862) j!93)) (ite ((_ is MissingZero!12280) lt!648261) (= (select (arr!48017 a!2862) (index!51511 lt!648261)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12280) lt!648261) (= (select (arr!48017 a!2862) (index!51514 lt!648261)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156409 (= lt!648261 e!833042)))

(declare-fun c!137232 () Bool)

(assert (=> d!156409 (= c!137232 (and ((_ is Intermediate!12280) lt!648259) (undefined!13092 lt!648259)))))

(assert (=> d!156409 (= lt!648259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48017 a!2862) j!93) mask!2687) (select (arr!48017 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156409 (validMask!0 mask!2687)))

(assert (=> d!156409 (= (seekEntryOrOpen!0 (select (arr!48017 a!2862) j!93) a!2862 mask!2687) lt!648261)))

(declare-fun b!1485961 () Bool)

(assert (=> b!1485961 (= e!833042 e!833040)))

(assert (=> b!1485961 (= lt!648260 (select (arr!48017 a!2862) (index!51513 lt!648259)))))

(declare-fun c!137231 () Bool)

(assert (=> b!1485961 (= c!137231 (= lt!648260 (select (arr!48017 a!2862) j!93)))))

(declare-fun b!1485962 () Bool)

(assert (=> b!1485962 (= e!833040 (Found!12280 (index!51513 lt!648259)))))

(assert (= (and d!156409 c!137232) b!1485957))

(assert (= (and d!156409 (not c!137232)) b!1485961))

(assert (= (and b!1485961 c!137231) b!1485962))

(assert (= (and b!1485961 (not c!137231)) b!1485958))

(assert (= (and b!1485958 c!137230) b!1485959))

(assert (= (and b!1485958 (not c!137230)) b!1485960))

(assert (=> b!1485960 m!1370807))

(declare-fun m!1371015 () Bool)

(assert (=> b!1485960 m!1371015))

(declare-fun m!1371017 () Bool)

(assert (=> d!156409 m!1371017))

(declare-fun m!1371019 () Bool)

(assert (=> d!156409 m!1371019))

(assert (=> d!156409 m!1370841))

(assert (=> d!156409 m!1370807))

(assert (=> d!156409 m!1370843))

(assert (=> d!156409 m!1370845))

(assert (=> d!156409 m!1370807))

(assert (=> d!156409 m!1370841))

(declare-fun m!1371021 () Bool)

(assert (=> d!156409 m!1371021))

(declare-fun m!1371023 () Bool)

(assert (=> b!1485961 m!1371023))

(assert (=> b!1485669 d!156409))

(declare-fun d!156415 () Bool)

(assert (=> d!156415 (= (validKeyInArray!0 (select (arr!48017 a!2862) j!93)) (and (not (= (select (arr!48017 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48017 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1485667 d!156415))

(declare-fun d!156417 () Bool)

(declare-fun res!1010563 () Bool)

(declare-fun e!833062 () Bool)

(assert (=> d!156417 (=> res!1010563 e!833062)))

(assert (=> d!156417 (= res!1010563 (bvsge #b00000000000000000000000000000000 (size!48568 a!2862)))))

(assert (=> d!156417 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34695) e!833062)))

(declare-fun b!1485983 () Bool)

(declare-fun e!833061 () Bool)

(assert (=> b!1485983 (= e!833062 e!833061)))

(declare-fun res!1010561 () Bool)

(assert (=> b!1485983 (=> (not res!1010561) (not e!833061))))

(declare-fun e!833059 () Bool)

(assert (=> b!1485983 (= res!1010561 (not e!833059))))

(declare-fun res!1010562 () Bool)

(assert (=> b!1485983 (=> (not res!1010562) (not e!833059))))

(assert (=> b!1485983 (= res!1010562 (validKeyInArray!0 (select (arr!48017 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1485984 () Bool)

(declare-fun contains!9928 (List!34698 (_ BitVec 64)) Bool)

(assert (=> b!1485984 (= e!833059 (contains!9928 Nil!34695 (select (arr!48017 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1485985 () Bool)

(declare-fun e!833060 () Bool)

(declare-fun call!67884 () Bool)

(assert (=> b!1485985 (= e!833060 call!67884)))

(declare-fun b!1485986 () Bool)

(assert (=> b!1485986 (= e!833060 call!67884)))

(declare-fun b!1485987 () Bool)

(assert (=> b!1485987 (= e!833061 e!833060)))

(declare-fun c!137237 () Bool)

(assert (=> b!1485987 (= c!137237 (validKeyInArray!0 (select (arr!48017 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67881 () Bool)

(assert (=> bm!67881 (= call!67884 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137237 (Cons!34694 (select (arr!48017 a!2862) #b00000000000000000000000000000000) Nil!34695) Nil!34695)))))

(assert (= (and d!156417 (not res!1010563)) b!1485983))

(assert (= (and b!1485983 res!1010562) b!1485984))

(assert (= (and b!1485983 res!1010561) b!1485987))

(assert (= (and b!1485987 c!137237) b!1485985))

(assert (= (and b!1485987 (not c!137237)) b!1485986))

(assert (= (or b!1485985 b!1485986) bm!67881))

(assert (=> b!1485983 m!1370953))

(assert (=> b!1485983 m!1370953))

(assert (=> b!1485983 m!1370955))

(assert (=> b!1485984 m!1370953))

(assert (=> b!1485984 m!1370953))

(declare-fun m!1371027 () Bool)

(assert (=> b!1485984 m!1371027))

(assert (=> b!1485987 m!1370953))

(assert (=> b!1485987 m!1370953))

(assert (=> b!1485987 m!1370955))

(assert (=> bm!67881 m!1370953))

(declare-fun m!1371033 () Bool)

(assert (=> bm!67881 m!1371033))

(assert (=> b!1485668 d!156417))

(declare-fun b!1485993 () Bool)

(declare-fun e!833067 () SeekEntryResult!12280)

(assert (=> b!1485993 (= e!833067 (Intermediate!12280 true index!646 x!665))))

(declare-fun b!1485994 () Bool)

(declare-fun e!833071 () SeekEntryResult!12280)

(assert (=> b!1485994 (= e!833067 e!833071)))

(declare-fun c!137240 () Bool)

(declare-fun lt!648269 () (_ BitVec 64))

(assert (=> b!1485994 (= c!137240 (or (= lt!648269 lt!648136) (= (bvadd lt!648269 lt!648269) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156423 () Bool)

(declare-fun e!833069 () Bool)

(assert (=> d!156423 e!833069))

(declare-fun c!137239 () Bool)

(declare-fun lt!648270 () SeekEntryResult!12280)

(assert (=> d!156423 (= c!137239 (and ((_ is Intermediate!12280) lt!648270) (undefined!13092 lt!648270)))))

(assert (=> d!156423 (= lt!648270 e!833067)))

(declare-fun c!137241 () Bool)

(assert (=> d!156423 (= c!137241 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156423 (= lt!648269 (select (arr!48017 lt!648138) index!646))))

(assert (=> d!156423 (validMask!0 mask!2687)))

(assert (=> d!156423 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648136 lt!648138 mask!2687) lt!648270)))

(declare-fun b!1485995 () Bool)

(assert (=> b!1485995 (= e!833071 (Intermediate!12280 false index!646 x!665))))

(declare-fun b!1485996 () Bool)

(declare-fun e!833068 () Bool)

(assert (=> b!1485996 (= e!833069 e!833068)))

(declare-fun res!1010569 () Bool)

(assert (=> b!1485996 (= res!1010569 (and ((_ is Intermediate!12280) lt!648270) (not (undefined!13092 lt!648270)) (bvslt (x!133087 lt!648270) #b01111111111111111111111111111110) (bvsge (x!133087 lt!648270) #b00000000000000000000000000000000) (bvsge (x!133087 lt!648270) x!665)))))

(assert (=> b!1485996 (=> (not res!1010569) (not e!833068))))

(declare-fun b!1485997 () Bool)

(assert (=> b!1485997 (and (bvsge (index!51513 lt!648270) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648270) (size!48568 lt!648138)))))

(declare-fun res!1010568 () Bool)

(assert (=> b!1485997 (= res!1010568 (= (select (arr!48017 lt!648138) (index!51513 lt!648270)) lt!648136))))

(declare-fun e!833070 () Bool)

(assert (=> b!1485997 (=> res!1010568 e!833070)))

(assert (=> b!1485997 (= e!833068 e!833070)))

(declare-fun b!1485998 () Bool)

(assert (=> b!1485998 (and (bvsge (index!51513 lt!648270) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648270) (size!48568 lt!648138)))))

(declare-fun res!1010567 () Bool)

(assert (=> b!1485998 (= res!1010567 (= (select (arr!48017 lt!648138) (index!51513 lt!648270)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1485998 (=> res!1010567 e!833070)))

(declare-fun b!1485999 () Bool)

(assert (=> b!1485999 (= e!833069 (bvsge (x!133087 lt!648270) #b01111111111111111111111111111110))))

(declare-fun b!1486000 () Bool)

(assert (=> b!1486000 (= e!833071 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648136 lt!648138 mask!2687))))

(declare-fun b!1486001 () Bool)

(assert (=> b!1486001 (and (bvsge (index!51513 lt!648270) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648270) (size!48568 lt!648138)))))

(assert (=> b!1486001 (= e!833070 (= (select (arr!48017 lt!648138) (index!51513 lt!648270)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156423 c!137241) b!1485993))

(assert (= (and d!156423 (not c!137241)) b!1485994))

(assert (= (and b!1485994 c!137240) b!1485995))

(assert (= (and b!1485994 (not c!137240)) b!1486000))

(assert (= (and d!156423 c!137239) b!1485999))

(assert (= (and d!156423 (not c!137239)) b!1485996))

(assert (= (and b!1485996 res!1010569) b!1485997))

(assert (= (and b!1485997 (not res!1010568)) b!1485998))

(assert (= (and b!1485998 (not res!1010567)) b!1486001))

(declare-fun m!1371037 () Bool)

(assert (=> b!1486001 m!1371037))

(assert (=> b!1486000 m!1370839))

(assert (=> b!1486000 m!1370839))

(declare-fun m!1371039 () Bool)

(assert (=> b!1486000 m!1371039))

(assert (=> b!1485997 m!1371037))

(assert (=> d!156423 m!1370917))

(assert (=> d!156423 m!1370845))

(assert (=> b!1485998 m!1371037))

(assert (=> b!1485675 d!156423))

(declare-fun b!1486021 () Bool)

(declare-fun e!833085 () SeekEntryResult!12280)

(assert (=> b!1486021 (= e!833085 (Intermediate!12280 true (toIndex!0 lt!648136 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1486022 () Bool)

(declare-fun e!833089 () SeekEntryResult!12280)

(assert (=> b!1486022 (= e!833085 e!833089)))

(declare-fun c!137248 () Bool)

(declare-fun lt!648273 () (_ BitVec 64))

(assert (=> b!1486022 (= c!137248 (or (= lt!648273 lt!648136) (= (bvadd lt!648273 lt!648273) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156427 () Bool)

(declare-fun e!833087 () Bool)

(assert (=> d!156427 e!833087))

(declare-fun c!137247 () Bool)

(declare-fun lt!648274 () SeekEntryResult!12280)

(assert (=> d!156427 (= c!137247 (and ((_ is Intermediate!12280) lt!648274) (undefined!13092 lt!648274)))))

(assert (=> d!156427 (= lt!648274 e!833085)))

(declare-fun c!137249 () Bool)

(assert (=> d!156427 (= c!137249 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156427 (= lt!648273 (select (arr!48017 lt!648138) (toIndex!0 lt!648136 mask!2687)))))

(assert (=> d!156427 (validMask!0 mask!2687)))

(assert (=> d!156427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648136 mask!2687) lt!648136 lt!648138 mask!2687) lt!648274)))

(declare-fun b!1486023 () Bool)

(assert (=> b!1486023 (= e!833089 (Intermediate!12280 false (toIndex!0 lt!648136 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1486024 () Bool)

(declare-fun e!833086 () Bool)

(assert (=> b!1486024 (= e!833087 e!833086)))

(declare-fun res!1010581 () Bool)

(assert (=> b!1486024 (= res!1010581 (and ((_ is Intermediate!12280) lt!648274) (not (undefined!13092 lt!648274)) (bvslt (x!133087 lt!648274) #b01111111111111111111111111111110) (bvsge (x!133087 lt!648274) #b00000000000000000000000000000000) (bvsge (x!133087 lt!648274) #b00000000000000000000000000000000)))))

(assert (=> b!1486024 (=> (not res!1010581) (not e!833086))))

(declare-fun b!1486025 () Bool)

(assert (=> b!1486025 (and (bvsge (index!51513 lt!648274) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648274) (size!48568 lt!648138)))))

(declare-fun res!1010580 () Bool)

(assert (=> b!1486025 (= res!1010580 (= (select (arr!48017 lt!648138) (index!51513 lt!648274)) lt!648136))))

(declare-fun e!833088 () Bool)

(assert (=> b!1486025 (=> res!1010580 e!833088)))

(assert (=> b!1486025 (= e!833086 e!833088)))

(declare-fun b!1486026 () Bool)

(assert (=> b!1486026 (and (bvsge (index!51513 lt!648274) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648274) (size!48568 lt!648138)))))

(declare-fun res!1010579 () Bool)

(assert (=> b!1486026 (= res!1010579 (= (select (arr!48017 lt!648138) (index!51513 lt!648274)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486026 (=> res!1010579 e!833088)))

(declare-fun b!1486027 () Bool)

(assert (=> b!1486027 (= e!833087 (bvsge (x!133087 lt!648274) #b01111111111111111111111111111110))))

(declare-fun b!1486028 () Bool)

(assert (=> b!1486028 (= e!833089 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648136 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648136 lt!648138 mask!2687))))

(declare-fun b!1486029 () Bool)

(assert (=> b!1486029 (and (bvsge (index!51513 lt!648274) #b00000000000000000000000000000000) (bvslt (index!51513 lt!648274) (size!48568 lt!648138)))))

(assert (=> b!1486029 (= e!833088 (= (select (arr!48017 lt!648138) (index!51513 lt!648274)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!156427 c!137249) b!1486021))

(assert (= (and d!156427 (not c!137249)) b!1486022))

(assert (= (and b!1486022 c!137248) b!1486023))

(assert (= (and b!1486022 (not c!137248)) b!1486028))

(assert (= (and d!156427 c!137247) b!1486027))

(assert (= (and d!156427 (not c!137247)) b!1486024))

(assert (= (and b!1486024 res!1010581) b!1486025))

(assert (= (and b!1486025 (not res!1010580)) b!1486026))

(assert (= (and b!1486026 (not res!1010579)) b!1486029))

(declare-fun m!1371049 () Bool)

(assert (=> b!1486029 m!1371049))

(assert (=> b!1486028 m!1370799))

(declare-fun m!1371051 () Bool)

(assert (=> b!1486028 m!1371051))

(assert (=> b!1486028 m!1371051))

(declare-fun m!1371053 () Bool)

(assert (=> b!1486028 m!1371053))

(assert (=> b!1486025 m!1371049))

(assert (=> d!156427 m!1370799))

(declare-fun m!1371055 () Bool)

(assert (=> d!156427 m!1371055))

(assert (=> d!156427 m!1370845))

(assert (=> b!1486026 m!1371049))

(assert (=> b!1485676 d!156427))

(declare-fun d!156431 () Bool)

(declare-fun lt!648276 () (_ BitVec 32))

(declare-fun lt!648275 () (_ BitVec 32))

(assert (=> d!156431 (= lt!648276 (bvmul (bvxor lt!648275 (bvlshr lt!648275 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156431 (= lt!648275 ((_ extract 31 0) (bvand (bvxor lt!648136 (bvlshr lt!648136 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156431 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1010524 (let ((h!36070 ((_ extract 31 0) (bvand (bvxor lt!648136 (bvlshr lt!648136 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133094 (bvmul (bvxor h!36070 (bvlshr h!36070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133094 (bvlshr x!133094 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1010524 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1010524 #b00000000000000000000000000000000))))))

(assert (=> d!156431 (= (toIndex!0 lt!648136 mask!2687) (bvand (bvxor lt!648276 (bvlshr lt!648276 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1485676 d!156431))

(check-sat (not d!156357) (not d!156389) (not b!1485857) (not b!1486028) (not b!1485822) (not d!156355) (not b!1485775) (not b!1485983) (not bm!67875) (not b!1486000) (not d!156409) (not b!1485910) (not bm!67872) (not b!1485987) (not d!156395) (not d!156427) (not b!1485984) (not b!1485909) (not d!156423) (not d!156399) (not bm!67881) (not b!1485858) (not b!1485894) (not b!1485960) (not b!1485758) (not d!156363))
(check-sat)
