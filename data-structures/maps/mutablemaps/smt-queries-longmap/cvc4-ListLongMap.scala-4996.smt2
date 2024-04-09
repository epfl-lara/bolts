; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68510 () Bool)

(assert start!68510)

(declare-fun b!796115 () Bool)

(declare-fun e!441795 () Bool)

(declare-fun e!441797 () Bool)

(assert (=> b!796115 (= e!441795 e!441797)))

(declare-fun res!540809 () Bool)

(assert (=> b!796115 (=> (not res!540809) (not e!441797))))

(declare-datatypes ((SeekEntryResult!8300 0))(
  ( (MissingZero!8300 (index!35567 (_ BitVec 32))) (Found!8300 (index!35568 (_ BitVec 32))) (Intermediate!8300 (undefined!9112 Bool) (index!35569 (_ BitVec 32)) (x!66499 (_ BitVec 32))) (Undefined!8300) (MissingVacant!8300 (index!35570 (_ BitVec 32))) )
))
(declare-fun lt!354977 () SeekEntryResult!8300)

(declare-fun lt!354975 () SeekEntryResult!8300)

(assert (=> b!796115 (= res!540809 (= lt!354977 lt!354975))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354979 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43251 0))(
  ( (array!43252 (arr!20702 (Array (_ BitVec 32) (_ BitVec 64))) (size!21123 (_ BitVec 32))) )
))
(declare-fun lt!354976 () array!43251)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43251 (_ BitVec 32)) SeekEntryResult!8300)

