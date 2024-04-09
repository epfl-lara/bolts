; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120016 () Bool)

(assert start!120016)

(declare-fun b!1396550 () Bool)

(declare-fun e!790669 () Bool)

(declare-fun e!790668 () Bool)

(assert (=> b!1396550 (= e!790669 (not e!790668))))

(declare-fun res!935575 () Bool)

(assert (=> b!1396550 (=> res!935575 e!790668)))

(declare-datatypes ((SeekEntryResult!10420 0))(
  ( (MissingZero!10420 (index!44050 (_ BitVec 32))) (Found!10420 (index!44051 (_ BitVec 32))) (Intermediate!10420 (undefined!11232 Bool) (index!44052 (_ BitVec 32)) (x!125725 (_ BitVec 32))) (Undefined!10420) (MissingVacant!10420 (index!44053 (_ BitVec 32))) )
))
(declare-fun lt!613516 () SeekEntryResult!10420)

(assert (=> b!1396550 (= res!935575 (or (not (is-Intermediate!10420 lt!613516)) (undefined!11232 lt!613516)))))

(declare-fun e!790666 () Bool)

(assert (=> b!1396550 e!790666))

(declare-fun res!935577 () Bool)

(assert (=> b!1396550 (=> (not res!935577) (not e!790666))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95463 0))(
  ( (array!95464 (arr!46081 (Array (_ BitVec 32) (_ BitVec 64))) (size!46632 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95463)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95463 (_ BitVec 32)) Bool)

(assert (=> b!1396550 (= res!935577 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46794 0))(
  ( (Unit!46795) )
))
(declare-fun lt!613519 () Unit!46794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46794)

(assert (=> b!1396550 (= lt!613519 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613522 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95463 (_ BitVec 32)) SeekEntryResult!10420)

(assert (=> b!1396550 (= lt!613516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613522 (select (arr!46081 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396550 (= lt!613522 (toIndex!0 (select (arr!46081 a!2901) j!112) mask!2840))))

(declare-fun b!1396551 () Bool)

(declare-fun res!935576 () Bool)

(assert (=> b!1396551 (=> (not res!935576) (not e!790669))))

(declare-datatypes ((List!32780 0))(
  ( (Nil!32777) (Cons!32776 (h!34018 (_ BitVec 64)) (t!47481 List!32780)) )
))
(declare-fun arrayNoDuplicates!0 (array!95463 (_ BitVec 32) List!32780) Bool)

(assert (=> b!1396551 (= res!935576 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32777))))

(declare-fun b!1396552 () Bool)

(declare-fun res!935574 () Bool)

(assert (=> b!1396552 (=> (not res!935574) (not e!790669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396552 (= res!935574 (validKeyInArray!0 (select (arr!46081 a!2901) j!112)))))

(declare-fun b!1396553 () Bool)

(declare-fun e!790667 () Bool)

(assert (=> b!1396553 (= e!790668 e!790667)))

(declare-fun res!935573 () Bool)

(assert (=> b!1396553 (=> res!935573 e!790667)))

(declare-fun lt!613520 () SeekEntryResult!10420)

(assert (=> b!1396553 (= res!935573 (or (= lt!613516 lt!613520) (not (is-Intermediate!10420 lt!613520)) (bvslt (x!125725 lt!613516) #b00000000000000000000000000000000) (bvsgt (x!125725 lt!613516) #b01111111111111111111111111111110) (bvslt lt!613522 #b00000000000000000000000000000000) (bvsge lt!613522 (size!46632 a!2901)) (bvslt (index!44052 lt!613516) #b00000000000000000000000000000000) (bvsge (index!44052 lt!613516) (size!46632 a!2901)) (not (= lt!613516 (Intermediate!10420 false (index!44052 lt!613516) (x!125725 lt!613516)))) (not (= lt!613520 (Intermediate!10420 (undefined!11232 lt!613520) (index!44052 lt!613520) (x!125725 lt!613520))))))))

(declare-fun lt!613517 () array!95463)

(declare-fun lt!613518 () (_ BitVec 64))

(assert (=> b!1396553 (= lt!613520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613518 mask!2840) lt!613518 lt!613517 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396553 (= lt!613518 (select (store (arr!46081 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396553 (= lt!613517 (array!95464 (store (arr!46081 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46632 a!2901)))))

(declare-fun b!1396554 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95463 (_ BitVec 32)) SeekEntryResult!10420)

(assert (=> b!1396554 (= e!790666 (= (seekEntryOrOpen!0 (select (arr!46081 a!2901) j!112) a!2901 mask!2840) (Found!10420 j!112)))))

(declare-fun b!1396555 () Bool)

(declare-fun res!935572 () Bool)

(assert (=> b!1396555 (=> (not res!935572) (not e!790669))))

(assert (=> b!1396555 (= res!935572 (validKeyInArray!0 (select (arr!46081 a!2901) i!1037)))))

(declare-fun b!1396556 () Bool)

(declare-fun res!935579 () Bool)

(assert (=> b!1396556 (=> (not res!935579) (not e!790669))))

(assert (=> b!1396556 (= res!935579 (and (= (size!46632 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46632 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46632 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!935578 () Bool)

(assert (=> start!120016 (=> (not res!935578) (not e!790669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120016 (= res!935578 (validMask!0 mask!2840))))

(assert (=> start!120016 e!790669))

(assert (=> start!120016 true))

(declare-fun array_inv!35026 (array!95463) Bool)

(assert (=> start!120016 (array_inv!35026 a!2901)))

(declare-fun b!1396557 () Bool)

(assert (=> b!1396557 (= e!790667 true)))

(declare-fun lt!613521 () SeekEntryResult!10420)

(assert (=> b!1396557 (= lt!613521 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613522 lt!613518 lt!613517 mask!2840))))

(declare-fun b!1396558 () Bool)

(declare-fun res!935580 () Bool)

(assert (=> b!1396558 (=> (not res!935580) (not e!790669))))

(assert (=> b!1396558 (= res!935580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120016 res!935578) b!1396556))

(assert (= (and b!1396556 res!935579) b!1396555))

(assert (= (and b!1396555 res!935572) b!1396552))

(assert (= (and b!1396552 res!935574) b!1396558))

(assert (= (and b!1396558 res!935580) b!1396551))

(assert (= (and b!1396551 res!935576) b!1396550))

(assert (= (and b!1396550 res!935577) b!1396554))

(assert (= (and b!1396550 (not res!935575)) b!1396553))

(assert (= (and b!1396553 (not res!935573)) b!1396557))

(declare-fun m!1283111 () Bool)

(assert (=> b!1396558 m!1283111))

(declare-fun m!1283113 () Bool)

(assert (=> b!1396550 m!1283113))

(declare-fun m!1283115 () Bool)

(assert (=> b!1396550 m!1283115))

(assert (=> b!1396550 m!1283113))

(declare-fun m!1283117 () Bool)

(assert (=> b!1396550 m!1283117))

(declare-fun m!1283119 () Bool)

(assert (=> b!1396550 m!1283119))

(assert (=> b!1396550 m!1283113))

(declare-fun m!1283121 () Bool)

(assert (=> b!1396550 m!1283121))

(assert (=> b!1396552 m!1283113))

(assert (=> b!1396552 m!1283113))

(declare-fun m!1283123 () Bool)

(assert (=> b!1396552 m!1283123))

(declare-fun m!1283125 () Bool)

(assert (=> b!1396551 m!1283125))

(assert (=> b!1396554 m!1283113))

(assert (=> b!1396554 m!1283113))

(declare-fun m!1283127 () Bool)

(assert (=> b!1396554 m!1283127))

(declare-fun m!1283129 () Bool)

(assert (=> b!1396557 m!1283129))

(declare-fun m!1283131 () Bool)

(assert (=> b!1396555 m!1283131))

(assert (=> b!1396555 m!1283131))

(declare-fun m!1283133 () Bool)

(assert (=> b!1396555 m!1283133))

(declare-fun m!1283135 () Bool)

(assert (=> start!120016 m!1283135))

(declare-fun m!1283137 () Bool)

(assert (=> start!120016 m!1283137))

(declare-fun m!1283139 () Bool)

(assert (=> b!1396553 m!1283139))

(assert (=> b!1396553 m!1283139))

(declare-fun m!1283141 () Bool)

(assert (=> b!1396553 m!1283141))

(declare-fun m!1283143 () Bool)

(assert (=> b!1396553 m!1283143))

(declare-fun m!1283145 () Bool)

(assert (=> b!1396553 m!1283145))

(push 1)

