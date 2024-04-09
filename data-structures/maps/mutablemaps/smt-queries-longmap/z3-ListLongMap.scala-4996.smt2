; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68508 () Bool)

(assert start!68508)

(declare-fun b!796082 () Bool)

(declare-fun res!540776 () Bool)

(declare-fun e!441780 () Bool)

(assert (=> b!796082 (=> (not res!540776) (not e!441780))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43249 0))(
  ( (array!43250 (arr!20701 (Array (_ BitVec 32) (_ BitVec 64))) (size!21122 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43249)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796082 (= res!540776 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21122 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20701 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21122 a!3170)) (= (select (arr!20701 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796083 () Bool)

(declare-fun res!540779 () Bool)

(declare-fun e!441784 () Bool)

(assert (=> b!796083 (=> (not res!540779) (not e!441784))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796083 (= res!540779 (validKeyInArray!0 (select (arr!20701 a!3170) j!153)))))

(declare-fun b!796084 () Bool)

(declare-fun e!441781 () Bool)

(assert (=> b!796084 (= e!441780 e!441781)))

(declare-fun res!540781 () Bool)

(assert (=> b!796084 (=> (not res!540781) (not e!441781))))

(declare-datatypes ((SeekEntryResult!8299 0))(
  ( (MissingZero!8299 (index!35563 (_ BitVec 32))) (Found!8299 (index!35564 (_ BitVec 32))) (Intermediate!8299 (undefined!9111 Bool) (index!35565 (_ BitVec 32)) (x!66498 (_ BitVec 32))) (Undefined!8299) (MissingVacant!8299 (index!35566 (_ BitVec 32))) )
))
(declare-fun lt!354958 () SeekEntryResult!8299)

(declare-fun lt!354954 () SeekEntryResult!8299)

(assert (=> b!796084 (= res!540781 (= lt!354958 lt!354954))))

(declare-fun lt!354957 () array!43249)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!354956 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43249 (_ BitVec 32)) SeekEntryResult!8299)

(assert (=> b!796084 (= lt!354954 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354956 lt!354957 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43249 (_ BitVec 32)) SeekEntryResult!8299)

(assert (=> b!796084 (= lt!354958 (seekEntryOrOpen!0 lt!354956 lt!354957 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!796084 (= lt!354956 (select (store (arr!20701 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796084 (= lt!354957 (array!43250 (store (arr!20701 a!3170) i!1163 k0!2044) (size!21122 a!3170)))))

(declare-fun b!796085 () Bool)

(declare-fun res!540780 () Bool)

(assert (=> b!796085 (=> (not res!540780) (not e!441784))))

(assert (=> b!796085 (= res!540780 (validKeyInArray!0 k0!2044))))

(declare-fun res!540775 () Bool)

(assert (=> start!68508 (=> (not res!540775) (not e!441784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68508 (= res!540775 (validMask!0 mask!3266))))

(assert (=> start!68508 e!441784))

(assert (=> start!68508 true))

(declare-fun array_inv!16475 (array!43249) Bool)

(assert (=> start!68508 (array_inv!16475 a!3170)))

(declare-fun b!796086 () Bool)

(assert (=> b!796086 (= e!441784 e!441780)))

(declare-fun res!540773 () Bool)

(assert (=> b!796086 (=> (not res!540773) (not e!441780))))

(declare-fun lt!354952 () SeekEntryResult!8299)

(assert (=> b!796086 (= res!540773 (or (= lt!354952 (MissingZero!8299 i!1163)) (= lt!354952 (MissingVacant!8299 i!1163))))))

(assert (=> b!796086 (= lt!354952 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!796087 () Bool)

(declare-fun res!540778 () Bool)

(assert (=> b!796087 (=> (not res!540778) (not e!441780))))

(declare-datatypes ((List!14717 0))(
  ( (Nil!14714) (Cons!14713 (h!15842 (_ BitVec 64)) (t!21040 List!14717)) )
))
(declare-fun arrayNoDuplicates!0 (array!43249 (_ BitVec 32) List!14717) Bool)

(assert (=> b!796087 (= res!540778 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14714))))

(declare-fun b!796088 () Bool)

(declare-fun res!540777 () Bool)

(assert (=> b!796088 (=> (not res!540777) (not e!441784))))

(assert (=> b!796088 (= res!540777 (and (= (size!21122 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21122 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21122 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796089 () Bool)

(declare-fun res!540771 () Bool)

(assert (=> b!796089 (=> (not res!540771) (not e!441780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43249 (_ BitVec 32)) Bool)

(assert (=> b!796089 (= res!540771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796090 () Bool)

(declare-fun e!441782 () Bool)

(assert (=> b!796090 (= e!441782 (not true))))

(assert (=> b!796090 (= lt!354954 (Found!8299 index!1236))))

(declare-fun b!796091 () Bool)

(declare-fun res!540772 () Bool)

(assert (=> b!796091 (=> (not res!540772) (not e!441784))))

(declare-fun arrayContainsKey!0 (array!43249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796091 (= res!540772 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796092 () Bool)

(assert (=> b!796092 (= e!441781 e!441782)))

(declare-fun res!540774 () Bool)

(assert (=> b!796092 (=> (not res!540774) (not e!441782))))

(declare-fun lt!354955 () SeekEntryResult!8299)

(declare-fun lt!354953 () SeekEntryResult!8299)

(assert (=> b!796092 (= res!540774 (and (= lt!354955 lt!354953) (= lt!354953 (Found!8299 j!153)) (= (select (arr!20701 a!3170) index!1236) (select (arr!20701 a!3170) j!153))))))

(assert (=> b!796092 (= lt!354953 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20701 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796092 (= lt!354955 (seekEntryOrOpen!0 (select (arr!20701 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68508 res!540775) b!796088))

(assert (= (and b!796088 res!540777) b!796083))

(assert (= (and b!796083 res!540779) b!796085))

(assert (= (and b!796085 res!540780) b!796091))

(assert (= (and b!796091 res!540772) b!796086))

(assert (= (and b!796086 res!540773) b!796089))

(assert (= (and b!796089 res!540771) b!796087))

(assert (= (and b!796087 res!540778) b!796082))

(assert (= (and b!796082 res!540776) b!796084))

(assert (= (and b!796084 res!540781) b!796092))

(assert (= (and b!796092 res!540774) b!796090))

(declare-fun m!736945 () Bool)

(assert (=> b!796091 m!736945))

(declare-fun m!736947 () Bool)

(assert (=> b!796092 m!736947))

(declare-fun m!736949 () Bool)

(assert (=> b!796092 m!736949))

(assert (=> b!796092 m!736949))

(declare-fun m!736951 () Bool)

(assert (=> b!796092 m!736951))

(assert (=> b!796092 m!736949))

(declare-fun m!736953 () Bool)

(assert (=> b!796092 m!736953))

(declare-fun m!736955 () Bool)

(assert (=> b!796087 m!736955))

(declare-fun m!736957 () Bool)

(assert (=> b!796082 m!736957))

(declare-fun m!736959 () Bool)

(assert (=> b!796082 m!736959))

(declare-fun m!736961 () Bool)

(assert (=> b!796084 m!736961))

(declare-fun m!736963 () Bool)

(assert (=> b!796084 m!736963))

(declare-fun m!736965 () Bool)

(assert (=> b!796084 m!736965))

(declare-fun m!736967 () Bool)

(assert (=> b!796084 m!736967))

(declare-fun m!736969 () Bool)

(assert (=> b!796089 m!736969))

(declare-fun m!736971 () Bool)

(assert (=> b!796086 m!736971))

(declare-fun m!736973 () Bool)

(assert (=> start!68508 m!736973))

(declare-fun m!736975 () Bool)

(assert (=> start!68508 m!736975))

(assert (=> b!796083 m!736949))

(assert (=> b!796083 m!736949))

(declare-fun m!736977 () Bool)

(assert (=> b!796083 m!736977))

(declare-fun m!736979 () Bool)

(assert (=> b!796085 m!736979))

(check-sat (not b!796089) (not start!68508) (not b!796085) (not b!796091) (not b!796083) (not b!796084) (not b!796092) (not b!796087) (not b!796086))
(check-sat)
