; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68614 () Bool)

(assert start!68614)

(declare-fun res!542607 () Bool)

(declare-fun e!442658 () Bool)

(assert (=> start!68614 (=> (not res!542607) (not e!442658))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68614 (= res!542607 (validMask!0 mask!3266))))

(assert (=> start!68614 e!442658))

(assert (=> start!68614 true))

(declare-datatypes ((array!43355 0))(
  ( (array!43356 (arr!20754 (Array (_ BitVec 32) (_ BitVec 64))) (size!21175 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43355)

(declare-fun array_inv!16528 (array!43355) Bool)

(assert (=> start!68614 (array_inv!16528 a!3170)))

(declare-fun b!797912 () Bool)

(declare-fun res!542601 () Bool)

(assert (=> b!797912 (=> (not res!542601) (not e!442658))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797912 (= res!542601 (and (= (size!21175 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21175 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21175 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797913 () Bool)

(declare-fun e!442660 () Bool)

(declare-fun e!442659 () Bool)

(assert (=> b!797913 (= e!442660 e!442659)))

(declare-fun res!542608 () Bool)

(assert (=> b!797913 (=> (not res!542608) (not e!442659))))

(declare-datatypes ((SeekEntryResult!8352 0))(
  ( (MissingZero!8352 (index!35775 (_ BitVec 32))) (Found!8352 (index!35776 (_ BitVec 32))) (Intermediate!8352 (undefined!9164 Bool) (index!35777 (_ BitVec 32)) (x!66695 (_ BitVec 32))) (Undefined!8352) (MissingVacant!8352 (index!35778 (_ BitVec 32))) )
))
(declare-fun lt!356128 () SeekEntryResult!8352)

(declare-fun lt!356130 () SeekEntryResult!8352)

(assert (=> b!797913 (= res!542608 (= lt!356128 lt!356130))))

(declare-fun lt!356131 () array!43355)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356133 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43355 (_ BitVec 32)) SeekEntryResult!8352)

(assert (=> b!797913 (= lt!356130 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356133 lt!356131 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43355 (_ BitVec 32)) SeekEntryResult!8352)

(assert (=> b!797913 (= lt!356128 (seekEntryOrOpen!0 lt!356133 lt!356131 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!797913 (= lt!356133 (select (store (arr!20754 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797913 (= lt!356131 (array!43356 (store (arr!20754 a!3170) i!1163 k!2044) (size!21175 a!3170)))))

(declare-fun b!797914 () Bool)

(declare-fun e!442656 () Bool)

(assert (=> b!797914 (= e!442659 e!442656)))

(declare-fun res!542602 () Bool)

(assert (=> b!797914 (=> (not res!542602) (not e!442656))))

(declare-fun lt!356129 () SeekEntryResult!8352)

(declare-fun lt!356132 () SeekEntryResult!8352)

(assert (=> b!797914 (= res!542602 (and (= lt!356129 lt!356132) (= lt!356132 (Found!8352 j!153)) (= (select (arr!20754 a!3170) index!1236) (select (arr!20754 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797914 (= lt!356132 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20754 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797914 (= lt!356129 (seekEntryOrOpen!0 (select (arr!20754 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797915 () Bool)

(declare-fun res!542604 () Bool)

(assert (=> b!797915 (=> (not res!542604) (not e!442660))))

(declare-datatypes ((List!14770 0))(
  ( (Nil!14767) (Cons!14766 (h!15895 (_ BitVec 64)) (t!21093 List!14770)) )
))
(declare-fun arrayNoDuplicates!0 (array!43355 (_ BitVec 32) List!14770) Bool)

(assert (=> b!797915 (= res!542604 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14767))))

(declare-fun b!797916 () Bool)

(assert (=> b!797916 (= e!442656 (not true))))

(assert (=> b!797916 (= lt!356130 (Found!8352 index!1236))))

(declare-fun b!797917 () Bool)

(assert (=> b!797917 (= e!442658 e!442660)))

(declare-fun res!542611 () Bool)

(assert (=> b!797917 (=> (not res!542611) (not e!442660))))

(declare-fun lt!356134 () SeekEntryResult!8352)

(assert (=> b!797917 (= res!542611 (or (= lt!356134 (MissingZero!8352 i!1163)) (= lt!356134 (MissingVacant!8352 i!1163))))))

(assert (=> b!797917 (= lt!356134 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797918 () Bool)

(declare-fun res!542609 () Bool)

(assert (=> b!797918 (=> (not res!542609) (not e!442658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797918 (= res!542609 (validKeyInArray!0 k!2044))))

(declare-fun b!797919 () Bool)

(declare-fun res!542605 () Bool)

(assert (=> b!797919 (=> (not res!542605) (not e!442658))))

(declare-fun arrayContainsKey!0 (array!43355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797919 (= res!542605 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797920 () Bool)

(declare-fun res!542610 () Bool)

(assert (=> b!797920 (=> (not res!542610) (not e!442660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43355 (_ BitVec 32)) Bool)

(assert (=> b!797920 (= res!542610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797921 () Bool)

(declare-fun res!542606 () Bool)

(assert (=> b!797921 (=> (not res!542606) (not e!442660))))

(assert (=> b!797921 (= res!542606 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21175 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20754 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21175 a!3170)) (= (select (arr!20754 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797922 () Bool)

(declare-fun res!542603 () Bool)

(assert (=> b!797922 (=> (not res!542603) (not e!442658))))

(assert (=> b!797922 (= res!542603 (validKeyInArray!0 (select (arr!20754 a!3170) j!153)))))

(assert (= (and start!68614 res!542607) b!797912))

(assert (= (and b!797912 res!542601) b!797922))

(assert (= (and b!797922 res!542603) b!797918))

(assert (= (and b!797918 res!542609) b!797919))

(assert (= (and b!797919 res!542605) b!797917))

(assert (= (and b!797917 res!542611) b!797920))

(assert (= (and b!797920 res!542610) b!797915))

(assert (= (and b!797915 res!542604) b!797921))

(assert (= (and b!797921 res!542606) b!797913))

(assert (= (and b!797913 res!542608) b!797914))

(assert (= (and b!797914 res!542602) b!797916))

(declare-fun m!738889 () Bool)

(assert (=> b!797914 m!738889))

(declare-fun m!738891 () Bool)

(assert (=> b!797914 m!738891))

(assert (=> b!797914 m!738891))

(declare-fun m!738893 () Bool)

(assert (=> b!797914 m!738893))

(assert (=> b!797914 m!738891))

(declare-fun m!738895 () Bool)

(assert (=> b!797914 m!738895))

(declare-fun m!738897 () Bool)

(assert (=> b!797920 m!738897))

(declare-fun m!738899 () Bool)

(assert (=> start!68614 m!738899))

(declare-fun m!738901 () Bool)

(assert (=> start!68614 m!738901))

(assert (=> b!797922 m!738891))

(assert (=> b!797922 m!738891))

(declare-fun m!738903 () Bool)

(assert (=> b!797922 m!738903))

(declare-fun m!738905 () Bool)

(assert (=> b!797913 m!738905))

(declare-fun m!738907 () Bool)

(assert (=> b!797913 m!738907))

(declare-fun m!738909 () Bool)

(assert (=> b!797913 m!738909))

(declare-fun m!738911 () Bool)

(assert (=> b!797913 m!738911))

(declare-fun m!738913 () Bool)

(assert (=> b!797917 m!738913))

(declare-fun m!738915 () Bool)

(assert (=> b!797919 m!738915))

(declare-fun m!738917 () Bool)

(assert (=> b!797921 m!738917))

(declare-fun m!738919 () Bool)

(assert (=> b!797921 m!738919))

(declare-fun m!738921 () Bool)

(assert (=> b!797915 m!738921))

(declare-fun m!738923 () Bool)

(assert (=> b!797918 m!738923))

(push 1)

