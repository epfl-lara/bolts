; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126902 () Bool)

(assert start!126902)

(declare-fun b!1489906 () Bool)

(declare-fun res!1013365 () Bool)

(declare-fun e!834974 () Bool)

(assert (=> b!1489906 (=> (not res!1013365) (not e!834974))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99592 0))(
  ( (array!99593 (arr!48063 (Array (_ BitVec 32) (_ BitVec 64))) (size!48614 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99592)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12326 0))(
  ( (MissingZero!12326 (index!51695 (_ BitVec 32))) (Found!12326 (index!51696 (_ BitVec 32))) (Intermediate!12326 (undefined!13138 Bool) (index!51697 (_ BitVec 32)) (x!133289 (_ BitVec 32))) (Undefined!12326) (MissingVacant!12326 (index!51698 (_ BitVec 32))) )
))
(declare-fun lt!649715 () SeekEntryResult!12326)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99592 (_ BitVec 32)) SeekEntryResult!12326)

(assert (=> b!1489906 (= res!1013365 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48063 a!2862) j!93) a!2862 mask!2687) lt!649715))))

(declare-fun b!1489907 () Bool)

(declare-fun e!834976 () Bool)

(declare-fun e!834975 () Bool)

(assert (=> b!1489907 (= e!834976 e!834975)))

(declare-fun res!1013369 () Bool)

