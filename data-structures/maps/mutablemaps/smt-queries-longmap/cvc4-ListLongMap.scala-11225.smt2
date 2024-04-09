; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131018 () Bool)

(assert start!131018)

(declare-fun b!1536575 () Bool)

(declare-fun res!1053809 () Bool)

(declare-fun e!855259 () Bool)

(assert (=> b!1536575 (=> (not res!1053809) (not e!855259))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102043 0))(
  ( (array!102044 (arr!49233 (Array (_ BitVec 32) (_ BitVec 64))) (size!49784 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102043)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536575 (= res!1053809 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49784 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49784 a!2792)) (= (select (arr!49233 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536577 () Bool)

(declare-fun e!855255 () Bool)

(declare-fun e!855260 () Bool)

(assert (=> b!1536577 (= e!855255 e!855260)))

(declare-fun res!1053803 () Bool)

(assert (=> b!1536577 (=> (not res!1053803) (not e!855260))))

(declare-fun lt!664372 () (_ BitVec 32))

(assert (=> b!1536577 (= res!1053803 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664372 #b00000000000000000000000000000000) (bvslt lt!664372 (size!49784 a!2792))))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536577 (= lt!664372 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536578 () Bool)

(declare-fun res!1053806 () Bool)

(assert (=> b!1536578 (=> (not res!1053806) (not e!855259))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536578 (= res!1053806 (validKeyInArray!0 (select (arr!49233 a!2792) i!951)))))

(declare-fun b!1536579 () Bool)

(declare-fun e!855257 () Bool)

(declare-fun lt!664369 () (_ BitVec 64))

(assert (=> b!1536579 (= e!855257 (validKeyInArray!0 lt!664369))))

(declare-fun b!1536580 () Bool)

(declare-fun res!1053800 () Bool)

(assert (=> b!1536580 (=> (not res!1053800) (not e!855255))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1536580 (= res!1053800 (not (= (select (arr!49233 a!2792) index!463) (select (arr!49233 a!2792) j!64))))))

(declare-fun b!1536581 () Bool)

(declare-fun res!1053804 () Bool)

(assert (=> b!1536581 (=> (not res!1053804) (not e!855259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102043 (_ BitVec 32)) Bool)

(assert (=> b!1536581 (= res!1053804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536582 () Bool)

(declare-fun e!855256 () Bool)

(assert (=> b!1536582 (= e!855260 e!855256)))

(declare-fun res!1053808 () Bool)

(assert (=> b!1536582 (=> (not res!1053808) (not e!855256))))

(declare-datatypes ((SeekEntryResult!13388 0))(
  ( (MissingZero!13388 (index!55946 (_ BitVec 32))) (Found!13388 (index!55947 (_ BitVec 32))) (Intermediate!13388 (undefined!14200 Bool) (index!55948 (_ BitVec 32)) (x!137681 (_ BitVec 32))) (Undefined!13388) (MissingVacant!13388 (index!55949 (_ BitVec 32))) )
))
(declare-fun lt!664370 () SeekEntryResult!13388)

(declare-fun lt!664368 () SeekEntryResult!13388)

(assert (=> b!1536582 (= res!1053808 (= lt!664370 lt!664368))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102043 (_ BitVec 32)) SeekEntryResult!13388)

(assert (=> b!1536582 (= lt!664370 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664372 vacantIndex!5 (select (arr!49233 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536583 () Bool)

(assert (=> b!1536583 (= e!855259 e!855255)))

(declare-fun res!1053801 () Bool)

(assert (=> b!1536583 (=> (not res!1053801) (not e!855255))))

(assert (=> b!1536583 (= res!1053801 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49233 a!2792) j!64) a!2792 mask!2480) lt!664368))))

(assert (=> b!1536583 (= lt!664368 (Found!13388 j!64))))

(declare-fun b!1536584 () Bool)

(declare-fun res!1053810 () Bool)

(assert (=> b!1536584 (=> (not res!1053810) (not e!855259))))

(assert (=> b!1536584 (= res!1053810 (and (= (size!49784 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49784 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49784 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536585 () Bool)

(declare-fun res!1053807 () Bool)

(assert (=> b!1536585 (=> (not res!1053807) (not e!855259))))

(declare-datatypes ((List!35887 0))(
  ( (Nil!35884) (Cons!35883 (h!37329 (_ BitVec 64)) (t!50588 List!35887)) )
))
(declare-fun arrayNoDuplicates!0 (array!102043 (_ BitVec 32) List!35887) Bool)

(assert (=> b!1536585 (= res!1053807 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35884))))

(declare-fun b!1536586 () Bool)

(declare-fun res!1053805 () Bool)

(assert (=> b!1536586 (=> (not res!1053805) (not e!855259))))

(assert (=> b!1536586 (= res!1053805 (validKeyInArray!0 (select (arr!49233 a!2792) j!64)))))

(declare-fun res!1053802 () Bool)

(assert (=> start!131018 (=> (not res!1053802) (not e!855259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131018 (= res!1053802 (validMask!0 mask!2480))))

(assert (=> start!131018 e!855259))

(assert (=> start!131018 true))

(declare-fun array_inv!38178 (array!102043) Bool)

(assert (=> start!131018 (array_inv!38178 a!2792)))

(declare-fun b!1536576 () Bool)

(assert (=> b!1536576 (= e!855256 (not e!855257))))

(declare-fun res!1053799 () Bool)

(assert (=> b!1536576 (=> res!1053799 e!855257)))

(assert (=> b!1536576 (= res!1053799 (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49233 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1536576 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664372 vacantIndex!5 lt!664369 (array!102044 (store (arr!49233 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49784 a!2792)) mask!2480) lt!664370)))

(assert (=> b!1536576 (= lt!664369 (select (store (arr!49233 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(declare-datatypes ((Unit!51300 0))(
  ( (Unit!51301) )
))
(declare-fun lt!664371 () Unit!51300)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51300)

(assert (=> b!1536576 (= lt!664371 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664372 vacantIndex!5 mask!2480))))

(assert (= (and start!131018 res!1053802) b!1536584))

(assert (= (and b!1536584 res!1053810) b!1536578))

(assert (= (and b!1536578 res!1053806) b!1536586))

(assert (= (and b!1536586 res!1053805) b!1536581))

(assert (= (and b!1536581 res!1053804) b!1536585))

(assert (= (and b!1536585 res!1053807) b!1536575))

(assert (= (and b!1536575 res!1053809) b!1536583))

(assert (= (and b!1536583 res!1053801) b!1536580))

(assert (= (and b!1536580 res!1053800) b!1536577))

(assert (= (and b!1536577 res!1053803) b!1536582))

(assert (= (and b!1536582 res!1053808) b!1536576))

(assert (= (and b!1536576 (not res!1053799)) b!1536579))

(declare-fun m!1419103 () Bool)

(assert (=> b!1536575 m!1419103))

(declare-fun m!1419105 () Bool)

(assert (=> b!1536582 m!1419105))

(assert (=> b!1536582 m!1419105))

(declare-fun m!1419107 () Bool)

(assert (=> b!1536582 m!1419107))

(declare-fun m!1419109 () Bool)

(assert (=> start!131018 m!1419109))

(declare-fun m!1419111 () Bool)

(assert (=> start!131018 m!1419111))

(declare-fun m!1419113 () Bool)

(assert (=> b!1536581 m!1419113))

(declare-fun m!1419115 () Bool)

(assert (=> b!1536578 m!1419115))

(assert (=> b!1536578 m!1419115))

(declare-fun m!1419117 () Bool)

(assert (=> b!1536578 m!1419117))

(declare-fun m!1419119 () Bool)

(assert (=> b!1536577 m!1419119))

(assert (=> b!1536583 m!1419105))

(assert (=> b!1536583 m!1419105))

(declare-fun m!1419121 () Bool)

(assert (=> b!1536583 m!1419121))

(declare-fun m!1419123 () Bool)

(assert (=> b!1536580 m!1419123))

(assert (=> b!1536580 m!1419105))

(declare-fun m!1419125 () Bool)

(assert (=> b!1536576 m!1419125))

(declare-fun m!1419127 () Bool)

(assert (=> b!1536576 m!1419127))

(declare-fun m!1419129 () Bool)

(assert (=> b!1536576 m!1419129))

(declare-fun m!1419131 () Bool)

(assert (=> b!1536576 m!1419131))

(declare-fun m!1419133 () Bool)

(assert (=> b!1536576 m!1419133))

(declare-fun m!1419135 () Bool)

(assert (=> b!1536585 m!1419135))

(assert (=> b!1536586 m!1419105))

(assert (=> b!1536586 m!1419105))

(declare-fun m!1419137 () Bool)

(assert (=> b!1536586 m!1419137))

(declare-fun m!1419139 () Bool)

(assert (=> b!1536579 m!1419139))

(push 1)

(assert (not b!1536581))

(assert (not b!1536578))

(assert (not b!1536582))

(assert (not start!131018))

(assert (not b!1536576))

(assert (not b!1536577))

(assert (not b!1536586))

(assert (not b!1536579))

(assert (not b!1536585))

(assert (not b!1536583))

(check-sat)

