; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120878 () Bool)

(assert start!120878)

(declare-fun b!1405914 () Bool)

(declare-fun res!944247 () Bool)

(declare-fun e!795806 () Bool)

(assert (=> b!1405914 (=> (not res!944247) (not e!795806))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96103 0))(
  ( (array!96104 (arr!46395 (Array (_ BitVec 32) (_ BitVec 64))) (size!46946 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96103)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1405914 (= res!944247 (and (= (size!46946 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46946 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46946 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405915 () Bool)

(declare-fun res!944245 () Bool)

(assert (=> b!1405915 (=> (not res!944245) (not e!795806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96103 (_ BitVec 32)) Bool)

(assert (=> b!1405915 (= res!944245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405917 () Bool)

(declare-fun res!944246 () Bool)

(assert (=> b!1405917 (=> (not res!944246) (not e!795806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405917 (= res!944246 (validKeyInArray!0 (select (arr!46395 a!2901) j!112)))))

(declare-fun b!1405916 () Bool)

(declare-fun e!795804 () Bool)

(declare-datatypes ((SeekEntryResult!10728 0))(
  ( (MissingZero!10728 (index!45288 (_ BitVec 32))) (Found!10728 (index!45289 (_ BitVec 32))) (Intermediate!10728 (undefined!11540 Bool) (index!45290 (_ BitVec 32)) (x!126898 (_ BitVec 32))) (Undefined!10728) (MissingVacant!10728 (index!45291 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96103 (_ BitVec 32)) SeekEntryResult!10728)

(assert (=> b!1405916 (= e!795804 (= (seekEntryOrOpen!0 (select (arr!46395 a!2901) j!112) a!2901 mask!2840) (Found!10728 j!112)))))

(declare-fun res!944240 () Bool)

(assert (=> start!120878 (=> (not res!944240) (not e!795806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120878 (= res!944240 (validMask!0 mask!2840))))

(assert (=> start!120878 e!795806))

(assert (=> start!120878 true))

(declare-fun array_inv!35340 (array!96103) Bool)

(assert (=> start!120878 (array_inv!35340 a!2901)))

(declare-fun b!1405918 () Bool)

(declare-fun e!795803 () Bool)

(assert (=> b!1405918 (= e!795806 (not e!795803))))

(declare-fun res!944241 () Bool)

(assert (=> b!1405918 (=> res!944241 e!795803)))

(declare-fun lt!619159 () SeekEntryResult!10728)

(assert (=> b!1405918 (= res!944241 (or (not (is-Intermediate!10728 lt!619159)) (undefined!11540 lt!619159)))))

(assert (=> b!1405918 e!795804))

(declare-fun res!944243 () Bool)

(assert (=> b!1405918 (=> (not res!944243) (not e!795804))))

(assert (=> b!1405918 (= res!944243 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47380 0))(
  ( (Unit!47381) )
))
(declare-fun lt!619157 () Unit!47380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47380)

(assert (=> b!1405918 (= lt!619157 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96103 (_ BitVec 32)) SeekEntryResult!10728)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405918 (= lt!619159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46395 a!2901) j!112) mask!2840) (select (arr!46395 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405919 () Bool)

(declare-fun res!944244 () Bool)

(assert (=> b!1405919 (=> (not res!944244) (not e!795806))))

(declare-datatypes ((List!33094 0))(
  ( (Nil!33091) (Cons!33090 (h!34344 (_ BitVec 64)) (t!47795 List!33094)) )
))
(declare-fun arrayNoDuplicates!0 (array!96103 (_ BitVec 32) List!33094) Bool)

(assert (=> b!1405919 (= res!944244 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33091))))

(declare-fun b!1405920 () Bool)

(assert (=> b!1405920 (= e!795803 true)))

(declare-fun lt!619158 () SeekEntryResult!10728)

(assert (=> b!1405920 (= lt!619158 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46395 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46395 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96104 (store (arr!46395 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46946 a!2901)) mask!2840))))

(declare-fun b!1405921 () Bool)

(declare-fun res!944242 () Bool)

(assert (=> b!1405921 (=> (not res!944242) (not e!795806))))

(assert (=> b!1405921 (= res!944242 (validKeyInArray!0 (select (arr!46395 a!2901) i!1037)))))

(assert (= (and start!120878 res!944240) b!1405914))

(assert (= (and b!1405914 res!944247) b!1405921))

(assert (= (and b!1405921 res!944242) b!1405917))

(assert (= (and b!1405917 res!944246) b!1405915))

(assert (= (and b!1405915 res!944245) b!1405919))

(assert (= (and b!1405919 res!944244) b!1405918))

(assert (= (and b!1405918 res!944243) b!1405916))

(assert (= (and b!1405918 (not res!944241)) b!1405920))

(declare-fun m!1294933 () Bool)

(assert (=> b!1405919 m!1294933))

(declare-fun m!1294935 () Bool)

(assert (=> b!1405917 m!1294935))

(assert (=> b!1405917 m!1294935))

(declare-fun m!1294937 () Bool)

(assert (=> b!1405917 m!1294937))

(declare-fun m!1294939 () Bool)

(assert (=> b!1405920 m!1294939))

(declare-fun m!1294941 () Bool)

(assert (=> b!1405920 m!1294941))

(assert (=> b!1405920 m!1294941))

(declare-fun m!1294943 () Bool)

(assert (=> b!1405920 m!1294943))

(assert (=> b!1405920 m!1294943))

(assert (=> b!1405920 m!1294941))

(declare-fun m!1294945 () Bool)

(assert (=> b!1405920 m!1294945))

(assert (=> b!1405918 m!1294935))

(declare-fun m!1294947 () Bool)

(assert (=> b!1405918 m!1294947))

(assert (=> b!1405918 m!1294935))

(declare-fun m!1294949 () Bool)

(assert (=> b!1405918 m!1294949))

(assert (=> b!1405918 m!1294947))

(assert (=> b!1405918 m!1294935))

(declare-fun m!1294951 () Bool)

(assert (=> b!1405918 m!1294951))

(declare-fun m!1294953 () Bool)

(assert (=> b!1405918 m!1294953))

(declare-fun m!1294955 () Bool)

(assert (=> b!1405915 m!1294955))

(declare-fun m!1294957 () Bool)

(assert (=> start!120878 m!1294957))

(declare-fun m!1294959 () Bool)

(assert (=> start!120878 m!1294959))

(declare-fun m!1294961 () Bool)

(assert (=> b!1405921 m!1294961))

(assert (=> b!1405921 m!1294961))

(declare-fun m!1294963 () Bool)

(assert (=> b!1405921 m!1294963))

(assert (=> b!1405916 m!1294935))

(assert (=> b!1405916 m!1294935))

(declare-fun m!1294965 () Bool)

(assert (=> b!1405916 m!1294965))

(push 1)

(assert (not start!120878))

(assert (not b!1405921))

(assert (not b!1405916))

(assert (not b!1405920))

(assert (not b!1405919))

(assert (not b!1405917))

(assert (not b!1405918))

(assert (not b!1405915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