(assert (=> b!1489907 (=> (not res!1013369) (not e!834975))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489907 (= res!1013369 (= (select (store (arr!48063 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!649716 () array!99592)

(assert (=> b!1489907 (= lt!649716 (array!99593 (store (arr!48063 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48614 a!2862)))))

(declare-fun b!1489908 () Bool)

(declare-fun res!1013360 () Bool)

(assert (=> b!1489908 (=> (not res!1013360) (not e!834976))))

(declare-datatypes ((List!34744 0))(
  ( (Nil!34741) (Cons!34740 (h!36123 (_ BitVec 64)) (t!49445 List!34744)) )
))
(declare-fun arrayNoDuplicates!0 (array!99592 (_ BitVec 32) List!34744) Bool)

(assert (=> b!1489908 (= res!1013360 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34741))))

(declare-fun b!1489909 () Bool)

(declare-fun res!1013361 () Bool)

(declare-fun e!834977 () Bool)

(assert (=> b!1489909 (=> (not res!1013361) (not e!834977))))

(declare-fun e!834972 () Bool)

(assert (=> b!1489909 (= res!1013361 e!834972)))

(declare-fun c!137804 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1489909 (= c!137804 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489910 () Bool)

(assert (=> b!1489910 (= e!834974 e!834977)))

(declare-fun res!1013370 () Bool)

(assert (=> b!1489910 (=> (not res!1013370) (not e!834977))))

(declare-fun lt!649718 () SeekEntryResult!12326)

(assert (=> b!1489910 (= res!1013370 (= lt!649718 (Intermediate!12326 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649717 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489910 (= lt!649718 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649717 mask!2687) lt!649717 lt!649716 mask!2687))))

(assert (=> b!1489910 (= lt!649717 (select (store (arr!48063 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489911 () Bool)

(declare-fun res!1013373 () Bool)

(assert (=> b!1489911 (=> (not res!1013373) (not e!834976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489911 (= res!1013373 (validKeyInArray!0 (select (arr!48063 a!2862) i!1006)))))

(declare-fun b!1489912 () Bool)

(declare-fun res!1013366 () Bool)

(assert (=> b!1489912 (=> (not res!1013366) (not e!834976))))

(assert (=> b!1489912 (= res!1013366 (and (= (size!48614 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48614 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48614 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489913 () Bool)

(declare-fun res!1013367 () Bool)

(declare-fun e!834979 () Bool)

(assert (=> b!1489913 (=> res!1013367 e!834979)))

(declare-fun lt!649723 () (_ BitVec 32))

(assert (=> b!1489913 (= res!1013367 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649723 (select (arr!48063 a!2862) j!93) a!2862 mask!2687) lt!649715)))))

(declare-fun b!1489914 () Bool)

(assert (=> b!1489914 (= e!834979 true)))

(declare-fun lt!649722 () SeekEntryResult!12326)

(declare-fun lt!649719 () SeekEntryResult!12326)

(assert (=> b!1489914 (= lt!649722 lt!649719)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49940 0))(
  ( (Unit!49941) )
))
(declare-fun lt!649721 () Unit!49940)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49940)

(assert (=> b!1489914 (= lt!649721 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649723 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489915 () Bool)

(declare-fun e!834980 () Bool)

(assert (=> b!1489915 (= e!834980 e!834979)))

(declare-fun res!1013368 () Bool)

(assert (=> b!1489915 (=> res!1013368 e!834979)))

(assert (=> b!1489915 (= res!1013368 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649723 #b00000000000000000000000000000000) (bvsge lt!649723 (size!48614 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489915 (= lt!649723 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99592 (_ BitVec 32)) SeekEntryResult!12326)

(assert (=> b!1489915 (= lt!649719 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649717 lt!649716 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99592 (_ BitVec 32)) SeekEntryResult!12326)

(assert (=> b!1489915 (= lt!649719 (seekEntryOrOpen!0 lt!649717 lt!649716 mask!2687))))

(declare-fun b!1489916 () Bool)

(assert (=> b!1489916 (= e!834975 e!834974)))

(declare-fun res!1013374 () Bool)

(assert (=> b!1489916 (=> (not res!1013374) (not e!834974))))

(assert (=> b!1489916 (= res!1013374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48063 a!2862) j!93) mask!2687) (select (arr!48063 a!2862) j!93) a!2862 mask!2687) lt!649715))))

(assert (=> b!1489916 (= lt!649715 (Intermediate!12326 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489917 () Bool)

(declare-fun res!1013362 () Bool)

(assert (=> b!1489917 (=> res!1013362 e!834979)))

(declare-fun e!834973 () Bool)

(assert (=> b!1489917 (= res!1013362 e!834973)))

(declare-fun c!137803 () Bool)

(assert (=> b!1489917 (= c!137803 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489918 () Bool)

(assert (=> b!1489918 (= e!834972 (= lt!649718 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649717 lt!649716 mask!2687)))))

(declare-fun b!1489919 () Bool)

(assert (=> b!1489919 (= e!834972 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649717 lt!649716 mask!2687) (seekEntryOrOpen!0 lt!649717 lt!649716 mask!2687)))))

(declare-fun b!1489920 () Bool)

(declare-fun res!1013371 () Bool)

(assert (=> b!1489920 (=> (not res!1013371) (not e!834976))))

(assert (=> b!1489920 (= res!1013371 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48614 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48614 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48614 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489921 () Bool)

(assert (=> b!1489921 (= e!834973 (not (= lt!649718 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649723 lt!649717 lt!649716 mask!2687))))))

(declare-fun b!1489922 () Bool)

(declare-fun res!1013363 () Bool)

(assert (=> b!1489922 (=> (not res!1013363) (not e!834977))))

(assert (=> b!1489922 (= res!1013363 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489923 () Bool)

(declare-fun res!1013359 () Bool)

(assert (=> b!1489923 (=> (not res!1013359) (not e!834976))))

(assert (=> b!1489923 (= res!1013359 (validKeyInArray!0 (select (arr!48063 a!2862) j!93)))))

(declare-fun b!1489924 () Bool)

(declare-fun res!1013372 () Bool)

(assert (=> b!1489924 (=> res!1013372 e!834979)))

(assert (=> b!1489924 (= res!1013372 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489925 () Bool)

(declare-fun res!1013364 () Bool)

(assert (=> b!1489925 (=> (not res!1013364) (not e!834976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99592 (_ BitVec 32)) Bool)

(assert (=> b!1489925 (= res!1013364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1013376 () Bool)

(assert (=> start!126902 (=> (not res!1013376) (not e!834976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126902 (= res!1013376 (validMask!0 mask!2687))))

(assert (=> start!126902 e!834976))

(assert (=> start!126902 true))

(declare-fun array_inv!37008 (array!99592) Bool)

(assert (=> start!126902 (array_inv!37008 a!2862)))

(declare-fun b!1489926 () Bool)

(assert (=> b!1489926 (= e!834973 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649723 intermediateAfterIndex!19 lt!649717 lt!649716 mask!2687) lt!649719)))))

(declare-fun b!1489927 () Bool)

(assert (=> b!1489927 (= e!834977 (not e!834980))))

(declare-fun res!1013375 () Bool)

(assert (=> b!1489927 (=> res!1013375 e!834980)))

(assert (=> b!1489927 (= res!1013375 (or (and (= (select (arr!48063 a!2862) index!646) (select (store (arr!48063 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48063 a!2862) index!646) (select (arr!48063 a!2862) j!93))) (= (select (arr!48063 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489927 (and (= lt!649722 (Found!12326 j!93)) (or (= (select (arr!48063 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48063 a!2862) intermediateBeforeIndex!19) (select (arr!48063 a!2862) j!93))) (let ((bdg!54758 (select (store (arr!48063 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48063 a!2862) index!646) bdg!54758) (= (select (arr!48063 a!2862) index!646) (select (arr!48063 a!2862) j!93))) (= (select (arr!48063 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54758 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> b!1489927 (= lt!649722 (seekEntryOrOpen!0 (select (arr!48063 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489927 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649720 () Unit!49940)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99592 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49940)

(assert (=> b!1489927 (= lt!649720 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126902 res!1013376) b!1489912))

(assert (= (and b!1489912 res!1013366) b!1489911))

(assert (= (and b!1489911 res!1013373) b!1489923))

(assert (= (and b!1489923 res!1013359) b!1489925))

(assert (= (and b!1489925 res!1013364) b!1489908))

(assert (= (and b!1489908 res!1013360) b!1489920))

(assert (= (and b!1489920 res!1013371) b!1489907))

(assert (= (and b!1489907 res!1013369) b!1489916))

(assert (= (and b!1489916 res!1013374) b!1489906))

(assert (= (and b!1489906 res!1013365) b!1489910))

(assert (= (and b!1489910 res!1013370) b!1489909))

(assert (= (and b!1489909 c!137804) b!1489918))

(assert (= (and b!1489909 (not c!137804)) b!1489919))

(assert (= (and b!1489909 res!1013361) b!1489922))

(assert (= (and b!1489922 res!1013363) b!1489927))

(assert (= (and b!1489927 (not res!1013375)) b!1489915))

(assert (= (and b!1489915 (not res!1013368)) b!1489913))

(assert (= (and b!1489913 (not res!1013367)) b!1489917))

(assert (= (and b!1489917 c!137803) b!1489921))

(assert (= (and b!1489917 (not c!137803)) b!1489926))

(assert (= (and b!1489917 (not res!1013362)) b!1489924))

(assert (= (and b!1489924 (not res!1013372)) b!1489914))

(declare-fun m!1374147 () Bool)

(assert (=> start!126902 m!1374147))

(declare-fun m!1374149 () Bool)

(assert (=> start!126902 m!1374149))

(declare-fun m!1374151 () Bool)

(assert (=> b!1489921 m!1374151))

(declare-fun m!1374153 () Bool)

(assert (=> b!1489926 m!1374153))

(declare-fun m!1374155 () Bool)

(assert (=> b!1489915 m!1374155))

(declare-fun m!1374157 () Bool)

(assert (=> b!1489915 m!1374157))

(declare-fun m!1374159 () Bool)

(assert (=> b!1489915 m!1374159))

(declare-fun m!1374161 () Bool)

(assert (=> b!1489925 m!1374161))

(assert (=> b!1489919 m!1374157))

(assert (=> b!1489919 m!1374159))

(declare-fun m!1374163 () Bool)

(assert (=> b!1489923 m!1374163))

(assert (=> b!1489923 m!1374163))

(declare-fun m!1374165 () Bool)

(assert (=> b!1489923 m!1374165))

(assert (=> b!1489916 m!1374163))

(assert (=> b!1489916 m!1374163))

(declare-fun m!1374167 () Bool)

(assert (=> b!1489916 m!1374167))

(assert (=> b!1489916 m!1374167))

(assert (=> b!1489916 m!1374163))

(declare-fun m!1374169 () Bool)

(assert (=> b!1489916 m!1374169))

(declare-fun m!1374171 () Bool)

(assert (=> b!1489911 m!1374171))

(assert (=> b!1489911 m!1374171))

(declare-fun m!1374173 () Bool)

(assert (=> b!1489911 m!1374173))

(assert (=> b!1489906 m!1374163))

(assert (=> b!1489906 m!1374163))

(declare-fun m!1374175 () Bool)

(assert (=> b!1489906 m!1374175))

(declare-fun m!1374177 () Bool)

(assert (=> b!1489927 m!1374177))

(declare-fun m!1374179 () Bool)

(assert (=> b!1489927 m!1374179))

(declare-fun m!1374181 () Bool)

(assert (=> b!1489927 m!1374181))

(declare-fun m!1374183 () Bool)

(assert (=> b!1489927 m!1374183))

(declare-fun m!1374185 () Bool)

(assert (=> b!1489927 m!1374185))

(assert (=> b!1489927 m!1374163))

(declare-fun m!1374187 () Bool)

(assert (=> b!1489927 m!1374187))

(declare-fun m!1374189 () Bool)

(assert (=> b!1489927 m!1374189))

(assert (=> b!1489927 m!1374163))

(declare-fun m!1374191 () Bool)

(assert (=> b!1489910 m!1374191))

(assert (=> b!1489910 m!1374191))

(declare-fun m!1374193 () Bool)

(assert (=> b!1489910 m!1374193))

(assert (=> b!1489910 m!1374179))

(declare-fun m!1374195 () Bool)

(assert (=> b!1489910 m!1374195))

(assert (=> b!1489907 m!1374179))

(declare-fun m!1374197 () Bool)

(assert (=> b!1489907 m!1374197))

(assert (=> b!1489913 m!1374163))

(assert (=> b!1489913 m!1374163))

(declare-fun m!1374199 () Bool)

(assert (=> b!1489913 m!1374199))

(declare-fun m!1374201 () Bool)

(assert (=> b!1489918 m!1374201))

(declare-fun m!1374203 () Bool)

(assert (=> b!1489914 m!1374203))

(declare-fun m!1374205 () Bool)

(assert (=> b!1489908 m!1374205))

(push 1)

