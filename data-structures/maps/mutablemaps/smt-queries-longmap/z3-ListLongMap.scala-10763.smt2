; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125940 () Bool)

(assert start!125940)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!827041 () Bool)

(declare-fun b!1473857 () Bool)

(declare-datatypes ((array!99134 0))(
  ( (array!99135 (arr!47846 (Array (_ BitVec 32) (_ BitVec 64))) (size!48397 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99134)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1473857 (= e!827041 (or (= (select (arr!47846 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47846 a!2862) intermediateBeforeIndex!19) (select (arr!47846 a!2862) j!93))))))

(declare-fun b!1473858 () Bool)

(declare-fun res!1001241 () Bool)

(declare-fun e!827047 () Bool)

(assert (=> b!1473858 (=> (not res!1001241) (not e!827047))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1473858 (= res!1001241 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48397 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48397 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48397 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473859 () Bool)

(declare-fun res!1001238 () Bool)

(declare-fun e!827043 () Bool)

(assert (=> b!1473859 (=> (not res!1001238) (not e!827043))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473859 (= res!1001238 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473860 () Bool)

(declare-fun res!1001230 () Bool)

(assert (=> b!1473860 (=> (not res!1001230) (not e!827047))))

(declare-datatypes ((List!34527 0))(
  ( (Nil!34524) (Cons!34523 (h!35882 (_ BitVec 64)) (t!49228 List!34527)) )
))
(declare-fun arrayNoDuplicates!0 (array!99134 (_ BitVec 32) List!34527) Bool)

(assert (=> b!1473860 (= res!1001230 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34524))))

(declare-datatypes ((SeekEntryResult!12109 0))(
  ( (MissingZero!12109 (index!50827 (_ BitVec 32))) (Found!12109 (index!50828 (_ BitVec 32))) (Intermediate!12109 (undefined!12921 Bool) (index!50829 (_ BitVec 32)) (x!132412 (_ BitVec 32))) (Undefined!12109) (MissingVacant!12109 (index!50830 (_ BitVec 32))) )
))
(declare-fun lt!644034 () SeekEntryResult!12109)

(declare-fun e!827042 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!644033 () array!99134)

(declare-fun b!1473861 () Bool)

(declare-fun lt!644038 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99134 (_ BitVec 32)) SeekEntryResult!12109)

(assert (=> b!1473861 (= e!827042 (= lt!644034 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644038 lt!644033 mask!2687)))))

(declare-fun b!1473862 () Bool)

(declare-fun res!1001226 () Bool)

(declare-fun e!827045 () Bool)

(assert (=> b!1473862 (=> (not res!1001226) (not e!827045))))

(declare-fun lt!644036 () SeekEntryResult!12109)

(assert (=> b!1473862 (= res!1001226 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47846 a!2862) j!93) a!2862 mask!2687) lt!644036))))

(declare-fun b!1473863 () Bool)

(declare-fun res!1001234 () Bool)

