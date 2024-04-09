; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125736 () Bool)

(assert start!125736)

(declare-fun b!1470934 () Bool)

(declare-fun e!825683 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99044 0))(
  ( (array!99045 (arr!47804 (Array (_ BitVec 32) (_ BitVec 64))) (size!48355 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99044)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1470934 (= e!825683 (not (or (= (select (arr!47804 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47804 a!2862) intermediateBeforeIndex!19) (select (arr!47804 a!2862) j!93)))))))

(declare-fun e!825678 () Bool)

(assert (=> b!1470934 e!825678))

(declare-fun res!999111 () Bool)

(assert (=> b!1470934 (=> (not res!999111) (not e!825678))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99044 (_ BitVec 32)) Bool)

(assert (=> b!1470934 (= res!999111 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49422 0))(
  ( (Unit!49423) )
))
(declare-fun lt!643048 () Unit!49422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49422)

(assert (=> b!1470934 (= lt!643048 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!999108 () Bool)

(declare-fun e!825682 () Bool)

(assert (=> start!125736 (=> (not res!999108) (not e!825682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125736 (= res!999108 (validMask!0 mask!2687))))

(assert (=> start!125736 e!825682))

(assert (=> start!125736 true))

(declare-fun array_inv!36749 (array!99044) Bool)

(assert (=> start!125736 (array_inv!36749 a!2862)))

(declare-fun b!1470935 () Bool)

(declare-fun res!999114 () Bool)

(assert (=> b!1470935 (=> (not res!999114) (not e!825683))))

(declare-fun e!825681 () Bool)

(assert (=> b!1470935 (= res!999114 e!825681)))

(declare-fun c!135431 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1470935 (= c!135431 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1470936 () Bool)

(declare-fun res!999113 () Bool)

(assert (=> b!1470936 (=> (not res!999113) (not e!825682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470936 (= res!999113 (validKeyInArray!0 (select (arr!47804 a!2862) j!93)))))

(declare-fun b!1470937 () Bool)

(declare-fun e!825680 () Bool)

(assert (=> b!1470937 (= e!825680 e!825683)))

(declare-fun res!999102 () Bool)

(assert (=> b!1470937 (=> (not res!999102) (not e!825683))))

(declare-datatypes ((SeekEntryResult!12067 0))(
  ( (MissingZero!12067 (index!50659 (_ BitVec 32))) (Found!12067 (index!50660 (_ BitVec 32))) (Intermediate!12067 (undefined!12879 Bool) (index!50661 (_ BitVec 32)) (x!132240 (_ BitVec 32))) (Undefined!12067) (MissingVacant!12067 (index!50662 (_ BitVec 32))) )
))
(declare-fun lt!643045 () SeekEntryResult!12067)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1470937 (= res!999102 (= lt!643045 (Intermediate!12067 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643044 () array!99044)

(declare-fun lt!643047 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99044 (_ BitVec 32)) SeekEntryResult!12067)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470937 (= lt!643045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643047 mask!2687) lt!643047 lt!643044 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1470937 (= lt!643047 (select (store (arr!47804 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470938 () Bool)

(declare-fun res!999101 () Bool)

(assert (=> b!1470938 (=> (not res!999101) (not e!825682))))

(declare-datatypes ((List!34485 0))(
  ( (Nil!34482) (Cons!34481 (h!35834 (_ BitVec 64)) (t!49186 List!34485)) )
))
(declare-fun arrayNoDuplicates!0 (array!99044 (_ BitVec 32) List!34485) Bool)

(assert (=> b!1470938 (= res!999101 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34482))))

(declare-fun b!1470939 () Bool)

(declare-fun res!999110 () Bool)

(assert (=> b!1470939 (=> (not res!999110) (not e!825682))))

(assert (=> b!1470939 (= res!999110 (and (= (size!48355 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48355 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48355 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470940 () Bool)

(declare-fun res!999104 () Bool)

(assert (=> b!1470940 (=> (not res!999104) (not e!825680))))

(declare-fun lt!643046 () SeekEntryResult!12067)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1470940 (= res!999104 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47804 a!2862) j!93) a!2862 mask!2687) lt!643046))))

(declare-fun b!1470941 () Bool)

(declare-fun res!999106 () Bool)

(assert (=> b!1470941 (=> (not res!999106) (not e!825682))))

(assert (=> b!1470941 (= res!999106 (validKeyInArray!0 (select (arr!47804 a!2862) i!1006)))))

(declare-fun b!1470942 () Bool)

(declare-fun e!825677 () Bool)

(assert (=> b!1470942 (= e!825677 e!825680)))

(declare-fun res!999105 () Bool)

(assert (=> b!1470942 (=> (not res!999105) (not e!825680))))

(assert (=> b!1470942 (= res!999105 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) (select (arr!47804 a!2862) j!93) a!2862 mask!2687) lt!643046))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470942 (= lt!643046 (Intermediate!12067 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470943 () Bool)

(assert (=> b!1470943 (= e!825681 (= lt!643045 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643047 lt!643044 mask!2687)))))

(declare-fun b!1470944 () Bool)

(assert (=> b!1470944 (= e!825682 e!825677)))

(declare-fun res!999112 () Bool)

(assert (=> b!1470944 (=> (not res!999112) (not e!825677))))

(assert (=> b!1470944 (= res!999112 (= (select (store (arr!47804 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470944 (= lt!643044 (array!99045 (store (arr!47804 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48355 a!2862)))))

(declare-fun b!1470945 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99044 (_ BitVec 32)) SeekEntryResult!12067)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99044 (_ BitVec 32)) SeekEntryResult!12067)

(assert (=> b!1470945 (= e!825681 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643047 lt!643044 mask!2687) (seekEntryOrOpen!0 lt!643047 lt!643044 mask!2687)))))

(declare-fun b!1470946 () Bool)

(declare-fun res!999103 () Bool)

(assert (=> b!1470946 (=> (not res!999103) (not e!825682))))

(assert (=> b!1470946 (= res!999103 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48355 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48355 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48355 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470947 () Bool)

(declare-fun res!999109 () Bool)

(assert (=> b!1470947 (=> (not res!999109) (not e!825683))))

(assert (=> b!1470947 (= res!999109 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470948 () Bool)

(declare-fun res!999107 () Bool)

(assert (=> b!1470948 (=> (not res!999107) (not e!825682))))

(assert (=> b!1470948 (= res!999107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470949 () Bool)

(assert (=> b!1470949 (= e!825678 (= (seekEntryOrOpen!0 (select (arr!47804 a!2862) j!93) a!2862 mask!2687) (Found!12067 j!93)))))

(assert (= (and start!125736 res!999108) b!1470939))

(assert (= (and b!1470939 res!999110) b!1470941))

(assert (= (and b!1470941 res!999106) b!1470936))

(assert (= (and b!1470936 res!999113) b!1470948))

(assert (= (and b!1470948 res!999107) b!1470938))

(assert (= (and b!1470938 res!999101) b!1470946))

(assert (= (and b!1470946 res!999103) b!1470944))

(assert (= (and b!1470944 res!999112) b!1470942))

(assert (= (and b!1470942 res!999105) b!1470940))

(assert (= (and b!1470940 res!999104) b!1470937))

(assert (= (and b!1470937 res!999102) b!1470935))

(assert (= (and b!1470935 c!135431) b!1470943))

(assert (= (and b!1470935 (not c!135431)) b!1470945))

(assert (= (and b!1470935 res!999114) b!1470947))

(assert (= (and b!1470947 res!999109) b!1470934))

(assert (= (and b!1470934 res!999111) b!1470949))

(declare-fun m!1357945 () Bool)

(assert (=> b!1470941 m!1357945))

(assert (=> b!1470941 m!1357945))

(declare-fun m!1357947 () Bool)

(assert (=> b!1470941 m!1357947))

(declare-fun m!1357949 () Bool)

(assert (=> b!1470940 m!1357949))

(assert (=> b!1470940 m!1357949))

(declare-fun m!1357951 () Bool)

(assert (=> b!1470940 m!1357951))

(declare-fun m!1357953 () Bool)

(assert (=> b!1470943 m!1357953))

(declare-fun m!1357955 () Bool)

(assert (=> b!1470945 m!1357955))

(declare-fun m!1357957 () Bool)

(assert (=> b!1470945 m!1357957))

(declare-fun m!1357959 () Bool)

(assert (=> b!1470937 m!1357959))

(assert (=> b!1470937 m!1357959))

(declare-fun m!1357961 () Bool)

(assert (=> b!1470937 m!1357961))

(declare-fun m!1357963 () Bool)

(assert (=> b!1470937 m!1357963))

(declare-fun m!1357965 () Bool)

(assert (=> b!1470937 m!1357965))

(assert (=> b!1470942 m!1357949))

(assert (=> b!1470942 m!1357949))

(declare-fun m!1357967 () Bool)

(assert (=> b!1470942 m!1357967))

(assert (=> b!1470942 m!1357967))

(assert (=> b!1470942 m!1357949))

(declare-fun m!1357969 () Bool)

(assert (=> b!1470942 m!1357969))

(declare-fun m!1357971 () Bool)

(assert (=> b!1470938 m!1357971))

(assert (=> b!1470944 m!1357963))

(declare-fun m!1357973 () Bool)

(assert (=> b!1470944 m!1357973))

(assert (=> b!1470936 m!1357949))

(assert (=> b!1470936 m!1357949))

(declare-fun m!1357975 () Bool)

(assert (=> b!1470936 m!1357975))

(declare-fun m!1357977 () Bool)

(assert (=> b!1470948 m!1357977))

(assert (=> b!1470949 m!1357949))

(assert (=> b!1470949 m!1357949))

(declare-fun m!1357979 () Bool)

(assert (=> b!1470949 m!1357979))

(declare-fun m!1357981 () Bool)

(assert (=> start!125736 m!1357981))

(declare-fun m!1357983 () Bool)

(assert (=> start!125736 m!1357983))

(declare-fun m!1357985 () Bool)

(assert (=> b!1470934 m!1357985))

(assert (=> b!1470934 m!1357949))

(declare-fun m!1357987 () Bool)

(assert (=> b!1470934 m!1357987))

(declare-fun m!1357989 () Bool)

(assert (=> b!1470934 m!1357989))

(check-sat (not b!1470942) (not b!1470941) (not b!1470945) (not b!1470937) (not start!125736) (not b!1470940) (not b!1470943) (not b!1470949) (not b!1470948) (not b!1470934) (not b!1470936) (not b!1470938))
(check-sat)
(get-model)

(declare-fun b!1471016 () Bool)

(declare-fun lt!643069 () SeekEntryResult!12067)

(assert (=> b!1471016 (and (bvsge (index!50661 lt!643069) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643069) (size!48355 a!2862)))))

(declare-fun res!999163 () Bool)

(assert (=> b!1471016 (= res!999163 (= (select (arr!47804 a!2862) (index!50661 lt!643069)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825717 () Bool)

(assert (=> b!1471016 (=> res!999163 e!825717)))

(declare-fun b!1471017 () Bool)

(declare-fun e!825718 () Bool)

(declare-fun e!825715 () Bool)

(assert (=> b!1471017 (= e!825718 e!825715)))

(declare-fun res!999165 () Bool)

(get-info :version)

(assert (=> b!1471017 (= res!999165 (and ((_ is Intermediate!12067) lt!643069) (not (undefined!12879 lt!643069)) (bvslt (x!132240 lt!643069) #b01111111111111111111111111111110) (bvsge (x!132240 lt!643069) #b00000000000000000000000000000000) (bvsge (x!132240 lt!643069) #b00000000000000000000000000000000)))))

(assert (=> b!1471017 (=> (not res!999165) (not e!825715))))

(declare-fun e!825719 () SeekEntryResult!12067)

(declare-fun b!1471018 () Bool)

(assert (=> b!1471018 (= e!825719 (Intermediate!12067 true (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!155355 () Bool)

(assert (=> d!155355 e!825718))

(declare-fun c!135442 () Bool)

(assert (=> d!155355 (= c!135442 (and ((_ is Intermediate!12067) lt!643069) (undefined!12879 lt!643069)))))

(assert (=> d!155355 (= lt!643069 e!825719)))

(declare-fun c!135443 () Bool)

(assert (=> d!155355 (= c!135443 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!643068 () (_ BitVec 64))

(assert (=> d!155355 (= lt!643068 (select (arr!47804 a!2862) (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687)))))

(assert (=> d!155355 (validMask!0 mask!2687)))

(assert (=> d!155355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) (select (arr!47804 a!2862) j!93) a!2862 mask!2687) lt!643069)))

(declare-fun b!1471019 () Bool)

(declare-fun e!825716 () SeekEntryResult!12067)

(assert (=> b!1471019 (= e!825716 (Intermediate!12067 false (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471020 () Bool)

(assert (=> b!1471020 (= e!825718 (bvsge (x!132240 lt!643069) #b01111111111111111111111111111110))))

(declare-fun b!1471021 () Bool)

(assert (=> b!1471021 (and (bvsge (index!50661 lt!643069) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643069) (size!48355 a!2862)))))

(declare-fun res!999164 () Bool)

(assert (=> b!1471021 (= res!999164 (= (select (arr!47804 a!2862) (index!50661 lt!643069)) (select (arr!47804 a!2862) j!93)))))

(assert (=> b!1471021 (=> res!999164 e!825717)))

(assert (=> b!1471021 (= e!825715 e!825717)))

(declare-fun b!1471022 () Bool)

(assert (=> b!1471022 (and (bvsge (index!50661 lt!643069) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643069) (size!48355 a!2862)))))

(assert (=> b!1471022 (= e!825717 (= (select (arr!47804 a!2862) (index!50661 lt!643069)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471023 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471023 (= e!825716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47804 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471024 () Bool)

(assert (=> b!1471024 (= e!825719 e!825716)))

(declare-fun c!135441 () Bool)

(assert (=> b!1471024 (= c!135441 (or (= lt!643068 (select (arr!47804 a!2862) j!93)) (= (bvadd lt!643068 lt!643068) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!155355 c!135443) b!1471018))

(assert (= (and d!155355 (not c!135443)) b!1471024))

(assert (= (and b!1471024 c!135441) b!1471019))

(assert (= (and b!1471024 (not c!135441)) b!1471023))

(assert (= (and d!155355 c!135442) b!1471020))

(assert (= (and d!155355 (not c!135442)) b!1471017))

(assert (= (and b!1471017 res!999165) b!1471021))

(assert (= (and b!1471021 (not res!999164)) b!1471016))

(assert (= (and b!1471016 (not res!999163)) b!1471022))

(assert (=> b!1471023 m!1357967))

(declare-fun m!1358037 () Bool)

(assert (=> b!1471023 m!1358037))

(assert (=> b!1471023 m!1358037))

(assert (=> b!1471023 m!1357949))

(declare-fun m!1358039 () Bool)

(assert (=> b!1471023 m!1358039))

(declare-fun m!1358041 () Bool)

(assert (=> b!1471016 m!1358041))

(assert (=> b!1471022 m!1358041))

(assert (=> b!1471021 m!1358041))

(assert (=> d!155355 m!1357967))

(declare-fun m!1358043 () Bool)

(assert (=> d!155355 m!1358043))

(assert (=> d!155355 m!1357981))

(assert (=> b!1470942 d!155355))

(declare-fun d!155357 () Bool)

(declare-fun lt!643075 () (_ BitVec 32))

(declare-fun lt!643074 () (_ BitVec 32))

(assert (=> d!155357 (= lt!643075 (bvmul (bvxor lt!643074 (bvlshr lt!643074 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155357 (= lt!643074 ((_ extract 31 0) (bvand (bvxor (select (arr!47804 a!2862) j!93) (bvlshr (select (arr!47804 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155357 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999166 (let ((h!35836 ((_ extract 31 0) (bvand (bvxor (select (arr!47804 a!2862) j!93) (bvlshr (select (arr!47804 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132243 (bvmul (bvxor h!35836 (bvlshr h!35836 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132243 (bvlshr x!132243 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999166 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999166 #b00000000000000000000000000000000))))))

(assert (=> d!155357 (= (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) (bvand (bvxor lt!643075 (bvlshr lt!643075 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470942 d!155357))

(declare-fun b!1471025 () Bool)

(declare-fun lt!643077 () SeekEntryResult!12067)

(assert (=> b!1471025 (and (bvsge (index!50661 lt!643077) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643077) (size!48355 lt!643044)))))

(declare-fun res!999167 () Bool)

(assert (=> b!1471025 (= res!999167 (= (select (arr!47804 lt!643044) (index!50661 lt!643077)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825722 () Bool)

(assert (=> b!1471025 (=> res!999167 e!825722)))

(declare-fun b!1471026 () Bool)

(declare-fun e!825723 () Bool)

(declare-fun e!825720 () Bool)

(assert (=> b!1471026 (= e!825723 e!825720)))

(declare-fun res!999169 () Bool)

(assert (=> b!1471026 (= res!999169 (and ((_ is Intermediate!12067) lt!643077) (not (undefined!12879 lt!643077)) (bvslt (x!132240 lt!643077) #b01111111111111111111111111111110) (bvsge (x!132240 lt!643077) #b00000000000000000000000000000000) (bvsge (x!132240 lt!643077) x!665)))))

(assert (=> b!1471026 (=> (not res!999169) (not e!825720))))

(declare-fun b!1471027 () Bool)

(declare-fun e!825724 () SeekEntryResult!12067)

(assert (=> b!1471027 (= e!825724 (Intermediate!12067 true index!646 x!665))))

(declare-fun d!155359 () Bool)

(assert (=> d!155359 e!825723))

(declare-fun c!135445 () Bool)

(assert (=> d!155359 (= c!135445 (and ((_ is Intermediate!12067) lt!643077) (undefined!12879 lt!643077)))))

(assert (=> d!155359 (= lt!643077 e!825724)))

(declare-fun c!135446 () Bool)

(assert (=> d!155359 (= c!135446 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643076 () (_ BitVec 64))

(assert (=> d!155359 (= lt!643076 (select (arr!47804 lt!643044) index!646))))

(assert (=> d!155359 (validMask!0 mask!2687)))

(assert (=> d!155359 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643047 lt!643044 mask!2687) lt!643077)))

(declare-fun b!1471028 () Bool)

(declare-fun e!825721 () SeekEntryResult!12067)

(assert (=> b!1471028 (= e!825721 (Intermediate!12067 false index!646 x!665))))

(declare-fun b!1471029 () Bool)

(assert (=> b!1471029 (= e!825723 (bvsge (x!132240 lt!643077) #b01111111111111111111111111111110))))

(declare-fun b!1471030 () Bool)

(assert (=> b!1471030 (and (bvsge (index!50661 lt!643077) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643077) (size!48355 lt!643044)))))

(declare-fun res!999168 () Bool)

(assert (=> b!1471030 (= res!999168 (= (select (arr!47804 lt!643044) (index!50661 lt!643077)) lt!643047))))

(assert (=> b!1471030 (=> res!999168 e!825722)))

(assert (=> b!1471030 (= e!825720 e!825722)))

(declare-fun b!1471031 () Bool)

(assert (=> b!1471031 (and (bvsge (index!50661 lt!643077) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643077) (size!48355 lt!643044)))))

(assert (=> b!1471031 (= e!825722 (= (select (arr!47804 lt!643044) (index!50661 lt!643077)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471032 () Bool)

(assert (=> b!1471032 (= e!825721 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!643047 lt!643044 mask!2687))))

(declare-fun b!1471033 () Bool)

(assert (=> b!1471033 (= e!825724 e!825721)))

(declare-fun c!135444 () Bool)

(assert (=> b!1471033 (= c!135444 (or (= lt!643076 lt!643047) (= (bvadd lt!643076 lt!643076) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!155359 c!135446) b!1471027))

(assert (= (and d!155359 (not c!135446)) b!1471033))

(assert (= (and b!1471033 c!135444) b!1471028))

(assert (= (and b!1471033 (not c!135444)) b!1471032))

(assert (= (and d!155359 c!135445) b!1471029))

(assert (= (and d!155359 (not c!135445)) b!1471026))

(assert (= (and b!1471026 res!999169) b!1471030))

(assert (= (and b!1471030 (not res!999168)) b!1471025))

(assert (= (and b!1471025 (not res!999167)) b!1471031))

(declare-fun m!1358045 () Bool)

(assert (=> b!1471032 m!1358045))

(assert (=> b!1471032 m!1358045))

(declare-fun m!1358047 () Bool)

(assert (=> b!1471032 m!1358047))

(declare-fun m!1358049 () Bool)

(assert (=> b!1471025 m!1358049))

(assert (=> b!1471031 m!1358049))

(assert (=> b!1471030 m!1358049))

(declare-fun m!1358051 () Bool)

(assert (=> d!155359 m!1358051))

(assert (=> d!155359 m!1357981))

(assert (=> b!1470943 d!155359))

(declare-fun d!155361 () Bool)

(declare-fun res!999175 () Bool)

(declare-fun e!825733 () Bool)

(assert (=> d!155361 (=> res!999175 e!825733)))

(assert (=> d!155361 (= res!999175 (bvsge j!93 (size!48355 a!2862)))))

(assert (=> d!155361 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!825733)))

(declare-fun bm!67716 () Bool)

(declare-fun call!67719 () Bool)

(assert (=> bm!67716 (= call!67719 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1471042 () Bool)

(declare-fun e!825731 () Bool)

(assert (=> b!1471042 (= e!825733 e!825731)))

(declare-fun c!135449 () Bool)

(assert (=> b!1471042 (= c!135449 (validKeyInArray!0 (select (arr!47804 a!2862) j!93)))))

(declare-fun b!1471043 () Bool)

(declare-fun e!825732 () Bool)

(assert (=> b!1471043 (= e!825732 call!67719)))

(declare-fun b!1471044 () Bool)

(assert (=> b!1471044 (= e!825731 e!825732)))

(declare-fun lt!643085 () (_ BitVec 64))

(assert (=> b!1471044 (= lt!643085 (select (arr!47804 a!2862) j!93))))

(declare-fun lt!643084 () Unit!49422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99044 (_ BitVec 64) (_ BitVec 32)) Unit!49422)

(assert (=> b!1471044 (= lt!643084 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643085 j!93))))

(declare-fun arrayContainsKey!0 (array!99044 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1471044 (arrayContainsKey!0 a!2862 lt!643085 #b00000000000000000000000000000000)))

(declare-fun lt!643086 () Unit!49422)

(assert (=> b!1471044 (= lt!643086 lt!643084)))

(declare-fun res!999174 () Bool)

(assert (=> b!1471044 (= res!999174 (= (seekEntryOrOpen!0 (select (arr!47804 a!2862) j!93) a!2862 mask!2687) (Found!12067 j!93)))))

(assert (=> b!1471044 (=> (not res!999174) (not e!825732))))

(declare-fun b!1471045 () Bool)

(assert (=> b!1471045 (= e!825731 call!67719)))

(assert (= (and d!155361 (not res!999175)) b!1471042))

(assert (= (and b!1471042 c!135449) b!1471044))

(assert (= (and b!1471042 (not c!135449)) b!1471045))

(assert (= (and b!1471044 res!999174) b!1471043))

(assert (= (or b!1471043 b!1471045) bm!67716))

(declare-fun m!1358053 () Bool)

(assert (=> bm!67716 m!1358053))

(assert (=> b!1471042 m!1357949))

(assert (=> b!1471042 m!1357949))

(assert (=> b!1471042 m!1357975))

(assert (=> b!1471044 m!1357949))

(declare-fun m!1358055 () Bool)

(assert (=> b!1471044 m!1358055))

(declare-fun m!1358057 () Bool)

(assert (=> b!1471044 m!1358057))

(assert (=> b!1471044 m!1357949))

(assert (=> b!1471044 m!1357979))

(assert (=> b!1470934 d!155361))

(declare-fun d!155369 () Bool)

(assert (=> d!155369 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!643089 () Unit!49422)

(declare-fun choose!38 (array!99044 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49422)

(assert (=> d!155369 (= lt!643089 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155369 (validMask!0 mask!2687)))

(assert (=> d!155369 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!643089)))

(declare-fun bs!42500 () Bool)

(assert (= bs!42500 d!155369))

(assert (=> bs!42500 m!1357987))

(declare-fun m!1358059 () Bool)

(assert (=> bs!42500 m!1358059))

(assert (=> bs!42500 m!1357981))

(assert (=> b!1470934 d!155369))

(declare-fun b!1471103 () Bool)

(declare-fun e!825768 () SeekEntryResult!12067)

(assert (=> b!1471103 (= e!825768 Undefined!12067)))

(declare-fun b!1471104 () Bool)

(declare-fun e!825767 () SeekEntryResult!12067)

(assert (=> b!1471104 (= e!825767 (Found!12067 index!646))))

(declare-fun b!1471106 () Bool)

(declare-fun c!135474 () Bool)

(declare-fun lt!643104 () (_ BitVec 64))

(assert (=> b!1471106 (= c!135474 (= lt!643104 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825769 () SeekEntryResult!12067)

(assert (=> b!1471106 (= e!825767 e!825769)))

(declare-fun b!1471105 () Bool)

(assert (=> b!1471105 (= e!825769 (MissingVacant!12067 intermediateAfterIndex!19))))

(declare-fun d!155371 () Bool)

(declare-fun lt!643105 () SeekEntryResult!12067)

(assert (=> d!155371 (and (or ((_ is Undefined!12067) lt!643105) (not ((_ is Found!12067) lt!643105)) (and (bvsge (index!50660 lt!643105) #b00000000000000000000000000000000) (bvslt (index!50660 lt!643105) (size!48355 lt!643044)))) (or ((_ is Undefined!12067) lt!643105) ((_ is Found!12067) lt!643105) (not ((_ is MissingVacant!12067) lt!643105)) (not (= (index!50662 lt!643105) intermediateAfterIndex!19)) (and (bvsge (index!50662 lt!643105) #b00000000000000000000000000000000) (bvslt (index!50662 lt!643105) (size!48355 lt!643044)))) (or ((_ is Undefined!12067) lt!643105) (ite ((_ is Found!12067) lt!643105) (= (select (arr!47804 lt!643044) (index!50660 lt!643105)) lt!643047) (and ((_ is MissingVacant!12067) lt!643105) (= (index!50662 lt!643105) intermediateAfterIndex!19) (= (select (arr!47804 lt!643044) (index!50662 lt!643105)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155371 (= lt!643105 e!825768)))

(declare-fun c!135475 () Bool)

(assert (=> d!155371 (= c!135475 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155371 (= lt!643104 (select (arr!47804 lt!643044) index!646))))

(assert (=> d!155371 (validMask!0 mask!2687)))

(assert (=> d!155371 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643047 lt!643044 mask!2687) lt!643105)))

(declare-fun b!1471107 () Bool)

(assert (=> b!1471107 (= e!825769 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!643047 lt!643044 mask!2687))))

(declare-fun b!1471108 () Bool)

(assert (=> b!1471108 (= e!825768 e!825767)))

(declare-fun c!135476 () Bool)

(assert (=> b!1471108 (= c!135476 (= lt!643104 lt!643047))))

(assert (= (and d!155371 c!135475) b!1471103))

(assert (= (and d!155371 (not c!135475)) b!1471108))

(assert (= (and b!1471108 c!135476) b!1471104))

(assert (= (and b!1471108 (not c!135476)) b!1471106))

(assert (= (and b!1471106 c!135474) b!1471105))

(assert (= (and b!1471106 (not c!135474)) b!1471107))

(declare-fun m!1358079 () Bool)

(assert (=> d!155371 m!1358079))

(declare-fun m!1358081 () Bool)

(assert (=> d!155371 m!1358081))

(assert (=> d!155371 m!1358051))

(assert (=> d!155371 m!1357981))

(assert (=> b!1471107 m!1358045))

(assert (=> b!1471107 m!1358045))

(declare-fun m!1358083 () Bool)

(assert (=> b!1471107 m!1358083))

(assert (=> b!1470945 d!155371))

(declare-fun b!1471165 () Bool)

(declare-fun e!825802 () SeekEntryResult!12067)

(declare-fun lt!643137 () SeekEntryResult!12067)

(assert (=> b!1471165 (= e!825802 (MissingZero!12067 (index!50661 lt!643137)))))

(declare-fun b!1471166 () Bool)

(declare-fun c!135504 () Bool)

(declare-fun lt!643135 () (_ BitVec 64))

(assert (=> b!1471166 (= c!135504 (= lt!643135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825800 () SeekEntryResult!12067)

(assert (=> b!1471166 (= e!825800 e!825802)))

(declare-fun b!1471167 () Bool)

(assert (=> b!1471167 (= e!825800 (Found!12067 (index!50661 lt!643137)))))

(declare-fun d!155377 () Bool)

(declare-fun lt!643136 () SeekEntryResult!12067)

(assert (=> d!155377 (and (or ((_ is Undefined!12067) lt!643136) (not ((_ is Found!12067) lt!643136)) (and (bvsge (index!50660 lt!643136) #b00000000000000000000000000000000) (bvslt (index!50660 lt!643136) (size!48355 lt!643044)))) (or ((_ is Undefined!12067) lt!643136) ((_ is Found!12067) lt!643136) (not ((_ is MissingZero!12067) lt!643136)) (and (bvsge (index!50659 lt!643136) #b00000000000000000000000000000000) (bvslt (index!50659 lt!643136) (size!48355 lt!643044)))) (or ((_ is Undefined!12067) lt!643136) ((_ is Found!12067) lt!643136) ((_ is MissingZero!12067) lt!643136) (not ((_ is MissingVacant!12067) lt!643136)) (and (bvsge (index!50662 lt!643136) #b00000000000000000000000000000000) (bvslt (index!50662 lt!643136) (size!48355 lt!643044)))) (or ((_ is Undefined!12067) lt!643136) (ite ((_ is Found!12067) lt!643136) (= (select (arr!47804 lt!643044) (index!50660 lt!643136)) lt!643047) (ite ((_ is MissingZero!12067) lt!643136) (= (select (arr!47804 lt!643044) (index!50659 lt!643136)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12067) lt!643136) (= (select (arr!47804 lt!643044) (index!50662 lt!643136)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!825801 () SeekEntryResult!12067)

(assert (=> d!155377 (= lt!643136 e!825801)))

(declare-fun c!135505 () Bool)

(assert (=> d!155377 (= c!135505 (and ((_ is Intermediate!12067) lt!643137) (undefined!12879 lt!643137)))))

(assert (=> d!155377 (= lt!643137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643047 mask!2687) lt!643047 lt!643044 mask!2687))))

(assert (=> d!155377 (validMask!0 mask!2687)))

(assert (=> d!155377 (= (seekEntryOrOpen!0 lt!643047 lt!643044 mask!2687) lt!643136)))

(declare-fun b!1471168 () Bool)

(assert (=> b!1471168 (= e!825801 Undefined!12067)))

(declare-fun b!1471169 () Bool)

(assert (=> b!1471169 (= e!825802 (seekKeyOrZeroReturnVacant!0 (x!132240 lt!643137) (index!50661 lt!643137) (index!50661 lt!643137) lt!643047 lt!643044 mask!2687))))

(declare-fun b!1471170 () Bool)

(assert (=> b!1471170 (= e!825801 e!825800)))

(assert (=> b!1471170 (= lt!643135 (select (arr!47804 lt!643044) (index!50661 lt!643137)))))

(declare-fun c!135503 () Bool)

(assert (=> b!1471170 (= c!135503 (= lt!643135 lt!643047))))

(assert (= (and d!155377 c!135505) b!1471168))

(assert (= (and d!155377 (not c!135505)) b!1471170))

(assert (= (and b!1471170 c!135503) b!1471167))

(assert (= (and b!1471170 (not c!135503)) b!1471166))

(assert (= (and b!1471166 c!135504) b!1471165))

(assert (= (and b!1471166 (not c!135504)) b!1471169))

(assert (=> d!155377 m!1357959))

(declare-fun m!1358105 () Bool)

(assert (=> d!155377 m!1358105))

(assert (=> d!155377 m!1357959))

(assert (=> d!155377 m!1357961))

(declare-fun m!1358107 () Bool)

(assert (=> d!155377 m!1358107))

(assert (=> d!155377 m!1357981))

(declare-fun m!1358109 () Bool)

(assert (=> d!155377 m!1358109))

(declare-fun m!1358111 () Bool)

(assert (=> b!1471169 m!1358111))

(declare-fun m!1358113 () Bool)

(assert (=> b!1471170 m!1358113))

(assert (=> b!1470945 d!155377))

(declare-fun d!155383 () Bool)

(assert (=> d!155383 (= (validKeyInArray!0 (select (arr!47804 a!2862) j!93)) (and (not (= (select (arr!47804 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47804 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470936 d!155383))

(declare-fun b!1471171 () Bool)

(declare-fun lt!643139 () SeekEntryResult!12067)

(assert (=> b!1471171 (and (bvsge (index!50661 lt!643139) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643139) (size!48355 lt!643044)))))

(declare-fun res!999189 () Bool)

(assert (=> b!1471171 (= res!999189 (= (select (arr!47804 lt!643044) (index!50661 lt!643139)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825805 () Bool)

(assert (=> b!1471171 (=> res!999189 e!825805)))

(declare-fun b!1471172 () Bool)

(declare-fun e!825806 () Bool)

(declare-fun e!825803 () Bool)

(assert (=> b!1471172 (= e!825806 e!825803)))

(declare-fun res!999191 () Bool)

(assert (=> b!1471172 (= res!999191 (and ((_ is Intermediate!12067) lt!643139) (not (undefined!12879 lt!643139)) (bvslt (x!132240 lt!643139) #b01111111111111111111111111111110) (bvsge (x!132240 lt!643139) #b00000000000000000000000000000000) (bvsge (x!132240 lt!643139) #b00000000000000000000000000000000)))))

(assert (=> b!1471172 (=> (not res!999191) (not e!825803))))

(declare-fun b!1471173 () Bool)

(declare-fun e!825807 () SeekEntryResult!12067)

(assert (=> b!1471173 (= e!825807 (Intermediate!12067 true (toIndex!0 lt!643047 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!155385 () Bool)

(assert (=> d!155385 e!825806))

(declare-fun c!135507 () Bool)

(assert (=> d!155385 (= c!135507 (and ((_ is Intermediate!12067) lt!643139) (undefined!12879 lt!643139)))))

(assert (=> d!155385 (= lt!643139 e!825807)))

(declare-fun c!135508 () Bool)

(assert (=> d!155385 (= c!135508 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!643138 () (_ BitVec 64))

(assert (=> d!155385 (= lt!643138 (select (arr!47804 lt!643044) (toIndex!0 lt!643047 mask!2687)))))

(assert (=> d!155385 (validMask!0 mask!2687)))

(assert (=> d!155385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643047 mask!2687) lt!643047 lt!643044 mask!2687) lt!643139)))

(declare-fun b!1471174 () Bool)

(declare-fun e!825804 () SeekEntryResult!12067)

(assert (=> b!1471174 (= e!825804 (Intermediate!12067 false (toIndex!0 lt!643047 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1471175 () Bool)

(assert (=> b!1471175 (= e!825806 (bvsge (x!132240 lt!643139) #b01111111111111111111111111111110))))

(declare-fun b!1471176 () Bool)

(assert (=> b!1471176 (and (bvsge (index!50661 lt!643139) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643139) (size!48355 lt!643044)))))

(declare-fun res!999190 () Bool)

(assert (=> b!1471176 (= res!999190 (= (select (arr!47804 lt!643044) (index!50661 lt!643139)) lt!643047))))

(assert (=> b!1471176 (=> res!999190 e!825805)))

(assert (=> b!1471176 (= e!825803 e!825805)))

(declare-fun b!1471177 () Bool)

(assert (=> b!1471177 (and (bvsge (index!50661 lt!643139) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643139) (size!48355 lt!643044)))))

(assert (=> b!1471177 (= e!825805 (= (select (arr!47804 lt!643044) (index!50661 lt!643139)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471178 () Bool)

(assert (=> b!1471178 (= e!825804 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!643047 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!643047 lt!643044 mask!2687))))

(declare-fun b!1471179 () Bool)

(assert (=> b!1471179 (= e!825807 e!825804)))

(declare-fun c!135506 () Bool)

(assert (=> b!1471179 (= c!135506 (or (= lt!643138 lt!643047) (= (bvadd lt!643138 lt!643138) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!155385 c!135508) b!1471173))

(assert (= (and d!155385 (not c!135508)) b!1471179))

(assert (= (and b!1471179 c!135506) b!1471174))

(assert (= (and b!1471179 (not c!135506)) b!1471178))

(assert (= (and d!155385 c!135507) b!1471175))

(assert (= (and d!155385 (not c!135507)) b!1471172))

(assert (= (and b!1471172 res!999191) b!1471176))

(assert (= (and b!1471176 (not res!999190)) b!1471171))

(assert (= (and b!1471171 (not res!999189)) b!1471177))

(assert (=> b!1471178 m!1357959))

(declare-fun m!1358115 () Bool)

(assert (=> b!1471178 m!1358115))

(assert (=> b!1471178 m!1358115))

(declare-fun m!1358117 () Bool)

(assert (=> b!1471178 m!1358117))

(declare-fun m!1358119 () Bool)

(assert (=> b!1471171 m!1358119))

(assert (=> b!1471177 m!1358119))

(assert (=> b!1471176 m!1358119))

(assert (=> d!155385 m!1357959))

(declare-fun m!1358121 () Bool)

(assert (=> d!155385 m!1358121))

(assert (=> d!155385 m!1357981))

(assert (=> b!1470937 d!155385))

(declare-fun d!155387 () Bool)

(declare-fun lt!643147 () (_ BitVec 32))

(declare-fun lt!643146 () (_ BitVec 32))

(assert (=> d!155387 (= lt!643147 (bvmul (bvxor lt!643146 (bvlshr lt!643146 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155387 (= lt!643146 ((_ extract 31 0) (bvand (bvxor lt!643047 (bvlshr lt!643047 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155387 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!999166 (let ((h!35836 ((_ extract 31 0) (bvand (bvxor lt!643047 (bvlshr lt!643047 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132243 (bvmul (bvxor h!35836 (bvlshr h!35836 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132243 (bvlshr x!132243 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!999166 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!999166 #b00000000000000000000000000000000))))))

(assert (=> d!155387 (= (toIndex!0 lt!643047 mask!2687) (bvand (bvxor lt!643147 (bvlshr lt!643147 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1470937 d!155387))

(declare-fun d!155389 () Bool)

(assert (=> d!155389 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125736 d!155389))

(declare-fun d!155401 () Bool)

(assert (=> d!155401 (= (array_inv!36749 a!2862) (bvsge (size!48355 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125736 d!155401))

(declare-fun d!155403 () Bool)

(declare-fun res!999197 () Bool)

(declare-fun e!825819 () Bool)

(assert (=> d!155403 (=> res!999197 e!825819)))

(assert (=> d!155403 (= res!999197 (bvsge #b00000000000000000000000000000000 (size!48355 a!2862)))))

(assert (=> d!155403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!825819)))

(declare-fun bm!67724 () Bool)

(declare-fun call!67727 () Bool)

(assert (=> bm!67724 (= call!67727 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1471194 () Bool)

(declare-fun e!825817 () Bool)

(assert (=> b!1471194 (= e!825819 e!825817)))

(declare-fun c!135514 () Bool)

(assert (=> b!1471194 (= c!135514 (validKeyInArray!0 (select (arr!47804 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471195 () Bool)

(declare-fun e!825818 () Bool)

(assert (=> b!1471195 (= e!825818 call!67727)))

(declare-fun b!1471196 () Bool)

(assert (=> b!1471196 (= e!825817 e!825818)))

(declare-fun lt!643155 () (_ BitVec 64))

(assert (=> b!1471196 (= lt!643155 (select (arr!47804 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!643154 () Unit!49422)

(assert (=> b!1471196 (= lt!643154 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!643155 #b00000000000000000000000000000000))))

(assert (=> b!1471196 (arrayContainsKey!0 a!2862 lt!643155 #b00000000000000000000000000000000)))

(declare-fun lt!643156 () Unit!49422)

(assert (=> b!1471196 (= lt!643156 lt!643154)))

(declare-fun res!999196 () Bool)

(assert (=> b!1471196 (= res!999196 (= (seekEntryOrOpen!0 (select (arr!47804 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12067 #b00000000000000000000000000000000)))))

(assert (=> b!1471196 (=> (not res!999196) (not e!825818))))

(declare-fun b!1471197 () Bool)

(assert (=> b!1471197 (= e!825817 call!67727)))

(assert (= (and d!155403 (not res!999197)) b!1471194))

(assert (= (and b!1471194 c!135514) b!1471196))

(assert (= (and b!1471194 (not c!135514)) b!1471197))

(assert (= (and b!1471196 res!999196) b!1471195))

(assert (= (or b!1471195 b!1471197) bm!67724))

(declare-fun m!1358153 () Bool)

(assert (=> bm!67724 m!1358153))

(declare-fun m!1358155 () Bool)

(assert (=> b!1471194 m!1358155))

(assert (=> b!1471194 m!1358155))

(declare-fun m!1358157 () Bool)

(assert (=> b!1471194 m!1358157))

(assert (=> b!1471196 m!1358155))

(declare-fun m!1358159 () Bool)

(assert (=> b!1471196 m!1358159))

(declare-fun m!1358161 () Bool)

(assert (=> b!1471196 m!1358161))

(assert (=> b!1471196 m!1358155))

(declare-fun m!1358163 () Bool)

(assert (=> b!1471196 m!1358163))

(assert (=> b!1470948 d!155403))

(declare-fun b!1471226 () Bool)

(declare-fun e!825841 () Bool)

(declare-fun e!825839 () Bool)

(assert (=> b!1471226 (= e!825841 e!825839)))

(declare-fun c!135523 () Bool)

(assert (=> b!1471226 (= c!135523 (validKeyInArray!0 (select (arr!47804 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1471227 () Bool)

(declare-fun call!67730 () Bool)

(assert (=> b!1471227 (= e!825839 call!67730)))

(declare-fun d!155405 () Bool)

(declare-fun res!999210 () Bool)

(declare-fun e!825838 () Bool)

(assert (=> d!155405 (=> res!999210 e!825838)))

(assert (=> d!155405 (= res!999210 (bvsge #b00000000000000000000000000000000 (size!48355 a!2862)))))

(assert (=> d!155405 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34482) e!825838)))

(declare-fun b!1471228 () Bool)

(declare-fun e!825840 () Bool)

(declare-fun contains!9911 (List!34485 (_ BitVec 64)) Bool)

(assert (=> b!1471228 (= e!825840 (contains!9911 Nil!34482 (select (arr!47804 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67727 () Bool)

(assert (=> bm!67727 (= call!67730 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135523 (Cons!34481 (select (arr!47804 a!2862) #b00000000000000000000000000000000) Nil!34482) Nil!34482)))))

(declare-fun b!1471229 () Bool)

(assert (=> b!1471229 (= e!825839 call!67730)))

(declare-fun b!1471230 () Bool)

(assert (=> b!1471230 (= e!825838 e!825841)))

(declare-fun res!999211 () Bool)

(assert (=> b!1471230 (=> (not res!999211) (not e!825841))))

(assert (=> b!1471230 (= res!999211 (not e!825840))))

(declare-fun res!999212 () Bool)

(assert (=> b!1471230 (=> (not res!999212) (not e!825840))))

(assert (=> b!1471230 (= res!999212 (validKeyInArray!0 (select (arr!47804 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!155405 (not res!999210)) b!1471230))

(assert (= (and b!1471230 res!999212) b!1471228))

(assert (= (and b!1471230 res!999211) b!1471226))

(assert (= (and b!1471226 c!135523) b!1471227))

(assert (= (and b!1471226 (not c!135523)) b!1471229))

(assert (= (or b!1471227 b!1471229) bm!67727))

(assert (=> b!1471226 m!1358155))

(assert (=> b!1471226 m!1358155))

(assert (=> b!1471226 m!1358157))

(assert (=> b!1471228 m!1358155))

(assert (=> b!1471228 m!1358155))

(declare-fun m!1358165 () Bool)

(assert (=> b!1471228 m!1358165))

(assert (=> bm!67727 m!1358155))

(declare-fun m!1358167 () Bool)

(assert (=> bm!67727 m!1358167))

(assert (=> b!1471230 m!1358155))

(assert (=> b!1471230 m!1358155))

(assert (=> b!1471230 m!1358157))

(assert (=> b!1470938 d!155405))

(declare-fun b!1471231 () Bool)

(declare-fun e!825844 () SeekEntryResult!12067)

(declare-fun lt!643163 () SeekEntryResult!12067)

(assert (=> b!1471231 (= e!825844 (MissingZero!12067 (index!50661 lt!643163)))))

(declare-fun b!1471232 () Bool)

(declare-fun c!135525 () Bool)

(declare-fun lt!643161 () (_ BitVec 64))

(assert (=> b!1471232 (= c!135525 (= lt!643161 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825842 () SeekEntryResult!12067)

(assert (=> b!1471232 (= e!825842 e!825844)))

(declare-fun b!1471233 () Bool)

(assert (=> b!1471233 (= e!825842 (Found!12067 (index!50661 lt!643163)))))

(declare-fun d!155407 () Bool)

(declare-fun lt!643162 () SeekEntryResult!12067)

(assert (=> d!155407 (and (or ((_ is Undefined!12067) lt!643162) (not ((_ is Found!12067) lt!643162)) (and (bvsge (index!50660 lt!643162) #b00000000000000000000000000000000) (bvslt (index!50660 lt!643162) (size!48355 a!2862)))) (or ((_ is Undefined!12067) lt!643162) ((_ is Found!12067) lt!643162) (not ((_ is MissingZero!12067) lt!643162)) (and (bvsge (index!50659 lt!643162) #b00000000000000000000000000000000) (bvslt (index!50659 lt!643162) (size!48355 a!2862)))) (or ((_ is Undefined!12067) lt!643162) ((_ is Found!12067) lt!643162) ((_ is MissingZero!12067) lt!643162) (not ((_ is MissingVacant!12067) lt!643162)) (and (bvsge (index!50662 lt!643162) #b00000000000000000000000000000000) (bvslt (index!50662 lt!643162) (size!48355 a!2862)))) (or ((_ is Undefined!12067) lt!643162) (ite ((_ is Found!12067) lt!643162) (= (select (arr!47804 a!2862) (index!50660 lt!643162)) (select (arr!47804 a!2862) j!93)) (ite ((_ is MissingZero!12067) lt!643162) (= (select (arr!47804 a!2862) (index!50659 lt!643162)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12067) lt!643162) (= (select (arr!47804 a!2862) (index!50662 lt!643162)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!825843 () SeekEntryResult!12067)

(assert (=> d!155407 (= lt!643162 e!825843)))

(declare-fun c!135526 () Bool)

(assert (=> d!155407 (= c!135526 (and ((_ is Intermediate!12067) lt!643163) (undefined!12879 lt!643163)))))

(assert (=> d!155407 (= lt!643163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47804 a!2862) j!93) mask!2687) (select (arr!47804 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155407 (validMask!0 mask!2687)))

(assert (=> d!155407 (= (seekEntryOrOpen!0 (select (arr!47804 a!2862) j!93) a!2862 mask!2687) lt!643162)))

(declare-fun b!1471234 () Bool)

(assert (=> b!1471234 (= e!825843 Undefined!12067)))

(declare-fun b!1471235 () Bool)

(assert (=> b!1471235 (= e!825844 (seekKeyOrZeroReturnVacant!0 (x!132240 lt!643163) (index!50661 lt!643163) (index!50661 lt!643163) (select (arr!47804 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471236 () Bool)

(assert (=> b!1471236 (= e!825843 e!825842)))

(assert (=> b!1471236 (= lt!643161 (select (arr!47804 a!2862) (index!50661 lt!643163)))))

(declare-fun c!135524 () Bool)

(assert (=> b!1471236 (= c!135524 (= lt!643161 (select (arr!47804 a!2862) j!93)))))

(assert (= (and d!155407 c!135526) b!1471234))

(assert (= (and d!155407 (not c!135526)) b!1471236))

(assert (= (and b!1471236 c!135524) b!1471233))

(assert (= (and b!1471236 (not c!135524)) b!1471232))

(assert (= (and b!1471232 c!135525) b!1471231))

(assert (= (and b!1471232 (not c!135525)) b!1471235))

(assert (=> d!155407 m!1357949))

(assert (=> d!155407 m!1357967))

(declare-fun m!1358169 () Bool)

(assert (=> d!155407 m!1358169))

(assert (=> d!155407 m!1357967))

(assert (=> d!155407 m!1357949))

(assert (=> d!155407 m!1357969))

(declare-fun m!1358171 () Bool)

(assert (=> d!155407 m!1358171))

(assert (=> d!155407 m!1357981))

(declare-fun m!1358173 () Bool)

(assert (=> d!155407 m!1358173))

(assert (=> b!1471235 m!1357949))

(declare-fun m!1358175 () Bool)

(assert (=> b!1471235 m!1358175))

(declare-fun m!1358177 () Bool)

(assert (=> b!1471236 m!1358177))

(assert (=> b!1470949 d!155407))

(declare-fun b!1471237 () Bool)

(declare-fun lt!643165 () SeekEntryResult!12067)

(assert (=> b!1471237 (and (bvsge (index!50661 lt!643165) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643165) (size!48355 a!2862)))))

(declare-fun res!999213 () Bool)

(assert (=> b!1471237 (= res!999213 (= (select (arr!47804 a!2862) (index!50661 lt!643165)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825847 () Bool)

(assert (=> b!1471237 (=> res!999213 e!825847)))

(declare-fun b!1471238 () Bool)

(declare-fun e!825848 () Bool)

(declare-fun e!825845 () Bool)

(assert (=> b!1471238 (= e!825848 e!825845)))

(declare-fun res!999215 () Bool)

(assert (=> b!1471238 (= res!999215 (and ((_ is Intermediate!12067) lt!643165) (not (undefined!12879 lt!643165)) (bvslt (x!132240 lt!643165) #b01111111111111111111111111111110) (bvsge (x!132240 lt!643165) #b00000000000000000000000000000000) (bvsge (x!132240 lt!643165) x!665)))))

(assert (=> b!1471238 (=> (not res!999215) (not e!825845))))

(declare-fun b!1471239 () Bool)

(declare-fun e!825849 () SeekEntryResult!12067)

(assert (=> b!1471239 (= e!825849 (Intermediate!12067 true index!646 x!665))))

(declare-fun d!155409 () Bool)

(assert (=> d!155409 e!825848))

(declare-fun c!135528 () Bool)

(assert (=> d!155409 (= c!135528 (and ((_ is Intermediate!12067) lt!643165) (undefined!12879 lt!643165)))))

(assert (=> d!155409 (= lt!643165 e!825849)))

(declare-fun c!135529 () Bool)

(assert (=> d!155409 (= c!135529 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!643164 () (_ BitVec 64))

(assert (=> d!155409 (= lt!643164 (select (arr!47804 a!2862) index!646))))

(assert (=> d!155409 (validMask!0 mask!2687)))

(assert (=> d!155409 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47804 a!2862) j!93) a!2862 mask!2687) lt!643165)))

(declare-fun b!1471240 () Bool)

(declare-fun e!825846 () SeekEntryResult!12067)

(assert (=> b!1471240 (= e!825846 (Intermediate!12067 false index!646 x!665))))

(declare-fun b!1471241 () Bool)

(assert (=> b!1471241 (= e!825848 (bvsge (x!132240 lt!643165) #b01111111111111111111111111111110))))

(declare-fun b!1471242 () Bool)

(assert (=> b!1471242 (and (bvsge (index!50661 lt!643165) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643165) (size!48355 a!2862)))))

(declare-fun res!999214 () Bool)

(assert (=> b!1471242 (= res!999214 (= (select (arr!47804 a!2862) (index!50661 lt!643165)) (select (arr!47804 a!2862) j!93)))))

(assert (=> b!1471242 (=> res!999214 e!825847)))

(assert (=> b!1471242 (= e!825845 e!825847)))

(declare-fun b!1471243 () Bool)

(assert (=> b!1471243 (and (bvsge (index!50661 lt!643165) #b00000000000000000000000000000000) (bvslt (index!50661 lt!643165) (size!48355 a!2862)))))

(assert (=> b!1471243 (= e!825847 (= (select (arr!47804 a!2862) (index!50661 lt!643165)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1471244 () Bool)

(assert (=> b!1471244 (= e!825846 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47804 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1471245 () Bool)

(assert (=> b!1471245 (= e!825849 e!825846)))

(declare-fun c!135527 () Bool)

(assert (=> b!1471245 (= c!135527 (or (= lt!643164 (select (arr!47804 a!2862) j!93)) (= (bvadd lt!643164 lt!643164) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!155409 c!135529) b!1471239))

(assert (= (and d!155409 (not c!135529)) b!1471245))

(assert (= (and b!1471245 c!135527) b!1471240))

(assert (= (and b!1471245 (not c!135527)) b!1471244))

(assert (= (and d!155409 c!135528) b!1471241))

(assert (= (and d!155409 (not c!135528)) b!1471238))

(assert (= (and b!1471238 res!999215) b!1471242))

(assert (= (and b!1471242 (not res!999214)) b!1471237))

(assert (= (and b!1471237 (not res!999213)) b!1471243))

(assert (=> b!1471244 m!1358045))

(assert (=> b!1471244 m!1358045))

(assert (=> b!1471244 m!1357949))

(declare-fun m!1358179 () Bool)

(assert (=> b!1471244 m!1358179))

(declare-fun m!1358181 () Bool)

(assert (=> b!1471237 m!1358181))

(assert (=> b!1471243 m!1358181))

(assert (=> b!1471242 m!1358181))

(declare-fun m!1358185 () Bool)

(assert (=> d!155409 m!1358185))

(assert (=> d!155409 m!1357981))

(assert (=> b!1470940 d!155409))

(declare-fun d!155411 () Bool)

(assert (=> d!155411 (= (validKeyInArray!0 (select (arr!47804 a!2862) i!1006)) (and (not (= (select (arr!47804 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47804 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1470941 d!155411))

(check-sat (not b!1471194) (not b!1471244) (not d!155409) (not b!1471235) (not d!155371) (not b!1471023) (not b!1471042) (not bm!67727) (not d!155355) (not b!1471169) (not b!1471196) (not b!1471107) (not d!155359) (not bm!67724) (not b!1471178) (not bm!67716) (not d!155385) (not b!1471230) (not d!155407) (not b!1471044) (not b!1471032) (not d!155369) (not b!1471228) (not d!155377) (not b!1471226))
(check-sat)
