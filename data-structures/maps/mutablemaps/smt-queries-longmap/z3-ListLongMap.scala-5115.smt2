; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69426 () Bool)

(assert start!69426)

(declare-fun b!809114 () Bool)

(declare-fun res!553014 () Bool)

(declare-fun e!447909 () Bool)

(assert (=> b!809114 (=> (not res!553014) (not e!447909))))

(declare-datatypes ((array!43975 0))(
  ( (array!43976 (arr!21058 (Array (_ BitVec 32) (_ BitVec 64))) (size!21479 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43975)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809114 (= res!553014 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!809115 () Bool)

(declare-fun res!553015 () Bool)

(assert (=> b!809115 (=> (not res!553015) (not e!447909))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809115 (= res!553015 (validKeyInArray!0 k0!2044))))

(declare-fun b!809116 () Bool)

(declare-fun e!447913 () Bool)

(declare-fun e!447912 () Bool)

(assert (=> b!809116 (= e!447913 e!447912)))

(declare-fun res!553017 () Bool)

(assert (=> b!809116 (=> (not res!553017) (not e!447912))))

(declare-datatypes ((SeekEntryResult!8656 0))(
  ( (MissingZero!8656 (index!36991 (_ BitVec 32))) (Found!8656 (index!36992 (_ BitVec 32))) (Intermediate!8656 (undefined!9468 Bool) (index!36993 (_ BitVec 32)) (x!67825 (_ BitVec 32))) (Undefined!8656) (MissingVacant!8656 (index!36994 (_ BitVec 32))) )
))
(declare-fun lt!362605 () SeekEntryResult!8656)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!362604 () SeekEntryResult!8656)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809116 (= res!553017 (and (= lt!362604 lt!362605) (= lt!362605 (Found!8656 j!153)) (not (= (select (arr!21058 a!3170) index!1236) (select (arr!21058 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43975 (_ BitVec 32)) SeekEntryResult!8656)

(assert (=> b!809116 (= lt!362605 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21058 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43975 (_ BitVec 32)) SeekEntryResult!8656)

(assert (=> b!809116 (= lt!362604 (seekEntryOrOpen!0 (select (arr!21058 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809117 () Bool)

(declare-fun res!553019 () Bool)

(declare-fun e!447911 () Bool)

(assert (=> b!809117 (=> (not res!553019) (not e!447911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43975 (_ BitVec 32)) Bool)

(assert (=> b!809117 (= res!553019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809118 () Bool)

(assert (=> b!809118 (= e!447912 false)))

(declare-fun lt!362603 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809118 (= lt!362603 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809119 () Bool)

(declare-fun res!553018 () Bool)

(assert (=> b!809119 (=> (not res!553018) (not e!447909))))

(assert (=> b!809119 (= res!553018 (validKeyInArray!0 (select (arr!21058 a!3170) j!153)))))

(declare-fun b!809120 () Bool)

(assert (=> b!809120 (= e!447909 e!447911)))

(declare-fun res!553020 () Bool)

(assert (=> b!809120 (=> (not res!553020) (not e!447911))))

(declare-fun lt!362608 () SeekEntryResult!8656)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!809120 (= res!553020 (or (= lt!362608 (MissingZero!8656 i!1163)) (= lt!362608 (MissingVacant!8656 i!1163))))))

(assert (=> b!809120 (= lt!362608 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!809121 () Bool)

(assert (=> b!809121 (= e!447911 e!447913)))

(declare-fun res!553013 () Bool)

(assert (=> b!809121 (=> (not res!553013) (not e!447913))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!362606 () (_ BitVec 64))

(declare-fun lt!362607 () array!43975)

(assert (=> b!809121 (= res!553013 (= (seekEntryOrOpen!0 lt!362606 lt!362607 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362606 lt!362607 mask!3266)))))

(assert (=> b!809121 (= lt!362606 (select (store (arr!21058 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!809121 (= lt!362607 (array!43976 (store (arr!21058 a!3170) i!1163 k0!2044) (size!21479 a!3170)))))

(declare-fun b!809122 () Bool)

(declare-fun res!553011 () Bool)

(assert (=> b!809122 (=> (not res!553011) (not e!447911))))

(declare-datatypes ((List!15074 0))(
  ( (Nil!15071) (Cons!15070 (h!16199 (_ BitVec 64)) (t!21397 List!15074)) )
))
(declare-fun arrayNoDuplicates!0 (array!43975 (_ BitVec 32) List!15074) Bool)

(assert (=> b!809122 (= res!553011 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15071))))

(declare-fun res!553012 () Bool)

(assert (=> start!69426 (=> (not res!553012) (not e!447909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69426 (= res!553012 (validMask!0 mask!3266))))

(assert (=> start!69426 e!447909))

(assert (=> start!69426 true))

(declare-fun array_inv!16832 (array!43975) Bool)

(assert (=> start!69426 (array_inv!16832 a!3170)))

(declare-fun b!809123 () Bool)

(declare-fun res!553021 () Bool)

(assert (=> b!809123 (=> (not res!553021) (not e!447911))))

(assert (=> b!809123 (= res!553021 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21479 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21058 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21479 a!3170)) (= (select (arr!21058 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809124 () Bool)

(declare-fun res!553016 () Bool)

(assert (=> b!809124 (=> (not res!553016) (not e!447909))))

(assert (=> b!809124 (= res!553016 (and (= (size!21479 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21479 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21479 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69426 res!553012) b!809124))

(assert (= (and b!809124 res!553016) b!809119))

(assert (= (and b!809119 res!553018) b!809115))

(assert (= (and b!809115 res!553015) b!809114))

(assert (= (and b!809114 res!553014) b!809120))

(assert (= (and b!809120 res!553020) b!809117))

(assert (= (and b!809117 res!553019) b!809122))

(assert (= (and b!809122 res!553011) b!809123))

(assert (= (and b!809123 res!553021) b!809121))

(assert (= (and b!809121 res!553013) b!809116))

(assert (= (and b!809116 res!553017) b!809118))

(declare-fun m!751377 () Bool)

(assert (=> start!69426 m!751377))

(declare-fun m!751379 () Bool)

(assert (=> start!69426 m!751379))

(declare-fun m!751381 () Bool)

(assert (=> b!809121 m!751381))

(declare-fun m!751383 () Bool)

(assert (=> b!809121 m!751383))

(declare-fun m!751385 () Bool)

(assert (=> b!809121 m!751385))

(declare-fun m!751387 () Bool)

(assert (=> b!809121 m!751387))

(declare-fun m!751389 () Bool)

(assert (=> b!809120 m!751389))

(declare-fun m!751391 () Bool)

(assert (=> b!809115 m!751391))

(declare-fun m!751393 () Bool)

(assert (=> b!809119 m!751393))

(assert (=> b!809119 m!751393))

(declare-fun m!751395 () Bool)

(assert (=> b!809119 m!751395))

(declare-fun m!751397 () Bool)

(assert (=> b!809114 m!751397))

(declare-fun m!751399 () Bool)

(assert (=> b!809122 m!751399))

(declare-fun m!751401 () Bool)

(assert (=> b!809116 m!751401))

(assert (=> b!809116 m!751393))

(assert (=> b!809116 m!751393))

(declare-fun m!751403 () Bool)

(assert (=> b!809116 m!751403))

(assert (=> b!809116 m!751393))

(declare-fun m!751405 () Bool)

(assert (=> b!809116 m!751405))

(declare-fun m!751407 () Bool)

(assert (=> b!809117 m!751407))

(declare-fun m!751409 () Bool)

(assert (=> b!809118 m!751409))

(declare-fun m!751411 () Bool)

(assert (=> b!809123 m!751411))

(declare-fun m!751413 () Bool)

(assert (=> b!809123 m!751413))

(check-sat (not b!809114) (not b!809116) (not start!69426) (not b!809120) (not b!809115) (not b!809117) (not b!809122) (not b!809118) (not b!809121) (not b!809119))
(check-sat)