(assert (=> b!1473863 (=> (not res!1001234) (not e!827047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473863 (= res!1001234 (validKeyInArray!0 (select (arr!47846 a!2862) j!93)))))

(declare-fun b!1473864 () Bool)

(declare-fun e!827048 () Bool)

(assert (=> b!1473864 (= e!827047 e!827048)))

(declare-fun res!1001228 () Bool)

(assert (=> b!1473864 (=> (not res!1001228) (not e!827048))))

(assert (=> b!1473864 (= res!1001228 (= (select (store (arr!47846 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473864 (= lt!644033 (array!99135 (store (arr!47846 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48397 a!2862)))))

(declare-fun b!1473865 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99134 (_ BitVec 32)) SeekEntryResult!12109)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99134 (_ BitVec 32)) SeekEntryResult!12109)

(assert (=> b!1473865 (= e!827042 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644038 lt!644033 mask!2687) (seekEntryOrOpen!0 lt!644038 lt!644033 mask!2687)))))

(declare-fun res!1001236 () Bool)

(assert (=> start!125940 (=> (not res!1001236) (not e!827047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125940 (= res!1001236 (validMask!0 mask!2687))))

(assert (=> start!125940 e!827047))

(assert (=> start!125940 true))

(declare-fun array_inv!36791 (array!99134) Bool)

(assert (=> start!125940 (array_inv!36791 a!2862)))

(declare-fun b!1473866 () Bool)

(declare-fun res!1001231 () Bool)

(assert (=> b!1473866 (=> (not res!1001231) (not e!827047))))

(assert (=> b!1473866 (= res!1001231 (and (= (size!48397 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48397 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48397 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473867 () Bool)

(declare-fun e!827044 () Bool)

(assert (=> b!1473867 (= e!827043 (not e!827044))))

(declare-fun res!1001229 () Bool)

(assert (=> b!1473867 (=> res!1001229 e!827044)))

(assert (=> b!1473867 (= res!1001229 (or (not (= (select (arr!47846 a!2862) index!646) (select (store (arr!47846 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47846 a!2862) index!646) (select (arr!47846 a!2862) j!93)))))))

(assert (=> b!1473867 e!827041))

(declare-fun res!1001237 () Bool)

(assert (=> b!1473867 (=> (not res!1001237) (not e!827041))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99134 (_ BitVec 32)) Bool)

(assert (=> b!1473867 (= res!1001237 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49506 0))(
  ( (Unit!49507) )
))
(declare-fun lt!644035 () Unit!49506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49506)

(assert (=> b!1473867 (= lt!644035 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473868 () Bool)

(assert (=> b!1473868 (= e!827045 e!827043)))

(declare-fun res!1001240 () Bool)

(assert (=> b!1473868 (=> (not res!1001240) (not e!827043))))

(assert (=> b!1473868 (= res!1001240 (= lt!644034 (Intermediate!12109 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473868 (= lt!644034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644038 mask!2687) lt!644038 lt!644033 mask!2687))))

(assert (=> b!1473868 (= lt!644038 (select (store (arr!47846 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473869 () Bool)

(declare-fun res!1001227 () Bool)

(assert (=> b!1473869 (=> (not res!1001227) (not e!827041))))

(assert (=> b!1473869 (= res!1001227 (= (seekEntryOrOpen!0 (select (arr!47846 a!2862) j!93) a!2862 mask!2687) (Found!12109 j!93)))))

(declare-fun b!1473870 () Bool)

(declare-fun res!1001235 () Bool)

(assert (=> b!1473870 (=> (not res!1001235) (not e!827047))))

(assert (=> b!1473870 (= res!1001235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473871 () Bool)

(declare-fun res!1001233 () Bool)

(assert (=> b!1473871 (=> (not res!1001233) (not e!827047))))

(assert (=> b!1473871 (= res!1001233 (validKeyInArray!0 (select (arr!47846 a!2862) i!1006)))))

(declare-fun b!1473872 () Bool)

(assert (=> b!1473872 (= e!827044 true)))

(declare-fun lt!644037 () SeekEntryResult!12109)

(assert (=> b!1473872 (= lt!644037 (seekEntryOrOpen!0 lt!644038 lt!644033 mask!2687))))

(declare-fun b!1473873 () Bool)

(declare-fun res!1001232 () Bool)

(assert (=> b!1473873 (=> (not res!1001232) (not e!827043))))

(assert (=> b!1473873 (= res!1001232 e!827042)))

(declare-fun c!135833 () Bool)

(assert (=> b!1473873 (= c!135833 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473874 () Bool)

(assert (=> b!1473874 (= e!827048 e!827045)))

(declare-fun res!1001239 () Bool)

(assert (=> b!1473874 (=> (not res!1001239) (not e!827045))))

(assert (=> b!1473874 (= res!1001239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47846 a!2862) j!93) mask!2687) (select (arr!47846 a!2862) j!93) a!2862 mask!2687) lt!644036))))

(assert (=> b!1473874 (= lt!644036 (Intermediate!12109 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125940 res!1001236) b!1473866))

(assert (= (and b!1473866 res!1001231) b!1473871))

(assert (= (and b!1473871 res!1001233) b!1473863))

(assert (= (and b!1473863 res!1001234) b!1473870))

(assert (= (and b!1473870 res!1001235) b!1473860))

(assert (= (and b!1473860 res!1001230) b!1473858))

(assert (= (and b!1473858 res!1001241) b!1473864))

(assert (= (and b!1473864 res!1001228) b!1473874))

(assert (= (and b!1473874 res!1001239) b!1473862))

(assert (= (and b!1473862 res!1001226) b!1473868))

(assert (= (and b!1473868 res!1001240) b!1473873))

(assert (= (and b!1473873 c!135833) b!1473861))

(assert (= (and b!1473873 (not c!135833)) b!1473865))

(assert (= (and b!1473873 res!1001232) b!1473859))

(assert (= (and b!1473859 res!1001238) b!1473867))

(assert (= (and b!1473867 res!1001237) b!1473869))

(assert (= (and b!1473869 res!1001227) b!1473857))

(assert (= (and b!1473867 (not res!1001229)) b!1473872))

(declare-fun m!1360403 () Bool)

(assert (=> start!125940 m!1360403))

(declare-fun m!1360405 () Bool)

(assert (=> start!125940 m!1360405))

(declare-fun m!1360407 () Bool)

(assert (=> b!1473868 m!1360407))

(assert (=> b!1473868 m!1360407))

(declare-fun m!1360409 () Bool)

(assert (=> b!1473868 m!1360409))

(declare-fun m!1360411 () Bool)

(assert (=> b!1473868 m!1360411))

(declare-fun m!1360413 () Bool)

(assert (=> b!1473868 m!1360413))

(declare-fun m!1360415 () Bool)

(assert (=> b!1473871 m!1360415))

(assert (=> b!1473871 m!1360415))

(declare-fun m!1360417 () Bool)

(assert (=> b!1473871 m!1360417))

(declare-fun m!1360419 () Bool)

(assert (=> b!1473865 m!1360419))

(declare-fun m!1360421 () Bool)

(assert (=> b!1473865 m!1360421))

(declare-fun m!1360423 () Bool)

(assert (=> b!1473863 m!1360423))

(assert (=> b!1473863 m!1360423))

(declare-fun m!1360425 () Bool)

(assert (=> b!1473863 m!1360425))

(declare-fun m!1360427 () Bool)

(assert (=> b!1473861 m!1360427))

(assert (=> b!1473872 m!1360421))

(declare-fun m!1360429 () Bool)

(assert (=> b!1473857 m!1360429))

(assert (=> b!1473857 m!1360423))

(assert (=> b!1473869 m!1360423))

(assert (=> b!1473869 m!1360423))

(declare-fun m!1360431 () Bool)

(assert (=> b!1473869 m!1360431))

(declare-fun m!1360433 () Bool)

(assert (=> b!1473860 m!1360433))

(assert (=> b!1473862 m!1360423))

(assert (=> b!1473862 m!1360423))

(declare-fun m!1360435 () Bool)

(assert (=> b!1473862 m!1360435))

(assert (=> b!1473864 m!1360411))

(declare-fun m!1360437 () Bool)

(assert (=> b!1473864 m!1360437))

(declare-fun m!1360439 () Bool)

(assert (=> b!1473870 m!1360439))

(assert (=> b!1473874 m!1360423))

(assert (=> b!1473874 m!1360423))

(declare-fun m!1360441 () Bool)

(assert (=> b!1473874 m!1360441))

(assert (=> b!1473874 m!1360441))

(assert (=> b!1473874 m!1360423))

(declare-fun m!1360443 () Bool)

(assert (=> b!1473874 m!1360443))

(declare-fun m!1360445 () Bool)

(assert (=> b!1473867 m!1360445))

(assert (=> b!1473867 m!1360411))

(declare-fun m!1360447 () Bool)

(assert (=> b!1473867 m!1360447))

(declare-fun m!1360449 () Bool)

(assert (=> b!1473867 m!1360449))

(declare-fun m!1360451 () Bool)

(assert (=> b!1473867 m!1360451))

(assert (=> b!1473867 m!1360423))

(check-sat (not b!1473865) (not b!1473860) (not b!1473863) (not b!1473867) (not start!125940) (not b!1473872) (not b!1473874) (not b!1473868) (not b!1473869) (not b!1473862) (not b!1473871) (not b!1473870) (not b!1473861))
(check-sat)
