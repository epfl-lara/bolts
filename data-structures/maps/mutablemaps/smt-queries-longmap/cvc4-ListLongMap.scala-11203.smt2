; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130886 () Bool)

(assert start!130886)

(declare-fun b!1534516 () Bool)

(declare-fun e!854513 () Bool)

(declare-fun e!854512 () Bool)

(assert (=> b!1534516 (= e!854513 e!854512)))

(declare-fun res!1051740 () Bool)

(assert (=> b!1534516 (=> (not res!1051740) (not e!854512))))

(declare-fun lt!663823 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101911 0))(
  ( (array!101912 (arr!49167 (Array (_ BitVec 32) (_ BitVec 64))) (size!49718 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101911)

(assert (=> b!1534516 (= res!1051740 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663823 #b00000000000000000000000000000000) (bvslt lt!663823 (size!49718 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534516 (= lt!663823 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534517 () Bool)

(declare-fun res!1051744 () Bool)

(assert (=> b!1534517 (=> (not res!1051744) (not e!854513))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13322 0))(
  ( (MissingZero!13322 (index!55682 (_ BitVec 32))) (Found!13322 (index!55683 (_ BitVec 32))) (Intermediate!13322 (undefined!14134 Bool) (index!55684 (_ BitVec 32)) (x!137439 (_ BitVec 32))) (Undefined!13322) (MissingVacant!13322 (index!55685 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101911 (_ BitVec 32)) SeekEntryResult!13322)

(assert (=> b!1534517 (= res!1051744 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49167 a!2792) j!64) a!2792 mask!2480) (Found!13322 j!64)))))

(declare-fun b!1534518 () Bool)

(declare-fun res!1051745 () Bool)

(assert (=> b!1534518 (=> (not res!1051745) (not e!854513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534518 (= res!1051745 (validKeyInArray!0 (select (arr!49167 a!2792) j!64)))))

(declare-fun b!1534520 () Bool)

(declare-fun res!1051747 () Bool)

(assert (=> b!1534520 (=> (not res!1051747) (not e!854513))))

(assert (=> b!1534520 (= res!1051747 (not (= (select (arr!49167 a!2792) index!463) (select (arr!49167 a!2792) j!64))))))

(declare-fun b!1534521 () Bool)

(declare-fun res!1051741 () Bool)

(assert (=> b!1534521 (=> (not res!1051741) (not e!854513))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101911 (_ BitVec 32)) Bool)

(assert (=> b!1534521 (= res!1051741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534522 () Bool)

(declare-fun res!1051749 () Bool)

(assert (=> b!1534522 (=> (not res!1051749) (not e!854513))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534522 (= res!1051749 (validKeyInArray!0 (select (arr!49167 a!2792) i!951)))))

(declare-fun b!1534523 () Bool)

(declare-fun res!1051743 () Bool)

(assert (=> b!1534523 (=> (not res!1051743) (not e!854513))))

(assert (=> b!1534523 (= res!1051743 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49718 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49718 a!2792)) (= (select (arr!49167 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534524 () Bool)

(declare-fun res!1051742 () Bool)

(assert (=> b!1534524 (=> (not res!1051742) (not e!854513))))

(declare-datatypes ((List!35821 0))(
  ( (Nil!35818) (Cons!35817 (h!37263 (_ BitVec 64)) (t!50522 List!35821)) )
))
(declare-fun arrayNoDuplicates!0 (array!101911 (_ BitVec 32) List!35821) Bool)

(assert (=> b!1534524 (= res!1051742 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35818))))

(declare-fun b!1534525 () Bool)

(declare-fun res!1051748 () Bool)

(assert (=> b!1534525 (=> (not res!1051748) (not e!854513))))

(assert (=> b!1534525 (= res!1051748 (and (= (size!49718 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49718 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49718 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534519 () Bool)

(assert (=> b!1534519 (= e!854512 false)))

(declare-fun lt!663822 () SeekEntryResult!13322)

(assert (=> b!1534519 (= lt!663822 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663823 vacantIndex!5 (select (arr!49167 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1051746 () Bool)

(assert (=> start!130886 (=> (not res!1051746) (not e!854513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130886 (= res!1051746 (validMask!0 mask!2480))))

(assert (=> start!130886 e!854513))

(assert (=> start!130886 true))

(declare-fun array_inv!38112 (array!101911) Bool)

(assert (=> start!130886 (array_inv!38112 a!2792)))

(assert (= (and start!130886 res!1051746) b!1534525))

(assert (= (and b!1534525 res!1051748) b!1534522))

(assert (= (and b!1534522 res!1051749) b!1534518))

(assert (= (and b!1534518 res!1051745) b!1534521))

(assert (= (and b!1534521 res!1051741) b!1534524))

(assert (= (and b!1534524 res!1051742) b!1534523))

(assert (= (and b!1534523 res!1051743) b!1534517))

(assert (= (and b!1534517 res!1051744) b!1534520))

(assert (= (and b!1534520 res!1051747) b!1534516))

(assert (= (and b!1534516 res!1051740) b!1534519))

(declare-fun m!1417189 () Bool)

(assert (=> start!130886 m!1417189))

(declare-fun m!1417191 () Bool)

(assert (=> start!130886 m!1417191))

(declare-fun m!1417193 () Bool)

(assert (=> b!1534522 m!1417193))

(assert (=> b!1534522 m!1417193))

(declare-fun m!1417195 () Bool)

(assert (=> b!1534522 m!1417195))

(declare-fun m!1417197 () Bool)

(assert (=> b!1534521 m!1417197))

(declare-fun m!1417199 () Bool)

(assert (=> b!1534520 m!1417199))

(declare-fun m!1417201 () Bool)

(assert (=> b!1534520 m!1417201))

(assert (=> b!1534518 m!1417201))

(assert (=> b!1534518 m!1417201))

(declare-fun m!1417203 () Bool)

(assert (=> b!1534518 m!1417203))

(assert (=> b!1534517 m!1417201))

(assert (=> b!1534517 m!1417201))

(declare-fun m!1417205 () Bool)

(assert (=> b!1534517 m!1417205))

(declare-fun m!1417207 () Bool)

(assert (=> b!1534516 m!1417207))

(declare-fun m!1417209 () Bool)

(assert (=> b!1534523 m!1417209))

(declare-fun m!1417211 () Bool)

(assert (=> b!1534524 m!1417211))

(assert (=> b!1534519 m!1417201))

(assert (=> b!1534519 m!1417201))

(declare-fun m!1417213 () Bool)

(assert (=> b!1534519 m!1417213))

(push 1)

(assert (not b!1534516))

(assert (not b!1534521))

(assert (not b!1534518))

(assert (not b!1534522))

(assert (not b!1534519))

(assert (not start!130886))

(assert (not b!1534517))

(assert (not b!1534524))

(check-sat)

