; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126588 () Bool)

(assert start!126588)

(declare-fun b!1484903 () Bool)

(declare-fun res!1009747 () Bool)

(declare-fun e!832529 () Bool)

(assert (=> b!1484903 (=> (not res!1009747) (not e!832529))))

(declare-datatypes ((array!99467 0))(
  ( (array!99468 (arr!48005 (Array (_ BitVec 32) (_ BitVec 64))) (size!48556 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99467)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99467 (_ BitVec 32)) Bool)

(assert (=> b!1484903 (= res!1009747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!832522 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!647885 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1484904 () Bool)

(declare-fun lt!647883 () array!99467)

(declare-datatypes ((SeekEntryResult!12268 0))(
  ( (MissingZero!12268 (index!51463 (_ BitVec 32))) (Found!12268 (index!51464 (_ BitVec 32))) (Intermediate!12268 (undefined!13080 Bool) (index!51465 (_ BitVec 32)) (x!133043 (_ BitVec 32))) (Undefined!12268) (MissingVacant!12268 (index!51466 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99467 (_ BitVec 32)) SeekEntryResult!12268)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99467 (_ BitVec 32)) SeekEntryResult!12268)

(assert (=> b!1484904 (= e!832522 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647885 lt!647883 mask!2687) (seekEntryOrOpen!0 lt!647885 lt!647883 mask!2687)))))

(declare-fun b!1484905 () Bool)

(declare-fun e!832526 () Bool)

(assert (=> b!1484905 (= e!832526 true)))

(declare-fun lt!647886 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484905 (= lt!647886 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484906 () Bool)

(declare-fun res!1009740 () Bool)

(assert (=> b!1484906 (=> (not res!1009740) (not e!832529))))

(declare-datatypes ((List!34686 0))(
  ( (Nil!34683) (Cons!34682 (h!36056 (_ BitVec 64)) (t!49387 List!34686)) )
))
(declare-fun arrayNoDuplicates!0 (array!99467 (_ BitVec 32) List!34686) Bool)

(assert (=> b!1484906 (= res!1009740 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34683))))

(declare-fun res!1009739 () Bool)

(assert (=> start!126588 (=> (not res!1009739) (not e!832529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126588 (= res!1009739 (validMask!0 mask!2687))))

(assert (=> start!126588 e!832529))

(assert (=> start!126588 true))

(declare-fun array_inv!36950 (array!99467) Bool)

(assert (=> start!126588 (array_inv!36950 a!2862)))

(declare-fun b!1484907 () Bool)

(declare-fun res!1009752 () Bool)

(assert (=> b!1484907 (=> (not res!1009752) (not e!832529))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484907 (= res!1009752 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48556 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48556 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48556 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484908 () Bool)

(declare-fun e!832521 () Bool)

(assert (=> b!1484908 (= e!832529 e!832521)))

(declare-fun res!1009743 () Bool)

(assert (=> b!1484908 (=> (not res!1009743) (not e!832521))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484908 (= res!1009743 (= (select (store (arr!48005 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484908 (= lt!647883 (array!99468 (store (arr!48005 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48556 a!2862)))))

(declare-fun b!1484909 () Bool)

(declare-fun res!1009746 () Bool)

(declare-fun e!832527 () Bool)

(assert (=> b!1484909 (=> (not res!1009746) (not e!832527))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!647887 () SeekEntryResult!12268)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99467 (_ BitVec 32)) SeekEntryResult!12268)

(assert (=> b!1484909 (= res!1009746 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48005 a!2862) j!93) a!2862 mask!2687) lt!647887))))

(declare-fun b!1484910 () Bool)

(assert (=> b!1484910 (= e!832521 e!832527)))

(declare-fun res!1009754 () Bool)

(assert (=> b!1484910 (=> (not res!1009754) (not e!832527))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484910 (= res!1009754 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48005 a!2862) j!93) mask!2687) (select (arr!48005 a!2862) j!93) a!2862 mask!2687) lt!647887))))

(assert (=> b!1484910 (= lt!647887 (Intermediate!12268 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484911 () Bool)

(declare-fun e!832528 () Bool)

(assert (=> b!1484911 (= e!832528 (= (seekEntryOrOpen!0 lt!647885 lt!647883 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647885 lt!647883 mask!2687)))))

(declare-fun b!1484912 () Bool)

(declare-fun lt!647881 () SeekEntryResult!12268)

(assert (=> b!1484912 (= e!832522 (= lt!647881 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647885 lt!647883 mask!2687)))))

(declare-fun b!1484913 () Bool)

(declare-fun res!1009750 () Bool)

(declare-fun e!832525 () Bool)

(assert (=> b!1484913 (=> (not res!1009750) (not e!832525))))

(assert (=> b!1484913 (= res!1009750 e!832522)))

(declare-fun c!137108 () Bool)

(assert (=> b!1484913 (= c!137108 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484914 () Bool)

(declare-fun res!1009749 () Bool)

(assert (=> b!1484914 (=> (not res!1009749) (not e!832525))))

(assert (=> b!1484914 (= res!1009749 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484915 () Bool)

(declare-fun res!1009751 () Bool)

(assert (=> b!1484915 (=> (not res!1009751) (not e!832529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484915 (= res!1009751 (validKeyInArray!0 (select (arr!48005 a!2862) j!93)))))

(declare-fun b!1484916 () Bool)

(declare-fun res!1009742 () Bool)

(assert (=> b!1484916 (=> (not res!1009742) (not e!832529))))

(assert (=> b!1484916 (= res!1009742 (validKeyInArray!0 (select (arr!48005 a!2862) i!1006)))))

(declare-fun b!1484917 () Bool)

(assert (=> b!1484917 (= e!832527 e!832525)))

(declare-fun res!1009753 () Bool)

(assert (=> b!1484917 (=> (not res!1009753) (not e!832525))))

(assert (=> b!1484917 (= res!1009753 (= lt!647881 (Intermediate!12268 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484917 (= lt!647881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647885 mask!2687) lt!647885 lt!647883 mask!2687))))

(assert (=> b!1484917 (= lt!647885 (select (store (arr!48005 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484918 () Bool)

(declare-fun res!1009737 () Bool)

(assert (=> b!1484918 (=> (not res!1009737) (not e!832529))))

(assert (=> b!1484918 (= res!1009737 (and (= (size!48556 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48556 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48556 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484919 () Bool)

(declare-fun e!832520 () Bool)

(assert (=> b!1484919 (= e!832520 e!832528)))

(declare-fun res!1009744 () Bool)

(assert (=> b!1484919 (=> (not res!1009744) (not e!832528))))

(declare-fun lt!647882 () (_ BitVec 64))

(assert (=> b!1484919 (= res!1009744 (and (= index!646 intermediateAfterIndex!19) (= lt!647882 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484920 () Bool)

(assert (=> b!1484920 (= e!832525 (not e!832526))))

(declare-fun res!1009755 () Bool)

(assert (=> b!1484920 (=> res!1009755 e!832526)))

(assert (=> b!1484920 (= res!1009755 (or (and (= (select (arr!48005 a!2862) index!646) (select (store (arr!48005 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48005 a!2862) index!646) (select (arr!48005 a!2862) j!93))) (= (select (arr!48005 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832523 () Bool)

(assert (=> b!1484920 e!832523))

(declare-fun res!1009745 () Bool)

(assert (=> b!1484920 (=> (not res!1009745) (not e!832523))))

(assert (=> b!1484920 (= res!1009745 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49824 0))(
  ( (Unit!49825) )
))
(declare-fun lt!647884 () Unit!49824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49824)

(assert (=> b!1484920 (= lt!647884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484921 () Bool)

(declare-fun res!1009738 () Bool)

(assert (=> b!1484921 (=> (not res!1009738) (not e!832523))))

(assert (=> b!1484921 (= res!1009738 (or (= (select (arr!48005 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48005 a!2862) intermediateBeforeIndex!19) (select (arr!48005 a!2862) j!93))))))

(declare-fun b!1484922 () Bool)

(assert (=> b!1484922 (= e!832523 e!832520)))

(declare-fun res!1009741 () Bool)

(assert (=> b!1484922 (=> res!1009741 e!832520)))

(assert (=> b!1484922 (= res!1009741 (or (and (= (select (arr!48005 a!2862) index!646) lt!647882) (= (select (arr!48005 a!2862) index!646) (select (arr!48005 a!2862) j!93))) (= (select (arr!48005 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484922 (= lt!647882 (select (store (arr!48005 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484923 () Bool)

(declare-fun res!1009748 () Bool)

(assert (=> b!1484923 (=> (not res!1009748) (not e!832523))))

(assert (=> b!1484923 (= res!1009748 (= (seekEntryOrOpen!0 (select (arr!48005 a!2862) j!93) a!2862 mask!2687) (Found!12268 j!93)))))

(assert (= (and start!126588 res!1009739) b!1484918))

(assert (= (and b!1484918 res!1009737) b!1484916))

(assert (= (and b!1484916 res!1009742) b!1484915))

(assert (= (and b!1484915 res!1009751) b!1484903))

(assert (= (and b!1484903 res!1009747) b!1484906))

(assert (= (and b!1484906 res!1009740) b!1484907))

(assert (= (and b!1484907 res!1009752) b!1484908))

(assert (= (and b!1484908 res!1009743) b!1484910))

(assert (= (and b!1484910 res!1009754) b!1484909))

(assert (= (and b!1484909 res!1009746) b!1484917))

(assert (= (and b!1484917 res!1009753) b!1484913))

(assert (= (and b!1484913 c!137108) b!1484912))

(assert (= (and b!1484913 (not c!137108)) b!1484904))

(assert (= (and b!1484913 res!1009750) b!1484914))

(assert (= (and b!1484914 res!1009749) b!1484920))

(assert (= (and b!1484920 res!1009745) b!1484923))

(assert (= (and b!1484923 res!1009748) b!1484921))

(assert (= (and b!1484921 res!1009738) b!1484922))

(assert (= (and b!1484922 (not res!1009741)) b!1484919))

(assert (= (and b!1484919 res!1009744) b!1484911))

(assert (= (and b!1484920 (not res!1009755)) b!1484905))

(declare-fun m!1370173 () Bool)

(assert (=> b!1484917 m!1370173))

(assert (=> b!1484917 m!1370173))

(declare-fun m!1370175 () Bool)

(assert (=> b!1484917 m!1370175))

(declare-fun m!1370177 () Bool)

(assert (=> b!1484917 m!1370177))

(declare-fun m!1370179 () Bool)

(assert (=> b!1484917 m!1370179))

(declare-fun m!1370181 () Bool)

(assert (=> b!1484903 m!1370181))

(declare-fun m!1370183 () Bool)

(assert (=> b!1484911 m!1370183))

(declare-fun m!1370185 () Bool)

(assert (=> b!1484911 m!1370185))

(assert (=> b!1484904 m!1370185))

(assert (=> b!1484904 m!1370183))

(declare-fun m!1370187 () Bool)

(assert (=> b!1484910 m!1370187))

(assert (=> b!1484910 m!1370187))

(declare-fun m!1370189 () Bool)

(assert (=> b!1484910 m!1370189))

(assert (=> b!1484910 m!1370189))

(assert (=> b!1484910 m!1370187))

(declare-fun m!1370191 () Bool)

(assert (=> b!1484910 m!1370191))

(declare-fun m!1370193 () Bool)

(assert (=> b!1484916 m!1370193))

(assert (=> b!1484916 m!1370193))

(declare-fun m!1370195 () Bool)

(assert (=> b!1484916 m!1370195))

(declare-fun m!1370197 () Bool)

(assert (=> b!1484906 m!1370197))

(assert (=> b!1484923 m!1370187))

(assert (=> b!1484923 m!1370187))

(declare-fun m!1370199 () Bool)

(assert (=> b!1484923 m!1370199))

(assert (=> b!1484915 m!1370187))

(assert (=> b!1484915 m!1370187))

(declare-fun m!1370201 () Bool)

(assert (=> b!1484915 m!1370201))

(declare-fun m!1370203 () Bool)

(assert (=> b!1484922 m!1370203))

(assert (=> b!1484922 m!1370187))

(assert (=> b!1484922 m!1370177))

(declare-fun m!1370205 () Bool)

(assert (=> b!1484922 m!1370205))

(declare-fun m!1370207 () Bool)

(assert (=> b!1484912 m!1370207))

(declare-fun m!1370209 () Bool)

(assert (=> b!1484921 m!1370209))

(assert (=> b!1484921 m!1370187))

(declare-fun m!1370211 () Bool)

(assert (=> b!1484905 m!1370211))

(declare-fun m!1370213 () Bool)

(assert (=> b!1484920 m!1370213))

(assert (=> b!1484920 m!1370177))

(assert (=> b!1484920 m!1370205))

(assert (=> b!1484920 m!1370203))

(declare-fun m!1370215 () Bool)

(assert (=> b!1484920 m!1370215))

(assert (=> b!1484920 m!1370187))

(declare-fun m!1370217 () Bool)

(assert (=> start!126588 m!1370217))

(declare-fun m!1370219 () Bool)

(assert (=> start!126588 m!1370219))

(assert (=> b!1484908 m!1370177))

(declare-fun m!1370221 () Bool)

(assert (=> b!1484908 m!1370221))

(assert (=> b!1484909 m!1370187))

(assert (=> b!1484909 m!1370187))

(declare-fun m!1370223 () Bool)

(assert (=> b!1484909 m!1370223))

(check-sat (not b!1484915) (not b!1484912) (not b!1484903) (not b!1484905) (not b!1484904) (not b!1484917) (not b!1484909) (not b!1484910) (not start!126588) (not b!1484906) (not b!1484911) (not b!1484923) (not b!1484916) (not b!1484920))
(check-sat)
