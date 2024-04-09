; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122050 () Bool)

(assert start!122050)

(declare-fun b!1416055 () Bool)

(declare-fun res!952206 () Bool)

(declare-fun e!801490 () Bool)

(assert (=> b!1416055 (=> (not res!952206) (not e!801490))))

(declare-datatypes ((array!96654 0))(
  ( (array!96655 (arr!46654 (Array (_ BitVec 32) (_ BitVec 64))) (size!47205 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96654)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416055 (= res!952206 (validKeyInArray!0 (select (arr!46654 a!2901) j!112)))))

(declare-fun b!1416056 () Bool)

(declare-fun res!952210 () Bool)

(assert (=> b!1416056 (=> (not res!952210) (not e!801490))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416056 (= res!952210 (validKeyInArray!0 (select (arr!46654 a!2901) i!1037)))))

(declare-fun b!1416057 () Bool)

(declare-fun res!952215 () Bool)

(assert (=> b!1416057 (=> (not res!952215) (not e!801490))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96654 (_ BitVec 32)) Bool)

(assert (=> b!1416057 (= res!952215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416058 () Bool)

(declare-fun e!801492 () Bool)

(assert (=> b!1416058 (= e!801492 true)))

(declare-datatypes ((SeekEntryResult!10987 0))(
  ( (MissingZero!10987 (index!46339 (_ BitVec 32))) (Found!10987 (index!46340 (_ BitVec 32))) (Intermediate!10987 (undefined!11799 Bool) (index!46341 (_ BitVec 32)) (x!127949 (_ BitVec 32))) (Undefined!10987) (MissingVacant!10987 (index!46342 (_ BitVec 32))) )
))
(declare-fun lt!624635 () SeekEntryResult!10987)

(declare-fun lt!624633 () SeekEntryResult!10987)

(assert (=> b!1416058 (= lt!624635 lt!624633)))

(declare-datatypes ((Unit!47898 0))(
  ( (Unit!47899) )
))
(declare-fun lt!624631 () Unit!47898)

(declare-fun lt!624638 () SeekEntryResult!10987)

(declare-fun lt!624640 () SeekEntryResult!10987)

(declare-fun lt!624634 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47898)

(assert (=> b!1416058 (= lt!624631 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624634 (x!127949 lt!624640) (index!46341 lt!624640) (x!127949 lt!624638) (index!46341 lt!624638) mask!2840))))

(declare-fun b!1416059 () Bool)

(declare-fun res!952207 () Bool)

(assert (=> b!1416059 (=> (not res!952207) (not e!801490))))

(declare-datatypes ((List!33353 0))(
  ( (Nil!33350) (Cons!33349 (h!34636 (_ BitVec 64)) (t!48054 List!33353)) )
))
(declare-fun arrayNoDuplicates!0 (array!96654 (_ BitVec 32) List!33353) Bool)

(assert (=> b!1416059 (= res!952207 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33350))))

(declare-fun b!1416060 () Bool)

(declare-fun e!801494 () Bool)

(declare-fun e!801493 () Bool)

(assert (=> b!1416060 (= e!801494 e!801493)))

(declare-fun res!952208 () Bool)

(assert (=> b!1416060 (=> res!952208 e!801493)))

(assert (=> b!1416060 (= res!952208 (or (= lt!624640 lt!624638) (not (is-Intermediate!10987 lt!624638))))))

(declare-fun lt!624639 () (_ BitVec 64))

(declare-fun lt!624632 () array!96654)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96654 (_ BitVec 32)) SeekEntryResult!10987)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416060 (= lt!624638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624639 mask!2840) lt!624639 lt!624632 mask!2840))))

