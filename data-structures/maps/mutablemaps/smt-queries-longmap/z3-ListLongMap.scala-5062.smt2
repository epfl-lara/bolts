; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68904 () Bool)

(assert start!68904)

(declare-fun b!803166 () Bool)

(declare-fun e!445084 () Bool)

(declare-fun e!445087 () Bool)

(assert (=> b!803166 (= e!445084 e!445087)))

(declare-fun res!547864 () Bool)

(assert (=> b!803166 (=> (not res!547864) (not e!445087))))

(declare-fun lt!359462 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((array!43645 0))(
  ( (array!43646 (arr!20899 (Array (_ BitVec 32) (_ BitVec 64))) (size!21320 (_ BitVec 32))) )
))
(declare-fun lt!359466 () array!43645)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8497 0))(
  ( (MissingZero!8497 (index!36355 (_ BitVec 32))) (Found!8497 (index!36356 (_ BitVec 32))) (Intermediate!8497 (undefined!9309 Bool) (index!36357 (_ BitVec 32)) (x!67224 (_ BitVec 32))) (Undefined!8497) (MissingVacant!8497 (index!36358 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43645 (_ BitVec 32)) SeekEntryResult!8497)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43645 (_ BitVec 32)) SeekEntryResult!8497)

(assert (=> b!803166 (= res!547864 (= (seekEntryOrOpen!0 lt!359462 lt!359466 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359462 lt!359466 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43645)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!803166 (= lt!359462 (select (store (arr!20899 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803166 (= lt!359466 (array!43646 (store (arr!20899 a!3170) i!1163 k0!2044) (size!21320 a!3170)))))

(declare-fun b!803167 () Bool)

(declare-fun e!445085 () Bool)

(assert (=> b!803167 (= e!445085 (not true))))

(declare-fun lt!359467 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803167 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359467 vacantAfter!23 lt!359462 lt!359466 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359467 vacantBefore!23 (select (arr!20899 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27536 0))(
  ( (Unit!27537) )
))
(declare-fun lt!359463 () Unit!27536)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27536)

(assert (=> b!803167 (= lt!359463 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359467 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803167 (= lt!359467 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803168 () Bool)

(declare-fun res!547858 () Bool)

(declare-fun e!445086 () Bool)

(assert (=> b!803168 (=> (not res!547858) (not e!445086))))

(assert (=> b!803168 (= res!547858 (and (= (size!21320 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21320 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21320 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803169 () Bool)

(assert (=> b!803169 (= e!445086 e!445084)))

(declare-fun res!547862 () Bool)

(assert (=> b!803169 (=> (not res!547862) (not e!445084))))

(declare-fun lt!359464 () SeekEntryResult!8497)

(assert (=> b!803169 (= res!547862 (or (= lt!359464 (MissingZero!8497 i!1163)) (= lt!359464 (MissingVacant!8497 i!1163))))))

(assert (=> b!803169 (= lt!359464 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803170 () Bool)

(declare-fun res!547860 () Bool)

(assert (=> b!803170 (=> (not res!547860) (not e!445086))))

(declare-fun arrayContainsKey!0 (array!43645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803170 (= res!547860 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803171 () Bool)

(declare-fun res!547863 () Bool)

(assert (=> b!803171 (=> (not res!547863) (not e!445084))))

(declare-datatypes ((List!14915 0))(
  ( (Nil!14912) (Cons!14911 (h!16040 (_ BitVec 64)) (t!21238 List!14915)) )
))
(declare-fun arrayNoDuplicates!0 (array!43645 (_ BitVec 32) List!14915) Bool)

(assert (=> b!803171 (= res!547863 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14912))))

(declare-fun b!803172 () Bool)

(declare-fun res!547855 () Bool)

(assert (=> b!803172 (=> (not res!547855) (not e!445084))))

(assert (=> b!803172 (= res!547855 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21320 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20899 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21320 a!3170)) (= (select (arr!20899 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803173 () Bool)

(declare-fun res!547859 () Bool)

(assert (=> b!803173 (=> (not res!547859) (not e!445086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803173 (= res!547859 (validKeyInArray!0 (select (arr!20899 a!3170) j!153)))))

(declare-fun b!803165 () Bool)

(assert (=> b!803165 (= e!445087 e!445085)))

(declare-fun res!547856 () Bool)

(assert (=> b!803165 (=> (not res!547856) (not e!445085))))

(declare-fun lt!359461 () SeekEntryResult!8497)

(declare-fun lt!359465 () SeekEntryResult!8497)

(assert (=> b!803165 (= res!547856 (and (= lt!359465 lt!359461) (= lt!359461 (Found!8497 j!153)) (not (= (select (arr!20899 a!3170) index!1236) (select (arr!20899 a!3170) j!153)))))))

(assert (=> b!803165 (= lt!359461 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20899 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803165 (= lt!359465 (seekEntryOrOpen!0 (select (arr!20899 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!547861 () Bool)

(assert (=> start!68904 (=> (not res!547861) (not e!445086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68904 (= res!547861 (validMask!0 mask!3266))))

(assert (=> start!68904 e!445086))

(assert (=> start!68904 true))

(declare-fun array_inv!16673 (array!43645) Bool)

(assert (=> start!68904 (array_inv!16673 a!3170)))

(declare-fun b!803174 () Bool)

(declare-fun res!547857 () Bool)

(assert (=> b!803174 (=> (not res!547857) (not e!445084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43645 (_ BitVec 32)) Bool)

(assert (=> b!803174 (= res!547857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803175 () Bool)

(declare-fun res!547854 () Bool)

(assert (=> b!803175 (=> (not res!547854) (not e!445086))))

(assert (=> b!803175 (= res!547854 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68904 res!547861) b!803168))

(assert (= (and b!803168 res!547858) b!803173))

(assert (= (and b!803173 res!547859) b!803175))

(assert (= (and b!803175 res!547854) b!803170))

(assert (= (and b!803170 res!547860) b!803169))

(assert (= (and b!803169 res!547862) b!803174))

(assert (= (and b!803174 res!547857) b!803171))

(assert (= (and b!803171 res!547863) b!803172))

(assert (= (and b!803172 res!547855) b!803166))

(assert (= (and b!803166 res!547864) b!803165))

(assert (= (and b!803165 res!547856) b!803167))

(declare-fun m!744957 () Bool)

(assert (=> b!803167 m!744957))

(declare-fun m!744959 () Bool)

(assert (=> b!803167 m!744959))

(assert (=> b!803167 m!744957))

(declare-fun m!744961 () Bool)

(assert (=> b!803167 m!744961))

(declare-fun m!744963 () Bool)

(assert (=> b!803167 m!744963))

(declare-fun m!744965 () Bool)

(assert (=> b!803167 m!744965))

(declare-fun m!744967 () Bool)

(assert (=> b!803171 m!744967))

(declare-fun m!744969 () Bool)

(assert (=> b!803174 m!744969))

(declare-fun m!744971 () Bool)

(assert (=> b!803166 m!744971))

(declare-fun m!744973 () Bool)

(assert (=> b!803166 m!744973))

(declare-fun m!744975 () Bool)

(assert (=> b!803166 m!744975))

(declare-fun m!744977 () Bool)

(assert (=> b!803166 m!744977))

(declare-fun m!744979 () Bool)

(assert (=> start!68904 m!744979))

(declare-fun m!744981 () Bool)

(assert (=> start!68904 m!744981))

(declare-fun m!744983 () Bool)

(assert (=> b!803172 m!744983))

(declare-fun m!744985 () Bool)

(assert (=> b!803172 m!744985))

(declare-fun m!744987 () Bool)

(assert (=> b!803175 m!744987))

(declare-fun m!744989 () Bool)

(assert (=> b!803165 m!744989))

(assert (=> b!803165 m!744957))

(assert (=> b!803165 m!744957))

(declare-fun m!744991 () Bool)

(assert (=> b!803165 m!744991))

(assert (=> b!803165 m!744957))

(declare-fun m!744993 () Bool)

(assert (=> b!803165 m!744993))

(declare-fun m!744995 () Bool)

(assert (=> b!803170 m!744995))

(assert (=> b!803173 m!744957))

(assert (=> b!803173 m!744957))

(declare-fun m!744997 () Bool)

(assert (=> b!803173 m!744997))

(declare-fun m!744999 () Bool)

(assert (=> b!803169 m!744999))

(check-sat (not b!803173) (not b!803171) (not b!803165) (not start!68904) (not b!803169) (not b!803170) (not b!803167) (not b!803166) (not b!803174) (not b!803175))
(check-sat)
