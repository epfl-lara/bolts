; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127060 () Bool)

(assert start!127060)

(declare-fun b!1492811 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!650745 () (_ BitVec 64))

(declare-fun e!836311 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!99687 0))(
  ( (array!99688 (arr!48109 (Array (_ BitVec 32) (_ BitVec 64))) (size!48660 (_ BitVec 32))) )
))
(declare-fun lt!650743 () array!99687)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12372 0))(
  ( (MissingZero!12372 (index!51879 (_ BitVec 32))) (Found!12372 (index!51880 (_ BitVec 32))) (Intermediate!12372 (undefined!13184 Bool) (index!51881 (_ BitVec 32)) (x!133475 (_ BitVec 32))) (Undefined!12372) (MissingVacant!12372 (index!51882 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99687 (_ BitVec 32)) SeekEntryResult!12372)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99687 (_ BitVec 32)) SeekEntryResult!12372)

(assert (=> b!1492811 (= e!836311 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650745 lt!650743 mask!2687) (seekEntryOrOpen!0 lt!650745 lt!650743 mask!2687)))))

(declare-fun b!1492812 () Bool)

(declare-fun res!1015705 () Bool)

(declare-fun e!836314 () Bool)

(assert (=> b!1492812 (=> (not res!1015705) (not e!836314))))

(declare-fun a!2862 () array!99687)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492812 (= res!1015705 (validKeyInArray!0 (select (arr!48109 a!2862) j!93)))))

(declare-fun b!1492813 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!836315 () Bool)

(assert (=> b!1492813 (= e!836315 (or (= (select (arr!48109 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48109 a!2862) intermediateBeforeIndex!19) (select (arr!48109 a!2862) j!93))))))

(declare-fun b!1492814 () Bool)

(declare-fun e!836313 () Bool)

(assert (=> b!1492814 (= e!836314 e!836313)))

(declare-fun res!1015699 () Bool)

