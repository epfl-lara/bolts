; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68668 () Bool)

(assert start!68668)

(declare-fun b!798798 () Bool)

(declare-fun res!543494 () Bool)

(declare-fun e!443046 () Bool)

(assert (=> b!798798 (=> (not res!543494) (not e!443046))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43409 0))(
  ( (array!43410 (arr!20781 (Array (_ BitVec 32) (_ BitVec 64))) (size!21202 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43409)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798798 (= res!543494 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21202 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20781 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21202 a!3170)) (= (select (arr!20781 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798799 () Bool)

(declare-fun res!543491 () Bool)

(declare-fun e!443045 () Bool)

(assert (=> b!798799 (=> (not res!543491) (not e!443045))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798799 (= res!543491 (validKeyInArray!0 (select (arr!20781 a!3170) j!153)))))

(declare-fun b!798800 () Bool)

(declare-fun res!543495 () Bool)

(assert (=> b!798800 (=> (not res!543495) (not e!443046))))

(declare-datatypes ((List!14797 0))(
  ( (Nil!14794) (Cons!14793 (h!15922 (_ BitVec 64)) (t!21120 List!14797)) )
))
(declare-fun arrayNoDuplicates!0 (array!43409 (_ BitVec 32) List!14797) Bool)

(assert (=> b!798800 (= res!543495 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14794))))

(declare-fun b!798801 () Bool)

(declare-fun res!543498 () Bool)

(assert (=> b!798801 (=> (not res!543498) (not e!443045))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798801 (= res!543498 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798802 () Bool)

(declare-fun e!443050 () Bool)

(assert (=> b!798802 (= e!443046 e!443050)))

(declare-fun res!543489 () Bool)

(assert (=> b!798802 (=> (not res!543489) (not e!443050))))

(declare-fun lt!356650 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!356647 () array!43409)

(declare-datatypes ((SeekEntryResult!8379 0))(
  ( (MissingZero!8379 (index!35883 (_ BitVec 32))) (Found!8379 (index!35884 (_ BitVec 32))) (Intermediate!8379 (undefined!9191 Bool) (index!35885 (_ BitVec 32)) (x!66794 (_ BitVec 32))) (Undefined!8379) (MissingVacant!8379 (index!35886 (_ BitVec 32))) )
))
(declare-fun lt!356645 () SeekEntryResult!8379)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43409 (_ BitVec 32)) SeekEntryResult!8379)

(assert (=> b!798802 (= res!543489 (= lt!356645 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356650 lt!356647 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43409 (_ BitVec 32)) SeekEntryResult!8379)

(assert (=> b!798802 (= lt!356645 (seekEntryOrOpen!0 lt!356650 lt!356647 mask!3266))))

(assert (=> b!798802 (= lt!356650 (select (store (arr!20781 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798802 (= lt!356647 (array!43410 (store (arr!20781 a!3170) i!1163 k!2044) (size!21202 a!3170)))))

(declare-fun b!798803 () Bool)

(declare-fun res!543499 () Bool)

(assert (=> b!798803 (=> (not res!543499) (not e!443045))))

(assert (=> b!798803 (= res!543499 (validKeyInArray!0 k!2044))))

(declare-fun res!543487 () Bool)

(assert (=> start!68668 (=> (not res!543487) (not e!443045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68668 (= res!543487 (validMask!0 mask!3266))))

(assert (=> start!68668 e!443045))

(assert (=> start!68668 true))

(declare-fun array_inv!16555 (array!43409) Bool)

(assert (=> start!68668 (array_inv!16555 a!3170)))

(declare-fun b!798804 () Bool)

(assert (=> b!798804 (= e!443045 e!443046)))

(declare-fun res!543492 () Bool)

(assert (=> b!798804 (=> (not res!543492) (not e!443046))))

(declare-fun lt!356643 () SeekEntryResult!8379)

(assert (=> b!798804 (= res!543492 (or (= lt!356643 (MissingZero!8379 i!1163)) (= lt!356643 (MissingVacant!8379 i!1163))))))

(assert (=> b!798804 (= lt!356643 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798805 () Bool)

(declare-fun e!443047 () Bool)

(assert (=> b!798805 (= e!443050 e!443047)))

(declare-fun res!543493 () Bool)

(assert (=> b!798805 (=> (not res!543493) (not e!443047))))

(declare-fun lt!356644 () SeekEntryResult!8379)

(declare-fun lt!356646 () SeekEntryResult!8379)

(assert (=> b!798805 (= res!543493 (and (= lt!356646 lt!356644) (= lt!356644 (Found!8379 j!153)) (not (= (select (arr!20781 a!3170) index!1236) (select (arr!20781 a!3170) j!153)))))))

(assert (=> b!798805 (= lt!356644 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20781 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798805 (= lt!356646 (seekEntryOrOpen!0 (select (arr!20781 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798806 () Bool)

(declare-fun res!543490 () Bool)

(declare-fun e!443048 () Bool)

(assert (=> b!798806 (=> (not res!543490) (not e!443048))))

(declare-fun lt!356649 () (_ BitVec 32))

(assert (=> b!798806 (= res!543490 (= lt!356645 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356649 vacantAfter!23 lt!356650 lt!356647 mask!3266)))))

(declare-fun b!798807 () Bool)

(declare-fun res!543488 () Bool)

(assert (=> b!798807 (=> (not res!543488) (not e!443046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43409 (_ BitVec 32)) Bool)

(assert (=> b!798807 (= res!543488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798808 () Bool)

(assert (=> b!798808 (= e!443047 e!443048)))

(declare-fun res!543497 () Bool)

(assert (=> b!798808 (=> (not res!543497) (not e!443048))))

(assert (=> b!798808 (= res!543497 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356649 #b00000000000000000000000000000000) (bvslt lt!356649 (size!21202 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798808 (= lt!356649 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798809 () Bool)

(assert (=> b!798809 (= e!443048 false)))

(declare-fun lt!356648 () SeekEntryResult!8379)

(assert (=> b!798809 (= lt!356648 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356649 vacantBefore!23 (select (arr!20781 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798810 () Bool)

(declare-fun res!543496 () Bool)

(assert (=> b!798810 (=> (not res!543496) (not e!443045))))

(assert (=> b!798810 (= res!543496 (and (= (size!21202 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21202 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21202 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68668 res!543487) b!798810))

(assert (= (and b!798810 res!543496) b!798799))

(assert (= (and b!798799 res!543491) b!798803))

(assert (= (and b!798803 res!543499) b!798801))

(assert (= (and b!798801 res!543498) b!798804))

(assert (= (and b!798804 res!543492) b!798807))

(assert (= (and b!798807 res!543488) b!798800))

(assert (= (and b!798800 res!543495) b!798798))

(assert (= (and b!798798 res!543494) b!798802))

(assert (= (and b!798802 res!543489) b!798805))

(assert (= (and b!798805 res!543493) b!798808))

(assert (= (and b!798808 res!543497) b!798806))

(assert (= (and b!798806 res!543490) b!798809))

(declare-fun m!739867 () Bool)

(assert (=> b!798806 m!739867))

(declare-fun m!739869 () Bool)

(assert (=> b!798799 m!739869))

(assert (=> b!798799 m!739869))

(declare-fun m!739871 () Bool)

(assert (=> b!798799 m!739871))

(declare-fun m!739873 () Bool)

(assert (=> b!798808 m!739873))

(declare-fun m!739875 () Bool)

(assert (=> b!798805 m!739875))

(assert (=> b!798805 m!739869))

(assert (=> b!798805 m!739869))

(declare-fun m!739877 () Bool)

(assert (=> b!798805 m!739877))

(assert (=> b!798805 m!739869))

(declare-fun m!739879 () Bool)

(assert (=> b!798805 m!739879))

(declare-fun m!739881 () Bool)

(assert (=> b!798802 m!739881))

(declare-fun m!739883 () Bool)

(assert (=> b!798802 m!739883))

(declare-fun m!739885 () Bool)

(assert (=> b!798802 m!739885))

(declare-fun m!739887 () Bool)

(assert (=> b!798802 m!739887))

(declare-fun m!739889 () Bool)

(assert (=> b!798801 m!739889))

(declare-fun m!739891 () Bool)

(assert (=> b!798798 m!739891))

(declare-fun m!739893 () Bool)

(assert (=> b!798798 m!739893))

(declare-fun m!739895 () Bool)

(assert (=> start!68668 m!739895))

(declare-fun m!739897 () Bool)

(assert (=> start!68668 m!739897))

(declare-fun m!739899 () Bool)

(assert (=> b!798803 m!739899))

(declare-fun m!739901 () Bool)

(assert (=> b!798800 m!739901))

(declare-fun m!739903 () Bool)

(assert (=> b!798807 m!739903))

(declare-fun m!739905 () Bool)

(assert (=> b!798804 m!739905))

(assert (=> b!798809 m!739869))

(assert (=> b!798809 m!739869))

(declare-fun m!739907 () Bool)

(assert (=> b!798809 m!739907))

(push 1)

