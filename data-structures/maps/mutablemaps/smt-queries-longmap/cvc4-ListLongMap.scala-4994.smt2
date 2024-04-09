; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68498 () Bool)

(assert start!68498)

(declare-fun b!795917 () Bool)

(declare-fun e!441705 () Bool)

(declare-fun e!441709 () Bool)

(assert (=> b!795917 (= e!441705 e!441709)))

(declare-fun res!540609 () Bool)

(assert (=> b!795917 (=> (not res!540609) (not e!441709))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8294 0))(
  ( (MissingZero!8294 (index!35543 (_ BitVec 32))) (Found!8294 (index!35544 (_ BitVec 32))) (Intermediate!8294 (undefined!9106 Bool) (index!35545 (_ BitVec 32)) (x!66477 (_ BitVec 32))) (Undefined!8294) (MissingVacant!8294 (index!35546 (_ BitVec 32))) )
))
(declare-fun lt!354849 () SeekEntryResult!8294)

(declare-datatypes ((array!43239 0))(
  ( (array!43240 (arr!20696 (Array (_ BitVec 32) (_ BitVec 64))) (size!21117 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43239)

(declare-fun lt!354852 () SeekEntryResult!8294)

(assert (=> b!795917 (= res!540609 (and (= lt!354849 lt!354852) (= lt!354852 (Found!8294 j!153)) (= (select (arr!20696 a!3170) index!1236) (select (arr!20696 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43239 (_ BitVec 32)) SeekEntryResult!8294)

(assert (=> b!795917 (= lt!354852 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20696 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43239 (_ BitVec 32)) SeekEntryResult!8294)

(assert (=> b!795917 (= lt!354849 (seekEntryOrOpen!0 (select (arr!20696 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795918 () Bool)

(declare-fun res!540616 () Bool)

(declare-fun e!441706 () Bool)

(assert (=> b!795918 (=> (not res!540616) (not e!441706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43239 (_ BitVec 32)) Bool)

(assert (=> b!795918 (= res!540616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795919 () Bool)

(declare-fun res!540613 () Bool)

(declare-fun e!441707 () Bool)

(assert (=> b!795919 (=> (not res!540613) (not e!441707))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795919 (= res!540613 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795920 () Bool)

(declare-fun res!540608 () Bool)

(assert (=> b!795920 (=> (not res!540608) (not e!441707))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795920 (= res!540608 (and (= (size!21117 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21117 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21117 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795921 () Bool)

(declare-fun res!540607 () Bool)

(assert (=> b!795921 (=> (not res!540607) (not e!441707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795921 (= res!540607 (validKeyInArray!0 k!2044))))

(declare-fun b!795922 () Bool)

(declare-fun res!540614 () Bool)

(assert (=> b!795922 (=> (not res!540614) (not e!441706))))

(declare-datatypes ((List!14712 0))(
  ( (Nil!14709) (Cons!14708 (h!15837 (_ BitVec 64)) (t!21035 List!14712)) )
))
(declare-fun arrayNoDuplicates!0 (array!43239 (_ BitVec 32) List!14712) Bool)

(assert (=> b!795922 (= res!540614 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14709))))

(declare-fun b!795923 () Bool)

(declare-fun res!540615 () Bool)

(assert (=> b!795923 (=> (not res!540615) (not e!441707))))

(assert (=> b!795923 (= res!540615 (validKeyInArray!0 (select (arr!20696 a!3170) j!153)))))

(declare-fun b!795924 () Bool)

(declare-fun res!540610 () Bool)

(assert (=> b!795924 (=> (not res!540610) (not e!441706))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!795924 (= res!540610 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21117 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20696 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21117 a!3170)) (= (select (arr!20696 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!540611 () Bool)

(assert (=> start!68498 (=> (not res!540611) (not e!441707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68498 (= res!540611 (validMask!0 mask!3266))))

(assert (=> start!68498 e!441707))

(assert (=> start!68498 true))

(declare-fun array_inv!16470 (array!43239) Bool)

(assert (=> start!68498 (array_inv!16470 a!3170)))

(declare-fun b!795925 () Bool)

(assert (=> b!795925 (= e!441709 (not true))))

(declare-fun lt!354847 () SeekEntryResult!8294)

(assert (=> b!795925 (= lt!354847 (Found!8294 index!1236))))

(declare-fun b!795926 () Bool)

(assert (=> b!795926 (= e!441706 e!441705)))

(declare-fun res!540606 () Bool)

(assert (=> b!795926 (=> (not res!540606) (not e!441705))))

(declare-fun lt!354850 () SeekEntryResult!8294)

(assert (=> b!795926 (= res!540606 (= lt!354850 lt!354847))))

(declare-fun lt!354848 () array!43239)

(declare-fun lt!354851 () (_ BitVec 64))

(assert (=> b!795926 (= lt!354847 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354851 lt!354848 mask!3266))))

(assert (=> b!795926 (= lt!354850 (seekEntryOrOpen!0 lt!354851 lt!354848 mask!3266))))

(assert (=> b!795926 (= lt!354851 (select (store (arr!20696 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795926 (= lt!354848 (array!43240 (store (arr!20696 a!3170) i!1163 k!2044) (size!21117 a!3170)))))

(declare-fun b!795927 () Bool)

(assert (=> b!795927 (= e!441707 e!441706)))

(declare-fun res!540612 () Bool)

(assert (=> b!795927 (=> (not res!540612) (not e!441706))))

(declare-fun lt!354853 () SeekEntryResult!8294)

(assert (=> b!795927 (= res!540612 (or (= lt!354853 (MissingZero!8294 i!1163)) (= lt!354853 (MissingVacant!8294 i!1163))))))

(assert (=> b!795927 (= lt!354853 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68498 res!540611) b!795920))

(assert (= (and b!795920 res!540608) b!795923))

(assert (= (and b!795923 res!540615) b!795921))

(assert (= (and b!795921 res!540607) b!795919))

(assert (= (and b!795919 res!540613) b!795927))

(assert (= (and b!795927 res!540612) b!795918))

(assert (= (and b!795918 res!540616) b!795922))

(assert (= (and b!795922 res!540614) b!795924))

(assert (= (and b!795924 res!540610) b!795926))

(assert (= (and b!795926 res!540606) b!795917))

(assert (= (and b!795917 res!540609) b!795925))

(declare-fun m!736765 () Bool)

(assert (=> b!795924 m!736765))

(declare-fun m!736767 () Bool)

(assert (=> b!795924 m!736767))

(declare-fun m!736769 () Bool)

(assert (=> b!795926 m!736769))

(declare-fun m!736771 () Bool)

(assert (=> b!795926 m!736771))

(declare-fun m!736773 () Bool)

(assert (=> b!795926 m!736773))

(declare-fun m!736775 () Bool)

(assert (=> b!795926 m!736775))

(declare-fun m!736777 () Bool)

(assert (=> b!795921 m!736777))

(declare-fun m!736779 () Bool)

(assert (=> start!68498 m!736779))

(declare-fun m!736781 () Bool)

(assert (=> start!68498 m!736781))

(declare-fun m!736783 () Bool)

(assert (=> b!795917 m!736783))

(declare-fun m!736785 () Bool)

(assert (=> b!795917 m!736785))

(assert (=> b!795917 m!736785))

(declare-fun m!736787 () Bool)

(assert (=> b!795917 m!736787))

(assert (=> b!795917 m!736785))

(declare-fun m!736789 () Bool)

(assert (=> b!795917 m!736789))

(assert (=> b!795923 m!736785))

(assert (=> b!795923 m!736785))

(declare-fun m!736791 () Bool)

(assert (=> b!795923 m!736791))

(declare-fun m!736793 () Bool)

(assert (=> b!795918 m!736793))

(declare-fun m!736795 () Bool)

(assert (=> b!795927 m!736795))

(declare-fun m!736797 () Bool)

(assert (=> b!795919 m!736797))

(declare-fun m!736799 () Bool)

(assert (=> b!795922 m!736799))

(push 1)

