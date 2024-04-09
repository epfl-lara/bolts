; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126554 () Bool)

(assert start!126554)

(declare-fun b!1483832 () Bool)

(declare-fun res!1008785 () Bool)

(declare-fun e!832014 () Bool)

(assert (=> b!1483832 (=> (not res!1008785) (not e!832014))))

(declare-datatypes ((array!99433 0))(
  ( (array!99434 (arr!47988 (Array (_ BitVec 32) (_ BitVec 64))) (size!48539 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99433)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483832 (= res!1008785 (validKeyInArray!0 (select (arr!47988 a!2862) i!1006)))))

(declare-fun b!1483833 () Bool)

(declare-fun res!1008781 () Bool)

(declare-fun e!832010 () Bool)

(assert (=> b!1483833 (=> (not res!1008781) (not e!832010))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12251 0))(
  ( (MissingZero!12251 (index!51395 (_ BitVec 32))) (Found!12251 (index!51396 (_ BitVec 32))) (Intermediate!12251 (undefined!13063 Bool) (index!51397 (_ BitVec 32)) (x!132978 (_ BitVec 32))) (Undefined!12251) (MissingVacant!12251 (index!51398 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99433 (_ BitVec 32)) SeekEntryResult!12251)

(assert (=> b!1483833 (= res!1008781 (= (seekEntryOrOpen!0 (select (arr!47988 a!2862) j!93) a!2862 mask!2687) (Found!12251 j!93)))))

(declare-fun b!1483834 () Bool)

(declare-fun e!832012 () Bool)

(assert (=> b!1483834 (= e!832010 e!832012)))

(declare-fun res!1008773 () Bool)

(assert (=> b!1483834 (=> res!1008773 e!832012)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647528 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1483834 (= res!1008773 (or (and (= (select (arr!47988 a!2862) index!646) lt!647528) (= (select (arr!47988 a!2862) index!646) (select (arr!47988 a!2862) j!93))) (= (select (arr!47988 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483834 (= lt!647528 (select (store (arr!47988 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1483835 () Bool)

(declare-fun e!832011 () Bool)

(assert (=> b!1483835 (= e!832011 true)))

(declare-fun lt!647527 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483835 (= lt!647527 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483836 () Bool)

(declare-fun e!832013 () Bool)

(assert (=> b!1483836 (= e!832012 e!832013)))

(declare-fun res!1008770 () Bool)

(assert (=> b!1483836 (=> (not res!1008770) (not e!832013))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1483836 (= res!1008770 (and (= index!646 intermediateAfterIndex!19) (= lt!647528 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483837 () Bool)

(declare-fun res!1008780 () Bool)

(assert (=> b!1483837 (=> (not res!1008780) (not e!832014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99433 (_ BitVec 32)) Bool)

(assert (=> b!1483837 (= res!1008780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483838 () Bool)

(declare-fun res!1008782 () Bool)

(assert (=> b!1483838 (=> (not res!1008782) (not e!832014))))

(declare-datatypes ((List!34669 0))(
  ( (Nil!34666) (Cons!34665 (h!36039 (_ BitVec 64)) (t!49370 List!34669)) )
))
(declare-fun arrayNoDuplicates!0 (array!99433 (_ BitVec 32) List!34669) Bool)

(assert (=> b!1483838 (= res!1008782 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34666))))

(declare-fun b!1483839 () Bool)

(declare-fun res!1008769 () Bool)

(assert (=> b!1483839 (=> (not res!1008769) (not e!832014))))

(assert (=> b!1483839 (= res!1008769 (and (= (size!48539 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48539 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48539 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483840 () Bool)

(declare-fun res!1008768 () Bool)

(assert (=> b!1483840 (=> (not res!1008768) (not e!832014))))

(assert (=> b!1483840 (= res!1008768 (validKeyInArray!0 (select (arr!47988 a!2862) j!93)))))

(declare-fun b!1483841 () Bool)

(declare-fun res!1008784 () Bool)

(declare-fun e!832019 () Bool)

(assert (=> b!1483841 (=> (not res!1008784) (not e!832019))))

(declare-fun e!832015 () Bool)

(assert (=> b!1483841 (= res!1008784 e!832015)))

(declare-fun c!137057 () Bool)

(assert (=> b!1483841 (= c!137057 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483842 () Bool)

(assert (=> b!1483842 (= e!832019 (not e!832011))))

(declare-fun res!1008771 () Bool)

(assert (=> b!1483842 (=> res!1008771 e!832011)))

(assert (=> b!1483842 (= res!1008771 (or (and (= (select (arr!47988 a!2862) index!646) (select (store (arr!47988 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47988 a!2862) index!646) (select (arr!47988 a!2862) j!93))) (= (select (arr!47988 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483842 e!832010))

(declare-fun res!1008777 () Bool)

(assert (=> b!1483842 (=> (not res!1008777) (not e!832010))))

(assert (=> b!1483842 (= res!1008777 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49790 0))(
  ( (Unit!49791) )
))
(declare-fun lt!647530 () Unit!49790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49790)

(assert (=> b!1483842 (= lt!647530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483843 () Bool)

(declare-fun e!832017 () Bool)

(declare-fun e!832018 () Bool)

(assert (=> b!1483843 (= e!832017 e!832018)))

(declare-fun res!1008776 () Bool)

(assert (=> b!1483843 (=> (not res!1008776) (not e!832018))))

(declare-fun lt!647526 () SeekEntryResult!12251)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99433 (_ BitVec 32)) SeekEntryResult!12251)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483843 (= res!1008776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47988 a!2862) j!93) mask!2687) (select (arr!47988 a!2862) j!93) a!2862 mask!2687) lt!647526))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483843 (= lt!647526 (Intermediate!12251 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1008786 () Bool)

(assert (=> start!126554 (=> (not res!1008786) (not e!832014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126554 (= res!1008786 (validMask!0 mask!2687))))

(assert (=> start!126554 e!832014))

(assert (=> start!126554 true))

(declare-fun array_inv!36933 (array!99433) Bool)

(assert (=> start!126554 (array_inv!36933 a!2862)))

(declare-fun lt!647525 () array!99433)

(declare-fun lt!647529 () (_ BitVec 64))

(declare-fun b!1483844 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99433 (_ BitVec 32)) SeekEntryResult!12251)

(assert (=> b!1483844 (= e!832015 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647529 lt!647525 mask!2687) (seekEntryOrOpen!0 lt!647529 lt!647525 mask!2687)))))

(declare-fun b!1483845 () Bool)

(declare-fun res!1008774 () Bool)

(assert (=> b!1483845 (=> (not res!1008774) (not e!832010))))

(assert (=> b!1483845 (= res!1008774 (or (= (select (arr!47988 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47988 a!2862) intermediateBeforeIndex!19) (select (arr!47988 a!2862) j!93))))))

(declare-fun b!1483846 () Bool)

(assert (=> b!1483846 (= e!832013 (= (seekEntryOrOpen!0 lt!647529 lt!647525 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647529 lt!647525 mask!2687)))))

(declare-fun b!1483847 () Bool)

(assert (=> b!1483847 (= e!832018 e!832019)))

(declare-fun res!1008778 () Bool)

(assert (=> b!1483847 (=> (not res!1008778) (not e!832019))))

(declare-fun lt!647524 () SeekEntryResult!12251)

(assert (=> b!1483847 (= res!1008778 (= lt!647524 (Intermediate!12251 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483847 (= lt!647524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647529 mask!2687) lt!647529 lt!647525 mask!2687))))

(assert (=> b!1483847 (= lt!647529 (select (store (arr!47988 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1483848 () Bool)

(declare-fun res!1008783 () Bool)

(assert (=> b!1483848 (=> (not res!1008783) (not e!832018))))

(assert (=> b!1483848 (= res!1008783 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47988 a!2862) j!93) a!2862 mask!2687) lt!647526))))

(declare-fun b!1483849 () Bool)

(declare-fun res!1008772 () Bool)

(assert (=> b!1483849 (=> (not res!1008772) (not e!832019))))

(assert (=> b!1483849 (= res!1008772 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483850 () Bool)

(assert (=> b!1483850 (= e!832014 e!832017)))

(declare-fun res!1008779 () Bool)

(assert (=> b!1483850 (=> (not res!1008779) (not e!832017))))

(assert (=> b!1483850 (= res!1008779 (= (select (store (arr!47988 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483850 (= lt!647525 (array!99434 (store (arr!47988 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48539 a!2862)))))

(declare-fun b!1483851 () Bool)

(declare-fun res!1008775 () Bool)

(assert (=> b!1483851 (=> (not res!1008775) (not e!832014))))

(assert (=> b!1483851 (= res!1008775 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48539 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48539 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48539 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483852 () Bool)

(assert (=> b!1483852 (= e!832015 (= lt!647524 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647529 lt!647525 mask!2687)))))

(assert (= (and start!126554 res!1008786) b!1483839))

(assert (= (and b!1483839 res!1008769) b!1483832))

(assert (= (and b!1483832 res!1008785) b!1483840))

(assert (= (and b!1483840 res!1008768) b!1483837))

(assert (= (and b!1483837 res!1008780) b!1483838))

(assert (= (and b!1483838 res!1008782) b!1483851))

(assert (= (and b!1483851 res!1008775) b!1483850))

(assert (= (and b!1483850 res!1008779) b!1483843))

(assert (= (and b!1483843 res!1008776) b!1483848))

(assert (= (and b!1483848 res!1008783) b!1483847))

(assert (= (and b!1483847 res!1008778) b!1483841))

(assert (= (and b!1483841 c!137057) b!1483852))

(assert (= (and b!1483841 (not c!137057)) b!1483844))

(assert (= (and b!1483841 res!1008784) b!1483849))

(assert (= (and b!1483849 res!1008772) b!1483842))

(assert (= (and b!1483842 res!1008777) b!1483833))

(assert (= (and b!1483833 res!1008781) b!1483845))

(assert (= (and b!1483845 res!1008774) b!1483834))

(assert (= (and b!1483834 (not res!1008773)) b!1483836))

(assert (= (and b!1483836 res!1008770) b!1483846))

(assert (= (and b!1483842 (not res!1008771)) b!1483835))

(declare-fun m!1369289 () Bool)

(assert (=> b!1483852 m!1369289))

(declare-fun m!1369291 () Bool)

(assert (=> b!1483832 m!1369291))

(assert (=> b!1483832 m!1369291))

(declare-fun m!1369293 () Bool)

(assert (=> b!1483832 m!1369293))

(declare-fun m!1369295 () Bool)

(assert (=> b!1483840 m!1369295))

(assert (=> b!1483840 m!1369295))

(declare-fun m!1369297 () Bool)

(assert (=> b!1483840 m!1369297))

(declare-fun m!1369299 () Bool)

(assert (=> b!1483835 m!1369299))

(assert (=> b!1483833 m!1369295))

(assert (=> b!1483833 m!1369295))

(declare-fun m!1369301 () Bool)

(assert (=> b!1483833 m!1369301))

(assert (=> b!1483848 m!1369295))

(assert (=> b!1483848 m!1369295))

(declare-fun m!1369303 () Bool)

(assert (=> b!1483848 m!1369303))

(declare-fun m!1369305 () Bool)

(assert (=> b!1483842 m!1369305))

(declare-fun m!1369307 () Bool)

(assert (=> b!1483842 m!1369307))

(declare-fun m!1369309 () Bool)

(assert (=> b!1483842 m!1369309))

(declare-fun m!1369311 () Bool)

(assert (=> b!1483842 m!1369311))

(declare-fun m!1369313 () Bool)

(assert (=> b!1483842 m!1369313))

(assert (=> b!1483842 m!1369295))

(declare-fun m!1369315 () Bool)

(assert (=> b!1483847 m!1369315))

(assert (=> b!1483847 m!1369315))

(declare-fun m!1369317 () Bool)

(assert (=> b!1483847 m!1369317))

(assert (=> b!1483847 m!1369307))

(declare-fun m!1369319 () Bool)

(assert (=> b!1483847 m!1369319))

(assert (=> b!1483843 m!1369295))

(assert (=> b!1483843 m!1369295))

(declare-fun m!1369321 () Bool)

(assert (=> b!1483843 m!1369321))

(assert (=> b!1483843 m!1369321))

(assert (=> b!1483843 m!1369295))

(declare-fun m!1369323 () Bool)

(assert (=> b!1483843 m!1369323))

(assert (=> b!1483834 m!1369311))

(assert (=> b!1483834 m!1369295))

(assert (=> b!1483834 m!1369307))

(assert (=> b!1483834 m!1369309))

(declare-fun m!1369325 () Bool)

(assert (=> b!1483837 m!1369325))

(declare-fun m!1369327 () Bool)

(assert (=> b!1483844 m!1369327))

(declare-fun m!1369329 () Bool)

(assert (=> b!1483844 m!1369329))

(declare-fun m!1369331 () Bool)

(assert (=> b!1483838 m!1369331))

(assert (=> b!1483846 m!1369329))

(assert (=> b!1483846 m!1369327))

(assert (=> b!1483850 m!1369307))

(declare-fun m!1369333 () Bool)

(assert (=> b!1483850 m!1369333))

(declare-fun m!1369335 () Bool)

(assert (=> b!1483845 m!1369335))

(assert (=> b!1483845 m!1369295))

(declare-fun m!1369337 () Bool)

(assert (=> start!126554 m!1369337))

(declare-fun m!1369339 () Bool)

(assert (=> start!126554 m!1369339))

(push 1)

(assert (not b!1483840))

(assert (not b!1483844))

(assert (not b!1483842))

(assert (not b!1483848))

(assert (not b!1483846))

(assert (not b!1483832))

(assert (not b!1483833))

(assert (not b!1483837))

(assert (not b!1483843))

(assert (not b!1483847))

(assert (not b!1483852))

(assert (not start!126554))

(assert (not b!1483835))

(assert (not b!1483838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

