; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123310 () Bool)

(assert start!123310)

(declare-fun b!1429441 () Bool)

(declare-fun res!964182 () Bool)

(declare-fun e!807158 () Bool)

(assert (=> b!1429441 (=> (not res!964182) (not e!807158))))

(declare-datatypes ((array!97389 0))(
  ( (array!97390 (arr!47002 (Array (_ BitVec 32) (_ BitVec 64))) (size!47553 (_ BitVec 32))) )
))
(declare-fun lt!629338 () array!97389)

(declare-datatypes ((SeekEntryResult!11303 0))(
  ( (MissingZero!11303 (index!47603 (_ BitVec 32))) (Found!11303 (index!47604 (_ BitVec 32))) (Intermediate!11303 (undefined!12115 Bool) (index!47605 (_ BitVec 32)) (x!129244 (_ BitVec 32))) (Undefined!11303) (MissingVacant!11303 (index!47606 (_ BitVec 32))) )
))
(declare-fun lt!629340 () SeekEntryResult!11303)

(declare-fun lt!629341 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97389 (_ BitVec 32)) SeekEntryResult!11303)

(assert (=> b!1429441 (= res!964182 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629341 lt!629338 mask!2608) lt!629340))))

(declare-fun b!1429442 () Bool)

(declare-fun res!964188 () Bool)

(assert (=> b!1429442 (=> (not res!964188) (not e!807158))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun lt!629339 () SeekEntryResult!11303)

(declare-fun a!2831 () array!97389)

(assert (=> b!1429442 (= res!964188 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47002 a!2831) j!81) a!2831 mask!2608) lt!629339))))

(declare-fun b!1429443 () Bool)

(declare-fun res!964181 () Bool)

(declare-fun e!807157 () Bool)

(assert (=> b!1429443 (=> (not res!964181) (not e!807157))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1429443 (= res!964181 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47553 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47553 a!2831))))))

(declare-fun b!1429444 () Bool)

(assert (=> b!1429444 (= e!807158 (not true))))

(declare-fun e!807155 () Bool)

(assert (=> b!1429444 e!807155))

(declare-fun res!964184 () Bool)

