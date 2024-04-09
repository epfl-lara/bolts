; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120064 () Bool)

(assert start!120064)

(declare-fun b!1397199 () Bool)

(declare-fun res!936227 () Bool)

(declare-fun e!791027 () Bool)

(assert (=> b!1397199 (=> (not res!936227) (not e!791027))))

(declare-datatypes ((array!95511 0))(
  ( (array!95512 (arr!46105 (Array (_ BitVec 32) (_ BitVec 64))) (size!46656 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95511)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397199 (= res!936227 (validKeyInArray!0 (select (arr!46105 a!2901) j!112)))))

(declare-fun b!1397200 () Bool)

(declare-fun e!791030 () Bool)

(assert (=> b!1397200 (= e!791030 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!614024 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10444 0))(
  ( (MissingZero!10444 (index!44146 (_ BitVec 32))) (Found!10444 (index!44147 (_ BitVec 32))) (Intermediate!10444 (undefined!11256 Bool) (index!44148 (_ BitVec 32)) (x!125813 (_ BitVec 32))) (Undefined!10444) (MissingVacant!10444 (index!44149 (_ BitVec 32))) )
))
(declare-fun lt!614025 () SeekEntryResult!10444)

(declare-fun lt!614021 () (_ BitVec 32))

(declare-fun lt!614022 () array!95511)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95511 (_ BitVec 32)) SeekEntryResult!10444)

(assert (=> b!1397200 (= lt!614025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614021 lt!614024 lt!614022 mask!2840))))

(declare-fun b!1397201 () Bool)

(declare-fun e!791026 () Bool)

(assert (=> b!1397201 (= e!791026 e!791030)))

(declare-fun res!936223 () Bool)

(assert (=> b!1397201 (=> res!936223 e!791030)))

(declare-fun lt!614020 () SeekEntryResult!10444)

(declare-fun lt!614026 () SeekEntryResult!10444)

