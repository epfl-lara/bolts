; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125382 () Bool)

(assert start!125382)

(declare-fun b!1464607 () Bool)

(declare-fun e!823074 () Bool)

(declare-fun e!823079 () Bool)

(assert (=> b!1464607 (= e!823074 e!823079)))

(declare-fun res!993751 () Bool)

(assert (=> b!1464607 (=> res!993751 e!823079)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!641106 () (_ BitVec 32))

(declare-datatypes ((array!98747 0))(
  ( (array!98748 (arr!47657 (Array (_ BitVec 32) (_ BitVec 64))) (size!48208 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98747)

(assert (=> b!1464607 (= res!993751 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641106 #b00000000000000000000000000000000) (bvsge lt!641106 (size!48208 a!2862))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464607 (= lt!641106 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1464608 () Bool)

(declare-fun e!823078 () Bool)

(declare-fun e!823082 () Bool)

(assert (=> b!1464608 (= e!823078 e!823082)))

(declare-fun res!993754 () Bool)

(assert (=> b!1464608 (=> (not res!993754) (not e!823082))))

(declare-datatypes ((SeekEntryResult!11932 0))(
  ( (MissingZero!11932 (index!50119 (_ BitVec 32))) (Found!11932 (index!50120 (_ BitVec 32))) (Intermediate!11932 (undefined!12744 Bool) (index!50121 (_ BitVec 32)) (x!131704 (_ BitVec 32))) (Undefined!11932) (MissingVacant!11932 (index!50122 (_ BitVec 32))) )
))
(declare-fun lt!641110 () SeekEntryResult!11932)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1464608 (= res!993754 (= lt!641110 (Intermediate!11932 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641107 () (_ BitVec 64))

(declare-fun lt!641109 () array!98747)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98747 (_ BitVec 32)) SeekEntryResult!11932)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1464608 (= lt!641110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641107 mask!2687) lt!641107 lt!641109 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1464608 (= lt!641107 (select (store (arr!47657 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1464609 () Bool)

(declare-fun e!823073 () Bool)

(assert (=> b!1464609 (= e!823073 (not (= lt!641110 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641106 lt!641107 lt!641109 mask!2687))))))

(declare-fun b!1464610 () Bool)

(declare-fun res!993740 () Bool)

(declare-fun e!823077 () Bool)

(assert (=> b!1464610 (=> (not res!993740) (not e!823077))))

(assert (=> b!1464610 (= res!993740 (and (= (size!48208 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48208 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48208 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1464611 () Bool)

(declare-fun res!993749 () Bool)

(assert (=> b!1464611 (=> (not res!993749) (not e!823082))))

(declare-fun e!823081 () Bool)

(assert (=> b!1464611 (= res!993749 e!823081)))

(declare-fun c!134948 () Bool)

(assert (=> b!1464611 (= c!134948 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1464612 () Bool)

(declare-fun res!993750 () Bool)

(assert (=> b!1464612 (=> (not res!993750) (not e!823077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98747 (_ BitVec 32)) Bool)

(assert (=> b!1464612 (= res!993750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1464613 () Bool)

(declare-fun res!993756 () Bool)

(assert (=> b!1464613 (=> (not res!993756) (not e!823077))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1464613 (= res!993756 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48208 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48208 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48208 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1464614 () Bool)

(declare-fun res!993748 () Bool)

(declare-fun e!823076 () Bool)

(assert (=> b!1464614 (=> (not res!993748) (not e!823076))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98747 (_ BitVec 32)) SeekEntryResult!11932)

(assert (=> b!1464614 (= res!993748 (= (seekEntryOrOpen!0 (select (arr!47657 a!2862) j!93) a!2862 mask!2687) (Found!11932 j!93)))))

(declare-fun b!1464615 () Bool)

(declare-fun e!823075 () Bool)

(assert (=> b!1464615 (= e!823077 e!823075)))

(declare-fun res!993753 () Bool)

(assert (=> b!1464615 (=> (not res!993753) (not e!823075))))

(assert (=> b!1464615 (= res!993753 (= (select (store (arr!47657 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1464615 (= lt!641109 (array!98748 (store (arr!47657 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48208 a!2862)))))

(declare-fun res!993741 () Bool)

(assert (=> start!125382 (=> (not res!993741) (not e!823077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125382 (= res!993741 (validMask!0 mask!2687))))

(assert (=> start!125382 e!823077))

(assert (=> start!125382 true))

(declare-fun array_inv!36602 (array!98747) Bool)

(assert (=> start!125382 (array_inv!36602 a!2862)))

(declare-fun b!1464616 () Bool)

(declare-fun res!993746 () Bool)

(assert (=> b!1464616 (=> (not res!993746) (not e!823077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1464616 (= res!993746 (validKeyInArray!0 (select (arr!47657 a!2862) j!93)))))

(declare-fun b!1464617 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98747 (_ BitVec 32)) SeekEntryResult!11932)

(assert (=> b!1464617 (= e!823073 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641106 intermediateAfterIndex!19 lt!641107 lt!641109 mask!2687) (seekEntryOrOpen!0 lt!641107 lt!641109 mask!2687))))))

(declare-fun b!1464618 () Bool)

(assert (=> b!1464618 (= e!823076 (or (= (select (arr!47657 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47657 a!2862) intermediateBeforeIndex!19) (select (arr!47657 a!2862) j!93))))))

(declare-fun b!1464619 () Bool)

(declare-fun res!993752 () Bool)

(assert (=> b!1464619 (=> (not res!993752) (not e!823077))))

(declare-datatypes ((List!34338 0))(
  ( (Nil!34335) (Cons!34334 (h!35684 (_ BitVec 64)) (t!49039 List!34338)) )
))
(declare-fun arrayNoDuplicates!0 (array!98747 (_ BitVec 32) List!34338) Bool)

(assert (=> b!1464619 (= res!993752 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34335))))

(declare-fun b!1464620 () Bool)

(declare-fun res!993744 () Bool)

(assert (=> b!1464620 (=> (not res!993744) (not e!823077))))

(assert (=> b!1464620 (= res!993744 (validKeyInArray!0 (select (arr!47657 a!2862) i!1006)))))

(declare-fun b!1464621 () Bool)

(assert (=> b!1464621 (= e!823082 (not e!823074))))

(declare-fun res!993742 () Bool)

(assert (=> b!1464621 (=> res!993742 e!823074)))

(assert (=> b!1464621 (= res!993742 (or (and (= (select (arr!47657 a!2862) index!646) (select (store (arr!47657 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47657 a!2862) index!646) (select (arr!47657 a!2862) j!93))) (= (select (arr!47657 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1464621 e!823076))

(declare-fun res!993739 () Bool)

(assert (=> b!1464621 (=> (not res!993739) (not e!823076))))

(assert (=> b!1464621 (= res!993739 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49308 0))(
  ( (Unit!49309) )
))
(declare-fun lt!641108 () Unit!49308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98747 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49308)

(assert (=> b!1464621 (= lt!641108 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1464622 () Bool)

(assert (=> b!1464622 (= e!823079 true)))

(declare-fun lt!641105 () Bool)

(assert (=> b!1464622 (= lt!641105 e!823073)))

(declare-fun c!134947 () Bool)

(assert (=> b!1464622 (= c!134947 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1464623 () Bool)

(declare-fun res!993755 () Bool)

(assert (=> b!1464623 (=> res!993755 e!823079)))

(declare-fun lt!641104 () SeekEntryResult!11932)

(assert (=> b!1464623 (= res!993755 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641106 (select (arr!47657 a!2862) j!93) a!2862 mask!2687) lt!641104)))))

(declare-fun b!1464624 () Bool)

(assert (=> b!1464624 (= e!823075 e!823078)))

(declare-fun res!993747 () Bool)

(assert (=> b!1464624 (=> (not res!993747) (not e!823078))))

(assert (=> b!1464624 (= res!993747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47657 a!2862) j!93) mask!2687) (select (arr!47657 a!2862) j!93) a!2862 mask!2687) lt!641104))))

(assert (=> b!1464624 (= lt!641104 (Intermediate!11932 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1464625 () Bool)

(declare-fun res!993745 () Bool)

(assert (=> b!1464625 (=> (not res!993745) (not e!823082))))

(assert (=> b!1464625 (= res!993745 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1464626 () Bool)

(declare-fun res!993743 () Bool)

(assert (=> b!1464626 (=> (not res!993743) (not e!823078))))

(assert (=> b!1464626 (= res!993743 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47657 a!2862) j!93) a!2862 mask!2687) lt!641104))))

(declare-fun b!1464627 () Bool)

(assert (=> b!1464627 (= e!823081 (= lt!641110 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641107 lt!641109 mask!2687)))))

(declare-fun b!1464628 () Bool)

(assert (=> b!1464628 (= e!823081 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641107 lt!641109 mask!2687) (seekEntryOrOpen!0 lt!641107 lt!641109 mask!2687)))))

(assert (= (and start!125382 res!993741) b!1464610))

(assert (= (and b!1464610 res!993740) b!1464620))

(assert (= (and b!1464620 res!993744) b!1464616))

(assert (= (and b!1464616 res!993746) b!1464612))

(assert (= (and b!1464612 res!993750) b!1464619))

(assert (= (and b!1464619 res!993752) b!1464613))

(assert (= (and b!1464613 res!993756) b!1464615))

(assert (= (and b!1464615 res!993753) b!1464624))

(assert (= (and b!1464624 res!993747) b!1464626))

(assert (= (and b!1464626 res!993743) b!1464608))

(assert (= (and b!1464608 res!993754) b!1464611))

(assert (= (and b!1464611 c!134948) b!1464627))

(assert (= (and b!1464611 (not c!134948)) b!1464628))

(assert (= (and b!1464611 res!993749) b!1464625))

(assert (= (and b!1464625 res!993745) b!1464621))

(assert (= (and b!1464621 res!993739) b!1464614))

(assert (= (and b!1464614 res!993748) b!1464618))

(assert (= (and b!1464621 (not res!993742)) b!1464607))

(assert (= (and b!1464607 (not res!993751)) b!1464623))

(assert (= (and b!1464623 (not res!993755)) b!1464622))

(assert (= (and b!1464622 c!134947) b!1464609))

(assert (= (and b!1464622 (not c!134947)) b!1464617))

(declare-fun m!1351849 () Bool)

(assert (=> b!1464623 m!1351849))

(assert (=> b!1464623 m!1351849))

(declare-fun m!1351851 () Bool)

(assert (=> b!1464623 m!1351851))

(declare-fun m!1351853 () Bool)

(assert (=> b!1464618 m!1351853))

(assert (=> b!1464618 m!1351849))

(declare-fun m!1351855 () Bool)

(assert (=> b!1464615 m!1351855))

(declare-fun m!1351857 () Bool)

(assert (=> b!1464615 m!1351857))

(declare-fun m!1351859 () Bool)

(assert (=> b!1464620 m!1351859))

(assert (=> b!1464620 m!1351859))

(declare-fun m!1351861 () Bool)

(assert (=> b!1464620 m!1351861))

(declare-fun m!1351863 () Bool)

(assert (=> b!1464607 m!1351863))

(declare-fun m!1351865 () Bool)

(assert (=> b!1464609 m!1351865))

(declare-fun m!1351867 () Bool)

(assert (=> b!1464627 m!1351867))

(assert (=> b!1464624 m!1351849))

(assert (=> b!1464624 m!1351849))

(declare-fun m!1351869 () Bool)

(assert (=> b!1464624 m!1351869))

(assert (=> b!1464624 m!1351869))

(assert (=> b!1464624 m!1351849))

(declare-fun m!1351871 () Bool)

(assert (=> b!1464624 m!1351871))

(declare-fun m!1351873 () Bool)

(assert (=> b!1464608 m!1351873))

(assert (=> b!1464608 m!1351873))

(declare-fun m!1351875 () Bool)

(assert (=> b!1464608 m!1351875))

(assert (=> b!1464608 m!1351855))

(declare-fun m!1351877 () Bool)

(assert (=> b!1464608 m!1351877))

(declare-fun m!1351879 () Bool)

(assert (=> b!1464621 m!1351879))

(assert (=> b!1464621 m!1351855))

(declare-fun m!1351881 () Bool)

(assert (=> b!1464621 m!1351881))

(declare-fun m!1351883 () Bool)

(assert (=> b!1464621 m!1351883))

(declare-fun m!1351885 () Bool)

(assert (=> b!1464621 m!1351885))

(assert (=> b!1464621 m!1351849))

(assert (=> b!1464616 m!1351849))

(assert (=> b!1464616 m!1351849))

(declare-fun m!1351887 () Bool)

(assert (=> b!1464616 m!1351887))

(declare-fun m!1351889 () Bool)

(assert (=> b!1464628 m!1351889))

(declare-fun m!1351891 () Bool)

(assert (=> b!1464628 m!1351891))

(declare-fun m!1351893 () Bool)

(assert (=> start!125382 m!1351893))

(declare-fun m!1351895 () Bool)

(assert (=> start!125382 m!1351895))

(declare-fun m!1351897 () Bool)

(assert (=> b!1464617 m!1351897))

(assert (=> b!1464617 m!1351891))

(declare-fun m!1351899 () Bool)

(assert (=> b!1464619 m!1351899))

(declare-fun m!1351901 () Bool)

(assert (=> b!1464612 m!1351901))

(assert (=> b!1464626 m!1351849))

(assert (=> b!1464626 m!1351849))

(declare-fun m!1351903 () Bool)

(assert (=> b!1464626 m!1351903))

(assert (=> b!1464614 m!1351849))

(assert (=> b!1464614 m!1351849))

(declare-fun m!1351905 () Bool)

(assert (=> b!1464614 m!1351905))

(check-sat (not b!1464621) (not b!1464620) (not b!1464616) (not b!1464626) (not b!1464607) (not start!125382) (not b!1464623) (not b!1464608) (not b!1464627) (not b!1464609) (not b!1464612) (not b!1464624) (not b!1464628) (not b!1464619) (not b!1464614) (not b!1464617))
(check-sat)
