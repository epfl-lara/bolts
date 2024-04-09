; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122030 () Bool)

(assert start!122030)

(declare-fun b!1415746 () Bool)

(declare-fun res!951902 () Bool)

(declare-fun e!801323 () Bool)

(assert (=> b!1415746 (=> (not res!951902) (not e!801323))))

(declare-datatypes ((array!96634 0))(
  ( (array!96635 (arr!46644 (Array (_ BitVec 32) (_ BitVec 64))) (size!47195 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96634)

(declare-datatypes ((List!33343 0))(
  ( (Nil!33340) (Cons!33339 (h!34626 (_ BitVec 64)) (t!48044 List!33343)) )
))
(declare-fun arrayNoDuplicates!0 (array!96634 (_ BitVec 32) List!33343) Bool)

(assert (=> b!1415746 (= res!951902 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33340))))

(declare-fun b!1415747 () Bool)

(declare-fun e!801321 () Bool)

(declare-fun e!801325 () Bool)

(assert (=> b!1415747 (= e!801321 e!801325)))

(declare-fun res!951905 () Bool)

(assert (=> b!1415747 (=> res!951905 e!801325)))

(declare-datatypes ((SeekEntryResult!10977 0))(
  ( (MissingZero!10977 (index!46299 (_ BitVec 32))) (Found!10977 (index!46300 (_ BitVec 32))) (Intermediate!10977 (undefined!11789 Bool) (index!46301 (_ BitVec 32)) (x!127907 (_ BitVec 32))) (Undefined!10977) (MissingVacant!10977 (index!46302 (_ BitVec 32))) )
))
(declare-fun lt!624353 () SeekEntryResult!10977)

(declare-fun lt!624354 () SeekEntryResult!10977)

(assert (=> b!1415747 (= res!951905 (or (= lt!624353 lt!624354) (not (is-Intermediate!10977 lt!624354))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624358 () (_ BitVec 64))

(declare-fun lt!624356 () array!96634)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96634 (_ BitVec 32)) SeekEntryResult!10977)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415747 (= lt!624354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624358 mask!2840) lt!624358 lt!624356 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415747 (= lt!624358 (select (store (arr!46644 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415747 (= lt!624356 (array!96635 (store (arr!46644 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47195 a!2901)))))

(declare-fun b!1415748 () Bool)

(declare-fun res!951903 () Bool)

(assert (=> b!1415748 (=> (not res!951903) (not e!801323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415748 (= res!951903 (validKeyInArray!0 (select (arr!46644 a!2901) i!1037)))))

(declare-fun b!1415749 () Bool)

(declare-fun e!801326 () Bool)

(assert (=> b!1415749 (= e!801325 e!801326)))

(declare-fun res!951906 () Bool)

(assert (=> b!1415749 (=> res!951906 e!801326)))

(declare-fun lt!624355 () (_ BitVec 32))

(assert (=> b!1415749 (= res!951906 (or (bvslt (x!127907 lt!624353) #b00000000000000000000000000000000) (bvsgt (x!127907 lt!624353) #b01111111111111111111111111111110) (bvslt (x!127907 lt!624354) #b00000000000000000000000000000000) (bvsgt (x!127907 lt!624354) #b01111111111111111111111111111110) (bvslt lt!624355 #b00000000000000000000000000000000) (bvsge lt!624355 (size!47195 a!2901)) (bvslt (index!46301 lt!624353) #b00000000000000000000000000000000) (bvsge (index!46301 lt!624353) (size!47195 a!2901)) (bvslt (index!46301 lt!624354) #b00000000000000000000000000000000) (bvsge (index!46301 lt!624354) (size!47195 a!2901)) (not (= lt!624353 (Intermediate!10977 false (index!46301 lt!624353) (x!127907 lt!624353)))) (not (= lt!624354 (Intermediate!10977 false (index!46301 lt!624354) (x!127907 lt!624354))))))))

(declare-fun e!801320 () Bool)

(assert (=> b!1415749 e!801320))

(declare-fun res!951897 () Bool)

(assert (=> b!1415749 (=> (not res!951897) (not e!801320))))

(assert (=> b!1415749 (= res!951897 (and (not (undefined!11789 lt!624354)) (= (index!46301 lt!624354) i!1037) (bvslt (x!127907 lt!624354) (x!127907 lt!624353)) (= (select (store (arr!46644 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46301 lt!624354)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47878 0))(
  ( (Unit!47879) )
))
(declare-fun lt!624351 () Unit!47878)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47878)

(assert (=> b!1415749 (= lt!624351 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624355 (x!127907 lt!624353) (index!46301 lt!624353) (x!127907 lt!624354) (index!46301 lt!624354) (undefined!11789 lt!624354) mask!2840))))

(declare-fun b!1415750 () Bool)

(declare-fun res!951904 () Bool)

(assert (=> b!1415750 (=> (not res!951904) (not e!801323))))

(assert (=> b!1415750 (= res!951904 (validKeyInArray!0 (select (arr!46644 a!2901) j!112)))))

(declare-fun b!1415751 () Bool)

(assert (=> b!1415751 (= e!801323 (not e!801321))))

(declare-fun res!951896 () Bool)

(assert (=> b!1415751 (=> res!951896 e!801321)))

(assert (=> b!1415751 (= res!951896 (or (not (is-Intermediate!10977 lt!624353)) (undefined!11789 lt!624353)))))

(declare-fun e!801322 () Bool)

(assert (=> b!1415751 e!801322))

(declare-fun res!951899 () Bool)

(assert (=> b!1415751 (=> (not res!951899) (not e!801322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96634 (_ BitVec 32)) Bool)

(assert (=> b!1415751 (= res!951899 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!624352 () Unit!47878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47878)

(assert (=> b!1415751 (= lt!624352 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415751 (= lt!624353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624355 (select (arr!46644 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415751 (= lt!624355 (toIndex!0 (select (arr!46644 a!2901) j!112) mask!2840))))

(declare-fun res!951898 () Bool)

(assert (=> start!122030 (=> (not res!951898) (not e!801323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122030 (= res!951898 (validMask!0 mask!2840))))

(assert (=> start!122030 e!801323))

(assert (=> start!122030 true))

(declare-fun array_inv!35589 (array!96634) Bool)

(assert (=> start!122030 (array_inv!35589 a!2901)))

(declare-fun b!1415745 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96634 (_ BitVec 32)) SeekEntryResult!10977)

(assert (=> b!1415745 (= e!801322 (= (seekEntryOrOpen!0 (select (arr!46644 a!2901) j!112) a!2901 mask!2840) (Found!10977 j!112)))))

(declare-fun b!1415752 () Bool)

(declare-fun res!951901 () Bool)

(assert (=> b!1415752 (=> (not res!951901) (not e!801323))))

(assert (=> b!1415752 (= res!951901 (and (= (size!47195 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47195 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47195 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415753 () Bool)

(assert (=> b!1415753 (= e!801326 true)))

(declare-fun lt!624357 () SeekEntryResult!10977)

(assert (=> b!1415753 (= lt!624357 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624355 lt!624358 lt!624356 mask!2840))))

(declare-fun b!1415754 () Bool)

(declare-fun res!951900 () Bool)

(assert (=> b!1415754 (=> (not res!951900) (not e!801323))))

(assert (=> b!1415754 (= res!951900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415755 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96634 (_ BitVec 32)) SeekEntryResult!10977)

(assert (=> b!1415755 (= e!801320 (= (seekEntryOrOpen!0 lt!624358 lt!624356 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127907 lt!624354) (index!46301 lt!624354) (index!46301 lt!624354) (select (arr!46644 a!2901) j!112) lt!624356 mask!2840)))))

(assert (= (and start!122030 res!951898) b!1415752))

(assert (= (and b!1415752 res!951901) b!1415748))

(assert (= (and b!1415748 res!951903) b!1415750))

(assert (= (and b!1415750 res!951904) b!1415754))

(assert (= (and b!1415754 res!951900) b!1415746))

(assert (= (and b!1415746 res!951902) b!1415751))

(assert (= (and b!1415751 res!951899) b!1415745))

(assert (= (and b!1415751 (not res!951896)) b!1415747))

(assert (= (and b!1415747 (not res!951905)) b!1415749))

(assert (= (and b!1415749 res!951897) b!1415755))

(assert (= (and b!1415749 (not res!951906)) b!1415753))

(declare-fun m!1306227 () Bool)

(assert (=> b!1415748 m!1306227))

(assert (=> b!1415748 m!1306227))

(declare-fun m!1306229 () Bool)

(assert (=> b!1415748 m!1306229))

(declare-fun m!1306231 () Bool)

(assert (=> b!1415747 m!1306231))

(assert (=> b!1415747 m!1306231))

(declare-fun m!1306233 () Bool)

(assert (=> b!1415747 m!1306233))

(declare-fun m!1306235 () Bool)

(assert (=> b!1415747 m!1306235))

(declare-fun m!1306237 () Bool)

(assert (=> b!1415747 m!1306237))

(declare-fun m!1306239 () Bool)

(assert (=> b!1415753 m!1306239))

(declare-fun m!1306241 () Bool)

(assert (=> b!1415754 m!1306241))

(declare-fun m!1306243 () Bool)

(assert (=> b!1415746 m!1306243))

(declare-fun m!1306245 () Bool)

(assert (=> b!1415751 m!1306245))

(declare-fun m!1306247 () Bool)

(assert (=> b!1415751 m!1306247))

(assert (=> b!1415751 m!1306245))

(assert (=> b!1415751 m!1306245))

(declare-fun m!1306249 () Bool)

(assert (=> b!1415751 m!1306249))

(declare-fun m!1306251 () Bool)

(assert (=> b!1415751 m!1306251))

(declare-fun m!1306253 () Bool)

(assert (=> b!1415751 m!1306253))

(assert (=> b!1415750 m!1306245))

(assert (=> b!1415750 m!1306245))

(declare-fun m!1306255 () Bool)

(assert (=> b!1415750 m!1306255))

(assert (=> b!1415745 m!1306245))

(assert (=> b!1415745 m!1306245))

(declare-fun m!1306257 () Bool)

(assert (=> b!1415745 m!1306257))

(declare-fun m!1306259 () Bool)

(assert (=> start!122030 m!1306259))

(declare-fun m!1306261 () Bool)

(assert (=> start!122030 m!1306261))

(declare-fun m!1306263 () Bool)

(assert (=> b!1415755 m!1306263))

(assert (=> b!1415755 m!1306245))

(assert (=> b!1415755 m!1306245))

(declare-fun m!1306265 () Bool)

(assert (=> b!1415755 m!1306265))

(assert (=> b!1415749 m!1306235))

(declare-fun m!1306267 () Bool)

(assert (=> b!1415749 m!1306267))

(declare-fun m!1306269 () Bool)

(assert (=> b!1415749 m!1306269))

(push 1)

