; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125858 () Bool)

(assert start!125858)

(declare-fun b!1472884 () Bool)

(declare-fun e!826558 () Bool)

(declare-fun e!826553 () Bool)

(assert (=> b!1472884 (= e!826558 e!826553)))

(declare-fun res!1000602 () Bool)

(assert (=> b!1472884 (=> (not res!1000602) (not e!826553))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12098 0))(
  ( (MissingZero!12098 (index!50783 (_ BitVec 32))) (Found!12098 (index!50784 (_ BitVec 32))) (Intermediate!12098 (undefined!12910 Bool) (index!50785 (_ BitVec 32)) (x!132360 (_ BitVec 32))) (Undefined!12098) (MissingVacant!12098 (index!50786 (_ BitVec 32))) )
))
(declare-fun lt!643676 () SeekEntryResult!12098)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472884 (= res!1000602 (= lt!643676 (Intermediate!12098 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643678 () (_ BitVec 64))

(declare-datatypes ((array!99109 0))(
  ( (array!99110 (arr!47835 (Array (_ BitVec 32) (_ BitVec 64))) (size!48386 (_ BitVec 32))) )
))
(declare-fun lt!643677 () array!99109)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99109 (_ BitVec 32)) SeekEntryResult!12098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472884 (= lt!643676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643678 mask!2687) lt!643678 lt!643677 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99109)

(assert (=> b!1472884 (= lt!643678 (select (store (arr!47835 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1472885 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826555 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99109 (_ BitVec 32)) SeekEntryResult!12098)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99109 (_ BitVec 32)) SeekEntryResult!12098)

(assert (=> b!1472885 (= e!826555 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643678 lt!643677 mask!2687) (seekEntryOrOpen!0 lt!643678 lt!643677 mask!2687)))))

(declare-fun b!1472886 () Bool)

(declare-fun res!1000600 () Bool)

(assert (=> b!1472886 (=> (not res!1000600) (not e!826558))))

(declare-fun lt!643680 () SeekEntryResult!12098)

(assert (=> b!1472886 (= res!1000600 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47835 a!2862) j!93) a!2862 mask!2687) lt!643680))))

(declare-fun b!1472887 () Bool)

(declare-fun e!826559 () Bool)

(assert (=> b!1472887 (= e!826559 e!826558)))

(declare-fun res!1000597 () Bool)

(assert (=> b!1472887 (=> (not res!1000597) (not e!826558))))

(assert (=> b!1472887 (= res!1000597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) (select (arr!47835 a!2862) j!93) a!2862 mask!2687) lt!643680))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472887 (= lt!643680 (Intermediate!12098 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472888 () Bool)

(assert (=> b!1472888 (= e!826555 (= lt!643676 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643678 lt!643677 mask!2687)))))

(declare-fun b!1472889 () Bool)

(declare-fun res!1000594 () Bool)

(declare-fun e!826556 () Bool)

(assert (=> b!1472889 (=> (not res!1000594) (not e!826556))))

(declare-datatypes ((List!34516 0))(
  ( (Nil!34513) (Cons!34512 (h!35868 (_ BitVec 64)) (t!49217 List!34516)) )
))
(declare-fun arrayNoDuplicates!0 (array!99109 (_ BitVec 32) List!34516) Bool)

(assert (=> b!1472889 (= res!1000594 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34513))))

(declare-fun b!1472890 () Bool)

(assert (=> b!1472890 (= e!826556 e!826559)))

(declare-fun res!1000595 () Bool)

(assert (=> b!1472890 (=> (not res!1000595) (not e!826559))))

