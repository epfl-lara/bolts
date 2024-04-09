; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121246 () Bool)

(assert start!121246)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96318 0))(
  ( (array!96319 (arr!46498 (Array (_ BitVec 32) (_ BitVec 64))) (size!47049 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96318)

(declare-fun b!1409232 () Bool)

(declare-fun e!797517 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10831 0))(
  ( (MissingZero!10831 (index!45700 (_ BitVec 32))) (Found!10831 (index!45701 (_ BitVec 32))) (Intermediate!10831 (undefined!11643 Bool) (index!45702 (_ BitVec 32)) (x!127299 (_ BitVec 32))) (Undefined!10831) (MissingVacant!10831 (index!45703 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96318 (_ BitVec 32)) SeekEntryResult!10831)

(assert (=> b!1409232 (= e!797517 (= (seekEntryOrOpen!0 (select (arr!46498 a!2901) j!112) a!2901 mask!2840) (Found!10831 j!112)))))

(declare-fun b!1409233 () Bool)

(declare-fun res!947070 () Bool)

(declare-fun e!797519 () Bool)

(assert (=> b!1409233 (=> (not res!947070) (not e!797519))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1409233 (= res!947070 (and (= (size!47049 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47049 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47049 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!947066 () Bool)

(assert (=> start!121246 (=> (not res!947066) (not e!797519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121246 (= res!947066 (validMask!0 mask!2840))))

(assert (=> start!121246 e!797519))

(assert (=> start!121246 true))

(declare-fun array_inv!35443 (array!96318) Bool)

(assert (=> start!121246 (array_inv!35443 a!2901)))

(declare-fun b!1409234 () Bool)

(declare-fun e!797516 () Bool)

(assert (=> b!1409234 (= e!797516 true)))

(declare-fun lt!620617 () SeekEntryResult!10831)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96318 (_ BitVec 32)) SeekEntryResult!10831)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409234 (= lt!620617 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46498 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46498 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96319 (store (arr!46498 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47049 a!2901)) mask!2840))))

(declare-fun b!1409235 () Bool)

(declare-fun res!947064 () Bool)

(assert (=> b!1409235 (=> (not res!947064) (not e!797519))))

(declare-datatypes ((List!33197 0))(
  ( (Nil!33194) (Cons!33193 (h!34456 (_ BitVec 64)) (t!47898 List!33197)) )
))
(declare-fun arrayNoDuplicates!0 (array!96318 (_ BitVec 32) List!33197) Bool)

(assert (=> b!1409235 (= res!947064 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33194))))

(declare-fun b!1409236 () Bool)

(assert (=> b!1409236 (= e!797519 (not e!797516))))

(declare-fun res!947067 () Bool)

(assert (=> b!1409236 (=> res!947067 e!797516)))

(declare-fun lt!620616 () SeekEntryResult!10831)

(assert (=> b!1409236 (= res!947067 (or (not (is-Intermediate!10831 lt!620616)) (undefined!11643 lt!620616)))))

(assert (=> b!1409236 e!797517))

(declare-fun res!947068 () Bool)

(assert (=> b!1409236 (=> (not res!947068) (not e!797517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96318 (_ BitVec 32)) Bool)

(assert (=> b!1409236 (= res!947068 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47586 0))(
  ( (Unit!47587) )
))
(declare-fun lt!620615 () Unit!47586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47586)

(assert (=> b!1409236 (= lt!620615 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409236 (= lt!620616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46498 a!2901) j!112) mask!2840) (select (arr!46498 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409237 () Bool)

(declare-fun res!947069 () Bool)

(assert (=> b!1409237 (=> (not res!947069) (not e!797519))))

(assert (=> b!1409237 (= res!947069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409238 () Bool)

(declare-fun res!947063 () Bool)

(assert (=> b!1409238 (=> (not res!947063) (not e!797519))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409238 (= res!947063 (validKeyInArray!0 (select (arr!46498 a!2901) j!112)))))

(declare-fun b!1409239 () Bool)

(declare-fun res!947065 () Bool)

(assert (=> b!1409239 (=> (not res!947065) (not e!797519))))

(assert (=> b!1409239 (= res!947065 (validKeyInArray!0 (select (arr!46498 a!2901) i!1037)))))

(assert (= (and start!121246 res!947066) b!1409233))

(assert (= (and b!1409233 res!947070) b!1409239))

(assert (= (and b!1409239 res!947065) b!1409238))

(assert (= (and b!1409238 res!947063) b!1409237))

(assert (= (and b!1409237 res!947069) b!1409235))

(assert (= (and b!1409235 res!947064) b!1409236))

(assert (= (and b!1409236 res!947068) b!1409232))

(assert (= (and b!1409236 (not res!947067)) b!1409234))

(declare-fun m!1298957 () Bool)

(assert (=> b!1409239 m!1298957))

(assert (=> b!1409239 m!1298957))

(declare-fun m!1298959 () Bool)

(assert (=> b!1409239 m!1298959))

(declare-fun m!1298961 () Bool)

(assert (=> start!121246 m!1298961))

(declare-fun m!1298963 () Bool)

(assert (=> start!121246 m!1298963))

(declare-fun m!1298965 () Bool)

(assert (=> b!1409236 m!1298965))

(declare-fun m!1298967 () Bool)

(assert (=> b!1409236 m!1298967))

(assert (=> b!1409236 m!1298965))

(declare-fun m!1298969 () Bool)

(assert (=> b!1409236 m!1298969))

(assert (=> b!1409236 m!1298967))

(assert (=> b!1409236 m!1298965))

(declare-fun m!1298971 () Bool)

(assert (=> b!1409236 m!1298971))

(declare-fun m!1298973 () Bool)

(assert (=> b!1409236 m!1298973))

(assert (=> b!1409238 m!1298965))

(assert (=> b!1409238 m!1298965))

(declare-fun m!1298975 () Bool)

(assert (=> b!1409238 m!1298975))

(assert (=> b!1409232 m!1298965))

(assert (=> b!1409232 m!1298965))

(declare-fun m!1298977 () Bool)

(assert (=> b!1409232 m!1298977))

(declare-fun m!1298979 () Bool)

(assert (=> b!1409234 m!1298979))

(declare-fun m!1298981 () Bool)

(assert (=> b!1409234 m!1298981))

(assert (=> b!1409234 m!1298981))

(declare-fun m!1298983 () Bool)

(assert (=> b!1409234 m!1298983))

(assert (=> b!1409234 m!1298983))

(assert (=> b!1409234 m!1298981))

(declare-fun m!1298985 () Bool)

(assert (=> b!1409234 m!1298985))

(declare-fun m!1298987 () Bool)

(assert (=> b!1409235 m!1298987))

(declare-fun m!1298989 () Bool)

(assert (=> b!1409237 m!1298989))

(push 1)

(assert (not b!1409232))

(assert (not b!1409235))

(assert (not start!121246))

(assert (not b!1409236))

(assert (not b!1409238))

(assert (not b!1409237))

(assert (not b!1409234))

(assert (not b!1409239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

