; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124884 () Bool)

(assert start!124884)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!816113 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1449139 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449139 (= e!816113 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449140 () Bool)

(declare-fun e!816111 () Bool)

(declare-fun e!816110 () Bool)

(assert (=> b!1449140 (= e!816111 e!816110)))

(declare-fun res!980715 () Bool)

(assert (=> b!1449140 (=> (not res!980715) (not e!816110))))

(declare-datatypes ((array!98249 0))(
  ( (array!98250 (arr!47408 (Array (_ BitVec 32) (_ BitVec 64))) (size!47959 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98249)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11683 0))(
  ( (MissingZero!11683 (index!49123 (_ BitVec 32))) (Found!11683 (index!49124 (_ BitVec 32))) (Intermediate!11683 (undefined!12495 Bool) (index!49125 (_ BitVec 32)) (x!130791 (_ BitVec 32))) (Undefined!11683) (MissingVacant!11683 (index!49126 (_ BitVec 32))) )
))
(declare-fun lt!635764 () SeekEntryResult!11683)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98249 (_ BitVec 32)) SeekEntryResult!11683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449140 (= res!980715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47408 a!2862) j!93) mask!2687) (select (arr!47408 a!2862) j!93) a!2862 mask!2687) lt!635764))))

(assert (=> b!1449140 (= lt!635764 (Intermediate!11683 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449141 () Bool)

(declare-fun res!980719 () Bool)

(declare-fun e!816114 () Bool)

(assert (=> b!1449141 (=> (not res!980719) (not e!816114))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449141 (= res!980719 (and (= (size!47959 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47959 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47959 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449142 () Bool)

(declare-fun res!980717 () Bool)

(assert (=> b!1449142 (=> (not res!980717) (not e!816114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98249 (_ BitVec 32)) Bool)

(assert (=> b!1449142 (= res!980717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449143 () Bool)

(declare-fun e!816109 () Bool)

(declare-fun lt!635761 () (_ BitVec 64))

(declare-fun lt!635760 () array!98249)

(declare-fun lt!635763 () SeekEntryResult!11683)

(assert (=> b!1449143 (= e!816109 (= lt!635763 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635761 lt!635760 mask!2687)))))

(declare-fun res!980723 () Bool)

(assert (=> start!124884 (=> (not res!980723) (not e!816114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124884 (= res!980723 (validMask!0 mask!2687))))

(assert (=> start!124884 e!816114))

(assert (=> start!124884 true))

(declare-fun array_inv!36353 (array!98249) Bool)

(assert (=> start!124884 (array_inv!36353 a!2862)))

(declare-fun b!1449144 () Bool)

(declare-fun res!980726 () Bool)

(assert (=> b!1449144 (=> (not res!980726) (not e!816110))))

(assert (=> b!1449144 (= res!980726 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47408 a!2862) j!93) a!2862 mask!2687) lt!635764))))

(declare-fun b!1449145 () Bool)

(declare-fun res!980721 () Bool)

(declare-fun e!816116 () Bool)

(assert (=> b!1449145 (=> (not res!980721) (not e!816116))))

(assert (=> b!1449145 (= res!980721 e!816109)))

(declare-fun c!133727 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449145 (= c!133727 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449146 () Bool)

(declare-fun e!816112 () Bool)

(assert (=> b!1449146 (= e!816112 true)))

(declare-fun lt!635758 () SeekEntryResult!11683)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98249 (_ BitVec 32)) SeekEntryResult!11683)

(assert (=> b!1449146 (= lt!635758 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47408 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449147 () Bool)

(declare-fun e!816108 () Bool)

(declare-fun e!816107 () Bool)

(assert (=> b!1449147 (= e!816108 e!816107)))

(declare-fun res!980722 () Bool)

(assert (=> b!1449147 (=> res!980722 e!816107)))

(assert (=> b!1449147 (= res!980722 (or (and (= (select (arr!47408 a!2862) index!646) (select (store (arr!47408 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47408 a!2862) index!646) (select (arr!47408 a!2862) j!93))) (not (= (select (arr!47408 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449148 () Bool)

(assert (=> b!1449148 (= e!816107 e!816113)))

(declare-fun res!980712 () Bool)

(assert (=> b!1449148 (=> (not res!980712) (not e!816113))))

(declare-fun lt!635762 () SeekEntryResult!11683)

(assert (=> b!1449148 (= res!980712 (= lt!635762 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47408 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449149 () Bool)

(declare-fun res!980727 () Bool)

(assert (=> b!1449149 (=> (not res!980727) (not e!816114))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449149 (= res!980727 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47959 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47959 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47959 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449150 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98249 (_ BitVec 32)) SeekEntryResult!11683)

(assert (=> b!1449150 (= e!816109 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635761 lt!635760 mask!2687) (seekEntryOrOpen!0 lt!635761 lt!635760 mask!2687)))))

(declare-fun b!1449151 () Bool)

(declare-fun res!980725 () Bool)

(assert (=> b!1449151 (=> (not res!980725) (not e!816114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449151 (= res!980725 (validKeyInArray!0 (select (arr!47408 a!2862) i!1006)))))

(declare-fun b!1449152 () Bool)

(assert (=> b!1449152 (= e!816110 e!816116)))

(declare-fun res!980724 () Bool)

(assert (=> b!1449152 (=> (not res!980724) (not e!816116))))

(assert (=> b!1449152 (= res!980724 (= lt!635763 (Intermediate!11683 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1449152 (= lt!635763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635761 mask!2687) lt!635761 lt!635760 mask!2687))))

(assert (=> b!1449152 (= lt!635761 (select (store (arr!47408 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449153 () Bool)

(assert (=> b!1449153 (= e!816114 e!816111)))

(declare-fun res!980718 () Bool)

(assert (=> b!1449153 (=> (not res!980718) (not e!816111))))

(assert (=> b!1449153 (= res!980718 (= (select (store (arr!47408 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449153 (= lt!635760 (array!98250 (store (arr!47408 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47959 a!2862)))))

(declare-fun b!1449154 () Bool)

(declare-fun res!980713 () Bool)

(assert (=> b!1449154 (=> (not res!980713) (not e!816114))))

(declare-datatypes ((List!34089 0))(
  ( (Nil!34086) (Cons!34085 (h!35435 (_ BitVec 64)) (t!48790 List!34089)) )
))
(declare-fun arrayNoDuplicates!0 (array!98249 (_ BitVec 32) List!34089) Bool)

(assert (=> b!1449154 (= res!980713 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34086))))

(declare-fun b!1449155 () Bool)

(declare-fun res!980714 () Bool)

(assert (=> b!1449155 (=> (not res!980714) (not e!816116))))

(assert (=> b!1449155 (= res!980714 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449156 () Bool)

(declare-fun res!980716 () Bool)

(assert (=> b!1449156 (=> (not res!980716) (not e!816114))))

(assert (=> b!1449156 (= res!980716 (validKeyInArray!0 (select (arr!47408 a!2862) j!93)))))

(declare-fun b!1449157 () Bool)

(assert (=> b!1449157 (= e!816116 (not e!816112))))

(declare-fun res!980720 () Bool)

(assert (=> b!1449157 (=> res!980720 e!816112)))

(assert (=> b!1449157 (= res!980720 (or (and (= (select (arr!47408 a!2862) index!646) (select (store (arr!47408 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47408 a!2862) index!646) (select (arr!47408 a!2862) j!93))) (not (= (select (arr!47408 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47408 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1449157 e!816108))

(declare-fun res!980711 () Bool)

(assert (=> b!1449157 (=> (not res!980711) (not e!816108))))

(assert (=> b!1449157 (= res!980711 (and (= lt!635762 (Found!11683 j!93)) (or (= (select (arr!47408 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47408 a!2862) intermediateBeforeIndex!19) (select (arr!47408 a!2862) j!93)))))))

(assert (=> b!1449157 (= lt!635762 (seekEntryOrOpen!0 (select (arr!47408 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449157 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48810 0))(
  ( (Unit!48811) )
))
(declare-fun lt!635759 () Unit!48810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48810)

(assert (=> b!1449157 (= lt!635759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!124884 res!980723) b!1449141))

(assert (= (and b!1449141 res!980719) b!1449151))

(assert (= (and b!1449151 res!980725) b!1449156))

(assert (= (and b!1449156 res!980716) b!1449142))

(assert (= (and b!1449142 res!980717) b!1449154))

(assert (= (and b!1449154 res!980713) b!1449149))

(assert (= (and b!1449149 res!980727) b!1449153))

(assert (= (and b!1449153 res!980718) b!1449140))

(assert (= (and b!1449140 res!980715) b!1449144))

(assert (= (and b!1449144 res!980726) b!1449152))

(assert (= (and b!1449152 res!980724) b!1449145))

(assert (= (and b!1449145 c!133727) b!1449143))

(assert (= (and b!1449145 (not c!133727)) b!1449150))

(assert (= (and b!1449145 res!980721) b!1449155))

(assert (= (and b!1449155 res!980714) b!1449157))

(assert (= (and b!1449157 res!980711) b!1449147))

(assert (= (and b!1449147 (not res!980722)) b!1449148))

(assert (= (and b!1449148 res!980712) b!1449139))

(assert (= (and b!1449157 (not res!980720)) b!1449146))

(declare-fun m!1337919 () Bool)

(assert (=> b!1449146 m!1337919))

(assert (=> b!1449146 m!1337919))

(declare-fun m!1337921 () Bool)

(assert (=> b!1449146 m!1337921))

(assert (=> b!1449148 m!1337919))

(assert (=> b!1449148 m!1337919))

(declare-fun m!1337923 () Bool)

(assert (=> b!1449148 m!1337923))

(assert (=> b!1449140 m!1337919))

(assert (=> b!1449140 m!1337919))

(declare-fun m!1337925 () Bool)

(assert (=> b!1449140 m!1337925))

(assert (=> b!1449140 m!1337925))

(assert (=> b!1449140 m!1337919))

(declare-fun m!1337927 () Bool)

(assert (=> b!1449140 m!1337927))

(declare-fun m!1337929 () Bool)

(assert (=> b!1449147 m!1337929))

(declare-fun m!1337931 () Bool)

(assert (=> b!1449147 m!1337931))

(declare-fun m!1337933 () Bool)

(assert (=> b!1449147 m!1337933))

(assert (=> b!1449147 m!1337919))

(assert (=> b!1449156 m!1337919))

(assert (=> b!1449156 m!1337919))

(declare-fun m!1337935 () Bool)

(assert (=> b!1449156 m!1337935))

(assert (=> b!1449144 m!1337919))

(assert (=> b!1449144 m!1337919))

(declare-fun m!1337937 () Bool)

(assert (=> b!1449144 m!1337937))

(declare-fun m!1337939 () Bool)

(assert (=> b!1449154 m!1337939))

(declare-fun m!1337941 () Bool)

(assert (=> b!1449157 m!1337941))

(assert (=> b!1449157 m!1337931))

(declare-fun m!1337943 () Bool)

(assert (=> b!1449157 m!1337943))

(assert (=> b!1449157 m!1337933))

(assert (=> b!1449157 m!1337929))

(assert (=> b!1449157 m!1337919))

(declare-fun m!1337945 () Bool)

(assert (=> b!1449157 m!1337945))

(declare-fun m!1337947 () Bool)

(assert (=> b!1449157 m!1337947))

(assert (=> b!1449157 m!1337919))

(declare-fun m!1337949 () Bool)

(assert (=> start!124884 m!1337949))

(declare-fun m!1337951 () Bool)

(assert (=> start!124884 m!1337951))

(declare-fun m!1337953 () Bool)

(assert (=> b!1449150 m!1337953))

(declare-fun m!1337955 () Bool)

(assert (=> b!1449150 m!1337955))

(assert (=> b!1449153 m!1337931))

(declare-fun m!1337957 () Bool)

(assert (=> b!1449153 m!1337957))

(declare-fun m!1337959 () Bool)

(assert (=> b!1449143 m!1337959))

(declare-fun m!1337961 () Bool)

(assert (=> b!1449151 m!1337961))

(assert (=> b!1449151 m!1337961))

(declare-fun m!1337963 () Bool)

(assert (=> b!1449151 m!1337963))

(declare-fun m!1337965 () Bool)

(assert (=> b!1449142 m!1337965))

(declare-fun m!1337967 () Bool)

(assert (=> b!1449152 m!1337967))

(assert (=> b!1449152 m!1337967))

(declare-fun m!1337969 () Bool)

(assert (=> b!1449152 m!1337969))

(assert (=> b!1449152 m!1337931))

(declare-fun m!1337971 () Bool)

(assert (=> b!1449152 m!1337971))

(check-sat (not b!1449142) (not b!1449157) (not b!1449152) (not b!1449146) (not b!1449150) (not b!1449156) (not b!1449154) (not b!1449143) (not b!1449140) (not b!1449148) (not b!1449144) (not b!1449151) (not start!124884))
(check-sat)
