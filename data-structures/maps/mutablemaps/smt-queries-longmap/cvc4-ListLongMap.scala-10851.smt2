; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127064 () Bool)

(assert start!127064)

(declare-fun b!1492919 () Bool)

(declare-fun res!1015793 () Bool)

(declare-fun e!836363 () Bool)

(assert (=> b!1492919 (=> (not res!1015793) (not e!836363))))

(declare-datatypes ((SeekEntryResult!12374 0))(
  ( (MissingZero!12374 (index!51887 (_ BitVec 32))) (Found!12374 (index!51888 (_ BitVec 32))) (Intermediate!12374 (undefined!13186 Bool) (index!51889 (_ BitVec 32)) (x!133477 (_ BitVec 32))) (Undefined!12374) (MissingVacant!12374 (index!51890 (_ BitVec 32))) )
))
(declare-fun lt!650782 () SeekEntryResult!12374)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99691 0))(
  ( (array!99692 (arr!48111 (Array (_ BitVec 32) (_ BitVec 64))) (size!48662 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99691)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99691 (_ BitVec 32)) SeekEntryResult!12374)

(assert (=> b!1492919 (= res!1015793 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48111 a!2862) j!93) a!2862 mask!2687) lt!650782))))

(declare-fun b!1492920 () Bool)

(declare-fun e!836359 () Bool)

(assert (=> b!1492920 (= e!836359 e!836363)))

(declare-fun res!1015791 () Bool)

