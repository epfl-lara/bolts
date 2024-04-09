; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68608 () Bool)

(assert start!68608)

(declare-fun b!797806 () Bool)

(declare-fun e!442609 () Bool)

(declare-fun e!442606 () Bool)

(assert (=> b!797806 (= e!442609 e!442606)))

(declare-fun res!542497 () Bool)

(assert (=> b!797806 (=> (not res!542497) (not e!442606))))

(declare-datatypes ((SeekEntryResult!8349 0))(
  ( (MissingZero!8349 (index!35763 (_ BitVec 32))) (Found!8349 (index!35764 (_ BitVec 32))) (Intermediate!8349 (undefined!9161 Bool) (index!35765 (_ BitVec 32)) (x!66684 (_ BitVec 32))) (Undefined!8349) (MissingVacant!8349 (index!35766 (_ BitVec 32))) )
))
(declare-fun lt!356065 () SeekEntryResult!8349)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797806 (= res!542497 (or (= lt!356065 (MissingZero!8349 i!1163)) (= lt!356065 (MissingVacant!8349 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43349 0))(
  ( (array!43350 (arr!20751 (Array (_ BitVec 32) (_ BitVec 64))) (size!21172 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43349)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43349 (_ BitVec 32)) SeekEntryResult!8349)

(assert (=> b!797806 (= lt!356065 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!542502 () Bool)

(assert (=> start!68608 (=> (not res!542502) (not e!442609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68608 (= res!542502 (validMask!0 mask!3266))))

(assert (=> start!68608 e!442609))

(assert (=> start!68608 true))

(declare-fun array_inv!16525 (array!43349) Bool)

(assert (=> start!68608 (array_inv!16525 a!3170)))

(declare-fun b!797807 () Bool)

(declare-fun res!542506 () Bool)

(assert (=> b!797807 (=> (not res!542506) (not e!442609))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797807 (= res!542506 (and (= (size!21172 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21172 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21172 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797808 () Bool)

(declare-fun res!542495 () Bool)

(assert (=> b!797808 (=> (not res!542495) (not e!442609))))

(declare-fun arrayContainsKey!0 (array!43349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797808 (= res!542495 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797809 () Bool)

(declare-fun e!442607 () Bool)

(assert (=> b!797809 (= e!442606 e!442607)))

(declare-fun res!542500 () Bool)

(assert (=> b!797809 (=> (not res!542500) (not e!442607))))

(declare-fun lt!356061 () SeekEntryResult!8349)

(declare-fun lt!356064 () SeekEntryResult!8349)

(assert (=> b!797809 (= res!542500 (= lt!356061 lt!356064))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356058 () array!43349)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!356059 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43349 (_ BitVec 32)) SeekEntryResult!8349)

(assert (=> b!797809 (= lt!356064 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356059 lt!356058 mask!3266))))

(assert (=> b!797809 (= lt!356061 (seekEntryOrOpen!0 lt!356059 lt!356058 mask!3266))))

(assert (=> b!797809 (= lt!356059 (select (store (arr!20751 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797809 (= lt!356058 (array!43350 (store (arr!20751 a!3170) i!1163 k!2044) (size!21172 a!3170)))))

(declare-fun b!797810 () Bool)

(declare-fun res!542498 () Bool)

(assert (=> b!797810 (=> (not res!542498) (not e!442609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797810 (= res!542498 (validKeyInArray!0 (select (arr!20751 a!3170) j!153)))))

(declare-fun b!797811 () Bool)

(declare-fun res!542501 () Bool)

(assert (=> b!797811 (=> (not res!542501) (not e!442606))))

(declare-datatypes ((List!14767 0))(
  ( (Nil!14764) (Cons!14763 (h!15892 (_ BitVec 64)) (t!21090 List!14767)) )
))
(declare-fun arrayNoDuplicates!0 (array!43349 (_ BitVec 32) List!14767) Bool)

(assert (=> b!797811 (= res!542501 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14764))))

(declare-fun b!797812 () Bool)

(declare-fun res!542503 () Bool)

(assert (=> b!797812 (=> (not res!542503) (not e!442606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43349 (_ BitVec 32)) Bool)

(assert (=> b!797812 (= res!542503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797813 () Bool)

(declare-fun e!442604 () Bool)

(assert (=> b!797813 (= e!442607 e!442604)))

(declare-fun res!542496 () Bool)

(assert (=> b!797813 (=> (not res!542496) (not e!442604))))

(declare-fun lt!356063 () SeekEntryResult!8349)

(declare-fun lt!356062 () SeekEntryResult!8349)

(assert (=> b!797813 (= res!542496 (= lt!356063 lt!356062))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797813 (= lt!356062 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20751 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797813 (= lt!356063 (seekEntryOrOpen!0 (select (arr!20751 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797814 () Bool)

(declare-fun e!442605 () Bool)

(declare-fun lt!356060 () SeekEntryResult!8349)

(assert (=> b!797814 (= e!442605 (not (or (not (= lt!356064 lt!356060)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797814 (= lt!356064 (Found!8349 index!1236))))

(declare-fun b!797815 () Bool)

(declare-fun res!542504 () Bool)

(assert (=> b!797815 (=> (not res!542504) (not e!442609))))

(assert (=> b!797815 (= res!542504 (validKeyInArray!0 k!2044))))

(declare-fun b!797816 () Bool)

(declare-fun res!542505 () Bool)

(assert (=> b!797816 (=> (not res!542505) (not e!442606))))

(assert (=> b!797816 (= res!542505 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21172 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20751 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21172 a!3170)) (= (select (arr!20751 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797817 () Bool)

(assert (=> b!797817 (= e!442604 e!442605)))

(declare-fun res!542499 () Bool)

(assert (=> b!797817 (=> (not res!542499) (not e!442605))))

(assert (=> b!797817 (= res!542499 (and (= lt!356062 lt!356060) (= (select (arr!20751 a!3170) index!1236) (select (arr!20751 a!3170) j!153))))))

(assert (=> b!797817 (= lt!356060 (Found!8349 j!153))))

(assert (= (and start!68608 res!542502) b!797807))

(assert (= (and b!797807 res!542506) b!797810))

(assert (= (and b!797810 res!542498) b!797815))

(assert (= (and b!797815 res!542504) b!797808))

(assert (= (and b!797808 res!542495) b!797806))

(assert (= (and b!797806 res!542497) b!797812))

(assert (= (and b!797812 res!542503) b!797811))

(assert (= (and b!797811 res!542501) b!797816))

(assert (= (and b!797816 res!542505) b!797809))

(assert (= (and b!797809 res!542500) b!797813))

(assert (= (and b!797813 res!542496) b!797817))

(assert (= (and b!797817 res!542499) b!797814))

(declare-fun m!738781 () Bool)

(assert (=> b!797811 m!738781))

(declare-fun m!738783 () Bool)

(assert (=> b!797813 m!738783))

(assert (=> b!797813 m!738783))

(declare-fun m!738785 () Bool)

(assert (=> b!797813 m!738785))

(assert (=> b!797813 m!738783))

(declare-fun m!738787 () Bool)

(assert (=> b!797813 m!738787))

(declare-fun m!738789 () Bool)

(assert (=> b!797812 m!738789))

(declare-fun m!738791 () Bool)

(assert (=> b!797816 m!738791))

(declare-fun m!738793 () Bool)

(assert (=> b!797816 m!738793))

(declare-fun m!738795 () Bool)

(assert (=> b!797809 m!738795))

(declare-fun m!738797 () Bool)

(assert (=> b!797809 m!738797))

(declare-fun m!738799 () Bool)

(assert (=> b!797809 m!738799))

(declare-fun m!738801 () Bool)

(assert (=> b!797809 m!738801))

(assert (=> b!797810 m!738783))

(assert (=> b!797810 m!738783))

(declare-fun m!738803 () Bool)

(assert (=> b!797810 m!738803))

(declare-fun m!738805 () Bool)

(assert (=> b!797817 m!738805))

(assert (=> b!797817 m!738783))

(declare-fun m!738807 () Bool)

(assert (=> b!797815 m!738807))

(declare-fun m!738809 () Bool)

(assert (=> b!797808 m!738809))

(declare-fun m!738811 () Bool)

(assert (=> start!68608 m!738811))

(declare-fun m!738813 () Bool)

(assert (=> start!68608 m!738813))

(declare-fun m!738815 () Bool)

(assert (=> b!797806 m!738815))

(push 1)

(assert (not b!797811))

(assert (not b!797810))

(assert (not b!797809))

(assert (not b!797815))

(assert (not b!797808))

(assert (not start!68608))

(assert (not b!797806))

(assert (not b!797812))

(assert (not b!797813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

