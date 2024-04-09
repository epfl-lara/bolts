; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68742 () Bool)

(assert start!68742)

(declare-fun b!800241 () Bool)

(declare-fun e!443715 () Bool)

(declare-fun e!443711 () Bool)

(assert (=> b!800241 (= e!443715 e!443711)))

(declare-fun res!544940 () Bool)

(assert (=> b!800241 (=> (not res!544940) (not e!443711))))

(declare-datatypes ((array!43483 0))(
  ( (array!43484 (arr!20818 (Array (_ BitVec 32) (_ BitVec 64))) (size!21239 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43483)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8416 0))(
  ( (MissingZero!8416 (index!36031 (_ BitVec 32))) (Found!8416 (index!36032 (_ BitVec 32))) (Intermediate!8416 (undefined!9228 Bool) (index!36033 (_ BitVec 32)) (x!66927 (_ BitVec 32))) (Undefined!8416) (MissingVacant!8416 (index!36034 (_ BitVec 32))) )
))
(declare-fun lt!357534 () SeekEntryResult!8416)

(declare-fun lt!357537 () SeekEntryResult!8416)

(assert (=> b!800241 (= res!544940 (and (= lt!357534 lt!357537) (= lt!357537 (Found!8416 j!153)) (not (= (select (arr!20818 a!3170) index!1236) (select (arr!20818 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43483 (_ BitVec 32)) SeekEntryResult!8416)

(assert (=> b!800241 (= lt!357537 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20818 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43483 (_ BitVec 32)) SeekEntryResult!8416)

(assert (=> b!800241 (= lt!357534 (seekEntryOrOpen!0 (select (arr!20818 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800242 () Bool)

(declare-fun e!443713 () Bool)

(declare-fun e!443714 () Bool)

(assert (=> b!800242 (= e!443713 e!443714)))

(declare-fun res!544933 () Bool)

(assert (=> b!800242 (=> (not res!544933) (not e!443714))))

(declare-fun lt!357536 () SeekEntryResult!8416)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800242 (= res!544933 (or (= lt!357536 (MissingZero!8416 i!1163)) (= lt!357536 (MissingVacant!8416 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!800242 (= lt!357536 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800243 () Bool)

(assert (=> b!800243 (= e!443714 e!443715)))

(declare-fun res!544939 () Bool)

(assert (=> b!800243 (=> (not res!544939) (not e!443715))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357535 () (_ BitVec 64))

(declare-fun lt!357533 () array!43483)

(declare-fun lt!357531 () SeekEntryResult!8416)

(assert (=> b!800243 (= res!544939 (= lt!357531 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357535 lt!357533 mask!3266)))))

(assert (=> b!800243 (= lt!357531 (seekEntryOrOpen!0 lt!357535 lt!357533 mask!3266))))

(assert (=> b!800243 (= lt!357535 (select (store (arr!20818 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800243 (= lt!357533 (array!43484 (store (arr!20818 a!3170) i!1163 k0!2044) (size!21239 a!3170)))))

(declare-fun b!800244 () Bool)

(declare-fun res!544937 () Bool)

(assert (=> b!800244 (=> (not res!544937) (not e!443714))))

(assert (=> b!800244 (= res!544937 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21239 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20818 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21239 a!3170)) (= (select (arr!20818 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800246 () Bool)

(declare-fun res!544941 () Bool)

(assert (=> b!800246 (=> (not res!544941) (not e!443714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43483 (_ BitVec 32)) Bool)

(assert (=> b!800246 (= res!544941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800247 () Bool)

(declare-fun res!544936 () Bool)

(assert (=> b!800247 (=> (not res!544936) (not e!443713))))

(declare-fun arrayContainsKey!0 (array!43483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800247 (= res!544936 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800248 () Bool)

(declare-fun res!544935 () Bool)

(assert (=> b!800248 (=> (not res!544935) (not e!443714))))

(declare-datatypes ((List!14834 0))(
  ( (Nil!14831) (Cons!14830 (h!15959 (_ BitVec 64)) (t!21157 List!14834)) )
))
(declare-fun arrayNoDuplicates!0 (array!43483 (_ BitVec 32) List!14834) Bool)

(assert (=> b!800248 (= res!544935 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14831))))

(declare-fun b!800249 () Bool)

(declare-fun e!443716 () Bool)

(assert (=> b!800249 (= e!443716 false)))

(declare-fun lt!357538 () (_ BitVec 32))

(declare-fun lt!357532 () SeekEntryResult!8416)

(assert (=> b!800249 (= lt!357532 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357538 vacantBefore!23 (select (arr!20818 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800250 () Bool)

(declare-fun res!544942 () Bool)

(assert (=> b!800250 (=> (not res!544942) (not e!443713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800250 (= res!544942 (validKeyInArray!0 (select (arr!20818 a!3170) j!153)))))

(declare-fun b!800251 () Bool)

(assert (=> b!800251 (= e!443711 e!443716)))

(declare-fun res!544934 () Bool)

(assert (=> b!800251 (=> (not res!544934) (not e!443716))))

(assert (=> b!800251 (= res!544934 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357538 #b00000000000000000000000000000000) (bvslt lt!357538 (size!21239 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800251 (= lt!357538 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!544938 () Bool)

(assert (=> start!68742 (=> (not res!544938) (not e!443713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68742 (= res!544938 (validMask!0 mask!3266))))

(assert (=> start!68742 e!443713))

(assert (=> start!68742 true))

(declare-fun array_inv!16592 (array!43483) Bool)

(assert (=> start!68742 (array_inv!16592 a!3170)))

(declare-fun b!800245 () Bool)

(declare-fun res!544930 () Bool)

(assert (=> b!800245 (=> (not res!544930) (not e!443716))))

(assert (=> b!800245 (= res!544930 (= lt!357531 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357538 vacantAfter!23 lt!357535 lt!357533 mask!3266)))))

(declare-fun b!800252 () Bool)

(declare-fun res!544932 () Bool)

(assert (=> b!800252 (=> (not res!544932) (not e!443713))))

(assert (=> b!800252 (= res!544932 (validKeyInArray!0 k0!2044))))

(declare-fun b!800253 () Bool)

(declare-fun res!544931 () Bool)

(assert (=> b!800253 (=> (not res!544931) (not e!443713))))

(assert (=> b!800253 (= res!544931 (and (= (size!21239 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21239 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21239 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68742 res!544938) b!800253))

(assert (= (and b!800253 res!544931) b!800250))

(assert (= (and b!800250 res!544942) b!800252))

(assert (= (and b!800252 res!544932) b!800247))

(assert (= (and b!800247 res!544936) b!800242))

(assert (= (and b!800242 res!544933) b!800246))

(assert (= (and b!800246 res!544941) b!800248))

(assert (= (and b!800248 res!544935) b!800244))

(assert (= (and b!800244 res!544937) b!800243))

(assert (= (and b!800243 res!544939) b!800241))

(assert (= (and b!800241 res!544940) b!800251))

(assert (= (and b!800251 res!544934) b!800245))

(assert (= (and b!800245 res!544930) b!800249))

(declare-fun m!741421 () Bool)

(assert (=> b!800241 m!741421))

(declare-fun m!741423 () Bool)

(assert (=> b!800241 m!741423))

(assert (=> b!800241 m!741423))

(declare-fun m!741425 () Bool)

(assert (=> b!800241 m!741425))

(assert (=> b!800241 m!741423))

(declare-fun m!741427 () Bool)

(assert (=> b!800241 m!741427))

(declare-fun m!741429 () Bool)

(assert (=> b!800245 m!741429))

(declare-fun m!741431 () Bool)

(assert (=> b!800251 m!741431))

(declare-fun m!741433 () Bool)

(assert (=> b!800252 m!741433))

(declare-fun m!741435 () Bool)

(assert (=> b!800242 m!741435))

(assert (=> b!800249 m!741423))

(assert (=> b!800249 m!741423))

(declare-fun m!741437 () Bool)

(assert (=> b!800249 m!741437))

(declare-fun m!741439 () Bool)

(assert (=> b!800247 m!741439))

(declare-fun m!741441 () Bool)

(assert (=> start!68742 m!741441))

(declare-fun m!741443 () Bool)

(assert (=> start!68742 m!741443))

(declare-fun m!741445 () Bool)

(assert (=> b!800243 m!741445))

(declare-fun m!741447 () Bool)

(assert (=> b!800243 m!741447))

(declare-fun m!741449 () Bool)

(assert (=> b!800243 m!741449))

(declare-fun m!741451 () Bool)

(assert (=> b!800243 m!741451))

(declare-fun m!741453 () Bool)

(assert (=> b!800248 m!741453))

(declare-fun m!741455 () Bool)

(assert (=> b!800246 m!741455))

(declare-fun m!741457 () Bool)

(assert (=> b!800244 m!741457))

(declare-fun m!741459 () Bool)

(assert (=> b!800244 m!741459))

(assert (=> b!800250 m!741423))

(assert (=> b!800250 m!741423))

(declare-fun m!741461 () Bool)

(assert (=> b!800250 m!741461))

(check-sat (not start!68742) (not b!800241) (not b!800249) (not b!800252) (not b!800246) (not b!800242) (not b!800251) (not b!800245) (not b!800248) (not b!800243) (not b!800247) (not b!800250))
(check-sat)
