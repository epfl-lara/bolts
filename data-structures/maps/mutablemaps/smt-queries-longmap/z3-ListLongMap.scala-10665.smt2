; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125172 () Bool)

(assert start!125172)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!820103 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1457848 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98537 0))(
  ( (array!98538 (arr!47552 (Array (_ BitVec 32) (_ BitVec 64))) (size!48103 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98537)

(assert (=> b!1457848 (= e!820103 (and (or (= (select (arr!47552 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47552 a!2862) intermediateBeforeIndex!19) (select (arr!47552 a!2862) j!93))) (let ((bdg!53380 (select (store (arr!47552 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47552 a!2862) index!646) bdg!53380) (= (select (arr!47552 a!2862) index!646) (select (arr!47552 a!2862) j!93))) (= (select (arr!47552 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53380 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!988179 () Bool)

(declare-fun e!820100 () Bool)

(assert (=> start!125172 (=> (not res!988179) (not e!820100))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125172 (= res!988179 (validMask!0 mask!2687))))

(assert (=> start!125172 e!820100))

(assert (=> start!125172 true))

(declare-fun array_inv!36497 (array!98537) Bool)

(assert (=> start!125172 (array_inv!36497 a!2862)))

(declare-fun b!1457849 () Bool)

(declare-fun e!820096 () Bool)

(declare-fun e!820099 () Bool)

(assert (=> b!1457849 (= e!820096 e!820099)))

(declare-fun res!988174 () Bool)

(assert (=> b!1457849 (=> res!988174 e!820099)))

(declare-fun lt!638801 () (_ BitVec 32))

(assert (=> b!1457849 (= res!988174 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638801 #b00000000000000000000000000000000) (bvsge lt!638801 (size!48103 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457849 (= lt!638801 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638798 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11827 0))(
  ( (MissingZero!11827 (index!49699 (_ BitVec 32))) (Found!11827 (index!49700 (_ BitVec 32))) (Intermediate!11827 (undefined!12639 Bool) (index!49701 (_ BitVec 32)) (x!131319 (_ BitVec 32))) (Undefined!11827) (MissingVacant!11827 (index!49702 (_ BitVec 32))) )
))
(declare-fun lt!638797 () SeekEntryResult!11827)

(declare-fun lt!638800 () array!98537)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98537 (_ BitVec 32)) SeekEntryResult!11827)

(assert (=> b!1457849 (= lt!638797 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638798 lt!638800 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98537 (_ BitVec 32)) SeekEntryResult!11827)

(assert (=> b!1457849 (= lt!638797 (seekEntryOrOpen!0 lt!638798 lt!638800 mask!2687))))

(declare-fun b!1457850 () Bool)

(declare-fun res!988184 () Bool)

(declare-fun e!820095 () Bool)

(assert (=> b!1457850 (=> (not res!988184) (not e!820095))))

(declare-fun lt!638803 () SeekEntryResult!11827)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98537 (_ BitVec 32)) SeekEntryResult!11827)

(assert (=> b!1457850 (= res!988184 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47552 a!2862) j!93) a!2862 mask!2687) lt!638803))))

(declare-fun b!1457851 () Bool)

(declare-fun res!988175 () Bool)

(assert (=> b!1457851 (=> (not res!988175) (not e!820100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98537 (_ BitVec 32)) Bool)

(assert (=> b!1457851 (= res!988175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457852 () Bool)

(declare-fun res!988177 () Bool)

(assert (=> b!1457852 (=> (not res!988177) (not e!820100))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457852 (= res!988177 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48103 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48103 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48103 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457853 () Bool)

(assert (=> b!1457853 (= e!820099 true)))

(declare-fun lt!638796 () Bool)

(declare-fun e!820098 () Bool)

(assert (=> b!1457853 (= lt!638796 e!820098)))

(declare-fun c!134354 () Bool)

(assert (=> b!1457853 (= c!134354 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457854 () Bool)

(declare-fun res!988178 () Bool)

(assert (=> b!1457854 (=> res!988178 e!820099)))

(assert (=> b!1457854 (= res!988178 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638801 (select (arr!47552 a!2862) j!93) a!2862 mask!2687) lt!638803)))))

(declare-fun b!1457855 () Bool)

(declare-fun e!820101 () Bool)

(assert (=> b!1457855 (= e!820101 (not e!820096))))

(declare-fun res!988169 () Bool)

(assert (=> b!1457855 (=> res!988169 e!820096)))

(assert (=> b!1457855 (= res!988169 (or (and (= (select (arr!47552 a!2862) index!646) (select (store (arr!47552 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47552 a!2862) index!646) (select (arr!47552 a!2862) j!93))) (= (select (arr!47552 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457855 e!820103))

(declare-fun res!988171 () Bool)

(assert (=> b!1457855 (=> (not res!988171) (not e!820103))))

(assert (=> b!1457855 (= res!988171 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49098 0))(
  ( (Unit!49099) )
))
(declare-fun lt!638802 () Unit!49098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49098)

(assert (=> b!1457855 (= lt!638802 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457856 () Bool)

(declare-fun e!820102 () Bool)

(assert (=> b!1457856 (= e!820100 e!820102)))

(declare-fun res!988183 () Bool)

(assert (=> b!1457856 (=> (not res!988183) (not e!820102))))

(assert (=> b!1457856 (= res!988183 (= (select (store (arr!47552 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457856 (= lt!638800 (array!98538 (store (arr!47552 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48103 a!2862)))))

(declare-fun b!1457857 () Bool)

(declare-fun res!988173 () Bool)

(assert (=> b!1457857 (=> (not res!988173) (not e!820101))))

(declare-fun e!820094 () Bool)

(assert (=> b!1457857 (= res!988173 e!820094)))

(declare-fun c!134353 () Bool)

(assert (=> b!1457857 (= c!134353 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!638799 () SeekEntryResult!11827)

(declare-fun b!1457858 () Bool)

(assert (=> b!1457858 (= e!820094 (= lt!638799 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638798 lt!638800 mask!2687)))))

(declare-fun b!1457859 () Bool)

(assert (=> b!1457859 (= e!820102 e!820095)))

(declare-fun res!988185 () Bool)

(assert (=> b!1457859 (=> (not res!988185) (not e!820095))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457859 (= res!988185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47552 a!2862) j!93) mask!2687) (select (arr!47552 a!2862) j!93) a!2862 mask!2687) lt!638803))))

(assert (=> b!1457859 (= lt!638803 (Intermediate!11827 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457860 () Bool)

(assert (=> b!1457860 (= e!820098 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638801 intermediateAfterIndex!19 lt!638798 lt!638800 mask!2687) lt!638797)))))

(declare-fun b!1457861 () Bool)

(declare-fun res!988176 () Bool)

(assert (=> b!1457861 (=> (not res!988176) (not e!820101))))

(assert (=> b!1457861 (= res!988176 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457862 () Bool)

(declare-fun res!988181 () Bool)

(assert (=> b!1457862 (=> (not res!988181) (not e!820100))))

(assert (=> b!1457862 (= res!988181 (and (= (size!48103 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48103 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48103 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1457863 () Bool)

(assert (=> b!1457863 (= e!820095 e!820101)))

(declare-fun res!988170 () Bool)

(assert (=> b!1457863 (=> (not res!988170) (not e!820101))))

(assert (=> b!1457863 (= res!988170 (= lt!638799 (Intermediate!11827 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457863 (= lt!638799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638798 mask!2687) lt!638798 lt!638800 mask!2687))))

(assert (=> b!1457863 (= lt!638798 (select (store (arr!47552 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457864 () Bool)

(declare-fun res!988172 () Bool)

(assert (=> b!1457864 (=> (not res!988172) (not e!820100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457864 (= res!988172 (validKeyInArray!0 (select (arr!47552 a!2862) j!93)))))

(declare-fun b!1457865 () Bool)

(declare-fun res!988168 () Bool)

(assert (=> b!1457865 (=> (not res!988168) (not e!820103))))

(assert (=> b!1457865 (= res!988168 (= (seekEntryOrOpen!0 (select (arr!47552 a!2862) j!93) a!2862 mask!2687) (Found!11827 j!93)))))

(declare-fun b!1457866 () Bool)

(assert (=> b!1457866 (= e!820094 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638798 lt!638800 mask!2687) (seekEntryOrOpen!0 lt!638798 lt!638800 mask!2687)))))

(declare-fun b!1457867 () Bool)

(declare-fun res!988182 () Bool)

(assert (=> b!1457867 (=> (not res!988182) (not e!820100))))

(assert (=> b!1457867 (= res!988182 (validKeyInArray!0 (select (arr!47552 a!2862) i!1006)))))

(declare-fun b!1457868 () Bool)

(declare-fun res!988180 () Bool)

(assert (=> b!1457868 (=> (not res!988180) (not e!820100))))

(declare-datatypes ((List!34233 0))(
  ( (Nil!34230) (Cons!34229 (h!35579 (_ BitVec 64)) (t!48934 List!34233)) )
))
(declare-fun arrayNoDuplicates!0 (array!98537 (_ BitVec 32) List!34233) Bool)

(assert (=> b!1457868 (= res!988180 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34230))))

(declare-fun b!1457869 () Bool)

(assert (=> b!1457869 (= e!820098 (not (= lt!638799 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638801 lt!638798 lt!638800 mask!2687))))))

(assert (= (and start!125172 res!988179) b!1457862))

(assert (= (and b!1457862 res!988181) b!1457867))

(assert (= (and b!1457867 res!988182) b!1457864))

(assert (= (and b!1457864 res!988172) b!1457851))

(assert (= (and b!1457851 res!988175) b!1457868))

(assert (= (and b!1457868 res!988180) b!1457852))

(assert (= (and b!1457852 res!988177) b!1457856))

(assert (= (and b!1457856 res!988183) b!1457859))

(assert (= (and b!1457859 res!988185) b!1457850))

(assert (= (and b!1457850 res!988184) b!1457863))

(assert (= (and b!1457863 res!988170) b!1457857))

(assert (= (and b!1457857 c!134353) b!1457858))

(assert (= (and b!1457857 (not c!134353)) b!1457866))

(assert (= (and b!1457857 res!988173) b!1457861))

(assert (= (and b!1457861 res!988176) b!1457855))

(assert (= (and b!1457855 res!988171) b!1457865))

(assert (= (and b!1457865 res!988168) b!1457848))

(assert (= (and b!1457855 (not res!988169)) b!1457849))

(assert (= (and b!1457849 (not res!988174)) b!1457854))

(assert (= (and b!1457854 (not res!988178)) b!1457853))

(assert (= (and b!1457853 c!134354) b!1457869))

(assert (= (and b!1457853 (not c!134354)) b!1457860))

(declare-fun m!1345825 () Bool)

(assert (=> b!1457860 m!1345825))

(declare-fun m!1345827 () Bool)

(assert (=> b!1457851 m!1345827))

(declare-fun m!1345829 () Bool)

(assert (=> b!1457865 m!1345829))

(assert (=> b!1457865 m!1345829))

(declare-fun m!1345831 () Bool)

(assert (=> b!1457865 m!1345831))

(assert (=> b!1457864 m!1345829))

(assert (=> b!1457864 m!1345829))

(declare-fun m!1345833 () Bool)

(assert (=> b!1457864 m!1345833))

(declare-fun m!1345835 () Bool)

(assert (=> b!1457863 m!1345835))

(assert (=> b!1457863 m!1345835))

(declare-fun m!1345837 () Bool)

(assert (=> b!1457863 m!1345837))

(declare-fun m!1345839 () Bool)

(assert (=> b!1457863 m!1345839))

(declare-fun m!1345841 () Bool)

(assert (=> b!1457863 m!1345841))

(declare-fun m!1345843 () Bool)

(assert (=> b!1457869 m!1345843))

(declare-fun m!1345845 () Bool)

(assert (=> b!1457855 m!1345845))

(assert (=> b!1457855 m!1345839))

(declare-fun m!1345847 () Bool)

(assert (=> b!1457855 m!1345847))

(declare-fun m!1345849 () Bool)

(assert (=> b!1457855 m!1345849))

(declare-fun m!1345851 () Bool)

(assert (=> b!1457855 m!1345851))

(assert (=> b!1457855 m!1345829))

(assert (=> b!1457848 m!1345839))

(declare-fun m!1345853 () Bool)

(assert (=> b!1457848 m!1345853))

(assert (=> b!1457848 m!1345847))

(assert (=> b!1457848 m!1345849))

(assert (=> b!1457848 m!1345829))

(declare-fun m!1345855 () Bool)

(assert (=> b!1457868 m!1345855))

(declare-fun m!1345857 () Bool)

(assert (=> b!1457867 m!1345857))

(assert (=> b!1457867 m!1345857))

(declare-fun m!1345859 () Bool)

(assert (=> b!1457867 m!1345859))

(assert (=> b!1457850 m!1345829))

(assert (=> b!1457850 m!1345829))

(declare-fun m!1345861 () Bool)

(assert (=> b!1457850 m!1345861))

(assert (=> b!1457854 m!1345829))

(assert (=> b!1457854 m!1345829))

(declare-fun m!1345863 () Bool)

(assert (=> b!1457854 m!1345863))

(assert (=> b!1457856 m!1345839))

(declare-fun m!1345865 () Bool)

(assert (=> b!1457856 m!1345865))

(declare-fun m!1345867 () Bool)

(assert (=> b!1457866 m!1345867))

(declare-fun m!1345869 () Bool)

(assert (=> b!1457866 m!1345869))

(declare-fun m!1345871 () Bool)

(assert (=> start!125172 m!1345871))

(declare-fun m!1345873 () Bool)

(assert (=> start!125172 m!1345873))

(declare-fun m!1345875 () Bool)

(assert (=> b!1457858 m!1345875))

(declare-fun m!1345877 () Bool)

(assert (=> b!1457849 m!1345877))

(assert (=> b!1457849 m!1345867))

(assert (=> b!1457849 m!1345869))

(assert (=> b!1457859 m!1345829))

(assert (=> b!1457859 m!1345829))

(declare-fun m!1345879 () Bool)

(assert (=> b!1457859 m!1345879))

(assert (=> b!1457859 m!1345879))

(assert (=> b!1457859 m!1345829))

(declare-fun m!1345881 () Bool)

(assert (=> b!1457859 m!1345881))

(check-sat (not b!1457860) (not b!1457858) (not b!1457863) (not b!1457865) (not b!1457849) (not b!1457859) (not start!125172) (not b!1457867) (not b!1457868) (not b!1457869) (not b!1457866) (not b!1457854) (not b!1457864) (not b!1457850) (not b!1457851) (not b!1457855))
(check-sat)
