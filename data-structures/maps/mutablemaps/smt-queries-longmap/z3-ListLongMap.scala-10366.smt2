; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122052 () Bool)

(assert start!122052)

(declare-fun b!1416085 () Bool)

(declare-fun e!801505 () Bool)

(declare-fun e!801509 () Bool)

(assert (=> b!1416085 (= e!801505 e!801509)))

(declare-fun res!952236 () Bool)

(assert (=> b!1416085 (=> res!952236 e!801509)))

(declare-datatypes ((SeekEntryResult!10988 0))(
  ( (MissingZero!10988 (index!46343 (_ BitVec 32))) (Found!10988 (index!46344 (_ BitVec 32))) (Intermediate!10988 (undefined!11800 Bool) (index!46345 (_ BitVec 32)) (x!127950 (_ BitVec 32))) (Undefined!10988) (MissingVacant!10988 (index!46346 (_ BitVec 32))) )
))
(declare-fun lt!624670 () SeekEntryResult!10988)

(declare-fun lt!624665 () SeekEntryResult!10988)

(get-info :version)

(assert (=> b!1416085 (= res!952236 (or (= lt!624670 lt!624665) (not ((_ is Intermediate!10988) lt!624665))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96656 0))(
  ( (array!96657 (arr!46655 (Array (_ BitVec 32) (_ BitVec 64))) (size!47206 (_ BitVec 32))) )
))
(declare-fun lt!624668 () array!96656)

(declare-fun lt!624661 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96656 (_ BitVec 32)) SeekEntryResult!10988)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416085 (= lt!624665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624661 mask!2840) lt!624661 lt!624668 mask!2840))))

