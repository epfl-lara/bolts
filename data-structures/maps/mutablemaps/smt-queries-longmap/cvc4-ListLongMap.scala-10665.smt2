; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125174 () Bool)

(assert start!125174)

(declare-fun b!1457915 () Bool)

(declare-fun res!988225 () Bool)

(declare-fun e!820128 () Bool)

(assert (=> b!1457915 (=> (not res!988225) (not e!820128))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1457915 (= res!988225 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!638826 () (_ BitVec 32))

(declare-datatypes ((array!98539 0))(
  ( (array!98540 (arr!47553 (Array (_ BitVec 32) (_ BitVec 64))) (size!48104 (_ BitVec 32))) )
))
(declare-fun lt!638825 () array!98539)

(declare-fun e!820130 () Bool)

(declare-fun lt!638821 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11828 0))(
  ( (MissingZero!11828 (index!49703 (_ BitVec 32))) (Found!11828 (index!49704 (_ BitVec 32))) (Intermediate!11828 (undefined!12640 Bool) (index!49705 (_ BitVec 32)) (x!131320 (_ BitVec 32))) (Undefined!11828) (MissingVacant!11828 (index!49706 (_ BitVec 32))) )
))
(declare-fun lt!638824 () SeekEntryResult!11828)

(declare-fun b!1457916 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98539 (_ BitVec 32)) SeekEntryResult!11828)

(assert (=> b!1457916 (= e!820130 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638826 intermediateAfterIndex!19 lt!638821 lt!638825 mask!2687) lt!638824)))))

(declare-fun b!1457917 () Bool)

(declare-fun e!820131 () Bool)

(assert (=> b!1457917 (= e!820131 true)))

(declare-fun lt!638820 () Bool)

(assert (=> b!1457917 (= lt!638820 e!820130)))

(declare-fun c!134360 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457917 (= c!134360 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457918 () Bool)

(declare-fun e!820124 () Bool)

(declare-fun e!820133 () Bool)

(assert (=> b!1457918 (= e!820124 e!820133)))

(declare-fun res!988233 () Bool)

(assert (=> b!1457918 (=> (not res!988233) (not e!820133))))

(declare-fun a!2862 () array!98539)

(declare-fun lt!638827 () SeekEntryResult!11828)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98539 (_ BitVec 32)) SeekEntryResult!11828)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457918 (= res!988233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47553 a!2862) j!93) mask!2687) (select (arr!47553 a!2862) j!93) a!2862 mask!2687) lt!638827))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1457918 (= lt!638827 (Intermediate!11828 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457919 () Bool)

(declare-fun res!988236 () Bool)

(declare-fun e!820126 () Bool)

(assert (=> b!1457919 (=> (not res!988236) (not e!820126))))

(declare-datatypes ((List!34234 0))(
  ( (Nil!34231) (Cons!34230 (h!35580 (_ BitVec 64)) (t!48935 List!34234)) )
))
(declare-fun arrayNoDuplicates!0 (array!98539 (_ BitVec 32) List!34234) Bool)

(assert (=> b!1457919 (= res!988236 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34231))))

(declare-fun b!1457920 () Bool)

(declare-fun e!820129 () Bool)

(assert (=> b!1457920 (= e!820129 e!820131)))

(declare-fun res!988235 () Bool)

(assert (=> b!1457920 (=> res!988235 e!820131)))

(assert (=> b!1457920 (= res!988235 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638826 #b00000000000000000000000000000000) (bvsge lt!638826 (size!48104 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457920 (= lt!638826 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457920 (= lt!638824 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638821 lt!638825 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98539 (_ BitVec 32)) SeekEntryResult!11828)

(assert (=> b!1457920 (= lt!638824 (seekEntryOrOpen!0 lt!638821 lt!638825 mask!2687))))

(declare-fun b!1457921 () Bool)

(declare-fun res!988226 () Bool)

(assert (=> b!1457921 (=> (not res!988226) (not e!820133))))

(assert (=> b!1457921 (= res!988226 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47553 a!2862) j!93) a!2862 mask!2687) lt!638827))))

(declare-fun b!1457922 () Bool)

(declare-fun res!988228 () Bool)

(assert (=> b!1457922 (=> (not res!988228) (not e!820128))))

(declare-fun e!820125 () Bool)

(assert (=> b!1457922 (= res!988228 e!820125)))

(declare-fun c!134359 () Bool)

