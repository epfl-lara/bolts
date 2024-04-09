; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120488 () Bool)

(assert start!120488)

(declare-fun b!1402297 () Bool)

(declare-fun e!794095 () Bool)

(declare-fun e!794096 () Bool)

(assert (=> b!1402297 (= e!794095 e!794096)))

(declare-fun res!940919 () Bool)

(assert (=> b!1402297 (=> res!940919 e!794096)))

(declare-datatypes ((array!95815 0))(
  ( (array!95816 (arr!46254 (Array (_ BitVec 32) (_ BitVec 64))) (size!46805 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95815)

(declare-fun lt!617607 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10593 0))(
  ( (MissingZero!10593 (index!44748 (_ BitVec 32))) (Found!10593 (index!44749 (_ BitVec 32))) (Intermediate!10593 (undefined!11405 Bool) (index!44750 (_ BitVec 32)) (x!126375 (_ BitVec 32))) (Undefined!10593) (MissingVacant!10593 (index!44751 (_ BitVec 32))) )
))
(declare-fun lt!617604 () SeekEntryResult!10593)

(declare-fun lt!617609 () SeekEntryResult!10593)

(assert (=> b!1402297 (= res!940919 (or (bvslt (x!126375 lt!617609) #b00000000000000000000000000000000) (bvsgt (x!126375 lt!617609) #b01111111111111111111111111111110) (bvslt (x!126375 lt!617604) #b00000000000000000000000000000000) (bvsgt (x!126375 lt!617604) #b01111111111111111111111111111110) (bvslt lt!617607 #b00000000000000000000000000000000) (bvsge lt!617607 (size!46805 a!2901)) (bvslt (index!44750 lt!617609) #b00000000000000000000000000000000) (bvsge (index!44750 lt!617609) (size!46805 a!2901)) (bvslt (index!44750 lt!617604) #b00000000000000000000000000000000) (bvsge (index!44750 lt!617604) (size!46805 a!2901)) (not (= lt!617609 (Intermediate!10593 false (index!44750 lt!617609) (x!126375 lt!617609)))) (not (= lt!617604 (Intermediate!10593 false (index!44750 lt!617604) (x!126375 lt!617604))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617602 () SeekEntryResult!10593)

(declare-fun lt!617605 () array!95815)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95815 (_ BitVec 32)) SeekEntryResult!10593)

(assert (=> b!1402297 (= lt!617602 (seekKeyOrZeroReturnVacant!0 (x!126375 lt!617604) (index!44750 lt!617604) (index!44750 lt!617604) (select (arr!46254 a!2901) j!112) lt!617605 mask!2840))))

(declare-fun lt!617611 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95815 (_ BitVec 32)) SeekEntryResult!10593)

(assert (=> b!1402297 (= lt!617602 (seekEntryOrOpen!0 lt!617611 lt!617605 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402297 (and (not (undefined!11405 lt!617604)) (= (index!44750 lt!617604) i!1037) (bvslt (x!126375 lt!617604) (x!126375 lt!617609)) (= (select (store (arr!46254 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44750 lt!617604)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47140 0))(
  ( (Unit!47141) )
))
(declare-fun lt!617606 () Unit!47140)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47140)

(assert (=> b!1402297 (= lt!617606 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617607 (x!126375 lt!617609) (index!44750 lt!617609) (x!126375 lt!617604) (index!44750 lt!617604) (undefined!11405 lt!617604) mask!2840))))

(declare-fun res!940917 () Bool)

(declare-fun e!794094 () Bool)

(assert (=> start!120488 (=> (not res!940917) (not e!794094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120488 (= res!940917 (validMask!0 mask!2840))))

(assert (=> start!120488 e!794094))

(assert (=> start!120488 true))

(declare-fun array_inv!35199 (array!95815) Bool)

(assert (=> start!120488 (array_inv!35199 a!2901)))

(declare-fun b!1402298 () Bool)

(assert (=> b!1402298 (= e!794096 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!617608 () SeekEntryResult!10593)

(assert (=> b!1402298 (= lt!617608 lt!617602)))

(declare-fun lt!617610 () Unit!47140)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47140)

(assert (=> b!1402298 (= lt!617610 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617607 (x!126375 lt!617609) (index!44750 lt!617609) (x!126375 lt!617604) (index!44750 lt!617604) mask!2840))))

(declare-fun b!1402299 () Bool)

(declare-fun res!940926 () Bool)

(assert (=> b!1402299 (=> (not res!940926) (not e!794094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95815 (_ BitVec 32)) Bool)

(assert (=> b!1402299 (= res!940926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402300 () Bool)

(declare-fun res!940918 () Bool)

(assert (=> b!1402300 (=> (not res!940918) (not e!794094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402300 (= res!940918 (validKeyInArray!0 (select (arr!46254 a!2901) j!112)))))

(declare-fun b!1402301 () Bool)

(declare-fun res!940925 () Bool)

(assert (=> b!1402301 (=> res!940925 e!794096)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95815 (_ BitVec 32)) SeekEntryResult!10593)

(assert (=> b!1402301 (= res!940925 (not (= lt!617604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617607 lt!617611 lt!617605 mask!2840))))))

(declare-fun b!1402302 () Bool)

(declare-fun res!940924 () Bool)

(assert (=> b!1402302 (=> (not res!940924) (not e!794094))))

(assert (=> b!1402302 (= res!940924 (and (= (size!46805 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46805 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46805 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402303 () Bool)

(declare-fun res!940920 () Bool)

(assert (=> b!1402303 (=> (not res!940920) (not e!794094))))

(assert (=> b!1402303 (= res!940920 (validKeyInArray!0 (select (arr!46254 a!2901) i!1037)))))

(declare-fun b!1402304 () Bool)

(declare-fun res!940921 () Bool)

(assert (=> b!1402304 (=> (not res!940921) (not e!794094))))

(declare-datatypes ((List!32953 0))(
  ( (Nil!32950) (Cons!32949 (h!34197 (_ BitVec 64)) (t!47654 List!32953)) )
))
(declare-fun arrayNoDuplicates!0 (array!95815 (_ BitVec 32) List!32953) Bool)

(assert (=> b!1402304 (= res!940921 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32950))))

(declare-fun b!1402305 () Bool)

(declare-fun e!794093 () Bool)

(assert (=> b!1402305 (= e!794094 (not e!794093))))

(declare-fun res!940923 () Bool)

(assert (=> b!1402305 (=> res!940923 e!794093)))

(assert (=> b!1402305 (= res!940923 (or (not (is-Intermediate!10593 lt!617609)) (undefined!11405 lt!617609)))))

(assert (=> b!1402305 (= lt!617608 (Found!10593 j!112))))

(assert (=> b!1402305 (= lt!617608 (seekEntryOrOpen!0 (select (arr!46254 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402305 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617603 () Unit!47140)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95815 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47140)

(assert (=> b!1402305 (= lt!617603 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402305 (= lt!617609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617607 (select (arr!46254 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402305 (= lt!617607 (toIndex!0 (select (arr!46254 a!2901) j!112) mask!2840))))

(declare-fun b!1402306 () Bool)

(assert (=> b!1402306 (= e!794093 e!794095)))

(declare-fun res!940922 () Bool)

(assert (=> b!1402306 (=> res!940922 e!794095)))

(assert (=> b!1402306 (= res!940922 (or (= lt!617609 lt!617604) (not (is-Intermediate!10593 lt!617604))))))

(assert (=> b!1402306 (= lt!617604 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617611 mask!2840) lt!617611 lt!617605 mask!2840))))

(assert (=> b!1402306 (= lt!617611 (select (store (arr!46254 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402306 (= lt!617605 (array!95816 (store (arr!46254 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46805 a!2901)))))

(assert (= (and start!120488 res!940917) b!1402302))

(assert (= (and b!1402302 res!940924) b!1402303))

(assert (= (and b!1402303 res!940920) b!1402300))

(assert (= (and b!1402300 res!940918) b!1402299))

(assert (= (and b!1402299 res!940926) b!1402304))

(assert (= (and b!1402304 res!940921) b!1402305))

(assert (= (and b!1402305 (not res!940923)) b!1402306))

(assert (= (and b!1402306 (not res!940922)) b!1402297))

(assert (= (and b!1402297 (not res!940919)) b!1402301))

(assert (= (and b!1402301 (not res!940925)) b!1402298))

(declare-fun m!1290487 () Bool)

(assert (=> start!120488 m!1290487))

(declare-fun m!1290489 () Bool)

(assert (=> start!120488 m!1290489))

(declare-fun m!1290491 () Bool)

(assert (=> b!1402297 m!1290491))

(declare-fun m!1290493 () Bool)

(assert (=> b!1402297 m!1290493))

(declare-fun m!1290495 () Bool)

(assert (=> b!1402297 m!1290495))

(declare-fun m!1290497 () Bool)

(assert (=> b!1402297 m!1290497))

(declare-fun m!1290499 () Bool)

(assert (=> b!1402297 m!1290499))

(declare-fun m!1290501 () Bool)

(assert (=> b!1402297 m!1290501))

(assert (=> b!1402297 m!1290495))

(declare-fun m!1290503 () Bool)

(assert (=> b!1402303 m!1290503))

(assert (=> b!1402303 m!1290503))

(declare-fun m!1290505 () Bool)

(assert (=> b!1402303 m!1290505))

(declare-fun m!1290507 () Bool)

(assert (=> b!1402299 m!1290507))

(assert (=> b!1402305 m!1290495))

(declare-fun m!1290509 () Bool)

(assert (=> b!1402305 m!1290509))

(assert (=> b!1402305 m!1290495))

(declare-fun m!1290511 () Bool)

(assert (=> b!1402305 m!1290511))

(assert (=> b!1402305 m!1290495))

(declare-fun m!1290513 () Bool)

(assert (=> b!1402305 m!1290513))

(assert (=> b!1402305 m!1290495))

(declare-fun m!1290515 () Bool)

(assert (=> b!1402305 m!1290515))

(declare-fun m!1290517 () Bool)

(assert (=> b!1402305 m!1290517))

(declare-fun m!1290519 () Bool)

(assert (=> b!1402304 m!1290519))

(assert (=> b!1402300 m!1290495))

(assert (=> b!1402300 m!1290495))

(declare-fun m!1290521 () Bool)

(assert (=> b!1402300 m!1290521))

(declare-fun m!1290523 () Bool)

(assert (=> b!1402298 m!1290523))

(declare-fun m!1290525 () Bool)

(assert (=> b!1402301 m!1290525))

(declare-fun m!1290527 () Bool)

(assert (=> b!1402306 m!1290527))

(assert (=> b!1402306 m!1290527))

(declare-fun m!1290529 () Bool)

(assert (=> b!1402306 m!1290529))

(assert (=> b!1402306 m!1290499))

(declare-fun m!1290531 () Bool)

(assert (=> b!1402306 m!1290531))

(push 1)

