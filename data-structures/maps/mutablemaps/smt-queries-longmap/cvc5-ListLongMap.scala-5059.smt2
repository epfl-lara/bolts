; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68884 () Bool)

(assert start!68884)

(declare-fun res!547495 () Bool)

(declare-fun e!444902 () Bool)

(assert (=> start!68884 (=> (not res!547495) (not e!444902))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68884 (= res!547495 (validMask!0 mask!3266))))

(assert (=> start!68884 e!444902))

(assert (=> start!68884 true))

(declare-datatypes ((array!43625 0))(
  ( (array!43626 (arr!20889 (Array (_ BitVec 32) (_ BitVec 64))) (size!21310 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43625)

(declare-fun array_inv!16663 (array!43625) Bool)

(assert (=> start!68884 (array_inv!16663 a!3170)))

(declare-fun b!802801 () Bool)

(declare-fun e!444904 () Bool)

(declare-fun e!444901 () Bool)

(assert (=> b!802801 (= e!444904 e!444901)))

(declare-fun res!547494 () Bool)

(assert (=> b!802801 (=> (not res!547494) (not e!444901))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8487 0))(
  ( (MissingZero!8487 (index!36315 (_ BitVec 32))) (Found!8487 (index!36316 (_ BitVec 32))) (Intermediate!8487 (undefined!9299 Bool) (index!36317 (_ BitVec 32)) (x!67190 (_ BitVec 32))) (Undefined!8487) (MissingVacant!8487 (index!36318 (_ BitVec 32))) )
))
(declare-fun lt!359185 () SeekEntryResult!8487)

(declare-fun lt!359184 () SeekEntryResult!8487)

(assert (=> b!802801 (= res!547494 (and (= lt!359184 lt!359185) (not (= (select (arr!20889 a!3170) index!1236) (select (arr!20889 a!3170) j!153)))))))

(assert (=> b!802801 (= lt!359185 (Found!8487 j!153))))

(declare-fun b!802802 () Bool)

(declare-fun res!547498 () Bool)

(declare-fun e!444899 () Bool)

(assert (=> b!802802 (=> (not res!547498) (not e!444899))))

(declare-datatypes ((List!14905 0))(
  ( (Nil!14902) (Cons!14901 (h!16030 (_ BitVec 64)) (t!21228 List!14905)) )
))
(declare-fun arrayNoDuplicates!0 (array!43625 (_ BitVec 32) List!14905) Bool)

(assert (=> b!802802 (= res!547498 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14902))))

(declare-fun b!802803 () Bool)

(declare-fun res!547497 () Bool)

(assert (=> b!802803 (=> (not res!547497) (not e!444902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802803 (= res!547497 (validKeyInArray!0 (select (arr!20889 a!3170) j!153)))))

(declare-fun b!802804 () Bool)

(declare-fun res!547499 () Bool)

(assert (=> b!802804 (=> (not res!547499) (not e!444902))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802804 (= res!547499 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802805 () Bool)

(assert (=> b!802805 (= e!444902 e!444899)))

(declare-fun res!547493 () Bool)

(assert (=> b!802805 (=> (not res!547493) (not e!444899))))

(declare-fun lt!359182 () SeekEntryResult!8487)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802805 (= res!547493 (or (= lt!359182 (MissingZero!8487 i!1163)) (= lt!359182 (MissingVacant!8487 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43625 (_ BitVec 32)) SeekEntryResult!8487)

(assert (=> b!802805 (= lt!359182 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802806 () Bool)

(declare-fun res!547501 () Bool)

(assert (=> b!802806 (=> (not res!547501) (not e!444899))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43625 (_ BitVec 32)) Bool)

(assert (=> b!802806 (= res!547501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802807 () Bool)

(declare-fun res!547490 () Bool)

(assert (=> b!802807 (=> (not res!547490) (not e!444902))))

(assert (=> b!802807 (= res!547490 (validKeyInArray!0 k!2044))))

(declare-fun b!802808 () Bool)

(declare-fun e!444903 () Bool)

(assert (=> b!802808 (= e!444899 e!444903)))

(declare-fun res!547492 () Bool)

(assert (=> b!802808 (=> (not res!547492) (not e!444903))))

(declare-fun lt!359179 () SeekEntryResult!8487)

(declare-fun lt!359178 () SeekEntryResult!8487)

(assert (=> b!802808 (= res!547492 (= lt!359179 lt!359178))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359181 () (_ BitVec 64))

(declare-fun lt!359180 () array!43625)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43625 (_ BitVec 32)) SeekEntryResult!8487)

(assert (=> b!802808 (= lt!359178 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359181 lt!359180 mask!3266))))

(assert (=> b!802808 (= lt!359179 (seekEntryOrOpen!0 lt!359181 lt!359180 mask!3266))))

(assert (=> b!802808 (= lt!359181 (select (store (arr!20889 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802808 (= lt!359180 (array!43626 (store (arr!20889 a!3170) i!1163 k!2044) (size!21310 a!3170)))))

(declare-fun b!802809 () Bool)

(assert (=> b!802809 (= e!444901 (not (or (not (= lt!359178 lt!359185)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359177 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802809 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359177 vacantAfter!23 lt!359181 lt!359180 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359177 vacantBefore!23 (select (arr!20889 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27516 0))(
  ( (Unit!27517) )
))
(declare-fun lt!359183 () Unit!27516)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43625 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27516)

(assert (=> b!802809 (= lt!359183 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359177 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802809 (= lt!359177 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802810 () Bool)

(declare-fun res!547491 () Bool)

(assert (=> b!802810 (=> (not res!547491) (not e!444902))))

(assert (=> b!802810 (= res!547491 (and (= (size!21310 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21310 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21310 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802811 () Bool)

(assert (=> b!802811 (= e!444903 e!444904)))

(declare-fun res!547500 () Bool)

(assert (=> b!802811 (=> (not res!547500) (not e!444904))))

(declare-fun lt!359176 () SeekEntryResult!8487)

(assert (=> b!802811 (= res!547500 (= lt!359176 lt!359184))))

(assert (=> b!802811 (= lt!359184 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20889 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802811 (= lt!359176 (seekEntryOrOpen!0 (select (arr!20889 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802812 () Bool)

(declare-fun res!547496 () Bool)

(assert (=> b!802812 (=> (not res!547496) (not e!444899))))

(assert (=> b!802812 (= res!547496 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21310 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20889 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21310 a!3170)) (= (select (arr!20889 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68884 res!547495) b!802810))

(assert (= (and b!802810 res!547491) b!802803))

(assert (= (and b!802803 res!547497) b!802807))

(assert (= (and b!802807 res!547490) b!802804))

(assert (= (and b!802804 res!547499) b!802805))

(assert (= (and b!802805 res!547493) b!802806))

(assert (= (and b!802806 res!547501) b!802802))

(assert (= (and b!802802 res!547498) b!802812))

(assert (= (and b!802812 res!547496) b!802808))

(assert (= (and b!802808 res!547492) b!802811))

(assert (= (and b!802811 res!547500) b!802801))

(assert (= (and b!802801 res!547494) b!802809))

(declare-fun m!744499 () Bool)

(assert (=> b!802805 m!744499))

(declare-fun m!744501 () Bool)

(assert (=> b!802804 m!744501))

(declare-fun m!744503 () Bool)

(assert (=> b!802807 m!744503))

(declare-fun m!744505 () Bool)

(assert (=> b!802801 m!744505))

(declare-fun m!744507 () Bool)

(assert (=> b!802801 m!744507))

(assert (=> b!802809 m!744507))

(declare-fun m!744509 () Bool)

(assert (=> b!802809 m!744509))

(declare-fun m!744511 () Bool)

(assert (=> b!802809 m!744511))

(assert (=> b!802809 m!744507))

(declare-fun m!744513 () Bool)

(assert (=> b!802809 m!744513))

(declare-fun m!744515 () Bool)

(assert (=> b!802809 m!744515))

(declare-fun m!744517 () Bool)

(assert (=> start!68884 m!744517))

(declare-fun m!744519 () Bool)

(assert (=> start!68884 m!744519))

(assert (=> b!802803 m!744507))

(assert (=> b!802803 m!744507))

(declare-fun m!744521 () Bool)

(assert (=> b!802803 m!744521))

(assert (=> b!802811 m!744507))

(assert (=> b!802811 m!744507))

(declare-fun m!744523 () Bool)

(assert (=> b!802811 m!744523))

(assert (=> b!802811 m!744507))

(declare-fun m!744525 () Bool)

(assert (=> b!802811 m!744525))

(declare-fun m!744527 () Bool)

(assert (=> b!802808 m!744527))

(declare-fun m!744529 () Bool)

(assert (=> b!802808 m!744529))

(declare-fun m!744531 () Bool)

(assert (=> b!802808 m!744531))

(declare-fun m!744533 () Bool)

(assert (=> b!802808 m!744533))

(declare-fun m!744535 () Bool)

(assert (=> b!802806 m!744535))

(declare-fun m!744537 () Bool)

(assert (=> b!802802 m!744537))

(declare-fun m!744539 () Bool)

(assert (=> b!802812 m!744539))

(declare-fun m!744541 () Bool)

(assert (=> b!802812 m!744541))

(push 1)

(assert (not b!802803))

(assert (not b!802805))

(assert (not b!802808))

(assert (not b!802806))

(assert (not b!802811))

(assert (not b!802802))

(assert (not b!802807))

(assert (not b!802804))

(assert (not start!68884))

(assert (not b!802809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

