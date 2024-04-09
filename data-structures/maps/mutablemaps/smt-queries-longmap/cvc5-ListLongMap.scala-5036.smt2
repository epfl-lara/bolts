; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68746 () Bool)

(assert start!68746)

(declare-fun b!800319 () Bool)

(declare-fun e!443752 () Bool)

(assert (=> b!800319 (= e!443752 false)))

(declare-datatypes ((SeekEntryResult!8418 0))(
  ( (MissingZero!8418 (index!36039 (_ BitVec 32))) (Found!8418 (index!36040 (_ BitVec 32))) (Intermediate!8418 (undefined!9230 Bool) (index!36041 (_ BitVec 32)) (x!66937 (_ BitVec 32))) (Undefined!8418) (MissingVacant!8418 (index!36042 (_ BitVec 32))) )
))
(declare-fun lt!357583 () SeekEntryResult!8418)

(declare-datatypes ((array!43487 0))(
  ( (array!43488 (arr!20820 (Array (_ BitVec 32) (_ BitVec 64))) (size!21241 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43487)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357584 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43487 (_ BitVec 32)) SeekEntryResult!8418)

(assert (=> b!800319 (= lt!357583 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357584 vacantBefore!23 (select (arr!20820 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800320 () Bool)

(declare-fun e!443750 () Bool)

(declare-fun e!443749 () Bool)

(assert (=> b!800320 (= e!443750 e!443749)))

(declare-fun res!545014 () Bool)

(assert (=> b!800320 (=> (not res!545014) (not e!443749))))

(declare-fun lt!357586 () SeekEntryResult!8418)

(declare-fun lt!357581 () SeekEntryResult!8418)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800320 (= res!545014 (and (= lt!357581 lt!357586) (= lt!357586 (Found!8418 j!153)) (not (= (select (arr!20820 a!3170) index!1236) (select (arr!20820 a!3170) j!153)))))))

(assert (=> b!800320 (= lt!357586 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20820 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43487 (_ BitVec 32)) SeekEntryResult!8418)

(assert (=> b!800320 (= lt!357581 (seekEntryOrOpen!0 (select (arr!20820 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800321 () Bool)

(declare-fun res!545011 () Bool)

(declare-fun e!443751 () Bool)

(assert (=> b!800321 (=> (not res!545011) (not e!443751))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800321 (= res!545011 (validKeyInArray!0 k!2044))))

(declare-fun b!800322 () Bool)

(assert (=> b!800322 (= e!443749 e!443752)))

(declare-fun res!545017 () Bool)

(assert (=> b!800322 (=> (not res!545017) (not e!443752))))

(assert (=> b!800322 (= res!545017 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357584 #b00000000000000000000000000000000) (bvslt lt!357584 (size!21241 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800322 (= lt!357584 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!545018 () Bool)

(assert (=> start!68746 (=> (not res!545018) (not e!443751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68746 (= res!545018 (validMask!0 mask!3266))))

(assert (=> start!68746 e!443751))

(assert (=> start!68746 true))

(declare-fun array_inv!16594 (array!43487) Bool)

(assert (=> start!68746 (array_inv!16594 a!3170)))

(declare-fun b!800323 () Bool)

(declare-fun res!545020 () Bool)

(declare-fun e!443748 () Bool)

(assert (=> b!800323 (=> (not res!545020) (not e!443748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43487 (_ BitVec 32)) Bool)

(assert (=> b!800323 (= res!545020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800324 () Bool)

(assert (=> b!800324 (= e!443748 e!443750)))

(declare-fun res!545013 () Bool)

(assert (=> b!800324 (=> (not res!545013) (not e!443750))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357580 () (_ BitVec 64))

(declare-fun lt!357582 () array!43487)

(declare-fun lt!357579 () SeekEntryResult!8418)

(assert (=> b!800324 (= res!545013 (= lt!357579 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357580 lt!357582 mask!3266)))))

(assert (=> b!800324 (= lt!357579 (seekEntryOrOpen!0 lt!357580 lt!357582 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800324 (= lt!357580 (select (store (arr!20820 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800324 (= lt!357582 (array!43488 (store (arr!20820 a!3170) i!1163 k!2044) (size!21241 a!3170)))))

(declare-fun b!800325 () Bool)

(declare-fun res!545010 () Bool)

(assert (=> b!800325 (=> (not res!545010) (not e!443751))))

(declare-fun arrayContainsKey!0 (array!43487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800325 (= res!545010 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800326 () Bool)

(declare-fun res!545019 () Bool)

(assert (=> b!800326 (=> (not res!545019) (not e!443752))))

(assert (=> b!800326 (= res!545019 (= lt!357579 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357584 vacantAfter!23 lt!357580 lt!357582 mask!3266)))))

(declare-fun b!800327 () Bool)

(declare-fun res!545016 () Bool)

(assert (=> b!800327 (=> (not res!545016) (not e!443748))))

(assert (=> b!800327 (= res!545016 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21241 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20820 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21241 a!3170)) (= (select (arr!20820 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800328 () Bool)

(declare-fun res!545015 () Bool)

(assert (=> b!800328 (=> (not res!545015) (not e!443751))))

(assert (=> b!800328 (= res!545015 (and (= (size!21241 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21241 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21241 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800329 () Bool)

(assert (=> b!800329 (= e!443751 e!443748)))

(declare-fun res!545012 () Bool)

(assert (=> b!800329 (=> (not res!545012) (not e!443748))))

(declare-fun lt!357585 () SeekEntryResult!8418)

(assert (=> b!800329 (= res!545012 (or (= lt!357585 (MissingZero!8418 i!1163)) (= lt!357585 (MissingVacant!8418 i!1163))))))

(assert (=> b!800329 (= lt!357585 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800330 () Bool)

(declare-fun res!545009 () Bool)

(assert (=> b!800330 (=> (not res!545009) (not e!443748))))

(declare-datatypes ((List!14836 0))(
  ( (Nil!14833) (Cons!14832 (h!15961 (_ BitVec 64)) (t!21159 List!14836)) )
))
(declare-fun arrayNoDuplicates!0 (array!43487 (_ BitVec 32) List!14836) Bool)

(assert (=> b!800330 (= res!545009 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14833))))

(declare-fun b!800331 () Bool)

(declare-fun res!545008 () Bool)

(assert (=> b!800331 (=> (not res!545008) (not e!443751))))

(assert (=> b!800331 (= res!545008 (validKeyInArray!0 (select (arr!20820 a!3170) j!153)))))

(assert (= (and start!68746 res!545018) b!800328))

(assert (= (and b!800328 res!545015) b!800331))

(assert (= (and b!800331 res!545008) b!800321))

(assert (= (and b!800321 res!545011) b!800325))

(assert (= (and b!800325 res!545010) b!800329))

(assert (= (and b!800329 res!545012) b!800323))

(assert (= (and b!800323 res!545020) b!800330))

(assert (= (and b!800330 res!545009) b!800327))

(assert (= (and b!800327 res!545016) b!800324))

(assert (= (and b!800324 res!545013) b!800320))

(assert (= (and b!800320 res!545014) b!800322))

(assert (= (and b!800322 res!545017) b!800326))

(assert (= (and b!800326 res!545019) b!800319))

(declare-fun m!741505 () Bool)

(assert (=> start!68746 m!741505))

(declare-fun m!741507 () Bool)

(assert (=> start!68746 m!741507))

(declare-fun m!741509 () Bool)

(assert (=> b!800326 m!741509))

(declare-fun m!741511 () Bool)

(assert (=> b!800322 m!741511))

(declare-fun m!741513 () Bool)

(assert (=> b!800329 m!741513))

(declare-fun m!741515 () Bool)

(assert (=> b!800323 m!741515))

(declare-fun m!741517 () Bool)

(assert (=> b!800327 m!741517))

(declare-fun m!741519 () Bool)

(assert (=> b!800327 m!741519))

(declare-fun m!741521 () Bool)

(assert (=> b!800319 m!741521))

(assert (=> b!800319 m!741521))

(declare-fun m!741523 () Bool)

(assert (=> b!800319 m!741523))

(declare-fun m!741525 () Bool)

(assert (=> b!800320 m!741525))

(assert (=> b!800320 m!741521))

(assert (=> b!800320 m!741521))

(declare-fun m!741527 () Bool)

(assert (=> b!800320 m!741527))

(assert (=> b!800320 m!741521))

(declare-fun m!741529 () Bool)

(assert (=> b!800320 m!741529))

(declare-fun m!741531 () Bool)

(assert (=> b!800325 m!741531))

(declare-fun m!741533 () Bool)

(assert (=> b!800321 m!741533))

(declare-fun m!741535 () Bool)

(assert (=> b!800324 m!741535))

(declare-fun m!741537 () Bool)

(assert (=> b!800324 m!741537))

(declare-fun m!741539 () Bool)

(assert (=> b!800324 m!741539))

(declare-fun m!741541 () Bool)

(assert (=> b!800324 m!741541))

(assert (=> b!800331 m!741521))

(assert (=> b!800331 m!741521))

(declare-fun m!741543 () Bool)

(assert (=> b!800331 m!741543))

(declare-fun m!741545 () Bool)

(assert (=> b!800330 m!741545))

(push 1)

