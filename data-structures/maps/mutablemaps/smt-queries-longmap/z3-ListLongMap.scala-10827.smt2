; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126786 () Bool)

(assert start!126786)

(declare-fun b!1487785 () Bool)

(declare-fun e!833996 () Bool)

(declare-fun e!833991 () Bool)

(assert (=> b!1487785 (= e!833996 (not e!833991))))

(declare-fun res!1011864 () Bool)

(assert (=> b!1487785 (=> res!1011864 e!833991)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99539 0))(
  ( (array!99540 (arr!48038 (Array (_ BitVec 32) (_ BitVec 64))) (size!48589 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99539)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1487785 (= res!1011864 (or (and (= (select (arr!48038 a!2862) index!646) (select (store (arr!48038 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48038 a!2862) index!646) (select (arr!48038 a!2862) j!93))) (= (select (arr!48038 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!833994 () Bool)

(assert (=> b!1487785 e!833994))

(declare-fun res!1011862 () Bool)

(assert (=> b!1487785 (=> (not res!1011862) (not e!833994))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99539 (_ BitVec 32)) Bool)

(assert (=> b!1487785 (= res!1011862 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49890 0))(
  ( (Unit!49891) )
))
(declare-fun lt!648924 () Unit!49890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49890)

(assert (=> b!1487785 (= lt!648924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487786 () Bool)

(declare-fun e!833998 () Bool)

(assert (=> b!1487786 (= e!833998 e!833996)))

(declare-fun res!1011870 () Bool)

(assert (=> b!1487786 (=> (not res!1011870) (not e!833996))))

(declare-datatypes ((SeekEntryResult!12301 0))(
  ( (MissingZero!12301 (index!51595 (_ BitVec 32))) (Found!12301 (index!51596 (_ BitVec 32))) (Intermediate!12301 (undefined!13113 Bool) (index!51597 (_ BitVec 32)) (x!133188 (_ BitVec 32))) (Undefined!12301) (MissingVacant!12301 (index!51598 (_ BitVec 32))) )
))
(declare-fun lt!648927 () SeekEntryResult!12301)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1487786 (= res!1011870 (= lt!648927 (Intermediate!12301 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!648926 () array!99539)

(declare-fun lt!648923 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99539 (_ BitVec 32)) SeekEntryResult!12301)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487786 (= lt!648927 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648923 mask!2687) lt!648923 lt!648926 mask!2687))))

(assert (=> b!1487786 (= lt!648923 (select (store (arr!48038 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487787 () Bool)

(declare-fun res!1011858 () Bool)

(assert (=> b!1487787 (=> (not res!1011858) (not e!833998))))

(declare-fun lt!648925 () SeekEntryResult!12301)

(assert (=> b!1487787 (= res!1011858 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48038 a!2862) j!93) a!2862 mask!2687) lt!648925))))

(declare-fun b!1487788 () Bool)

(declare-fun res!1011872 () Bool)

(declare-fun e!833999 () Bool)

(assert (=> b!1487788 (=> (not res!1011872) (not e!833999))))

(assert (=> b!1487788 (= res!1011872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487789 () Bool)

(declare-fun e!833989 () Bool)

(declare-fun e!833997 () Bool)

(assert (=> b!1487789 (= e!833989 e!833997)))

(declare-fun res!1011863 () Bool)

(assert (=> b!1487789 (=> (not res!1011863) (not e!833997))))

(declare-fun lt!648921 () (_ BitVec 64))

(assert (=> b!1487789 (= res!1011863 (and (= index!646 intermediateAfterIndex!19) (= lt!648921 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487790 () Bool)

(declare-fun res!1011871 () Bool)

(assert (=> b!1487790 (=> (not res!1011871) (not e!833999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487790 (= res!1011871 (validKeyInArray!0 (select (arr!48038 a!2862) i!1006)))))

(declare-fun b!1487791 () Bool)

(declare-fun res!1011857 () Bool)

(assert (=> b!1487791 (=> (not res!1011857) (not e!833999))))

(assert (=> b!1487791 (= res!1011857 (and (= (size!48589 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48589 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48589 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487792 () Bool)

(declare-fun res!1011876 () Bool)

(assert (=> b!1487792 (=> (not res!1011876) (not e!833999))))

(declare-datatypes ((List!34719 0))(
  ( (Nil!34716) (Cons!34715 (h!36095 (_ BitVec 64)) (t!49420 List!34719)) )
))
(declare-fun arrayNoDuplicates!0 (array!99539 (_ BitVec 32) List!34719) Bool)

(assert (=> b!1487792 (= res!1011876 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34716))))

(declare-fun b!1487793 () Bool)

(declare-fun res!1011860 () Bool)

(assert (=> b!1487793 (=> (not res!1011860) (not e!833994))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1487793 (= res!1011860 (or (= (select (arr!48038 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48038 a!2862) intermediateBeforeIndex!19) (select (arr!48038 a!2862) j!93))))))

(declare-fun b!1487794 () Bool)

(declare-fun res!1011869 () Bool)

(assert (=> b!1487794 (=> (not res!1011869) (not e!833994))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99539 (_ BitVec 32)) SeekEntryResult!12301)

(assert (=> b!1487794 (= res!1011869 (= (seekEntryOrOpen!0 (select (arr!48038 a!2862) j!93) a!2862 mask!2687) (Found!12301 j!93)))))

(declare-fun b!1487795 () Bool)

(declare-fun e!833993 () Bool)

(assert (=> b!1487795 (= e!833999 e!833993)))

(declare-fun res!1011861 () Bool)

(assert (=> b!1487795 (=> (not res!1011861) (not e!833993))))

(assert (=> b!1487795 (= res!1011861 (= (select (store (arr!48038 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487795 (= lt!648926 (array!99540 (store (arr!48038 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48589 a!2862)))))

(declare-fun b!1487796 () Bool)

(declare-fun res!1011875 () Bool)

(assert (=> b!1487796 (=> (not res!1011875) (not e!833999))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487796 (= res!1011875 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48589 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48589 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48589 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1011873 () Bool)

(assert (=> start!126786 (=> (not res!1011873) (not e!833999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126786 (= res!1011873 (validMask!0 mask!2687))))

(assert (=> start!126786 e!833999))

(assert (=> start!126786 true))

(declare-fun array_inv!36983 (array!99539) Bool)

(assert (=> start!126786 (array_inv!36983 a!2862)))

(declare-fun b!1487797 () Bool)

(declare-fun res!1011865 () Bool)

(assert (=> b!1487797 (=> (not res!1011865) (not e!833999))))

(assert (=> b!1487797 (= res!1011865 (validKeyInArray!0 (select (arr!48038 a!2862) j!93)))))

(declare-fun b!1487798 () Bool)

(declare-fun e!833995 () Bool)

(assert (=> b!1487798 (= e!833995 true)))

(declare-fun lt!648928 () (_ BitVec 32))

(declare-fun lt!648922 () SeekEntryResult!12301)

(assert (=> b!1487798 (= lt!648922 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648928 (select (arr!48038 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487799 () Bool)

(assert (=> b!1487799 (= e!833993 e!833998)))

(declare-fun res!1011868 () Bool)

(assert (=> b!1487799 (=> (not res!1011868) (not e!833998))))

(assert (=> b!1487799 (= res!1011868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48038 a!2862) j!93) mask!2687) (select (arr!48038 a!2862) j!93) a!2862 mask!2687) lt!648925))))

(assert (=> b!1487799 (= lt!648925 (Intermediate!12301 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487800 () Bool)

(declare-fun res!1011859 () Bool)

(assert (=> b!1487800 (=> (not res!1011859) (not e!833996))))

(assert (=> b!1487800 (= res!1011859 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!833992 () Bool)

(declare-fun b!1487801 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99539 (_ BitVec 32)) SeekEntryResult!12301)

(assert (=> b!1487801 (= e!833992 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648923 lt!648926 mask!2687) (seekEntryOrOpen!0 lt!648923 lt!648926 mask!2687)))))

(declare-fun b!1487802 () Bool)

(assert (=> b!1487802 (= e!833997 (= (seekEntryOrOpen!0 lt!648923 lt!648926 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648923 lt!648926 mask!2687)))))

(declare-fun b!1487803 () Bool)

(declare-fun res!1011867 () Bool)

(assert (=> b!1487803 (=> (not res!1011867) (not e!833996))))

(assert (=> b!1487803 (= res!1011867 e!833992)))

(declare-fun c!137492 () Bool)

(assert (=> b!1487803 (= c!137492 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487804 () Bool)

(assert (=> b!1487804 (= e!833991 e!833995)))

(declare-fun res!1011874 () Bool)

(assert (=> b!1487804 (=> res!1011874 e!833995)))

(assert (=> b!1487804 (= res!1011874 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648928 #b00000000000000000000000000000000) (bvsge lt!648928 (size!48589 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487804 (= lt!648928 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487805 () Bool)

(assert (=> b!1487805 (= e!833994 e!833989)))

(declare-fun res!1011866 () Bool)

(assert (=> b!1487805 (=> res!1011866 e!833989)))

(assert (=> b!1487805 (= res!1011866 (or (and (= (select (arr!48038 a!2862) index!646) lt!648921) (= (select (arr!48038 a!2862) index!646) (select (arr!48038 a!2862) j!93))) (= (select (arr!48038 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487805 (= lt!648921 (select (store (arr!48038 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1487806 () Bool)

(assert (=> b!1487806 (= e!833992 (= lt!648927 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648923 lt!648926 mask!2687)))))

(assert (= (and start!126786 res!1011873) b!1487791))

(assert (= (and b!1487791 res!1011857) b!1487790))

(assert (= (and b!1487790 res!1011871) b!1487797))

(assert (= (and b!1487797 res!1011865) b!1487788))

(assert (= (and b!1487788 res!1011872) b!1487792))

(assert (= (and b!1487792 res!1011876) b!1487796))

(assert (= (and b!1487796 res!1011875) b!1487795))

(assert (= (and b!1487795 res!1011861) b!1487799))

(assert (= (and b!1487799 res!1011868) b!1487787))

(assert (= (and b!1487787 res!1011858) b!1487786))

(assert (= (and b!1487786 res!1011870) b!1487803))

(assert (= (and b!1487803 c!137492) b!1487806))

(assert (= (and b!1487803 (not c!137492)) b!1487801))

(assert (= (and b!1487803 res!1011867) b!1487800))

(assert (= (and b!1487800 res!1011859) b!1487785))

(assert (= (and b!1487785 res!1011862) b!1487794))

(assert (= (and b!1487794 res!1011869) b!1487793))

(assert (= (and b!1487793 res!1011860) b!1487805))

(assert (= (and b!1487805 (not res!1011866)) b!1487789))

(assert (= (and b!1487789 res!1011863) b!1487802))

(assert (= (and b!1487785 (not res!1011864)) b!1487804))

(assert (= (and b!1487804 (not res!1011874)) b!1487798))

(declare-fun m!1372389 () Bool)

(assert (=> b!1487793 m!1372389))

(declare-fun m!1372391 () Bool)

(assert (=> b!1487793 m!1372391))

(declare-fun m!1372393 () Bool)

(assert (=> b!1487802 m!1372393))

(declare-fun m!1372395 () Bool)

(assert (=> b!1487802 m!1372395))

(declare-fun m!1372397 () Bool)

(assert (=> b!1487804 m!1372397))

(assert (=> b!1487798 m!1372391))

(assert (=> b!1487798 m!1372391))

(declare-fun m!1372399 () Bool)

(assert (=> b!1487798 m!1372399))

(assert (=> b!1487801 m!1372395))

(assert (=> b!1487801 m!1372393))

(declare-fun m!1372401 () Bool)

(assert (=> b!1487806 m!1372401))

(assert (=> b!1487794 m!1372391))

(assert (=> b!1487794 m!1372391))

(declare-fun m!1372403 () Bool)

(assert (=> b!1487794 m!1372403))

(declare-fun m!1372405 () Bool)

(assert (=> start!126786 m!1372405))

(declare-fun m!1372407 () Bool)

(assert (=> start!126786 m!1372407))

(declare-fun m!1372409 () Bool)

(assert (=> b!1487795 m!1372409))

(declare-fun m!1372411 () Bool)

(assert (=> b!1487795 m!1372411))

(declare-fun m!1372413 () Bool)

(assert (=> b!1487786 m!1372413))

(assert (=> b!1487786 m!1372413))

(declare-fun m!1372415 () Bool)

(assert (=> b!1487786 m!1372415))

(assert (=> b!1487786 m!1372409))

(declare-fun m!1372417 () Bool)

(assert (=> b!1487786 m!1372417))

(declare-fun m!1372419 () Bool)

(assert (=> b!1487788 m!1372419))

(declare-fun m!1372421 () Bool)

(assert (=> b!1487805 m!1372421))

(assert (=> b!1487805 m!1372391))

(assert (=> b!1487805 m!1372409))

(declare-fun m!1372423 () Bool)

(assert (=> b!1487805 m!1372423))

(declare-fun m!1372425 () Bool)

(assert (=> b!1487792 m!1372425))

(assert (=> b!1487797 m!1372391))

(assert (=> b!1487797 m!1372391))

(declare-fun m!1372427 () Bool)

(assert (=> b!1487797 m!1372427))

(assert (=> b!1487799 m!1372391))

(assert (=> b!1487799 m!1372391))

(declare-fun m!1372429 () Bool)

(assert (=> b!1487799 m!1372429))

(assert (=> b!1487799 m!1372429))

(assert (=> b!1487799 m!1372391))

(declare-fun m!1372431 () Bool)

(assert (=> b!1487799 m!1372431))

(assert (=> b!1487787 m!1372391))

(assert (=> b!1487787 m!1372391))

(declare-fun m!1372433 () Bool)

(assert (=> b!1487787 m!1372433))

(declare-fun m!1372435 () Bool)

(assert (=> b!1487790 m!1372435))

(assert (=> b!1487790 m!1372435))

(declare-fun m!1372437 () Bool)

(assert (=> b!1487790 m!1372437))

(declare-fun m!1372439 () Bool)

(assert (=> b!1487785 m!1372439))

(assert (=> b!1487785 m!1372409))

(assert (=> b!1487785 m!1372423))

(assert (=> b!1487785 m!1372421))

(declare-fun m!1372441 () Bool)

(assert (=> b!1487785 m!1372441))

(assert (=> b!1487785 m!1372391))

(check-sat (not start!126786) (not b!1487794) (not b!1487790) (not b!1487806) (not b!1487804) (not b!1487786) (not b!1487788) (not b!1487801) (not b!1487792) (not b!1487802) (not b!1487797) (not b!1487785) (not b!1487798) (not b!1487787) (not b!1487799))
(check-sat)
