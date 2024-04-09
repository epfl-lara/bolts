; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68654 () Bool)

(assert start!68654)

(declare-fun b!798555 () Bool)

(declare-fun res!543245 () Bool)

(declare-fun e!442940 () Bool)

(assert (=> b!798555 (=> (not res!543245) (not e!442940))))

(declare-datatypes ((array!43395 0))(
  ( (array!43396 (arr!20774 (Array (_ BitVec 32) (_ BitVec 64))) (size!21195 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43395)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798555 (= res!543245 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798556 () Bool)

(declare-fun e!442939 () Bool)

(declare-fun e!442941 () Bool)

(assert (=> b!798556 (= e!442939 e!442941)))

(declare-fun res!543244 () Bool)

(assert (=> b!798556 (=> (not res!543244) (not e!442941))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356505 () array!43395)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!356507 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8372 0))(
  ( (MissingZero!8372 (index!35855 (_ BitVec 32))) (Found!8372 (index!35856 (_ BitVec 32))) (Intermediate!8372 (undefined!9184 Bool) (index!35857 (_ BitVec 32)) (x!66763 (_ BitVec 32))) (Undefined!8372) (MissingVacant!8372 (index!35858 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43395 (_ BitVec 32)) SeekEntryResult!8372)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43395 (_ BitVec 32)) SeekEntryResult!8372)

(assert (=> b!798556 (= res!543244 (= (seekEntryOrOpen!0 lt!356507 lt!356505 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356507 lt!356505 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798556 (= lt!356507 (select (store (arr!20774 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798556 (= lt!356505 (array!43396 (store (arr!20774 a!3170) i!1163 k!2044) (size!21195 a!3170)))))

(declare-fun lt!356509 () SeekEntryResult!8372)

(declare-fun b!798557 () Bool)

(declare-fun lt!356506 () SeekEntryResult!8372)

(assert (=> b!798557 (= e!442941 (and (= lt!356509 lt!356506) (= lt!356506 (Found!8372 j!153)) (not (= (select (arr!20774 a!3170) index!1236) (select (arr!20774 a!3170) j!153))) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798557 (= lt!356506 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20774 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798557 (= lt!356509 (seekEntryOrOpen!0 (select (arr!20774 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798558 () Bool)

(declare-fun res!543252 () Bool)

(assert (=> b!798558 (=> (not res!543252) (not e!442939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43395 (_ BitVec 32)) Bool)

(assert (=> b!798558 (= res!543252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798559 () Bool)

(assert (=> b!798559 (= e!442940 e!442939)))

(declare-fun res!543251 () Bool)

(assert (=> b!798559 (=> (not res!543251) (not e!442939))))

(declare-fun lt!356508 () SeekEntryResult!8372)

(assert (=> b!798559 (= res!543251 (or (= lt!356508 (MissingZero!8372 i!1163)) (= lt!356508 (MissingVacant!8372 i!1163))))))

(assert (=> b!798559 (= lt!356508 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798560 () Bool)

(declare-fun res!543247 () Bool)

(assert (=> b!798560 (=> (not res!543247) (not e!442940))))

(assert (=> b!798560 (= res!543247 (and (= (size!21195 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21195 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21195 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798561 () Bool)

(declare-fun res!543248 () Bool)

(assert (=> b!798561 (=> (not res!543248) (not e!442940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798561 (= res!543248 (validKeyInArray!0 k!2044))))

(declare-fun b!798562 () Bool)

(declare-fun res!543250 () Bool)

(assert (=> b!798562 (=> (not res!543250) (not e!442940))))

(assert (=> b!798562 (= res!543250 (validKeyInArray!0 (select (arr!20774 a!3170) j!153)))))

(declare-fun res!543253 () Bool)

(assert (=> start!68654 (=> (not res!543253) (not e!442940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68654 (= res!543253 (validMask!0 mask!3266))))

(assert (=> start!68654 e!442940))

(assert (=> start!68654 true))

(declare-fun array_inv!16548 (array!43395) Bool)

(assert (=> start!68654 (array_inv!16548 a!3170)))

(declare-fun b!798563 () Bool)

(declare-fun res!543249 () Bool)

(assert (=> b!798563 (=> (not res!543249) (not e!442939))))

(declare-datatypes ((List!14790 0))(
  ( (Nil!14787) (Cons!14786 (h!15915 (_ BitVec 64)) (t!21113 List!14790)) )
))
(declare-fun arrayNoDuplicates!0 (array!43395 (_ BitVec 32) List!14790) Bool)

(assert (=> b!798563 (= res!543249 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14787))))

(declare-fun b!798564 () Bool)

(declare-fun res!543246 () Bool)

(assert (=> b!798564 (=> (not res!543246) (not e!442939))))

(assert (=> b!798564 (= res!543246 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21195 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20774 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21195 a!3170)) (= (select (arr!20774 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68654 res!543253) b!798560))

(assert (= (and b!798560 res!543247) b!798562))

(assert (= (and b!798562 res!543250) b!798561))

(assert (= (and b!798561 res!543248) b!798555))

(assert (= (and b!798555 res!543245) b!798559))

(assert (= (and b!798559 res!543251) b!798558))

(assert (= (and b!798558 res!543252) b!798563))

(assert (= (and b!798563 res!543249) b!798564))

(assert (= (and b!798564 res!543246) b!798556))

(assert (= (and b!798556 res!543244) b!798557))

(declare-fun m!739603 () Bool)

(assert (=> b!798555 m!739603))

(declare-fun m!739605 () Bool)

(assert (=> b!798558 m!739605))

(declare-fun m!739607 () Bool)

(assert (=> b!798563 m!739607))

(declare-fun m!739609 () Bool)

(assert (=> b!798557 m!739609))

(declare-fun m!739611 () Bool)

(assert (=> b!798557 m!739611))

(assert (=> b!798557 m!739611))

(declare-fun m!739613 () Bool)

(assert (=> b!798557 m!739613))

(assert (=> b!798557 m!739611))

(declare-fun m!739615 () Bool)

(assert (=> b!798557 m!739615))

(declare-fun m!739617 () Bool)

(assert (=> start!68654 m!739617))

(declare-fun m!739619 () Bool)

(assert (=> start!68654 m!739619))

(declare-fun m!739621 () Bool)

(assert (=> b!798564 m!739621))

(declare-fun m!739623 () Bool)

(assert (=> b!798564 m!739623))

(declare-fun m!739625 () Bool)

(assert (=> b!798561 m!739625))

(declare-fun m!739627 () Bool)

(assert (=> b!798559 m!739627))

(declare-fun m!739629 () Bool)

(assert (=> b!798556 m!739629))

(declare-fun m!739631 () Bool)

(assert (=> b!798556 m!739631))

(declare-fun m!739633 () Bool)

(assert (=> b!798556 m!739633))

(declare-fun m!739635 () Bool)

(assert (=> b!798556 m!739635))

(assert (=> b!798562 m!739611))

(assert (=> b!798562 m!739611))

(declare-fun m!739637 () Bool)

(assert (=> b!798562 m!739637))

(push 1)

(assert (not b!798562))

(assert (not b!798557))

(assert (not b!798558))

(assert (not b!798563))

(assert (not b!798559))

(assert (not b!798555))

(assert (not b!798561))

(assert (not start!68654))

(assert (not b!798556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

