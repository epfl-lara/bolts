; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128680 () Bool)

(assert start!128680)

(declare-fun b!1507719 () Bool)

(declare-fun res!1027905 () Bool)

(declare-fun e!842437 () Bool)

(assert (=> b!1507719 (=> (not res!1027905) (not e!842437))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100527 0))(
  ( (array!100528 (arr!48499 (Array (_ BitVec 32) (_ BitVec 64))) (size!49050 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100527)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12691 0))(
  ( (MissingZero!12691 (index!53158 (_ BitVec 32))) (Found!12691 (index!53159 (_ BitVec 32))) (Intermediate!12691 (undefined!13503 Bool) (index!53160 (_ BitVec 32)) (x!134930 (_ BitVec 32))) (Undefined!12691) (MissingVacant!12691 (index!53161 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100527 (_ BitVec 32)) SeekEntryResult!12691)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507719 (= res!1027905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48499 a!2804) j!70) mask!2512) (select (arr!48499 a!2804) j!70) a!2804 mask!2512) (Intermediate!12691 false resIndex!21 resX!21)))))

(declare-fun b!1507720 () Bool)

(declare-fun res!1027908 () Bool)

(assert (=> b!1507720 (=> (not res!1027908) (not e!842437))))

(declare-datatypes ((List!35162 0))(
  ( (Nil!35159) (Cons!35158 (h!36565 (_ BitVec 64)) (t!49863 List!35162)) )
))
(declare-fun arrayNoDuplicates!0 (array!100527 (_ BitVec 32) List!35162) Bool)

(assert (=> b!1507720 (= res!1027908 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35159))))

(declare-fun b!1507721 () Bool)

(declare-fun res!1027909 () Bool)

(assert (=> b!1507721 (=> (not res!1027909) (not e!842437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507721 (= res!1027909 (validKeyInArray!0 (select (arr!48499 a!2804) j!70)))))

(declare-fun b!1507722 () Bool)

(declare-fun res!1027904 () Bool)

(assert (=> b!1507722 (=> (not res!1027904) (not e!842437))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507722 (= res!1027904 (validKeyInArray!0 (select (arr!48499 a!2804) i!961)))))

(declare-fun b!1507723 () Bool)

(assert (=> b!1507723 (= e!842437 false)))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!654445 () SeekEntryResult!12691)

(assert (=> b!1507723 (= lt!654445 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48499 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1027906 () Bool)

(assert (=> start!128680 (=> (not res!1027906) (not e!842437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128680 (= res!1027906 (validMask!0 mask!2512))))

(assert (=> start!128680 e!842437))

(assert (=> start!128680 true))

(declare-fun array_inv!37444 (array!100527) Bool)

(assert (=> start!128680 (array_inv!37444 a!2804)))

(declare-fun b!1507724 () Bool)

(declare-fun res!1027907 () Bool)

(assert (=> b!1507724 (=> (not res!1027907) (not e!842437))))

(assert (=> b!1507724 (= res!1027907 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49050 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49050 a!2804))))))

(declare-fun b!1507725 () Bool)

(declare-fun res!1027910 () Bool)

(assert (=> b!1507725 (=> (not res!1027910) (not e!842437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100527 (_ BitVec 32)) Bool)

(assert (=> b!1507725 (= res!1027910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507726 () Bool)

(declare-fun res!1027911 () Bool)

(assert (=> b!1507726 (=> (not res!1027911) (not e!842437))))

(assert (=> b!1507726 (= res!1027911 (and (= (size!49050 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49050 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49050 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128680 res!1027906) b!1507726))

(assert (= (and b!1507726 res!1027911) b!1507722))

(assert (= (and b!1507722 res!1027904) b!1507721))

(assert (= (and b!1507721 res!1027909) b!1507725))

(assert (= (and b!1507725 res!1027910) b!1507720))

(assert (= (and b!1507720 res!1027908) b!1507724))

(assert (= (and b!1507724 res!1027907) b!1507719))

(assert (= (and b!1507719 res!1027905) b!1507723))

(declare-fun m!1390413 () Bool)

(assert (=> b!1507723 m!1390413))

(assert (=> b!1507723 m!1390413))

(declare-fun m!1390415 () Bool)

(assert (=> b!1507723 m!1390415))

(assert (=> b!1507721 m!1390413))

(assert (=> b!1507721 m!1390413))

(declare-fun m!1390417 () Bool)

(assert (=> b!1507721 m!1390417))

(declare-fun m!1390419 () Bool)

(assert (=> start!128680 m!1390419))

(declare-fun m!1390421 () Bool)

(assert (=> start!128680 m!1390421))

(declare-fun m!1390423 () Bool)

(assert (=> b!1507722 m!1390423))

(assert (=> b!1507722 m!1390423))

(declare-fun m!1390425 () Bool)

(assert (=> b!1507722 m!1390425))

(declare-fun m!1390427 () Bool)

(assert (=> b!1507720 m!1390427))

(assert (=> b!1507719 m!1390413))

(assert (=> b!1507719 m!1390413))

(declare-fun m!1390429 () Bool)

(assert (=> b!1507719 m!1390429))

(assert (=> b!1507719 m!1390429))

(assert (=> b!1507719 m!1390413))

(declare-fun m!1390431 () Bool)

(assert (=> b!1507719 m!1390431))

(declare-fun m!1390433 () Bool)

(assert (=> b!1507725 m!1390433))

(push 1)

(assert (not b!1507723))

(assert (not b!1507719))

(assert (not b!1507725))

(assert (not b!1507720))

(assert (not start!128680))

(assert (not b!1507722))

(assert (not b!1507721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

