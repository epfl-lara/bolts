; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125856 () Bool)

(assert start!125856)

(declare-fun b!1472836 () Bool)

(declare-fun e!826534 () Bool)

(declare-fun e!826533 () Bool)

(assert (=> b!1472836 (= e!826534 (not e!826533))))

(declare-fun res!1000551 () Bool)

(assert (=> b!1472836 (=> res!1000551 e!826533)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99107 0))(
  ( (array!99108 (arr!47834 (Array (_ BitVec 32) (_ BitVec 64))) (size!48385 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99107)

(assert (=> b!1472836 (= res!1000551 (or (not (= (select (arr!47834 a!2862) index!646) (select (store (arr!47834 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47834 a!2862) index!646) (select (arr!47834 a!2862) j!93)))))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12097 0))(
  ( (MissingZero!12097 (index!50779 (_ BitVec 32))) (Found!12097 (index!50780 (_ BitVec 32))) (Intermediate!12097 (undefined!12909 Bool) (index!50781 (_ BitVec 32)) (x!132359 (_ BitVec 32))) (Undefined!12097) (MissingVacant!12097 (index!50782 (_ BitVec 32))) )
))
(declare-fun lt!643663 () SeekEntryResult!12097)

(assert (=> b!1472836 (and (= lt!643663 (Found!12097 j!93)) (or (= (select (arr!47834 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47834 a!2862) intermediateBeforeIndex!19) (select (arr!47834 a!2862) j!93))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99107 (_ BitVec 32)) SeekEntryResult!12097)

(assert (=> b!1472836 (= lt!643663 (seekEntryOrOpen!0 (select (arr!47834 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99107 (_ BitVec 32)) Bool)

(assert (=> b!1472836 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49482 0))(
  ( (Unit!49483) )
))
(declare-fun lt!643661 () Unit!49482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49482)

(assert (=> b!1472836 (= lt!643661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472837 () Bool)

(declare-fun res!1000559 () Bool)

(assert (=> b!1472837 (=> (not res!1000559) (not e!826534))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472837 (= res!1000559 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!643660 () (_ BitVec 64))

(declare-fun e!826532 () Bool)

(declare-fun lt!643658 () array!99107)

(declare-fun b!1472838 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99107 (_ BitVec 32)) SeekEntryResult!12097)

(assert (=> b!1472838 (= e!826532 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643660 lt!643658 mask!2687) (seekEntryOrOpen!0 lt!643660 lt!643658 mask!2687)))))

(declare-fun b!1472839 () Bool)

(declare-fun e!826538 () Bool)

(assert (=> b!1472839 (= e!826538 e!826534)))

(declare-fun res!1000553 () Bool)

(assert (=> b!1472839 (=> (not res!1000553) (not e!826534))))

(declare-fun lt!643659 () SeekEntryResult!12097)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472839 (= res!1000553 (= lt!643659 (Intermediate!12097 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99107 (_ BitVec 32)) SeekEntryResult!12097)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472839 (= lt!643659 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643660 mask!2687) lt!643660 lt!643658 mask!2687))))

(assert (=> b!1472839 (= lt!643660 (select (store (arr!47834 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472840 () Bool)

(declare-fun e!826536 () Bool)

(declare-fun e!826537 () Bool)

(assert (=> b!1472840 (= e!826536 e!826537)))

(declare-fun res!1000561 () Bool)

(assert (=> b!1472840 (=> (not res!1000561) (not e!826537))))

(assert (=> b!1472840 (= res!1000561 (= (select (store (arr!47834 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472840 (= lt!643658 (array!99108 (store (arr!47834 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48385 a!2862)))))

(declare-fun res!1000556 () Bool)

(assert (=> start!125856 (=> (not res!1000556) (not e!826536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125856 (= res!1000556 (validMask!0 mask!2687))))

(assert (=> start!125856 e!826536))

(assert (=> start!125856 true))

(declare-fun array_inv!36779 (array!99107) Bool)

(assert (=> start!125856 (array_inv!36779 a!2862)))

(declare-fun b!1472841 () Bool)

(declare-fun res!1000563 () Bool)

(assert (=> b!1472841 (=> (not res!1000563) (not e!826536))))

(assert (=> b!1472841 (= res!1000563 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48385 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48385 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48385 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472842 () Bool)

(declare-fun res!1000554 () Bool)

(assert (=> b!1472842 (=> (not res!1000554) (not e!826536))))

(assert (=> b!1472842 (= res!1000554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472843 () Bool)

(declare-fun res!1000557 () Bool)

(assert (=> b!1472843 (=> (not res!1000557) (not e!826536))))

(assert (=> b!1472843 (= res!1000557 (and (= (size!48385 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48385 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48385 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472844 () Bool)

(assert (=> b!1472844 (= e!826533 (= lt!643663 (seekEntryOrOpen!0 lt!643660 lt!643658 mask!2687)))))

(declare-fun b!1472845 () Bool)

(declare-fun res!1000555 () Bool)

(assert (=> b!1472845 (=> (not res!1000555) (not e!826536))))

(declare-datatypes ((List!34515 0))(
  ( (Nil!34512) (Cons!34511 (h!35867 (_ BitVec 64)) (t!49216 List!34515)) )
))
(declare-fun arrayNoDuplicates!0 (array!99107 (_ BitVec 32) List!34515) Bool)

(assert (=> b!1472845 (= res!1000555 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34512))))

(declare-fun b!1472846 () Bool)

(declare-fun res!1000558 () Bool)

(assert (=> b!1472846 (=> (not res!1000558) (not e!826534))))

(assert (=> b!1472846 (= res!1000558 e!826532)))

(declare-fun c!135659 () Bool)

(assert (=> b!1472846 (= c!135659 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472847 () Bool)

(declare-fun res!1000552 () Bool)

(assert (=> b!1472847 (=> (not res!1000552) (not e!826538))))

(declare-fun lt!643662 () SeekEntryResult!12097)

(assert (=> b!1472847 (= res!1000552 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47834 a!2862) j!93) a!2862 mask!2687) lt!643662))))

(declare-fun b!1472848 () Bool)

(assert (=> b!1472848 (= e!826537 e!826538)))

(declare-fun res!1000562 () Bool)

(assert (=> b!1472848 (=> (not res!1000562) (not e!826538))))

(assert (=> b!1472848 (= res!1000562 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) (select (arr!47834 a!2862) j!93) a!2862 mask!2687) lt!643662))))

(assert (=> b!1472848 (= lt!643662 (Intermediate!12097 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472849 () Bool)

(declare-fun res!1000560 () Bool)

(assert (=> b!1472849 (=> (not res!1000560) (not e!826536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472849 (= res!1000560 (validKeyInArray!0 (select (arr!47834 a!2862) i!1006)))))

(declare-fun b!1472850 () Bool)

(assert (=> b!1472850 (= e!826532 (= lt!643659 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643660 lt!643658 mask!2687)))))

(declare-fun b!1472851 () Bool)

(declare-fun res!1000550 () Bool)

(assert (=> b!1472851 (=> (not res!1000550) (not e!826536))))

(assert (=> b!1472851 (= res!1000550 (validKeyInArray!0 (select (arr!47834 a!2862) j!93)))))

(assert (= (and start!125856 res!1000556) b!1472843))

(assert (= (and b!1472843 res!1000557) b!1472849))

(assert (= (and b!1472849 res!1000560) b!1472851))

(assert (= (and b!1472851 res!1000550) b!1472842))

(assert (= (and b!1472842 res!1000554) b!1472845))

(assert (= (and b!1472845 res!1000555) b!1472841))

(assert (= (and b!1472841 res!1000563) b!1472840))

(assert (= (and b!1472840 res!1000561) b!1472848))

(assert (= (and b!1472848 res!1000562) b!1472847))

(assert (= (and b!1472847 res!1000552) b!1472839))

(assert (= (and b!1472839 res!1000553) b!1472846))

(assert (= (and b!1472846 c!135659) b!1472850))

(assert (= (and b!1472846 (not c!135659)) b!1472838))

(assert (= (and b!1472846 res!1000558) b!1472837))

(assert (= (and b!1472837 res!1000559) b!1472836))

(assert (= (and b!1472836 (not res!1000551)) b!1472844))

(declare-fun m!1359569 () Bool)

(assert (=> b!1472836 m!1359569))

(declare-fun m!1359571 () Bool)

(assert (=> b!1472836 m!1359571))

(declare-fun m!1359573 () Bool)

(assert (=> b!1472836 m!1359573))

(declare-fun m!1359575 () Bool)

(assert (=> b!1472836 m!1359575))

(declare-fun m!1359577 () Bool)

(assert (=> b!1472836 m!1359577))

(declare-fun m!1359579 () Bool)

(assert (=> b!1472836 m!1359579))

(declare-fun m!1359581 () Bool)

(assert (=> b!1472836 m!1359581))

(declare-fun m!1359583 () Bool)

(assert (=> b!1472836 m!1359583))

(assert (=> b!1472836 m!1359579))

(declare-fun m!1359585 () Bool)

(assert (=> b!1472850 m!1359585))

(declare-fun m!1359587 () Bool)

(assert (=> b!1472849 m!1359587))

(assert (=> b!1472849 m!1359587))

(declare-fun m!1359589 () Bool)

(assert (=> b!1472849 m!1359589))

(assert (=> b!1472848 m!1359579))

(assert (=> b!1472848 m!1359579))

(declare-fun m!1359591 () Bool)

(assert (=> b!1472848 m!1359591))

(assert (=> b!1472848 m!1359591))

(assert (=> b!1472848 m!1359579))

(declare-fun m!1359593 () Bool)

(assert (=> b!1472848 m!1359593))

(assert (=> b!1472840 m!1359571))

(declare-fun m!1359595 () Bool)

(assert (=> b!1472840 m!1359595))

(declare-fun m!1359597 () Bool)

(assert (=> b!1472844 m!1359597))

(assert (=> b!1472847 m!1359579))

(assert (=> b!1472847 m!1359579))

(declare-fun m!1359599 () Bool)

(assert (=> b!1472847 m!1359599))

(declare-fun m!1359601 () Bool)

(assert (=> b!1472838 m!1359601))

(assert (=> b!1472838 m!1359597))

(declare-fun m!1359603 () Bool)

(assert (=> b!1472839 m!1359603))

(assert (=> b!1472839 m!1359603))

(declare-fun m!1359605 () Bool)

(assert (=> b!1472839 m!1359605))

(assert (=> b!1472839 m!1359571))

(declare-fun m!1359607 () Bool)

(assert (=> b!1472839 m!1359607))

(declare-fun m!1359609 () Bool)

(assert (=> b!1472842 m!1359609))

(assert (=> b!1472851 m!1359579))

(assert (=> b!1472851 m!1359579))

(declare-fun m!1359611 () Bool)

(assert (=> b!1472851 m!1359611))

(declare-fun m!1359613 () Bool)

(assert (=> start!125856 m!1359613))

(declare-fun m!1359615 () Bool)

(assert (=> start!125856 m!1359615))

(declare-fun m!1359617 () Bool)

(assert (=> b!1472845 m!1359617))

(check-sat (not b!1472839) (not b!1472838) (not b!1472849) (not b!1472845) (not b!1472848) (not b!1472847) (not b!1472842) (not start!125856) (not b!1472851) (not b!1472844) (not b!1472850) (not b!1472836))
(check-sat)
(get-model)

(declare-fun b!1472912 () Bool)

(declare-fun e!826566 () SeekEntryResult!12097)

(declare-fun lt!643689 () SeekEntryResult!12097)

(assert (=> b!1472912 (= e!826566 (MissingZero!12097 (index!50781 lt!643689)))))

(declare-fun b!1472913 () Bool)

(declare-fun e!826568 () SeekEntryResult!12097)

(assert (=> b!1472913 (= e!826568 (Found!12097 (index!50781 lt!643689)))))

(declare-fun b!1472914 () Bool)

(declare-fun e!826567 () SeekEntryResult!12097)

(assert (=> b!1472914 (= e!826567 e!826568)))

(declare-fun lt!643690 () (_ BitVec 64))

(assert (=> b!1472914 (= lt!643690 (select (arr!47834 lt!643658) (index!50781 lt!643689)))))

(declare-fun c!135670 () Bool)

(assert (=> b!1472914 (= c!135670 (= lt!643690 lt!643660))))

(declare-fun b!1472915 () Bool)

(assert (=> b!1472915 (= e!826566 (seekKeyOrZeroReturnVacant!0 (x!132359 lt!643689) (index!50781 lt!643689) (index!50781 lt!643689) lt!643660 lt!643658 mask!2687))))

(declare-fun d!155477 () Bool)

(declare-fun lt!643688 () SeekEntryResult!12097)

(get-info :version)

(assert (=> d!155477 (and (or ((_ is Undefined!12097) lt!643688) (not ((_ is Found!12097) lt!643688)) (and (bvsge (index!50780 lt!643688) #b00000000000000000000000000000000) (bvslt (index!50780 lt!643688) (size!48385 lt!643658)))) (or ((_ is Undefined!12097) lt!643688) ((_ is Found!12097) lt!643688) (not ((_ is MissingZero!12097) lt!643688)) (and (bvsge (index!50779 lt!643688) #b00000000000000000000000000000000) (bvslt (index!50779 lt!643688) (size!48385 lt!643658)))) (or ((_ is Undefined!12097) lt!643688) ((_ is Found!12097) lt!643688) ((_ is MissingZero!12097) lt!643688) (not ((_ is MissingVacant!12097) lt!643688)) (and (bvsge (index!50782 lt!643688) #b00000000000000000000000000000000) (bvslt (index!50782 lt!643688) (size!48385 lt!643658)))) (or ((_ is Undefined!12097) lt!643688) (ite ((_ is Found!12097) lt!643688) (= (select (arr!47834 lt!643658) (index!50780 lt!643688)) lt!643660) (ite ((_ is MissingZero!12097) lt!643688) (= (select (arr!47834 lt!643658) (index!50779 lt!643688)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12097) lt!643688) (= (select (arr!47834 lt!643658) (index!50782 lt!643688)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155477 (= lt!643688 e!826567)))

(declare-fun c!135669 () Bool)

(assert (=> d!155477 (= c!135669 (and ((_ is Intermediate!12097) lt!643689) (undefined!12909 lt!643689)))))

(assert (=> d!155477 (= lt!643689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643660 mask!2687) lt!643660 lt!643658 mask!2687))))

(assert (=> d!155477 (validMask!0 mask!2687)))

(assert (=> d!155477 (= (seekEntryOrOpen!0 lt!643660 lt!643658 mask!2687) lt!643688)))

(declare-fun b!1472916 () Bool)

(assert (=> b!1472916 (= e!826567 Undefined!12097)))

(declare-fun b!1472917 () Bool)

(declare-fun c!135671 () Bool)

(assert (=> b!1472917 (= c!135671 (= lt!643690 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472917 (= e!826568 e!826566)))

(assert (= (and d!155477 c!135669) b!1472916))

(assert (= (and d!155477 (not c!135669)) b!1472914))

(assert (= (and b!1472914 c!135670) b!1472913))

(assert (= (and b!1472914 (not c!135670)) b!1472917))

(assert (= (and b!1472917 c!135671) b!1472912))

(assert (= (and b!1472917 (not c!135671)) b!1472915))

(declare-fun m!1359669 () Bool)

(assert (=> b!1472914 m!1359669))

(declare-fun m!1359671 () Bool)

(assert (=> b!1472915 m!1359671))

(assert (=> d!155477 m!1359603))

(declare-fun m!1359673 () Bool)

(assert (=> d!155477 m!1359673))

(assert (=> d!155477 m!1359613))

(assert (=> d!155477 m!1359603))

(assert (=> d!155477 m!1359605))

(declare-fun m!1359675 () Bool)

(assert (=> d!155477 m!1359675))

(declare-fun m!1359677 () Bool)

(assert (=> d!155477 m!1359677))

(assert (=> b!1472844 d!155477))

(declare-fun b!1472926 () Bool)

(declare-fun e!826576 () Bool)

(declare-fun call!67740 () Bool)

(assert (=> b!1472926 (= e!826576 call!67740)))

(declare-fun d!155479 () Bool)

(declare-fun res!1000611 () Bool)

(declare-fun e!826577 () Bool)

(assert (=> d!155479 (=> res!1000611 e!826577)))

(assert (=> d!155479 (= res!1000611 (bvsge #b00000000000000000000000000000000 (size!48385 a!2862)))))

(assert (=> d!155479 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!826577)))

(declare-fun b!1472927 () Bool)

(declare-fun e!826575 () Bool)

(assert (=> b!1472927 (= e!826577 e!826575)))

(declare-fun c!135674 () Bool)

(assert (=> b!1472927 (= c!135674 (validKeyInArray!0 (select (arr!47834 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1472928 () Bool)

(assert (=> b!1472928 (= e!826575 call!67740)))

(declare-fun b!1472929 () Bool)

(assert (=> b!1472929 (= e!826575 e!826576)))

(declare-fun lt!643697 () (_ BitVec 64))

(assert (=> b!1472929 (= lt!643697 (select (arr!47834 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!643698 () Unit!49482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99107 (_ BitVec 64) (_ BitVec 32)) Unit!49482)

(assert (=> b!1472929 (= lt!643698 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643697 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1472929 (arrayContainsKey!0 a!2862 lt!643697 #b00000000000000000000000000000000)))

(declare-fun lt!643699 () Unit!49482)

(assert (=> b!1472929 (= lt!643699 lt!643698)))

(declare-fun res!1000610 () Bool)

(assert (=> b!1472929 (= res!1000610 (= (seekEntryOrOpen!0 (select (arr!47834 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12097 #b00000000000000000000000000000000)))))

(assert (=> b!1472929 (=> (not res!1000610) (not e!826576))))

(declare-fun bm!67737 () Bool)

(assert (=> bm!67737 (= call!67740 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155479 (not res!1000611)) b!1472927))

(assert (= (and b!1472927 c!135674) b!1472929))

(assert (= (and b!1472927 (not c!135674)) b!1472928))

(assert (= (and b!1472929 res!1000610) b!1472926))

(assert (= (or b!1472926 b!1472928) bm!67737))

(declare-fun m!1359679 () Bool)

(assert (=> b!1472927 m!1359679))

(assert (=> b!1472927 m!1359679))

(declare-fun m!1359681 () Bool)

(assert (=> b!1472927 m!1359681))

(assert (=> b!1472929 m!1359679))

(declare-fun m!1359683 () Bool)

(assert (=> b!1472929 m!1359683))

(declare-fun m!1359685 () Bool)

(assert (=> b!1472929 m!1359685))

(assert (=> b!1472929 m!1359679))

(declare-fun m!1359687 () Bool)

(assert (=> b!1472929 m!1359687))

(declare-fun m!1359689 () Bool)

(assert (=> bm!67737 m!1359689))

(assert (=> b!1472842 d!155479))

(declare-fun b!1472930 () Bool)

(declare-fun e!826578 () SeekEntryResult!12097)

(declare-fun lt!643701 () SeekEntryResult!12097)

(assert (=> b!1472930 (= e!826578 (MissingZero!12097 (index!50781 lt!643701)))))

(declare-fun b!1472931 () Bool)

(declare-fun e!826580 () SeekEntryResult!12097)

(assert (=> b!1472931 (= e!826580 (Found!12097 (index!50781 lt!643701)))))

(declare-fun b!1472932 () Bool)

(declare-fun e!826579 () SeekEntryResult!12097)

(assert (=> b!1472932 (= e!826579 e!826580)))

(declare-fun lt!643702 () (_ BitVec 64))

(assert (=> b!1472932 (= lt!643702 (select (arr!47834 a!2862) (index!50781 lt!643701)))))

(declare-fun c!135676 () Bool)

(assert (=> b!1472932 (= c!135676 (= lt!643702 (select (arr!47834 a!2862) j!93)))))

(declare-fun b!1472933 () Bool)

(assert (=> b!1472933 (= e!826578 (seekKeyOrZeroReturnVacant!0 (x!132359 lt!643701) (index!50781 lt!643701) (index!50781 lt!643701) (select (arr!47834 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155481 () Bool)

(declare-fun lt!643700 () SeekEntryResult!12097)

(assert (=> d!155481 (and (or ((_ is Undefined!12097) lt!643700) (not ((_ is Found!12097) lt!643700)) (and (bvsge (index!50780 lt!643700) #b00000000000000000000000000000000) (bvslt (index!50780 lt!643700) (size!48385 a!2862)))) (or ((_ is Undefined!12097) lt!643700) ((_ is Found!12097) lt!643700) (not ((_ is MissingZero!12097) lt!643700)) (and (bvsge (index!50779 lt!643700) #b00000000000000000000000000000000) (bvslt (index!50779 lt!643700) (size!48385 a!2862)))) (or ((_ is Undefined!12097) lt!643700) ((_ is Found!12097) lt!643700) ((_ is MissingZero!12097) lt!643700) (not ((_ is MissingVacant!12097) lt!643700)) (and (bvsge (index!50782 lt!643700) #b00000000000000000000000000000000) (bvslt (index!50782 lt!643700) (size!48385 a!2862)))) (or ((_ is Undefined!12097) lt!643700) (ite ((_ is Found!12097) lt!643700) (= (select (arr!47834 a!2862) (index!50780 lt!643700)) (select (arr!47834 a!2862) j!93)) (ite ((_ is MissingZero!12097) lt!643700) (= (select (arr!47834 a!2862) (index!50779 lt!643700)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12097) lt!643700) (= (select (arr!47834 a!2862) (index!50782 lt!643700)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155481 (= lt!643700 e!826579)))

(declare-fun c!135675 () Bool)

(assert (=> d!155481 (= c!135675 (and ((_ is Intermediate!12097) lt!643701) (undefined!12909 lt!643701)))))

(assert (=> d!155481 (= lt!643701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) (select (arr!47834 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155481 (validMask!0 mask!2687)))

(assert (=> d!155481 (= (seekEntryOrOpen!0 (select (arr!47834 a!2862) j!93) a!2862 mask!2687) lt!643700)))

(declare-fun b!1472934 () Bool)

(assert (=> b!1472934 (= e!826579 Undefined!12097)))

(declare-fun b!1472935 () Bool)

(declare-fun c!135677 () Bool)

(assert (=> b!1472935 (= c!135677 (= lt!643702 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472935 (= e!826580 e!826578)))

(assert (= (and d!155481 c!135675) b!1472934))

(assert (= (and d!155481 (not c!135675)) b!1472932))

(assert (= (and b!1472932 c!135676) b!1472931))

(assert (= (and b!1472932 (not c!135676)) b!1472935))

(assert (= (and b!1472935 c!135677) b!1472930))

(assert (= (and b!1472935 (not c!135677)) b!1472933))

(declare-fun m!1359691 () Bool)

(assert (=> b!1472932 m!1359691))

(assert (=> b!1472933 m!1359579))

(declare-fun m!1359693 () Bool)

(assert (=> b!1472933 m!1359693))

(assert (=> d!155481 m!1359579))

(assert (=> d!155481 m!1359591))

(declare-fun m!1359695 () Bool)

(assert (=> d!155481 m!1359695))

(assert (=> d!155481 m!1359613))

(assert (=> d!155481 m!1359591))

(assert (=> d!155481 m!1359579))

(assert (=> d!155481 m!1359593))

(declare-fun m!1359697 () Bool)

(assert (=> d!155481 m!1359697))

(declare-fun m!1359699 () Bool)

(assert (=> d!155481 m!1359699))

(assert (=> b!1472836 d!155481))

(declare-fun b!1472936 () Bool)

(declare-fun e!826582 () Bool)

(declare-fun call!67741 () Bool)

(assert (=> b!1472936 (= e!826582 call!67741)))

(declare-fun d!155483 () Bool)

(declare-fun res!1000613 () Bool)

(declare-fun e!826583 () Bool)

(assert (=> d!155483 (=> res!1000613 e!826583)))

(assert (=> d!155483 (= res!1000613 (bvsge j!93 (size!48385 a!2862)))))

(assert (=> d!155483 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!826583)))

(declare-fun b!1472937 () Bool)

(declare-fun e!826581 () Bool)

(assert (=> b!1472937 (= e!826583 e!826581)))

(declare-fun c!135678 () Bool)

(assert (=> b!1472937 (= c!135678 (validKeyInArray!0 (select (arr!47834 a!2862) j!93)))))

(declare-fun b!1472938 () Bool)

(assert (=> b!1472938 (= e!826581 call!67741)))

(declare-fun b!1472939 () Bool)

(assert (=> b!1472939 (= e!826581 e!826582)))

(declare-fun lt!643703 () (_ BitVec 64))

(assert (=> b!1472939 (= lt!643703 (select (arr!47834 a!2862) j!93))))

(declare-fun lt!643704 () Unit!49482)

(assert (=> b!1472939 (= lt!643704 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643703 j!93))))

(assert (=> b!1472939 (arrayContainsKey!0 a!2862 lt!643703 #b00000000000000000000000000000000)))

(declare-fun lt!643705 () Unit!49482)

(assert (=> b!1472939 (= lt!643705 lt!643704)))

(declare-fun res!1000612 () Bool)

(assert (=> b!1472939 (= res!1000612 (= (seekEntryOrOpen!0 (select (arr!47834 a!2862) j!93) a!2862 mask!2687) (Found!12097 j!93)))))

(assert (=> b!1472939 (=> (not res!1000612) (not e!826582))))

(declare-fun bm!67738 () Bool)

(assert (=> bm!67738 (= call!67741 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!155483 (not res!1000613)) b!1472937))

(assert (= (and b!1472937 c!135678) b!1472939))

(assert (= (and b!1472937 (not c!135678)) b!1472938))

(assert (= (and b!1472939 res!1000612) b!1472936))

(assert (= (or b!1472936 b!1472938) bm!67738))

(assert (=> b!1472937 m!1359579))

(assert (=> b!1472937 m!1359579))

(assert (=> b!1472937 m!1359611))

(assert (=> b!1472939 m!1359579))

(declare-fun m!1359701 () Bool)

(assert (=> b!1472939 m!1359701))

(declare-fun m!1359703 () Bool)

(assert (=> b!1472939 m!1359703))

(assert (=> b!1472939 m!1359579))

(assert (=> b!1472939 m!1359581))

(declare-fun m!1359705 () Bool)

(assert (=> bm!67738 m!1359705))

(assert (=> b!1472836 d!155483))

(declare-fun d!155485 () Bool)

(assert (=> d!155485 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643708 () Unit!49482)

(declare-fun choose!38 (array!99107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49482)

(assert (=> d!155485 (= lt!643708 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155485 (validMask!0 mask!2687)))

(assert (=> d!155485 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643708)))

(declare-fun bs!42533 () Bool)

(assert (= bs!42533 d!155485))

(assert (=> bs!42533 m!1359583))

(declare-fun m!1359707 () Bool)

(assert (=> bs!42533 m!1359707))

(assert (=> bs!42533 m!1359613))

(assert (=> b!1472836 d!155485))

(declare-fun b!1472950 () Bool)

(declare-fun e!826593 () Bool)

(declare-fun e!826592 () Bool)

(assert (=> b!1472950 (= e!826593 e!826592)))

(declare-fun c!135681 () Bool)

(assert (=> b!1472950 (= c!135681 (validKeyInArray!0 (select (arr!47834 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1472951 () Bool)

(declare-fun call!67744 () Bool)

(assert (=> b!1472951 (= e!826592 call!67744)))

(declare-fun b!1472952 () Bool)

(declare-fun e!826595 () Bool)

(declare-fun contains!9913 (List!34515 (_ BitVec 64)) Bool)

(assert (=> b!1472952 (= e!826595 (contains!9913 Nil!34512 (select (arr!47834 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1472953 () Bool)

(declare-fun e!826594 () Bool)

(assert (=> b!1472953 (= e!826594 e!826593)))

(declare-fun res!1000621 () Bool)

(assert (=> b!1472953 (=> (not res!1000621) (not e!826593))))

(assert (=> b!1472953 (= res!1000621 (not e!826595))))

(declare-fun res!1000620 () Bool)

(assert (=> b!1472953 (=> (not res!1000620) (not e!826595))))

(assert (=> b!1472953 (= res!1000620 (validKeyInArray!0 (select (arr!47834 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155487 () Bool)

(declare-fun res!1000622 () Bool)

(assert (=> d!155487 (=> res!1000622 e!826594)))

(assert (=> d!155487 (= res!1000622 (bvsge #b00000000000000000000000000000000 (size!48385 a!2862)))))

(assert (=> d!155487 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34512) e!826594)))

(declare-fun bm!67741 () Bool)

(assert (=> bm!67741 (= call!67744 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135681 (Cons!34511 (select (arr!47834 a!2862) #b00000000000000000000000000000000) Nil!34512) Nil!34512)))))

(declare-fun b!1472954 () Bool)

(assert (=> b!1472954 (= e!826592 call!67744)))

(assert (= (and d!155487 (not res!1000622)) b!1472953))

(assert (= (and b!1472953 res!1000620) b!1472952))

(assert (= (and b!1472953 res!1000621) b!1472950))

(assert (= (and b!1472950 c!135681) b!1472954))

(assert (= (and b!1472950 (not c!135681)) b!1472951))

(assert (= (or b!1472954 b!1472951) bm!67741))

(assert (=> b!1472950 m!1359679))

(assert (=> b!1472950 m!1359679))

(assert (=> b!1472950 m!1359681))

(assert (=> b!1472952 m!1359679))

(assert (=> b!1472952 m!1359679))

(declare-fun m!1359709 () Bool)

(assert (=> b!1472952 m!1359709))

(assert (=> b!1472953 m!1359679))

(assert (=> b!1472953 m!1359679))

(assert (=> b!1472953 m!1359681))

(assert (=> bm!67741 m!1359679))

(declare-fun m!1359711 () Bool)

(assert (=> bm!67741 m!1359711))

(assert (=> b!1472845 d!155487))

(declare-fun d!155489 () Bool)

(assert (=> d!155489 (= (validKeyInArray!0 (select (arr!47834 a!2862) i!1006)) (and (not (= (select (arr!47834 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47834 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472849 d!155489))

(declare-fun b!1472979 () Bool)

(declare-fun e!826611 () SeekEntryResult!12097)

(assert (=> b!1472979 (= e!826611 Undefined!12097)))

(declare-fun b!1472980 () Bool)

(declare-fun e!826612 () SeekEntryResult!12097)

(assert (=> b!1472980 (= e!826612 (Found!12097 index!646))))

(declare-fun b!1472981 () Bool)

(declare-fun e!826613 () SeekEntryResult!12097)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472981 (= e!826613 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643660 lt!643658 mask!2687))))

(declare-fun b!1472982 () Bool)

(declare-fun c!135693 () Bool)

(declare-fun lt!643722 () (_ BitVec 64))

(assert (=> b!1472982 (= c!135693 (= lt!643722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472982 (= e!826612 e!826613)))

(declare-fun b!1472983 () Bool)

(assert (=> b!1472983 (= e!826613 (MissingVacant!12097 intermediateAfterIndex!19))))

(declare-fun b!1472984 () Bool)

(assert (=> b!1472984 (= e!826611 e!826612)))

(declare-fun c!135691 () Bool)

(assert (=> b!1472984 (= c!135691 (= lt!643722 lt!643660))))

(declare-fun lt!643723 () SeekEntryResult!12097)

(declare-fun d!155491 () Bool)

(assert (=> d!155491 (and (or ((_ is Undefined!12097) lt!643723) (not ((_ is Found!12097) lt!643723)) (and (bvsge (index!50780 lt!643723) #b00000000000000000000000000000000) (bvslt (index!50780 lt!643723) (size!48385 lt!643658)))) (or ((_ is Undefined!12097) lt!643723) ((_ is Found!12097) lt!643723) (not ((_ is MissingVacant!12097) lt!643723)) (not (= (index!50782 lt!643723) intermediateAfterIndex!19)) (and (bvsge (index!50782 lt!643723) #b00000000000000000000000000000000) (bvslt (index!50782 lt!643723) (size!48385 lt!643658)))) (or ((_ is Undefined!12097) lt!643723) (ite ((_ is Found!12097) lt!643723) (= (select (arr!47834 lt!643658) (index!50780 lt!643723)) lt!643660) (and ((_ is MissingVacant!12097) lt!643723) (= (index!50782 lt!643723) intermediateAfterIndex!19) (= (select (arr!47834 lt!643658) (index!50782 lt!643723)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155491 (= lt!643723 e!826611)))

(declare-fun c!135692 () Bool)

(assert (=> d!155491 (= c!135692 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155491 (= lt!643722 (select (arr!47834 lt!643658) index!646))))

(assert (=> d!155491 (validMask!0 mask!2687)))

(assert (=> d!155491 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643660 lt!643658 mask!2687) lt!643723)))

(assert (= (and d!155491 c!135692) b!1472979))

(assert (= (and d!155491 (not c!135692)) b!1472984))

(assert (= (and b!1472984 c!135691) b!1472980))

(assert (= (and b!1472984 (not c!135691)) b!1472982))

(assert (= (and b!1472982 c!135693) b!1472983))

(assert (= (and b!1472982 (not c!135693)) b!1472981))

(declare-fun m!1359725 () Bool)

(assert (=> b!1472981 m!1359725))

(assert (=> b!1472981 m!1359725))

(declare-fun m!1359727 () Bool)

(assert (=> b!1472981 m!1359727))

(declare-fun m!1359729 () Bool)

(assert (=> d!155491 m!1359729))

(declare-fun m!1359731 () Bool)

(assert (=> d!155491 m!1359731))

(declare-fun m!1359733 () Bool)

(assert (=> d!155491 m!1359733))

(assert (=> d!155491 m!1359613))

(assert (=> b!1472838 d!155491))

(assert (=> b!1472838 d!155477))

(declare-fun b!1473048 () Bool)

(declare-fun e!826649 () Bool)

(declare-fun lt!643740 () SeekEntryResult!12097)

(assert (=> b!1473048 (= e!826649 (bvsge (x!132359 lt!643740) #b01111111111111111111111111111110))))

(declare-fun e!826651 () SeekEntryResult!12097)

(declare-fun b!1473049 () Bool)

(assert (=> b!1473049 (= e!826651 (Intermediate!12097 false (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473050 () Bool)

(declare-fun e!826648 () Bool)

(assert (=> b!1473050 (= e!826649 e!826648)))

(declare-fun res!1000644 () Bool)

(assert (=> b!1473050 (= res!1000644 (and ((_ is Intermediate!12097) lt!643740) (not (undefined!12909 lt!643740)) (bvslt (x!132359 lt!643740) #b01111111111111111111111111111110) (bvsge (x!132359 lt!643740) #b00000000000000000000000000000000) (bvsge (x!132359 lt!643740) #b00000000000000000000000000000000)))))

(assert (=> b!1473050 (=> (not res!1000644) (not e!826648))))

(declare-fun b!1473051 () Bool)

(assert (=> b!1473051 (and (bvsge (index!50781 lt!643740) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643740) (size!48385 a!2862)))))

(declare-fun res!1000645 () Bool)

(assert (=> b!1473051 (= res!1000645 (= (select (arr!47834 a!2862) (index!50781 lt!643740)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!826652 () Bool)

(assert (=> b!1473051 (=> res!1000645 e!826652)))

(declare-fun b!1473052 () Bool)

(assert (=> b!1473052 (= e!826651 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47834 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473054 () Bool)

(declare-fun e!826650 () SeekEntryResult!12097)

(assert (=> b!1473054 (= e!826650 e!826651)))

(declare-fun lt!643741 () (_ BitVec 64))

(declare-fun c!135718 () Bool)

(assert (=> b!1473054 (= c!135718 (or (= lt!643741 (select (arr!47834 a!2862) j!93)) (= (bvadd lt!643741 lt!643741) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473055 () Bool)

(assert (=> b!1473055 (and (bvsge (index!50781 lt!643740) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643740) (size!48385 a!2862)))))

(declare-fun res!1000646 () Bool)

(assert (=> b!1473055 (= res!1000646 (= (select (arr!47834 a!2862) (index!50781 lt!643740)) (select (arr!47834 a!2862) j!93)))))

(assert (=> b!1473055 (=> res!1000646 e!826652)))

(assert (=> b!1473055 (= e!826648 e!826652)))

(declare-fun b!1473056 () Bool)

(assert (=> b!1473056 (and (bvsge (index!50781 lt!643740) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643740) (size!48385 a!2862)))))

(assert (=> b!1473056 (= e!826652 (= (select (arr!47834 a!2862) (index!50781 lt!643740)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155501 () Bool)

(assert (=> d!155501 e!826649))

(declare-fun c!135720 () Bool)

(assert (=> d!155501 (= c!135720 (and ((_ is Intermediate!12097) lt!643740) (undefined!12909 lt!643740)))))

(assert (=> d!155501 (= lt!643740 e!826650)))

(declare-fun c!135719 () Bool)

(assert (=> d!155501 (= c!135719 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155501 (= lt!643741 (select (arr!47834 a!2862) (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687)))))

(assert (=> d!155501 (validMask!0 mask!2687)))

(assert (=> d!155501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) (select (arr!47834 a!2862) j!93) a!2862 mask!2687) lt!643740)))

(declare-fun b!1473053 () Bool)

(assert (=> b!1473053 (= e!826650 (Intermediate!12097 true (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!155501 c!135719) b!1473053))

(assert (= (and d!155501 (not c!135719)) b!1473054))

(assert (= (and b!1473054 c!135718) b!1473049))

(assert (= (and b!1473054 (not c!135718)) b!1473052))

(assert (= (and d!155501 c!135720) b!1473048))

(assert (= (and d!155501 (not c!135720)) b!1473050))

(assert (= (and b!1473050 res!1000644) b!1473055))

(assert (= (and b!1473055 (not res!1000646)) b!1473051))

(assert (= (and b!1473051 (not res!1000645)) b!1473056))

(assert (=> b!1473052 m!1359591))

(declare-fun m!1359751 () Bool)

(assert (=> b!1473052 m!1359751))

(assert (=> b!1473052 m!1359751))

(assert (=> b!1473052 m!1359579))

(declare-fun m!1359753 () Bool)

(assert (=> b!1473052 m!1359753))

(declare-fun m!1359755 () Bool)

(assert (=> b!1473051 m!1359755))

(assert (=> b!1473056 m!1359755))

(assert (=> d!155501 m!1359591))

(declare-fun m!1359757 () Bool)

(assert (=> d!155501 m!1359757))

(assert (=> d!155501 m!1359613))

(assert (=> b!1473055 m!1359755))

(assert (=> b!1472848 d!155501))

(declare-fun d!155507 () Bool)

(declare-fun lt!643753 () (_ BitVec 32))

(declare-fun lt!643752 () (_ BitVec 32))

(assert (=> d!155507 (= lt!643753 (bvmul (bvxor lt!643752 (bvlshr lt!643752 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155507 (= lt!643752 ((_ extract 31 0) (bvand (bvxor (select (arr!47834 a!2862) j!93) (bvlshr (select (arr!47834 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155507 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1000647 (let ((h!35869 ((_ extract 31 0) (bvand (bvxor (select (arr!47834 a!2862) j!93) (bvlshr (select (arr!47834 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132365 (bvmul (bvxor h!35869 (bvlshr h!35869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132365 (bvlshr x!132365 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1000647 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1000647 #b00000000000000000000000000000000))))))

(assert (=> d!155507 (= (toIndex!0 (select (arr!47834 a!2862) j!93) mask!2687) (bvand (bvxor lt!643753 (bvlshr lt!643753 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1472848 d!155507))

(declare-fun d!155509 () Bool)

(assert (=> d!155509 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125856 d!155509))

(declare-fun d!155515 () Bool)

(assert (=> d!155515 (= (array_inv!36779 a!2862) (bvsge (size!48385 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125856 d!155515))

(declare-fun b!1473093 () Bool)

(declare-fun e!826672 () Bool)

(declare-fun lt!643766 () SeekEntryResult!12097)

(assert (=> b!1473093 (= e!826672 (bvsge (x!132359 lt!643766) #b01111111111111111111111111111110))))

(declare-fun b!1473094 () Bool)

(declare-fun e!826674 () SeekEntryResult!12097)

(assert (=> b!1473094 (= e!826674 (Intermediate!12097 false index!646 x!665))))

(declare-fun b!1473095 () Bool)

(declare-fun e!826671 () Bool)

(assert (=> b!1473095 (= e!826672 e!826671)))

(declare-fun res!1000648 () Bool)

(assert (=> b!1473095 (= res!1000648 (and ((_ is Intermediate!12097) lt!643766) (not (undefined!12909 lt!643766)) (bvslt (x!132359 lt!643766) #b01111111111111111111111111111110) (bvsge (x!132359 lt!643766) #b00000000000000000000000000000000) (bvsge (x!132359 lt!643766) x!665)))))

(assert (=> b!1473095 (=> (not res!1000648) (not e!826671))))

(declare-fun b!1473096 () Bool)

(assert (=> b!1473096 (and (bvsge (index!50781 lt!643766) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643766) (size!48385 a!2862)))))

(declare-fun res!1000649 () Bool)

(assert (=> b!1473096 (= res!1000649 (= (select (arr!47834 a!2862) (index!50781 lt!643766)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!826675 () Bool)

(assert (=> b!1473096 (=> res!1000649 e!826675)))

(declare-fun b!1473097 () Bool)

(assert (=> b!1473097 (= e!826674 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47834 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473099 () Bool)

(declare-fun e!826673 () SeekEntryResult!12097)

(assert (=> b!1473099 (= e!826673 e!826674)))

(declare-fun lt!643767 () (_ BitVec 64))

(declare-fun c!135739 () Bool)

(assert (=> b!1473099 (= c!135739 (or (= lt!643767 (select (arr!47834 a!2862) j!93)) (= (bvadd lt!643767 lt!643767) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473100 () Bool)

(assert (=> b!1473100 (and (bvsge (index!50781 lt!643766) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643766) (size!48385 a!2862)))))

(declare-fun res!1000650 () Bool)

(assert (=> b!1473100 (= res!1000650 (= (select (arr!47834 a!2862) (index!50781 lt!643766)) (select (arr!47834 a!2862) j!93)))))

(assert (=> b!1473100 (=> res!1000650 e!826675)))

(assert (=> b!1473100 (= e!826671 e!826675)))

(declare-fun b!1473101 () Bool)

(assert (=> b!1473101 (and (bvsge (index!50781 lt!643766) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643766) (size!48385 a!2862)))))

(assert (=> b!1473101 (= e!826675 (= (select (arr!47834 a!2862) (index!50781 lt!643766)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155517 () Bool)

(assert (=> d!155517 e!826672))

(declare-fun c!135741 () Bool)

(assert (=> d!155517 (= c!135741 (and ((_ is Intermediate!12097) lt!643766) (undefined!12909 lt!643766)))))

(assert (=> d!155517 (= lt!643766 e!826673)))

(declare-fun c!135740 () Bool)

(assert (=> d!155517 (= c!135740 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155517 (= lt!643767 (select (arr!47834 a!2862) index!646))))

(assert (=> d!155517 (validMask!0 mask!2687)))

(assert (=> d!155517 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47834 a!2862) j!93) a!2862 mask!2687) lt!643766)))

(declare-fun b!1473098 () Bool)

(assert (=> b!1473098 (= e!826673 (Intermediate!12097 true index!646 x!665))))

(assert (= (and d!155517 c!135740) b!1473098))

(assert (= (and d!155517 (not c!135740)) b!1473099))

(assert (= (and b!1473099 c!135739) b!1473094))

(assert (= (and b!1473099 (not c!135739)) b!1473097))

(assert (= (and d!155517 c!135741) b!1473093))

(assert (= (and d!155517 (not c!135741)) b!1473095))

(assert (= (and b!1473095 res!1000648) b!1473100))

(assert (= (and b!1473100 (not res!1000650)) b!1473096))

(assert (= (and b!1473096 (not res!1000649)) b!1473101))

(assert (=> b!1473097 m!1359725))

(assert (=> b!1473097 m!1359725))

(assert (=> b!1473097 m!1359579))

(declare-fun m!1359779 () Bool)

(assert (=> b!1473097 m!1359779))

(declare-fun m!1359781 () Bool)

(assert (=> b!1473096 m!1359781))

(assert (=> b!1473101 m!1359781))

(assert (=> d!155517 m!1359577))

(assert (=> d!155517 m!1359613))

(assert (=> b!1473100 m!1359781))

(assert (=> b!1472847 d!155517))

(declare-fun d!155519 () Bool)

(assert (=> d!155519 (= (validKeyInArray!0 (select (arr!47834 a!2862) j!93)) (and (not (= (select (arr!47834 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47834 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472851 d!155519))

(declare-fun b!1473102 () Bool)

(declare-fun e!826677 () Bool)

(declare-fun lt!643768 () SeekEntryResult!12097)

(assert (=> b!1473102 (= e!826677 (bvsge (x!132359 lt!643768) #b01111111111111111111111111111110))))

(declare-fun b!1473103 () Bool)

(declare-fun e!826679 () SeekEntryResult!12097)

(assert (=> b!1473103 (= e!826679 (Intermediate!12097 false index!646 x!665))))

(declare-fun b!1473104 () Bool)

(declare-fun e!826676 () Bool)

(assert (=> b!1473104 (= e!826677 e!826676)))

(declare-fun res!1000651 () Bool)

(assert (=> b!1473104 (= res!1000651 (and ((_ is Intermediate!12097) lt!643768) (not (undefined!12909 lt!643768)) (bvslt (x!132359 lt!643768) #b01111111111111111111111111111110) (bvsge (x!132359 lt!643768) #b00000000000000000000000000000000) (bvsge (x!132359 lt!643768) x!665)))))

(assert (=> b!1473104 (=> (not res!1000651) (not e!826676))))

(declare-fun b!1473105 () Bool)

(assert (=> b!1473105 (and (bvsge (index!50781 lt!643768) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643768) (size!48385 lt!643658)))))

(declare-fun res!1000652 () Bool)

(assert (=> b!1473105 (= res!1000652 (= (select (arr!47834 lt!643658) (index!50781 lt!643768)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!826680 () Bool)

(assert (=> b!1473105 (=> res!1000652 e!826680)))

(declare-fun b!1473106 () Bool)

(assert (=> b!1473106 (= e!826679 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!643660 lt!643658 mask!2687))))

(declare-fun b!1473108 () Bool)

(declare-fun e!826678 () SeekEntryResult!12097)

(assert (=> b!1473108 (= e!826678 e!826679)))

(declare-fun c!135742 () Bool)

(declare-fun lt!643769 () (_ BitVec 64))

(assert (=> b!1473108 (= c!135742 (or (= lt!643769 lt!643660) (= (bvadd lt!643769 lt!643769) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473109 () Bool)

(assert (=> b!1473109 (and (bvsge (index!50781 lt!643768) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643768) (size!48385 lt!643658)))))

(declare-fun res!1000653 () Bool)

(assert (=> b!1473109 (= res!1000653 (= (select (arr!47834 lt!643658) (index!50781 lt!643768)) lt!643660))))

(assert (=> b!1473109 (=> res!1000653 e!826680)))

(assert (=> b!1473109 (= e!826676 e!826680)))

(declare-fun b!1473110 () Bool)

(assert (=> b!1473110 (and (bvsge (index!50781 lt!643768) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643768) (size!48385 lt!643658)))))

(assert (=> b!1473110 (= e!826680 (= (select (arr!47834 lt!643658) (index!50781 lt!643768)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155521 () Bool)

(assert (=> d!155521 e!826677))

(declare-fun c!135744 () Bool)

(assert (=> d!155521 (= c!135744 (and ((_ is Intermediate!12097) lt!643768) (undefined!12909 lt!643768)))))

(assert (=> d!155521 (= lt!643768 e!826678)))

(declare-fun c!135743 () Bool)

(assert (=> d!155521 (= c!135743 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155521 (= lt!643769 (select (arr!47834 lt!643658) index!646))))

(assert (=> d!155521 (validMask!0 mask!2687)))

(assert (=> d!155521 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643660 lt!643658 mask!2687) lt!643768)))

(declare-fun b!1473107 () Bool)

(assert (=> b!1473107 (= e!826678 (Intermediate!12097 true index!646 x!665))))

(assert (= (and d!155521 c!135743) b!1473107))

(assert (= (and d!155521 (not c!135743)) b!1473108))

(assert (= (and b!1473108 c!135742) b!1473103))

(assert (= (and b!1473108 (not c!135742)) b!1473106))

(assert (= (and d!155521 c!135744) b!1473102))

(assert (= (and d!155521 (not c!135744)) b!1473104))

(assert (= (and b!1473104 res!1000651) b!1473109))

(assert (= (and b!1473109 (not res!1000653)) b!1473105))

(assert (= (and b!1473105 (not res!1000652)) b!1473110))

(assert (=> b!1473106 m!1359725))

(assert (=> b!1473106 m!1359725))

(declare-fun m!1359783 () Bool)

(assert (=> b!1473106 m!1359783))

(declare-fun m!1359785 () Bool)

(assert (=> b!1473105 m!1359785))

(assert (=> b!1473110 m!1359785))

(assert (=> d!155521 m!1359733))

(assert (=> d!155521 m!1359613))

(assert (=> b!1473109 m!1359785))

(assert (=> b!1472850 d!155521))

(declare-fun b!1473111 () Bool)

(declare-fun e!826682 () Bool)

(declare-fun lt!643770 () SeekEntryResult!12097)

(assert (=> b!1473111 (= e!826682 (bvsge (x!132359 lt!643770) #b01111111111111111111111111111110))))

(declare-fun b!1473112 () Bool)

(declare-fun e!826684 () SeekEntryResult!12097)

(assert (=> b!1473112 (= e!826684 (Intermediate!12097 false (toIndex!0 lt!643660 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473113 () Bool)

(declare-fun e!826681 () Bool)

(assert (=> b!1473113 (= e!826682 e!826681)))

(declare-fun res!1000654 () Bool)

(assert (=> b!1473113 (= res!1000654 (and ((_ is Intermediate!12097) lt!643770) (not (undefined!12909 lt!643770)) (bvslt (x!132359 lt!643770) #b01111111111111111111111111111110) (bvsge (x!132359 lt!643770) #b00000000000000000000000000000000) (bvsge (x!132359 lt!643770) #b00000000000000000000000000000000)))))

(assert (=> b!1473113 (=> (not res!1000654) (not e!826681))))

(declare-fun b!1473114 () Bool)

(assert (=> b!1473114 (and (bvsge (index!50781 lt!643770) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643770) (size!48385 lt!643658)))))

(declare-fun res!1000655 () Bool)

(assert (=> b!1473114 (= res!1000655 (= (select (arr!47834 lt!643658) (index!50781 lt!643770)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!826685 () Bool)

(assert (=> b!1473114 (=> res!1000655 e!826685)))

(declare-fun b!1473115 () Bool)

(assert (=> b!1473115 (= e!826684 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!643660 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!643660 lt!643658 mask!2687))))

(declare-fun b!1473117 () Bool)

(declare-fun e!826683 () SeekEntryResult!12097)

(assert (=> b!1473117 (= e!826683 e!826684)))

(declare-fun c!135745 () Bool)

(declare-fun lt!643771 () (_ BitVec 64))

(assert (=> b!1473117 (= c!135745 (or (= lt!643771 lt!643660) (= (bvadd lt!643771 lt!643771) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473118 () Bool)

(assert (=> b!1473118 (and (bvsge (index!50781 lt!643770) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643770) (size!48385 lt!643658)))))

(declare-fun res!1000656 () Bool)

(assert (=> b!1473118 (= res!1000656 (= (select (arr!47834 lt!643658) (index!50781 lt!643770)) lt!643660))))

(assert (=> b!1473118 (=> res!1000656 e!826685)))

(assert (=> b!1473118 (= e!826681 e!826685)))

(declare-fun b!1473119 () Bool)

(assert (=> b!1473119 (and (bvsge (index!50781 lt!643770) #b00000000000000000000000000000000) (bvslt (index!50781 lt!643770) (size!48385 lt!643658)))))

(assert (=> b!1473119 (= e!826685 (= (select (arr!47834 lt!643658) (index!50781 lt!643770)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155523 () Bool)

(assert (=> d!155523 e!826682))

(declare-fun c!135747 () Bool)

(assert (=> d!155523 (= c!135747 (and ((_ is Intermediate!12097) lt!643770) (undefined!12909 lt!643770)))))

(assert (=> d!155523 (= lt!643770 e!826683)))

(declare-fun c!135746 () Bool)

(assert (=> d!155523 (= c!135746 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155523 (= lt!643771 (select (arr!47834 lt!643658) (toIndex!0 lt!643660 mask!2687)))))

(assert (=> d!155523 (validMask!0 mask!2687)))

(assert (=> d!155523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643660 mask!2687) lt!643660 lt!643658 mask!2687) lt!643770)))

(declare-fun b!1473116 () Bool)

(assert (=> b!1473116 (= e!826683 (Intermediate!12097 true (toIndex!0 lt!643660 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!155523 c!135746) b!1473116))

(assert (= (and d!155523 (not c!135746)) b!1473117))

(assert (= (and b!1473117 c!135745) b!1473112))

(assert (= (and b!1473117 (not c!135745)) b!1473115))

(assert (= (and d!155523 c!135747) b!1473111))

(assert (= (and d!155523 (not c!135747)) b!1473113))

(assert (= (and b!1473113 res!1000654) b!1473118))

(assert (= (and b!1473118 (not res!1000656)) b!1473114))

(assert (= (and b!1473114 (not res!1000655)) b!1473119))

(assert (=> b!1473115 m!1359603))

(declare-fun m!1359787 () Bool)

(assert (=> b!1473115 m!1359787))

(assert (=> b!1473115 m!1359787))

(declare-fun m!1359789 () Bool)

(assert (=> b!1473115 m!1359789))

(declare-fun m!1359791 () Bool)

(assert (=> b!1473114 m!1359791))

(assert (=> b!1473119 m!1359791))

(assert (=> d!155523 m!1359603))

(declare-fun m!1359793 () Bool)

(assert (=> d!155523 m!1359793))

(assert (=> d!155523 m!1359613))

(assert (=> b!1473118 m!1359791))

(assert (=> b!1472839 d!155523))

(declare-fun d!155525 () Bool)

(declare-fun lt!643773 () (_ BitVec 32))

(declare-fun lt!643772 () (_ BitVec 32))

(assert (=> d!155525 (= lt!643773 (bvmul (bvxor lt!643772 (bvlshr lt!643772 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155525 (= lt!643772 ((_ extract 31 0) (bvand (bvxor lt!643660 (bvlshr lt!643660 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155525 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1000647 (let ((h!35869 ((_ extract 31 0) (bvand (bvxor lt!643660 (bvlshr lt!643660 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132365 (bvmul (bvxor h!35869 (bvlshr h!35869 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132365 (bvlshr x!132365 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1000647 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1000647 #b00000000000000000000000000000000))))))

(assert (=> d!155525 (= (toIndex!0 lt!643660 mask!2687) (bvand (bvxor lt!643773 (bvlshr lt!643773 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1472839 d!155525))

(check-sat (not b!1473052) (not bm!67738) (not b!1472927) (not d!155491) (not d!155517) (not b!1472933) (not d!155521) (not b!1472929) (not d!155477) (not b!1472937) (not bm!67741) (not d!155485) (not bm!67737) (not b!1473115) (not b!1472952) (not b!1473097) (not b!1472981) (not d!155481) (not b!1472950) (not d!155523) (not b!1473106) (not d!155501) (not b!1472915) (not b!1472939) (not b!1472953))
(check-sat)