(assert (=> b!1457922 (= c!134359 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457923 () Bool)

(declare-fun res!988238 () Bool)

(assert (=> b!1457923 (=> (not res!988238) (not e!820126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457923 (= res!988238 (validKeyInArray!0 (select (arr!47553 a!2862) i!1006)))))

(declare-fun b!1457924 () Bool)

(assert (=> b!1457924 (= e!820125 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638821 lt!638825 mask!2687) (seekEntryOrOpen!0 lt!638821 lt!638825 mask!2687)))))

(declare-fun b!1457925 () Bool)

(declare-fun lt!638823 () SeekEntryResult!11828)

(assert (=> b!1457925 (= e!820130 (not (= lt!638823 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638826 lt!638821 lt!638825 mask!2687))))))

(declare-fun b!1457914 () Bool)

(declare-fun res!988227 () Bool)

(assert (=> b!1457914 (=> (not res!988227) (not e!820126))))

(assert (=> b!1457914 (= res!988227 (and (= (size!48104 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48104 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48104 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!988222 () Bool)

(assert (=> start!125174 (=> (not res!988222) (not e!820126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125174 (= res!988222 (validMask!0 mask!2687))))

(assert (=> start!125174 e!820126))

(assert (=> start!125174 true))

(declare-fun array_inv!36498 (array!98539) Bool)

(assert (=> start!125174 (array_inv!36498 a!2862)))

(declare-fun b!1457926 () Bool)

(declare-fun res!988239 () Bool)

(assert (=> b!1457926 (=> (not res!988239) (not e!820126))))

(assert (=> b!1457926 (= res!988239 (validKeyInArray!0 (select (arr!47553 a!2862) j!93)))))

(declare-fun b!1457927 () Bool)

(assert (=> b!1457927 (= e!820126 e!820124)))

(declare-fun res!988223 () Bool)

(assert (=> b!1457927 (=> (not res!988223) (not e!820124))))

(assert (=> b!1457927 (= res!988223 (= (select (store (arr!47553 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457927 (= lt!638825 (array!98540 (store (arr!47553 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48104 a!2862)))))

(declare-fun b!1457928 () Bool)

(declare-fun res!988224 () Bool)

(assert (=> b!1457928 (=> res!988224 e!820131)))

(assert (=> b!1457928 (= res!988224 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638826 (select (arr!47553 a!2862) j!93) a!2862 mask!2687) lt!638827)))))

(declare-fun b!1457929 () Bool)

(declare-fun res!988232 () Bool)

(assert (=> b!1457929 (=> (not res!988232) (not e!820126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98539 (_ BitVec 32)) Bool)

(assert (=> b!1457929 (= res!988232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457930 () Bool)

(assert (=> b!1457930 (= e!820128 (not e!820129))))

(declare-fun res!988231 () Bool)

(assert (=> b!1457930 (=> res!988231 e!820129)))

(assert (=> b!1457930 (= res!988231 (or (and (= (select (arr!47553 a!2862) index!646) (select (store (arr!47553 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47553 a!2862) index!646) (select (arr!47553 a!2862) j!93))) (= (select (arr!47553 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!820132 () Bool)

(assert (=> b!1457930 e!820132))

(declare-fun res!988230 () Bool)

(assert (=> b!1457930 (=> (not res!988230) (not e!820132))))

(assert (=> b!1457930 (= res!988230 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49100 0))(
  ( (Unit!49101) )
))
(declare-fun lt!638822 () Unit!49100)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49100)

(assert (=> b!1457930 (= lt!638822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457931 () Bool)

(declare-fun res!988237 () Bool)

(assert (=> b!1457931 (=> (not res!988237) (not e!820132))))

(assert (=> b!1457931 (= res!988237 (= (seekEntryOrOpen!0 (select (arr!47553 a!2862) j!93) a!2862 mask!2687) (Found!11828 j!93)))))

(declare-fun b!1457932 () Bool)

(declare-fun res!988234 () Bool)

(assert (=> b!1457932 (=> (not res!988234) (not e!820126))))

(assert (=> b!1457932 (= res!988234 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48104 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48104 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48104 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457933 () Bool)

(assert (=> b!1457933 (= e!820132 (and (or (= (select (arr!47553 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47553 a!2862) intermediateBeforeIndex!19) (select (arr!47553 a!2862) j!93))) (let ((bdg!53383 (select (store (arr!47553 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47553 a!2862) index!646) bdg!53383) (= (select (arr!47553 a!2862) index!646) (select (arr!47553 a!2862) j!93))) (= (select (arr!47553 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53383 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457934 () Bool)

(assert (=> b!1457934 (= e!820133 e!820128)))

(declare-fun res!988229 () Bool)

(assert (=> b!1457934 (=> (not res!988229) (not e!820128))))

(assert (=> b!1457934 (= res!988229 (= lt!638823 (Intermediate!11828 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457934 (= lt!638823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638821 mask!2687) lt!638821 lt!638825 mask!2687))))

(assert (=> b!1457934 (= lt!638821 (select (store (arr!47553 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457935 () Bool)

(assert (=> b!1457935 (= e!820125 (= lt!638823 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638821 lt!638825 mask!2687)))))

(assert (= (and start!125174 res!988222) b!1457914))

(assert (= (and b!1457914 res!988227) b!1457923))

(assert (= (and b!1457923 res!988238) b!1457926))

(assert (= (and b!1457926 res!988239) b!1457929))

(assert (= (and b!1457929 res!988232) b!1457919))

(assert (= (and b!1457919 res!988236) b!1457932))

(assert (= (and b!1457932 res!988234) b!1457927))

(assert (= (and b!1457927 res!988223) b!1457918))

(assert (= (and b!1457918 res!988233) b!1457921))

(assert (= (and b!1457921 res!988226) b!1457934))

(assert (= (and b!1457934 res!988229) b!1457922))

(assert (= (and b!1457922 c!134359) b!1457935))

(assert (= (and b!1457922 (not c!134359)) b!1457924))

(assert (= (and b!1457922 res!988228) b!1457915))

(assert (= (and b!1457915 res!988225) b!1457930))

(assert (= (and b!1457930 res!988230) b!1457931))

(assert (= (and b!1457931 res!988237) b!1457933))

(assert (= (and b!1457930 (not res!988231)) b!1457920))

(assert (= (and b!1457920 (not res!988235)) b!1457928))

(assert (= (and b!1457928 (not res!988224)) b!1457917))

(assert (= (and b!1457917 c!134360) b!1457925))

(assert (= (and b!1457917 (not c!134360)) b!1457916))

(declare-fun m!1345883 () Bool)

(assert (=> start!125174 m!1345883))

(declare-fun m!1345885 () Bool)

(assert (=> start!125174 m!1345885))

(declare-fun m!1345887 () Bool)

(assert (=> b!1457920 m!1345887))

(declare-fun m!1345889 () Bool)

(assert (=> b!1457920 m!1345889))

(declare-fun m!1345891 () Bool)

(assert (=> b!1457920 m!1345891))

(declare-fun m!1345893 () Bool)

(assert (=> b!1457926 m!1345893))

(assert (=> b!1457926 m!1345893))

(declare-fun m!1345895 () Bool)

(assert (=> b!1457926 m!1345895))

(declare-fun m!1345897 () Bool)

(assert (=> b!1457929 m!1345897))

(declare-fun m!1345899 () Bool)

(assert (=> b!1457935 m!1345899))

(declare-fun m!1345901 () Bool)

(assert (=> b!1457934 m!1345901))

(assert (=> b!1457934 m!1345901))

(declare-fun m!1345903 () Bool)

(assert (=> b!1457934 m!1345903))

(declare-fun m!1345905 () Bool)

(assert (=> b!1457934 m!1345905))

(declare-fun m!1345907 () Bool)

(assert (=> b!1457934 m!1345907))

(declare-fun m!1345909 () Bool)

(assert (=> b!1457916 m!1345909))

(assert (=> b!1457931 m!1345893))

(assert (=> b!1457931 m!1345893))

(declare-fun m!1345911 () Bool)

(assert (=> b!1457931 m!1345911))

(assert (=> b!1457918 m!1345893))

(assert (=> b!1457918 m!1345893))

(declare-fun m!1345913 () Bool)

(assert (=> b!1457918 m!1345913))

(assert (=> b!1457918 m!1345913))

(assert (=> b!1457918 m!1345893))

(declare-fun m!1345915 () Bool)

(assert (=> b!1457918 m!1345915))

(assert (=> b!1457933 m!1345905))

(declare-fun m!1345917 () Bool)

(assert (=> b!1457933 m!1345917))

(declare-fun m!1345919 () Bool)

(assert (=> b!1457933 m!1345919))

(declare-fun m!1345921 () Bool)

(assert (=> b!1457933 m!1345921))

(assert (=> b!1457933 m!1345893))

(assert (=> b!1457924 m!1345889))

(assert (=> b!1457924 m!1345891))

(assert (=> b!1457921 m!1345893))

(assert (=> b!1457921 m!1345893))

(declare-fun m!1345923 () Bool)

(assert (=> b!1457921 m!1345923))

(declare-fun m!1345925 () Bool)

(assert (=> b!1457919 m!1345925))

(declare-fun m!1345927 () Bool)

(assert (=> b!1457925 m!1345927))

(assert (=> b!1457928 m!1345893))

(assert (=> b!1457928 m!1345893))

(declare-fun m!1345929 () Bool)

(assert (=> b!1457928 m!1345929))

(declare-fun m!1345931 () Bool)

(assert (=> b!1457923 m!1345931))

(assert (=> b!1457923 m!1345931))

(declare-fun m!1345933 () Bool)

(assert (=> b!1457923 m!1345933))

(assert (=> b!1457927 m!1345905))

(declare-fun m!1345935 () Bool)

(assert (=> b!1457927 m!1345935))

(declare-fun m!1345937 () Bool)

(assert (=> b!1457930 m!1345937))

(assert (=> b!1457930 m!1345905))

(assert (=> b!1457930 m!1345919))

(assert (=> b!1457930 m!1345921))

(declare-fun m!1345939 () Bool)

(assert (=> b!1457930 m!1345939))

(assert (=> b!1457930 m!1345893))

(push 1)

