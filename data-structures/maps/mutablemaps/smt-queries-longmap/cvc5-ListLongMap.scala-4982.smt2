; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68422 () Bool)

(assert start!68422)

(declare-fun res!539441 () Bool)

(declare-fun e!441235 () Bool)

(assert (=> start!68422 (=> (not res!539441) (not e!441235))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68422 (= res!539441 (validMask!0 mask!3266))))

(assert (=> start!68422 e!441235))

(assert (=> start!68422 true))

(declare-datatypes ((array!43163 0))(
  ( (array!43164 (arr!20658 (Array (_ BitVec 32) (_ BitVec 64))) (size!21079 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43163)

(declare-fun array_inv!16432 (array!43163) Bool)

(assert (=> start!68422 (array_inv!16432 a!3170)))

(declare-fun b!794751 () Bool)

(declare-fun res!539448 () Bool)

(declare-fun e!441233 () Bool)

(assert (=> b!794751 (=> (not res!539448) (not e!441233))))

(declare-datatypes ((List!14674 0))(
  ( (Nil!14671) (Cons!14670 (h!15799 (_ BitVec 64)) (t!20997 List!14674)) )
))
(declare-fun arrayNoDuplicates!0 (array!43163 (_ BitVec 32) List!14674) Bool)

(assert (=> b!794751 (= res!539448 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14671))))

(declare-fun b!794752 () Bool)

(declare-fun res!539446 () Bool)

(assert (=> b!794752 (=> (not res!539446) (not e!441235))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794752 (= res!539446 (validKeyInArray!0 k!2044))))

(declare-fun b!794753 () Bool)

(declare-fun res!539447 () Bool)

(assert (=> b!794753 (=> (not res!539447) (not e!441235))))

(declare-fun arrayContainsKey!0 (array!43163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794753 (= res!539447 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794754 () Bool)

(declare-fun res!539445 () Bool)

(assert (=> b!794754 (=> (not res!539445) (not e!441235))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794754 (= res!539445 (and (= (size!21079 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21079 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21079 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794755 () Bool)

(declare-fun res!539440 () Bool)

(assert (=> b!794755 (=> (not res!539440) (not e!441233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43163 (_ BitVec 32)) Bool)

(assert (=> b!794755 (= res!539440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794756 () Bool)

(declare-fun e!441234 () Bool)

(assert (=> b!794756 (= e!441233 e!441234)))

(declare-fun res!539449 () Bool)

(assert (=> b!794756 (=> (not res!539449) (not e!441234))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354281 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354279 () array!43163)

(declare-datatypes ((SeekEntryResult!8256 0))(
  ( (MissingZero!8256 (index!35391 (_ BitVec 32))) (Found!8256 (index!35392 (_ BitVec 32))) (Intermediate!8256 (undefined!9068 Bool) (index!35393 (_ BitVec 32)) (x!66343 (_ BitVec 32))) (Undefined!8256) (MissingVacant!8256 (index!35394 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43163 (_ BitVec 32)) SeekEntryResult!8256)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43163 (_ BitVec 32)) SeekEntryResult!8256)

(assert (=> b!794756 (= res!539449 (= (seekEntryOrOpen!0 lt!354281 lt!354279 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354281 lt!354279 mask!3266)))))

(assert (=> b!794756 (= lt!354281 (select (store (arr!20658 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794756 (= lt!354279 (array!43164 (store (arr!20658 a!3170) i!1163 k!2044) (size!21079 a!3170)))))

(declare-fun b!794757 () Bool)

(declare-fun res!539442 () Bool)

(assert (=> b!794757 (=> (not res!539442) (not e!441235))))

(assert (=> b!794757 (= res!539442 (validKeyInArray!0 (select (arr!20658 a!3170) j!153)))))

(declare-fun b!794758 () Bool)

(assert (=> b!794758 (= e!441235 e!441233)))

(declare-fun res!539444 () Bool)

(assert (=> b!794758 (=> (not res!539444) (not e!441233))))

(declare-fun lt!354282 () SeekEntryResult!8256)

(assert (=> b!794758 (= res!539444 (or (= lt!354282 (MissingZero!8256 i!1163)) (= lt!354282 (MissingVacant!8256 i!1163))))))

(assert (=> b!794758 (= lt!354282 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794759 () Bool)

(declare-fun res!539443 () Bool)

(assert (=> b!794759 (=> (not res!539443) (not e!441233))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794759 (= res!539443 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21079 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20658 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21079 a!3170)) (= (select (arr!20658 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794760 () Bool)

(assert (=> b!794760 (= e!441234 false)))

(declare-fun lt!354280 () SeekEntryResult!8256)

(assert (=> b!794760 (= lt!354280 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20658 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354283 () SeekEntryResult!8256)

(assert (=> b!794760 (= lt!354283 (seekEntryOrOpen!0 (select (arr!20658 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68422 res!539441) b!794754))

(assert (= (and b!794754 res!539445) b!794757))

(assert (= (and b!794757 res!539442) b!794752))

(assert (= (and b!794752 res!539446) b!794753))

(assert (= (and b!794753 res!539447) b!794758))

(assert (= (and b!794758 res!539444) b!794755))

(assert (= (and b!794755 res!539440) b!794751))

(assert (= (and b!794751 res!539448) b!794759))

(assert (= (and b!794759 res!539443) b!794756))

(assert (= (and b!794756 res!539449) b!794760))

(declare-fun m!735421 () Bool)

(assert (=> b!794752 m!735421))

(declare-fun m!735423 () Bool)

(assert (=> b!794760 m!735423))

(assert (=> b!794760 m!735423))

(declare-fun m!735425 () Bool)

(assert (=> b!794760 m!735425))

(assert (=> b!794760 m!735423))

(declare-fun m!735427 () Bool)

(assert (=> b!794760 m!735427))

(declare-fun m!735429 () Bool)

(assert (=> b!794751 m!735429))

(declare-fun m!735431 () Bool)

(assert (=> b!794753 m!735431))

(declare-fun m!735433 () Bool)

(assert (=> b!794759 m!735433))

(declare-fun m!735435 () Bool)

(assert (=> b!794759 m!735435))

(declare-fun m!735437 () Bool)

(assert (=> b!794756 m!735437))

(declare-fun m!735439 () Bool)

(assert (=> b!794756 m!735439))

(declare-fun m!735441 () Bool)

(assert (=> b!794756 m!735441))

(declare-fun m!735443 () Bool)

(assert (=> b!794756 m!735443))

(declare-fun m!735445 () Bool)

(assert (=> start!68422 m!735445))

(declare-fun m!735447 () Bool)

(assert (=> start!68422 m!735447))

(declare-fun m!735449 () Bool)

(assert (=> b!794758 m!735449))

(assert (=> b!794757 m!735423))

(assert (=> b!794757 m!735423))

(declare-fun m!735451 () Bool)

(assert (=> b!794757 m!735451))

(declare-fun m!735453 () Bool)

(assert (=> b!794755 m!735453))

(push 1)

