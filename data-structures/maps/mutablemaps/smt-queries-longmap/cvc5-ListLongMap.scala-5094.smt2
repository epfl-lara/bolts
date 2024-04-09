; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69190 () Bool)

(assert start!69190)

(declare-fun b!806472 () Bool)

(declare-fun res!550772 () Bool)

(declare-fun e!446616 () Bool)

(assert (=> b!806472 (=> (not res!550772) (not e!446616))))

(declare-datatypes ((array!43841 0))(
  ( (array!43842 (arr!20994 (Array (_ BitVec 32) (_ BitVec 64))) (size!21415 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43841)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806472 (= res!550772 (and (= (size!21415 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21415 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21415 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806473 () Bool)

(declare-fun res!550771 () Bool)

(declare-fun e!446618 () Bool)

(assert (=> b!806473 (=> (not res!550771) (not e!446618))))

(declare-datatypes ((List!15010 0))(
  ( (Nil!15007) (Cons!15006 (h!16135 (_ BitVec 64)) (t!21333 List!15010)) )
))
(declare-fun arrayNoDuplicates!0 (array!43841 (_ BitVec 32) List!15010) Bool)

(assert (=> b!806473 (= res!550771 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15007))))

(declare-fun b!806474 () Bool)

(declare-fun res!550765 () Bool)

(assert (=> b!806474 (=> (not res!550765) (not e!446618))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43841 (_ BitVec 32)) Bool)

(assert (=> b!806474 (= res!550765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806475 () Bool)

(declare-fun res!550773 () Bool)

(assert (=> b!806475 (=> (not res!550773) (not e!446616))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806475 (= res!550773 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806476 () Bool)

(declare-fun res!550774 () Bool)

(assert (=> b!806476 (=> (not res!550774) (not e!446616))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806476 (= res!550774 (validKeyInArray!0 (select (arr!20994 a!3170) j!153)))))

(declare-fun b!806477 () Bool)

(declare-fun res!550768 () Bool)

(assert (=> b!806477 (=> (not res!550768) (not e!446618))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806477 (= res!550768 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21415 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20994 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21415 a!3170)) (= (select (arr!20994 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806471 () Bool)

(declare-fun e!446619 () Bool)

(assert (=> b!806471 (= e!446619 (not true))))

(declare-datatypes ((SeekEntryResult!8592 0))(
  ( (MissingZero!8592 (index!36735 (_ BitVec 32))) (Found!8592 (index!36736 (_ BitVec 32))) (Intermediate!8592 (undefined!9404 Bool) (index!36737 (_ BitVec 32)) (x!67581 (_ BitVec 32))) (Undefined!8592) (MissingVacant!8592 (index!36738 (_ BitVec 32))) )
))
(declare-fun lt!361208 () SeekEntryResult!8592)

(assert (=> b!806471 (= lt!361208 (Found!8592 index!1236))))

(declare-fun res!550766 () Bool)

(assert (=> start!69190 (=> (not res!550766) (not e!446616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69190 (= res!550766 (validMask!0 mask!3266))))

(assert (=> start!69190 e!446616))

(assert (=> start!69190 true))

(declare-fun array_inv!16768 (array!43841) Bool)

(assert (=> start!69190 (array_inv!16768 a!3170)))

(declare-fun b!806478 () Bool)

(declare-fun e!446617 () Bool)

(assert (=> b!806478 (= e!446617 e!446619)))

(declare-fun res!550767 () Bool)

(assert (=> b!806478 (=> (not res!550767) (not e!446619))))

(declare-fun lt!361211 () SeekEntryResult!8592)

(declare-fun lt!361210 () SeekEntryResult!8592)

(assert (=> b!806478 (= res!550767 (and (= lt!361210 lt!361211) (= lt!361211 (Found!8592 j!153)) (= (select (arr!20994 a!3170) index!1236) (select (arr!20994 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43841 (_ BitVec 32)) SeekEntryResult!8592)

(assert (=> b!806478 (= lt!361211 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20994 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43841 (_ BitVec 32)) SeekEntryResult!8592)

(assert (=> b!806478 (= lt!361210 (seekEntryOrOpen!0 (select (arr!20994 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806479 () Bool)

(assert (=> b!806479 (= e!446616 e!446618)))

(declare-fun res!550764 () Bool)

(assert (=> b!806479 (=> (not res!550764) (not e!446618))))

(declare-fun lt!361207 () SeekEntryResult!8592)

(assert (=> b!806479 (= res!550764 (or (= lt!361207 (MissingZero!8592 i!1163)) (= lt!361207 (MissingVacant!8592 i!1163))))))

(assert (=> b!806479 (= lt!361207 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806480 () Bool)

(assert (=> b!806480 (= e!446618 e!446617)))

(declare-fun res!550770 () Bool)

(assert (=> b!806480 (=> (not res!550770) (not e!446617))))

(declare-fun lt!361212 () SeekEntryResult!8592)

(assert (=> b!806480 (= res!550770 (= lt!361212 lt!361208))))

(declare-fun lt!361213 () (_ BitVec 64))

(declare-fun lt!361209 () array!43841)

(assert (=> b!806480 (= lt!361208 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361213 lt!361209 mask!3266))))

(assert (=> b!806480 (= lt!361212 (seekEntryOrOpen!0 lt!361213 lt!361209 mask!3266))))

(assert (=> b!806480 (= lt!361213 (select (store (arr!20994 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806480 (= lt!361209 (array!43842 (store (arr!20994 a!3170) i!1163 k!2044) (size!21415 a!3170)))))

(declare-fun b!806481 () Bool)

(declare-fun res!550769 () Bool)

(assert (=> b!806481 (=> (not res!550769) (not e!446616))))

(assert (=> b!806481 (= res!550769 (validKeyInArray!0 k!2044))))

(assert (= (and start!69190 res!550766) b!806472))

(assert (= (and b!806472 res!550772) b!806476))

(assert (= (and b!806476 res!550774) b!806481))

(assert (= (and b!806481 res!550769) b!806475))

(assert (= (and b!806475 res!550773) b!806479))

(assert (= (and b!806479 res!550764) b!806474))

(assert (= (and b!806474 res!550765) b!806473))

(assert (= (and b!806473 res!550771) b!806477))

(assert (= (and b!806477 res!550768) b!806480))

(assert (= (and b!806480 res!550770) b!806478))

(assert (= (and b!806478 res!550767) b!806471))

(declare-fun m!748507 () Bool)

(assert (=> b!806477 m!748507))

(declare-fun m!748509 () Bool)

(assert (=> b!806477 m!748509))

(declare-fun m!748511 () Bool)

(assert (=> b!806475 m!748511))

(declare-fun m!748513 () Bool)

(assert (=> b!806478 m!748513))

(declare-fun m!748515 () Bool)

(assert (=> b!806478 m!748515))

(assert (=> b!806478 m!748515))

(declare-fun m!748517 () Bool)

(assert (=> b!806478 m!748517))

(assert (=> b!806478 m!748515))

(declare-fun m!748519 () Bool)

(assert (=> b!806478 m!748519))

(declare-fun m!748521 () Bool)

(assert (=> b!806479 m!748521))

(declare-fun m!748523 () Bool)

(assert (=> b!806474 m!748523))

(declare-fun m!748525 () Bool)

(assert (=> b!806481 m!748525))

(assert (=> b!806476 m!748515))

(assert (=> b!806476 m!748515))

(declare-fun m!748527 () Bool)

(assert (=> b!806476 m!748527))

(declare-fun m!748529 () Bool)

(assert (=> b!806480 m!748529))

(declare-fun m!748531 () Bool)

(assert (=> b!806480 m!748531))

(declare-fun m!748533 () Bool)

(assert (=> b!806480 m!748533))

(declare-fun m!748535 () Bool)

(assert (=> b!806480 m!748535))

(declare-fun m!748537 () Bool)

(assert (=> start!69190 m!748537))

(declare-fun m!748539 () Bool)

(assert (=> start!69190 m!748539))

(declare-fun m!748541 () Bool)

(assert (=> b!806473 m!748541))

(push 1)

