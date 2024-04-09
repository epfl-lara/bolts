; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122060 () Bool)

(assert start!122060)

(declare-fun b!1416205 () Bool)

(declare-fun e!801565 () Bool)

(declare-fun e!801568 () Bool)

(assert (=> b!1416205 (= e!801565 (not e!801568))))

(declare-fun res!952359 () Bool)

(assert (=> b!1416205 (=> res!952359 e!801568)))

(declare-datatypes ((SeekEntryResult!10992 0))(
  ( (MissingZero!10992 (index!46359 (_ BitVec 32))) (Found!10992 (index!46360 (_ BitVec 32))) (Intermediate!10992 (undefined!11804 Bool) (index!46361 (_ BitVec 32)) (x!127962 (_ BitVec 32))) (Undefined!10992) (MissingVacant!10992 (index!46362 (_ BitVec 32))) )
))
(declare-fun lt!624785 () SeekEntryResult!10992)

(assert (=> b!1416205 (= res!952359 (or (not (is-Intermediate!10992 lt!624785)) (undefined!11804 lt!624785)))))

(declare-fun lt!624789 () SeekEntryResult!10992)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416205 (= lt!624789 (Found!10992 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96664 0))(
  ( (array!96665 (arr!46659 (Array (_ BitVec 32) (_ BitVec 64))) (size!47210 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96664)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96664 (_ BitVec 32)) SeekEntryResult!10992)

(assert (=> b!1416205 (= lt!624789 (seekEntryOrOpen!0 (select (arr!46659 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96664 (_ BitVec 32)) Bool)

(assert (=> b!1416205 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47908 0))(
  ( (Unit!47909) )
))
(declare-fun lt!624787 () Unit!47908)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47908)

(assert (=> b!1416205 (= lt!624787 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624788 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96664 (_ BitVec 32)) SeekEntryResult!10992)

(assert (=> b!1416205 (= lt!624785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624788 (select (arr!46659 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416205 (= lt!624788 (toIndex!0 (select (arr!46659 a!2901) j!112) mask!2840))))

(declare-fun b!1416206 () Bool)

(declare-fun res!952365 () Bool)

(declare-fun e!801566 () Bool)

(assert (=> b!1416206 (=> res!952365 e!801566)))

(declare-fun lt!624786 () (_ BitVec 64))

(declare-fun lt!624783 () array!96664)

(declare-fun lt!624782 () SeekEntryResult!10992)

(assert (=> b!1416206 (= res!952365 (not (= lt!624782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624788 lt!624786 lt!624783 mask!2840))))))

(declare-fun b!1416207 () Bool)

(declare-fun res!952363 () Bool)

(assert (=> b!1416207 (=> (not res!952363) (not e!801565))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416207 (= res!952363 (validKeyInArray!0 (select (arr!46659 a!2901) i!1037)))))

(declare-fun b!1416208 () Bool)

(assert (=> b!1416208 (= e!801566 true)))

(declare-fun lt!624784 () SeekEntryResult!10992)

(assert (=> b!1416208 (= lt!624789 lt!624784)))

(declare-fun lt!624781 () Unit!47908)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47908)

(assert (=> b!1416208 (= lt!624781 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624788 (x!127962 lt!624785) (index!46361 lt!624785) (x!127962 lt!624782) (index!46361 lt!624782) mask!2840))))

(declare-fun res!952364 () Bool)

(assert (=> start!122060 (=> (not res!952364) (not e!801565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122060 (= res!952364 (validMask!0 mask!2840))))

(assert (=> start!122060 e!801565))

(assert (=> start!122060 true))

(declare-fun array_inv!35604 (array!96664) Bool)

(assert (=> start!122060 (array_inv!35604 a!2901)))

(declare-fun b!1416209 () Bool)

(declare-fun e!801567 () Bool)

(assert (=> b!1416209 (= e!801568 e!801567)))

(declare-fun res!952361 () Bool)

(assert (=> b!1416209 (=> res!952361 e!801567)))

(assert (=> b!1416209 (= res!952361 (or (= lt!624785 lt!624782) (not (is-Intermediate!10992 lt!624782))))))

(assert (=> b!1416209 (= lt!624782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624786 mask!2840) lt!624786 lt!624783 mask!2840))))

(assert (=> b!1416209 (= lt!624786 (select (store (arr!46659 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416209 (= lt!624783 (array!96665 (store (arr!46659 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47210 a!2901)))))

(declare-fun b!1416210 () Bool)

(declare-fun res!952358 () Bool)

(assert (=> b!1416210 (=> (not res!952358) (not e!801565))))

(assert (=> b!1416210 (= res!952358 (validKeyInArray!0 (select (arr!46659 a!2901) j!112)))))

(declare-fun b!1416211 () Bool)

(assert (=> b!1416211 (= e!801567 e!801566)))

(declare-fun res!952357 () Bool)

(assert (=> b!1416211 (=> res!952357 e!801566)))

(assert (=> b!1416211 (= res!952357 (or (bvslt (x!127962 lt!624785) #b00000000000000000000000000000000) (bvsgt (x!127962 lt!624785) #b01111111111111111111111111111110) (bvslt (x!127962 lt!624782) #b00000000000000000000000000000000) (bvsgt (x!127962 lt!624782) #b01111111111111111111111111111110) (bvslt lt!624788 #b00000000000000000000000000000000) (bvsge lt!624788 (size!47210 a!2901)) (bvslt (index!46361 lt!624785) #b00000000000000000000000000000000) (bvsge (index!46361 lt!624785) (size!47210 a!2901)) (bvslt (index!46361 lt!624782) #b00000000000000000000000000000000) (bvsge (index!46361 lt!624782) (size!47210 a!2901)) (not (= lt!624785 (Intermediate!10992 false (index!46361 lt!624785) (x!127962 lt!624785)))) (not (= lt!624782 (Intermediate!10992 false (index!46361 lt!624782) (x!127962 lt!624782))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96664 (_ BitVec 32)) SeekEntryResult!10992)

(assert (=> b!1416211 (= lt!624784 (seekKeyOrZeroReturnVacant!0 (x!127962 lt!624782) (index!46361 lt!624782) (index!46361 lt!624782) (select (arr!46659 a!2901) j!112) lt!624783 mask!2840))))

(assert (=> b!1416211 (= lt!624784 (seekEntryOrOpen!0 lt!624786 lt!624783 mask!2840))))

(assert (=> b!1416211 (and (not (undefined!11804 lt!624782)) (= (index!46361 lt!624782) i!1037) (bvslt (x!127962 lt!624782) (x!127962 lt!624785)) (= (select (store (arr!46659 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46361 lt!624782)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624790 () Unit!47908)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96664 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47908)

(assert (=> b!1416211 (= lt!624790 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624788 (x!127962 lt!624785) (index!46361 lt!624785) (x!127962 lt!624782) (index!46361 lt!624782) (undefined!11804 lt!624782) mask!2840))))

(declare-fun b!1416212 () Bool)

(declare-fun res!952362 () Bool)

(assert (=> b!1416212 (=> (not res!952362) (not e!801565))))

(assert (=> b!1416212 (= res!952362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416213 () Bool)

(declare-fun res!952356 () Bool)

(assert (=> b!1416213 (=> (not res!952356) (not e!801565))))

(declare-datatypes ((List!33358 0))(
  ( (Nil!33355) (Cons!33354 (h!34641 (_ BitVec 64)) (t!48059 List!33358)) )
))
(declare-fun arrayNoDuplicates!0 (array!96664 (_ BitVec 32) List!33358) Bool)

(assert (=> b!1416213 (= res!952356 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33355))))

(declare-fun b!1416214 () Bool)

(declare-fun res!952360 () Bool)

(assert (=> b!1416214 (=> (not res!952360) (not e!801565))))

(assert (=> b!1416214 (= res!952360 (and (= (size!47210 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47210 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47210 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122060 res!952364) b!1416214))

(assert (= (and b!1416214 res!952360) b!1416207))

(assert (= (and b!1416207 res!952363) b!1416210))

(assert (= (and b!1416210 res!952358) b!1416212))

(assert (= (and b!1416212 res!952362) b!1416213))

(assert (= (and b!1416213 res!952356) b!1416205))

(assert (= (and b!1416205 (not res!952359)) b!1416209))

(assert (= (and b!1416209 (not res!952361)) b!1416211))

(assert (= (and b!1416211 (not res!952357)) b!1416206))

(assert (= (and b!1416206 (not res!952365)) b!1416208))

(declare-fun m!1306909 () Bool)

(assert (=> b!1416209 m!1306909))

(assert (=> b!1416209 m!1306909))

(declare-fun m!1306911 () Bool)

(assert (=> b!1416209 m!1306911))

(declare-fun m!1306913 () Bool)

(assert (=> b!1416209 m!1306913))

(declare-fun m!1306915 () Bool)

(assert (=> b!1416209 m!1306915))

(declare-fun m!1306917 () Bool)

(assert (=> b!1416208 m!1306917))

(declare-fun m!1306919 () Bool)

(assert (=> b!1416213 m!1306919))

(declare-fun m!1306921 () Bool)

(assert (=> b!1416212 m!1306921))

(declare-fun m!1306923 () Bool)

(assert (=> b!1416205 m!1306923))

(declare-fun m!1306925 () Bool)

(assert (=> b!1416205 m!1306925))

(assert (=> b!1416205 m!1306923))

(declare-fun m!1306927 () Bool)

(assert (=> b!1416205 m!1306927))

(assert (=> b!1416205 m!1306923))

(declare-fun m!1306929 () Bool)

(assert (=> b!1416205 m!1306929))

(declare-fun m!1306931 () Bool)

(assert (=> b!1416205 m!1306931))

(assert (=> b!1416205 m!1306923))

(declare-fun m!1306933 () Bool)

(assert (=> b!1416205 m!1306933))

(declare-fun m!1306935 () Bool)

(assert (=> b!1416207 m!1306935))

(assert (=> b!1416207 m!1306935))

(declare-fun m!1306937 () Bool)

(assert (=> b!1416207 m!1306937))

(declare-fun m!1306939 () Bool)

(assert (=> start!122060 m!1306939))

(declare-fun m!1306941 () Bool)

(assert (=> start!122060 m!1306941))

(declare-fun m!1306943 () Bool)

(assert (=> b!1416211 m!1306943))

(assert (=> b!1416211 m!1306923))

(assert (=> b!1416211 m!1306923))

(declare-fun m!1306945 () Bool)

(assert (=> b!1416211 m!1306945))

(declare-fun m!1306947 () Bool)

(assert (=> b!1416211 m!1306947))

(declare-fun m!1306949 () Bool)

(assert (=> b!1416211 m!1306949))

(assert (=> b!1416211 m!1306913))

(assert (=> b!1416210 m!1306923))

(assert (=> b!1416210 m!1306923))

(declare-fun m!1306951 () Bool)

(assert (=> b!1416210 m!1306951))

(declare-fun m!1306953 () Bool)

(assert (=> b!1416206 m!1306953))

(push 1)