(assert (=> b!1429444 (=> (not res!964184) (not e!807155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97389 (_ BitVec 32)) Bool)

(assert (=> b!1429444 (= res!964184 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48300 0))(
  ( (Unit!48301) )
))
(declare-fun lt!629337 () Unit!48300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97389 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48300)

(assert (=> b!1429444 (= lt!629337 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!964189 () Bool)

(assert (=> start!123310 (=> (not res!964189) (not e!807157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123310 (= res!964189 (validMask!0 mask!2608))))

(assert (=> start!123310 e!807157))

(assert (=> start!123310 true))

(declare-fun array_inv!35947 (array!97389) Bool)

(assert (=> start!123310 (array_inv!35947 a!2831)))

(declare-fun b!1429445 () Bool)

(declare-fun res!964180 () Bool)

(assert (=> b!1429445 (=> (not res!964180) (not e!807158))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429445 (= res!964180 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429446 () Bool)

(declare-fun res!964179 () Bool)

(assert (=> b!1429446 (=> (not res!964179) (not e!807157))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429446 (= res!964179 (validKeyInArray!0 (select (arr!47002 a!2831) i!982)))))

(declare-fun b!1429447 () Bool)

(declare-fun res!964185 () Bool)

(assert (=> b!1429447 (=> (not res!964185) (not e!807157))))

(assert (=> b!1429447 (= res!964185 (and (= (size!47553 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47553 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47553 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429448 () Bool)

(declare-fun res!964191 () Bool)

(assert (=> b!1429448 (=> (not res!964191) (not e!807157))))

(declare-datatypes ((List!33692 0))(
  ( (Nil!33689) (Cons!33688 (h!35002 (_ BitVec 64)) (t!48393 List!33692)) )
))
(declare-fun arrayNoDuplicates!0 (array!97389 (_ BitVec 32) List!33692) Bool)

(assert (=> b!1429448 (= res!964191 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33689))))

(declare-fun b!1429449 () Bool)

(declare-fun res!964183 () Bool)

(assert (=> b!1429449 (=> (not res!964183) (not e!807157))))

(assert (=> b!1429449 (= res!964183 (validKeyInArray!0 (select (arr!47002 a!2831) j!81)))))

(declare-fun b!1429450 () Bool)

(declare-fun e!807154 () Bool)

(assert (=> b!1429450 (= e!807154 e!807158)))

(declare-fun res!964190 () Bool)

(assert (=> b!1429450 (=> (not res!964190) (not e!807158))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429450 (= res!964190 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629341 mask!2608) lt!629341 lt!629338 mask!2608) lt!629340))))

(assert (=> b!1429450 (= lt!629340 (Intermediate!11303 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429450 (= lt!629341 (select (store (arr!47002 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429450 (= lt!629338 (array!97390 (store (arr!47002 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47553 a!2831)))))

(declare-fun b!1429451 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97389 (_ BitVec 32)) SeekEntryResult!11303)

(assert (=> b!1429451 (= e!807155 (= (seekEntryOrOpen!0 (select (arr!47002 a!2831) j!81) a!2831 mask!2608) (Found!11303 j!81)))))

(declare-fun b!1429452 () Bool)

(assert (=> b!1429452 (= e!807157 e!807154)))

(declare-fun res!964186 () Bool)

(assert (=> b!1429452 (=> (not res!964186) (not e!807154))))

(assert (=> b!1429452 (= res!964186 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47002 a!2831) j!81) mask!2608) (select (arr!47002 a!2831) j!81) a!2831 mask!2608) lt!629339))))

(assert (=> b!1429452 (= lt!629339 (Intermediate!11303 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429453 () Bool)

(declare-fun res!964187 () Bool)

(assert (=> b!1429453 (=> (not res!964187) (not e!807157))))

(assert (=> b!1429453 (= res!964187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123310 res!964189) b!1429447))

(assert (= (and b!1429447 res!964185) b!1429446))

(assert (= (and b!1429446 res!964179) b!1429449))

(assert (= (and b!1429449 res!964183) b!1429453))

(assert (= (and b!1429453 res!964187) b!1429448))

(assert (= (and b!1429448 res!964191) b!1429443))

(assert (= (and b!1429443 res!964181) b!1429452))

(assert (= (and b!1429452 res!964186) b!1429450))

(assert (= (and b!1429450 res!964190) b!1429442))

(assert (= (and b!1429442 res!964188) b!1429441))

(assert (= (and b!1429441 res!964182) b!1429445))

(assert (= (and b!1429445 res!964180) b!1429444))

(assert (= (and b!1429444 res!964184) b!1429451))

(declare-fun m!1319597 () Bool)

(assert (=> b!1429448 m!1319597))

(declare-fun m!1319599 () Bool)

(assert (=> b!1429452 m!1319599))

(assert (=> b!1429452 m!1319599))

(declare-fun m!1319601 () Bool)

(assert (=> b!1429452 m!1319601))

(assert (=> b!1429452 m!1319601))

(assert (=> b!1429452 m!1319599))

(declare-fun m!1319603 () Bool)

(assert (=> b!1429452 m!1319603))

(declare-fun m!1319605 () Bool)

(assert (=> b!1429441 m!1319605))

(declare-fun m!1319607 () Bool)

(assert (=> b!1429444 m!1319607))

(declare-fun m!1319609 () Bool)

(assert (=> b!1429444 m!1319609))

(declare-fun m!1319611 () Bool)

(assert (=> b!1429453 m!1319611))

(declare-fun m!1319613 () Bool)

(assert (=> start!123310 m!1319613))

(declare-fun m!1319615 () Bool)

(assert (=> start!123310 m!1319615))

(assert (=> b!1429451 m!1319599))

(assert (=> b!1429451 m!1319599))

(declare-fun m!1319617 () Bool)

(assert (=> b!1429451 m!1319617))

(assert (=> b!1429442 m!1319599))

(assert (=> b!1429442 m!1319599))

(declare-fun m!1319619 () Bool)

(assert (=> b!1429442 m!1319619))

(assert (=> b!1429449 m!1319599))

(assert (=> b!1429449 m!1319599))

(declare-fun m!1319621 () Bool)

(assert (=> b!1429449 m!1319621))

(declare-fun m!1319623 () Bool)

(assert (=> b!1429450 m!1319623))

(assert (=> b!1429450 m!1319623))

(declare-fun m!1319625 () Bool)

(assert (=> b!1429450 m!1319625))

(declare-fun m!1319627 () Bool)

(assert (=> b!1429450 m!1319627))

(declare-fun m!1319629 () Bool)

(assert (=> b!1429450 m!1319629))

(declare-fun m!1319631 () Bool)

(assert (=> b!1429446 m!1319631))

(assert (=> b!1429446 m!1319631))

(declare-fun m!1319633 () Bool)

(assert (=> b!1429446 m!1319633))

(push 1)

