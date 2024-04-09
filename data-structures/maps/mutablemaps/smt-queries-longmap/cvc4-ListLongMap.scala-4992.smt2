; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68486 () Bool)

(assert start!68486)

(declare-fun b!795720 () Bool)

(declare-fun res!540417 () Bool)

(declare-fun e!441617 () Bool)

(assert (=> b!795720 (=> (not res!540417) (not e!441617))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43227 0))(
  ( (array!43228 (arr!20690 (Array (_ BitVec 32) (_ BitVec 64))) (size!21111 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43227)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795720 (= res!540417 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21111 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20690 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21111 a!3170)) (= (select (arr!20690 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795721 () Bool)

(declare-fun e!441619 () Bool)

(assert (=> b!795721 (= e!441617 e!441619)))

(declare-fun res!540411 () Bool)

(assert (=> b!795721 (=> (not res!540411) (not e!441619))))

(declare-fun lt!354741 () (_ BitVec 64))

(declare-fun lt!354744 () array!43227)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8288 0))(
  ( (MissingZero!8288 (index!35519 (_ BitVec 32))) (Found!8288 (index!35520 (_ BitVec 32))) (Intermediate!8288 (undefined!9100 Bool) (index!35521 (_ BitVec 32)) (x!66455 (_ BitVec 32))) (Undefined!8288) (MissingVacant!8288 (index!35522 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43227 (_ BitVec 32)) SeekEntryResult!8288)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43227 (_ BitVec 32)) SeekEntryResult!8288)

(assert (=> b!795721 (= res!540411 (= (seekEntryOrOpen!0 lt!354741 lt!354744 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354741 lt!354744 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795721 (= lt!354741 (select (store (arr!20690 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795721 (= lt!354744 (array!43228 (store (arr!20690 a!3170) i!1163 k!2044) (size!21111 a!3170)))))

(declare-fun b!795722 () Bool)

(declare-fun res!540413 () Bool)

(declare-fun e!441616 () Bool)

(assert (=> b!795722 (=> (not res!540413) (not e!441616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795722 (= res!540413 (validKeyInArray!0 (select (arr!20690 a!3170) j!153)))))

(declare-fun b!795723 () Bool)

(declare-fun lt!354745 () SeekEntryResult!8288)

(declare-fun lt!354743 () SeekEntryResult!8288)

(assert (=> b!795723 (= e!441619 (and (= lt!354743 lt!354745) (= lt!354745 (Found!8288 j!153)) (= (select (arr!20690 a!3170) index!1236) (select (arr!20690 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20690 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!795723 (= lt!354745 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20690 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795723 (= lt!354743 (seekEntryOrOpen!0 (select (arr!20690 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795724 () Bool)

(assert (=> b!795724 (= e!441616 e!441617)))

(declare-fun res!540409 () Bool)

(assert (=> b!795724 (=> (not res!540409) (not e!441617))))

(declare-fun lt!354742 () SeekEntryResult!8288)

(assert (=> b!795724 (= res!540409 (or (= lt!354742 (MissingZero!8288 i!1163)) (= lt!354742 (MissingVacant!8288 i!1163))))))

(assert (=> b!795724 (= lt!354742 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795725 () Bool)

(declare-fun res!540410 () Bool)

(assert (=> b!795725 (=> (not res!540410) (not e!441616))))

(declare-fun arrayContainsKey!0 (array!43227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795725 (= res!540410 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795726 () Bool)

(declare-fun res!540416 () Bool)

(assert (=> b!795726 (=> (not res!540416) (not e!441616))))

(assert (=> b!795726 (= res!540416 (and (= (size!21111 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21111 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21111 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795727 () Bool)

(declare-fun res!540418 () Bool)

(assert (=> b!795727 (=> (not res!540418) (not e!441617))))

(declare-datatypes ((List!14706 0))(
  ( (Nil!14703) (Cons!14702 (h!15831 (_ BitVec 64)) (t!21029 List!14706)) )
))
(declare-fun arrayNoDuplicates!0 (array!43227 (_ BitVec 32) List!14706) Bool)

(assert (=> b!795727 (= res!540418 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14703))))

(declare-fun b!795728 () Bool)

(declare-fun res!540414 () Bool)

(assert (=> b!795728 (=> (not res!540414) (not e!441616))))

(assert (=> b!795728 (= res!540414 (validKeyInArray!0 k!2044))))

(declare-fun b!795729 () Bool)

(declare-fun res!540415 () Bool)

(assert (=> b!795729 (=> (not res!540415) (not e!441617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43227 (_ BitVec 32)) Bool)

(assert (=> b!795729 (= res!540415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!540412 () Bool)

(assert (=> start!68486 (=> (not res!540412) (not e!441616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68486 (= res!540412 (validMask!0 mask!3266))))

(assert (=> start!68486 e!441616))

(assert (=> start!68486 true))

(declare-fun array_inv!16464 (array!43227) Bool)

(assert (=> start!68486 (array_inv!16464 a!3170)))

(assert (= (and start!68486 res!540412) b!795726))

(assert (= (and b!795726 res!540416) b!795722))

(assert (= (and b!795722 res!540413) b!795728))

(assert (= (and b!795728 res!540414) b!795725))

(assert (= (and b!795725 res!540410) b!795724))

(assert (= (and b!795724 res!540409) b!795729))

(assert (= (and b!795729 res!540415) b!795727))

(assert (= (and b!795727 res!540418) b!795720))

(assert (= (and b!795720 res!540417) b!795721))

(assert (= (and b!795721 res!540411) b!795723))

(declare-fun m!736535 () Bool)

(assert (=> b!795724 m!736535))

(declare-fun m!736537 () Bool)

(assert (=> b!795721 m!736537))

(declare-fun m!736539 () Bool)

(assert (=> b!795721 m!736539))

(declare-fun m!736541 () Bool)

(assert (=> b!795721 m!736541))

(declare-fun m!736543 () Bool)

(assert (=> b!795721 m!736543))

(declare-fun m!736545 () Bool)

(assert (=> b!795725 m!736545))

(declare-fun m!736547 () Bool)

(assert (=> b!795720 m!736547))

(declare-fun m!736549 () Bool)

(assert (=> b!795720 m!736549))

(declare-fun m!736551 () Bool)

(assert (=> b!795728 m!736551))

(declare-fun m!736553 () Bool)

(assert (=> start!68486 m!736553))

(declare-fun m!736555 () Bool)

(assert (=> start!68486 m!736555))

(declare-fun m!736557 () Bool)

(assert (=> b!795723 m!736557))

(declare-fun m!736559 () Bool)

(assert (=> b!795723 m!736559))

(declare-fun m!736561 () Bool)

(assert (=> b!795723 m!736561))

(assert (=> b!795723 m!736557))

(declare-fun m!736563 () Bool)

(assert (=> b!795723 m!736563))

(assert (=> b!795723 m!736557))

(declare-fun m!736565 () Bool)

(assert (=> b!795723 m!736565))

(assert (=> b!795723 m!736541))

(declare-fun m!736567 () Bool)

(assert (=> b!795729 m!736567))

(assert (=> b!795722 m!736557))

(assert (=> b!795722 m!736557))

(declare-fun m!736569 () Bool)

(assert (=> b!795722 m!736569))

(declare-fun m!736571 () Bool)

(assert (=> b!795727 m!736571))

(push 1)

(assert (not b!795728))

(assert (not b!795729))

(assert (not b!795721))

(assert (not b!795723))

(assert (not start!68486))

(assert (not b!795727))

(assert (not b!795725))

(assert (not b!795724))

