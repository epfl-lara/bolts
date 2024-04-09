; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68706 () Bool)

(assert start!68706)

(declare-fun res!544240 () Bool)

(declare-fun e!443389 () Bool)

(assert (=> start!68706 (=> (not res!544240) (not e!443389))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68706 (= res!544240 (validMask!0 mask!3266))))

(assert (=> start!68706 e!443389))

(assert (=> start!68706 true))

(declare-datatypes ((array!43447 0))(
  ( (array!43448 (arr!20800 (Array (_ BitVec 32) (_ BitVec 64))) (size!21221 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43447)

(declare-fun array_inv!16574 (array!43447) Bool)

(assert (=> start!68706 (array_inv!16574 a!3170)))

(declare-fun b!799539 () Bool)

(declare-fun res!544235 () Bool)

(declare-fun e!443392 () Bool)

(assert (=> b!799539 (=> (not res!544235) (not e!443392))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799539 (= res!544235 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21221 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20800 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21221 a!3170)) (= (select (arr!20800 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799540 () Bool)

(declare-fun res!544233 () Bool)

(assert (=> b!799540 (=> (not res!544233) (not e!443392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43447 (_ BitVec 32)) Bool)

(assert (=> b!799540 (= res!544233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799541 () Bool)

(declare-fun e!443390 () Bool)

(assert (=> b!799541 (= e!443390 false)))

(declare-datatypes ((SeekEntryResult!8398 0))(
  ( (MissingZero!8398 (index!35959 (_ BitVec 32))) (Found!8398 (index!35960 (_ BitVec 32))) (Intermediate!8398 (undefined!9210 Bool) (index!35961 (_ BitVec 32)) (x!66861 (_ BitVec 32))) (Undefined!8398) (MissingVacant!8398 (index!35962 (_ BitVec 32))) )
))
(declare-fun lt!357101 () SeekEntryResult!8398)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!357102 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43447 (_ BitVec 32)) SeekEntryResult!8398)

(assert (=> b!799541 (= lt!357101 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357102 vacantBefore!23 (select (arr!20800 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799542 () Bool)

(declare-fun res!544231 () Bool)

(assert (=> b!799542 (=> (not res!544231) (not e!443389))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799542 (= res!544231 (validKeyInArray!0 k0!2044))))

(declare-fun b!799543 () Bool)

(declare-fun res!544228 () Bool)

(assert (=> b!799543 (=> (not res!544228) (not e!443389))))

(declare-fun arrayContainsKey!0 (array!43447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799543 (= res!544228 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799544 () Bool)

(declare-fun res!544239 () Bool)

(assert (=> b!799544 (=> (not res!544239) (not e!443389))))

(assert (=> b!799544 (= res!544239 (and (= (size!21221 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21221 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21221 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799545 () Bool)

(assert (=> b!799545 (= e!443389 e!443392)))

(declare-fun res!544232 () Bool)

(assert (=> b!799545 (=> (not res!544232) (not e!443392))))

(declare-fun lt!357106 () SeekEntryResult!8398)

(assert (=> b!799545 (= res!544232 (or (= lt!357106 (MissingZero!8398 i!1163)) (= lt!357106 (MissingVacant!8398 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43447 (_ BitVec 32)) SeekEntryResult!8398)

(assert (=> b!799545 (= lt!357106 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799546 () Bool)

(declare-fun res!544229 () Bool)

(assert (=> b!799546 (=> (not res!544229) (not e!443389))))

(assert (=> b!799546 (= res!544229 (validKeyInArray!0 (select (arr!20800 a!3170) j!153)))))

(declare-fun b!799547 () Bool)

(declare-fun e!443388 () Bool)

(assert (=> b!799547 (= e!443388 e!443390)))

(declare-fun res!544236 () Bool)

(assert (=> b!799547 (=> (not res!544236) (not e!443390))))

(assert (=> b!799547 (= res!544236 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357102 #b00000000000000000000000000000000) (bvslt lt!357102 (size!21221 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799547 (= lt!357102 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799548 () Bool)

(declare-fun e!443391 () Bool)

(assert (=> b!799548 (= e!443392 e!443391)))

(declare-fun res!544238 () Bool)

(assert (=> b!799548 (=> (not res!544238) (not e!443391))))

(declare-fun lt!357105 () array!43447)

(declare-fun lt!357104 () SeekEntryResult!8398)

(declare-fun lt!357103 () (_ BitVec 64))

(assert (=> b!799548 (= res!544238 (= lt!357104 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357103 lt!357105 mask!3266)))))

(assert (=> b!799548 (= lt!357104 (seekEntryOrOpen!0 lt!357103 lt!357105 mask!3266))))

(assert (=> b!799548 (= lt!357103 (select (store (arr!20800 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799548 (= lt!357105 (array!43448 (store (arr!20800 a!3170) i!1163 k0!2044) (size!21221 a!3170)))))

(declare-fun b!799549 () Bool)

(declare-fun res!544230 () Bool)

(assert (=> b!799549 (=> (not res!544230) (not e!443392))))

(declare-datatypes ((List!14816 0))(
  ( (Nil!14813) (Cons!14812 (h!15941 (_ BitVec 64)) (t!21139 List!14816)) )
))
(declare-fun arrayNoDuplicates!0 (array!43447 (_ BitVec 32) List!14816) Bool)

(assert (=> b!799549 (= res!544230 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14813))))

(declare-fun b!799550 () Bool)

(assert (=> b!799550 (= e!443391 e!443388)))

(declare-fun res!544237 () Bool)

(assert (=> b!799550 (=> (not res!544237) (not e!443388))))

(declare-fun lt!357099 () SeekEntryResult!8398)

(declare-fun lt!357100 () SeekEntryResult!8398)

(assert (=> b!799550 (= res!544237 (and (= lt!357099 lt!357100) (= lt!357100 (Found!8398 j!153)) (not (= (select (arr!20800 a!3170) index!1236) (select (arr!20800 a!3170) j!153)))))))

(assert (=> b!799550 (= lt!357100 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20800 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799550 (= lt!357099 (seekEntryOrOpen!0 (select (arr!20800 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799551 () Bool)

(declare-fun res!544234 () Bool)

(assert (=> b!799551 (=> (not res!544234) (not e!443390))))

(assert (=> b!799551 (= res!544234 (= lt!357104 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357102 vacantAfter!23 lt!357103 lt!357105 mask!3266)))))

(assert (= (and start!68706 res!544240) b!799544))

(assert (= (and b!799544 res!544239) b!799546))

(assert (= (and b!799546 res!544229) b!799542))

(assert (= (and b!799542 res!544231) b!799543))

(assert (= (and b!799543 res!544228) b!799545))

(assert (= (and b!799545 res!544232) b!799540))

(assert (= (and b!799540 res!544233) b!799549))

(assert (= (and b!799549 res!544230) b!799539))

(assert (= (and b!799539 res!544235) b!799548))

(assert (= (and b!799548 res!544238) b!799550))

(assert (= (and b!799550 res!544237) b!799547))

(assert (= (and b!799547 res!544236) b!799551))

(assert (= (and b!799551 res!544234) b!799541))

(declare-fun m!740665 () Bool)

(assert (=> b!799551 m!740665))

(declare-fun m!740667 () Bool)

(assert (=> b!799548 m!740667))

(declare-fun m!740669 () Bool)

(assert (=> b!799548 m!740669))

(declare-fun m!740671 () Bool)

(assert (=> b!799548 m!740671))

(declare-fun m!740673 () Bool)

(assert (=> b!799548 m!740673))

(declare-fun m!740675 () Bool)

(assert (=> b!799545 m!740675))

(declare-fun m!740677 () Bool)

(assert (=> b!799546 m!740677))

(assert (=> b!799546 m!740677))

(declare-fun m!740679 () Bool)

(assert (=> b!799546 m!740679))

(declare-fun m!740681 () Bool)

(assert (=> b!799542 m!740681))

(declare-fun m!740683 () Bool)

(assert (=> b!799539 m!740683))

(declare-fun m!740685 () Bool)

(assert (=> b!799539 m!740685))

(declare-fun m!740687 () Bool)

(assert (=> b!799549 m!740687))

(declare-fun m!740689 () Bool)

(assert (=> b!799547 m!740689))

(declare-fun m!740691 () Bool)

(assert (=> b!799550 m!740691))

(assert (=> b!799550 m!740677))

(assert (=> b!799550 m!740677))

(declare-fun m!740693 () Bool)

(assert (=> b!799550 m!740693))

(assert (=> b!799550 m!740677))

(declare-fun m!740695 () Bool)

(assert (=> b!799550 m!740695))

(assert (=> b!799541 m!740677))

(assert (=> b!799541 m!740677))

(declare-fun m!740697 () Bool)

(assert (=> b!799541 m!740697))

(declare-fun m!740699 () Bool)

(assert (=> start!68706 m!740699))

(declare-fun m!740701 () Bool)

(assert (=> start!68706 m!740701))

(declare-fun m!740703 () Bool)

(assert (=> b!799543 m!740703))

(declare-fun m!740705 () Bool)

(assert (=> b!799540 m!740705))

(check-sat (not b!799541) (not b!799551) (not b!799542) (not b!799550) (not b!799546) (not b!799540) (not b!799543) (not b!799545) (not b!799547) (not start!68706) (not b!799549) (not b!799548))
(check-sat)