(assert (=> b!796115 (= lt!354975 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354979 lt!354976 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43251 (_ BitVec 32)) SeekEntryResult!8300)

(assert (=> b!796115 (= lt!354977 (seekEntryOrOpen!0 lt!354979 lt!354976 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun a!3170 () array!43251)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796115 (= lt!354979 (select (store (arr!20702 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796115 (= lt!354976 (array!43252 (store (arr!20702 a!3170) i!1163 k!2044) (size!21123 a!3170)))))

(declare-fun b!796116 () Bool)

(declare-fun res!540813 () Bool)

(assert (=> b!796116 (=> (not res!540813) (not e!441795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43251 (_ BitVec 32)) Bool)

(assert (=> b!796116 (= res!540813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796117 () Bool)

(declare-fun res!540812 () Bool)

(assert (=> b!796117 (=> (not res!540812) (not e!441795))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796117 (= res!540812 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21123 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20702 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21123 a!3170)) (= (select (arr!20702 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796118 () Bool)

(declare-fun res!540811 () Bool)

(declare-fun e!441798 () Bool)

(assert (=> b!796118 (=> (not res!540811) (not e!441798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796118 (= res!540811 (validKeyInArray!0 (select (arr!20702 a!3170) j!153)))))

(declare-fun b!796119 () Bool)

(assert (=> b!796119 (= e!441798 e!441795)))

(declare-fun res!540806 () Bool)

(assert (=> b!796119 (=> (not res!540806) (not e!441795))))

(declare-fun lt!354974 () SeekEntryResult!8300)

(assert (=> b!796119 (= res!540806 (or (= lt!354974 (MissingZero!8300 i!1163)) (= lt!354974 (MissingVacant!8300 i!1163))))))

(assert (=> b!796119 (= lt!354974 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796120 () Bool)

(declare-fun res!540808 () Bool)

(assert (=> b!796120 (=> (not res!540808) (not e!441798))))

(assert (=> b!796120 (= res!540808 (validKeyInArray!0 k!2044))))

(declare-fun b!796122 () Bool)

(declare-fun e!441799 () Bool)

(assert (=> b!796122 (= e!441799 (not true))))

(assert (=> b!796122 (= lt!354975 (Found!8300 index!1236))))

(declare-fun b!796123 () Bool)

(declare-fun res!540814 () Bool)

(assert (=> b!796123 (=> (not res!540814) (not e!441795))))

(declare-datatypes ((List!14718 0))(
  ( (Nil!14715) (Cons!14714 (h!15843 (_ BitVec 64)) (t!21041 List!14718)) )
))
(declare-fun arrayNoDuplicates!0 (array!43251 (_ BitVec 32) List!14718) Bool)

(assert (=> b!796123 (= res!540814 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14715))))

(declare-fun b!796124 () Bool)

(declare-fun res!540807 () Bool)

(assert (=> b!796124 (=> (not res!540807) (not e!441798))))

(assert (=> b!796124 (= res!540807 (and (= (size!21123 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21123 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21123 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796125 () Bool)

(declare-fun res!540805 () Bool)

(assert (=> b!796125 (=> (not res!540805) (not e!441798))))

(declare-fun arrayContainsKey!0 (array!43251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796125 (= res!540805 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!540810 () Bool)

(assert (=> start!68510 (=> (not res!540810) (not e!441798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68510 (= res!540810 (validMask!0 mask!3266))))

(assert (=> start!68510 e!441798))

(assert (=> start!68510 true))

(declare-fun array_inv!16476 (array!43251) Bool)

(assert (=> start!68510 (array_inv!16476 a!3170)))

(declare-fun b!796121 () Bool)

(assert (=> b!796121 (= e!441797 e!441799)))

(declare-fun res!540804 () Bool)

(assert (=> b!796121 (=> (not res!540804) (not e!441799))))

(declare-fun lt!354978 () SeekEntryResult!8300)

(declare-fun lt!354973 () SeekEntryResult!8300)

(assert (=> b!796121 (= res!540804 (and (= lt!354973 lt!354978) (= lt!354978 (Found!8300 j!153)) (= (select (arr!20702 a!3170) index!1236) (select (arr!20702 a!3170) j!153))))))

(assert (=> b!796121 (= lt!354978 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20702 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796121 (= lt!354973 (seekEntryOrOpen!0 (select (arr!20702 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68510 res!540810) b!796124))

(assert (= (and b!796124 res!540807) b!796118))

(assert (= (and b!796118 res!540811) b!796120))

(assert (= (and b!796120 res!540808) b!796125))

(assert (= (and b!796125 res!540805) b!796119))

(assert (= (and b!796119 res!540806) b!796116))

(assert (= (and b!796116 res!540813) b!796123))

(assert (= (and b!796123 res!540814) b!796117))

(assert (= (and b!796117 res!540812) b!796115))

(assert (= (and b!796115 res!540809) b!796121))

(assert (= (and b!796121 res!540804) b!796122))

(declare-fun m!736981 () Bool)

(assert (=> b!796119 m!736981))

(declare-fun m!736983 () Bool)

(assert (=> b!796115 m!736983))

(declare-fun m!736985 () Bool)

(assert (=> b!796115 m!736985))

(declare-fun m!736987 () Bool)

(assert (=> b!796115 m!736987))

(declare-fun m!736989 () Bool)

(assert (=> b!796115 m!736989))

(declare-fun m!736991 () Bool)

(assert (=> b!796123 m!736991))

(declare-fun m!736993 () Bool)

(assert (=> b!796118 m!736993))

(assert (=> b!796118 m!736993))

(declare-fun m!736995 () Bool)

(assert (=> b!796118 m!736995))

(declare-fun m!736997 () Bool)

(assert (=> b!796121 m!736997))

(assert (=> b!796121 m!736993))

(assert (=> b!796121 m!736993))

(declare-fun m!736999 () Bool)

(assert (=> b!796121 m!736999))

(assert (=> b!796121 m!736993))

(declare-fun m!737001 () Bool)

(assert (=> b!796121 m!737001))

(declare-fun m!737003 () Bool)

(assert (=> b!796116 m!737003))

(declare-fun m!737005 () Bool)

(assert (=> b!796120 m!737005))

(declare-fun m!737007 () Bool)

(assert (=> b!796125 m!737007))

(declare-fun m!737009 () Bool)

(assert (=> b!796117 m!737009))

(declare-fun m!737011 () Bool)

(assert (=> b!796117 m!737011))

(declare-fun m!737013 () Bool)

(assert (=> start!68510 m!737013))

(declare-fun m!737015 () Bool)

(assert (=> start!68510 m!737015))

(push 1)