(declare-fun a!2901 () array!96656)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416085 (= lt!624661 (select (store (arr!46655 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416085 (= lt!624668 (array!96657 (store (arr!46655 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47206 a!2901)))))

(declare-fun b!1416086 () Bool)

(declare-fun res!952240 () Bool)

(declare-fun e!801508 () Bool)

(assert (=> b!1416086 (=> (not res!952240) (not e!801508))))

(declare-datatypes ((List!33354 0))(
  ( (Nil!33351) (Cons!33350 (h!34637 (_ BitVec 64)) (t!48055 List!33354)) )
))
(declare-fun arrayNoDuplicates!0 (array!96656 (_ BitVec 32) List!33354) Bool)

(assert (=> b!1416086 (= res!952240 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33351))))

(declare-fun b!1416087 () Bool)

(declare-fun e!801507 () Bool)

(assert (=> b!1416087 (= e!801507 true)))

(declare-fun lt!624666 () SeekEntryResult!10988)

(declare-fun lt!624662 () SeekEntryResult!10988)

(assert (=> b!1416087 (= lt!624666 lt!624662)))

(declare-datatypes ((Unit!47900 0))(
  ( (Unit!47901) )
))
(declare-fun lt!624663 () Unit!47900)

(declare-fun lt!624664 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47900)

(assert (=> b!1416087 (= lt!624663 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624664 (x!127950 lt!624670) (index!46345 lt!624670) (x!127950 lt!624665) (index!46345 lt!624665) mask!2840))))

(declare-fun b!1416088 () Bool)

(assert (=> b!1416088 (= e!801508 (not e!801505))))

(declare-fun res!952238 () Bool)

(assert (=> b!1416088 (=> res!952238 e!801505)))

(assert (=> b!1416088 (= res!952238 (or (not ((_ is Intermediate!10988) lt!624670)) (undefined!11800 lt!624670)))))

(assert (=> b!1416088 (= lt!624666 (Found!10988 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96656 (_ BitVec 32)) SeekEntryResult!10988)

(assert (=> b!1416088 (= lt!624666 (seekEntryOrOpen!0 (select (arr!46655 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96656 (_ BitVec 32)) Bool)

(assert (=> b!1416088 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624667 () Unit!47900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47900)

(assert (=> b!1416088 (= lt!624667 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416088 (= lt!624670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624664 (select (arr!46655 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416088 (= lt!624664 (toIndex!0 (select (arr!46655 a!2901) j!112) mask!2840))))

(declare-fun b!1416089 () Bool)

(declare-fun res!952244 () Bool)

(assert (=> b!1416089 (=> (not res!952244) (not e!801508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416089 (= res!952244 (validKeyInArray!0 (select (arr!46655 a!2901) i!1037)))))

(declare-fun b!1416090 () Bool)

(assert (=> b!1416090 (= e!801509 e!801507)))

(declare-fun res!952245 () Bool)

(assert (=> b!1416090 (=> res!952245 e!801507)))

(assert (=> b!1416090 (= res!952245 (or (bvslt (x!127950 lt!624670) #b00000000000000000000000000000000) (bvsgt (x!127950 lt!624670) #b01111111111111111111111111111110) (bvslt (x!127950 lt!624665) #b00000000000000000000000000000000) (bvsgt (x!127950 lt!624665) #b01111111111111111111111111111110) (bvslt lt!624664 #b00000000000000000000000000000000) (bvsge lt!624664 (size!47206 a!2901)) (bvslt (index!46345 lt!624670) #b00000000000000000000000000000000) (bvsge (index!46345 lt!624670) (size!47206 a!2901)) (bvslt (index!46345 lt!624665) #b00000000000000000000000000000000) (bvsge (index!46345 lt!624665) (size!47206 a!2901)) (not (= lt!624670 (Intermediate!10988 false (index!46345 lt!624670) (x!127950 lt!624670)))) (not (= lt!624665 (Intermediate!10988 false (index!46345 lt!624665) (x!127950 lt!624665))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96656 (_ BitVec 32)) SeekEntryResult!10988)

(assert (=> b!1416090 (= lt!624662 (seekKeyOrZeroReturnVacant!0 (x!127950 lt!624665) (index!46345 lt!624665) (index!46345 lt!624665) (select (arr!46655 a!2901) j!112) lt!624668 mask!2840))))

(assert (=> b!1416090 (= lt!624662 (seekEntryOrOpen!0 lt!624661 lt!624668 mask!2840))))

(assert (=> b!1416090 (and (not (undefined!11800 lt!624665)) (= (index!46345 lt!624665) i!1037) (bvslt (x!127950 lt!624665) (x!127950 lt!624670)) (= (select (store (arr!46655 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46345 lt!624665)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624669 () Unit!47900)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47900)

(assert (=> b!1416090 (= lt!624669 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624664 (x!127950 lt!624670) (index!46345 lt!624670) (x!127950 lt!624665) (index!46345 lt!624665) (undefined!11800 lt!624665) mask!2840))))

(declare-fun res!952243 () Bool)

(assert (=> start!122052 (=> (not res!952243) (not e!801508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122052 (= res!952243 (validMask!0 mask!2840))))

(assert (=> start!122052 e!801508))

(assert (=> start!122052 true))

(declare-fun array_inv!35600 (array!96656) Bool)

(assert (=> start!122052 (array_inv!35600 a!2901)))

(declare-fun b!1416091 () Bool)

(declare-fun res!952241 () Bool)

(assert (=> b!1416091 (=> res!952241 e!801507)))

(assert (=> b!1416091 (= res!952241 (not (= lt!624665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624664 lt!624661 lt!624668 mask!2840))))))

(declare-fun b!1416092 () Bool)

(declare-fun res!952239 () Bool)

(assert (=> b!1416092 (=> (not res!952239) (not e!801508))))

(assert (=> b!1416092 (= res!952239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416093 () Bool)

(declare-fun res!952242 () Bool)

(assert (=> b!1416093 (=> (not res!952242) (not e!801508))))

(assert (=> b!1416093 (= res!952242 (validKeyInArray!0 (select (arr!46655 a!2901) j!112)))))

(declare-fun b!1416094 () Bool)

(declare-fun res!952237 () Bool)

(assert (=> b!1416094 (=> (not res!952237) (not e!801508))))

(assert (=> b!1416094 (= res!952237 (and (= (size!47206 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47206 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47206 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122052 res!952243) b!1416094))

(assert (= (and b!1416094 res!952237) b!1416089))

(assert (= (and b!1416089 res!952244) b!1416093))

(assert (= (and b!1416093 res!952242) b!1416092))

(assert (= (and b!1416092 res!952239) b!1416086))

(assert (= (and b!1416086 res!952240) b!1416088))

(assert (= (and b!1416088 (not res!952238)) b!1416085))

(assert (= (and b!1416085 (not res!952236)) b!1416090))

(assert (= (and b!1416090 (not res!952245)) b!1416091))

(assert (= (and b!1416091 (not res!952241)) b!1416087))

(declare-fun m!1306725 () Bool)

(assert (=> start!122052 m!1306725))

(declare-fun m!1306727 () Bool)

(assert (=> start!122052 m!1306727))

(declare-fun m!1306729 () Bool)

(assert (=> b!1416087 m!1306729))

(declare-fun m!1306731 () Bool)

(assert (=> b!1416092 m!1306731))

(declare-fun m!1306733 () Bool)

(assert (=> b!1416091 m!1306733))

(declare-fun m!1306735 () Bool)

(assert (=> b!1416085 m!1306735))

(assert (=> b!1416085 m!1306735))

(declare-fun m!1306737 () Bool)

(assert (=> b!1416085 m!1306737))

(declare-fun m!1306739 () Bool)

(assert (=> b!1416085 m!1306739))

(declare-fun m!1306741 () Bool)

(assert (=> b!1416085 m!1306741))

(declare-fun m!1306743 () Bool)

(assert (=> b!1416086 m!1306743))

(declare-fun m!1306745 () Bool)

(assert (=> b!1416088 m!1306745))

(declare-fun m!1306747 () Bool)

(assert (=> b!1416088 m!1306747))

(assert (=> b!1416088 m!1306745))

(assert (=> b!1416088 m!1306745))

(declare-fun m!1306749 () Bool)

(assert (=> b!1416088 m!1306749))

(declare-fun m!1306751 () Bool)

(assert (=> b!1416088 m!1306751))

(assert (=> b!1416088 m!1306745))

(declare-fun m!1306753 () Bool)

(assert (=> b!1416088 m!1306753))

(declare-fun m!1306755 () Bool)

(assert (=> b!1416088 m!1306755))

(assert (=> b!1416093 m!1306745))

(assert (=> b!1416093 m!1306745))

(declare-fun m!1306757 () Bool)

(assert (=> b!1416093 m!1306757))

(declare-fun m!1306759 () Bool)

(assert (=> b!1416090 m!1306759))

(assert (=> b!1416090 m!1306745))

(assert (=> b!1416090 m!1306745))

(declare-fun m!1306761 () Bool)

(assert (=> b!1416090 m!1306761))

(declare-fun m!1306763 () Bool)

(assert (=> b!1416090 m!1306763))

(declare-fun m!1306765 () Bool)

(assert (=> b!1416090 m!1306765))

(assert (=> b!1416090 m!1306739))

(declare-fun m!1306767 () Bool)

(assert (=> b!1416089 m!1306767))

(assert (=> b!1416089 m!1306767))

(declare-fun m!1306769 () Bool)

(assert (=> b!1416089 m!1306769))

(check-sat (not b!1416088) (not b!1416090) (not start!122052) (not b!1416089) (not b!1416093) (not b!1416092) (not b!1416087) (not b!1416086) (not b!1416085) (not b!1416091))
(check-sat)
