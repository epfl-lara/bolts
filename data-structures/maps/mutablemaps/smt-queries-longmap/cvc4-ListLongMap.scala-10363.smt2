; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122036 () Bool)

(assert start!122036)

(declare-fun b!1415844 () Bool)

(declare-fun res!952000 () Bool)

(declare-fun e!801384 () Bool)

(assert (=> b!1415844 (=> (not res!952000) (not e!801384))))

(declare-datatypes ((array!96640 0))(
  ( (array!96641 (arr!46647 (Array (_ BitVec 32) (_ BitVec 64))) (size!47198 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96640)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415844 (= res!952000 (validKeyInArray!0 (select (arr!46647 a!2901) j!112)))))

(declare-fun b!1415845 () Bool)

(declare-fun res!951996 () Bool)

(assert (=> b!1415845 (=> (not res!951996) (not e!801384))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415845 (= res!951996 (and (= (size!47198 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47198 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47198 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415846 () Bool)

(declare-fun e!801388 () Bool)

(declare-fun e!801387 () Bool)

(assert (=> b!1415846 (= e!801388 e!801387)))

(declare-fun res!952003 () Bool)

(assert (=> b!1415846 (=> res!952003 e!801387)))

(declare-datatypes ((SeekEntryResult!10980 0))(
  ( (MissingZero!10980 (index!46311 (_ BitVec 32))) (Found!10980 (index!46312 (_ BitVec 32))) (Intermediate!10980 (undefined!11792 Bool) (index!46313 (_ BitVec 32)) (x!127918 (_ BitVec 32))) (Undefined!10980) (MissingVacant!10980 (index!46314 (_ BitVec 32))) )
))
(declare-fun lt!624426 () SeekEntryResult!10980)

(declare-fun lt!624423 () (_ BitVec 32))

(declare-fun lt!624428 () SeekEntryResult!10980)

(assert (=> b!1415846 (= res!952003 (or (bvslt (x!127918 lt!624428) #b00000000000000000000000000000000) (bvsgt (x!127918 lt!624428) #b01111111111111111111111111111110) (bvslt (x!127918 lt!624426) #b00000000000000000000000000000000) (bvsgt (x!127918 lt!624426) #b01111111111111111111111111111110) (bvslt lt!624423 #b00000000000000000000000000000000) (bvsge lt!624423 (size!47198 a!2901)) (bvslt (index!46313 lt!624428) #b00000000000000000000000000000000) (bvsge (index!46313 lt!624428) (size!47198 a!2901)) (bvslt (index!46313 lt!624426) #b00000000000000000000000000000000) (bvsge (index!46313 lt!624426) (size!47198 a!2901)) (not (= lt!624428 (Intermediate!10980 false (index!46313 lt!624428) (x!127918 lt!624428)))) (not (= lt!624426 (Intermediate!10980 false (index!46313 lt!624426) (x!127918 lt!624426))))))))

(declare-fun e!801383 () Bool)

(assert (=> b!1415846 e!801383))

(declare-fun res!951999 () Bool)

(assert (=> b!1415846 (=> (not res!951999) (not e!801383))))

(assert (=> b!1415846 (= res!951999 (and (not (undefined!11792 lt!624426)) (= (index!46313 lt!624426) i!1037) (bvslt (x!127918 lt!624426) (x!127918 lt!624428)) (= (select (store (arr!46647 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46313 lt!624426)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47884 0))(
  ( (Unit!47885) )
))
(declare-fun lt!624429 () Unit!47884)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47884)

(assert (=> b!1415846 (= lt!624429 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624423 (x!127918 lt!624428) (index!46313 lt!624428) (x!127918 lt!624426) (index!46313 lt!624426) (undefined!11792 lt!624426) mask!2840))))

(declare-fun b!1415847 () Bool)

(declare-fun e!801385 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96640 (_ BitVec 32)) SeekEntryResult!10980)

(assert (=> b!1415847 (= e!801385 (= (seekEntryOrOpen!0 (select (arr!46647 a!2901) j!112) a!2901 mask!2840) (Found!10980 j!112)))))

(declare-fun b!1415848 () Bool)

(assert (=> b!1415848 (= e!801387 true)))

(declare-fun lt!624427 () array!96640)

(declare-fun lt!624430 () (_ BitVec 64))

(declare-fun lt!624425 () SeekEntryResult!10980)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96640 (_ BitVec 32)) SeekEntryResult!10980)

(assert (=> b!1415848 (= lt!624425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624423 lt!624430 lt!624427 mask!2840))))

(declare-fun b!1415849 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96640 (_ BitVec 32)) SeekEntryResult!10980)

(assert (=> b!1415849 (= e!801383 (= (seekEntryOrOpen!0 lt!624430 lt!624427 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127918 lt!624426) (index!46313 lt!624426) (index!46313 lt!624426) (select (arr!46647 a!2901) j!112) lt!624427 mask!2840)))))

(declare-fun b!1415851 () Bool)

(declare-fun e!801389 () Bool)

(assert (=> b!1415851 (= e!801384 (not e!801389))))

(declare-fun res!952005 () Bool)

(assert (=> b!1415851 (=> res!952005 e!801389)))

(assert (=> b!1415851 (= res!952005 (or (not (is-Intermediate!10980 lt!624428)) (undefined!11792 lt!624428)))))

(assert (=> b!1415851 e!801385))

(declare-fun res!952002 () Bool)

(assert (=> b!1415851 (=> (not res!952002) (not e!801385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96640 (_ BitVec 32)) Bool)

(assert (=> b!1415851 (= res!952002 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624424 () Unit!47884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47884)

(assert (=> b!1415851 (= lt!624424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415851 (= lt!624428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624423 (select (arr!46647 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415851 (= lt!624423 (toIndex!0 (select (arr!46647 a!2901) j!112) mask!2840))))

(declare-fun b!1415852 () Bool)

(declare-fun res!951997 () Bool)

(assert (=> b!1415852 (=> (not res!951997) (not e!801384))))

(assert (=> b!1415852 (= res!951997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415853 () Bool)

(declare-fun res!951998 () Bool)

(assert (=> b!1415853 (=> (not res!951998) (not e!801384))))

(assert (=> b!1415853 (= res!951998 (validKeyInArray!0 (select (arr!46647 a!2901) i!1037)))))

(declare-fun b!1415854 () Bool)

(declare-fun res!951995 () Bool)

(assert (=> b!1415854 (=> (not res!951995) (not e!801384))))

(declare-datatypes ((List!33346 0))(
  ( (Nil!33343) (Cons!33342 (h!34629 (_ BitVec 64)) (t!48047 List!33346)) )
))
(declare-fun arrayNoDuplicates!0 (array!96640 (_ BitVec 32) List!33346) Bool)

(assert (=> b!1415854 (= res!951995 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33343))))

(declare-fun b!1415850 () Bool)

(assert (=> b!1415850 (= e!801389 e!801388)))

(declare-fun res!952004 () Bool)

(assert (=> b!1415850 (=> res!952004 e!801388)))

(assert (=> b!1415850 (= res!952004 (or (= lt!624428 lt!624426) (not (is-Intermediate!10980 lt!624426))))))

(assert (=> b!1415850 (= lt!624426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624430 mask!2840) lt!624430 lt!624427 mask!2840))))

(assert (=> b!1415850 (= lt!624430 (select (store (arr!46647 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415850 (= lt!624427 (array!96641 (store (arr!46647 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47198 a!2901)))))

(declare-fun res!952001 () Bool)

(assert (=> start!122036 (=> (not res!952001) (not e!801384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122036 (= res!952001 (validMask!0 mask!2840))))

(assert (=> start!122036 e!801384))

(assert (=> start!122036 true))

(declare-fun array_inv!35592 (array!96640) Bool)

(assert (=> start!122036 (array_inv!35592 a!2901)))

(assert (= (and start!122036 res!952001) b!1415845))

(assert (= (and b!1415845 res!951996) b!1415853))

(assert (= (and b!1415853 res!951998) b!1415844))

(assert (= (and b!1415844 res!952000) b!1415852))

(assert (= (and b!1415852 res!951997) b!1415854))

(assert (= (and b!1415854 res!951995) b!1415851))

(assert (= (and b!1415851 res!952002) b!1415847))

(assert (= (and b!1415851 (not res!952005)) b!1415850))

(assert (= (and b!1415850 (not res!952004)) b!1415846))

(assert (= (and b!1415846 res!951999) b!1415849))

(assert (= (and b!1415846 (not res!952003)) b!1415848))

(declare-fun m!1306359 () Bool)

(assert (=> b!1415851 m!1306359))

(declare-fun m!1306361 () Bool)

(assert (=> b!1415851 m!1306361))

(assert (=> b!1415851 m!1306359))

(declare-fun m!1306363 () Bool)

(assert (=> b!1415851 m!1306363))

(declare-fun m!1306365 () Bool)

(assert (=> b!1415851 m!1306365))

(assert (=> b!1415851 m!1306359))

(declare-fun m!1306367 () Bool)

(assert (=> b!1415851 m!1306367))

(declare-fun m!1306369 () Bool)

(assert (=> b!1415854 m!1306369))

(declare-fun m!1306371 () Bool)

(assert (=> b!1415848 m!1306371))

(declare-fun m!1306373 () Bool)

(assert (=> b!1415850 m!1306373))

(assert (=> b!1415850 m!1306373))

(declare-fun m!1306375 () Bool)

(assert (=> b!1415850 m!1306375))

(declare-fun m!1306377 () Bool)

(assert (=> b!1415850 m!1306377))

(declare-fun m!1306379 () Bool)

(assert (=> b!1415850 m!1306379))

(declare-fun m!1306381 () Bool)

(assert (=> b!1415853 m!1306381))

(assert (=> b!1415853 m!1306381))

(declare-fun m!1306383 () Bool)

(assert (=> b!1415853 m!1306383))

(assert (=> b!1415846 m!1306377))

(declare-fun m!1306385 () Bool)

(assert (=> b!1415846 m!1306385))

(declare-fun m!1306387 () Bool)

(assert (=> b!1415846 m!1306387))

(assert (=> b!1415847 m!1306359))

(assert (=> b!1415847 m!1306359))

(declare-fun m!1306389 () Bool)

(assert (=> b!1415847 m!1306389))

(declare-fun m!1306391 () Bool)

(assert (=> b!1415849 m!1306391))

(assert (=> b!1415849 m!1306359))

(assert (=> b!1415849 m!1306359))

(declare-fun m!1306393 () Bool)

(assert (=> b!1415849 m!1306393))

(declare-fun m!1306395 () Bool)

(assert (=> start!122036 m!1306395))

(declare-fun m!1306397 () Bool)

(assert (=> start!122036 m!1306397))

(assert (=> b!1415844 m!1306359))

(assert (=> b!1415844 m!1306359))

(declare-fun m!1306399 () Bool)

(assert (=> b!1415844 m!1306399))

(declare-fun m!1306401 () Bool)

(assert (=> b!1415852 m!1306401))

(push 1)