(assert (=> b!1492814 (=> (not res!1015699) (not e!836313))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1492814 (= res!1015699 (= (select (store (arr!48109 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492814 (= lt!650743 (array!99688 (store (arr!48109 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48660 a!2862)))))

(declare-fun b!1492815 () Bool)

(declare-fun res!1015703 () Bool)

(assert (=> b!1492815 (=> (not res!1015703) (not e!836314))))

(declare-datatypes ((List!34790 0))(
  ( (Nil!34787) (Cons!34786 (h!36172 (_ BitVec 64)) (t!49491 List!34790)) )
))
(declare-fun arrayNoDuplicates!0 (array!99687 (_ BitVec 32) List!34790) Bool)

(assert (=> b!1492815 (= res!1015703 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34787))))

(declare-fun b!1492816 () Bool)

(declare-fun res!1015696 () Bool)

(assert (=> b!1492816 (=> (not res!1015696) (not e!836314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99687 (_ BitVec 32)) Bool)

(assert (=> b!1492816 (= res!1015696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492817 () Bool)

(declare-fun res!1015704 () Bool)

(assert (=> b!1492817 (=> (not res!1015704) (not e!836315))))

(assert (=> b!1492817 (= res!1015704 (= (seekEntryOrOpen!0 (select (arr!48109 a!2862) j!93) a!2862 mask!2687) (Found!12372 j!93)))))

(declare-fun b!1492818 () Bool)

(declare-fun res!1015698 () Bool)

(assert (=> b!1492818 (=> (not res!1015698) (not e!836314))))

(assert (=> b!1492818 (= res!1015698 (validKeyInArray!0 (select (arr!48109 a!2862) i!1006)))))

(declare-fun lt!650744 () SeekEntryResult!12372)

(declare-fun b!1492819 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99687 (_ BitVec 32)) SeekEntryResult!12372)

(assert (=> b!1492819 (= e!836311 (= lt!650744 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650745 lt!650743 mask!2687)))))

(declare-fun b!1492820 () Bool)

(declare-fun e!836312 () Bool)

(declare-fun e!836316 () Bool)

(assert (=> b!1492820 (= e!836312 (not e!836316))))

(declare-fun res!1015702 () Bool)

(assert (=> b!1492820 (=> res!1015702 e!836316)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492820 (= res!1015702 (or (and (= (select (arr!48109 a!2862) index!646) (select (store (arr!48109 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48109 a!2862) index!646) (select (arr!48109 a!2862) j!93))) (= (select (arr!48109 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492820 e!836315))

(declare-fun res!1015697 () Bool)

(assert (=> b!1492820 (=> (not res!1015697) (not e!836315))))

(assert (=> b!1492820 (= res!1015697 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50032 0))(
  ( (Unit!50033) )
))
(declare-fun lt!650741 () Unit!50032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50032)

(assert (=> b!1492820 (= lt!650741 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492821 () Bool)

(declare-fun res!1015701 () Bool)

(assert (=> b!1492821 (=> (not res!1015701) (not e!836314))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492821 (= res!1015701 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48660 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48660 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48660 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492822 () Bool)

(declare-fun res!1015708 () Bool)

(assert (=> b!1492822 (=> (not res!1015708) (not e!836312))))

(assert (=> b!1492822 (= res!1015708 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1015710 () Bool)

(assert (=> start!127060 (=> (not res!1015710) (not e!836314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127060 (= res!1015710 (validMask!0 mask!2687))))

(assert (=> start!127060 e!836314))

(assert (=> start!127060 true))

(declare-fun array_inv!37054 (array!99687) Bool)

(assert (=> start!127060 (array_inv!37054 a!2862)))

(declare-fun b!1492823 () Bool)

(declare-fun res!1015706 () Bool)

(assert (=> b!1492823 (=> (not res!1015706) (not e!836312))))

(assert (=> b!1492823 (= res!1015706 e!836311)))

(declare-fun c!138089 () Bool)

(assert (=> b!1492823 (= c!138089 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!650742 () (_ BitVec 32))

(declare-fun b!1492824 () Bool)

(assert (=> b!1492824 (= e!836316 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!650742 #b00000000000000000000000000000000) (bvslt lt!650742 (size!48660 a!2862)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492824 (= lt!650742 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492825 () Bool)

(declare-fun res!1015709 () Bool)

(declare-fun e!836317 () Bool)

(assert (=> b!1492825 (=> (not res!1015709) (not e!836317))))

(declare-fun lt!650746 () SeekEntryResult!12372)

(assert (=> b!1492825 (= res!1015709 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48109 a!2862) j!93) a!2862 mask!2687) lt!650746))))

(declare-fun b!1492826 () Bool)

(assert (=> b!1492826 (= e!836313 e!836317)))

(declare-fun res!1015700 () Bool)

(assert (=> b!1492826 (=> (not res!1015700) (not e!836317))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492826 (= res!1015700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) (select (arr!48109 a!2862) j!93) a!2862 mask!2687) lt!650746))))

(assert (=> b!1492826 (= lt!650746 (Intermediate!12372 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492827 () Bool)

(assert (=> b!1492827 (= e!836317 e!836312)))

(declare-fun res!1015695 () Bool)

(assert (=> b!1492827 (=> (not res!1015695) (not e!836312))))

(assert (=> b!1492827 (= res!1015695 (= lt!650744 (Intermediate!12372 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492827 (= lt!650744 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650745 mask!2687) lt!650745 lt!650743 mask!2687))))

(assert (=> b!1492827 (= lt!650745 (select (store (arr!48109 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492828 () Bool)

(declare-fun res!1015707 () Bool)

(assert (=> b!1492828 (=> (not res!1015707) (not e!836314))))

(assert (=> b!1492828 (= res!1015707 (and (= (size!48660 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48660 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48660 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!127060 res!1015710) b!1492828))

(assert (= (and b!1492828 res!1015707) b!1492818))

(assert (= (and b!1492818 res!1015698) b!1492812))

(assert (= (and b!1492812 res!1015705) b!1492816))

(assert (= (and b!1492816 res!1015696) b!1492815))

(assert (= (and b!1492815 res!1015703) b!1492821))

(assert (= (and b!1492821 res!1015701) b!1492814))

(assert (= (and b!1492814 res!1015699) b!1492826))

(assert (= (and b!1492826 res!1015700) b!1492825))

(assert (= (and b!1492825 res!1015709) b!1492827))

(assert (= (and b!1492827 res!1015695) b!1492823))

(assert (= (and b!1492823 c!138089) b!1492819))

(assert (= (and b!1492823 (not c!138089)) b!1492811))

(assert (= (and b!1492823 res!1015706) b!1492822))

(assert (= (and b!1492822 res!1015708) b!1492820))

(assert (= (and b!1492820 res!1015697) b!1492817))

(assert (= (and b!1492817 res!1015704) b!1492813))

(assert (= (and b!1492820 (not res!1015702)) b!1492824))

(declare-fun m!1376805 () Bool)

(assert (=> b!1492827 m!1376805))

(assert (=> b!1492827 m!1376805))

(declare-fun m!1376807 () Bool)

(assert (=> b!1492827 m!1376807))

(declare-fun m!1376809 () Bool)

(assert (=> b!1492827 m!1376809))

(declare-fun m!1376811 () Bool)

(assert (=> b!1492827 m!1376811))

(declare-fun m!1376813 () Bool)

(assert (=> b!1492824 m!1376813))

(declare-fun m!1376815 () Bool)

(assert (=> b!1492812 m!1376815))

(assert (=> b!1492812 m!1376815))

(declare-fun m!1376817 () Bool)

(assert (=> b!1492812 m!1376817))

(assert (=> b!1492825 m!1376815))

(assert (=> b!1492825 m!1376815))

(declare-fun m!1376819 () Bool)

(assert (=> b!1492825 m!1376819))

(assert (=> b!1492814 m!1376809))

(declare-fun m!1376821 () Bool)

(assert (=> b!1492814 m!1376821))

(declare-fun m!1376823 () Bool)

(assert (=> start!127060 m!1376823))

(declare-fun m!1376825 () Bool)

(assert (=> start!127060 m!1376825))

(declare-fun m!1376827 () Bool)

(assert (=> b!1492813 m!1376827))

(assert (=> b!1492813 m!1376815))

(assert (=> b!1492826 m!1376815))

(assert (=> b!1492826 m!1376815))

(declare-fun m!1376829 () Bool)

(assert (=> b!1492826 m!1376829))

(assert (=> b!1492826 m!1376829))

(assert (=> b!1492826 m!1376815))

(declare-fun m!1376831 () Bool)

(assert (=> b!1492826 m!1376831))

(declare-fun m!1376833 () Bool)

(assert (=> b!1492816 m!1376833))

(declare-fun m!1376835 () Bool)

(assert (=> b!1492818 m!1376835))

(assert (=> b!1492818 m!1376835))

(declare-fun m!1376837 () Bool)

(assert (=> b!1492818 m!1376837))

(assert (=> b!1492817 m!1376815))

(assert (=> b!1492817 m!1376815))

(declare-fun m!1376839 () Bool)

(assert (=> b!1492817 m!1376839))

(declare-fun m!1376841 () Bool)

(assert (=> b!1492820 m!1376841))

(assert (=> b!1492820 m!1376809))

(declare-fun m!1376843 () Bool)

(assert (=> b!1492820 m!1376843))

(declare-fun m!1376845 () Bool)

(assert (=> b!1492820 m!1376845))

(declare-fun m!1376847 () Bool)

(assert (=> b!1492820 m!1376847))

(assert (=> b!1492820 m!1376815))

(declare-fun m!1376849 () Bool)

(assert (=> b!1492819 m!1376849))

(declare-fun m!1376851 () Bool)

(assert (=> b!1492815 m!1376851))

(declare-fun m!1376853 () Bool)

(assert (=> b!1492811 m!1376853))

(declare-fun m!1376855 () Bool)

(assert (=> b!1492811 m!1376855))

(push 1)

(assert (not b!1492812))

(assert (not b!1492820))

(assert (not b!1492815))

(assert (not b!1492811))

(assert (not b!1492826))

(assert (not b!1492819))

(assert (not b!1492818))

(assert (not b!1492827))

(assert (not b!1492816))

(assert (not b!1492824))

(assert (not start!127060))

(assert (not b!1492817))

(assert (not b!1492825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!156885 () Bool)

(declare-fun lt!650812 () (_ BitVec 32))

(assert (=> d!156885 (and (bvsge lt!650812 #b00000000000000000000000000000000) (bvslt lt!650812 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156885 (= lt!650812 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156885 (validMask!0 mask!2687)))

(assert (=> d!156885 (= (nextIndex!0 index!646 x!665 mask!2687) lt!650812)))

(declare-fun bs!42870 () Bool)

(assert (= bs!42870 d!156885))

(declare-fun m!1376987 () Bool)

(assert (=> bs!42870 m!1376987))

(assert (=> bs!42870 m!1376823))

(assert (=> b!1492824 d!156885))

(declare-fun d!156887 () Bool)

(assert (=> d!156887 (= (validKeyInArray!0 (select (arr!48109 a!2862) j!93)) (and (not (= (select (arr!48109 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48109 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492812 d!156887))

(declare-fun b!1493009 () Bool)

(declare-fun e!836407 () SeekEntryResult!12372)

(assert (=> b!1493009 (= e!836407 (MissingVacant!12372 intermediateAfterIndex!19))))

(declare-fun b!1493010 () Bool)

(declare-fun c!138129 () Bool)

(declare-fun lt!650827 () (_ BitVec 64))

(assert (=> b!1493010 (= c!138129 (= lt!650827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836408 () SeekEntryResult!12372)

(assert (=> b!1493010 (= e!836408 e!836407)))

(declare-fun b!1493011 () Bool)

(declare-fun e!836406 () SeekEntryResult!12372)

(assert (=> b!1493011 (= e!836406 e!836408)))

(declare-fun c!138130 () Bool)

(assert (=> b!1493011 (= c!138130 (= lt!650827 lt!650745))))

(declare-fun lt!650828 () SeekEntryResult!12372)

(declare-fun d!156891 () Bool)

(assert (=> d!156891 (and (or (is-Undefined!12372 lt!650828) (not (is-Found!12372 lt!650828)) (and (bvsge (index!51880 lt!650828) #b00000000000000000000000000000000) (bvslt (index!51880 lt!650828) (size!48660 lt!650743)))) (or (is-Undefined!12372 lt!650828) (is-Found!12372 lt!650828) (not (is-MissingVacant!12372 lt!650828)) (not (= (index!51882 lt!650828) intermediateAfterIndex!19)) (and (bvsge (index!51882 lt!650828) #b00000000000000000000000000000000) (bvslt (index!51882 lt!650828) (size!48660 lt!650743)))) (or (is-Undefined!12372 lt!650828) (ite (is-Found!12372 lt!650828) (= (select (arr!48109 lt!650743) (index!51880 lt!650828)) lt!650745) (and (is-MissingVacant!12372 lt!650828) (= (index!51882 lt!650828) intermediateAfterIndex!19) (= (select (arr!48109 lt!650743) (index!51882 lt!650828)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156891 (= lt!650828 e!836406)))

(declare-fun c!138131 () Bool)

(assert (=> d!156891 (= c!138131 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156891 (= lt!650827 (select (arr!48109 lt!650743) index!646))))

(assert (=> d!156891 (validMask!0 mask!2687)))

(assert (=> d!156891 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650745 lt!650743 mask!2687) lt!650828)))

(declare-fun b!1493012 () Bool)

(assert (=> b!1493012 (= e!836406 Undefined!12372)))

(declare-fun b!1493013 () Bool)

(assert (=> b!1493013 (= e!836407 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!650745 lt!650743 mask!2687))))

(declare-fun b!1493014 () Bool)

(assert (=> b!1493014 (= e!836408 (Found!12372 index!646))))

(assert (= (and d!156891 c!138131) b!1493012))

(assert (= (and d!156891 (not c!138131)) b!1493011))

(assert (= (and b!1493011 c!138130) b!1493014))

(assert (= (and b!1493011 (not c!138130)) b!1493010))

(assert (= (and b!1493010 c!138129) b!1493009))

(assert (= (and b!1493010 (not c!138129)) b!1493013))

(declare-fun m!1376993 () Bool)

(assert (=> d!156891 m!1376993))

(declare-fun m!1376995 () Bool)

(assert (=> d!156891 m!1376995))

(declare-fun m!1376997 () Bool)

(assert (=> d!156891 m!1376997))

(assert (=> d!156891 m!1376823))

(assert (=> b!1493013 m!1376813))

(assert (=> b!1493013 m!1376813))

(declare-fun m!1376999 () Bool)

(assert (=> b!1493013 m!1376999))

(assert (=> b!1492811 d!156891))

(declare-fun b!1493088 () Bool)

(declare-fun e!836451 () SeekEntryResult!12372)

(assert (=> b!1493088 (= e!836451 Undefined!12372)))

(declare-fun b!1493089 () Bool)

(declare-fun e!836450 () SeekEntryResult!12372)

(assert (=> b!1493089 (= e!836451 e!836450)))

(declare-fun lt!650859 () (_ BitVec 64))

(declare-fun lt!650860 () SeekEntryResult!12372)

(assert (=> b!1493089 (= lt!650859 (select (arr!48109 lt!650743) (index!51881 lt!650860)))))

(declare-fun c!138158 () Bool)

(assert (=> b!1493089 (= c!138158 (= lt!650859 lt!650745))))

(declare-fun b!1493090 () Bool)

(declare-fun e!836449 () SeekEntryResult!12372)

(assert (=> b!1493090 (= e!836449 (MissingZero!12372 (index!51881 lt!650860)))))

(declare-fun d!156897 () Bool)

(declare-fun lt!650861 () SeekEntryResult!12372)

(assert (=> d!156897 (and (or (is-Undefined!12372 lt!650861) (not (is-Found!12372 lt!650861)) (and (bvsge (index!51880 lt!650861) #b00000000000000000000000000000000) (bvslt (index!51880 lt!650861) (size!48660 lt!650743)))) (or (is-Undefined!12372 lt!650861) (is-Found!12372 lt!650861) (not (is-MissingZero!12372 lt!650861)) (and (bvsge (index!51879 lt!650861) #b00000000000000000000000000000000) (bvslt (index!51879 lt!650861) (size!48660 lt!650743)))) (or (is-Undefined!12372 lt!650861) (is-Found!12372 lt!650861) (is-MissingZero!12372 lt!650861) (not (is-MissingVacant!12372 lt!650861)) (and (bvsge (index!51882 lt!650861) #b00000000000000000000000000000000) (bvslt (index!51882 lt!650861) (size!48660 lt!650743)))) (or (is-Undefined!12372 lt!650861) (ite (is-Found!12372 lt!650861) (= (select (arr!48109 lt!650743) (index!51880 lt!650861)) lt!650745) (ite (is-MissingZero!12372 lt!650861) (= (select (arr!48109 lt!650743) (index!51879 lt!650861)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12372 lt!650861) (= (select (arr!48109 lt!650743) (index!51882 lt!650861)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156897 (= lt!650861 e!836451)))

(declare-fun c!138156 () Bool)

(assert (=> d!156897 (= c!138156 (and (is-Intermediate!12372 lt!650860) (undefined!13184 lt!650860)))))

(assert (=> d!156897 (= lt!650860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650745 mask!2687) lt!650745 lt!650743 mask!2687))))

(assert (=> d!156897 (validMask!0 mask!2687)))

(assert (=> d!156897 (= (seekEntryOrOpen!0 lt!650745 lt!650743 mask!2687) lt!650861)))

(declare-fun b!1493087 () Bool)

(assert (=> b!1493087 (= e!836450 (Found!12372 (index!51881 lt!650860)))))

(declare-fun b!1493091 () Bool)

(assert (=> b!1493091 (= e!836449 (seekKeyOrZeroReturnVacant!0 (x!133475 lt!650860) (index!51881 lt!650860) (index!51881 lt!650860) lt!650745 lt!650743 mask!2687))))

(declare-fun b!1493092 () Bool)

(declare-fun c!138157 () Bool)

(assert (=> b!1493092 (= c!138157 (= lt!650859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493092 (= e!836450 e!836449)))

(assert (= (and d!156897 c!138156) b!1493088))

(assert (= (and d!156897 (not c!138156)) b!1493089))

(assert (= (and b!1493089 c!138158) b!1493087))

(assert (= (and b!1493089 (not c!138158)) b!1493092))

(assert (= (and b!1493092 c!138157) b!1493090))

(assert (= (and b!1493092 (not c!138157)) b!1493091))

(declare-fun m!1377025 () Bool)

(assert (=> b!1493089 m!1377025))

(assert (=> d!156897 m!1376805))

(assert (=> d!156897 m!1376807))

(assert (=> d!156897 m!1376823))

(declare-fun m!1377027 () Bool)

(assert (=> d!156897 m!1377027))

(declare-fun m!1377029 () Bool)

(assert (=> d!156897 m!1377029))

(declare-fun m!1377031 () Bool)

(assert (=> d!156897 m!1377031))

(assert (=> d!156897 m!1376805))

(declare-fun m!1377033 () Bool)

(assert (=> b!1493091 m!1377033))

(assert (=> b!1492811 d!156897))

(declare-fun d!156913 () Bool)

(assert (=> d!156913 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127060 d!156913))

(declare-fun d!156929 () Bool)

(assert (=> d!156929 (= (array_inv!37054 a!2862) (bvsge (size!48660 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127060 d!156929))

(declare-fun bm!67963 () Bool)

(declare-fun call!67966 () Bool)

(assert (=> bm!67963 (= call!67966 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1493162 () Bool)

(declare-fun e!836496 () Bool)

(assert (=> b!1493162 (= e!836496 call!67966)))

(declare-fun d!156933 () Bool)

(declare-fun res!1015861 () Bool)

(declare-fun e!836497 () Bool)

(assert (=> d!156933 (=> res!1015861 e!836497)))

(assert (=> d!156933 (= res!1015861 (bvsge j!93 (size!48660 a!2862)))))

(assert (=> d!156933 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!836497)))

(declare-fun b!1493163 () Bool)

(assert (=> b!1493163 (= e!836497 e!836496)))

(declare-fun c!138183 () Bool)

(assert (=> b!1493163 (= c!138183 (validKeyInArray!0 (select (arr!48109 a!2862) j!93)))))

(declare-fun b!1493164 () Bool)

(declare-fun e!836495 () Bool)

(assert (=> b!1493164 (= e!836495 call!67966)))

(declare-fun b!1493165 () Bool)

(assert (=> b!1493165 (= e!836496 e!836495)))

(declare-fun lt!650886 () (_ BitVec 64))

(assert (=> b!1493165 (= lt!650886 (select (arr!48109 a!2862) j!93))))

(declare-fun lt!650888 () Unit!50032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99687 (_ BitVec 64) (_ BitVec 32)) Unit!50032)

(assert (=> b!1493165 (= lt!650888 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650886 j!93))))

(declare-fun arrayContainsKey!0 (array!99687 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1493165 (arrayContainsKey!0 a!2862 lt!650886 #b00000000000000000000000000000000)))

(declare-fun lt!650887 () Unit!50032)

(assert (=> b!1493165 (= lt!650887 lt!650888)))

(declare-fun res!1015860 () Bool)

(assert (=> b!1493165 (= res!1015860 (= (seekEntryOrOpen!0 (select (arr!48109 a!2862) j!93) a!2862 mask!2687) (Found!12372 j!93)))))

(assert (=> b!1493165 (=> (not res!1015860) (not e!836495))))

(assert (= (and d!156933 (not res!1015861)) b!1493163))

(assert (= (and b!1493163 c!138183) b!1493165))

(assert (= (and b!1493163 (not c!138183)) b!1493162))

(assert (= (and b!1493165 res!1015860) b!1493164))

(assert (= (or b!1493164 b!1493162) bm!67963))

(declare-fun m!1377079 () Bool)

(assert (=> bm!67963 m!1377079))

(assert (=> b!1493163 m!1376815))

(assert (=> b!1493163 m!1376815))

(assert (=> b!1493163 m!1376817))

(assert (=> b!1493165 m!1376815))

(declare-fun m!1377083 () Bool)

(assert (=> b!1493165 m!1377083))

(declare-fun m!1377085 () Bool)

(assert (=> b!1493165 m!1377085))

(assert (=> b!1493165 m!1376815))

(assert (=> b!1493165 m!1376839))

(assert (=> b!1492820 d!156933))

(declare-fun d!156939 () Bool)

(assert (=> d!156939 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!650891 () Unit!50032)

(declare-fun choose!38 (array!99687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50032)

(assert (=> d!156939 (= lt!650891 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156939 (validMask!0 mask!2687)))

(assert (=> d!156939 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!650891)))

(declare-fun bs!42873 () Bool)

(assert (= bs!42873 d!156939))

(assert (=> bs!42873 m!1376847))

(declare-fun m!1377087 () Bool)

(assert (=> bs!42873 m!1377087))

(assert (=> bs!42873 m!1376823))

(assert (=> b!1492820 d!156939))

(declare-fun b!1493202 () Bool)

(declare-fun e!836521 () SeekEntryResult!12372)

(declare-fun e!836520 () SeekEntryResult!12372)

(assert (=> b!1493202 (= e!836521 e!836520)))

(declare-fun c!138200 () Bool)

(declare-fun lt!650905 () (_ BitVec 64))

(assert (=> b!1493202 (= c!138200 (or (= lt!650905 lt!650745) (= (bvadd lt!650905 lt!650905) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493203 () Bool)

(declare-fun e!836518 () Bool)

(declare-fun lt!650906 () SeekEntryResult!12372)

(assert (=> b!1493203 (= e!836518 (bvsge (x!133475 lt!650906) #b01111111111111111111111111111110))))

(declare-fun b!1493204 () Bool)

(assert (=> b!1493204 (= e!836521 (Intermediate!12372 true index!646 x!665))))

(declare-fun d!156941 () Bool)

(assert (=> d!156941 e!836518))

(declare-fun c!138201 () Bool)

(assert (=> d!156941 (= c!138201 (and (is-Intermediate!12372 lt!650906) (undefined!13184 lt!650906)))))

(assert (=> d!156941 (= lt!650906 e!836521)))

(declare-fun c!138199 () Bool)

(assert (=> d!156941 (= c!138199 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156941 (= lt!650905 (select (arr!48109 lt!650743) index!646))))

(assert (=> d!156941 (validMask!0 mask!2687)))

(assert (=> d!156941 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650745 lt!650743 mask!2687) lt!650906)))

(declare-fun b!1493205 () Bool)

(declare-fun e!836519 () Bool)

(assert (=> b!1493205 (= e!836518 e!836519)))

(declare-fun res!1015868 () Bool)

(assert (=> b!1493205 (= res!1015868 (and (is-Intermediate!12372 lt!650906) (not (undefined!13184 lt!650906)) (bvslt (x!133475 lt!650906) #b01111111111111111111111111111110) (bvsge (x!133475 lt!650906) #b00000000000000000000000000000000) (bvsge (x!133475 lt!650906) x!665)))))

(assert (=> b!1493205 (=> (not res!1015868) (not e!836519))))

(declare-fun b!1493206 () Bool)

(assert (=> b!1493206 (and (bvsge (index!51881 lt!650906) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650906) (size!48660 lt!650743)))))

(declare-fun res!1015869 () Bool)

(assert (=> b!1493206 (= res!1015869 (= (select (arr!48109 lt!650743) (index!51881 lt!650906)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836517 () Bool)

(assert (=> b!1493206 (=> res!1015869 e!836517)))

(declare-fun b!1493207 () Bool)

(assert (=> b!1493207 (and (bvsge (index!51881 lt!650906) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650906) (size!48660 lt!650743)))))

(declare-fun res!1015870 () Bool)

(assert (=> b!1493207 (= res!1015870 (= (select (arr!48109 lt!650743) (index!51881 lt!650906)) lt!650745))))

(assert (=> b!1493207 (=> res!1015870 e!836517)))

(assert (=> b!1493207 (= e!836519 e!836517)))

(declare-fun b!1493208 () Bool)

(assert (=> b!1493208 (and (bvsge (index!51881 lt!650906) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650906) (size!48660 lt!650743)))))

(assert (=> b!1493208 (= e!836517 (= (select (arr!48109 lt!650743) (index!51881 lt!650906)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493209 () Bool)

(assert (=> b!1493209 (= e!836520 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!650745 lt!650743 mask!2687))))

(declare-fun b!1493210 () Bool)

(assert (=> b!1493210 (= e!836520 (Intermediate!12372 false index!646 x!665))))

(assert (= (and d!156941 c!138199) b!1493204))

(assert (= (and d!156941 (not c!138199)) b!1493202))

(assert (= (and b!1493202 c!138200) b!1493210))

(assert (= (and b!1493202 (not c!138200)) b!1493209))

(assert (= (and d!156941 c!138201) b!1493203))

(assert (= (and d!156941 (not c!138201)) b!1493205))

(assert (= (and b!1493205 res!1015868) b!1493207))

(assert (= (and b!1493207 (not res!1015870)) b!1493206))

(assert (= (and b!1493206 (not res!1015869)) b!1493208))

(declare-fun m!1377099 () Bool)

(assert (=> b!1493206 m!1377099))

(assert (=> b!1493209 m!1376813))

(assert (=> b!1493209 m!1376813))

(declare-fun m!1377101 () Bool)

(assert (=> b!1493209 m!1377101))

(assert (=> b!1493207 m!1377099))

(assert (=> d!156941 m!1376997))

(assert (=> d!156941 m!1376823))

(assert (=> b!1493208 m!1377099))

(assert (=> b!1492819 d!156941))

(declare-fun d!156945 () Bool)

(assert (=> d!156945 (= (validKeyInArray!0 (select (arr!48109 a!2862) i!1006)) (and (not (= (select (arr!48109 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48109 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492818 d!156945))

(declare-fun b!1493212 () Bool)

(declare-fun e!836524 () SeekEntryResult!12372)

(assert (=> b!1493212 (= e!836524 Undefined!12372)))

(declare-fun b!1493213 () Bool)

(declare-fun e!836523 () SeekEntryResult!12372)

(assert (=> b!1493213 (= e!836524 e!836523)))

(declare-fun lt!650907 () (_ BitVec 64))

(declare-fun lt!650908 () SeekEntryResult!12372)

(assert (=> b!1493213 (= lt!650907 (select (arr!48109 a!2862) (index!51881 lt!650908)))))

(declare-fun c!138204 () Bool)

(assert (=> b!1493213 (= c!138204 (= lt!650907 (select (arr!48109 a!2862) j!93)))))

(declare-fun b!1493214 () Bool)

(declare-fun e!836522 () SeekEntryResult!12372)

(assert (=> b!1493214 (= e!836522 (MissingZero!12372 (index!51881 lt!650908)))))

(declare-fun d!156947 () Bool)

(declare-fun lt!650909 () SeekEntryResult!12372)

(assert (=> d!156947 (and (or (is-Undefined!12372 lt!650909) (not (is-Found!12372 lt!650909)) (and (bvsge (index!51880 lt!650909) #b00000000000000000000000000000000) (bvslt (index!51880 lt!650909) (size!48660 a!2862)))) (or (is-Undefined!12372 lt!650909) (is-Found!12372 lt!650909) (not (is-MissingZero!12372 lt!650909)) (and (bvsge (index!51879 lt!650909) #b00000000000000000000000000000000) (bvslt (index!51879 lt!650909) (size!48660 a!2862)))) (or (is-Undefined!12372 lt!650909) (is-Found!12372 lt!650909) (is-MissingZero!12372 lt!650909) (not (is-MissingVacant!12372 lt!650909)) (and (bvsge (index!51882 lt!650909) #b00000000000000000000000000000000) (bvslt (index!51882 lt!650909) (size!48660 a!2862)))) (or (is-Undefined!12372 lt!650909) (ite (is-Found!12372 lt!650909) (= (select (arr!48109 a!2862) (index!51880 lt!650909)) (select (arr!48109 a!2862) j!93)) (ite (is-MissingZero!12372 lt!650909) (= (select (arr!48109 a!2862) (index!51879 lt!650909)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12372 lt!650909) (= (select (arr!48109 a!2862) (index!51882 lt!650909)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156947 (= lt!650909 e!836524)))

(declare-fun c!138202 () Bool)

(assert (=> d!156947 (= c!138202 (and (is-Intermediate!12372 lt!650908) (undefined!13184 lt!650908)))))

(assert (=> d!156947 (= lt!650908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) (select (arr!48109 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156947 (validMask!0 mask!2687)))

(assert (=> d!156947 (= (seekEntryOrOpen!0 (select (arr!48109 a!2862) j!93) a!2862 mask!2687) lt!650909)))

(declare-fun b!1493211 () Bool)

(assert (=> b!1493211 (= e!836523 (Found!12372 (index!51881 lt!650908)))))

(declare-fun b!1493215 () Bool)

(assert (=> b!1493215 (= e!836522 (seekKeyOrZeroReturnVacant!0 (x!133475 lt!650908) (index!51881 lt!650908) (index!51881 lt!650908) (select (arr!48109 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493216 () Bool)

(declare-fun c!138203 () Bool)

(assert (=> b!1493216 (= c!138203 (= lt!650907 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493216 (= e!836523 e!836522)))

(assert (= (and d!156947 c!138202) b!1493212))

(assert (= (and d!156947 (not c!138202)) b!1493213))

(assert (= (and b!1493213 c!138204) b!1493211))

(assert (= (and b!1493213 (not c!138204)) b!1493216))

(assert (= (and b!1493216 c!138203) b!1493214))

(assert (= (and b!1493216 (not c!138203)) b!1493215))

(declare-fun m!1377103 () Bool)

(assert (=> b!1493213 m!1377103))

(assert (=> d!156947 m!1376829))

(assert (=> d!156947 m!1376815))

(assert (=> d!156947 m!1376831))

(assert (=> d!156947 m!1376823))

(declare-fun m!1377105 () Bool)

(assert (=> d!156947 m!1377105))

(declare-fun m!1377107 () Bool)

(assert (=> d!156947 m!1377107))

(declare-fun m!1377109 () Bool)

(assert (=> d!156947 m!1377109))

(assert (=> d!156947 m!1376815))

(assert (=> d!156947 m!1376829))

(assert (=> b!1493215 m!1376815))

(declare-fun m!1377111 () Bool)

(assert (=> b!1493215 m!1377111))

(assert (=> b!1492817 d!156947))

(declare-fun b!1493223 () Bool)

(declare-fun e!836535 () SeekEntryResult!12372)

(declare-fun e!836534 () SeekEntryResult!12372)

(assert (=> b!1493223 (= e!836535 e!836534)))

(declare-fun c!138208 () Bool)

(declare-fun lt!650916 () (_ BitVec 64))

(assert (=> b!1493223 (= c!138208 (or (= lt!650916 lt!650745) (= (bvadd lt!650916 lt!650916) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493224 () Bool)

(declare-fun e!836532 () Bool)

(declare-fun lt!650917 () SeekEntryResult!12372)

(assert (=> b!1493224 (= e!836532 (bvsge (x!133475 lt!650917) #b01111111111111111111111111111110))))

(declare-fun b!1493225 () Bool)

(assert (=> b!1493225 (= e!836535 (Intermediate!12372 true (toIndex!0 lt!650745 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156949 () Bool)

(assert (=> d!156949 e!836532))

(declare-fun c!138209 () Bool)

(assert (=> d!156949 (= c!138209 (and (is-Intermediate!12372 lt!650917) (undefined!13184 lt!650917)))))

(assert (=> d!156949 (= lt!650917 e!836535)))

(declare-fun c!138207 () Bool)

(assert (=> d!156949 (= c!138207 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156949 (= lt!650916 (select (arr!48109 lt!650743) (toIndex!0 lt!650745 mask!2687)))))

(assert (=> d!156949 (validMask!0 mask!2687)))

(assert (=> d!156949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650745 mask!2687) lt!650745 lt!650743 mask!2687) lt!650917)))

(declare-fun b!1493226 () Bool)

(declare-fun e!836533 () Bool)

(assert (=> b!1493226 (= e!836532 e!836533)))

(declare-fun res!1015873 () Bool)

(assert (=> b!1493226 (= res!1015873 (and (is-Intermediate!12372 lt!650917) (not (undefined!13184 lt!650917)) (bvslt (x!133475 lt!650917) #b01111111111111111111111111111110) (bvsge (x!133475 lt!650917) #b00000000000000000000000000000000) (bvsge (x!133475 lt!650917) #b00000000000000000000000000000000)))))

(assert (=> b!1493226 (=> (not res!1015873) (not e!836533))))

(declare-fun b!1493227 () Bool)

(assert (=> b!1493227 (and (bvsge (index!51881 lt!650917) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650917) (size!48660 lt!650743)))))

(declare-fun res!1015875 () Bool)

(assert (=> b!1493227 (= res!1015875 (= (select (arr!48109 lt!650743) (index!51881 lt!650917)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836529 () Bool)

(assert (=> b!1493227 (=> res!1015875 e!836529)))

(declare-fun b!1493228 () Bool)

(assert (=> b!1493228 (and (bvsge (index!51881 lt!650917) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650917) (size!48660 lt!650743)))))

(declare-fun res!1015877 () Bool)

(assert (=> b!1493228 (= res!1015877 (= (select (arr!48109 lt!650743) (index!51881 lt!650917)) lt!650745))))

(assert (=> b!1493228 (=> res!1015877 e!836529)))

(assert (=> b!1493228 (= e!836533 e!836529)))

(declare-fun b!1493229 () Bool)

(assert (=> b!1493229 (and (bvsge (index!51881 lt!650917) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650917) (size!48660 lt!650743)))))

(assert (=> b!1493229 (= e!836529 (= (select (arr!48109 lt!650743) (index!51881 lt!650917)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493230 () Bool)

(assert (=> b!1493230 (= e!836534 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!650745 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!650745 lt!650743 mask!2687))))

(declare-fun b!1493231 () Bool)

(assert (=> b!1493231 (= e!836534 (Intermediate!12372 false (toIndex!0 lt!650745 mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156949 c!138207) b!1493225))

(assert (= (and d!156949 (not c!138207)) b!1493223))

(assert (= (and b!1493223 c!138208) b!1493231))

(assert (= (and b!1493223 (not c!138208)) b!1493230))

(assert (= (and d!156949 c!138209) b!1493224))

(assert (= (and d!156949 (not c!138209)) b!1493226))

(assert (= (and b!1493226 res!1015873) b!1493228))

(assert (= (and b!1493228 (not res!1015877)) b!1493227))

(assert (= (and b!1493227 (not res!1015875)) b!1493229))

(declare-fun m!1377113 () Bool)

(assert (=> b!1493227 m!1377113))

(assert (=> b!1493230 m!1376805))

(declare-fun m!1377115 () Bool)

(assert (=> b!1493230 m!1377115))

(assert (=> b!1493230 m!1377115))

(declare-fun m!1377117 () Bool)

(assert (=> b!1493230 m!1377117))

(assert (=> b!1493228 m!1377113))

(assert (=> d!156949 m!1376805))

(declare-fun m!1377119 () Bool)

(assert (=> d!156949 m!1377119))

(assert (=> d!156949 m!1376823))

(assert (=> b!1493229 m!1377113))

(assert (=> b!1492827 d!156949))

(declare-fun d!156951 () Bool)

(declare-fun lt!650926 () (_ BitVec 32))

(declare-fun lt!650925 () (_ BitVec 32))

(assert (=> d!156951 (= lt!650926 (bvmul (bvxor lt!650925 (bvlshr lt!650925 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156951 (= lt!650925 ((_ extract 31 0) (bvand (bvxor lt!650745 (bvlshr lt!650745 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156951 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015878 (let ((h!36177 ((_ extract 31 0) (bvand (bvxor lt!650745 (bvlshr lt!650745 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133489 (bvmul (bvxor h!36177 (bvlshr h!36177 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133489 (bvlshr x!133489 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015878 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015878 #b00000000000000000000000000000000))))))

(assert (=> d!156951 (= (toIndex!0 lt!650745 mask!2687) (bvand (bvxor lt!650926 (bvlshr lt!650926 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492827 d!156951))

(declare-fun bm!67967 () Bool)

(declare-fun call!67970 () Bool)

(assert (=> bm!67967 (= call!67970 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1493238 () Bool)

(declare-fun e!836540 () Bool)

(assert (=> b!1493238 (= e!836540 call!67970)))

(declare-fun d!156955 () Bool)

(declare-fun res!1015882 () Bool)

(declare-fun e!836541 () Bool)

(assert (=> d!156955 (=> res!1015882 e!836541)))

(assert (=> d!156955 (= res!1015882 (bvsge #b00000000000000000000000000000000 (size!48660 a!2862)))))

(assert (=> d!156955 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!836541)))

(declare-fun b!1493239 () Bool)

(assert (=> b!1493239 (= e!836541 e!836540)))

(declare-fun c!138211 () Bool)

(assert (=> b!1493239 (= c!138211 (validKeyInArray!0 (select (arr!48109 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493240 () Bool)

(declare-fun e!836539 () Bool)

(assert (=> b!1493240 (= e!836539 call!67970)))

(declare-fun b!1493241 () Bool)

(assert (=> b!1493241 (= e!836540 e!836539)))

(declare-fun lt!650927 () (_ BitVec 64))

(assert (=> b!1493241 (= lt!650927 (select (arr!48109 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!650929 () Unit!50032)

(assert (=> b!1493241 (= lt!650929 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650927 #b00000000000000000000000000000000))))

(assert (=> b!1493241 (arrayContainsKey!0 a!2862 lt!650927 #b00000000000000000000000000000000)))

(declare-fun lt!650928 () Unit!50032)

(assert (=> b!1493241 (= lt!650928 lt!650929)))

(declare-fun res!1015881 () Bool)

(assert (=> b!1493241 (= res!1015881 (= (seekEntryOrOpen!0 (select (arr!48109 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12372 #b00000000000000000000000000000000)))))

(assert (=> b!1493241 (=> (not res!1015881) (not e!836539))))

(assert (= (and d!156955 (not res!1015882)) b!1493239))

(assert (= (and b!1493239 c!138211) b!1493241))

(assert (= (and b!1493239 (not c!138211)) b!1493238))

(assert (= (and b!1493241 res!1015881) b!1493240))

(assert (= (or b!1493240 b!1493238) bm!67967))

(declare-fun m!1377127 () Bool)

(assert (=> bm!67967 m!1377127))

(declare-fun m!1377129 () Bool)

(assert (=> b!1493239 m!1377129))

(assert (=> b!1493239 m!1377129))

(declare-fun m!1377131 () Bool)

(assert (=> b!1493239 m!1377131))

(assert (=> b!1493241 m!1377129))

(declare-fun m!1377133 () Bool)

(assert (=> b!1493241 m!1377133))

(declare-fun m!1377135 () Bool)

(assert (=> b!1493241 m!1377135))

(assert (=> b!1493241 m!1377129))

(declare-fun m!1377137 () Bool)

(assert (=> b!1493241 m!1377137))

(assert (=> b!1492816 d!156955))

(declare-fun bm!67970 () Bool)

(declare-fun call!67973 () Bool)

(declare-fun c!138217 () Bool)

(assert (=> bm!67970 (= call!67973 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138217 (Cons!34786 (select (arr!48109 a!2862) #b00000000000000000000000000000000) Nil!34787) Nil!34787)))))

(declare-fun b!1493261 () Bool)

(declare-fun e!836556 () Bool)

(declare-fun e!836558 () Bool)

(assert (=> b!1493261 (= e!836556 e!836558)))

(assert (=> b!1493261 (= c!138217 (validKeyInArray!0 (select (arr!48109 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493262 () Bool)

(declare-fun e!836555 () Bool)

(assert (=> b!1493262 (= e!836555 e!836556)))

(declare-fun res!1015894 () Bool)

(assert (=> b!1493262 (=> (not res!1015894) (not e!836556))))

(declare-fun e!836557 () Bool)

(assert (=> b!1493262 (= res!1015894 (not e!836557))))

(declare-fun res!1015892 () Bool)

(assert (=> b!1493262 (=> (not res!1015892) (not e!836557))))

(assert (=> b!1493262 (= res!1015892 (validKeyInArray!0 (select (arr!48109 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493263 () Bool)

(declare-fun contains!9938 (List!34790 (_ BitVec 64)) Bool)

(assert (=> b!1493263 (= e!836557 (contains!9938 Nil!34787 (select (arr!48109 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156957 () Bool)

(declare-fun res!1015893 () Bool)

(assert (=> d!156957 (=> res!1015893 e!836555)))

(assert (=> d!156957 (= res!1015893 (bvsge #b00000000000000000000000000000000 (size!48660 a!2862)))))

(assert (=> d!156957 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34787) e!836555)))

(declare-fun b!1493264 () Bool)

(assert (=> b!1493264 (= e!836558 call!67973)))

(declare-fun b!1493265 () Bool)

(assert (=> b!1493265 (= e!836558 call!67973)))

(assert (= (and d!156957 (not res!1015893)) b!1493262))

(assert (= (and b!1493262 res!1015892) b!1493263))

(assert (= (and b!1493262 res!1015894) b!1493261))

(assert (= (and b!1493261 c!138217) b!1493264))

(assert (= (and b!1493261 (not c!138217)) b!1493265))

(assert (= (or b!1493264 b!1493265) bm!67970))

(assert (=> bm!67970 m!1377129))

(declare-fun m!1377149 () Bool)

(assert (=> bm!67970 m!1377149))

(assert (=> b!1493261 m!1377129))

(assert (=> b!1493261 m!1377129))

(assert (=> b!1493261 m!1377131))

(assert (=> b!1493262 m!1377129))

(assert (=> b!1493262 m!1377129))

(assert (=> b!1493262 m!1377131))

(assert (=> b!1493263 m!1377129))

(assert (=> b!1493263 m!1377129))

(declare-fun m!1377151 () Bool)

(assert (=> b!1493263 m!1377151))

(assert (=> b!1492815 d!156957))

(declare-fun b!1493276 () Bool)

(declare-fun e!836571 () SeekEntryResult!12372)

(declare-fun e!836570 () SeekEntryResult!12372)

(assert (=> b!1493276 (= e!836571 e!836570)))

(declare-fun c!138221 () Bool)

(declare-fun lt!650937 () (_ BitVec 64))

(assert (=> b!1493276 (= c!138221 (or (= lt!650937 (select (arr!48109 a!2862) j!93)) (= (bvadd lt!650937 lt!650937) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493277 () Bool)

(declare-fun e!836568 () Bool)

(declare-fun lt!650938 () SeekEntryResult!12372)

(assert (=> b!1493277 (= e!836568 (bvsge (x!133475 lt!650938) #b01111111111111111111111111111110))))

(declare-fun b!1493278 () Bool)

(assert (=> b!1493278 (= e!836571 (Intermediate!12372 true (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156967 () Bool)

(assert (=> d!156967 e!836568))

(declare-fun c!138222 () Bool)

(assert (=> d!156967 (= c!138222 (and (is-Intermediate!12372 lt!650938) (undefined!13184 lt!650938)))))

(assert (=> d!156967 (= lt!650938 e!836571)))

(declare-fun c!138220 () Bool)

(assert (=> d!156967 (= c!138220 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156967 (= lt!650937 (select (arr!48109 a!2862) (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687)))))

(assert (=> d!156967 (validMask!0 mask!2687)))

(assert (=> d!156967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) (select (arr!48109 a!2862) j!93) a!2862 mask!2687) lt!650938)))

(declare-fun b!1493279 () Bool)

(declare-fun e!836569 () Bool)

(assert (=> b!1493279 (= e!836568 e!836569)))

(declare-fun res!1015901 () Bool)

(assert (=> b!1493279 (= res!1015901 (and (is-Intermediate!12372 lt!650938) (not (undefined!13184 lt!650938)) (bvslt (x!133475 lt!650938) #b01111111111111111111111111111110) (bvsge (x!133475 lt!650938) #b00000000000000000000000000000000) (bvsge (x!133475 lt!650938) #b00000000000000000000000000000000)))))

(assert (=> b!1493279 (=> (not res!1015901) (not e!836569))))

(declare-fun b!1493280 () Bool)

(assert (=> b!1493280 (and (bvsge (index!51881 lt!650938) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650938) (size!48660 a!2862)))))

(declare-fun res!1015902 () Bool)

(assert (=> b!1493280 (= res!1015902 (= (select (arr!48109 a!2862) (index!51881 lt!650938)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836567 () Bool)

(assert (=> b!1493280 (=> res!1015902 e!836567)))

(declare-fun b!1493281 () Bool)

(assert (=> b!1493281 (and (bvsge (index!51881 lt!650938) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650938) (size!48660 a!2862)))))

(declare-fun res!1015903 () Bool)

(assert (=> b!1493281 (= res!1015903 (= (select (arr!48109 a!2862) (index!51881 lt!650938)) (select (arr!48109 a!2862) j!93)))))

(assert (=> b!1493281 (=> res!1015903 e!836567)))

(assert (=> b!1493281 (= e!836569 e!836567)))

(declare-fun b!1493282 () Bool)

(assert (=> b!1493282 (and (bvsge (index!51881 lt!650938) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650938) (size!48660 a!2862)))))

(assert (=> b!1493282 (= e!836567 (= (select (arr!48109 a!2862) (index!51881 lt!650938)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493283 () Bool)

(assert (=> b!1493283 (= e!836570 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48109 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493284 () Bool)

(assert (=> b!1493284 (= e!836570 (Intermediate!12372 false (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!156967 c!138220) b!1493278))

(assert (= (and d!156967 (not c!138220)) b!1493276))

(assert (= (and b!1493276 c!138221) b!1493284))

(assert (= (and b!1493276 (not c!138221)) b!1493283))

(assert (= (and d!156967 c!138222) b!1493277))

(assert (= (and d!156967 (not c!138222)) b!1493279))

(assert (= (and b!1493279 res!1015901) b!1493281))

(assert (= (and b!1493281 (not res!1015903)) b!1493280))

(assert (= (and b!1493280 (not res!1015902)) b!1493282))

(declare-fun m!1377153 () Bool)

(assert (=> b!1493280 m!1377153))

(assert (=> b!1493283 m!1376829))

(declare-fun m!1377155 () Bool)

(assert (=> b!1493283 m!1377155))

(assert (=> b!1493283 m!1377155))

(assert (=> b!1493283 m!1376815))

(declare-fun m!1377157 () Bool)

(assert (=> b!1493283 m!1377157))

(assert (=> b!1493281 m!1377153))

(assert (=> d!156967 m!1376829))

(declare-fun m!1377159 () Bool)

(assert (=> d!156967 m!1377159))

(assert (=> d!156967 m!1376823))

(assert (=> b!1493282 m!1377153))

(assert (=> b!1492826 d!156967))

(declare-fun d!156969 () Bool)

(declare-fun lt!650940 () (_ BitVec 32))

(declare-fun lt!650939 () (_ BitVec 32))

(assert (=> d!156969 (= lt!650940 (bvmul (bvxor lt!650939 (bvlshr lt!650939 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156969 (= lt!650939 ((_ extract 31 0) (bvand (bvxor (select (arr!48109 a!2862) j!93) (bvlshr (select (arr!48109 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156969 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015878 (let ((h!36177 ((_ extract 31 0) (bvand (bvxor (select (arr!48109 a!2862) j!93) (bvlshr (select (arr!48109 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133489 (bvmul (bvxor h!36177 (bvlshr h!36177 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133489 (bvlshr x!133489 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015878 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015878 #b00000000000000000000000000000000))))))

(assert (=> d!156969 (= (toIndex!0 (select (arr!48109 a!2862) j!93) mask!2687) (bvand (bvxor lt!650940 (bvlshr lt!650940 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492826 d!156969))

(declare-fun b!1493285 () Bool)

(declare-fun e!836576 () SeekEntryResult!12372)

(declare-fun e!836575 () SeekEntryResult!12372)

(assert (=> b!1493285 (= e!836576 e!836575)))

(declare-fun lt!650941 () (_ BitVec 64))

(declare-fun c!138224 () Bool)

(assert (=> b!1493285 (= c!138224 (or (= lt!650941 (select (arr!48109 a!2862) j!93)) (= (bvadd lt!650941 lt!650941) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1493286 () Bool)

(declare-fun e!836573 () Bool)

(declare-fun lt!650942 () SeekEntryResult!12372)

(assert (=> b!1493286 (= e!836573 (bvsge (x!133475 lt!650942) #b01111111111111111111111111111110))))

(declare-fun b!1493287 () Bool)

(assert (=> b!1493287 (= e!836576 (Intermediate!12372 true index!646 x!665))))

(declare-fun d!156971 () Bool)

(assert (=> d!156971 e!836573))

(declare-fun c!138225 () Bool)

(assert (=> d!156971 (= c!138225 (and (is-Intermediate!12372 lt!650942) (undefined!13184 lt!650942)))))

(assert (=> d!156971 (= lt!650942 e!836576)))

(declare-fun c!138223 () Bool)

(assert (=> d!156971 (= c!138223 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156971 (= lt!650941 (select (arr!48109 a!2862) index!646))))

(assert (=> d!156971 (validMask!0 mask!2687)))

(assert (=> d!156971 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48109 a!2862) j!93) a!2862 mask!2687) lt!650942)))

(declare-fun b!1493288 () Bool)

(declare-fun e!836574 () Bool)

(assert (=> b!1493288 (= e!836573 e!836574)))

(declare-fun res!1015904 () Bool)

(assert (=> b!1493288 (= res!1015904 (and (is-Intermediate!12372 lt!650942) (not (undefined!13184 lt!650942)) (bvslt (x!133475 lt!650942) #b01111111111111111111111111111110) (bvsge (x!133475 lt!650942) #b00000000000000000000000000000000) (bvsge (x!133475 lt!650942) x!665)))))

(assert (=> b!1493288 (=> (not res!1015904) (not e!836574))))

(declare-fun b!1493289 () Bool)

(assert (=> b!1493289 (and (bvsge (index!51881 lt!650942) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650942) (size!48660 a!2862)))))

(declare-fun res!1015905 () Bool)

(assert (=> b!1493289 (= res!1015905 (= (select (arr!48109 a!2862) (index!51881 lt!650942)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836572 () Bool)

(assert (=> b!1493289 (=> res!1015905 e!836572)))

(declare-fun b!1493290 () Bool)

(assert (=> b!1493290 (and (bvsge (index!51881 lt!650942) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650942) (size!48660 a!2862)))))

(declare-fun res!1015906 () Bool)

(assert (=> b!1493290 (= res!1015906 (= (select (arr!48109 a!2862) (index!51881 lt!650942)) (select (arr!48109 a!2862) j!93)))))

(assert (=> b!1493290 (=> res!1015906 e!836572)))

(assert (=> b!1493290 (= e!836574 e!836572)))

(declare-fun b!1493291 () Bool)

(assert (=> b!1493291 (and (bvsge (index!51881 lt!650942) #b00000000000000000000000000000000) (bvslt (index!51881 lt!650942) (size!48660 a!2862)))))

(assert (=> b!1493291 (= e!836572 (= (select (arr!48109 a!2862) (index!51881 lt!650942)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493292 () Bool)

(assert (=> b!1493292 (= e!836575 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48109 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493293 () Bool)

(assert (=> b!1493293 (= e!836575 (Intermediate!12372 false index!646 x!665))))

(assert (= (and d!156971 c!138223) b!1493287))

(assert (= (and d!156971 (not c!138223)) b!1493285))

(assert (= (and b!1493285 c!138224) b!1493293))

(assert (= (and b!1493285 (not c!138224)) b!1493292))

(assert (= (and d!156971 c!138225) b!1493286))

(assert (= (and d!156971 (not c!138225)) b!1493288))

(assert (= (and b!1493288 res!1015904) b!1493290))

(assert (= (and b!1493290 (not res!1015906)) b!1493289))

(assert (= (and b!1493289 (not res!1015905)) b!1493291))

(declare-fun m!1377161 () Bool)

(assert (=> b!1493289 m!1377161))

(assert (=> b!1493292 m!1376813))

(assert (=> b!1493292 m!1376813))

(assert (=> b!1493292 m!1376815))

(declare-fun m!1377163 () Bool)

(assert (=> b!1493292 m!1377163))

(assert (=> b!1493290 m!1377161))

(assert (=> d!156971 m!1376845))

(assert (=> d!156971 m!1376823))

(assert (=> b!1493291 m!1377161))

(assert (=> b!1492825 d!156971))

(push 1)

(assert (not b!1493262))

(assert (not b!1493283))

(assert (not d!156941))

(assert (not d!156885))

(assert (not b!1493230))

(assert (not d!156971))

(assert (not d!156891))

(assert (not b!1493013))

(assert (not bm!67963))

(assert (not b!1493263))

(assert (not b!1493239))

(assert (not b!1493241))

(assert (not bm!67967))

(assert (not b!1493215))

(assert (not b!1493209))

(assert (not d!156949))

(assert (not b!1493165))

(assert (not b!1493292))

(assert (not d!156897))

(assert (not b!1493091))

(assert (not b!1493261))

(assert (not b!1493163))

(assert (not bm!67970))

(assert (not d!156947))

(assert (not d!156939))

(assert (not d!156967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