(assert (=> b!1492920 (=> (not res!1015791) (not e!836363))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492920 (= res!1015791 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) (select (arr!48111 a!2862) j!93) a!2862 mask!2687) lt!650782))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492920 (= lt!650782 (Intermediate!12374 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492921 () Bool)

(declare-fun res!1015800 () Bool)

(declare-fun e!836362 () Bool)

(assert (=> b!1492921 (=> (not res!1015800) (not e!836362))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1492921 (= res!1015800 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492922 () Bool)

(declare-fun res!1015801 () Bool)

(declare-fun e!836361 () Bool)

(assert (=> b!1492922 (=> (not res!1015801) (not e!836361))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1492922 (= res!1015801 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48662 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48662 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48662 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1015805 () Bool)

(assert (=> start!127064 (=> (not res!1015805) (not e!836361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127064 (= res!1015805 (validMask!0 mask!2687))))

(assert (=> start!127064 e!836361))

(assert (=> start!127064 true))

(declare-fun array_inv!37056 (array!99691) Bool)

(assert (=> start!127064 (array_inv!37056 a!2862)))

(declare-fun b!1492923 () Bool)

(declare-fun res!1015798 () Bool)

(assert (=> b!1492923 (=> (not res!1015798) (not e!836361))))

(declare-datatypes ((List!34792 0))(
  ( (Nil!34789) (Cons!34788 (h!36174 (_ BitVec 64)) (t!49493 List!34792)) )
))
(declare-fun arrayNoDuplicates!0 (array!99691 (_ BitVec 32) List!34792) Bool)

(assert (=> b!1492923 (= res!1015798 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34789))))

(declare-fun lt!650778 () SeekEntryResult!12374)

(declare-fun lt!650777 () (_ BitVec 64))

(declare-fun b!1492924 () Bool)

(declare-fun lt!650780 () array!99691)

(declare-fun e!836364 () Bool)

(assert (=> b!1492924 (= e!836364 (= lt!650778 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650777 lt!650780 mask!2687)))))

(declare-fun b!1492925 () Bool)

(assert (=> b!1492925 (= e!836363 e!836362)))

(declare-fun res!1015799 () Bool)

(assert (=> b!1492925 (=> (not res!1015799) (not e!836362))))

(assert (=> b!1492925 (= res!1015799 (= lt!650778 (Intermediate!12374 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492925 (= lt!650778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650777 mask!2687) lt!650777 lt!650780 mask!2687))))

(assert (=> b!1492925 (= lt!650777 (select (store (arr!48111 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492926 () Bool)

(declare-fun e!836365 () Bool)

(assert (=> b!1492926 (= e!836365 (or (= (select (arr!48111 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48111 a!2862) intermediateBeforeIndex!19) (select (arr!48111 a!2862) j!93))))))

(declare-fun b!1492927 () Bool)

(declare-fun res!1015806 () Bool)

(assert (=> b!1492927 (=> (not res!1015806) (not e!836362))))

(assert (=> b!1492927 (= res!1015806 e!836364)))

(declare-fun c!138095 () Bool)

(assert (=> b!1492927 (= c!138095 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1492928 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99691 (_ BitVec 32)) SeekEntryResult!12374)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99691 (_ BitVec 32)) SeekEntryResult!12374)

(assert (=> b!1492928 (= e!836364 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650777 lt!650780 mask!2687) (seekEntryOrOpen!0 lt!650777 lt!650780 mask!2687)))))

(declare-fun b!1492929 () Bool)

(declare-fun res!1015797 () Bool)

(assert (=> b!1492929 (=> (not res!1015797) (not e!836361))))

(assert (=> b!1492929 (= res!1015797 (and (= (size!48662 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48662 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48662 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!836366 () Bool)

(declare-fun b!1492930 () Bool)

(declare-fun lt!650781 () (_ BitVec 32))

(assert (=> b!1492930 (= e!836366 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (and (bvsge lt!650781 #b00000000000000000000000000000000) (bvslt lt!650781 (size!48662 a!2862)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492930 (= lt!650781 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492931 () Bool)

(declare-fun res!1015796 () Bool)

(assert (=> b!1492931 (=> (not res!1015796) (not e!836361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99691 (_ BitVec 32)) Bool)

(assert (=> b!1492931 (= res!1015796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492932 () Bool)

(declare-fun res!1015803 () Bool)

(assert (=> b!1492932 (=> (not res!1015803) (not e!836365))))

(assert (=> b!1492932 (= res!1015803 (= (seekEntryOrOpen!0 (select (arr!48111 a!2862) j!93) a!2862 mask!2687) (Found!12374 j!93)))))

(declare-fun b!1492933 () Bool)

(declare-fun res!1015795 () Bool)

(assert (=> b!1492933 (=> (not res!1015795) (not e!836361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492933 (= res!1015795 (validKeyInArray!0 (select (arr!48111 a!2862) j!93)))))

(declare-fun b!1492934 () Bool)

(declare-fun res!1015792 () Bool)

(assert (=> b!1492934 (=> (not res!1015792) (not e!836361))))

(assert (=> b!1492934 (= res!1015792 (validKeyInArray!0 (select (arr!48111 a!2862) i!1006)))))

(declare-fun b!1492935 () Bool)

(assert (=> b!1492935 (= e!836361 e!836359)))

(declare-fun res!1015804 () Bool)

(assert (=> b!1492935 (=> (not res!1015804) (not e!836359))))

(assert (=> b!1492935 (= res!1015804 (= (select (store (arr!48111 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492935 (= lt!650780 (array!99692 (store (arr!48111 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48662 a!2862)))))

(declare-fun b!1492936 () Bool)

(assert (=> b!1492936 (= e!836362 (not e!836366))))

(declare-fun res!1015802 () Bool)

(assert (=> b!1492936 (=> res!1015802 e!836366)))

(assert (=> b!1492936 (= res!1015802 (or (and (= (select (arr!48111 a!2862) index!646) (select (store (arr!48111 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48111 a!2862) index!646) (select (arr!48111 a!2862) j!93))) (= (select (arr!48111 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1492936 e!836365))

(declare-fun res!1015794 () Bool)

(assert (=> b!1492936 (=> (not res!1015794) (not e!836365))))

(assert (=> b!1492936 (= res!1015794 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50036 0))(
  ( (Unit!50037) )
))
(declare-fun lt!650779 () Unit!50036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50036)

(assert (=> b!1492936 (= lt!650779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!127064 res!1015805) b!1492929))

(assert (= (and b!1492929 res!1015797) b!1492934))

(assert (= (and b!1492934 res!1015792) b!1492933))

(assert (= (and b!1492933 res!1015795) b!1492931))

(assert (= (and b!1492931 res!1015796) b!1492923))

(assert (= (and b!1492923 res!1015798) b!1492922))

(assert (= (and b!1492922 res!1015801) b!1492935))

(assert (= (and b!1492935 res!1015804) b!1492920))

(assert (= (and b!1492920 res!1015791) b!1492919))

(assert (= (and b!1492919 res!1015793) b!1492925))

(assert (= (and b!1492925 res!1015799) b!1492927))

(assert (= (and b!1492927 c!138095) b!1492924))

(assert (= (and b!1492927 (not c!138095)) b!1492928))

(assert (= (and b!1492927 res!1015806) b!1492921))

(assert (= (and b!1492921 res!1015800) b!1492936))

(assert (= (and b!1492936 res!1015794) b!1492932))

(assert (= (and b!1492932 res!1015803) b!1492926))

(assert (= (and b!1492936 (not res!1015802)) b!1492930))

(declare-fun m!1376909 () Bool)

(assert (=> b!1492925 m!1376909))

(assert (=> b!1492925 m!1376909))

(declare-fun m!1376911 () Bool)

(assert (=> b!1492925 m!1376911))

(declare-fun m!1376913 () Bool)

(assert (=> b!1492925 m!1376913))

(declare-fun m!1376915 () Bool)

(assert (=> b!1492925 m!1376915))

(declare-fun m!1376917 () Bool)

(assert (=> b!1492923 m!1376917))

(declare-fun m!1376919 () Bool)

(assert (=> b!1492934 m!1376919))

(assert (=> b!1492934 m!1376919))

(declare-fun m!1376921 () Bool)

(assert (=> b!1492934 m!1376921))

(declare-fun m!1376923 () Bool)

(assert (=> b!1492924 m!1376923))

(declare-fun m!1376925 () Bool)

(assert (=> b!1492930 m!1376925))

(declare-fun m!1376927 () Bool)

(assert (=> b!1492932 m!1376927))

(assert (=> b!1492932 m!1376927))

(declare-fun m!1376929 () Bool)

(assert (=> b!1492932 m!1376929))

(declare-fun m!1376931 () Bool)

(assert (=> start!127064 m!1376931))

(declare-fun m!1376933 () Bool)

(assert (=> start!127064 m!1376933))

(declare-fun m!1376935 () Bool)

(assert (=> b!1492936 m!1376935))

(assert (=> b!1492936 m!1376913))

(declare-fun m!1376937 () Bool)

(assert (=> b!1492936 m!1376937))

(declare-fun m!1376939 () Bool)

(assert (=> b!1492936 m!1376939))

(declare-fun m!1376941 () Bool)

(assert (=> b!1492936 m!1376941))

(assert (=> b!1492936 m!1376927))

(assert (=> b!1492933 m!1376927))

(assert (=> b!1492933 m!1376927))

(declare-fun m!1376943 () Bool)

(assert (=> b!1492933 m!1376943))

(declare-fun m!1376945 () Bool)

(assert (=> b!1492928 m!1376945))

(declare-fun m!1376947 () Bool)

(assert (=> b!1492928 m!1376947))

(assert (=> b!1492920 m!1376927))

(assert (=> b!1492920 m!1376927))

(declare-fun m!1376949 () Bool)

(assert (=> b!1492920 m!1376949))

(assert (=> b!1492920 m!1376949))

(assert (=> b!1492920 m!1376927))

(declare-fun m!1376951 () Bool)

(assert (=> b!1492920 m!1376951))

(assert (=> b!1492935 m!1376913))

(declare-fun m!1376953 () Bool)

(assert (=> b!1492935 m!1376953))

(declare-fun m!1376955 () Bool)

(assert (=> b!1492926 m!1376955))

(assert (=> b!1492926 m!1376927))

(assert (=> b!1492919 m!1376927))

(assert (=> b!1492919 m!1376927))

(declare-fun m!1376957 () Bool)

(assert (=> b!1492919 m!1376957))

(declare-fun m!1376959 () Bool)

(assert (=> b!1492931 m!1376959))

(push 1)

(assert (not b!1492932))

(assert (not b!1492919))

(assert (not start!127064))

(assert (not b!1492934))

(assert (not b!1492936))

(assert (not b!1492933))

(assert (not b!1492920))

(assert (not b!1492928))

(assert (not b!1492925))

(assert (not b!1492931))

(assert (not b!1492923))

(assert (not b!1492924))

(assert (not b!1492930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!156893 () Bool)

(declare-fun lt!650818 () (_ BitVec 32))

(assert (=> d!156893 (and (bvsge lt!650818 #b00000000000000000000000000000000) (bvslt lt!650818 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156893 (= lt!650818 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156893 (validMask!0 mask!2687)))

(assert (=> d!156893 (= (nextIndex!0 index!646 x!665 mask!2687) lt!650818)))

(declare-fun bs!42872 () Bool)

(assert (= bs!42872 d!156893))

(declare-fun m!1376991 () Bool)

(assert (=> bs!42872 m!1376991))

(assert (=> bs!42872 m!1376931))

(assert (=> b!1492930 d!156893))

(declare-fun b!1493048 () Bool)

(declare-fun lt!650835 () SeekEntryResult!12374)

(assert (=> b!1493048 (and (bvsge (index!51889 lt!650835) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650835) (size!48662 a!2862)))))

(declare-fun res!1015830 () Bool)

(assert (=> b!1493048 (= res!1015830 (= (select (arr!48111 a!2862) (index!51889 lt!650835)) (select (arr!48111 a!2862) j!93)))))

(declare-fun e!836428 () Bool)

(assert (=> b!1493048 (=> res!1015830 e!836428)))

(declare-fun e!836430 () Bool)

(assert (=> b!1493048 (= e!836430 e!836428)))

(declare-fun b!1493049 () Bool)

(declare-fun e!836431 () SeekEntryResult!12374)

(assert (=> b!1493049 (= e!836431 (Intermediate!12374 false index!646 x!665))))

(declare-fun b!1493050 () Bool)

(assert (=> b!1493050 (= e!836431 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48111 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493051 () Bool)

(declare-fun e!836432 () Bool)

(assert (=> b!1493051 (= e!836432 e!836430)))

(declare-fun res!1015831 () Bool)

(assert (=> b!1493051 (= res!1015831 (and (is-Intermediate!12374 lt!650835) (not (undefined!13186 lt!650835)) (bvslt (x!133477 lt!650835) #b01111111111111111111111111111110) (bvsge (x!133477 lt!650835) #b00000000000000000000000000000000) (bvsge (x!133477 lt!650835) x!665)))))

(assert (=> b!1493051 (=> (not res!1015831) (not e!836430))))

(declare-fun b!1493052 () Bool)

(declare-fun e!836429 () SeekEntryResult!12374)

(assert (=> b!1493052 (= e!836429 e!836431)))

(declare-fun c!138141 () Bool)

(declare-fun lt!650836 () (_ BitVec 64))

(assert (=> b!1493052 (= c!138141 (or (= lt!650836 (select (arr!48111 a!2862) j!93)) (= (bvadd lt!650836 lt!650836) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156895 () Bool)

(assert (=> d!156895 e!836432))

(declare-fun c!138142 () Bool)

(assert (=> d!156895 (= c!138142 (and (is-Intermediate!12374 lt!650835) (undefined!13186 lt!650835)))))

(assert (=> d!156895 (= lt!650835 e!836429)))

(declare-fun c!138143 () Bool)

(assert (=> d!156895 (= c!138143 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156895 (= lt!650836 (select (arr!48111 a!2862) index!646))))

(assert (=> d!156895 (validMask!0 mask!2687)))

(assert (=> d!156895 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48111 a!2862) j!93) a!2862 mask!2687) lt!650835)))

(declare-fun b!1493053 () Bool)

(assert (=> b!1493053 (and (bvsge (index!51889 lt!650835) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650835) (size!48662 a!2862)))))

(assert (=> b!1493053 (= e!836428 (= (select (arr!48111 a!2862) (index!51889 lt!650835)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493054 () Bool)

(assert (=> b!1493054 (= e!836432 (bvsge (x!133477 lt!650835) #b01111111111111111111111111111110))))

(declare-fun b!1493055 () Bool)

(assert (=> b!1493055 (= e!836429 (Intermediate!12374 true index!646 x!665))))

(declare-fun b!1493056 () Bool)

(assert (=> b!1493056 (and (bvsge (index!51889 lt!650835) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650835) (size!48662 a!2862)))))

(declare-fun res!1015829 () Bool)

(assert (=> b!1493056 (= res!1015829 (= (select (arr!48111 a!2862) (index!51889 lt!650835)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493056 (=> res!1015829 e!836428)))

(assert (= (and d!156895 c!138143) b!1493055))

(assert (= (and d!156895 (not c!138143)) b!1493052))

(assert (= (and b!1493052 c!138141) b!1493049))

(assert (= (and b!1493052 (not c!138141)) b!1493050))

(assert (= (and d!156895 c!138142) b!1493054))

(assert (= (and d!156895 (not c!138142)) b!1493051))

(assert (= (and b!1493051 res!1015831) b!1493048))

(assert (= (and b!1493048 (not res!1015830)) b!1493056))

(assert (= (and b!1493056 (not res!1015829)) b!1493053))

(assert (=> b!1493050 m!1376925))

(assert (=> b!1493050 m!1376925))

(assert (=> b!1493050 m!1376927))

(declare-fun m!1377009 () Bool)

(assert (=> b!1493050 m!1377009))

(declare-fun m!1377011 () Bool)

(assert (=> b!1493053 m!1377011))

(assert (=> b!1493048 m!1377011))

(assert (=> b!1493056 m!1377011))

(assert (=> d!156895 m!1376939))

(assert (=> d!156895 m!1376931))

(assert (=> b!1492919 d!156895))

(declare-fun b!1493057 () Bool)

(declare-fun lt!650837 () SeekEntryResult!12374)

(assert (=> b!1493057 (and (bvsge (index!51889 lt!650837) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650837) (size!48662 a!2862)))))

(declare-fun res!1015833 () Bool)

(assert (=> b!1493057 (= res!1015833 (= (select (arr!48111 a!2862) (index!51889 lt!650837)) (select (arr!48111 a!2862) j!93)))))

(declare-fun e!836433 () Bool)

(assert (=> b!1493057 (=> res!1015833 e!836433)))

(declare-fun e!836435 () Bool)

(assert (=> b!1493057 (= e!836435 e!836433)))

(declare-fun e!836436 () SeekEntryResult!12374)

(declare-fun b!1493058 () Bool)

(assert (=> b!1493058 (= e!836436 (Intermediate!12374 false (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493059 () Bool)

(assert (=> b!1493059 (= e!836436 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48111 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1493060 () Bool)

(declare-fun e!836437 () Bool)

(assert (=> b!1493060 (= e!836437 e!836435)))

(declare-fun res!1015834 () Bool)

(assert (=> b!1493060 (= res!1015834 (and (is-Intermediate!12374 lt!650837) (not (undefined!13186 lt!650837)) (bvslt (x!133477 lt!650837) #b01111111111111111111111111111110) (bvsge (x!133477 lt!650837) #b00000000000000000000000000000000) (bvsge (x!133477 lt!650837) #b00000000000000000000000000000000)))))

(assert (=> b!1493060 (=> (not res!1015834) (not e!836435))))

(declare-fun b!1493061 () Bool)

(declare-fun e!836434 () SeekEntryResult!12374)

(assert (=> b!1493061 (= e!836434 e!836436)))

(declare-fun c!138144 () Bool)

(declare-fun lt!650838 () (_ BitVec 64))

(assert (=> b!1493061 (= c!138144 (or (= lt!650838 (select (arr!48111 a!2862) j!93)) (= (bvadd lt!650838 lt!650838) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156901 () Bool)

(assert (=> d!156901 e!836437))

(declare-fun c!138145 () Bool)

(assert (=> d!156901 (= c!138145 (and (is-Intermediate!12374 lt!650837) (undefined!13186 lt!650837)))))

(assert (=> d!156901 (= lt!650837 e!836434)))

(declare-fun c!138146 () Bool)

(assert (=> d!156901 (= c!138146 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156901 (= lt!650838 (select (arr!48111 a!2862) (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687)))))

(assert (=> d!156901 (validMask!0 mask!2687)))

(assert (=> d!156901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) (select (arr!48111 a!2862) j!93) a!2862 mask!2687) lt!650837)))

(declare-fun b!1493062 () Bool)

(assert (=> b!1493062 (and (bvsge (index!51889 lt!650837) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650837) (size!48662 a!2862)))))

(assert (=> b!1493062 (= e!836433 (= (select (arr!48111 a!2862) (index!51889 lt!650837)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493063 () Bool)

(assert (=> b!1493063 (= e!836437 (bvsge (x!133477 lt!650837) #b01111111111111111111111111111110))))

(declare-fun b!1493064 () Bool)

(assert (=> b!1493064 (= e!836434 (Intermediate!12374 true (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493065 () Bool)

(assert (=> b!1493065 (and (bvsge (index!51889 lt!650837) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650837) (size!48662 a!2862)))))

(declare-fun res!1015832 () Bool)

(assert (=> b!1493065 (= res!1015832 (= (select (arr!48111 a!2862) (index!51889 lt!650837)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493065 (=> res!1015832 e!836433)))

(assert (= (and d!156901 c!138146) b!1493064))

(assert (= (and d!156901 (not c!138146)) b!1493061))

(assert (= (and b!1493061 c!138144) b!1493058))

(assert (= (and b!1493061 (not c!138144)) b!1493059))

(assert (= (and d!156901 c!138145) b!1493063))

(assert (= (and d!156901 (not c!138145)) b!1493060))

(assert (= (and b!1493060 res!1015834) b!1493057))

(assert (= (and b!1493057 (not res!1015833)) b!1493065))

(assert (= (and b!1493065 (not res!1015832)) b!1493062))

(assert (=> b!1493059 m!1376949))

(declare-fun m!1377013 () Bool)

(assert (=> b!1493059 m!1377013))

(assert (=> b!1493059 m!1377013))

(assert (=> b!1493059 m!1376927))

(declare-fun m!1377015 () Bool)

(assert (=> b!1493059 m!1377015))

(declare-fun m!1377017 () Bool)

(assert (=> b!1493062 m!1377017))

(assert (=> b!1493057 m!1377017))

(assert (=> b!1493065 m!1377017))

(assert (=> d!156901 m!1376949))

(declare-fun m!1377019 () Bool)

(assert (=> d!156901 m!1377019))

(assert (=> d!156901 m!1376931))

(assert (=> b!1492920 d!156901))

(declare-fun d!156903 () Bool)

(declare-fun lt!650852 () (_ BitVec 32))

(declare-fun lt!650851 () (_ BitVec 32))

(assert (=> d!156903 (= lt!650852 (bvmul (bvxor lt!650851 (bvlshr lt!650851 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156903 (= lt!650851 ((_ extract 31 0) (bvand (bvxor (select (arr!48111 a!2862) j!93) (bvlshr (select (arr!48111 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156903 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015835 (let ((h!36176 ((_ extract 31 0) (bvand (bvxor (select (arr!48111 a!2862) j!93) (bvlshr (select (arr!48111 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133486 (bvmul (bvxor h!36176 (bvlshr h!36176 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133486 (bvlshr x!133486 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015835 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015835 #b00000000000000000000000000000000))))))

(assert (=> d!156903 (= (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) (bvand (bvxor lt!650852 (bvlshr lt!650852 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492920 d!156903))

(declare-fun d!156909 () Bool)

(assert (=> d!156909 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127064 d!156909))

(declare-fun d!156917 () Bool)

(assert (=> d!156917 (= (array_inv!37056 a!2862) (bvsge (size!48662 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127064 d!156917))

(declare-fun b!1493156 () Bool)

(declare-fun c!138182 () Bool)

(declare-fun lt!650885 () (_ BitVec 64))

(assert (=> b!1493156 (= c!138182 (= lt!650885 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!836493 () SeekEntryResult!12374)

(declare-fun e!836492 () SeekEntryResult!12374)

(assert (=> b!1493156 (= e!836493 e!836492)))

(declare-fun b!1493157 () Bool)

(declare-fun e!836494 () SeekEntryResult!12374)

(assert (=> b!1493157 (= e!836494 Undefined!12374)))

(declare-fun b!1493158 () Bool)

(assert (=> b!1493158 (= e!836494 e!836493)))

(declare-fun c!138180 () Bool)

(assert (=> b!1493158 (= c!138180 (= lt!650885 lt!650777))))

(declare-fun b!1493160 () Bool)

(assert (=> b!1493160 (= e!836492 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!650777 lt!650780 mask!2687))))

(declare-fun b!1493161 () Bool)

(assert (=> b!1493161 (= e!836492 (MissingVacant!12374 intermediateAfterIndex!19))))

(declare-fun d!156919 () Bool)

(declare-fun lt!650884 () SeekEntryResult!12374)

(assert (=> d!156919 (and (or (is-Undefined!12374 lt!650884) (not (is-Found!12374 lt!650884)) (and (bvsge (index!51888 lt!650884) #b00000000000000000000000000000000) (bvslt (index!51888 lt!650884) (size!48662 lt!650780)))) (or (is-Undefined!12374 lt!650884) (is-Found!12374 lt!650884) (not (is-MissingVacant!12374 lt!650884)) (not (= (index!51890 lt!650884) intermediateAfterIndex!19)) (and (bvsge (index!51890 lt!650884) #b00000000000000000000000000000000) (bvslt (index!51890 lt!650884) (size!48662 lt!650780)))) (or (is-Undefined!12374 lt!650884) (ite (is-Found!12374 lt!650884) (= (select (arr!48111 lt!650780) (index!51888 lt!650884)) lt!650777) (and (is-MissingVacant!12374 lt!650884) (= (index!51890 lt!650884) intermediateAfterIndex!19) (= (select (arr!48111 lt!650780) (index!51890 lt!650884)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156919 (= lt!650884 e!836494)))

(declare-fun c!138181 () Bool)

(assert (=> d!156919 (= c!138181 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156919 (= lt!650885 (select (arr!48111 lt!650780) index!646))))

(assert (=> d!156919 (validMask!0 mask!2687)))

(assert (=> d!156919 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650777 lt!650780 mask!2687) lt!650884)))

(declare-fun b!1493159 () Bool)

(assert (=> b!1493159 (= e!836493 (Found!12374 index!646))))

(assert (= (and d!156919 c!138181) b!1493157))

(assert (= (and d!156919 (not c!138181)) b!1493158))

(assert (= (and b!1493158 c!138180) b!1493159))

(assert (= (and b!1493158 (not c!138180)) b!1493156))

(assert (= (and b!1493156 c!138182) b!1493161))

(assert (= (and b!1493156 (not c!138182)) b!1493160))

(assert (=> b!1493160 m!1376925))

(assert (=> b!1493160 m!1376925))

(declare-fun m!1377073 () Bool)

(assert (=> b!1493160 m!1377073))

(declare-fun m!1377075 () Bool)

(assert (=> d!156919 m!1377075))

(declare-fun m!1377077 () Bool)

(assert (=> d!156919 m!1377077))

(declare-fun m!1377081 () Bool)

(assert (=> d!156919 m!1377081))

(assert (=> d!156919 m!1376931))

(assert (=> b!1492928 d!156919))

(declare-fun b!1493188 () Bool)

(declare-fun e!836510 () SeekEntryResult!12374)

(declare-fun lt!650902 () SeekEntryResult!12374)

(assert (=> b!1493188 (= e!836510 (Found!12374 (index!51889 lt!650902)))))

(declare-fun b!1493189 () Bool)

(declare-fun e!836509 () SeekEntryResult!12374)

(assert (=> b!1493189 (= e!836509 e!836510)))

(declare-fun lt!650904 () (_ BitVec 64))

(assert (=> b!1493189 (= lt!650904 (select (arr!48111 lt!650780) (index!51889 lt!650902)))))

(declare-fun c!138196 () Bool)

(assert (=> b!1493189 (= c!138196 (= lt!650904 lt!650777))))

(declare-fun b!1493190 () Bool)

(declare-fun e!836508 () SeekEntryResult!12374)

(assert (=> b!1493190 (= e!836508 (MissingZero!12374 (index!51889 lt!650902)))))

(declare-fun b!1493192 () Bool)

(assert (=> b!1493192 (= e!836509 Undefined!12374)))

(declare-fun b!1493193 () Bool)

(declare-fun c!138195 () Bool)

(assert (=> b!1493193 (= c!138195 (= lt!650904 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493193 (= e!836510 e!836508)))

(declare-fun d!156937 () Bool)

(declare-fun lt!650903 () SeekEntryResult!12374)

(assert (=> d!156937 (and (or (is-Undefined!12374 lt!650903) (not (is-Found!12374 lt!650903)) (and (bvsge (index!51888 lt!650903) #b00000000000000000000000000000000) (bvslt (index!51888 lt!650903) (size!48662 lt!650780)))) (or (is-Undefined!12374 lt!650903) (is-Found!12374 lt!650903) (not (is-MissingZero!12374 lt!650903)) (and (bvsge (index!51887 lt!650903) #b00000000000000000000000000000000) (bvslt (index!51887 lt!650903) (size!48662 lt!650780)))) (or (is-Undefined!12374 lt!650903) (is-Found!12374 lt!650903) (is-MissingZero!12374 lt!650903) (not (is-MissingVacant!12374 lt!650903)) (and (bvsge (index!51890 lt!650903) #b00000000000000000000000000000000) (bvslt (index!51890 lt!650903) (size!48662 lt!650780)))) (or (is-Undefined!12374 lt!650903) (ite (is-Found!12374 lt!650903) (= (select (arr!48111 lt!650780) (index!51888 lt!650903)) lt!650777) (ite (is-MissingZero!12374 lt!650903) (= (select (arr!48111 lt!650780) (index!51887 lt!650903)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12374 lt!650903) (= (select (arr!48111 lt!650780) (index!51890 lt!650903)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156937 (= lt!650903 e!836509)))

(declare-fun c!138194 () Bool)

(assert (=> d!156937 (= c!138194 (and (is-Intermediate!12374 lt!650902) (undefined!13186 lt!650902)))))

(assert (=> d!156937 (= lt!650902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650777 mask!2687) lt!650777 lt!650780 mask!2687))))

(assert (=> d!156937 (validMask!0 mask!2687)))

(assert (=> d!156937 (= (seekEntryOrOpen!0 lt!650777 lt!650780 mask!2687) lt!650903)))

(declare-fun b!1493191 () Bool)

(assert (=> b!1493191 (= e!836508 (seekKeyOrZeroReturnVacant!0 (x!133477 lt!650902) (index!51889 lt!650902) (index!51889 lt!650902) lt!650777 lt!650780 mask!2687))))

(assert (= (and d!156937 c!138194) b!1493192))

(assert (= (and d!156937 (not c!138194)) b!1493189))

(assert (= (and b!1493189 c!138196) b!1493188))

(assert (= (and b!1493189 (not c!138196)) b!1493193))

(assert (= (and b!1493193 c!138195) b!1493190))

(assert (= (and b!1493193 (not c!138195)) b!1493191))

(declare-fun m!1377089 () Bool)

(assert (=> b!1493189 m!1377089))

(declare-fun m!1377091 () Bool)

(assert (=> d!156937 m!1377091))

(assert (=> d!156937 m!1376909))

(assert (=> d!156937 m!1376911))

(declare-fun m!1377093 () Bool)

(assert (=> d!156937 m!1377093))

(assert (=> d!156937 m!1376909))

(assert (=> d!156937 m!1376931))

(declare-fun m!1377095 () Bool)

(assert (=> d!156937 m!1377095))

(declare-fun m!1377097 () Bool)

(assert (=> b!1493191 m!1377097))

(assert (=> b!1492928 d!156937))

(declare-fun call!67969 () Bool)

(declare-fun bm!67966 () Bool)

(assert (=> bm!67966 (= call!67969 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1493234 () Bool)

(declare-fun e!836538 () Bool)

(assert (=> b!1493234 (= e!836538 call!67969)))

(declare-fun b!1493235 () Bool)

(declare-fun e!836536 () Bool)

(assert (=> b!1493235 (= e!836536 call!67969)))

(declare-fun b!1493236 () Bool)

(declare-fun e!836537 () Bool)

(assert (=> b!1493236 (= e!836537 e!836536)))

(declare-fun c!138210 () Bool)

(assert (=> b!1493236 (= c!138210 (validKeyInArray!0 (select (arr!48111 a!2862) j!93)))))

(declare-fun b!1493237 () Bool)

(assert (=> b!1493237 (= e!836536 e!836538)))

(declare-fun lt!650918 () (_ BitVec 64))

(assert (=> b!1493237 (= lt!650918 (select (arr!48111 a!2862) j!93))))

(declare-fun lt!650919 () Unit!50036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99691 (_ BitVec 64) (_ BitVec 32)) Unit!50036)

(assert (=> b!1493237 (= lt!650919 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650918 j!93))))

(declare-fun arrayContainsKey!0 (array!99691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1493237 (arrayContainsKey!0 a!2862 lt!650918 #b00000000000000000000000000000000)))

(declare-fun lt!650920 () Unit!50036)

(assert (=> b!1493237 (= lt!650920 lt!650919)))

(declare-fun res!1015879 () Bool)

(assert (=> b!1493237 (= res!1015879 (= (seekEntryOrOpen!0 (select (arr!48111 a!2862) j!93) a!2862 mask!2687) (Found!12374 j!93)))))

(assert (=> b!1493237 (=> (not res!1015879) (not e!836538))))

(declare-fun d!156943 () Bool)

(declare-fun res!1015880 () Bool)

(assert (=> d!156943 (=> res!1015880 e!836537)))

(assert (=> d!156943 (= res!1015880 (bvsge j!93 (size!48662 a!2862)))))

(assert (=> d!156943 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!836537)))

(assert (= (and d!156943 (not res!1015880)) b!1493236))

(assert (= (and b!1493236 c!138210) b!1493237))

(assert (= (and b!1493236 (not c!138210)) b!1493235))

(assert (= (and b!1493237 res!1015879) b!1493234))

(assert (= (or b!1493234 b!1493235) bm!67966))

(declare-fun m!1377121 () Bool)

(assert (=> bm!67966 m!1377121))

(assert (=> b!1493236 m!1376927))

(assert (=> b!1493236 m!1376927))

(assert (=> b!1493236 m!1376943))

(assert (=> b!1493237 m!1376927))

(declare-fun m!1377123 () Bool)

(assert (=> b!1493237 m!1377123))

(declare-fun m!1377125 () Bool)

(assert (=> b!1493237 m!1377125))

(assert (=> b!1493237 m!1376927))

(assert (=> b!1493237 m!1376929))

(assert (=> b!1492936 d!156943))

(declare-fun d!156953 () Bool)

(assert (=> d!156953 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!650932 () Unit!50036)

(declare-fun choose!38 (array!99691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50036)

(assert (=> d!156953 (= lt!650932 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156953 (validMask!0 mask!2687)))

(assert (=> d!156953 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!650932)))

(declare-fun bs!42874 () Bool)

(assert (= bs!42874 d!156953))

(assert (=> bs!42874 m!1376941))

(declare-fun m!1377139 () Bool)

(assert (=> bs!42874 m!1377139))

(assert (=> bs!42874 m!1376931))

(assert (=> b!1492936 d!156953))

(declare-fun b!1493242 () Bool)

(declare-fun lt!650933 () SeekEntryResult!12374)

(assert (=> b!1493242 (and (bvsge (index!51889 lt!650933) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650933) (size!48662 lt!650780)))))

(declare-fun res!1015884 () Bool)

(assert (=> b!1493242 (= res!1015884 (= (select (arr!48111 lt!650780) (index!51889 lt!650933)) lt!650777))))

(declare-fun e!836542 () Bool)

(assert (=> b!1493242 (=> res!1015884 e!836542)))

(declare-fun e!836544 () Bool)

(assert (=> b!1493242 (= e!836544 e!836542)))

(declare-fun b!1493243 () Bool)

(declare-fun e!836545 () SeekEntryResult!12374)

(assert (=> b!1493243 (= e!836545 (Intermediate!12374 false (toIndex!0 lt!650777 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493244 () Bool)

(assert (=> b!1493244 (= e!836545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!650777 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!650777 lt!650780 mask!2687))))

(declare-fun b!1493245 () Bool)

(declare-fun e!836546 () Bool)

(assert (=> b!1493245 (= e!836546 e!836544)))

(declare-fun res!1015885 () Bool)

(assert (=> b!1493245 (= res!1015885 (and (is-Intermediate!12374 lt!650933) (not (undefined!13186 lt!650933)) (bvslt (x!133477 lt!650933) #b01111111111111111111111111111110) (bvsge (x!133477 lt!650933) #b00000000000000000000000000000000) (bvsge (x!133477 lt!650933) #b00000000000000000000000000000000)))))

(assert (=> b!1493245 (=> (not res!1015885) (not e!836544))))

(declare-fun b!1493246 () Bool)

(declare-fun e!836543 () SeekEntryResult!12374)

(assert (=> b!1493246 (= e!836543 e!836545)))

(declare-fun c!138212 () Bool)

(declare-fun lt!650934 () (_ BitVec 64))

(assert (=> b!1493246 (= c!138212 (or (= lt!650934 lt!650777) (= (bvadd lt!650934 lt!650934) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156959 () Bool)

(assert (=> d!156959 e!836546))

(declare-fun c!138213 () Bool)

(assert (=> d!156959 (= c!138213 (and (is-Intermediate!12374 lt!650933) (undefined!13186 lt!650933)))))

(assert (=> d!156959 (= lt!650933 e!836543)))

(declare-fun c!138214 () Bool)

(assert (=> d!156959 (= c!138214 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156959 (= lt!650934 (select (arr!48111 lt!650780) (toIndex!0 lt!650777 mask!2687)))))

(assert (=> d!156959 (validMask!0 mask!2687)))

(assert (=> d!156959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650777 mask!2687) lt!650777 lt!650780 mask!2687) lt!650933)))

(declare-fun b!1493247 () Bool)

(assert (=> b!1493247 (and (bvsge (index!51889 lt!650933) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650933) (size!48662 lt!650780)))))

(assert (=> b!1493247 (= e!836542 (= (select (arr!48111 lt!650780) (index!51889 lt!650933)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493248 () Bool)

(assert (=> b!1493248 (= e!836546 (bvsge (x!133477 lt!650933) #b01111111111111111111111111111110))))

(declare-fun b!1493249 () Bool)

(assert (=> b!1493249 (= e!836543 (Intermediate!12374 true (toIndex!0 lt!650777 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1493250 () Bool)

(assert (=> b!1493250 (and (bvsge (index!51889 lt!650933) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650933) (size!48662 lt!650780)))))

(declare-fun res!1015883 () Bool)

(assert (=> b!1493250 (= res!1015883 (= (select (arr!48111 lt!650780) (index!51889 lt!650933)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493250 (=> res!1015883 e!836542)))

(assert (= (and d!156959 c!138214) b!1493249))

(assert (= (and d!156959 (not c!138214)) b!1493246))

(assert (= (and b!1493246 c!138212) b!1493243))

(assert (= (and b!1493246 (not c!138212)) b!1493244))

(assert (= (and d!156959 c!138213) b!1493248))

(assert (= (and d!156959 (not c!138213)) b!1493245))

(assert (= (and b!1493245 res!1015885) b!1493242))

(assert (= (and b!1493242 (not res!1015884)) b!1493250))

(assert (= (and b!1493250 (not res!1015883)) b!1493247))

(assert (=> b!1493244 m!1376909))

(declare-fun m!1377141 () Bool)

(assert (=> b!1493244 m!1377141))

(assert (=> b!1493244 m!1377141))

(declare-fun m!1377143 () Bool)

(assert (=> b!1493244 m!1377143))

(declare-fun m!1377145 () Bool)

(assert (=> b!1493247 m!1377145))

(assert (=> b!1493242 m!1377145))

(assert (=> b!1493250 m!1377145))

(assert (=> d!156959 m!1376909))

(declare-fun m!1377147 () Bool)

(assert (=> d!156959 m!1377147))

(assert (=> d!156959 m!1376931))

(assert (=> b!1492925 d!156959))

(declare-fun d!156961 () Bool)

(declare-fun lt!650936 () (_ BitVec 32))

(declare-fun lt!650935 () (_ BitVec 32))

(assert (=> d!156961 (= lt!650936 (bvmul (bvxor lt!650935 (bvlshr lt!650935 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156961 (= lt!650935 ((_ extract 31 0) (bvand (bvxor lt!650777 (bvlshr lt!650777 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156961 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015835 (let ((h!36176 ((_ extract 31 0) (bvand (bvxor lt!650777 (bvlshr lt!650777 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133486 (bvmul (bvxor h!36176 (bvlshr h!36176 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133486 (bvlshr x!133486 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015835 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015835 #b00000000000000000000000000000000))))))

(assert (=> d!156961 (= (toIndex!0 lt!650777 mask!2687) (bvand (bvxor lt!650936 (bvlshr lt!650936 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492925 d!156961))

(declare-fun d!156963 () Bool)

(assert (=> d!156963 (= (validKeyInArray!0 (select (arr!48111 a!2862) i!1006)) (and (not (= (select (arr!48111 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48111 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492934 d!156963))

(declare-fun d!156965 () Bool)

(declare-fun res!1015908 () Bool)

(declare-fun e!836578 () Bool)

(assert (=> d!156965 (=> res!1015908 e!836578)))

(assert (=> d!156965 (= res!1015908 (bvsge #b00000000000000000000000000000000 (size!48662 a!2862)))))

(assert (=> d!156965 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34789) e!836578)))

(declare-fun b!1493294 () Bool)

(declare-fun e!836579 () Bool)

(declare-fun call!67976 () Bool)

(assert (=> b!1493294 (= e!836579 call!67976)))

(declare-fun b!1493295 () Bool)

(assert (=> b!1493295 (= e!836579 call!67976)))

(declare-fun b!1493296 () Bool)

(declare-fun e!836580 () Bool)

(assert (=> b!1493296 (= e!836578 e!836580)))

(declare-fun res!1015907 () Bool)

(assert (=> b!1493296 (=> (not res!1015907) (not e!836580))))

(declare-fun e!836577 () Bool)

(assert (=> b!1493296 (= res!1015907 (not e!836577))))

(declare-fun res!1015909 () Bool)

(assert (=> b!1493296 (=> (not res!1015909) (not e!836577))))

(assert (=> b!1493296 (= res!1015909 (validKeyInArray!0 (select (arr!48111 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493297 () Bool)

(declare-fun contains!9939 (List!34792 (_ BitVec 64)) Bool)

(assert (=> b!1493297 (= e!836577 (contains!9939 Nil!34789 (select (arr!48111 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493298 () Bool)

(assert (=> b!1493298 (= e!836580 e!836579)))

(declare-fun c!138226 () Bool)

(assert (=> b!1493298 (= c!138226 (validKeyInArray!0 (select (arr!48111 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67973 () Bool)

(assert (=> bm!67973 (= call!67976 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138226 (Cons!34788 (select (arr!48111 a!2862) #b00000000000000000000000000000000) Nil!34789) Nil!34789)))))

(assert (= (and d!156965 (not res!1015908)) b!1493296))

(assert (= (and b!1493296 res!1015909) b!1493297))

(assert (= (and b!1493296 res!1015907) b!1493298))

(assert (= (and b!1493298 c!138226) b!1493294))

(assert (= (and b!1493298 (not c!138226)) b!1493295))

(assert (= (or b!1493294 b!1493295) bm!67973))

(declare-fun m!1377165 () Bool)

(assert (=> b!1493296 m!1377165))

(assert (=> b!1493296 m!1377165))

(declare-fun m!1377167 () Bool)

(assert (=> b!1493296 m!1377167))

(assert (=> b!1493297 m!1377165))

(assert (=> b!1493297 m!1377165))

(declare-fun m!1377169 () Bool)

(assert (=> b!1493297 m!1377169))

(assert (=> b!1493298 m!1377165))

(assert (=> b!1493298 m!1377165))

(assert (=> b!1493298 m!1377167))

(assert (=> bm!67973 m!1377165))

(declare-fun m!1377171 () Bool)

(assert (=> bm!67973 m!1377171))

(assert (=> b!1492923 d!156965))

(declare-fun b!1493299 () Bool)

(declare-fun lt!650943 () SeekEntryResult!12374)

(assert (=> b!1493299 (and (bvsge (index!51889 lt!650943) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650943) (size!48662 lt!650780)))))

(declare-fun res!1015911 () Bool)

(assert (=> b!1493299 (= res!1015911 (= (select (arr!48111 lt!650780) (index!51889 lt!650943)) lt!650777))))

(declare-fun e!836581 () Bool)

(assert (=> b!1493299 (=> res!1015911 e!836581)))

(declare-fun e!836583 () Bool)

(assert (=> b!1493299 (= e!836583 e!836581)))

(declare-fun b!1493300 () Bool)

(declare-fun e!836584 () SeekEntryResult!12374)

(assert (=> b!1493300 (= e!836584 (Intermediate!12374 false index!646 x!665))))

(declare-fun b!1493301 () Bool)

(assert (=> b!1493301 (= e!836584 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!650777 lt!650780 mask!2687))))

(declare-fun b!1493302 () Bool)

(declare-fun e!836585 () Bool)

(assert (=> b!1493302 (= e!836585 e!836583)))

(declare-fun res!1015912 () Bool)

(assert (=> b!1493302 (= res!1015912 (and (is-Intermediate!12374 lt!650943) (not (undefined!13186 lt!650943)) (bvslt (x!133477 lt!650943) #b01111111111111111111111111111110) (bvsge (x!133477 lt!650943) #b00000000000000000000000000000000) (bvsge (x!133477 lt!650943) x!665)))))

(assert (=> b!1493302 (=> (not res!1015912) (not e!836583))))

(declare-fun b!1493303 () Bool)

(declare-fun e!836582 () SeekEntryResult!12374)

(assert (=> b!1493303 (= e!836582 e!836584)))

(declare-fun c!138227 () Bool)

(declare-fun lt!650944 () (_ BitVec 64))

(assert (=> b!1493303 (= c!138227 (or (= lt!650944 lt!650777) (= (bvadd lt!650944 lt!650944) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!156973 () Bool)

(assert (=> d!156973 e!836585))

(declare-fun c!138228 () Bool)

(assert (=> d!156973 (= c!138228 (and (is-Intermediate!12374 lt!650943) (undefined!13186 lt!650943)))))

(assert (=> d!156973 (= lt!650943 e!836582)))

(declare-fun c!138229 () Bool)

(assert (=> d!156973 (= c!138229 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156973 (= lt!650944 (select (arr!48111 lt!650780) index!646))))

(assert (=> d!156973 (validMask!0 mask!2687)))

(assert (=> d!156973 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650777 lt!650780 mask!2687) lt!650943)))

(declare-fun b!1493304 () Bool)

(assert (=> b!1493304 (and (bvsge (index!51889 lt!650943) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650943) (size!48662 lt!650780)))))

(assert (=> b!1493304 (= e!836581 (= (select (arr!48111 lt!650780) (index!51889 lt!650943)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1493305 () Bool)

(assert (=> b!1493305 (= e!836585 (bvsge (x!133477 lt!650943) #b01111111111111111111111111111110))))

(declare-fun b!1493306 () Bool)

(assert (=> b!1493306 (= e!836582 (Intermediate!12374 true index!646 x!665))))

(declare-fun b!1493307 () Bool)

(assert (=> b!1493307 (and (bvsge (index!51889 lt!650943) #b00000000000000000000000000000000) (bvslt (index!51889 lt!650943) (size!48662 lt!650780)))))

(declare-fun res!1015910 () Bool)

(assert (=> b!1493307 (= res!1015910 (= (select (arr!48111 lt!650780) (index!51889 lt!650943)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493307 (=> res!1015910 e!836581)))

(assert (= (and d!156973 c!138229) b!1493306))

(assert (= (and d!156973 (not c!138229)) b!1493303))

(assert (= (and b!1493303 c!138227) b!1493300))

(assert (= (and b!1493303 (not c!138227)) b!1493301))

(assert (= (and d!156973 c!138228) b!1493305))

(assert (= (and d!156973 (not c!138228)) b!1493302))

(assert (= (and b!1493302 res!1015912) b!1493299))

(assert (= (and b!1493299 (not res!1015911)) b!1493307))

(assert (= (and b!1493307 (not res!1015910)) b!1493304))

(assert (=> b!1493301 m!1376925))

(assert (=> b!1493301 m!1376925))

(declare-fun m!1377173 () Bool)

(assert (=> b!1493301 m!1377173))

(declare-fun m!1377175 () Bool)

(assert (=> b!1493304 m!1377175))

(assert (=> b!1493299 m!1377175))

(assert (=> b!1493307 m!1377175))

(assert (=> d!156973 m!1377081))

(assert (=> d!156973 m!1376931))

(assert (=> b!1492924 d!156973))

(declare-fun d!156975 () Bool)

(assert (=> d!156975 (= (validKeyInArray!0 (select (arr!48111 a!2862) j!93)) (and (not (= (select (arr!48111 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48111 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492933 d!156975))

(declare-fun bm!67974 () Bool)

(declare-fun call!67977 () Bool)

(assert (=> bm!67974 (= call!67977 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1493308 () Bool)

(declare-fun e!836588 () Bool)

(assert (=> b!1493308 (= e!836588 call!67977)))

(declare-fun b!1493309 () Bool)

(declare-fun e!836586 () Bool)

(assert (=> b!1493309 (= e!836586 call!67977)))

(declare-fun b!1493310 () Bool)

(declare-fun e!836587 () Bool)

(assert (=> b!1493310 (= e!836587 e!836586)))

(declare-fun c!138230 () Bool)

(assert (=> b!1493310 (= c!138230 (validKeyInArray!0 (select (arr!48111 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1493311 () Bool)

(assert (=> b!1493311 (= e!836586 e!836588)))

(declare-fun lt!650945 () (_ BitVec 64))

(assert (=> b!1493311 (= lt!650945 (select (arr!48111 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!650946 () Unit!50036)

(assert (=> b!1493311 (= lt!650946 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650945 #b00000000000000000000000000000000))))

(assert (=> b!1493311 (arrayContainsKey!0 a!2862 lt!650945 #b00000000000000000000000000000000)))

(declare-fun lt!650947 () Unit!50036)

(assert (=> b!1493311 (= lt!650947 lt!650946)))

(declare-fun res!1015913 () Bool)

(assert (=> b!1493311 (= res!1015913 (= (seekEntryOrOpen!0 (select (arr!48111 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12374 #b00000000000000000000000000000000)))))

(assert (=> b!1493311 (=> (not res!1015913) (not e!836588))))

(declare-fun d!156977 () Bool)

(declare-fun res!1015914 () Bool)

(assert (=> d!156977 (=> res!1015914 e!836587)))

(assert (=> d!156977 (= res!1015914 (bvsge #b00000000000000000000000000000000 (size!48662 a!2862)))))

(assert (=> d!156977 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!836587)))

(assert (= (and d!156977 (not res!1015914)) b!1493310))

(assert (= (and b!1493310 c!138230) b!1493311))

(assert (= (and b!1493310 (not c!138230)) b!1493309))

(assert (= (and b!1493311 res!1015913) b!1493308))

(assert (= (or b!1493308 b!1493309) bm!67974))

(declare-fun m!1377177 () Bool)

(assert (=> bm!67974 m!1377177))

(assert (=> b!1493310 m!1377165))

(assert (=> b!1493310 m!1377165))

(assert (=> b!1493310 m!1377167))

(assert (=> b!1493311 m!1377165))

(declare-fun m!1377179 () Bool)

(assert (=> b!1493311 m!1377179))

(declare-fun m!1377181 () Bool)

(assert (=> b!1493311 m!1377181))

(assert (=> b!1493311 m!1377165))

(declare-fun m!1377183 () Bool)

(assert (=> b!1493311 m!1377183))

(assert (=> b!1492931 d!156977))

(declare-fun b!1493312 () Bool)

(declare-fun e!836591 () SeekEntryResult!12374)

(declare-fun lt!650948 () SeekEntryResult!12374)

(assert (=> b!1493312 (= e!836591 (Found!12374 (index!51889 lt!650948)))))

(declare-fun b!1493313 () Bool)

(declare-fun e!836590 () SeekEntryResult!12374)

(assert (=> b!1493313 (= e!836590 e!836591)))

(declare-fun lt!650950 () (_ BitVec 64))

(assert (=> b!1493313 (= lt!650950 (select (arr!48111 a!2862) (index!51889 lt!650948)))))

(declare-fun c!138233 () Bool)

(assert (=> b!1493313 (= c!138233 (= lt!650950 (select (arr!48111 a!2862) j!93)))))

(declare-fun b!1493314 () Bool)

(declare-fun e!836589 () SeekEntryResult!12374)

(assert (=> b!1493314 (= e!836589 (MissingZero!12374 (index!51889 lt!650948)))))

(declare-fun b!1493316 () Bool)

(assert (=> b!1493316 (= e!836590 Undefined!12374)))

(declare-fun b!1493317 () Bool)

(declare-fun c!138232 () Bool)

(assert (=> b!1493317 (= c!138232 (= lt!650950 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493317 (= e!836591 e!836589)))

(declare-fun d!156979 () Bool)

(declare-fun lt!650949 () SeekEntryResult!12374)

(assert (=> d!156979 (and (or (is-Undefined!12374 lt!650949) (not (is-Found!12374 lt!650949)) (and (bvsge (index!51888 lt!650949) #b00000000000000000000000000000000) (bvslt (index!51888 lt!650949) (size!48662 a!2862)))) (or (is-Undefined!12374 lt!650949) (is-Found!12374 lt!650949) (not (is-MissingZero!12374 lt!650949)) (and (bvsge (index!51887 lt!650949) #b00000000000000000000000000000000) (bvslt (index!51887 lt!650949) (size!48662 a!2862)))) (or (is-Undefined!12374 lt!650949) (is-Found!12374 lt!650949) (is-MissingZero!12374 lt!650949) (not (is-MissingVacant!12374 lt!650949)) (and (bvsge (index!51890 lt!650949) #b00000000000000000000000000000000) (bvslt (index!51890 lt!650949) (size!48662 a!2862)))) (or (is-Undefined!12374 lt!650949) (ite (is-Found!12374 lt!650949) (= (select (arr!48111 a!2862) (index!51888 lt!650949)) (select (arr!48111 a!2862) j!93)) (ite (is-MissingZero!12374 lt!650949) (= (select (arr!48111 a!2862) (index!51887 lt!650949)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12374 lt!650949) (= (select (arr!48111 a!2862) (index!51890 lt!650949)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156979 (= lt!650949 e!836590)))

(declare-fun c!138231 () Bool)

(assert (=> d!156979 (= c!138231 (and (is-Intermediate!12374 lt!650948) (undefined!13186 lt!650948)))))

(assert (=> d!156979 (= lt!650948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48111 a!2862) j!93) mask!2687) (select (arr!48111 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156979 (validMask!0 mask!2687)))

(assert (=> d!156979 (= (seekEntryOrOpen!0 (select (arr!48111 a!2862) j!93) a!2862 mask!2687) lt!650949)))

(declare-fun b!1493315 () Bool)

(assert (=> b!1493315 (= e!836589 (seekKeyOrZeroReturnVacant!0 (x!133477 lt!650948) (index!51889 lt!650948) (index!51889 lt!650948) (select (arr!48111 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156979 c!138231) b!1493316))

(assert (= (and d!156979 (not c!138231)) b!1493313))

(assert (= (and b!1493313 c!138233) b!1493312))

(assert (= (and b!1493313 (not c!138233)) b!1493317))

(assert (= (and b!1493317 c!138232) b!1493314))

(assert (= (and b!1493317 (not c!138232)) b!1493315))

(declare-fun m!1377185 () Bool)

(assert (=> b!1493313 m!1377185))

(declare-fun m!1377187 () Bool)

(assert (=> d!156979 m!1377187))

(assert (=> d!156979 m!1376949))

(assert (=> d!156979 m!1376927))

(assert (=> d!156979 m!1376951))

(declare-fun m!1377189 () Bool)

(assert (=> d!156979 m!1377189))

(assert (=> d!156979 m!1376927))

(assert (=> d!156979 m!1376949))

(assert (=> d!156979 m!1376931))

(declare-fun m!1377191 () Bool)

(assert (=> d!156979 m!1377191))

(assert (=> b!1493315 m!1376927))

(declare-fun m!1377193 () Bool)

(assert (=> b!1493315 m!1377193))

(assert (=> b!1492932 d!156979))

(push 1)

(assert (not b!1493315))

(assert (not b!1493050))

(assert (not bm!67974))

(assert (not d!156953))

(assert (not b!1493236))

(assert (not b!1493244))

(assert (not b!1493160))

(assert (not b!1493301))

(assert (not b!1493296))

(assert (not b!1493191))

(assert (not bm!67966))

(assert (not d!156893))

(assert (not bm!67973))

(assert (not d!156959))

(assert (not d!156979))

(assert (not d!156895))

(assert (not b!1493059))

(assert (not b!1493310))

(assert (not b!1493311))

(assert (not b!1493298))

(assert (not d!156919))

(assert (not d!156901))

(assert (not b!1493297))

(assert (not b!1493237))

(assert (not d!156937))

(assert (not d!156973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