(assert (=> b!1472890 (= res!1000595 (= (select (store (arr!47835 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472890 (= lt!643677 (array!99110 (store (arr!47835 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48386 a!2862)))))

(declare-fun res!1000596 () Bool)

(assert (=> start!125858 (=> (not res!1000596) (not e!826556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125858 (= res!1000596 (validMask!0 mask!2687))))

(assert (=> start!125858 e!826556))

(assert (=> start!125858 true))

(declare-fun array_inv!36780 (array!99109) Bool)

(assert (=> start!125858 (array_inv!36780 a!2862)))

(declare-fun b!1472891 () Bool)

(declare-fun res!1000604 () Bool)

(assert (=> b!1472891 (=> (not res!1000604) (not e!826556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472891 (= res!1000604 (validKeyInArray!0 (select (arr!47835 a!2862) j!93)))))

(declare-fun b!1472892 () Bool)

(declare-fun res!1000592 () Bool)

(assert (=> b!1472892 (=> (not res!1000592) (not e!826556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99109 (_ BitVec 32)) Bool)

(assert (=> b!1472892 (= res!1000592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472893 () Bool)

(declare-fun res!1000593 () Bool)

(assert (=> b!1472893 (=> (not res!1000593) (not e!826553))))

(assert (=> b!1472893 (= res!1000593 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472894 () Bool)

(declare-fun res!1000601 () Bool)

(assert (=> b!1472894 (=> (not res!1000601) (not e!826556))))

(assert (=> b!1472894 (= res!1000601 (and (= (size!48386 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48386 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48386 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472895 () Bool)

(declare-fun res!1000605 () Bool)

(assert (=> b!1472895 (=> (not res!1000605) (not e!826553))))

(assert (=> b!1472895 (= res!1000605 e!826555)))

(declare-fun c!135662 () Bool)

(assert (=> b!1472895 (= c!135662 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!643679 () SeekEntryResult!12098)

(declare-fun b!1472896 () Bool)

(declare-fun e!826557 () Bool)

(assert (=> b!1472896 (= e!826557 (= lt!643679 (seekEntryOrOpen!0 lt!643678 lt!643677 mask!2687)))))

(declare-fun b!1472897 () Bool)

(declare-fun res!1000603 () Bool)

(assert (=> b!1472897 (=> (not res!1000603) (not e!826556))))

(assert (=> b!1472897 (= res!1000603 (validKeyInArray!0 (select (arr!47835 a!2862) i!1006)))))

(declare-fun b!1472898 () Bool)

(assert (=> b!1472898 (= e!826553 (not e!826557))))

(declare-fun res!1000598 () Bool)

(assert (=> b!1472898 (=> res!1000598 e!826557)))

(assert (=> b!1472898 (= res!1000598 (or (not (= (select (arr!47835 a!2862) index!646) (select (store (arr!47835 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47835 a!2862) index!646) (select (arr!47835 a!2862) j!93)))))))

(assert (=> b!1472898 (and (= lt!643679 (Found!12098 j!93)) (or (= (select (arr!47835 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47835 a!2862) intermediateBeforeIndex!19) (select (arr!47835 a!2862) j!93))))))

(assert (=> b!1472898 (= lt!643679 (seekEntryOrOpen!0 (select (arr!47835 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1472898 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49484 0))(
  ( (Unit!49485) )
))
(declare-fun lt!643681 () Unit!49484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49484)

(assert (=> b!1472898 (= lt!643681 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472899 () Bool)

(declare-fun res!1000599 () Bool)

(assert (=> b!1472899 (=> (not res!1000599) (not e!826556))))

(assert (=> b!1472899 (= res!1000599 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48386 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48386 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48386 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125858 res!1000596) b!1472894))

(assert (= (and b!1472894 res!1000601) b!1472897))

(assert (= (and b!1472897 res!1000603) b!1472891))

(assert (= (and b!1472891 res!1000604) b!1472892))

(assert (= (and b!1472892 res!1000592) b!1472889))

(assert (= (and b!1472889 res!1000594) b!1472899))

(assert (= (and b!1472899 res!1000599) b!1472890))

(assert (= (and b!1472890 res!1000595) b!1472887))

(assert (= (and b!1472887 res!1000597) b!1472886))

(assert (= (and b!1472886 res!1000600) b!1472884))

(assert (= (and b!1472884 res!1000602) b!1472895))

(assert (= (and b!1472895 c!135662) b!1472888))

(assert (= (and b!1472895 (not c!135662)) b!1472885))

(assert (= (and b!1472895 res!1000605) b!1472893))

(assert (= (and b!1472893 res!1000593) b!1472898))

(assert (= (and b!1472898 (not res!1000598)) b!1472896))

(declare-fun m!1359619 () Bool)

(assert (=> b!1472888 m!1359619))

(declare-fun m!1359621 () Bool)

(assert (=> b!1472885 m!1359621))

(declare-fun m!1359623 () Bool)

(assert (=> b!1472885 m!1359623))

(declare-fun m!1359625 () Bool)

(assert (=> b!1472884 m!1359625))

(assert (=> b!1472884 m!1359625))

(declare-fun m!1359627 () Bool)

(assert (=> b!1472884 m!1359627))

(declare-fun m!1359629 () Bool)

(assert (=> b!1472884 m!1359629))

(declare-fun m!1359631 () Bool)

(assert (=> b!1472884 m!1359631))

(declare-fun m!1359633 () Bool)

(assert (=> b!1472892 m!1359633))

(declare-fun m!1359635 () Bool)

(assert (=> b!1472889 m!1359635))

(assert (=> b!1472890 m!1359629))

(declare-fun m!1359637 () Bool)

(assert (=> b!1472890 m!1359637))

(assert (=> b!1472896 m!1359623))

(declare-fun m!1359639 () Bool)

(assert (=> b!1472891 m!1359639))

(assert (=> b!1472891 m!1359639))

(declare-fun m!1359641 () Bool)

(assert (=> b!1472891 m!1359641))

(assert (=> b!1472886 m!1359639))

(assert (=> b!1472886 m!1359639))

(declare-fun m!1359643 () Bool)

(assert (=> b!1472886 m!1359643))

(declare-fun m!1359645 () Bool)

(assert (=> b!1472898 m!1359645))

(assert (=> b!1472898 m!1359629))

(declare-fun m!1359647 () Bool)

(assert (=> b!1472898 m!1359647))

(declare-fun m!1359649 () Bool)

(assert (=> b!1472898 m!1359649))

(declare-fun m!1359651 () Bool)

(assert (=> b!1472898 m!1359651))

(assert (=> b!1472898 m!1359639))

(declare-fun m!1359653 () Bool)

(assert (=> b!1472898 m!1359653))

(declare-fun m!1359655 () Bool)

(assert (=> b!1472898 m!1359655))

(assert (=> b!1472898 m!1359639))

(declare-fun m!1359657 () Bool)

(assert (=> b!1472897 m!1359657))

(assert (=> b!1472897 m!1359657))

(declare-fun m!1359659 () Bool)

(assert (=> b!1472897 m!1359659))

(declare-fun m!1359661 () Bool)

(assert (=> start!125858 m!1359661))

(declare-fun m!1359663 () Bool)

(assert (=> start!125858 m!1359663))

(assert (=> b!1472887 m!1359639))

(assert (=> b!1472887 m!1359639))

(declare-fun m!1359665 () Bool)

(assert (=> b!1472887 m!1359665))

(assert (=> b!1472887 m!1359665))

(assert (=> b!1472887 m!1359639))

(declare-fun m!1359667 () Bool)

(assert (=> b!1472887 m!1359667))

(push 1)

(assert (not b!1472885))

(assert (not b!1472889))

(assert (not b!1472884))

(assert (not b!1472891))

(assert (not b!1472897))

(assert (not b!1472888))

(assert (not b!1472898))

(assert (not b!1472896))

(assert (not b!1472887))

(assert (not b!1472892))

(assert (not start!125858))

(assert (not b!1472886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155493 () Bool)

(assert (=> d!155493 (= (validKeyInArray!0 (select (arr!47835 a!2862) i!1006)) (and (not (= (select (arr!47835 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47835 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472897 d!155493))

(declare-fun b!1473003 () Bool)

(declare-fun e!826625 () Bool)

(declare-fun lt!643728 () SeekEntryResult!12098)

(assert (=> b!1473003 (= e!826625 (bvsge (x!132360 lt!643728) #b01111111111111111111111111111110))))

(declare-fun b!1473004 () Bool)

(assert (=> b!1473004 (and (bvsge (index!50785 lt!643728) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643728) (size!48386 a!2862)))))

(declare-fun res!1000636 () Bool)

(assert (=> b!1473004 (= res!1000636 (= (select (arr!47835 a!2862) (index!50785 lt!643728)) (select (arr!47835 a!2862) j!93)))))

(declare-fun e!826626 () Bool)

(assert (=> b!1473004 (=> res!1000636 e!826626)))

(declare-fun e!826624 () Bool)

(assert (=> b!1473004 (= e!826624 e!826626)))

(declare-fun d!155497 () Bool)

(assert (=> d!155497 e!826625))

(declare-fun c!135701 () Bool)

(assert (=> d!155497 (= c!135701 (and (is-Intermediate!12098 lt!643728) (undefined!12910 lt!643728)))))

(declare-fun e!826627 () SeekEntryResult!12098)

(assert (=> d!155497 (= lt!643728 e!826627)))

(declare-fun c!135702 () Bool)

(assert (=> d!155497 (= c!135702 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643729 () (_ BitVec 64))

(assert (=> d!155497 (= lt!643729 (select (arr!47835 a!2862) index!646))))

(assert (=> d!155497 (validMask!0 mask!2687)))

(assert (=> d!155497 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47835 a!2862) j!93) a!2862 mask!2687) lt!643728)))

(declare-fun b!1473005 () Bool)

(declare-fun e!826628 () SeekEntryResult!12098)

(assert (=> b!1473005 (= e!826627 e!826628)))

(declare-fun c!135700 () Bool)

(assert (=> b!1473005 (= c!135700 (or (= lt!643729 (select (arr!47835 a!2862) j!93)) (= (bvadd lt!643729 lt!643729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473006 () Bool)

(assert (=> b!1473006 (and (bvsge (index!50785 lt!643728) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643728) (size!48386 a!2862)))))

(assert (=> b!1473006 (= e!826626 (= (select (arr!47835 a!2862) (index!50785 lt!643728)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473007 () Bool)

(assert (=> b!1473007 (= e!826628 (Intermediate!12098 false index!646 x!665))))

(declare-fun b!1473008 () Bool)

(assert (=> b!1473008 (and (bvsge (index!50785 lt!643728) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643728) (size!48386 a!2862)))))

(declare-fun res!1000637 () Bool)

(assert (=> b!1473008 (= res!1000637 (= (select (arr!47835 a!2862) (index!50785 lt!643728)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473008 (=> res!1000637 e!826626)))

(declare-fun b!1473009 () Bool)

(assert (=> b!1473009 (= e!826627 (Intermediate!12098 true index!646 x!665))))

(declare-fun b!1473010 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473010 (= e!826628 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47835 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473011 () Bool)

(assert (=> b!1473011 (= e!826625 e!826624)))

(declare-fun res!1000635 () Bool)

(assert (=> b!1473011 (= res!1000635 (and (is-Intermediate!12098 lt!643728) (not (undefined!12910 lt!643728)) (bvslt (x!132360 lt!643728) #b01111111111111111111111111111110) (bvsge (x!132360 lt!643728) #b00000000000000000000000000000000) (bvsge (x!132360 lt!643728) x!665)))))

(assert (=> b!1473011 (=> (not res!1000635) (not e!826624))))

(assert (= (and d!155497 c!135702) b!1473009))

(assert (= (and d!155497 (not c!135702)) b!1473005))

(assert (= (and b!1473005 c!135700) b!1473007))

(assert (= (and b!1473005 (not c!135700)) b!1473010))

(assert (= (and d!155497 c!135701) b!1473003))

(assert (= (and d!155497 (not c!135701)) b!1473011))

(assert (= (and b!1473011 res!1000635) b!1473004))

(assert (= (and b!1473004 (not res!1000636)) b!1473008))

(assert (= (and b!1473008 (not res!1000637)) b!1473006))

(declare-fun m!1359735 () Bool)

(assert (=> b!1473006 m!1359735))

(assert (=> b!1473008 m!1359735))

(declare-fun m!1359737 () Bool)

(assert (=> b!1473010 m!1359737))

(assert (=> b!1473010 m!1359737))

(assert (=> b!1473010 m!1359639))

(declare-fun m!1359739 () Bool)

(assert (=> b!1473010 m!1359739))

(assert (=> d!155497 m!1359651))

(assert (=> d!155497 m!1359661))

(assert (=> b!1473004 m!1359735))

(assert (=> b!1472886 d!155497))

(declare-fun b!1473070 () Bool)

(declare-fun e!826659 () SeekEntryResult!12098)

(declare-fun lt!643756 () SeekEntryResult!12098)

(assert (=> b!1473070 (= e!826659 (Found!12098 (index!50785 lt!643756)))))

(declare-fun b!1473071 () Bool)

(declare-fun e!826661 () SeekEntryResult!12098)

(assert (=> b!1473071 (= e!826661 e!826659)))

(declare-fun lt!643754 () (_ BitVec 64))

(assert (=> b!1473071 (= lt!643754 (select (arr!47835 lt!643677) (index!50785 lt!643756)))))

(declare-fun c!135729 () Bool)

(assert (=> b!1473071 (= c!135729 (= lt!643754 lt!643678))))

(declare-fun b!1473072 () Bool)

(declare-fun e!826660 () SeekEntryResult!12098)

(assert (=> b!1473072 (= e!826660 (MissingZero!12098 (index!50785 lt!643756)))))

(declare-fun b!1473073 () Bool)

(assert (=> b!1473073 (= e!826660 (seekKeyOrZeroReturnVacant!0 (x!132360 lt!643756) (index!50785 lt!643756) (index!50785 lt!643756) lt!643678 lt!643677 mask!2687))))

(declare-fun b!1473074 () Bool)

(assert (=> b!1473074 (= e!826661 Undefined!12098)))

(declare-fun b!1473069 () Bool)

(declare-fun c!135727 () Bool)

(assert (=> b!1473069 (= c!135727 (= lt!643754 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473069 (= e!826659 e!826660)))

(declare-fun d!155503 () Bool)

(declare-fun lt!643755 () SeekEntryResult!12098)

(assert (=> d!155503 (and (or (is-Undefined!12098 lt!643755) (not (is-Found!12098 lt!643755)) (and (bvsge (index!50784 lt!643755) #b00000000000000000000000000000000) (bvslt (index!50784 lt!643755) (size!48386 lt!643677)))) (or (is-Undefined!12098 lt!643755) (is-Found!12098 lt!643755) (not (is-MissingZero!12098 lt!643755)) (and (bvsge (index!50783 lt!643755) #b00000000000000000000000000000000) (bvslt (index!50783 lt!643755) (size!48386 lt!643677)))) (or (is-Undefined!12098 lt!643755) (is-Found!12098 lt!643755) (is-MissingZero!12098 lt!643755) (not (is-MissingVacant!12098 lt!643755)) (and (bvsge (index!50786 lt!643755) #b00000000000000000000000000000000) (bvslt (index!50786 lt!643755) (size!48386 lt!643677)))) (or (is-Undefined!12098 lt!643755) (ite (is-Found!12098 lt!643755) (= (select (arr!47835 lt!643677) (index!50784 lt!643755)) lt!643678) (ite (is-MissingZero!12098 lt!643755) (= (select (arr!47835 lt!643677) (index!50783 lt!643755)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12098 lt!643755) (= (select (arr!47835 lt!643677) (index!50786 lt!643755)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155503 (= lt!643755 e!826661)))

(declare-fun c!135728 () Bool)

(assert (=> d!155503 (= c!135728 (and (is-Intermediate!12098 lt!643756) (undefined!12910 lt!643756)))))

(assert (=> d!155503 (= lt!643756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643678 mask!2687) lt!643678 lt!643677 mask!2687))))

(assert (=> d!155503 (validMask!0 mask!2687)))

(assert (=> d!155503 (= (seekEntryOrOpen!0 lt!643678 lt!643677 mask!2687) lt!643755)))

(assert (= (and d!155503 c!135728) b!1473074))

(assert (= (and d!155503 (not c!135728)) b!1473071))

(assert (= (and b!1473071 c!135729) b!1473070))

(assert (= (and b!1473071 (not c!135729)) b!1473069))

(assert (= (and b!1473069 c!135727) b!1473072))

(assert (= (and b!1473069 (not c!135727)) b!1473073))

(declare-fun m!1359759 () Bool)

(assert (=> b!1473071 m!1359759))

(declare-fun m!1359761 () Bool)

(assert (=> b!1473073 m!1359761))

(declare-fun m!1359763 () Bool)

(assert (=> d!155503 m!1359763))

(declare-fun m!1359765 () Bool)

(assert (=> d!155503 m!1359765))

(declare-fun m!1359767 () Bool)

(assert (=> d!155503 m!1359767))

(assert (=> d!155503 m!1359625))

(assert (=> d!155503 m!1359661))

(assert (=> d!155503 m!1359625))

(assert (=> d!155503 m!1359627))

(assert (=> b!1472896 d!155503))

(declare-fun b!1473132 () Bool)

(declare-fun e!826694 () SeekEntryResult!12098)

(assert (=> b!1473132 (= e!826694 (Found!12098 index!646))))

(declare-fun b!1473133 () Bool)

(declare-fun e!826693 () SeekEntryResult!12098)

(assert (=> b!1473133 (= e!826693 (MissingVacant!12098 intermediateAfterIndex!19))))

(declare-fun b!1473134 () Bool)

(declare-fun e!826692 () SeekEntryResult!12098)

(assert (=> b!1473134 (= e!826692 e!826694)))

(declare-fun c!135755 () Bool)

(declare-fun lt!643779 () (_ BitVec 64))

(assert (=> b!1473134 (= c!135755 (= lt!643779 lt!643678))))

(declare-fun b!1473135 () Bool)

(declare-fun c!135754 () Bool)

(assert (=> b!1473135 (= c!135754 (= lt!643779 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473135 (= e!826694 e!826693)))

(declare-fun lt!643778 () SeekEntryResult!12098)

(declare-fun d!155511 () Bool)

(assert (=> d!155511 (and (or (is-Undefined!12098 lt!643778) (not (is-Found!12098 lt!643778)) (and (bvsge (index!50784 lt!643778) #b00000000000000000000000000000000) (bvslt (index!50784 lt!643778) (size!48386 lt!643677)))) (or (is-Undefined!12098 lt!643778) (is-Found!12098 lt!643778) (not (is-MissingVacant!12098 lt!643778)) (not (= (index!50786 lt!643778) intermediateAfterIndex!19)) (and (bvsge (index!50786 lt!643778) #b00000000000000000000000000000000) (bvslt (index!50786 lt!643778) (size!48386 lt!643677)))) (or (is-Undefined!12098 lt!643778) (ite (is-Found!12098 lt!643778) (= (select (arr!47835 lt!643677) (index!50784 lt!643778)) lt!643678) (and (is-MissingVacant!12098 lt!643778) (= (index!50786 lt!643778) intermediateAfterIndex!19) (= (select (arr!47835 lt!643677) (index!50786 lt!643778)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155511 (= lt!643778 e!826692)))

(declare-fun c!135756 () Bool)

(assert (=> d!155511 (= c!135756 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155511 (= lt!643779 (select (arr!47835 lt!643677) index!646))))

(assert (=> d!155511 (validMask!0 mask!2687)))

(assert (=> d!155511 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643678 lt!643677 mask!2687) lt!643778)))

(declare-fun b!1473136 () Bool)

(assert (=> b!1473136 (= e!826692 Undefined!12098)))

(declare-fun b!1473137 () Bool)

(assert (=> b!1473137 (= e!826693 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643678 lt!643677 mask!2687))))

(assert (= (and d!155511 c!135756) b!1473136))

(assert (= (and d!155511 (not c!135756)) b!1473134))

(assert (= (and b!1473134 c!135755) b!1473132))

(assert (= (and b!1473134 (not c!135755)) b!1473135))

(assert (= (and b!1473135 c!135754) b!1473133))

(assert (= (and b!1473135 (not c!135754)) b!1473137))

(declare-fun m!1359795 () Bool)

(assert (=> d!155511 m!1359795))

(declare-fun m!1359797 () Bool)

(assert (=> d!155511 m!1359797))

(declare-fun m!1359799 () Bool)

(assert (=> d!155511 m!1359799))

(assert (=> d!155511 m!1359661))

(assert (=> b!1473137 m!1359737))

(assert (=> b!1473137 m!1359737))

(declare-fun m!1359801 () Bool)

(assert (=> b!1473137 m!1359801))

(assert (=> b!1472885 d!155511))

(assert (=> b!1472885 d!155503))

(declare-fun d!155527 () Bool)

(assert (=> d!155527 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125858 d!155527))

(declare-fun d!155531 () Bool)

(assert (=> d!155531 (= (array_inv!36780 a!2862) (bvsge (size!48386 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125858 d!155531))

(declare-fun b!1473175 () Bool)

(declare-fun e!826719 () Bool)

(declare-fun contains!9914 (List!34516 (_ BitVec 64)) Bool)

(assert (=> b!1473175 (= e!826719 (contains!9914 Nil!34513 (select (arr!47835 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1473176 () Bool)

(declare-fun e!826718 () Bool)

(declare-fun e!826720 () Bool)

(assert (=> b!1473176 (= e!826718 e!826720)))

(declare-fun c!135768 () Bool)

(assert (=> b!1473176 (= c!135768 (validKeyInArray!0 (select (arr!47835 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1473177 () Bool)

(declare-fun call!67750 () Bool)

(assert (=> b!1473177 (= e!826720 call!67750)))

(declare-fun b!1473178 () Bool)

(assert (=> b!1473178 (= e!826720 call!67750)))

(declare-fun bm!67747 () Bool)

(assert (=> bm!67747 (= call!67750 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135768 (Cons!34512 (select (arr!47835 a!2862) #b00000000000000000000000000000000) Nil!34513) Nil!34513)))))

(declare-fun b!1473179 () Bool)

(declare-fun e!826721 () Bool)

(assert (=> b!1473179 (= e!826721 e!826718)))

(declare-fun res!1000673 () Bool)

(assert (=> b!1473179 (=> (not res!1000673) (not e!826718))))

(assert (=> b!1473179 (= res!1000673 (not e!826719))))

(declare-fun res!1000674 () Bool)

(assert (=> b!1473179 (=> (not res!1000674) (not e!826719))))

(assert (=> b!1473179 (= res!1000674 (validKeyInArray!0 (select (arr!47835 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155533 () Bool)

(declare-fun res!1000672 () Bool)

(assert (=> d!155533 (=> res!1000672 e!826721)))

(assert (=> d!155533 (= res!1000672 (bvsge #b00000000000000000000000000000000 (size!48386 a!2862)))))

(assert (=> d!155533 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34513) e!826721)))

(assert (= (and d!155533 (not res!1000672)) b!1473179))

(assert (= (and b!1473179 res!1000674) b!1473175))

(assert (= (and b!1473179 res!1000673) b!1473176))

(assert (= (and b!1473176 c!135768) b!1473178))

(assert (= (and b!1473176 (not c!135768)) b!1473177))

(assert (= (or b!1473178 b!1473177) bm!67747))

(declare-fun m!1359807 () Bool)

(assert (=> b!1473175 m!1359807))

(assert (=> b!1473175 m!1359807))

(declare-fun m!1359809 () Bool)

(assert (=> b!1473175 m!1359809))

(assert (=> b!1473176 m!1359807))

(assert (=> b!1473176 m!1359807))

(declare-fun m!1359811 () Bool)

(assert (=> b!1473176 m!1359811))

(assert (=> bm!67747 m!1359807))

(declare-fun m!1359813 () Bool)

(assert (=> bm!67747 m!1359813))

(assert (=> b!1473179 m!1359807))

(assert (=> b!1473179 m!1359807))

(assert (=> b!1473179 m!1359811))

(assert (=> b!1472889 d!155533))

(declare-fun b!1473180 () Bool)

(declare-fun e!826723 () Bool)

(declare-fun lt!643786 () SeekEntryResult!12098)

(assert (=> b!1473180 (= e!826723 (bvsge (x!132360 lt!643786) #b01111111111111111111111111111110))))

(declare-fun b!1473181 () Bool)

(assert (=> b!1473181 (and (bvsge (index!50785 lt!643786) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643786) (size!48386 lt!643677)))))

(declare-fun res!1000676 () Bool)

(assert (=> b!1473181 (= res!1000676 (= (select (arr!47835 lt!643677) (index!50785 lt!643786)) lt!643678))))

(declare-fun e!826724 () Bool)

(assert (=> b!1473181 (=> res!1000676 e!826724)))

(declare-fun e!826722 () Bool)

(assert (=> b!1473181 (= e!826722 e!826724)))

(declare-fun d!155535 () Bool)

(assert (=> d!155535 e!826723))

(declare-fun c!135770 () Bool)

(assert (=> d!155535 (= c!135770 (and (is-Intermediate!12098 lt!643786) (undefined!12910 lt!643786)))))

(declare-fun e!826725 () SeekEntryResult!12098)

(assert (=> d!155535 (= lt!643786 e!826725)))

(declare-fun c!135771 () Bool)

(assert (=> d!155535 (= c!135771 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643787 () (_ BitVec 64))

(assert (=> d!155535 (= lt!643787 (select (arr!47835 lt!643677) index!646))))

(assert (=> d!155535 (validMask!0 mask!2687)))

(assert (=> d!155535 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643678 lt!643677 mask!2687) lt!643786)))

(declare-fun b!1473182 () Bool)

(declare-fun e!826726 () SeekEntryResult!12098)

(assert (=> b!1473182 (= e!826725 e!826726)))

(declare-fun c!135769 () Bool)

(assert (=> b!1473182 (= c!135769 (or (= lt!643787 lt!643678) (= (bvadd lt!643787 lt!643787) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473183 () Bool)

(assert (=> b!1473183 (and (bvsge (index!50785 lt!643786) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643786) (size!48386 lt!643677)))))

(assert (=> b!1473183 (= e!826724 (= (select (arr!47835 lt!643677) (index!50785 lt!643786)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473184 () Bool)

(assert (=> b!1473184 (= e!826726 (Intermediate!12098 false index!646 x!665))))

(declare-fun b!1473185 () Bool)

(assert (=> b!1473185 (and (bvsge (index!50785 lt!643786) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643786) (size!48386 lt!643677)))))

(declare-fun res!1000677 () Bool)

(assert (=> b!1473185 (= res!1000677 (= (select (arr!47835 lt!643677) (index!50785 lt!643786)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473185 (=> res!1000677 e!826724)))

(declare-fun b!1473186 () Bool)

(assert (=> b!1473186 (= e!826725 (Intermediate!12098 true index!646 x!665))))

(declare-fun b!1473187 () Bool)

(assert (=> b!1473187 (= e!826726 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!643678 lt!643677 mask!2687))))

(declare-fun b!1473188 () Bool)

(assert (=> b!1473188 (= e!826723 e!826722)))

(declare-fun res!1000675 () Bool)

(assert (=> b!1473188 (= res!1000675 (and (is-Intermediate!12098 lt!643786) (not (undefined!12910 lt!643786)) (bvslt (x!132360 lt!643786) #b01111111111111111111111111111110) (bvsge (x!132360 lt!643786) #b00000000000000000000000000000000) (bvsge (x!132360 lt!643786) x!665)))))

(assert (=> b!1473188 (=> (not res!1000675) (not e!826722))))

(assert (= (and d!155535 c!135771) b!1473186))

(assert (= (and d!155535 (not c!135771)) b!1473182))

(assert (= (and b!1473182 c!135769) b!1473184))

(assert (= (and b!1473182 (not c!135769)) b!1473187))

(assert (= (and d!155535 c!135770) b!1473180))

(assert (= (and d!155535 (not c!135770)) b!1473188))

(assert (= (and b!1473188 res!1000675) b!1473181))

(assert (= (and b!1473181 (not res!1000676)) b!1473185))

(assert (= (and b!1473185 (not res!1000677)) b!1473183))

(declare-fun m!1359815 () Bool)

(assert (=> b!1473183 m!1359815))

(assert (=> b!1473185 m!1359815))

(assert (=> b!1473187 m!1359737))

(assert (=> b!1473187 m!1359737))

(declare-fun m!1359817 () Bool)

(assert (=> b!1473187 m!1359817))

(assert (=> d!155535 m!1359799))

(assert (=> d!155535 m!1359661))

(assert (=> b!1473181 m!1359815))

(assert (=> b!1472888 d!155535))

(declare-fun b!1473190 () Bool)

(declare-fun e!826727 () SeekEntryResult!12098)

(declare-fun lt!643790 () SeekEntryResult!12098)

(assert (=> b!1473190 (= e!826727 (Found!12098 (index!50785 lt!643790)))))

(declare-fun b!1473191 () Bool)

(declare-fun e!826729 () SeekEntryResult!12098)

(assert (=> b!1473191 (= e!826729 e!826727)))

(declare-fun lt!643788 () (_ BitVec 64))

(assert (=> b!1473191 (= lt!643788 (select (arr!47835 a!2862) (index!50785 lt!643790)))))

(declare-fun c!135774 () Bool)

(assert (=> b!1473191 (= c!135774 (= lt!643788 (select (arr!47835 a!2862) j!93)))))

(declare-fun b!1473192 () Bool)

(declare-fun e!826728 () SeekEntryResult!12098)

(assert (=> b!1473192 (= e!826728 (MissingZero!12098 (index!50785 lt!643790)))))

(declare-fun b!1473193 () Bool)

(assert (=> b!1473193 (= e!826728 (seekKeyOrZeroReturnVacant!0 (x!132360 lt!643790) (index!50785 lt!643790) (index!50785 lt!643790) (select (arr!47835 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473194 () Bool)

(assert (=> b!1473194 (= e!826729 Undefined!12098)))

(declare-fun b!1473189 () Bool)

(declare-fun c!135772 () Bool)

(assert (=> b!1473189 (= c!135772 (= lt!643788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473189 (= e!826727 e!826728)))

(declare-fun d!155537 () Bool)

(declare-fun lt!643789 () SeekEntryResult!12098)

(assert (=> d!155537 (and (or (is-Undefined!12098 lt!643789) (not (is-Found!12098 lt!643789)) (and (bvsge (index!50784 lt!643789) #b00000000000000000000000000000000) (bvslt (index!50784 lt!643789) (size!48386 a!2862)))) (or (is-Undefined!12098 lt!643789) (is-Found!12098 lt!643789) (not (is-MissingZero!12098 lt!643789)) (and (bvsge (index!50783 lt!643789) #b00000000000000000000000000000000) (bvslt (index!50783 lt!643789) (size!48386 a!2862)))) (or (is-Undefined!12098 lt!643789) (is-Found!12098 lt!643789) (is-MissingZero!12098 lt!643789) (not (is-MissingVacant!12098 lt!643789)) (and (bvsge (index!50786 lt!643789) #b00000000000000000000000000000000) (bvslt (index!50786 lt!643789) (size!48386 a!2862)))) (or (is-Undefined!12098 lt!643789) (ite (is-Found!12098 lt!643789) (= (select (arr!47835 a!2862) (index!50784 lt!643789)) (select (arr!47835 a!2862) j!93)) (ite (is-MissingZero!12098 lt!643789) (= (select (arr!47835 a!2862) (index!50783 lt!643789)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12098 lt!643789) (= (select (arr!47835 a!2862) (index!50786 lt!643789)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155537 (= lt!643789 e!826729)))

(declare-fun c!135773 () Bool)

(assert (=> d!155537 (= c!135773 (and (is-Intermediate!12098 lt!643790) (undefined!12910 lt!643790)))))

(assert (=> d!155537 (= lt!643790 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) (select (arr!47835 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155537 (validMask!0 mask!2687)))

(assert (=> d!155537 (= (seekEntryOrOpen!0 (select (arr!47835 a!2862) j!93) a!2862 mask!2687) lt!643789)))

(assert (= (and d!155537 c!135773) b!1473194))

(assert (= (and d!155537 (not c!135773)) b!1473191))

(assert (= (and b!1473191 c!135774) b!1473190))

(assert (= (and b!1473191 (not c!135774)) b!1473189))

(assert (= (and b!1473189 c!135772) b!1473192))

(assert (= (and b!1473189 (not c!135772)) b!1473193))

(declare-fun m!1359819 () Bool)

(assert (=> b!1473191 m!1359819))

(assert (=> b!1473193 m!1359639))

(declare-fun m!1359821 () Bool)

(assert (=> b!1473193 m!1359821))

(declare-fun m!1359823 () Bool)

(assert (=> d!155537 m!1359823))

(declare-fun m!1359825 () Bool)

(assert (=> d!155537 m!1359825))

(declare-fun m!1359827 () Bool)

(assert (=> d!155537 m!1359827))

(assert (=> d!155537 m!1359639))

(assert (=> d!155537 m!1359665))

(assert (=> d!155537 m!1359661))

(assert (=> d!155537 m!1359665))

(assert (=> d!155537 m!1359639))

(assert (=> d!155537 m!1359667))

(assert (=> b!1472898 d!155537))

(declare-fun b!1473221 () Bool)

(declare-fun e!826748 () Bool)

(declare-fun e!826747 () Bool)

(assert (=> b!1473221 (= e!826748 e!826747)))

(declare-fun lt!643807 () (_ BitVec 64))

(assert (=> b!1473221 (= lt!643807 (select (arr!47835 a!2862) j!93))))

(declare-fun lt!643808 () Unit!49484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99109 (_ BitVec 64) (_ BitVec 32)) Unit!49484)

(assert (=> b!1473221 (= lt!643808 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643807 j!93))))

(declare-fun arrayContainsKey!0 (array!99109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1473221 (arrayContainsKey!0 a!2862 lt!643807 #b00000000000000000000000000000000)))

(declare-fun lt!643809 () Unit!49484)

(assert (=> b!1473221 (= lt!643809 lt!643808)))

(declare-fun res!1000690 () Bool)

(assert (=> b!1473221 (= res!1000690 (= (seekEntryOrOpen!0 (select (arr!47835 a!2862) j!93) a!2862 mask!2687) (Found!12098 j!93)))))

(assert (=> b!1473221 (=> (not res!1000690) (not e!826747))))

(declare-fun bm!67750 () Bool)

(declare-fun call!67753 () Bool)

(assert (=> bm!67750 (= call!67753 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155541 () Bool)

(declare-fun res!1000689 () Bool)

(declare-fun e!826746 () Bool)

(assert (=> d!155541 (=> res!1000689 e!826746)))

(assert (=> d!155541 (= res!1000689 (bvsge j!93 (size!48386 a!2862)))))

(assert (=> d!155541 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!826746)))

(declare-fun b!1473222 () Bool)

(assert (=> b!1473222 (= e!826746 e!826748)))

(declare-fun c!135783 () Bool)

(assert (=> b!1473222 (= c!135783 (validKeyInArray!0 (select (arr!47835 a!2862) j!93)))))

(declare-fun b!1473223 () Bool)

(assert (=> b!1473223 (= e!826747 call!67753)))

(declare-fun b!1473224 () Bool)

(assert (=> b!1473224 (= e!826748 call!67753)))

(assert (= (and d!155541 (not res!1000689)) b!1473222))

(assert (= (and b!1473222 c!135783) b!1473221))

(assert (= (and b!1473222 (not c!135783)) b!1473224))

(assert (= (and b!1473221 res!1000690) b!1473223))

(assert (= (or b!1473223 b!1473224) bm!67750))

(assert (=> b!1473221 m!1359639))

(declare-fun m!1359841 () Bool)

(assert (=> b!1473221 m!1359841))

(declare-fun m!1359843 () Bool)

(assert (=> b!1473221 m!1359843))

(assert (=> b!1473221 m!1359639))

(assert (=> b!1473221 m!1359653))

(declare-fun m!1359845 () Bool)

(assert (=> bm!67750 m!1359845))

(assert (=> b!1473222 m!1359639))

(assert (=> b!1473222 m!1359639))

(assert (=> b!1473222 m!1359641))

(assert (=> b!1472898 d!155541))

(declare-fun d!155555 () Bool)

(assert (=> d!155555 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643822 () Unit!49484)

(declare-fun choose!38 (array!99109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49484)

(assert (=> d!155555 (= lt!643822 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155555 (validMask!0 mask!2687)))

(assert (=> d!155555 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643822)))

(declare-fun bs!42534 () Bool)

(assert (= bs!42534 d!155555))

(assert (=> bs!42534 m!1359655))

(declare-fun m!1359871 () Bool)

(assert (=> bs!42534 m!1359871))

(assert (=> bs!42534 m!1359661))

(assert (=> b!1472898 d!155555))

(declare-fun b!1473244 () Bool)

(declare-fun e!826761 () Bool)

(declare-fun lt!643823 () SeekEntryResult!12098)

(assert (=> b!1473244 (= e!826761 (bvsge (x!132360 lt!643823) #b01111111111111111111111111111110))))

(declare-fun b!1473245 () Bool)

(assert (=> b!1473245 (and (bvsge (index!50785 lt!643823) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643823) (size!48386 a!2862)))))

(declare-fun res!1000697 () Bool)

(assert (=> b!1473245 (= res!1000697 (= (select (arr!47835 a!2862) (index!50785 lt!643823)) (select (arr!47835 a!2862) j!93)))))

(declare-fun e!826762 () Bool)

(assert (=> b!1473245 (=> res!1000697 e!826762)))

(declare-fun e!826760 () Bool)

(assert (=> b!1473245 (= e!826760 e!826762)))

(declare-fun d!155565 () Bool)

(assert (=> d!155565 e!826761))

(declare-fun c!135792 () Bool)

(assert (=> d!155565 (= c!135792 (and (is-Intermediate!12098 lt!643823) (undefined!12910 lt!643823)))))

(declare-fun e!826763 () SeekEntryResult!12098)

(assert (=> d!155565 (= lt!643823 e!826763)))

(declare-fun c!135793 () Bool)

(assert (=> d!155565 (= c!135793 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!643824 () (_ BitVec 64))

(assert (=> d!155565 (= lt!643824 (select (arr!47835 a!2862) (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687)))))

(assert (=> d!155565 (validMask!0 mask!2687)))

(assert (=> d!155565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) (select (arr!47835 a!2862) j!93) a!2862 mask!2687) lt!643823)))

(declare-fun b!1473246 () Bool)

(declare-fun e!826764 () SeekEntryResult!12098)

(assert (=> b!1473246 (= e!826763 e!826764)))

(declare-fun c!135791 () Bool)

(assert (=> b!1473246 (= c!135791 (or (= lt!643824 (select (arr!47835 a!2862) j!93)) (= (bvadd lt!643824 lt!643824) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1473247 () Bool)

(assert (=> b!1473247 (and (bvsge (index!50785 lt!643823) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643823) (size!48386 a!2862)))))

(assert (=> b!1473247 (= e!826762 (= (select (arr!47835 a!2862) (index!50785 lt!643823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1473248 () Bool)

(assert (=> b!1473248 (= e!826764 (Intermediate!12098 false (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473249 () Bool)

(assert (=> b!1473249 (and (bvsge (index!50785 lt!643823) #b00000000000000000000000000000000) (bvslt (index!50785 lt!643823) (size!48386 a!2862)))))

(declare-fun res!1000698 () Bool)

(assert (=> b!1473249 (= res!1000698 (= (select (arr!47835 a!2862) (index!50785 lt!643823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473249 (=> res!1000698 e!826762)))

(declare-fun b!1473250 () Bool)

(assert (=> b!1473250 (= e!826763 (Intermediate!12098 true (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1473251 () Bool)

(assert (=> b!1473251 (= e!826764 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47835 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1473252 () Bool)

(assert (=> b!1473252 (= e!826761 e!826760)))

(declare-fun res!1000696 () Bool)

(assert (=> b!1473252 (= res!1000696 (and (is-Intermediate!12098 lt!643823) (not (undefined!12910 lt!643823)) (bvslt (x!132360 lt!643823) #b01111111111111111111111111111110) (bvsge (x!132360 lt!643823) #b00000000000000000000000000000000) (bvsge (x!132360 lt!643823) #b00000000000000000000000000000000)))))

(assert (=> b!1473252 (=> (not res!1000696) (not e!826760))))

(assert (= (and d!155565 c!135793) b!1473250))

(assert (= (and d!155565 (not c!135793)) b!1473246))

(assert (= (and b!1473246 c!135791) b!1473248))

(assert (= (and b!1473246 (not c!135791)) b!1473251))

(assert (= (and d!155565 c!135792) b!1473244))

(assert (= (and d!155565 (not c!135792)) b!1473252))

(assert (= (and b!1473252 res!1000696) b!1473245))

(assert (= (and b!1473245 (not res!1000697)) b!1473249))

(assert (= (and b!1473249 (not res!1000698)) b!1473247))

(declare-fun m!1359873 () Bool)

(assert (=> b!1473247 m!1359873))

(assert (=> b!1473249 m!1359873))

(assert (=> b!1473251 m!1359665))

(declare-fun m!1359875 () Bool)

(assert (=> b!1473251 m!1359875))

(assert (=> b!1473251 m!1359875))

(assert (=> b!1473251 m!1359639))

(declare-fun m!1359877 () Bool)

(assert (=> b!1473251 m!1359877))

(assert (=> d!155565 m!1359665))

(declare-fun m!1359879 () Bool)

(assert (=> d!155565 m!1359879))

(assert (=> d!155565 m!1359661))

(assert (=> b!1473245 m!1359873))

(assert (=> b!1472887 d!155565))

(declare-fun d!155567 () Bool)

(declare-fun lt!643833 () (_ BitVec 32))

(declare-fun lt!643832 () (_ BitVec 32))

(assert (=> d!155567 (= lt!643833 (bvmul (bvxor lt!643832 (bvlshr lt!643832 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155567 (= lt!643832 ((_ extract 31 0) (bvand (bvxor (select (arr!47835 a!2862) j!93) (bvlshr (select (arr!47835 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155567 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1000699 (let ((h!35871 ((_ extract 31 0) (bvand (bvxor (select (arr!47835 a!2862) j!93) (bvlshr (select (arr!47835 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132369 (bvmul (bvxor h!35871 (bvlshr h!35871 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132369 (bvlshr x!132369 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1000699 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1000699 #b00000000000000000000000000000000))))))

(assert (=> d!155567 (= (toIndex!0 (select (arr!47835 a!2862) j!93) mask!2687) (bvand (bvxor lt!643833 (bvlshr lt!643833 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1472887 d!155567))

(declare-fun b!1473263 () Bool)

(declare-fun e!826775 () Bool)

(declare-fun e!826774 () Bool)

(assert (=> b!1473263 (= e!826775 e!826774)))

(declare-fun lt!643834 () (_ BitVec 64))

(assert (=> b!1473263 (= lt!643834 (select (arr!47835 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!643835 () Unit!49484)

(assert (=> b!1473263 (= lt!643835 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643834 #b00000000000000000000000000000000))))

(assert (=> b!1473263 (arrayContainsKey!0 a!2862 lt!643834 #b00000000000000000000000000000000)))

(declare-fun lt!643836 () Unit!49484)

(assert (=> b!1473263 (= lt!643836 lt!643835)))

(declare-fun res!1000707 () Bool)

(assert (=> b!1473263 (= res!1000707 (= (seekEntryOrOpen!0 (select (arr!47835 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12098 #b00000000000000000000000000000000)))))

(assert (=> b!1473263 (=> (not res!1000707) (not e!826774))))

(declare-fun bm!67752 () Bool)

(declare-fun call!67755 () Bool)

(assert (=> bm!67752 (= call!67755 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155571 () Bool)

(declare-fun res!1000706 () Bool)

(declare-fun e!826773 () Bool)

(assert (=> d!155571 (=> res!1000706 e!826773)))

(assert (=> d!155571 (= res!1000706 (bvsge #b00000000000000000000000000000000 (size!48386 a!2862)))))

(assert (=> d!155571 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!826773)))

(declare-fun b!1473264 () Bool)

(assert (=> b!1473264 (= e!826773 e!826775)))

(declare-fun c!135796 () Bool)

(assert (=> b!1473264 (= c!135796 (validKeyInArray!0 (select (arr!47835 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1473265 () Bool)

(assert (=> b!1473265 (= e!826774 call!67755)))

(declare-fun b!1473266 () Bool)

(assert (=> b!1473266 (= e!826775 call!67755)))

(assert (= (and d!155571 (not res!1000706)) b!1473264))

(assert (= (and b!1473264 c!135796) b!1473263))

(assert (= (and b!1473264 (not c!135796)) b!1473266))

(assert (= (and b!1473263 res!1000707) b!1473265))

(assert (= (or b!1473265 b!1473266) bm!67752))

(assert (=> b!1473263 m!1359807))

(declare-fun m!1359883 () Bool)

(assert (=> b!1473263 m!1359883))

(declare-fun m!1359885 () Bool)

(assert (=> b!1473263 m!1359885))

(assert (=> b!1473263 m!1359807))

(declare-fun m!1359887 () Bool)

(assert (=> b!1473263 m!1359887))

(declare-fun m!1359889 () Bool)

(assert (=> bm!67752 m!1359889))

(assert (=> b!1473264 m!1359807))

(assert (=> b!1473264 m!1359807))

(assert (=> b!1473264 m!1359811))

(assert (=> b!1472892 d!155571))

(declare-fun d!155573 () Bool)

(assert (=> d!155573 (= (validKeyInArray!0 (select (arr!47835 a!2862) j!93)) (and (not (= (select (arr!47835 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47835 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1472891 d!155573))

(declare-fun 