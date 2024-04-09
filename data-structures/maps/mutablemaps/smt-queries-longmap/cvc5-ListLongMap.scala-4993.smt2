; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68488 () Bool)

(assert start!68488)

(declare-fun b!795752 () Bool)

(declare-fun res!540450 () Bool)

(declare-fun e!441634 () Bool)

(assert (=> b!795752 (=> (not res!540450) (not e!441634))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43229 0))(
  ( (array!43230 (arr!20691 (Array (_ BitVec 32) (_ BitVec 64))) (size!21112 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43229)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795752 (= res!540450 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21112 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20691 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21112 a!3170)) (= (select (arr!20691 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795753 () Bool)

(declare-fun e!441631 () Bool)

(assert (=> b!795753 (= e!441631 e!441634)))

(declare-fun res!540446 () Bool)

(assert (=> b!795753 (=> (not res!540446) (not e!441634))))

(declare-datatypes ((SeekEntryResult!8289 0))(
  ( (MissingZero!8289 (index!35523 (_ BitVec 32))) (Found!8289 (index!35524 (_ BitVec 32))) (Intermediate!8289 (undefined!9101 Bool) (index!35525 (_ BitVec 32)) (x!66464 (_ BitVec 32))) (Undefined!8289) (MissingVacant!8289 (index!35526 (_ BitVec 32))) )
))
(declare-fun lt!354756 () SeekEntryResult!8289)

(assert (=> b!795753 (= res!540446 (or (= lt!354756 (MissingZero!8289 i!1163)) (= lt!354756 (MissingVacant!8289 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43229 (_ BitVec 32)) SeekEntryResult!8289)

(assert (=> b!795753 (= lt!354756 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795754 () Bool)

(declare-fun res!540443 () Bool)

(assert (=> b!795754 (=> (not res!540443) (not e!441631))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795754 (= res!540443 (validKeyInArray!0 (select (arr!20691 a!3170) j!153)))))

(declare-fun b!795755 () Bool)

(declare-fun res!540451 () Bool)

(assert (=> b!795755 (=> (not res!540451) (not e!441634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43229 (_ BitVec 32)) Bool)

(assert (=> b!795755 (= res!540451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795756 () Bool)

(declare-fun res!540444 () Bool)

(assert (=> b!795756 (=> (not res!540444) (not e!441634))))

(declare-datatypes ((List!14707 0))(
  ( (Nil!14704) (Cons!14703 (h!15832 (_ BitVec 64)) (t!21030 List!14707)) )
))
(declare-fun arrayNoDuplicates!0 (array!43229 (_ BitVec 32) List!14707) Bool)

(assert (=> b!795756 (= res!540444 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14704))))

(declare-fun res!540442 () Bool)

(assert (=> start!68488 (=> (not res!540442) (not e!441631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68488 (= res!540442 (validMask!0 mask!3266))))

(assert (=> start!68488 e!441631))

(assert (=> start!68488 true))

(declare-fun array_inv!16465 (array!43229) Bool)

(assert (=> start!68488 (array_inv!16465 a!3170)))

(declare-fun b!795757 () Bool)

(declare-fun e!441633 () Bool)

(declare-fun lt!354757 () (_ BitVec 64))

(assert (=> b!795757 (= e!441633 (not (validKeyInArray!0 lt!354757)))))

(declare-fun b!795758 () Bool)

(declare-fun e!441630 () Bool)

(assert (=> b!795758 (= e!441630 e!441633)))

(declare-fun res!540445 () Bool)

(assert (=> b!795758 (=> (not res!540445) (not e!441633))))

(declare-fun lt!354759 () SeekEntryResult!8289)

(declare-fun lt!354758 () SeekEntryResult!8289)

(assert (=> b!795758 (= res!540445 (and (= lt!354758 lt!354759) (= lt!354759 (Found!8289 j!153)) (= (select (arr!20691 a!3170) index!1236) (select (arr!20691 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20691 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43229 (_ BitVec 32)) SeekEntryResult!8289)

(assert (=> b!795758 (= lt!354759 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20691 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795758 (= lt!354758 (seekEntryOrOpen!0 (select (arr!20691 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795759 () Bool)

(declare-fun res!540448 () Bool)

(assert (=> b!795759 (=> (not res!540448) (not e!441631))))

(assert (=> b!795759 (= res!540448 (and (= (size!21112 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21112 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21112 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795760 () Bool)

(assert (=> b!795760 (= e!441634 e!441630)))

(declare-fun res!540447 () Bool)

(assert (=> b!795760 (=> (not res!540447) (not e!441630))))

(declare-fun lt!354760 () array!43229)

(assert (=> b!795760 (= res!540447 (= (seekEntryOrOpen!0 lt!354757 lt!354760 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354757 lt!354760 mask!3266)))))

(assert (=> b!795760 (= lt!354757 (select (store (arr!20691 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795760 (= lt!354760 (array!43230 (store (arr!20691 a!3170) i!1163 k!2044) (size!21112 a!3170)))))

(declare-fun b!795761 () Bool)

(declare-fun res!540441 () Bool)

(assert (=> b!795761 (=> (not res!540441) (not e!441631))))

(declare-fun arrayContainsKey!0 (array!43229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795761 (= res!540441 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795762 () Bool)

(declare-fun res!540449 () Bool)

(assert (=> b!795762 (=> (not res!540449) (not e!441631))))

(assert (=> b!795762 (= res!540449 (validKeyInArray!0 k!2044))))

(assert (= (and start!68488 res!540442) b!795759))

(assert (= (and b!795759 res!540448) b!795754))

(assert (= (and b!795754 res!540443) b!795762))

(assert (= (and b!795762 res!540449) b!795761))

(assert (= (and b!795761 res!540441) b!795753))

(assert (= (and b!795753 res!540446) b!795755))

(assert (= (and b!795755 res!540451) b!795756))

(assert (= (and b!795756 res!540444) b!795752))

(assert (= (and b!795752 res!540450) b!795760))

(assert (= (and b!795760 res!540447) b!795758))

(assert (= (and b!795758 res!540445) b!795757))

(declare-fun m!736573 () Bool)

(assert (=> b!795754 m!736573))

(assert (=> b!795754 m!736573))

(declare-fun m!736575 () Bool)

(assert (=> b!795754 m!736575))

(declare-fun m!736577 () Bool)

(assert (=> b!795762 m!736577))

(declare-fun m!736579 () Bool)

(assert (=> b!795761 m!736579))

(declare-fun m!736581 () Bool)

(assert (=> b!795760 m!736581))

(declare-fun m!736583 () Bool)

(assert (=> b!795760 m!736583))

(declare-fun m!736585 () Bool)

(assert (=> b!795760 m!736585))

(declare-fun m!736587 () Bool)

(assert (=> b!795760 m!736587))

(declare-fun m!736589 () Bool)

(assert (=> b!795756 m!736589))

(declare-fun m!736591 () Bool)

(assert (=> b!795752 m!736591))

(declare-fun m!736593 () Bool)

(assert (=> b!795752 m!736593))

(declare-fun m!736595 () Bool)

(assert (=> b!795755 m!736595))

(declare-fun m!736597 () Bool)

(assert (=> start!68488 m!736597))

(declare-fun m!736599 () Bool)

(assert (=> start!68488 m!736599))

(assert (=> b!795758 m!736573))

(declare-fun m!736601 () Bool)

(assert (=> b!795758 m!736601))

(declare-fun m!736603 () Bool)

(assert (=> b!795758 m!736603))

(assert (=> b!795758 m!736573))

(declare-fun m!736605 () Bool)

(assert (=> b!795758 m!736605))

(assert (=> b!795758 m!736573))

(declare-fun m!736607 () Bool)

(assert (=> b!795758 m!736607))

(assert (=> b!795758 m!736585))

(declare-fun m!736609 () Bool)

(assert (=> b!795757 m!736609))

(declare-fun m!736611 () Bool)

(assert (=> b!795753 m!736611))

(push 1)

