; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126102 () Bool)

(assert start!126102)

(declare-fun b!1475735 () Bool)

(declare-fun res!1002396 () Bool)

(declare-fun e!827990 () Bool)

(assert (=> b!1475735 (=> (not res!1002396) (not e!827990))))

(declare-fun e!827982 () Bool)

(assert (=> b!1475735 (= res!1002396 e!827982)))

(declare-fun c!136190 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1475735 (= c!136190 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1475736 () Bool)

(declare-fun e!827983 () Bool)

(assert (=> b!1475736 (= e!827983 e!827990)))

(declare-fun res!1002407 () Bool)

(assert (=> b!1475736 (=> (not res!1002407) (not e!827990))))

(declare-datatypes ((SeekEntryResult!12130 0))(
  ( (MissingZero!12130 (index!50911 (_ BitVec 32))) (Found!12130 (index!50912 (_ BitVec 32))) (Intermediate!12130 (undefined!12942 Bool) (index!50913 (_ BitVec 32)) (x!132507 (_ BitVec 32))) (Undefined!12130) (MissingVacant!12130 (index!50914 (_ BitVec 32))) )
))
(declare-fun lt!644717 () SeekEntryResult!12130)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1475736 (= res!1002407 (= lt!644717 (Intermediate!12130 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644718 () (_ BitVec 64))

(declare-datatypes ((array!99182 0))(
  ( (array!99183 (arr!47867 (Array (_ BitVec 32) (_ BitVec 64))) (size!48418 (_ BitVec 32))) )
))
(declare-fun lt!644716 () array!99182)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99182 (_ BitVec 32)) SeekEntryResult!12130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475736 (= lt!644717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644718 mask!2687) lt!644718 lt!644716 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99182)

(assert (=> b!1475736 (= lt!644718 (select (store (arr!47867 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1475737 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99182 (_ BitVec 32)) SeekEntryResult!12130)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99182 (_ BitVec 32)) SeekEntryResult!12130)

(assert (=> b!1475737 (= e!827982 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644718 lt!644716 mask!2687) (seekEntryOrOpen!0 lt!644718 lt!644716 mask!2687)))))

(declare-fun b!1475738 () Bool)

(declare-fun e!827986 () Bool)

(declare-fun e!827984 () Bool)

(assert (=> b!1475738 (= e!827986 e!827984)))

(declare-fun res!1002406 () Bool)

(assert (=> b!1475738 (=> (not res!1002406) (not e!827984))))

(declare-fun lt!644714 () SeekEntryResult!12130)

(assert (=> b!1475738 (= res!1002406 (= lt!644714 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47867 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475739 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1475739 (= e!827984 (= index!646 intermediateBeforeIndex!19))))

(declare-fun b!1475740 () Bool)

(declare-fun res!1002404 () Bool)

(declare-fun e!827988 () Bool)

(assert (=> b!1475740 (=> (not res!1002404) (not e!827988))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1475740 (= res!1002404 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48418 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48418 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48418 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1475742 () Bool)

(declare-fun res!1002397 () Bool)

(assert (=> b!1475742 (=> (not res!1002397) (not e!827988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99182 (_ BitVec 32)) Bool)

(assert (=> b!1475742 (= res!1002397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475743 () Bool)

(declare-fun res!1002403 () Bool)

(assert (=> b!1475743 (=> (not res!1002403) (not e!827990))))

(assert (=> b!1475743 (= res!1002403 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1475744 () Bool)

(declare-fun e!827989 () Bool)

(assert (=> b!1475744 (= e!827989 e!827983)))

(declare-fun res!1002399 () Bool)

(assert (=> b!1475744 (=> (not res!1002399) (not e!827983))))

(declare-fun lt!644715 () SeekEntryResult!12130)

(assert (=> b!1475744 (= res!1002399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644715))))

(assert (=> b!1475744 (= lt!644715 (Intermediate!12130 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1475745 () Bool)

(declare-fun res!1002411 () Bool)

(assert (=> b!1475745 (=> (not res!1002411) (not e!827988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475745 (= res!1002411 (validKeyInArray!0 (select (arr!47867 a!2862) i!1006)))))

(declare-fun b!1475746 () Bool)

(assert (=> b!1475746 (= e!827990 (not (or (and (= (select (arr!47867 a!2862) index!646) (select (store (arr!47867 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47867 a!2862) index!646) (select (arr!47867 a!2862) j!93))) (not (= (select (arr!47867 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= x!665 intermediateBeforeX!19))))))

(declare-fun e!827987 () Bool)

(assert (=> b!1475746 e!827987))

(declare-fun res!1002401 () Bool)

(assert (=> b!1475746 (=> (not res!1002401) (not e!827987))))

(assert (=> b!1475746 (= res!1002401 (and (= lt!644714 (Found!12130 j!93)) (or (= (select (arr!47867 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47867 a!2862) intermediateBeforeIndex!19) (select (arr!47867 a!2862) j!93)))))))

(assert (=> b!1475746 (= lt!644714 (seekEntryOrOpen!0 (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1475746 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49548 0))(
  ( (Unit!49549) )
))
(declare-fun lt!644719 () Unit!49548)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49548)

(assert (=> b!1475746 (= lt!644719 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475741 () Bool)

(assert (=> b!1475741 (= e!827987 e!827986)))

(declare-fun res!1002410 () Bool)

(assert (=> b!1475741 (=> res!1002410 e!827986)))

(assert (=> b!1475741 (= res!1002410 (or (and (= (select (arr!47867 a!2862) index!646) (select (store (arr!47867 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47867 a!2862) index!646) (select (arr!47867 a!2862) j!93))) (not (= (select (arr!47867 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1002405 () Bool)

(assert (=> start!126102 (=> (not res!1002405) (not e!827988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126102 (= res!1002405 (validMask!0 mask!2687))))

(assert (=> start!126102 e!827988))

(assert (=> start!126102 true))

(declare-fun array_inv!36812 (array!99182) Bool)

(assert (=> start!126102 (array_inv!36812 a!2862)))

(declare-fun b!1475747 () Bool)

(assert (=> b!1475747 (= e!827988 e!827989)))

(declare-fun res!1002409 () Bool)

(assert (=> b!1475747 (=> (not res!1002409) (not e!827989))))

(assert (=> b!1475747 (= res!1002409 (= (select (store (arr!47867 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475747 (= lt!644716 (array!99183 (store (arr!47867 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48418 a!2862)))))

(declare-fun b!1475748 () Bool)

(declare-fun res!1002398 () Bool)

(assert (=> b!1475748 (=> (not res!1002398) (not e!827988))))

(assert (=> b!1475748 (= res!1002398 (and (= (size!48418 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48418 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48418 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475749 () Bool)

(assert (=> b!1475749 (= e!827982 (= lt!644717 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644718 lt!644716 mask!2687)))))

(declare-fun b!1475750 () Bool)

(declare-fun res!1002408 () Bool)

(assert (=> b!1475750 (=> (not res!1002408) (not e!827988))))

(declare-datatypes ((List!34548 0))(
  ( (Nil!34545) (Cons!34544 (h!35909 (_ BitVec 64)) (t!49249 List!34548)) )
))
(declare-fun arrayNoDuplicates!0 (array!99182 (_ BitVec 32) List!34548) Bool)

(assert (=> b!1475750 (= res!1002408 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34545))))

(declare-fun b!1475751 () Bool)

(declare-fun res!1002400 () Bool)

(assert (=> b!1475751 (=> (not res!1002400) (not e!827988))))

(assert (=> b!1475751 (= res!1002400 (validKeyInArray!0 (select (arr!47867 a!2862) j!93)))))

(declare-fun b!1475752 () Bool)

(declare-fun res!1002402 () Bool)

(assert (=> b!1475752 (=> (not res!1002402) (not e!827983))))

(assert (=> b!1475752 (= res!1002402 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644715))))

(assert (= (and start!126102 res!1002405) b!1475748))

(assert (= (and b!1475748 res!1002398) b!1475745))

(assert (= (and b!1475745 res!1002411) b!1475751))

(assert (= (and b!1475751 res!1002400) b!1475742))

(assert (= (and b!1475742 res!1002397) b!1475750))

(assert (= (and b!1475750 res!1002408) b!1475740))

(assert (= (and b!1475740 res!1002404) b!1475747))

(assert (= (and b!1475747 res!1002409) b!1475744))

(assert (= (and b!1475744 res!1002399) b!1475752))

(assert (= (and b!1475752 res!1002402) b!1475736))

(assert (= (and b!1475736 res!1002407) b!1475735))

(assert (= (and b!1475735 c!136190) b!1475749))

(assert (= (and b!1475735 (not c!136190)) b!1475737))

(assert (= (and b!1475735 res!1002396) b!1475743))

(assert (= (and b!1475743 res!1002403) b!1475746))

(assert (= (and b!1475746 res!1002401) b!1475741))

(assert (= (and b!1475741 (not res!1002410)) b!1475738))

(assert (= (and b!1475738 res!1002406) b!1475739))

(declare-fun m!1361935 () Bool)

(assert (=> b!1475750 m!1361935))

(declare-fun m!1361937 () Bool)

(assert (=> b!1475736 m!1361937))

(assert (=> b!1475736 m!1361937))

(declare-fun m!1361939 () Bool)

(assert (=> b!1475736 m!1361939))

(declare-fun m!1361941 () Bool)

(assert (=> b!1475736 m!1361941))

(declare-fun m!1361943 () Bool)

(assert (=> b!1475736 m!1361943))

(declare-fun m!1361945 () Bool)

(assert (=> b!1475738 m!1361945))

(assert (=> b!1475738 m!1361945))

(declare-fun m!1361947 () Bool)

(assert (=> b!1475738 m!1361947))

(declare-fun m!1361949 () Bool)

(assert (=> b!1475742 m!1361949))

(assert (=> b!1475744 m!1361945))

(assert (=> b!1475744 m!1361945))

(declare-fun m!1361951 () Bool)

(assert (=> b!1475744 m!1361951))

(assert (=> b!1475744 m!1361951))

(assert (=> b!1475744 m!1361945))

(declare-fun m!1361953 () Bool)

(assert (=> b!1475744 m!1361953))

(declare-fun m!1361955 () Bool)

(assert (=> b!1475741 m!1361955))

(assert (=> b!1475741 m!1361941))

(declare-fun m!1361957 () Bool)

(assert (=> b!1475741 m!1361957))

(assert (=> b!1475741 m!1361945))

(assert (=> b!1475751 m!1361945))

(assert (=> b!1475751 m!1361945))

(declare-fun m!1361959 () Bool)

(assert (=> b!1475751 m!1361959))

(assert (=> b!1475752 m!1361945))

(assert (=> b!1475752 m!1361945))

(declare-fun m!1361961 () Bool)

(assert (=> b!1475752 m!1361961))

(declare-fun m!1361963 () Bool)

(assert (=> b!1475737 m!1361963))

(declare-fun m!1361965 () Bool)

(assert (=> b!1475737 m!1361965))

(declare-fun m!1361967 () Bool)

(assert (=> start!126102 m!1361967))

(declare-fun m!1361969 () Bool)

(assert (=> start!126102 m!1361969))

(declare-fun m!1361971 () Bool)

(assert (=> b!1475746 m!1361971))

(assert (=> b!1475746 m!1361941))

(declare-fun m!1361973 () Bool)

(assert (=> b!1475746 m!1361973))

(assert (=> b!1475746 m!1361957))

(assert (=> b!1475746 m!1361955))

(assert (=> b!1475746 m!1361945))

(declare-fun m!1361975 () Bool)

(assert (=> b!1475746 m!1361975))

(declare-fun m!1361977 () Bool)

(assert (=> b!1475746 m!1361977))

(assert (=> b!1475746 m!1361945))

(assert (=> b!1475747 m!1361941))

(declare-fun m!1361979 () Bool)

(assert (=> b!1475747 m!1361979))

(declare-fun m!1361981 () Bool)

(assert (=> b!1475749 m!1361981))

(declare-fun m!1361983 () Bool)

(assert (=> b!1475745 m!1361983))

(assert (=> b!1475745 m!1361983))

(declare-fun m!1361985 () Bool)

(assert (=> b!1475745 m!1361985))

(check-sat (not start!126102) (not b!1475738) (not b!1475742) (not b!1475736) (not b!1475750) (not b!1475737) (not b!1475745) (not b!1475746) (not b!1475744) (not b!1475752) (not b!1475749) (not b!1475751))
(check-sat)
(get-model)

(declare-fun d!155817 () Bool)

(assert (=> d!155817 (= (validKeyInArray!0 (select (arr!47867 a!2862) j!93)) (and (not (= (select (arr!47867 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47867 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475751 d!155817))

(declare-fun bm!67800 () Bool)

(declare-fun call!67803 () Bool)

(declare-fun c!136196 () Bool)

(assert (=> bm!67800 (= call!67803 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136196 (Cons!34544 (select (arr!47867 a!2862) #b00000000000000000000000000000000) Nil!34545) Nil!34545)))))

(declare-fun d!155819 () Bool)

(declare-fun res!1002468 () Bool)

(declare-fun e!828026 () Bool)

(assert (=> d!155819 (=> res!1002468 e!828026)))

(assert (=> d!155819 (= res!1002468 (bvsge #b00000000000000000000000000000000 (size!48418 a!2862)))))

(assert (=> d!155819 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34545) e!828026)))

(declare-fun b!1475817 () Bool)

(declare-fun e!828029 () Bool)

(assert (=> b!1475817 (= e!828029 call!67803)))

(declare-fun b!1475818 () Bool)

(assert (=> b!1475818 (= e!828029 call!67803)))

(declare-fun b!1475819 () Bool)

(declare-fun e!828027 () Bool)

(declare-fun contains!9921 (List!34548 (_ BitVec 64)) Bool)

(assert (=> b!1475819 (= e!828027 (contains!9921 Nil!34545 (select (arr!47867 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475820 () Bool)

(declare-fun e!828028 () Bool)

(assert (=> b!1475820 (= e!828028 e!828029)))

(assert (=> b!1475820 (= c!136196 (validKeyInArray!0 (select (arr!47867 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475821 () Bool)

(assert (=> b!1475821 (= e!828026 e!828028)))

(declare-fun res!1002466 () Bool)

(assert (=> b!1475821 (=> (not res!1002466) (not e!828028))))

(assert (=> b!1475821 (= res!1002466 (not e!828027))))

(declare-fun res!1002467 () Bool)

(assert (=> b!1475821 (=> (not res!1002467) (not e!828027))))

(assert (=> b!1475821 (= res!1002467 (validKeyInArray!0 (select (arr!47867 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!155819 (not res!1002468)) b!1475821))

(assert (= (and b!1475821 res!1002467) b!1475819))

(assert (= (and b!1475821 res!1002466) b!1475820))

(assert (= (and b!1475820 c!136196) b!1475817))

(assert (= (and b!1475820 (not c!136196)) b!1475818))

(assert (= (or b!1475817 b!1475818) bm!67800))

(declare-fun m!1362039 () Bool)

(assert (=> bm!67800 m!1362039))

(declare-fun m!1362041 () Bool)

(assert (=> bm!67800 m!1362041))

(assert (=> b!1475819 m!1362039))

(assert (=> b!1475819 m!1362039))

(declare-fun m!1362043 () Bool)

(assert (=> b!1475819 m!1362043))

(assert (=> b!1475820 m!1362039))

(assert (=> b!1475820 m!1362039))

(declare-fun m!1362045 () Bool)

(assert (=> b!1475820 m!1362045))

(assert (=> b!1475821 m!1362039))

(assert (=> b!1475821 m!1362039))

(assert (=> b!1475821 m!1362045))

(assert (=> b!1475750 d!155819))

(declare-fun d!155821 () Bool)

(declare-fun e!828042 () Bool)

(assert (=> d!155821 e!828042))

(declare-fun c!136205 () Bool)

(declare-fun lt!644743 () SeekEntryResult!12130)

(get-info :version)

(assert (=> d!155821 (= c!136205 (and ((_ is Intermediate!12130) lt!644743) (undefined!12942 lt!644743)))))

(declare-fun e!828041 () SeekEntryResult!12130)

(assert (=> d!155821 (= lt!644743 e!828041)))

(declare-fun c!136204 () Bool)

(assert (=> d!155821 (= c!136204 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644742 () (_ BitVec 64))

(assert (=> d!155821 (= lt!644742 (select (arr!47867 a!2862) index!646))))

(assert (=> d!155821 (validMask!0 mask!2687)))

(assert (=> d!155821 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644743)))

(declare-fun e!828044 () SeekEntryResult!12130)

(declare-fun b!1475840 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475840 (= e!828044 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475841 () Bool)

(assert (=> b!1475841 (= e!828044 (Intermediate!12130 false index!646 x!665))))

(declare-fun b!1475842 () Bool)

(assert (=> b!1475842 (and (bvsge (index!50913 lt!644743) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644743) (size!48418 a!2862)))))

(declare-fun e!828040 () Bool)

(assert (=> b!1475842 (= e!828040 (= (select (arr!47867 a!2862) (index!50913 lt!644743)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475843 () Bool)

(assert (=> b!1475843 (= e!828042 (bvsge (x!132507 lt!644743) #b01111111111111111111111111111110))))

(declare-fun b!1475844 () Bool)

(declare-fun e!828043 () Bool)

(assert (=> b!1475844 (= e!828042 e!828043)))

(declare-fun res!1002476 () Bool)

(assert (=> b!1475844 (= res!1002476 (and ((_ is Intermediate!12130) lt!644743) (not (undefined!12942 lt!644743)) (bvslt (x!132507 lt!644743) #b01111111111111111111111111111110) (bvsge (x!132507 lt!644743) #b00000000000000000000000000000000) (bvsge (x!132507 lt!644743) x!665)))))

(assert (=> b!1475844 (=> (not res!1002476) (not e!828043))))

(declare-fun b!1475845 () Bool)

(assert (=> b!1475845 (= e!828041 e!828044)))

(declare-fun c!136203 () Bool)

(assert (=> b!1475845 (= c!136203 (or (= lt!644742 (select (arr!47867 a!2862) j!93)) (= (bvadd lt!644742 lt!644742) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475846 () Bool)

(assert (=> b!1475846 (= e!828041 (Intermediate!12130 true index!646 x!665))))

(declare-fun b!1475847 () Bool)

(assert (=> b!1475847 (and (bvsge (index!50913 lt!644743) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644743) (size!48418 a!2862)))))

(declare-fun res!1002475 () Bool)

(assert (=> b!1475847 (= res!1002475 (= (select (arr!47867 a!2862) (index!50913 lt!644743)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475847 (=> res!1002475 e!828040)))

(declare-fun b!1475848 () Bool)

(assert (=> b!1475848 (and (bvsge (index!50913 lt!644743) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644743) (size!48418 a!2862)))))

(declare-fun res!1002477 () Bool)

(assert (=> b!1475848 (= res!1002477 (= (select (arr!47867 a!2862) (index!50913 lt!644743)) (select (arr!47867 a!2862) j!93)))))

(assert (=> b!1475848 (=> res!1002477 e!828040)))

(assert (=> b!1475848 (= e!828043 e!828040)))

(assert (= (and d!155821 c!136204) b!1475846))

(assert (= (and d!155821 (not c!136204)) b!1475845))

(assert (= (and b!1475845 c!136203) b!1475841))

(assert (= (and b!1475845 (not c!136203)) b!1475840))

(assert (= (and d!155821 c!136205) b!1475843))

(assert (= (and d!155821 (not c!136205)) b!1475844))

(assert (= (and b!1475844 res!1002476) b!1475848))

(assert (= (and b!1475848 (not res!1002477)) b!1475847))

(assert (= (and b!1475847 (not res!1002475)) b!1475842))

(declare-fun m!1362047 () Bool)

(assert (=> b!1475848 m!1362047))

(assert (=> b!1475842 m!1362047))

(declare-fun m!1362049 () Bool)

(assert (=> b!1475840 m!1362049))

(assert (=> b!1475840 m!1362049))

(assert (=> b!1475840 m!1361945))

(declare-fun m!1362051 () Bool)

(assert (=> b!1475840 m!1362051))

(assert (=> d!155821 m!1361955))

(assert (=> d!155821 m!1361967))

(assert (=> b!1475847 m!1362047))

(assert (=> b!1475752 d!155821))

(declare-fun d!155823 () Bool)

(assert (=> d!155823 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126102 d!155823))

(declare-fun d!155825 () Bool)

(assert (=> d!155825 (= (array_inv!36812 a!2862) (bvsge (size!48418 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126102 d!155825))

(declare-fun b!1475861 () Bool)

(declare-fun e!828051 () SeekEntryResult!12130)

(assert (=> b!1475861 (= e!828051 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644718 lt!644716 mask!2687))))

(declare-fun d!155827 () Bool)

(declare-fun lt!644748 () SeekEntryResult!12130)

(assert (=> d!155827 (and (or ((_ is Undefined!12130) lt!644748) (not ((_ is Found!12130) lt!644748)) (and (bvsge (index!50912 lt!644748) #b00000000000000000000000000000000) (bvslt (index!50912 lt!644748) (size!48418 lt!644716)))) (or ((_ is Undefined!12130) lt!644748) ((_ is Found!12130) lt!644748) (not ((_ is MissingVacant!12130) lt!644748)) (not (= (index!50914 lt!644748) intermediateAfterIndex!19)) (and (bvsge (index!50914 lt!644748) #b00000000000000000000000000000000) (bvslt (index!50914 lt!644748) (size!48418 lt!644716)))) (or ((_ is Undefined!12130) lt!644748) (ite ((_ is Found!12130) lt!644748) (= (select (arr!47867 lt!644716) (index!50912 lt!644748)) lt!644718) (and ((_ is MissingVacant!12130) lt!644748) (= (index!50914 lt!644748) intermediateAfterIndex!19) (= (select (arr!47867 lt!644716) (index!50914 lt!644748)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!828053 () SeekEntryResult!12130)

(assert (=> d!155827 (= lt!644748 e!828053)))

(declare-fun c!136214 () Bool)

(assert (=> d!155827 (= c!136214 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644749 () (_ BitVec 64))

(assert (=> d!155827 (= lt!644749 (select (arr!47867 lt!644716) index!646))))

(assert (=> d!155827 (validMask!0 mask!2687)))

(assert (=> d!155827 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644718 lt!644716 mask!2687) lt!644748)))

(declare-fun b!1475862 () Bool)

(declare-fun e!828052 () SeekEntryResult!12130)

(assert (=> b!1475862 (= e!828052 (Found!12130 index!646))))

(declare-fun b!1475863 () Bool)

(assert (=> b!1475863 (= e!828051 (MissingVacant!12130 intermediateAfterIndex!19))))

(declare-fun b!1475864 () Bool)

(assert (=> b!1475864 (= e!828053 Undefined!12130)))

(declare-fun b!1475865 () Bool)

(declare-fun c!136213 () Bool)

(assert (=> b!1475865 (= c!136213 (= lt!644749 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475865 (= e!828052 e!828051)))

(declare-fun b!1475866 () Bool)

(assert (=> b!1475866 (= e!828053 e!828052)))

(declare-fun c!136212 () Bool)

(assert (=> b!1475866 (= c!136212 (= lt!644749 lt!644718))))

(assert (= (and d!155827 c!136214) b!1475864))

(assert (= (and d!155827 (not c!136214)) b!1475866))

(assert (= (and b!1475866 c!136212) b!1475862))

(assert (= (and b!1475866 (not c!136212)) b!1475865))

(assert (= (and b!1475865 c!136213) b!1475863))

(assert (= (and b!1475865 (not c!136213)) b!1475861))

(assert (=> b!1475861 m!1362049))

(assert (=> b!1475861 m!1362049))

(declare-fun m!1362053 () Bool)

(assert (=> b!1475861 m!1362053))

(declare-fun m!1362055 () Bool)

(assert (=> d!155827 m!1362055))

(declare-fun m!1362057 () Bool)

(assert (=> d!155827 m!1362057))

(declare-fun m!1362059 () Bool)

(assert (=> d!155827 m!1362059))

(assert (=> d!155827 m!1361967))

(assert (=> b!1475737 d!155827))

(declare-fun b!1475906 () Bool)

(declare-fun c!136231 () Bool)

(declare-fun lt!644762 () (_ BitVec 64))

(assert (=> b!1475906 (= c!136231 (= lt!644762 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828077 () SeekEntryResult!12130)

(declare-fun e!828076 () SeekEntryResult!12130)

(assert (=> b!1475906 (= e!828077 e!828076)))

(declare-fun b!1475907 () Bool)

(declare-fun e!828075 () SeekEntryResult!12130)

(assert (=> b!1475907 (= e!828075 Undefined!12130)))

(declare-fun d!155831 () Bool)

(declare-fun lt!644764 () SeekEntryResult!12130)

(assert (=> d!155831 (and (or ((_ is Undefined!12130) lt!644764) (not ((_ is Found!12130) lt!644764)) (and (bvsge (index!50912 lt!644764) #b00000000000000000000000000000000) (bvslt (index!50912 lt!644764) (size!48418 lt!644716)))) (or ((_ is Undefined!12130) lt!644764) ((_ is Found!12130) lt!644764) (not ((_ is MissingZero!12130) lt!644764)) (and (bvsge (index!50911 lt!644764) #b00000000000000000000000000000000) (bvslt (index!50911 lt!644764) (size!48418 lt!644716)))) (or ((_ is Undefined!12130) lt!644764) ((_ is Found!12130) lt!644764) ((_ is MissingZero!12130) lt!644764) (not ((_ is MissingVacant!12130) lt!644764)) (and (bvsge (index!50914 lt!644764) #b00000000000000000000000000000000) (bvslt (index!50914 lt!644764) (size!48418 lt!644716)))) (or ((_ is Undefined!12130) lt!644764) (ite ((_ is Found!12130) lt!644764) (= (select (arr!47867 lt!644716) (index!50912 lt!644764)) lt!644718) (ite ((_ is MissingZero!12130) lt!644764) (= (select (arr!47867 lt!644716) (index!50911 lt!644764)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12130) lt!644764) (= (select (arr!47867 lt!644716) (index!50914 lt!644764)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155831 (= lt!644764 e!828075)))

(declare-fun c!136232 () Bool)

(declare-fun lt!644763 () SeekEntryResult!12130)

(assert (=> d!155831 (= c!136232 (and ((_ is Intermediate!12130) lt!644763) (undefined!12942 lt!644763)))))

(assert (=> d!155831 (= lt!644763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644718 mask!2687) lt!644718 lt!644716 mask!2687))))

(assert (=> d!155831 (validMask!0 mask!2687)))

(assert (=> d!155831 (= (seekEntryOrOpen!0 lt!644718 lt!644716 mask!2687) lt!644764)))

(declare-fun b!1475908 () Bool)

(assert (=> b!1475908 (= e!828075 e!828077)))

(assert (=> b!1475908 (= lt!644762 (select (arr!47867 lt!644716) (index!50913 lt!644763)))))

(declare-fun c!136230 () Bool)

(assert (=> b!1475908 (= c!136230 (= lt!644762 lt!644718))))

(declare-fun b!1475909 () Bool)

(assert (=> b!1475909 (= e!828076 (seekKeyOrZeroReturnVacant!0 (x!132507 lt!644763) (index!50913 lt!644763) (index!50913 lt!644763) lt!644718 lt!644716 mask!2687))))

(declare-fun b!1475910 () Bool)

(assert (=> b!1475910 (= e!828076 (MissingZero!12130 (index!50913 lt!644763)))))

(declare-fun b!1475911 () Bool)

(assert (=> b!1475911 (= e!828077 (Found!12130 (index!50913 lt!644763)))))

(assert (= (and d!155831 c!136232) b!1475907))

(assert (= (and d!155831 (not c!136232)) b!1475908))

(assert (= (and b!1475908 c!136230) b!1475911))

(assert (= (and b!1475908 (not c!136230)) b!1475906))

(assert (= (and b!1475906 c!136231) b!1475910))

(assert (= (and b!1475906 (not c!136231)) b!1475909))

(declare-fun m!1362069 () Bool)

(assert (=> d!155831 m!1362069))

(declare-fun m!1362071 () Bool)

(assert (=> d!155831 m!1362071))

(assert (=> d!155831 m!1361937))

(assert (=> d!155831 m!1361939))

(declare-fun m!1362073 () Bool)

(assert (=> d!155831 m!1362073))

(assert (=> d!155831 m!1361967))

(assert (=> d!155831 m!1361937))

(declare-fun m!1362075 () Bool)

(assert (=> b!1475908 m!1362075))

(declare-fun m!1362077 () Bool)

(assert (=> b!1475909 m!1362077))

(assert (=> b!1475737 d!155831))

(declare-fun d!155837 () Bool)

(declare-fun e!828080 () Bool)

(assert (=> d!155837 e!828080))

(declare-fun c!136235 () Bool)

(declare-fun lt!644766 () SeekEntryResult!12130)

(assert (=> d!155837 (= c!136235 (and ((_ is Intermediate!12130) lt!644766) (undefined!12942 lt!644766)))))

(declare-fun e!828079 () SeekEntryResult!12130)

(assert (=> d!155837 (= lt!644766 e!828079)))

(declare-fun c!136234 () Bool)

(assert (=> d!155837 (= c!136234 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644765 () (_ BitVec 64))

(assert (=> d!155837 (= lt!644765 (select (arr!47867 lt!644716) index!646))))

(assert (=> d!155837 (validMask!0 mask!2687)))

(assert (=> d!155837 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644718 lt!644716 mask!2687) lt!644766)))

(declare-fun e!828082 () SeekEntryResult!12130)

(declare-fun b!1475912 () Bool)

(assert (=> b!1475912 (= e!828082 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644718 lt!644716 mask!2687))))

(declare-fun b!1475913 () Bool)

(assert (=> b!1475913 (= e!828082 (Intermediate!12130 false index!646 x!665))))

(declare-fun b!1475914 () Bool)

(assert (=> b!1475914 (and (bvsge (index!50913 lt!644766) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644766) (size!48418 lt!644716)))))

(declare-fun e!828078 () Bool)

(assert (=> b!1475914 (= e!828078 (= (select (arr!47867 lt!644716) (index!50913 lt!644766)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475915 () Bool)

(assert (=> b!1475915 (= e!828080 (bvsge (x!132507 lt!644766) #b01111111111111111111111111111110))))

(declare-fun b!1475916 () Bool)

(declare-fun e!828081 () Bool)

(assert (=> b!1475916 (= e!828080 e!828081)))

(declare-fun res!1002489 () Bool)

(assert (=> b!1475916 (= res!1002489 (and ((_ is Intermediate!12130) lt!644766) (not (undefined!12942 lt!644766)) (bvslt (x!132507 lt!644766) #b01111111111111111111111111111110) (bvsge (x!132507 lt!644766) #b00000000000000000000000000000000) (bvsge (x!132507 lt!644766) x!665)))))

(assert (=> b!1475916 (=> (not res!1002489) (not e!828081))))

(declare-fun b!1475917 () Bool)

(assert (=> b!1475917 (= e!828079 e!828082)))

(declare-fun c!136233 () Bool)

(assert (=> b!1475917 (= c!136233 (or (= lt!644765 lt!644718) (= (bvadd lt!644765 lt!644765) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475918 () Bool)

(assert (=> b!1475918 (= e!828079 (Intermediate!12130 true index!646 x!665))))

(declare-fun b!1475919 () Bool)

(assert (=> b!1475919 (and (bvsge (index!50913 lt!644766) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644766) (size!48418 lt!644716)))))

(declare-fun res!1002488 () Bool)

(assert (=> b!1475919 (= res!1002488 (= (select (arr!47867 lt!644716) (index!50913 lt!644766)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475919 (=> res!1002488 e!828078)))

(declare-fun b!1475920 () Bool)

(assert (=> b!1475920 (and (bvsge (index!50913 lt!644766) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644766) (size!48418 lt!644716)))))

(declare-fun res!1002490 () Bool)

(assert (=> b!1475920 (= res!1002490 (= (select (arr!47867 lt!644716) (index!50913 lt!644766)) lt!644718))))

(assert (=> b!1475920 (=> res!1002490 e!828078)))

(assert (=> b!1475920 (= e!828081 e!828078)))

(assert (= (and d!155837 c!136234) b!1475918))

(assert (= (and d!155837 (not c!136234)) b!1475917))

(assert (= (and b!1475917 c!136233) b!1475913))

(assert (= (and b!1475917 (not c!136233)) b!1475912))

(assert (= (and d!155837 c!136235) b!1475915))

(assert (= (and d!155837 (not c!136235)) b!1475916))

(assert (= (and b!1475916 res!1002489) b!1475920))

(assert (= (and b!1475920 (not res!1002490)) b!1475919))

(assert (= (and b!1475919 (not res!1002488)) b!1475914))

(declare-fun m!1362079 () Bool)

(assert (=> b!1475920 m!1362079))

(assert (=> b!1475914 m!1362079))

(assert (=> b!1475912 m!1362049))

(assert (=> b!1475912 m!1362049))

(declare-fun m!1362081 () Bool)

(assert (=> b!1475912 m!1362081))

(assert (=> d!155837 m!1362059))

(assert (=> d!155837 m!1361967))

(assert (=> b!1475919 m!1362079))

(assert (=> b!1475749 d!155837))

(declare-fun e!828083 () SeekEntryResult!12130)

(declare-fun b!1475921 () Bool)

(assert (=> b!1475921 (= e!828083 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(declare-fun lt!644771 () SeekEntryResult!12130)

(declare-fun d!155839 () Bool)

(assert (=> d!155839 (and (or ((_ is Undefined!12130) lt!644771) (not ((_ is Found!12130) lt!644771)) (and (bvsge (index!50912 lt!644771) #b00000000000000000000000000000000) (bvslt (index!50912 lt!644771) (size!48418 a!2862)))) (or ((_ is Undefined!12130) lt!644771) ((_ is Found!12130) lt!644771) (not ((_ is MissingVacant!12130) lt!644771)) (not (= (index!50914 lt!644771) index!646)) (and (bvsge (index!50914 lt!644771) #b00000000000000000000000000000000) (bvslt (index!50914 lt!644771) (size!48418 a!2862)))) (or ((_ is Undefined!12130) lt!644771) (ite ((_ is Found!12130) lt!644771) (= (select (arr!47867 a!2862) (index!50912 lt!644771)) (select (arr!47867 a!2862) j!93)) (and ((_ is MissingVacant!12130) lt!644771) (= (index!50914 lt!644771) index!646) (= (select (arr!47867 a!2862) (index!50914 lt!644771)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!828085 () SeekEntryResult!12130)

(assert (=> d!155839 (= lt!644771 e!828085)))

(declare-fun c!136238 () Bool)

(assert (=> d!155839 (= c!136238 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644772 () (_ BitVec 64))

(assert (=> d!155839 (= lt!644772 (select (arr!47867 a!2862) index!646))))

(assert (=> d!155839 (validMask!0 mask!2687)))

(assert (=> d!155839 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644771)))

(declare-fun b!1475922 () Bool)

(declare-fun e!828084 () SeekEntryResult!12130)

(assert (=> b!1475922 (= e!828084 (Found!12130 index!646))))

(declare-fun b!1475923 () Bool)

(assert (=> b!1475923 (= e!828083 (MissingVacant!12130 index!646))))

(declare-fun b!1475924 () Bool)

(assert (=> b!1475924 (= e!828085 Undefined!12130)))

(declare-fun b!1475925 () Bool)

(declare-fun c!136237 () Bool)

(assert (=> b!1475925 (= c!136237 (= lt!644772 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475925 (= e!828084 e!828083)))

(declare-fun b!1475926 () Bool)

(assert (=> b!1475926 (= e!828085 e!828084)))

(declare-fun c!136236 () Bool)

(assert (=> b!1475926 (= c!136236 (= lt!644772 (select (arr!47867 a!2862) j!93)))))

(assert (= (and d!155839 c!136238) b!1475924))

(assert (= (and d!155839 (not c!136238)) b!1475926))

(assert (= (and b!1475926 c!136236) b!1475922))

(assert (= (and b!1475926 (not c!136236)) b!1475925))

(assert (= (and b!1475925 c!136237) b!1475923))

(assert (= (and b!1475925 (not c!136237)) b!1475921))

(assert (=> b!1475921 m!1362049))

(assert (=> b!1475921 m!1362049))

(assert (=> b!1475921 m!1361945))

(declare-fun m!1362083 () Bool)

(assert (=> b!1475921 m!1362083))

(declare-fun m!1362085 () Bool)

(assert (=> d!155839 m!1362085))

(declare-fun m!1362087 () Bool)

(assert (=> d!155839 m!1362087))

(assert (=> d!155839 m!1361955))

(assert (=> d!155839 m!1361967))

(assert (=> b!1475738 d!155839))

(declare-fun d!155841 () Bool)

(assert (=> d!155841 (= (validKeyInArray!0 (select (arr!47867 a!2862) i!1006)) (and (not (= (select (arr!47867 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47867 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475745 d!155841))

(declare-fun d!155845 () Bool)

(declare-fun e!828093 () Bool)

(assert (=> d!155845 e!828093))

(declare-fun c!136244 () Bool)

(declare-fun lt!644778 () SeekEntryResult!12130)

(assert (=> d!155845 (= c!136244 (and ((_ is Intermediate!12130) lt!644778) (undefined!12942 lt!644778)))))

(declare-fun e!828092 () SeekEntryResult!12130)

(assert (=> d!155845 (= lt!644778 e!828092)))

(declare-fun c!136243 () Bool)

(assert (=> d!155845 (= c!136243 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644777 () (_ BitVec 64))

(assert (=> d!155845 (= lt!644777 (select (arr!47867 lt!644716) (toIndex!0 lt!644718 mask!2687)))))

(assert (=> d!155845 (validMask!0 mask!2687)))

(assert (=> d!155845 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644718 mask!2687) lt!644718 lt!644716 mask!2687) lt!644778)))

(declare-fun e!828095 () SeekEntryResult!12130)

(declare-fun b!1475936 () Bool)

(assert (=> b!1475936 (= e!828095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644718 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644718 lt!644716 mask!2687))))

(declare-fun b!1475937 () Bool)

(assert (=> b!1475937 (= e!828095 (Intermediate!12130 false (toIndex!0 lt!644718 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475938 () Bool)

(assert (=> b!1475938 (and (bvsge (index!50913 lt!644778) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644778) (size!48418 lt!644716)))))

(declare-fun e!828091 () Bool)

(assert (=> b!1475938 (= e!828091 (= (select (arr!47867 lt!644716) (index!50913 lt!644778)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475939 () Bool)

(assert (=> b!1475939 (= e!828093 (bvsge (x!132507 lt!644778) #b01111111111111111111111111111110))))

(declare-fun b!1475940 () Bool)

(declare-fun e!828094 () Bool)

(assert (=> b!1475940 (= e!828093 e!828094)))

(declare-fun res!1002495 () Bool)

(assert (=> b!1475940 (= res!1002495 (and ((_ is Intermediate!12130) lt!644778) (not (undefined!12942 lt!644778)) (bvslt (x!132507 lt!644778) #b01111111111111111111111111111110) (bvsge (x!132507 lt!644778) #b00000000000000000000000000000000) (bvsge (x!132507 lt!644778) #b00000000000000000000000000000000)))))

(assert (=> b!1475940 (=> (not res!1002495) (not e!828094))))

(declare-fun b!1475941 () Bool)

(assert (=> b!1475941 (= e!828092 e!828095)))

(declare-fun c!136242 () Bool)

(assert (=> b!1475941 (= c!136242 (or (= lt!644777 lt!644718) (= (bvadd lt!644777 lt!644777) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475942 () Bool)

(assert (=> b!1475942 (= e!828092 (Intermediate!12130 true (toIndex!0 lt!644718 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475943 () Bool)

(assert (=> b!1475943 (and (bvsge (index!50913 lt!644778) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644778) (size!48418 lt!644716)))))

(declare-fun res!1002494 () Bool)

(assert (=> b!1475943 (= res!1002494 (= (select (arr!47867 lt!644716) (index!50913 lt!644778)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475943 (=> res!1002494 e!828091)))

(declare-fun b!1475944 () Bool)

(assert (=> b!1475944 (and (bvsge (index!50913 lt!644778) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644778) (size!48418 lt!644716)))))

(declare-fun res!1002496 () Bool)

(assert (=> b!1475944 (= res!1002496 (= (select (arr!47867 lt!644716) (index!50913 lt!644778)) lt!644718))))

(assert (=> b!1475944 (=> res!1002496 e!828091)))

(assert (=> b!1475944 (= e!828094 e!828091)))

(assert (= (and d!155845 c!136243) b!1475942))

(assert (= (and d!155845 (not c!136243)) b!1475941))

(assert (= (and b!1475941 c!136242) b!1475937))

(assert (= (and b!1475941 (not c!136242)) b!1475936))

(assert (= (and d!155845 c!136244) b!1475939))

(assert (= (and d!155845 (not c!136244)) b!1475940))

(assert (= (and b!1475940 res!1002495) b!1475944))

(assert (= (and b!1475944 (not res!1002496)) b!1475943))

(assert (= (and b!1475943 (not res!1002494)) b!1475938))

(declare-fun m!1362093 () Bool)

(assert (=> b!1475944 m!1362093))

(assert (=> b!1475938 m!1362093))

(assert (=> b!1475936 m!1361937))

(declare-fun m!1362099 () Bool)

(assert (=> b!1475936 m!1362099))

(assert (=> b!1475936 m!1362099))

(declare-fun m!1362101 () Bool)

(assert (=> b!1475936 m!1362101))

(assert (=> d!155845 m!1361937))

(declare-fun m!1362103 () Bool)

(assert (=> d!155845 m!1362103))

(assert (=> d!155845 m!1361967))

(assert (=> b!1475943 m!1362093))

(assert (=> b!1475736 d!155845))

(declare-fun d!155849 () Bool)

(declare-fun lt!644793 () (_ BitVec 32))

(declare-fun lt!644792 () (_ BitVec 32))

(assert (=> d!155849 (= lt!644793 (bvmul (bvxor lt!644792 (bvlshr lt!644792 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155849 (= lt!644792 ((_ extract 31 0) (bvand (bvxor lt!644718 (bvlshr lt!644718 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155849 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002497 (let ((h!35912 ((_ extract 31 0) (bvand (bvxor lt!644718 (bvlshr lt!644718 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132513 (bvmul (bvxor h!35912 (bvlshr h!35912 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132513 (bvlshr x!132513 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002497 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002497 #b00000000000000000000000000000000))))))

(assert (=> d!155849 (= (toIndex!0 lt!644718 mask!2687) (bvand (bvxor lt!644793 (bvlshr lt!644793 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475736 d!155849))

(declare-fun b!1475963 () Bool)

(declare-fun c!136255 () Bool)

(declare-fun lt!644794 () (_ BitVec 64))

(assert (=> b!1475963 (= c!136255 (= lt!644794 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!828107 () SeekEntryResult!12130)

(declare-fun e!828106 () SeekEntryResult!12130)

(assert (=> b!1475963 (= e!828107 e!828106)))

(declare-fun b!1475964 () Bool)

(declare-fun e!828105 () SeekEntryResult!12130)

(assert (=> b!1475964 (= e!828105 Undefined!12130)))

(declare-fun d!155855 () Bool)

(declare-fun lt!644796 () SeekEntryResult!12130)

(assert (=> d!155855 (and (or ((_ is Undefined!12130) lt!644796) (not ((_ is Found!12130) lt!644796)) (and (bvsge (index!50912 lt!644796) #b00000000000000000000000000000000) (bvslt (index!50912 lt!644796) (size!48418 a!2862)))) (or ((_ is Undefined!12130) lt!644796) ((_ is Found!12130) lt!644796) (not ((_ is MissingZero!12130) lt!644796)) (and (bvsge (index!50911 lt!644796) #b00000000000000000000000000000000) (bvslt (index!50911 lt!644796) (size!48418 a!2862)))) (or ((_ is Undefined!12130) lt!644796) ((_ is Found!12130) lt!644796) ((_ is MissingZero!12130) lt!644796) (not ((_ is MissingVacant!12130) lt!644796)) (and (bvsge (index!50914 lt!644796) #b00000000000000000000000000000000) (bvslt (index!50914 lt!644796) (size!48418 a!2862)))) (or ((_ is Undefined!12130) lt!644796) (ite ((_ is Found!12130) lt!644796) (= (select (arr!47867 a!2862) (index!50912 lt!644796)) (select (arr!47867 a!2862) j!93)) (ite ((_ is MissingZero!12130) lt!644796) (= (select (arr!47867 a!2862) (index!50911 lt!644796)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12130) lt!644796) (= (select (arr!47867 a!2862) (index!50914 lt!644796)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155855 (= lt!644796 e!828105)))

(declare-fun c!136256 () Bool)

(declare-fun lt!644795 () SeekEntryResult!12130)

(assert (=> d!155855 (= c!136256 (and ((_ is Intermediate!12130) lt!644795) (undefined!12942 lt!644795)))))

(assert (=> d!155855 (= lt!644795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155855 (validMask!0 mask!2687)))

(assert (=> d!155855 (= (seekEntryOrOpen!0 (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644796)))

(declare-fun b!1475965 () Bool)

(assert (=> b!1475965 (= e!828105 e!828107)))

(assert (=> b!1475965 (= lt!644794 (select (arr!47867 a!2862) (index!50913 lt!644795)))))

(declare-fun c!136254 () Bool)

(assert (=> b!1475965 (= c!136254 (= lt!644794 (select (arr!47867 a!2862) j!93)))))

(declare-fun b!1475966 () Bool)

(assert (=> b!1475966 (= e!828106 (seekKeyOrZeroReturnVacant!0 (x!132507 lt!644795) (index!50913 lt!644795) (index!50913 lt!644795) (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475967 () Bool)

(assert (=> b!1475967 (= e!828106 (MissingZero!12130 (index!50913 lt!644795)))))

(declare-fun b!1475968 () Bool)

(assert (=> b!1475968 (= e!828107 (Found!12130 (index!50913 lt!644795)))))

(assert (= (and d!155855 c!136256) b!1475964))

(assert (= (and d!155855 (not c!136256)) b!1475965))

(assert (= (and b!1475965 c!136254) b!1475968))

(assert (= (and b!1475965 (not c!136254)) b!1475963))

(assert (= (and b!1475963 c!136255) b!1475967))

(assert (= (and b!1475963 (not c!136255)) b!1475966))

(declare-fun m!1362115 () Bool)

(assert (=> d!155855 m!1362115))

(declare-fun m!1362117 () Bool)

(assert (=> d!155855 m!1362117))

(assert (=> d!155855 m!1361951))

(assert (=> d!155855 m!1361945))

(assert (=> d!155855 m!1361953))

(declare-fun m!1362119 () Bool)

(assert (=> d!155855 m!1362119))

(assert (=> d!155855 m!1361967))

(assert (=> d!155855 m!1361945))

(assert (=> d!155855 m!1361951))

(declare-fun m!1362121 () Bool)

(assert (=> b!1475965 m!1362121))

(assert (=> b!1475966 m!1361945))

(declare-fun m!1362123 () Bool)

(assert (=> b!1475966 m!1362123))

(assert (=> b!1475746 d!155855))

(declare-fun d!155859 () Bool)

(declare-fun res!1002509 () Bool)

(declare-fun e!828124 () Bool)

(assert (=> d!155859 (=> res!1002509 e!828124)))

(assert (=> d!155859 (= res!1002509 (bvsge j!93 (size!48418 a!2862)))))

(assert (=> d!155859 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!828124)))

(declare-fun b!1475989 () Bool)

(declare-fun e!828125 () Bool)

(declare-fun call!67809 () Bool)

(assert (=> b!1475989 (= e!828125 call!67809)))

(declare-fun bm!67806 () Bool)

(assert (=> bm!67806 (= call!67809 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1475990 () Bool)

(declare-fun e!828123 () Bool)

(assert (=> b!1475990 (= e!828124 e!828123)))

(declare-fun c!136262 () Bool)

(assert (=> b!1475990 (= c!136262 (validKeyInArray!0 (select (arr!47867 a!2862) j!93)))))

(declare-fun b!1475991 () Bool)

(assert (=> b!1475991 (= e!828123 call!67809)))

(declare-fun b!1475992 () Bool)

(assert (=> b!1475992 (= e!828123 e!828125)))

(declare-fun lt!644813 () (_ BitVec 64))

(assert (=> b!1475992 (= lt!644813 (select (arr!47867 a!2862) j!93))))

(declare-fun lt!644814 () Unit!49548)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99182 (_ BitVec 64) (_ BitVec 32)) Unit!49548)

(assert (=> b!1475992 (= lt!644814 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644813 j!93))))

(declare-fun arrayContainsKey!0 (array!99182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1475992 (arrayContainsKey!0 a!2862 lt!644813 #b00000000000000000000000000000000)))

(declare-fun lt!644812 () Unit!49548)

(assert (=> b!1475992 (= lt!644812 lt!644814)))

(declare-fun res!1002508 () Bool)

(assert (=> b!1475992 (= res!1002508 (= (seekEntryOrOpen!0 (select (arr!47867 a!2862) j!93) a!2862 mask!2687) (Found!12130 j!93)))))

(assert (=> b!1475992 (=> (not res!1002508) (not e!828125))))

(assert (= (and d!155859 (not res!1002509)) b!1475990))

(assert (= (and b!1475990 c!136262) b!1475992))

(assert (= (and b!1475990 (not c!136262)) b!1475991))

(assert (= (and b!1475992 res!1002508) b!1475989))

(assert (= (or b!1475989 b!1475991) bm!67806))

(declare-fun m!1362131 () Bool)

(assert (=> bm!67806 m!1362131))

(assert (=> b!1475990 m!1361945))

(assert (=> b!1475990 m!1361945))

(assert (=> b!1475990 m!1361959))

(assert (=> b!1475992 m!1361945))

(declare-fun m!1362133 () Bool)

(assert (=> b!1475992 m!1362133))

(declare-fun m!1362135 () Bool)

(assert (=> b!1475992 m!1362135))

(assert (=> b!1475992 m!1361945))

(assert (=> b!1475992 m!1361975))

(assert (=> b!1475746 d!155859))

(declare-fun d!155867 () Bool)

(assert (=> d!155867 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644826 () Unit!49548)

(declare-fun choose!38 (array!99182 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49548)

(assert (=> d!155867 (= lt!644826 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155867 (validMask!0 mask!2687)))

(assert (=> d!155867 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644826)))

(declare-fun bs!42576 () Bool)

(assert (= bs!42576 d!155867))

(assert (=> bs!42576 m!1361977))

(declare-fun m!1362139 () Bool)

(assert (=> bs!42576 m!1362139))

(assert (=> bs!42576 m!1361967))

(assert (=> b!1475746 d!155867))

(declare-fun d!155871 () Bool)

(declare-fun res!1002515 () Bool)

(declare-fun e!828133 () Bool)

(assert (=> d!155871 (=> res!1002515 e!828133)))

(assert (=> d!155871 (= res!1002515 (bvsge #b00000000000000000000000000000000 (size!48418 a!2862)))))

(assert (=> d!155871 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!828133)))

(declare-fun b!1476001 () Bool)

(declare-fun e!828134 () Bool)

(declare-fun call!67812 () Bool)

(assert (=> b!1476001 (= e!828134 call!67812)))

(declare-fun bm!67809 () Bool)

(assert (=> bm!67809 (= call!67812 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1476002 () Bool)

(declare-fun e!828132 () Bool)

(assert (=> b!1476002 (= e!828133 e!828132)))

(declare-fun c!136265 () Bool)

(assert (=> b!1476002 (= c!136265 (validKeyInArray!0 (select (arr!47867 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1476003 () Bool)

(assert (=> b!1476003 (= e!828132 call!67812)))

(declare-fun b!1476004 () Bool)

(assert (=> b!1476004 (= e!828132 e!828134)))

(declare-fun lt!644828 () (_ BitVec 64))

(assert (=> b!1476004 (= lt!644828 (select (arr!47867 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644829 () Unit!49548)

(assert (=> b!1476004 (= lt!644829 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644828 #b00000000000000000000000000000000))))

(assert (=> b!1476004 (arrayContainsKey!0 a!2862 lt!644828 #b00000000000000000000000000000000)))

(declare-fun lt!644827 () Unit!49548)

(assert (=> b!1476004 (= lt!644827 lt!644829)))

(declare-fun res!1002514 () Bool)

(assert (=> b!1476004 (= res!1002514 (= (seekEntryOrOpen!0 (select (arr!47867 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12130 #b00000000000000000000000000000000)))))

(assert (=> b!1476004 (=> (not res!1002514) (not e!828134))))

(assert (= (and d!155871 (not res!1002515)) b!1476002))

(assert (= (and b!1476002 c!136265) b!1476004))

(assert (= (and b!1476002 (not c!136265)) b!1476003))

(assert (= (and b!1476004 res!1002514) b!1476001))

(assert (= (or b!1476001 b!1476003) bm!67809))

(declare-fun m!1362141 () Bool)

(assert (=> bm!67809 m!1362141))

(assert (=> b!1476002 m!1362039))

(assert (=> b!1476002 m!1362039))

(assert (=> b!1476002 m!1362045))

(assert (=> b!1476004 m!1362039))

(declare-fun m!1362143 () Bool)

(assert (=> b!1476004 m!1362143))

(declare-fun m!1362145 () Bool)

(assert (=> b!1476004 m!1362145))

(assert (=> b!1476004 m!1362039))

(declare-fun m!1362147 () Bool)

(assert (=> b!1476004 m!1362147))

(assert (=> b!1475742 d!155871))

(declare-fun d!155873 () Bool)

(declare-fun e!828140 () Bool)

(assert (=> d!155873 e!828140))

(declare-fun c!136269 () Bool)

(declare-fun lt!644834 () SeekEntryResult!12130)

(assert (=> d!155873 (= c!136269 (and ((_ is Intermediate!12130) lt!644834) (undefined!12942 lt!644834)))))

(declare-fun e!828139 () SeekEntryResult!12130)

(assert (=> d!155873 (= lt!644834 e!828139)))

(declare-fun c!136268 () Bool)

(assert (=> d!155873 (= c!136268 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644833 () (_ BitVec 64))

(assert (=> d!155873 (= lt!644833 (select (arr!47867 a!2862) (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687)))))

(assert (=> d!155873 (validMask!0 mask!2687)))

(assert (=> d!155873 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) (select (arr!47867 a!2862) j!93) a!2862 mask!2687) lt!644834)))

(declare-fun b!1476009 () Bool)

(declare-fun e!828142 () SeekEntryResult!12130)

(assert (=> b!1476009 (= e!828142 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47867 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1476010 () Bool)

(assert (=> b!1476010 (= e!828142 (Intermediate!12130 false (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1476011 () Bool)

(assert (=> b!1476011 (and (bvsge (index!50913 lt!644834) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644834) (size!48418 a!2862)))))

(declare-fun e!828138 () Bool)

(assert (=> b!1476011 (= e!828138 (= (select (arr!47867 a!2862) (index!50913 lt!644834)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1476012 () Bool)

(assert (=> b!1476012 (= e!828140 (bvsge (x!132507 lt!644834) #b01111111111111111111111111111110))))

(declare-fun b!1476013 () Bool)

(declare-fun e!828141 () Bool)

(assert (=> b!1476013 (= e!828140 e!828141)))

(declare-fun res!1002519 () Bool)

(assert (=> b!1476013 (= res!1002519 (and ((_ is Intermediate!12130) lt!644834) (not (undefined!12942 lt!644834)) (bvslt (x!132507 lt!644834) #b01111111111111111111111111111110) (bvsge (x!132507 lt!644834) #b00000000000000000000000000000000) (bvsge (x!132507 lt!644834) #b00000000000000000000000000000000)))))

(assert (=> b!1476013 (=> (not res!1002519) (not e!828141))))

(declare-fun b!1476014 () Bool)

(assert (=> b!1476014 (= e!828139 e!828142)))

(declare-fun c!136267 () Bool)

(assert (=> b!1476014 (= c!136267 (or (= lt!644833 (select (arr!47867 a!2862) j!93)) (= (bvadd lt!644833 lt!644833) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1476015 () Bool)

(assert (=> b!1476015 (= e!828139 (Intermediate!12130 true (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1476016 () Bool)

(assert (=> b!1476016 (and (bvsge (index!50913 lt!644834) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644834) (size!48418 a!2862)))))

(declare-fun res!1002518 () Bool)

(assert (=> b!1476016 (= res!1002518 (= (select (arr!47867 a!2862) (index!50913 lt!644834)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476016 (=> res!1002518 e!828138)))

(declare-fun b!1476017 () Bool)

(assert (=> b!1476017 (and (bvsge (index!50913 lt!644834) #b00000000000000000000000000000000) (bvslt (index!50913 lt!644834) (size!48418 a!2862)))))

(declare-fun res!1002520 () Bool)

(assert (=> b!1476017 (= res!1002520 (= (select (arr!47867 a!2862) (index!50913 lt!644834)) (select (arr!47867 a!2862) j!93)))))

(assert (=> b!1476017 (=> res!1002520 e!828138)))

(assert (=> b!1476017 (= e!828141 e!828138)))

(assert (= (and d!155873 c!136268) b!1476015))

(assert (= (and d!155873 (not c!136268)) b!1476014))

(assert (= (and b!1476014 c!136267) b!1476010))

(assert (= (and b!1476014 (not c!136267)) b!1476009))

(assert (= (and d!155873 c!136269) b!1476012))

(assert (= (and d!155873 (not c!136269)) b!1476013))

(assert (= (and b!1476013 res!1002519) b!1476017))

(assert (= (and b!1476017 (not res!1002520)) b!1476016))

(assert (= (and b!1476016 (not res!1002518)) b!1476011))

(declare-fun m!1362161 () Bool)

(assert (=> b!1476017 m!1362161))

(assert (=> b!1476011 m!1362161))

(assert (=> b!1476009 m!1361951))

(declare-fun m!1362163 () Bool)

(assert (=> b!1476009 m!1362163))

(assert (=> b!1476009 m!1362163))

(assert (=> b!1476009 m!1361945))

(declare-fun m!1362165 () Bool)

(assert (=> b!1476009 m!1362165))

(assert (=> d!155873 m!1361951))

(declare-fun m!1362167 () Bool)

(assert (=> d!155873 m!1362167))

(assert (=> d!155873 m!1361967))

(assert (=> b!1476016 m!1362161))

(assert (=> b!1475744 d!155873))

(declare-fun d!155877 () Bool)

(declare-fun lt!644836 () (_ BitVec 32))

(declare-fun lt!644835 () (_ BitVec 32))

(assert (=> d!155877 (= lt!644836 (bvmul (bvxor lt!644835 (bvlshr lt!644835 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155877 (= lt!644835 ((_ extract 31 0) (bvand (bvxor (select (arr!47867 a!2862) j!93) (bvlshr (select (arr!47867 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155877 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002497 (let ((h!35912 ((_ extract 31 0) (bvand (bvxor (select (arr!47867 a!2862) j!93) (bvlshr (select (arr!47867 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132513 (bvmul (bvxor h!35912 (bvlshr h!35912 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132513 (bvlshr x!132513 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002497 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002497 #b00000000000000000000000000000000))))))

(assert (=> d!155877 (= (toIndex!0 (select (arr!47867 a!2862) j!93) mask!2687) (bvand (bvxor lt!644836 (bvlshr lt!644836 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475744 d!155877))

(check-sat (not b!1475912) (not d!155837) (not b!1475921) (not b!1475820) (not d!155845) (not bm!67800) (not b!1476002) (not d!155873) (not b!1476009) (not d!155827) (not b!1475819) (not b!1475821) (not b!1475840) (not b!1475966) (not d!155831) (not b!1476004) (not b!1475861) (not b!1475909) (not bm!67806) (not b!1475936) (not d!155867) (not d!155855) (not b!1475992) (not d!155839) (not d!155821) (not b!1475990) (not bm!67809))
(check-sat)
