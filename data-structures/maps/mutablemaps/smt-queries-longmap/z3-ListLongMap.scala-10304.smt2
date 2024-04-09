; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121188 () Bool)

(assert start!121188)

(declare-fun b!1408536 () Bool)

(declare-fun res!946369 () Bool)

(declare-fun e!797170 () Bool)

(assert (=> b!1408536 (=> (not res!946369) (not e!797170))))

(declare-datatypes ((array!96260 0))(
  ( (array!96261 (arr!46469 (Array (_ BitVec 32) (_ BitVec 64))) (size!47020 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96260)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408536 (= res!946369 (validKeyInArray!0 (select (arr!46469 a!2901) i!1037)))))

(declare-fun b!1408537 () Bool)

(declare-fun e!797169 () Bool)

(assert (=> b!1408537 (= e!797169 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10802 0))(
  ( (MissingZero!10802 (index!45584 (_ BitVec 32))) (Found!10802 (index!45585 (_ BitVec 32))) (Intermediate!10802 (undefined!11614 Bool) (index!45586 (_ BitVec 32)) (x!127190 (_ BitVec 32))) (Undefined!10802) (MissingVacant!10802 (index!45587 (_ BitVec 32))) )
))
(declare-fun lt!620356 () SeekEntryResult!10802)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96260 (_ BitVec 32)) SeekEntryResult!10802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408537 (= lt!620356 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46469 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46469 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96261 (store (arr!46469 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47020 a!2901)) mask!2840))))

(declare-fun b!1408538 () Bool)

(declare-fun res!946372 () Bool)

(assert (=> b!1408538 (=> (not res!946372) (not e!797170))))

(assert (=> b!1408538 (= res!946372 (and (= (size!47020 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47020 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47020 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408539 () Bool)

(declare-fun res!946367 () Bool)

(assert (=> b!1408539 (=> (not res!946367) (not e!797170))))

(declare-datatypes ((List!33168 0))(
  ( (Nil!33165) (Cons!33164 (h!34427 (_ BitVec 64)) (t!47869 List!33168)) )
))
(declare-fun arrayNoDuplicates!0 (array!96260 (_ BitVec 32) List!33168) Bool)

(assert (=> b!1408539 (= res!946367 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33165))))

(declare-fun b!1408540 () Bool)

(assert (=> b!1408540 (= e!797170 (not e!797169))))

(declare-fun res!946368 () Bool)

(assert (=> b!1408540 (=> res!946368 e!797169)))

(declare-fun lt!620355 () SeekEntryResult!10802)

(get-info :version)

(assert (=> b!1408540 (= res!946368 (or (not ((_ is Intermediate!10802) lt!620355)) (undefined!11614 lt!620355)))))

(declare-fun e!797171 () Bool)

(assert (=> b!1408540 e!797171))

(declare-fun res!946374 () Bool)

(assert (=> b!1408540 (=> (not res!946374) (not e!797171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96260 (_ BitVec 32)) Bool)

(assert (=> b!1408540 (= res!946374 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47528 0))(
  ( (Unit!47529) )
))
(declare-fun lt!620354 () Unit!47528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47528)

(assert (=> b!1408540 (= lt!620354 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1408540 (= lt!620355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46469 a!2901) j!112) mask!2840) (select (arr!46469 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408541 () Bool)

(declare-fun res!946371 () Bool)

(assert (=> b!1408541 (=> (not res!946371) (not e!797170))))

(assert (=> b!1408541 (= res!946371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!946370 () Bool)

(assert (=> start!121188 (=> (not res!946370) (not e!797170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121188 (= res!946370 (validMask!0 mask!2840))))

(assert (=> start!121188 e!797170))

(assert (=> start!121188 true))

(declare-fun array_inv!35414 (array!96260) Bool)

(assert (=> start!121188 (array_inv!35414 a!2901)))

(declare-fun b!1408542 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96260 (_ BitVec 32)) SeekEntryResult!10802)

(assert (=> b!1408542 (= e!797171 (= (seekEntryOrOpen!0 (select (arr!46469 a!2901) j!112) a!2901 mask!2840) (Found!10802 j!112)))))

(declare-fun b!1408543 () Bool)

(declare-fun res!946373 () Bool)

(assert (=> b!1408543 (=> (not res!946373) (not e!797170))))

(assert (=> b!1408543 (= res!946373 (validKeyInArray!0 (select (arr!46469 a!2901) j!112)))))

(assert (= (and start!121188 res!946370) b!1408538))

(assert (= (and b!1408538 res!946372) b!1408536))

(assert (= (and b!1408536 res!946369) b!1408543))

(assert (= (and b!1408543 res!946373) b!1408541))

(assert (= (and b!1408541 res!946371) b!1408539))

(assert (= (and b!1408539 res!946367) b!1408540))

(assert (= (and b!1408540 res!946374) b!1408542))

(assert (= (and b!1408540 (not res!946368)) b!1408537))

(declare-fun m!1297971 () Bool)

(assert (=> start!121188 m!1297971))

(declare-fun m!1297973 () Bool)

(assert (=> start!121188 m!1297973))

(declare-fun m!1297975 () Bool)

(assert (=> b!1408543 m!1297975))

(assert (=> b!1408543 m!1297975))

(declare-fun m!1297977 () Bool)

(assert (=> b!1408543 m!1297977))

(declare-fun m!1297979 () Bool)

(assert (=> b!1408536 m!1297979))

(assert (=> b!1408536 m!1297979))

(declare-fun m!1297981 () Bool)

(assert (=> b!1408536 m!1297981))

(assert (=> b!1408540 m!1297975))

(declare-fun m!1297983 () Bool)

(assert (=> b!1408540 m!1297983))

(assert (=> b!1408540 m!1297975))

(declare-fun m!1297985 () Bool)

(assert (=> b!1408540 m!1297985))

(assert (=> b!1408540 m!1297983))

(assert (=> b!1408540 m!1297975))

(declare-fun m!1297987 () Bool)

(assert (=> b!1408540 m!1297987))

(declare-fun m!1297989 () Bool)

(assert (=> b!1408540 m!1297989))

(declare-fun m!1297991 () Bool)

(assert (=> b!1408539 m!1297991))

(declare-fun m!1297993 () Bool)

(assert (=> b!1408541 m!1297993))

(assert (=> b!1408542 m!1297975))

(assert (=> b!1408542 m!1297975))

(declare-fun m!1297995 () Bool)

(assert (=> b!1408542 m!1297995))

(declare-fun m!1297997 () Bool)

(assert (=> b!1408537 m!1297997))

(declare-fun m!1297999 () Bool)

(assert (=> b!1408537 m!1297999))

(assert (=> b!1408537 m!1297999))

(declare-fun m!1298001 () Bool)

(assert (=> b!1408537 m!1298001))

(assert (=> b!1408537 m!1298001))

(assert (=> b!1408537 m!1297999))

(declare-fun m!1298003 () Bool)

(assert (=> b!1408537 m!1298003))

(check-sat (not b!1408543) (not b!1408537) (not b!1408539) (not b!1408542) (not b!1408541) (not start!121188) (not b!1408536) (not b!1408540))