(assert (=> b!1416060 (= lt!624639 (select (store (arr!46654 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416060 (= lt!624632 (array!96655 (store (arr!46654 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47205 a!2901)))))

(declare-fun res!952211 () Bool)

(assert (=> start!122050 (=> (not res!952211) (not e!801490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122050 (= res!952211 (validMask!0 mask!2840))))

(assert (=> start!122050 e!801490))

(assert (=> start!122050 true))

(declare-fun array_inv!35599 (array!96654) Bool)

(assert (=> start!122050 (array_inv!35599 a!2901)))

(declare-fun b!1416061 () Bool)

(declare-fun res!952212 () Bool)

(assert (=> b!1416061 (=> (not res!952212) (not e!801490))))

(assert (=> b!1416061 (= res!952212 (and (= (size!47205 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47205 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47205 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416062 () Bool)

(assert (=> b!1416062 (= e!801493 e!801492)))

(declare-fun res!952214 () Bool)

(assert (=> b!1416062 (=> res!952214 e!801492)))

(assert (=> b!1416062 (= res!952214 (or (bvslt (x!127949 lt!624640) #b00000000000000000000000000000000) (bvsgt (x!127949 lt!624640) #b01111111111111111111111111111110) (bvslt (x!127949 lt!624638) #b00000000000000000000000000000000) (bvsgt (x!127949 lt!624638) #b01111111111111111111111111111110) (bvslt lt!624634 #b00000000000000000000000000000000) (bvsge lt!624634 (size!47205 a!2901)) (bvslt (index!46341 lt!624640) #b00000000000000000000000000000000) (bvsge (index!46341 lt!624640) (size!47205 a!2901)) (bvslt (index!46341 lt!624638) #b00000000000000000000000000000000) (bvsge (index!46341 lt!624638) (size!47205 a!2901)) (not (= lt!624640 (Intermediate!10987 false (index!46341 lt!624640) (x!127949 lt!624640)))) (not (= lt!624638 (Intermediate!10987 false (index!46341 lt!624638) (x!127949 lt!624638))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96654 (_ BitVec 32)) SeekEntryResult!10987)

(assert (=> b!1416062 (= lt!624633 (seekKeyOrZeroReturnVacant!0 (x!127949 lt!624638) (index!46341 lt!624638) (index!46341 lt!624638) (select (arr!46654 a!2901) j!112) lt!624632 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96654 (_ BitVec 32)) SeekEntryResult!10987)

(assert (=> b!1416062 (= lt!624633 (seekEntryOrOpen!0 lt!624639 lt!624632 mask!2840))))

(assert (=> b!1416062 (and (not (undefined!11799 lt!624638)) (= (index!46341 lt!624638) i!1037) (bvslt (x!127949 lt!624638) (x!127949 lt!624640)) (= (select (store (arr!46654 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46341 lt!624638)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624637 () Unit!47898)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47898)

(assert (=> b!1416062 (= lt!624637 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624634 (x!127949 lt!624640) (index!46341 lt!624640) (x!127949 lt!624638) (index!46341 lt!624638) (undefined!11799 lt!624638) mask!2840))))

(declare-fun b!1416063 () Bool)

(declare-fun res!952209 () Bool)

(assert (=> b!1416063 (=> res!952209 e!801492)))

(assert (=> b!1416063 (= res!952209 (not (= lt!624638 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624634 lt!624639 lt!624632 mask!2840))))))

(declare-fun b!1416064 () Bool)

(assert (=> b!1416064 (= e!801490 (not e!801494))))

(declare-fun res!952213 () Bool)

(assert (=> b!1416064 (=> res!952213 e!801494)))

(assert (=> b!1416064 (= res!952213 (or (not (is-Intermediate!10987 lt!624640)) (undefined!11799 lt!624640)))))

(assert (=> b!1416064 (= lt!624635 (Found!10987 j!112))))

(assert (=> b!1416064 (= lt!624635 (seekEntryOrOpen!0 (select (arr!46654 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416064 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624636 () Unit!47898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47898)

(assert (=> b!1416064 (= lt!624636 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416064 (= lt!624640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624634 (select (arr!46654 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416064 (= lt!624634 (toIndex!0 (select (arr!46654 a!2901) j!112) mask!2840))))

(assert (= (and start!122050 res!952211) b!1416061))

(assert (= (and b!1416061 res!952212) b!1416056))

(assert (= (and b!1416056 res!952210) b!1416055))

(assert (= (and b!1416055 res!952206) b!1416057))

(assert (= (and b!1416057 res!952215) b!1416059))

(assert (= (and b!1416059 res!952207) b!1416064))

(assert (= (and b!1416064 (not res!952213)) b!1416060))

(assert (= (and b!1416060 (not res!952208)) b!1416062))

(assert (= (and b!1416062 (not res!952214)) b!1416063))

(assert (= (and b!1416063 (not res!952209)) b!1416058))

(declare-fun m!1306679 () Bool)

(assert (=> b!1416058 m!1306679))

(declare-fun m!1306681 () Bool)

(assert (=> b!1416055 m!1306681))

(assert (=> b!1416055 m!1306681))

(declare-fun m!1306683 () Bool)

(assert (=> b!1416055 m!1306683))

(declare-fun m!1306685 () Bool)

(assert (=> b!1416063 m!1306685))

(declare-fun m!1306687 () Bool)

(assert (=> b!1416060 m!1306687))

(assert (=> b!1416060 m!1306687))

(declare-fun m!1306689 () Bool)

(assert (=> b!1416060 m!1306689))

(declare-fun m!1306691 () Bool)

(assert (=> b!1416060 m!1306691))

(declare-fun m!1306693 () Bool)

(assert (=> b!1416060 m!1306693))

(declare-fun m!1306695 () Bool)

(assert (=> b!1416057 m!1306695))

(declare-fun m!1306697 () Bool)

(assert (=> b!1416059 m!1306697))

(declare-fun m!1306699 () Bool)

(assert (=> b!1416056 m!1306699))

(assert (=> b!1416056 m!1306699))

(declare-fun m!1306701 () Bool)

(assert (=> b!1416056 m!1306701))

(assert (=> b!1416064 m!1306681))

(declare-fun m!1306703 () Bool)

(assert (=> b!1416064 m!1306703))

(assert (=> b!1416064 m!1306681))

(declare-fun m!1306705 () Bool)

(assert (=> b!1416064 m!1306705))

(assert (=> b!1416064 m!1306681))

(declare-fun m!1306707 () Bool)

(assert (=> b!1416064 m!1306707))

(assert (=> b!1416064 m!1306681))

(declare-fun m!1306709 () Bool)

(assert (=> b!1416064 m!1306709))

(declare-fun m!1306711 () Bool)

(assert (=> b!1416064 m!1306711))

(declare-fun m!1306713 () Bool)

(assert (=> b!1416062 m!1306713))

(assert (=> b!1416062 m!1306681))

(assert (=> b!1416062 m!1306681))

(declare-fun m!1306715 () Bool)

(assert (=> b!1416062 m!1306715))

(declare-fun m!1306717 () Bool)

(assert (=> b!1416062 m!1306717))

(declare-fun m!1306719 () Bool)

(assert (=> b!1416062 m!1306719))

(assert (=> b!1416062 m!1306691))

(declare-fun m!1306721 () Bool)

(assert (=> start!122050 m!1306721))

(declare-fun m!1306723 () Bool)

(assert (=> start!122050 m!1306723))

(push 1)

