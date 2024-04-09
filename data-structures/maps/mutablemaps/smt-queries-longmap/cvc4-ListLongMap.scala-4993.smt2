; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68492 () Bool)

(assert start!68492)

(declare-fun b!795818 () Bool)

(declare-fun e!441662 () Bool)

(declare-fun lt!354790 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795818 (= e!441662 (not (validKeyInArray!0 lt!354790)))))

(declare-fun b!795819 () Bool)

(declare-fun e!441660 () Bool)

(declare-fun e!441661 () Bool)

(assert (=> b!795819 (= e!441660 e!441661)))

(declare-fun res!540514 () Bool)

(assert (=> b!795819 (=> (not res!540514) (not e!441661))))

(declare-datatypes ((SeekEntryResult!8291 0))(
  ( (MissingZero!8291 (index!35531 (_ BitVec 32))) (Found!8291 (index!35532 (_ BitVec 32))) (Intermediate!8291 (undefined!9103 Bool) (index!35533 (_ BitVec 32)) (x!66466 (_ BitVec 32))) (Undefined!8291) (MissingVacant!8291 (index!35534 (_ BitVec 32))) )
))
(declare-fun lt!354789 () SeekEntryResult!8291)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795819 (= res!540514 (or (= lt!354789 (MissingZero!8291 i!1163)) (= lt!354789 (MissingVacant!8291 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43233 0))(
  ( (array!43234 (arr!20693 (Array (_ BitVec 32) (_ BitVec 64))) (size!21114 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43233)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43233 (_ BitVec 32)) SeekEntryResult!8291)

(assert (=> b!795819 (= lt!354789 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!540513 () Bool)

(assert (=> start!68492 (=> (not res!540513) (not e!441660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68492 (= res!540513 (validMask!0 mask!3266))))

(assert (=> start!68492 e!441660))

(assert (=> start!68492 true))

(declare-fun array_inv!16467 (array!43233) Bool)

(assert (=> start!68492 (array_inv!16467 a!3170)))

(declare-fun b!795820 () Bool)

(declare-fun res!540508 () Bool)

(assert (=> b!795820 (=> (not res!540508) (not e!441661))))

(declare-datatypes ((List!14709 0))(
  ( (Nil!14706) (Cons!14705 (h!15834 (_ BitVec 64)) (t!21032 List!14709)) )
))
(declare-fun arrayNoDuplicates!0 (array!43233 (_ BitVec 32) List!14709) Bool)

(assert (=> b!795820 (= res!540508 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14706))))

(declare-fun b!795821 () Bool)

(declare-fun res!540510 () Bool)

(assert (=> b!795821 (=> (not res!540510) (not e!441661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43233 (_ BitVec 32)) Bool)

(assert (=> b!795821 (= res!540510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795822 () Bool)

(declare-fun e!441663 () Bool)

(assert (=> b!795822 (= e!441663 e!441662)))

(declare-fun res!540509 () Bool)

(assert (=> b!795822 (=> (not res!540509) (not e!441662))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!354787 () SeekEntryResult!8291)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354788 () SeekEntryResult!8291)

(assert (=> b!795822 (= res!540509 (and (= lt!354787 lt!354788) (= lt!354788 (Found!8291 j!153)) (= (select (arr!20693 a!3170) index!1236) (select (arr!20693 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20693 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43233 (_ BitVec 32)) SeekEntryResult!8291)

(assert (=> b!795822 (= lt!354788 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20693 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795822 (= lt!354787 (seekEntryOrOpen!0 (select (arr!20693 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795823 () Bool)

(declare-fun res!540516 () Bool)

(assert (=> b!795823 (=> (not res!540516) (not e!441660))))

(assert (=> b!795823 (= res!540516 (validKeyInArray!0 k!2044))))

(declare-fun b!795824 () Bool)

(assert (=> b!795824 (= e!441661 e!441663)))

(declare-fun res!540511 () Bool)

(assert (=> b!795824 (=> (not res!540511) (not e!441663))))

(declare-fun lt!354786 () array!43233)

(assert (=> b!795824 (= res!540511 (= (seekEntryOrOpen!0 lt!354790 lt!354786 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354790 lt!354786 mask!3266)))))

(assert (=> b!795824 (= lt!354790 (select (store (arr!20693 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795824 (= lt!354786 (array!43234 (store (arr!20693 a!3170) i!1163 k!2044) (size!21114 a!3170)))))

(declare-fun b!795825 () Bool)

(declare-fun res!540517 () Bool)

(assert (=> b!795825 (=> (not res!540517) (not e!441660))))

(assert (=> b!795825 (= res!540517 (validKeyInArray!0 (select (arr!20693 a!3170) j!153)))))

(declare-fun b!795826 () Bool)

(declare-fun res!540507 () Bool)

(assert (=> b!795826 (=> (not res!540507) (not e!441661))))

(assert (=> b!795826 (= res!540507 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21114 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20693 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21114 a!3170)) (= (select (arr!20693 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795827 () Bool)

(declare-fun res!540515 () Bool)

(assert (=> b!795827 (=> (not res!540515) (not e!441660))))

(declare-fun arrayContainsKey!0 (array!43233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795827 (= res!540515 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795828 () Bool)

(declare-fun res!540512 () Bool)

(assert (=> b!795828 (=> (not res!540512) (not e!441660))))

(assert (=> b!795828 (= res!540512 (and (= (size!21114 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21114 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21114 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68492 res!540513) b!795828))

(assert (= (and b!795828 res!540512) b!795825))

(assert (= (and b!795825 res!540517) b!795823))

(assert (= (and b!795823 res!540516) b!795827))

(assert (= (and b!795827 res!540515) b!795819))

(assert (= (and b!795819 res!540514) b!795821))

(assert (= (and b!795821 res!540510) b!795820))

(assert (= (and b!795820 res!540508) b!795826))

(assert (= (and b!795826 res!540507) b!795824))

(assert (= (and b!795824 res!540511) b!795822))

(assert (= (and b!795822 res!540509) b!795818))

(declare-fun m!736653 () Bool)

(assert (=> b!795818 m!736653))

(declare-fun m!736655 () Bool)

(assert (=> b!795824 m!736655))

(declare-fun m!736657 () Bool)

(assert (=> b!795824 m!736657))

(declare-fun m!736659 () Bool)

(assert (=> b!795824 m!736659))

(declare-fun m!736661 () Bool)

(assert (=> b!795824 m!736661))

(declare-fun m!736663 () Bool)

(assert (=> b!795827 m!736663))

(declare-fun m!736665 () Bool)

(assert (=> start!68492 m!736665))

(declare-fun m!736667 () Bool)

(assert (=> start!68492 m!736667))

(declare-fun m!736669 () Bool)

(assert (=> b!795820 m!736669))

(declare-fun m!736671 () Bool)

(assert (=> b!795825 m!736671))

(assert (=> b!795825 m!736671))

(declare-fun m!736673 () Bool)

(assert (=> b!795825 m!736673))

(declare-fun m!736675 () Bool)

(assert (=> b!795819 m!736675))

(assert (=> b!795822 m!736671))

(declare-fun m!736677 () Bool)

(assert (=> b!795822 m!736677))

(declare-fun m!736679 () Bool)

(assert (=> b!795822 m!736679))

(assert (=> b!795822 m!736671))

(declare-fun m!736681 () Bool)

(assert (=> b!795822 m!736681))

(assert (=> b!795822 m!736671))

(declare-fun m!736683 () Bool)

(assert (=> b!795822 m!736683))

(assert (=> b!795822 m!736659))

(declare-fun m!736685 () Bool)

(assert (=> b!795821 m!736685))

(declare-fun m!736687 () Bool)

(assert (=> b!795823 m!736687))

(declare-fun m!736689 () Bool)

(assert (=> b!795826 m!736689))

(declare-fun m!736691 () Bool)

(assert (=> b!795826 m!736691))

(push 1)

(assert (not start!68492))

(assert (not b!795818))

(assert (not b!795821))

(assert (not b!795819))

(assert (not b!795820))

(assert (not b!795825))

(assert (not b!795822))

(assert (not b!795824))

(assert (not b!795827))

(assert (not b!795823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