(assert (=> b!1397201 (= res!936223 (or (= lt!614020 lt!614026) (not (is-Intermediate!10444 lt!614026)) (bvslt (x!125813 lt!614020) #b00000000000000000000000000000000) (bvsgt (x!125813 lt!614020) #b01111111111111111111111111111110) (bvslt lt!614021 #b00000000000000000000000000000000) (bvsge lt!614021 (size!46656 a!2901)) (bvslt (index!44148 lt!614020) #b00000000000000000000000000000000) (bvsge (index!44148 lt!614020) (size!46656 a!2901)) (not (= lt!614020 (Intermediate!10444 false (index!44148 lt!614020) (x!125813 lt!614020)))) (not (= lt!614026 (Intermediate!10444 (undefined!11256 lt!614026) (index!44148 lt!614026) (x!125813 lt!614026))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397201 (= lt!614026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614024 mask!2840) lt!614024 lt!614022 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397201 (= lt!614024 (select (store (arr!46105 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397201 (= lt!614022 (array!95512 (store (arr!46105 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46656 a!2901)))))

(declare-fun b!1397202 () Bool)

(declare-fun res!936224 () Bool)

(assert (=> b!1397202 (=> (not res!936224) (not e!791027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95511 (_ BitVec 32)) Bool)

(assert (=> b!1397202 (= res!936224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397203 () Bool)

(declare-fun res!936226 () Bool)

(assert (=> b!1397203 (=> (not res!936226) (not e!791027))))

(assert (=> b!1397203 (= res!936226 (validKeyInArray!0 (select (arr!46105 a!2901) i!1037)))))

(declare-fun b!1397204 () Bool)

(assert (=> b!1397204 (= e!791027 (not e!791026))))

(declare-fun res!936225 () Bool)

(assert (=> b!1397204 (=> res!936225 e!791026)))

(assert (=> b!1397204 (= res!936225 (or (not (is-Intermediate!10444 lt!614020)) (undefined!11256 lt!614020)))))

(declare-fun e!791029 () Bool)

(assert (=> b!1397204 e!791029))

(declare-fun res!936222 () Bool)

(assert (=> b!1397204 (=> (not res!936222) (not e!791029))))

(assert (=> b!1397204 (= res!936222 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46842 0))(
  ( (Unit!46843) )
))
(declare-fun lt!614023 () Unit!46842)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95511 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46842)

(assert (=> b!1397204 (= lt!614023 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397204 (= lt!614020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614021 (select (arr!46105 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397204 (= lt!614021 (toIndex!0 (select (arr!46105 a!2901) j!112) mask!2840))))

(declare-fun b!1397205 () Bool)

(declare-fun res!936221 () Bool)

(assert (=> b!1397205 (=> (not res!936221) (not e!791027))))

(assert (=> b!1397205 (= res!936221 (and (= (size!46656 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46656 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46656 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397206 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95511 (_ BitVec 32)) SeekEntryResult!10444)

(assert (=> b!1397206 (= e!791029 (= (seekEntryOrOpen!0 (select (arr!46105 a!2901) j!112) a!2901 mask!2840) (Found!10444 j!112)))))

(declare-fun res!936228 () Bool)

(assert (=> start!120064 (=> (not res!936228) (not e!791027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120064 (= res!936228 (validMask!0 mask!2840))))

(assert (=> start!120064 e!791027))

(assert (=> start!120064 true))

(declare-fun array_inv!35050 (array!95511) Bool)

(assert (=> start!120064 (array_inv!35050 a!2901)))

(declare-fun b!1397198 () Bool)

(declare-fun res!936220 () Bool)

(assert (=> b!1397198 (=> (not res!936220) (not e!791027))))

(declare-datatypes ((List!32804 0))(
  ( (Nil!32801) (Cons!32800 (h!34042 (_ BitVec 64)) (t!47505 List!32804)) )
))
(declare-fun arrayNoDuplicates!0 (array!95511 (_ BitVec 32) List!32804) Bool)

(assert (=> b!1397198 (= res!936220 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32801))))

(assert (= (and start!120064 res!936228) b!1397205))

(assert (= (and b!1397205 res!936221) b!1397203))

(assert (= (and b!1397203 res!936226) b!1397199))

(assert (= (and b!1397199 res!936227) b!1397202))

(assert (= (and b!1397202 res!936224) b!1397198))

(assert (= (and b!1397198 res!936220) b!1397204))

(assert (= (and b!1397204 res!936222) b!1397206))

(assert (= (and b!1397204 (not res!936225)) b!1397201))

(assert (= (and b!1397201 (not res!936223)) b!1397200))

(declare-fun m!1283975 () Bool)

(assert (=> b!1397206 m!1283975))

(assert (=> b!1397206 m!1283975))

(declare-fun m!1283977 () Bool)

(assert (=> b!1397206 m!1283977))

(declare-fun m!1283979 () Bool)

(assert (=> b!1397201 m!1283979))

(assert (=> b!1397201 m!1283979))

(declare-fun m!1283981 () Bool)

(assert (=> b!1397201 m!1283981))

(declare-fun m!1283983 () Bool)

(assert (=> b!1397201 m!1283983))

(declare-fun m!1283985 () Bool)

(assert (=> b!1397201 m!1283985))

(declare-fun m!1283987 () Bool)

(assert (=> b!1397203 m!1283987))

(assert (=> b!1397203 m!1283987))

(declare-fun m!1283989 () Bool)

(assert (=> b!1397203 m!1283989))

(declare-fun m!1283991 () Bool)

(assert (=> b!1397200 m!1283991))

(declare-fun m!1283993 () Bool)

(assert (=> b!1397198 m!1283993))

(declare-fun m!1283995 () Bool)

(assert (=> start!120064 m!1283995))

(declare-fun m!1283997 () Bool)

(assert (=> start!120064 m!1283997))

(declare-fun m!1283999 () Bool)

(assert (=> b!1397202 m!1283999))

(assert (=> b!1397199 m!1283975))

(assert (=> b!1397199 m!1283975))

(declare-fun m!1284001 () Bool)

(assert (=> b!1397199 m!1284001))

(assert (=> b!1397204 m!1283975))

(declare-fun m!1284003 () Bool)

(assert (=> b!1397204 m!1284003))

(assert (=> b!1397204 m!1283975))

(declare-fun m!1284005 () Bool)

(assert (=> b!1397204 m!1284005))

(declare-fun m!1284007 () Bool)

(assert (=> b!1397204 m!1284007))

(assert (=> b!1397204 m!1283975))

(declare-fun m!1284009 () Bool)

(assert (=> b!1397204 m!1284009))

(push 1)

