; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69000 () Bool)

(assert start!69000)

(declare-fun b!804487 () Bool)

(declare-fun res!549181 () Bool)

(declare-fun e!445676 () Bool)

(assert (=> b!804487 (=> (not res!549181) (not e!445676))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43741 0))(
  ( (array!43742 (arr!20947 (Array (_ BitVec 32) (_ BitVec 64))) (size!21368 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43741)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!804487 (= res!549181 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21368 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20947 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21368 a!3170)) (= (select (arr!20947 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549177 () Bool)

(declare-fun e!445678 () Bool)

(assert (=> start!69000 (=> (not res!549177) (not e!445678))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69000 (= res!549177 (validMask!0 mask!3266))))

(assert (=> start!69000 e!445678))

(assert (=> start!69000 true))

(declare-fun array_inv!16721 (array!43741) Bool)

(assert (=> start!69000 (array_inv!16721 a!3170)))

(declare-fun b!804488 () Bool)

(assert (=> b!804488 (= e!445676 false)))

(declare-fun lt!360172 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8545 0))(
  ( (MissingZero!8545 (index!36547 (_ BitVec 32))) (Found!8545 (index!36548 (_ BitVec 32))) (Intermediate!8545 (undefined!9357 Bool) (index!36549 (_ BitVec 32)) (x!67400 (_ BitVec 32))) (Undefined!8545) (MissingVacant!8545 (index!36550 (_ BitVec 32))) )
))
(declare-fun lt!360175 () SeekEntryResult!8545)

(declare-fun lt!360174 () array!43741)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43741 (_ BitVec 32)) SeekEntryResult!8545)

(assert (=> b!804488 (= lt!360175 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360172 lt!360174 mask!3266))))

(declare-fun lt!360173 () SeekEntryResult!8545)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43741 (_ BitVec 32)) SeekEntryResult!8545)

(assert (=> b!804488 (= lt!360173 (seekEntryOrOpen!0 lt!360172 lt!360174 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804488 (= lt!360172 (select (store (arr!20947 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804488 (= lt!360174 (array!43742 (store (arr!20947 a!3170) i!1163 k0!2044) (size!21368 a!3170)))))

(declare-fun b!804489 () Bool)

(declare-fun res!549184 () Bool)

(assert (=> b!804489 (=> (not res!549184) (not e!445676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43741 (_ BitVec 32)) Bool)

(assert (=> b!804489 (= res!549184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804490 () Bool)

(declare-fun res!549176 () Bool)

(assert (=> b!804490 (=> (not res!549176) (not e!445676))))

(declare-datatypes ((List!14963 0))(
  ( (Nil!14960) (Cons!14959 (h!16088 (_ BitVec 64)) (t!21286 List!14963)) )
))
(declare-fun arrayNoDuplicates!0 (array!43741 (_ BitVec 32) List!14963) Bool)

(assert (=> b!804490 (= res!549176 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14960))))

(declare-fun b!804491 () Bool)

(declare-fun res!549183 () Bool)

(assert (=> b!804491 (=> (not res!549183) (not e!445678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804491 (= res!549183 (validKeyInArray!0 (select (arr!20947 a!3170) j!153)))))

(declare-fun b!804492 () Bool)

(assert (=> b!804492 (= e!445678 e!445676)))

(declare-fun res!549180 () Bool)

(assert (=> b!804492 (=> (not res!549180) (not e!445676))))

(declare-fun lt!360171 () SeekEntryResult!8545)

(assert (=> b!804492 (= res!549180 (or (= lt!360171 (MissingZero!8545 i!1163)) (= lt!360171 (MissingVacant!8545 i!1163))))))

(assert (=> b!804492 (= lt!360171 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804493 () Bool)

(declare-fun res!549179 () Bool)

(assert (=> b!804493 (=> (not res!549179) (not e!445678))))

(declare-fun arrayContainsKey!0 (array!43741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804493 (= res!549179 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804494 () Bool)

(declare-fun res!549182 () Bool)

(assert (=> b!804494 (=> (not res!549182) (not e!445678))))

(assert (=> b!804494 (= res!549182 (validKeyInArray!0 k0!2044))))

(declare-fun b!804495 () Bool)

(declare-fun res!549178 () Bool)

(assert (=> b!804495 (=> (not res!549178) (not e!445678))))

(assert (=> b!804495 (= res!549178 (and (= (size!21368 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21368 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21368 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69000 res!549177) b!804495))

(assert (= (and b!804495 res!549178) b!804491))

(assert (= (and b!804491 res!549183) b!804494))

(assert (= (and b!804494 res!549182) b!804493))

(assert (= (and b!804493 res!549179) b!804492))

(assert (= (and b!804492 res!549180) b!804489))

(assert (= (and b!804489 res!549184) b!804490))

(assert (= (and b!804490 res!549176) b!804487))

(assert (= (and b!804487 res!549181) b!804488))

(declare-fun m!746431 () Bool)

(assert (=> b!804491 m!746431))

(assert (=> b!804491 m!746431))

(declare-fun m!746433 () Bool)

(assert (=> b!804491 m!746433))

(declare-fun m!746435 () Bool)

(assert (=> b!804490 m!746435))

(declare-fun m!746437 () Bool)

(assert (=> b!804493 m!746437))

(declare-fun m!746439 () Bool)

(assert (=> start!69000 m!746439))

(declare-fun m!746441 () Bool)

(assert (=> start!69000 m!746441))

(declare-fun m!746443 () Bool)

(assert (=> b!804492 m!746443))

(declare-fun m!746445 () Bool)

(assert (=> b!804494 m!746445))

(declare-fun m!746447 () Bool)

(assert (=> b!804488 m!746447))

(declare-fun m!746449 () Bool)

(assert (=> b!804488 m!746449))

(declare-fun m!746451 () Bool)

(assert (=> b!804488 m!746451))

(declare-fun m!746453 () Bool)

(assert (=> b!804488 m!746453))

(declare-fun m!746455 () Bool)

(assert (=> b!804489 m!746455))

(declare-fun m!746457 () Bool)

(assert (=> b!804487 m!746457))

(declare-fun m!746459 () Bool)

(assert (=> b!804487 m!746459))

(check-sat (not b!804490) (not b!804492) (not b!804489) (not b!804488) (not b!804493) (not b!804494) (not start!69000) (not b!804491))
(check-sat)
