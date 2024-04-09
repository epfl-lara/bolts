; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122038 () Bool)

(assert start!122038)

(declare-fun b!1415875 () Bool)

(declare-fun e!801401 () Bool)

(assert (=> b!1415875 (= e!801401 true)))

(declare-datatypes ((SeekEntryResult!10981 0))(
  ( (MissingZero!10981 (index!46315 (_ BitVec 32))) (Found!10981 (index!46316 (_ BitVec 32))) (Intermediate!10981 (undefined!11793 Bool) (index!46317 (_ BitVec 32)) (x!127927 (_ BitVec 32))) (Undefined!10981) (MissingVacant!10981 (index!46318 (_ BitVec 32))) )
))
(declare-fun lt!624451 () SeekEntryResult!10981)

(declare-fun lt!624458 () SeekEntryResult!10981)

(assert (=> b!1415875 (= lt!624451 lt!624458)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96642 0))(
  ( (array!96643 (arr!46648 (Array (_ BitVec 32) (_ BitVec 64))) (size!47199 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96642)

(declare-fun lt!624457 () SeekEntryResult!10981)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((Unit!47886 0))(
  ( (Unit!47887) )
))
(declare-fun lt!624459 () Unit!47886)

(declare-fun lt!624454 () (_ BitVec 32))

(declare-fun lt!624453 () SeekEntryResult!10981)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47886)

(assert (=> b!1415875 (= lt!624459 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624454 (x!127927 lt!624457) (index!46317 lt!624457) (x!127927 lt!624453) (index!46317 lt!624453) mask!2840))))

(declare-fun b!1415876 () Bool)

(declare-fun res!952033 () Bool)

(declare-fun e!801400 () Bool)

(assert (=> b!1415876 (=> (not res!952033) (not e!801400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415876 (= res!952033 (validKeyInArray!0 (select (arr!46648 a!2901) i!1037)))))

(declare-fun b!1415877 () Bool)

(declare-fun res!952026 () Bool)

(assert (=> b!1415877 (=> res!952026 e!801401)))

(declare-fun lt!624452 () array!96642)

(declare-fun lt!624460 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96642 (_ BitVec 32)) SeekEntryResult!10981)

(assert (=> b!1415877 (= res!952026 (not (= lt!624453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624454 lt!624460 lt!624452 mask!2840))))))

(declare-fun b!1415878 () Bool)

(declare-fun res!952035 () Bool)

