; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130880 () Bool)

(assert start!130880)

(declare-fun b!1534426 () Bool)

(declare-fun res!1051652 () Bool)

(declare-fun e!854484 () Bool)

(assert (=> b!1534426 (=> (not res!1051652) (not e!854484))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101905 0))(
  ( (array!101906 (arr!49164 (Array (_ BitVec 32) (_ BitVec 64))) (size!49715 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101905)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13319 0))(
  ( (MissingZero!13319 (index!55670 (_ BitVec 32))) (Found!13319 (index!55671 (_ BitVec 32))) (Intermediate!13319 (undefined!14131 Bool) (index!55672 (_ BitVec 32)) (x!137428 (_ BitVec 32))) (Undefined!13319) (MissingVacant!13319 (index!55673 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101905 (_ BitVec 32)) SeekEntryResult!13319)

(assert (=> b!1534426 (= res!1051652 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49164 a!2792) j!64) a!2792 mask!2480) (Found!13319 j!64)))))

(declare-fun b!1534427 () Bool)

(declare-fun res!1051658 () Bool)

(assert (=> b!1534427 (=> (not res!1051658) (not e!854484))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534427 (= res!1051658 (and (= (size!49715 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49715 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49715 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534428 () Bool)

(declare-fun res!1051655 () Bool)

(assert (=> b!1534428 (=> (not res!1051655) (not e!854484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534428 (= res!1051655 (validKeyInArray!0 (select (arr!49164 a!2792) i!951)))))

(declare-fun b!1534429 () Bool)

(declare-fun res!1051657 () Bool)

(assert (=> b!1534429 (=> (not res!1051657) (not e!854484))))

(assert (=> b!1534429 (= res!1051657 (not (= (select (arr!49164 a!2792) index!463) (select (arr!49164 a!2792) j!64))))))

(declare-fun res!1051651 () Bool)

(assert (=> start!130880 (=> (not res!1051651) (not e!854484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130880 (= res!1051651 (validMask!0 mask!2480))))

(assert (=> start!130880 e!854484))

(assert (=> start!130880 true))

(declare-fun array_inv!38109 (array!101905) Bool)

(assert (=> start!130880 (array_inv!38109 a!2792)))

(declare-fun b!1534430 () Bool)

(declare-fun res!1051653 () Bool)

(assert (=> b!1534430 (=> (not res!1051653) (not e!854484))))

(assert (=> b!1534430 (= res!1051653 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49715 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49715 a!2792)) (= (select (arr!49164 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534431 () Bool)

(declare-fun res!1051659 () Bool)

(assert (=> b!1534431 (=> (not res!1051659) (not e!854484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101905 (_ BitVec 32)) Bool)

(assert (=> b!1534431 (= res!1051659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534432 () Bool)

(declare-fun e!854486 () Bool)

(assert (=> b!1534432 (= e!854486 false)))

(declare-fun lt!663805 () SeekEntryResult!13319)

(declare-fun lt!663804 () (_ BitVec 32))

(assert (=> b!1534432 (= lt!663805 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663804 vacantIndex!5 (select (arr!49164 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534433 () Bool)

(declare-fun res!1051654 () Bool)

(assert (=> b!1534433 (=> (not res!1051654) (not e!854484))))

(assert (=> b!1534433 (= res!1051654 (validKeyInArray!0 (select (arr!49164 a!2792) j!64)))))

(declare-fun b!1534434 () Bool)

(assert (=> b!1534434 (= e!854484 e!854486)))

(declare-fun res!1051656 () Bool)

(assert (=> b!1534434 (=> (not res!1051656) (not e!854486))))

(assert (=> b!1534434 (= res!1051656 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663804 #b00000000000000000000000000000000) (bvslt lt!663804 (size!49715 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534434 (= lt!663804 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534435 () Bool)

(declare-fun res!1051650 () Bool)

(assert (=> b!1534435 (=> (not res!1051650) (not e!854484))))

(declare-datatypes ((List!35818 0))(
  ( (Nil!35815) (Cons!35814 (h!37260 (_ BitVec 64)) (t!50519 List!35818)) )
))
(declare-fun arrayNoDuplicates!0 (array!101905 (_ BitVec 32) List!35818) Bool)

(assert (=> b!1534435 (= res!1051650 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35815))))

(assert (= (and start!130880 res!1051651) b!1534427))

(assert (= (and b!1534427 res!1051658) b!1534428))

(assert (= (and b!1534428 res!1051655) b!1534433))

(assert (= (and b!1534433 res!1051654) b!1534431))

(assert (= (and b!1534431 res!1051659) b!1534435))

(assert (= (and b!1534435 res!1051650) b!1534430))

(assert (= (and b!1534430 res!1051653) b!1534426))

(assert (= (and b!1534426 res!1051652) b!1534429))

(assert (= (and b!1534429 res!1051657) b!1534434))

(assert (= (and b!1534434 res!1051656) b!1534432))

(declare-fun m!1417111 () Bool)

(assert (=> b!1534434 m!1417111))

(declare-fun m!1417113 () Bool)

(assert (=> b!1534429 m!1417113))

(declare-fun m!1417115 () Bool)

(assert (=> b!1534429 m!1417115))

(declare-fun m!1417117 () Bool)

(assert (=> b!1534435 m!1417117))

(declare-fun m!1417119 () Bool)

(assert (=> start!130880 m!1417119))

(declare-fun m!1417121 () Bool)

(assert (=> start!130880 m!1417121))

(declare-fun m!1417123 () Bool)

(assert (=> b!1534428 m!1417123))

(assert (=> b!1534428 m!1417123))

(declare-fun m!1417125 () Bool)

(assert (=> b!1534428 m!1417125))

(assert (=> b!1534432 m!1417115))

(assert (=> b!1534432 m!1417115))

(declare-fun m!1417127 () Bool)

(assert (=> b!1534432 m!1417127))

(declare-fun m!1417129 () Bool)

(assert (=> b!1534431 m!1417129))

(declare-fun m!1417131 () Bool)

(assert (=> b!1534430 m!1417131))

(assert (=> b!1534426 m!1417115))

(assert (=> b!1534426 m!1417115))

(declare-fun m!1417133 () Bool)

(assert (=> b!1534426 m!1417133))

(assert (=> b!1534433 m!1417115))

(assert (=> b!1534433 m!1417115))

(declare-fun m!1417135 () Bool)

(assert (=> b!1534433 m!1417135))

(push 1)

(assert (not b!1534433))

(assert (not b!1534432))

(assert (not b!1534435))

(assert (not start!130880))

(assert (not b!1534431))

(assert (not b!1534426))

(assert (not b!1534434))

(assert (not b!1534428))

(check-sat)

