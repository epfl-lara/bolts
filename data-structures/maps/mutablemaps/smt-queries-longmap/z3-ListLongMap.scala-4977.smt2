; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68394 () Bool)

(assert start!68394)

(declare-fun b!794317 () Bool)

(declare-fun res!539008 () Bool)

(declare-fun e!441068 () Bool)

(assert (=> b!794317 (=> (not res!539008) (not e!441068))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43135 0))(
  ( (array!43136 (arr!20644 (Array (_ BitVec 32) (_ BitVec 64))) (size!21065 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43135)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794317 (= res!539008 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21065 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20644 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21065 a!3170)) (= (select (arr!20644 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794318 () Bool)

(declare-fun res!539006 () Bool)

(declare-fun e!441069 () Bool)

(assert (=> b!794318 (=> (not res!539006) (not e!441069))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794318 (= res!539006 (validKeyInArray!0 k0!2044))))

(declare-fun b!794319 () Bool)

(declare-fun res!539013 () Bool)

(assert (=> b!794319 (=> (not res!539013) (not e!441068))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43135 (_ BitVec 32)) Bool)

(assert (=> b!794319 (= res!539013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794320 () Bool)

(declare-fun res!539007 () Bool)

(assert (=> b!794320 (=> (not res!539007) (not e!441069))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794320 (= res!539007 (validKeyInArray!0 (select (arr!20644 a!3170) j!153)))))

(declare-fun res!539012 () Bool)

(assert (=> start!68394 (=> (not res!539012) (not e!441069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68394 (= res!539012 (validMask!0 mask!3266))))

(assert (=> start!68394 e!441069))

(assert (=> start!68394 true))

(declare-fun array_inv!16418 (array!43135) Bool)

(assert (=> start!68394 (array_inv!16418 a!3170)))

(declare-fun b!794321 () Bool)

(declare-fun res!539010 () Bool)

(assert (=> b!794321 (=> (not res!539010) (not e!441069))))

(assert (=> b!794321 (= res!539010 (and (= (size!21065 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21065 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21065 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794322 () Bool)

(assert (=> b!794322 (= e!441069 e!441068)))

(declare-fun res!539009 () Bool)

(assert (=> b!794322 (=> (not res!539009) (not e!441068))))

(declare-datatypes ((SeekEntryResult!8242 0))(
  ( (MissingZero!8242 (index!35335 (_ BitVec 32))) (Found!8242 (index!35336 (_ BitVec 32))) (Intermediate!8242 (undefined!9054 Bool) (index!35337 (_ BitVec 32)) (x!66289 (_ BitVec 32))) (Undefined!8242) (MissingVacant!8242 (index!35338 (_ BitVec 32))) )
))
(declare-fun lt!354109 () SeekEntryResult!8242)

(assert (=> b!794322 (= res!539009 (or (= lt!354109 (MissingZero!8242 i!1163)) (= lt!354109 (MissingVacant!8242 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43135 (_ BitVec 32)) SeekEntryResult!8242)

(assert (=> b!794322 (= lt!354109 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794323 () Bool)

(assert (=> b!794323 (= e!441068 false)))

(declare-fun lt!354106 () (_ BitVec 64))

(declare-fun lt!354107 () array!43135)

(declare-fun lt!354105 () SeekEntryResult!8242)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43135 (_ BitVec 32)) SeekEntryResult!8242)

(assert (=> b!794323 (= lt!354105 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354106 lt!354107 mask!3266))))

(declare-fun lt!354108 () SeekEntryResult!8242)

(assert (=> b!794323 (= lt!354108 (seekEntryOrOpen!0 lt!354106 lt!354107 mask!3266))))

(assert (=> b!794323 (= lt!354106 (select (store (arr!20644 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794323 (= lt!354107 (array!43136 (store (arr!20644 a!3170) i!1163 k0!2044) (size!21065 a!3170)))))

(declare-fun b!794324 () Bool)

(declare-fun res!539014 () Bool)

(assert (=> b!794324 (=> (not res!539014) (not e!441069))))

(declare-fun arrayContainsKey!0 (array!43135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794324 (= res!539014 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794325 () Bool)

(declare-fun res!539011 () Bool)

(assert (=> b!794325 (=> (not res!539011) (not e!441068))))

(declare-datatypes ((List!14660 0))(
  ( (Nil!14657) (Cons!14656 (h!15785 (_ BitVec 64)) (t!20983 List!14660)) )
))
(declare-fun arrayNoDuplicates!0 (array!43135 (_ BitVec 32) List!14660) Bool)

(assert (=> b!794325 (= res!539011 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14657))))

(assert (= (and start!68394 res!539012) b!794321))

(assert (= (and b!794321 res!539010) b!794320))

(assert (= (and b!794320 res!539007) b!794318))

(assert (= (and b!794318 res!539006) b!794324))

(assert (= (and b!794324 res!539014) b!794322))

(assert (= (and b!794322 res!539009) b!794319))

(assert (= (and b!794319 res!539013) b!794325))

(assert (= (and b!794325 res!539011) b!794317))

(assert (= (and b!794317 res!539008) b!794323))

(declare-fun m!734953 () Bool)

(assert (=> start!68394 m!734953))

(declare-fun m!734955 () Bool)

(assert (=> start!68394 m!734955))

(declare-fun m!734957 () Bool)

(assert (=> b!794323 m!734957))

(declare-fun m!734959 () Bool)

(assert (=> b!794323 m!734959))

(declare-fun m!734961 () Bool)

(assert (=> b!794323 m!734961))

(declare-fun m!734963 () Bool)

(assert (=> b!794323 m!734963))

(declare-fun m!734965 () Bool)

(assert (=> b!794320 m!734965))

(assert (=> b!794320 m!734965))

(declare-fun m!734967 () Bool)

(assert (=> b!794320 m!734967))

(declare-fun m!734969 () Bool)

(assert (=> b!794322 m!734969))

(declare-fun m!734971 () Bool)

(assert (=> b!794317 m!734971))

(declare-fun m!734973 () Bool)

(assert (=> b!794317 m!734973))

(declare-fun m!734975 () Bool)

(assert (=> b!794318 m!734975))

(declare-fun m!734977 () Bool)

(assert (=> b!794324 m!734977))

(declare-fun m!734979 () Bool)

(assert (=> b!794319 m!734979))

(declare-fun m!734981 () Bool)

(assert (=> b!794325 m!734981))

(check-sat (not b!794323) (not b!794324) (not b!794325) (not b!794322) (not b!794319) (not b!794320) (not b!794318) (not start!68394))
(check-sat)