(assert (=> b!1415878 (=> (not res!952035) (not e!801400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96642 (_ BitVec 32)) Bool)

(assert (=> b!1415878 (= res!952035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!952031 () Bool)

(assert (=> start!122038 (=> (not res!952031) (not e!801400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122038 (= res!952031 (validMask!0 mask!2840))))

(assert (=> start!122038 e!801400))

(assert (=> start!122038 true))

(declare-fun array_inv!35593 (array!96642) Bool)

(assert (=> start!122038 (array_inv!35593 a!2901)))

(declare-fun b!1415879 () Bool)

(declare-fun res!952029 () Bool)

(assert (=> b!1415879 (=> (not res!952029) (not e!801400))))

(assert (=> b!1415879 (= res!952029 (and (= (size!47199 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47199 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47199 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1415880 () Bool)

(declare-fun e!801404 () Bool)

(assert (=> b!1415880 (= e!801404 e!801401)))

(declare-fun res!952028 () Bool)

(assert (=> b!1415880 (=> res!952028 e!801401)))

(assert (=> b!1415880 (= res!952028 (or (bvslt (x!127927 lt!624457) #b00000000000000000000000000000000) (bvsgt (x!127927 lt!624457) #b01111111111111111111111111111110) (bvslt (x!127927 lt!624453) #b00000000000000000000000000000000) (bvsgt (x!127927 lt!624453) #b01111111111111111111111111111110) (bvslt lt!624454 #b00000000000000000000000000000000) (bvsge lt!624454 (size!47199 a!2901)) (bvslt (index!46317 lt!624457) #b00000000000000000000000000000000) (bvsge (index!46317 lt!624457) (size!47199 a!2901)) (bvslt (index!46317 lt!624453) #b00000000000000000000000000000000) (bvsge (index!46317 lt!624453) (size!47199 a!2901)) (not (= lt!624457 (Intermediate!10981 false (index!46317 lt!624457) (x!127927 lt!624457)))) (not (= lt!624453 (Intermediate!10981 false (index!46317 lt!624453) (x!127927 lt!624453))))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96642 (_ BitVec 32)) SeekEntryResult!10981)

(assert (=> b!1415880 (= lt!624458 (seekKeyOrZeroReturnVacant!0 (x!127927 lt!624453) (index!46317 lt!624453) (index!46317 lt!624453) (select (arr!46648 a!2901) j!112) lt!624452 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96642 (_ BitVec 32)) SeekEntryResult!10981)

(assert (=> b!1415880 (= lt!624458 (seekEntryOrOpen!0 lt!624460 lt!624452 mask!2840))))

(assert (=> b!1415880 (and (not (undefined!11793 lt!624453)) (= (index!46317 lt!624453) i!1037) (bvslt (x!127927 lt!624453) (x!127927 lt!624457)) (= (select (store (arr!46648 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46317 lt!624453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624455 () Unit!47886)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47886)

(assert (=> b!1415880 (= lt!624455 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624454 (x!127927 lt!624457) (index!46317 lt!624457) (x!127927 lt!624453) (index!46317 lt!624453) (undefined!11793 lt!624453) mask!2840))))

(declare-fun b!1415881 () Bool)

(declare-fun res!952027 () Bool)

(assert (=> b!1415881 (=> (not res!952027) (not e!801400))))

(declare-datatypes ((List!33347 0))(
  ( (Nil!33344) (Cons!33343 (h!34630 (_ BitVec 64)) (t!48048 List!33347)) )
))
(declare-fun arrayNoDuplicates!0 (array!96642 (_ BitVec 32) List!33347) Bool)

(assert (=> b!1415881 (= res!952027 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33344))))

(declare-fun b!1415882 () Bool)

(declare-fun e!801403 () Bool)

(assert (=> b!1415882 (= e!801400 (not e!801403))))

(declare-fun res!952030 () Bool)

(assert (=> b!1415882 (=> res!952030 e!801403)))

(assert (=> b!1415882 (= res!952030 (or (not (is-Intermediate!10981 lt!624457)) (undefined!11793 lt!624457)))))

(assert (=> b!1415882 (= lt!624451 (Found!10981 j!112))))

(assert (=> b!1415882 (= lt!624451 (seekEntryOrOpen!0 (select (arr!46648 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1415882 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624456 () Unit!47886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47886)

(assert (=> b!1415882 (= lt!624456 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1415882 (= lt!624457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624454 (select (arr!46648 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415882 (= lt!624454 (toIndex!0 (select (arr!46648 a!2901) j!112) mask!2840))))

(declare-fun b!1415883 () Bool)

(assert (=> b!1415883 (= e!801403 e!801404)))

(declare-fun res!952034 () Bool)

(assert (=> b!1415883 (=> res!952034 e!801404)))

(assert (=> b!1415883 (= res!952034 (or (= lt!624457 lt!624453) (not (is-Intermediate!10981 lt!624453))))))

(assert (=> b!1415883 (= lt!624453 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624460 mask!2840) lt!624460 lt!624452 mask!2840))))

(assert (=> b!1415883 (= lt!624460 (select (store (arr!46648 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415883 (= lt!624452 (array!96643 (store (arr!46648 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47199 a!2901)))))

(declare-fun b!1415884 () Bool)

(declare-fun res!952032 () Bool)

(assert (=> b!1415884 (=> (not res!952032) (not e!801400))))

(assert (=> b!1415884 (= res!952032 (validKeyInArray!0 (select (arr!46648 a!2901) j!112)))))

(assert (= (and start!122038 res!952031) b!1415879))

(assert (= (and b!1415879 res!952029) b!1415876))

(assert (= (and b!1415876 res!952033) b!1415884))

(assert (= (and b!1415884 res!952032) b!1415878))

(assert (= (and b!1415878 res!952035) b!1415881))

(assert (= (and b!1415881 res!952027) b!1415882))

(assert (= (and b!1415882 (not res!952030)) b!1415883))

(assert (= (and b!1415883 (not res!952034)) b!1415880))

(assert (= (and b!1415880 (not res!952028)) b!1415877))

(assert (= (and b!1415877 (not res!952026)) b!1415875))

(declare-fun m!1306403 () Bool)

(assert (=> b!1415882 m!1306403))

(declare-fun m!1306405 () Bool)

(assert (=> b!1415882 m!1306405))

(assert (=> b!1415882 m!1306403))

(assert (=> b!1415882 m!1306403))

(declare-fun m!1306407 () Bool)

(assert (=> b!1415882 m!1306407))

(declare-fun m!1306409 () Bool)

(assert (=> b!1415882 m!1306409))

(assert (=> b!1415882 m!1306403))

(declare-fun m!1306411 () Bool)

(assert (=> b!1415882 m!1306411))

(declare-fun m!1306413 () Bool)

(assert (=> b!1415882 m!1306413))

(declare-fun m!1306415 () Bool)

(assert (=> b!1415875 m!1306415))

(declare-fun m!1306417 () Bool)

(assert (=> start!122038 m!1306417))

(declare-fun m!1306419 () Bool)

(assert (=> start!122038 m!1306419))

(declare-fun m!1306421 () Bool)

(assert (=> b!1415877 m!1306421))

(assert (=> b!1415880 m!1306403))

(declare-fun m!1306423 () Bool)

(assert (=> b!1415880 m!1306423))

(assert (=> b!1415880 m!1306403))

(declare-fun m!1306425 () Bool)

(assert (=> b!1415880 m!1306425))

(declare-fun m!1306427 () Bool)

(assert (=> b!1415880 m!1306427))

(declare-fun m!1306429 () Bool)

(assert (=> b!1415880 m!1306429))

(declare-fun m!1306431 () Bool)

(assert (=> b!1415880 m!1306431))

(declare-fun m!1306433 () Bool)

(assert (=> b!1415878 m!1306433))

(declare-fun m!1306435 () Bool)

(assert (=> b!1415883 m!1306435))

(assert (=> b!1415883 m!1306435))

(declare-fun m!1306437 () Bool)

(assert (=> b!1415883 m!1306437))

(assert (=> b!1415883 m!1306431))

(declare-fun m!1306439 () Bool)

(assert (=> b!1415883 m!1306439))

(declare-fun m!1306441 () Bool)

(assert (=> b!1415876 m!1306441))

(assert (=> b!1415876 m!1306441))

(declare-fun m!1306443 () Bool)

(assert (=> b!1415876 m!1306443))

(assert (=> b!1415884 m!1306403))

(assert (=> b!1415884 m!1306403))

(declare-fun m!1306445 () Bool)

(assert (=> b!1415884 m!1306445))

(declare-fun m!1306447 () Bool)

(assert (=> b!1415881 m!1306447))

(push 1)

