; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68474 () Bool)

(assert start!68474)

(declare-fun b!795540 () Bool)

(declare-fun res!540229 () Bool)

(declare-fun e!441546 () Bool)

(assert (=> b!795540 (=> (not res!540229) (not e!441546))))

(declare-datatypes ((array!43215 0))(
  ( (array!43216 (arr!20684 (Array (_ BitVec 32) (_ BitVec 64))) (size!21105 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43215)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795540 (= res!540229 (validKeyInArray!0 (select (arr!20684 a!3170) j!153)))))

(declare-fun b!795541 () Bool)

(declare-fun e!441544 () Bool)

(declare-fun e!441545 () Bool)

(assert (=> b!795541 (= e!441544 e!441545)))

(declare-fun res!540235 () Bool)

(assert (=> b!795541 (=> (not res!540235) (not e!441545))))

(declare-fun lt!354651 () array!43215)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!354654 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8282 0))(
  ( (MissingZero!8282 (index!35495 (_ BitVec 32))) (Found!8282 (index!35496 (_ BitVec 32))) (Intermediate!8282 (undefined!9094 Bool) (index!35497 (_ BitVec 32)) (x!66433 (_ BitVec 32))) (Undefined!8282) (MissingVacant!8282 (index!35498 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43215 (_ BitVec 32)) SeekEntryResult!8282)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43215 (_ BitVec 32)) SeekEntryResult!8282)

(assert (=> b!795541 (= res!540235 (= (seekEntryOrOpen!0 lt!354654 lt!354651 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354654 lt!354651 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795541 (= lt!354654 (select (store (arr!20684 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795541 (= lt!354651 (array!43216 (store (arr!20684 a!3170) i!1163 k!2044) (size!21105 a!3170)))))

(declare-fun b!795542 () Bool)

(declare-fun res!540236 () Bool)

(assert (=> b!795542 (=> (not res!540236) (not e!441544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43215 (_ BitVec 32)) Bool)

(assert (=> b!795542 (= res!540236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795543 () Bool)

(assert (=> b!795543 (= e!441546 e!441544)))

(declare-fun res!540237 () Bool)

(assert (=> b!795543 (=> (not res!540237) (not e!441544))))

(declare-fun lt!354652 () SeekEntryResult!8282)

(assert (=> b!795543 (= res!540237 (or (= lt!354652 (MissingZero!8282 i!1163)) (= lt!354652 (MissingVacant!8282 i!1163))))))

(assert (=> b!795543 (= lt!354652 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795544 () Bool)

(declare-fun res!540231 () Bool)

(assert (=> b!795544 (=> (not res!540231) (not e!441546))))

(assert (=> b!795544 (= res!540231 (validKeyInArray!0 k!2044))))

(declare-fun res!540232 () Bool)

(assert (=> start!68474 (=> (not res!540232) (not e!441546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68474 (= res!540232 (validMask!0 mask!3266))))

(assert (=> start!68474 e!441546))

(assert (=> start!68474 true))

(declare-fun array_inv!16458 (array!43215) Bool)

(assert (=> start!68474 (array_inv!16458 a!3170)))

(declare-fun b!795545 () Bool)

(declare-fun res!540233 () Bool)

(assert (=> b!795545 (=> (not res!540233) (not e!441544))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795545 (= res!540233 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21105 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20684 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21105 a!3170)) (= (select (arr!20684 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795546 () Bool)

(declare-fun res!540230 () Bool)

(assert (=> b!795546 (=> (not res!540230) (not e!441546))))

(declare-fun arrayContainsKey!0 (array!43215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795546 (= res!540230 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795547 () Bool)

(declare-fun res!540238 () Bool)

(assert (=> b!795547 (=> (not res!540238) (not e!441544))))

(declare-datatypes ((List!14700 0))(
  ( (Nil!14697) (Cons!14696 (h!15825 (_ BitVec 64)) (t!21023 List!14700)) )
))
(declare-fun arrayNoDuplicates!0 (array!43215 (_ BitVec 32) List!14700) Bool)

(assert (=> b!795547 (= res!540238 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14697))))

(declare-fun b!795548 () Bool)

(declare-fun res!540234 () Bool)

(assert (=> b!795548 (=> (not res!540234) (not e!441546))))

(assert (=> b!795548 (= res!540234 (and (= (size!21105 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21105 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21105 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795549 () Bool)

(assert (=> b!795549 (= e!441545 false)))

(declare-fun lt!354655 () SeekEntryResult!8282)

(assert (=> b!795549 (= lt!354655 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20684 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354653 () SeekEntryResult!8282)

(assert (=> b!795549 (= lt!354653 (seekEntryOrOpen!0 (select (arr!20684 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68474 res!540232) b!795548))

(assert (= (and b!795548 res!540234) b!795540))

(assert (= (and b!795540 res!540229) b!795544))

(assert (= (and b!795544 res!540231) b!795546))

(assert (= (and b!795546 res!540230) b!795543))

(assert (= (and b!795543 res!540237) b!795542))

(assert (= (and b!795542 res!540236) b!795547))

(assert (= (and b!795547 res!540238) b!795545))

(assert (= (and b!795545 res!540233) b!795541))

(assert (= (and b!795541 res!540235) b!795549))

(declare-fun m!736317 () Bool)

(assert (=> b!795549 m!736317))

(assert (=> b!795549 m!736317))

(declare-fun m!736319 () Bool)

(assert (=> b!795549 m!736319))

(assert (=> b!795549 m!736317))

(declare-fun m!736321 () Bool)

(assert (=> b!795549 m!736321))

(declare-fun m!736323 () Bool)

(assert (=> b!795545 m!736323))

(declare-fun m!736325 () Bool)

(assert (=> b!795545 m!736325))

(declare-fun m!736327 () Bool)

(assert (=> b!795547 m!736327))

(declare-fun m!736329 () Bool)

(assert (=> b!795544 m!736329))

(assert (=> b!795540 m!736317))

(assert (=> b!795540 m!736317))

(declare-fun m!736331 () Bool)

(assert (=> b!795540 m!736331))

(declare-fun m!736333 () Bool)

(assert (=> start!68474 m!736333))

(declare-fun m!736335 () Bool)

(assert (=> start!68474 m!736335))

(declare-fun m!736337 () Bool)

(assert (=> b!795541 m!736337))

(declare-fun m!736339 () Bool)

(assert (=> b!795541 m!736339))

(declare-fun m!736341 () Bool)

(assert (=> b!795541 m!736341))

(declare-fun m!736343 () Bool)

(assert (=> b!795541 m!736343))

(declare-fun m!736345 () Bool)

(assert (=> b!795546 m!736345))

(declare-fun m!736347 () Bool)

(assert (=> b!795543 m!736347))

(declare-fun m!736349 () Bool)

(assert (=> b!795542 m!736349))

(push 1)

(assert (not b!795542))

(assert (not b!795540))

(assert (not b!795549))

(assert (not start!68474))

(assert (not b!795544))

