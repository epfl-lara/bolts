; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126586 () Bool)

(assert start!126586)

(declare-fun res!1009687 () Bool)

(declare-fun e!832490 () Bool)

(assert (=> start!126586 (=> (not res!1009687) (not e!832490))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126586 (= res!1009687 (validMask!0 mask!2687))))

(assert (=> start!126586 e!832490))

(assert (=> start!126586 true))

(declare-datatypes ((array!99465 0))(
  ( (array!99466 (arr!48004 (Array (_ BitVec 32) (_ BitVec 64))) (size!48555 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99465)

(declare-fun array_inv!36949 (array!99465) Bool)

(assert (=> start!126586 (array_inv!36949 a!2862)))

(declare-fun b!1484840 () Bool)

(declare-fun e!832493 () Bool)

(assert (=> b!1484840 (= e!832490 e!832493)))

(declare-fun res!1009683 () Bool)

(assert (=> b!1484840 (=> (not res!1009683) (not e!832493))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484840 (= res!1009683 (= (select (store (arr!48004 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647862 () array!99465)

(assert (=> b!1484840 (= lt!647862 (array!99466 (store (arr!48004 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48555 a!2862)))))

(declare-fun b!1484841 () Bool)

(declare-fun e!832494 () Bool)

(declare-fun e!832492 () Bool)

(assert (=> b!1484841 (= e!832494 e!832492)))

(declare-fun res!1009694 () Bool)

(assert (=> b!1484841 (=> res!1009694 e!832492)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!647860 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1484841 (= res!1009694 (or (and (= (select (arr!48004 a!2862) index!646) lt!647860) (= (select (arr!48004 a!2862) index!646) (select (arr!48004 a!2862) j!93))) (= (select (arr!48004 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484841 (= lt!647860 (select (store (arr!48004 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484842 () Bool)

(declare-fun res!1009688 () Bool)

(declare-fun e!832498 () Bool)

(assert (=> b!1484842 (=> (not res!1009688) (not e!832498))))

(declare-fun e!832497 () Bool)

(assert (=> b!1484842 (= res!1009688 e!832497)))

(declare-fun c!137105 () Bool)

(assert (=> b!1484842 (= c!137105 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484843 () Bool)

(declare-fun res!1009686 () Bool)

(assert (=> b!1484843 (=> (not res!1009686) (not e!832490))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484843 (= res!1009686 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48555 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48555 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48555 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484844 () Bool)

(declare-fun e!832499 () Bool)

(assert (=> b!1484844 (= e!832499 true)))

(declare-fun lt!647863 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484844 (= lt!647863 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484845 () Bool)

(declare-fun res!1009697 () Bool)

(assert (=> b!1484845 (=> (not res!1009697) (not e!832490))))

(declare-datatypes ((List!34685 0))(
  ( (Nil!34682) (Cons!34681 (h!36055 (_ BitVec 64)) (t!49386 List!34685)) )
))
(declare-fun arrayNoDuplicates!0 (array!99465 (_ BitVec 32) List!34685) Bool)

(assert (=> b!1484845 (= res!1009697 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34682))))

(declare-fun b!1484846 () Bool)

(declare-fun lt!647865 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12267 0))(
  ( (MissingZero!12267 (index!51459 (_ BitVec 32))) (Found!12267 (index!51460 (_ BitVec 32))) (Intermediate!12267 (undefined!13079 Bool) (index!51461 (_ BitVec 32)) (x!133042 (_ BitVec 32))) (Undefined!12267) (MissingVacant!12267 (index!51462 (_ BitVec 32))) )
))
(declare-fun lt!647866 () SeekEntryResult!12267)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99465 (_ BitVec 32)) SeekEntryResult!12267)

(assert (=> b!1484846 (= e!832497 (= lt!647866 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647865 lt!647862 mask!2687)))))

(declare-fun b!1484847 () Bool)

(declare-fun e!832491 () Bool)

(assert (=> b!1484847 (= e!832492 e!832491)))

(declare-fun res!1009693 () Bool)

(assert (=> b!1484847 (=> (not res!1009693) (not e!832491))))

(assert (=> b!1484847 (= res!1009693 (and (= index!646 intermediateAfterIndex!19) (= lt!647860 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484848 () Bool)

(declare-fun res!1009692 () Bool)

(assert (=> b!1484848 (=> (not res!1009692) (not e!832490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484848 (= res!1009692 (validKeyInArray!0 (select (arr!48004 a!2862) i!1006)))))

(declare-fun b!1484849 () Bool)

(declare-fun e!832495 () Bool)

(assert (=> b!1484849 (= e!832495 e!832498)))

(declare-fun res!1009690 () Bool)

(assert (=> b!1484849 (=> (not res!1009690) (not e!832498))))

(assert (=> b!1484849 (= res!1009690 (= lt!647866 (Intermediate!12267 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484849 (= lt!647866 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647865 mask!2687) lt!647865 lt!647862 mask!2687))))

(assert (=> b!1484849 (= lt!647865 (select (store (arr!48004 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484850 () Bool)

(assert (=> b!1484850 (= e!832498 (not e!832499))))

(declare-fun res!1009691 () Bool)

(assert (=> b!1484850 (=> res!1009691 e!832499)))

(assert (=> b!1484850 (= res!1009691 (or (and (= (select (arr!48004 a!2862) index!646) (select (store (arr!48004 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48004 a!2862) index!646) (select (arr!48004 a!2862) j!93))) (= (select (arr!48004 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484850 e!832494))

(declare-fun res!1009696 () Bool)

(assert (=> b!1484850 (=> (not res!1009696) (not e!832494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99465 (_ BitVec 32)) Bool)

(assert (=> b!1484850 (= res!1009696 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49822 0))(
  ( (Unit!49823) )
))
(declare-fun lt!647864 () Unit!49822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49822)

(assert (=> b!1484850 (= lt!647864 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484851 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99465 (_ BitVec 32)) SeekEntryResult!12267)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99465 (_ BitVec 32)) SeekEntryResult!12267)

(assert (=> b!1484851 (= e!832491 (= (seekEntryOrOpen!0 lt!647865 lt!647862 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647865 lt!647862 mask!2687)))))

(declare-fun b!1484852 () Bool)

(assert (=> b!1484852 (= e!832497 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647865 lt!647862 mask!2687) (seekEntryOrOpen!0 lt!647865 lt!647862 mask!2687)))))

(declare-fun b!1484853 () Bool)

(declare-fun res!1009684 () Bool)

(assert (=> b!1484853 (=> (not res!1009684) (not e!832490))))

(assert (=> b!1484853 (= res!1009684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484854 () Bool)

(declare-fun res!1009698 () Bool)

(assert (=> b!1484854 (=> (not res!1009698) (not e!832498))))

(assert (=> b!1484854 (= res!1009698 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484855 () Bool)

(declare-fun res!1009685 () Bool)

(assert (=> b!1484855 (=> (not res!1009685) (not e!832495))))

(declare-fun lt!647861 () SeekEntryResult!12267)

(assert (=> b!1484855 (= res!1009685 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48004 a!2862) j!93) a!2862 mask!2687) lt!647861))))

(declare-fun b!1484856 () Bool)

(declare-fun res!1009680 () Bool)

(assert (=> b!1484856 (=> (not res!1009680) (not e!832490))))

(assert (=> b!1484856 (= res!1009680 (and (= (size!48555 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48555 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48555 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484857 () Bool)

(assert (=> b!1484857 (= e!832493 e!832495)))

(declare-fun res!1009681 () Bool)

(assert (=> b!1484857 (=> (not res!1009681) (not e!832495))))

(assert (=> b!1484857 (= res!1009681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48004 a!2862) j!93) mask!2687) (select (arr!48004 a!2862) j!93) a!2862 mask!2687) lt!647861))))

(assert (=> b!1484857 (= lt!647861 (Intermediate!12267 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484858 () Bool)

(declare-fun res!1009682 () Bool)

(assert (=> b!1484858 (=> (not res!1009682) (not e!832490))))

(assert (=> b!1484858 (= res!1009682 (validKeyInArray!0 (select (arr!48004 a!2862) j!93)))))

(declare-fun b!1484859 () Bool)

(declare-fun res!1009695 () Bool)

(assert (=> b!1484859 (=> (not res!1009695) (not e!832494))))

(assert (=> b!1484859 (= res!1009695 (= (seekEntryOrOpen!0 (select (arr!48004 a!2862) j!93) a!2862 mask!2687) (Found!12267 j!93)))))

(declare-fun b!1484860 () Bool)

(declare-fun res!1009689 () Bool)

(assert (=> b!1484860 (=> (not res!1009689) (not e!832494))))

(assert (=> b!1484860 (= res!1009689 (or (= (select (arr!48004 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48004 a!2862) intermediateBeforeIndex!19) (select (arr!48004 a!2862) j!93))))))

(assert (= (and start!126586 res!1009687) b!1484856))

(assert (= (and b!1484856 res!1009680) b!1484848))

(assert (= (and b!1484848 res!1009692) b!1484858))

(assert (= (and b!1484858 res!1009682) b!1484853))

(assert (= (and b!1484853 res!1009684) b!1484845))

(assert (= (and b!1484845 res!1009697) b!1484843))

(assert (= (and b!1484843 res!1009686) b!1484840))

(assert (= (and b!1484840 res!1009683) b!1484857))

(assert (= (and b!1484857 res!1009681) b!1484855))

(assert (= (and b!1484855 res!1009685) b!1484849))

(assert (= (and b!1484849 res!1009690) b!1484842))

(assert (= (and b!1484842 c!137105) b!1484846))

(assert (= (and b!1484842 (not c!137105)) b!1484852))

(assert (= (and b!1484842 res!1009688) b!1484854))

(assert (= (and b!1484854 res!1009698) b!1484850))

(assert (= (and b!1484850 res!1009696) b!1484859))

(assert (= (and b!1484859 res!1009695) b!1484860))

(assert (= (and b!1484860 res!1009689) b!1484841))

(assert (= (and b!1484841 (not res!1009694)) b!1484847))

(assert (= (and b!1484847 res!1009693) b!1484851))

(assert (= (and b!1484850 (not res!1009691)) b!1484844))

(declare-fun m!1370121 () Bool)

(assert (=> b!1484845 m!1370121))

(declare-fun m!1370123 () Bool)

(assert (=> b!1484848 m!1370123))

(assert (=> b!1484848 m!1370123))

(declare-fun m!1370125 () Bool)

(assert (=> b!1484848 m!1370125))

(declare-fun m!1370127 () Bool)

(assert (=> start!126586 m!1370127))

(declare-fun m!1370129 () Bool)

(assert (=> start!126586 m!1370129))

(declare-fun m!1370131 () Bool)

(assert (=> b!1484853 m!1370131))

(declare-fun m!1370133 () Bool)

(assert (=> b!1484852 m!1370133))

(declare-fun m!1370135 () Bool)

(assert (=> b!1484852 m!1370135))

(declare-fun m!1370137 () Bool)

(assert (=> b!1484841 m!1370137))

(declare-fun m!1370139 () Bool)

(assert (=> b!1484841 m!1370139))

(declare-fun m!1370141 () Bool)

(assert (=> b!1484841 m!1370141))

(declare-fun m!1370143 () Bool)

(assert (=> b!1484841 m!1370143))

(assert (=> b!1484855 m!1370139))

(assert (=> b!1484855 m!1370139))

(declare-fun m!1370145 () Bool)

(assert (=> b!1484855 m!1370145))

(declare-fun m!1370147 () Bool)

(assert (=> b!1484850 m!1370147))

(assert (=> b!1484850 m!1370141))

(assert (=> b!1484850 m!1370143))

(assert (=> b!1484850 m!1370137))

(declare-fun m!1370149 () Bool)

(assert (=> b!1484850 m!1370149))

(assert (=> b!1484850 m!1370139))

(assert (=> b!1484851 m!1370135))

(assert (=> b!1484851 m!1370133))

(assert (=> b!1484858 m!1370139))

(assert (=> b!1484858 m!1370139))

(declare-fun m!1370151 () Bool)

(assert (=> b!1484858 m!1370151))

(declare-fun m!1370153 () Bool)

(assert (=> b!1484844 m!1370153))

(assert (=> b!1484840 m!1370141))

(declare-fun m!1370155 () Bool)

(assert (=> b!1484840 m!1370155))

(declare-fun m!1370157 () Bool)

(assert (=> b!1484849 m!1370157))

(assert (=> b!1484849 m!1370157))

(declare-fun m!1370159 () Bool)

(assert (=> b!1484849 m!1370159))

(assert (=> b!1484849 m!1370141))

(declare-fun m!1370161 () Bool)

(assert (=> b!1484849 m!1370161))

(declare-fun m!1370163 () Bool)

(assert (=> b!1484860 m!1370163))

(assert (=> b!1484860 m!1370139))

(declare-fun m!1370165 () Bool)

(assert (=> b!1484846 m!1370165))

(assert (=> b!1484857 m!1370139))

(assert (=> b!1484857 m!1370139))

(declare-fun m!1370167 () Bool)

(assert (=> b!1484857 m!1370167))

(assert (=> b!1484857 m!1370167))

(assert (=> b!1484857 m!1370139))

(declare-fun m!1370169 () Bool)

(assert (=> b!1484857 m!1370169))

(assert (=> b!1484859 m!1370139))

(assert (=> b!1484859 m!1370139))

(declare-fun m!1370171 () Bool)

(assert (=> b!1484859 m!1370171))

(push 1)

