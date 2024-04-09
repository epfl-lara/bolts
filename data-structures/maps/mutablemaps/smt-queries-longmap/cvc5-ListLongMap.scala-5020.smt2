; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68650 () Bool)

(assert start!68650)

(declare-fun b!798495 () Bool)

(declare-fun res!543186 () Bool)

(declare-fun e!442915 () Bool)

(assert (=> b!798495 (=> (not res!543186) (not e!442915))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798495 (= res!543186 (validKeyInArray!0 k!2044))))

(declare-fun res!543184 () Bool)

(assert (=> start!68650 (=> (not res!543184) (not e!442915))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68650 (= res!543184 (validMask!0 mask!3266))))

(assert (=> start!68650 e!442915))

(assert (=> start!68650 true))

(declare-datatypes ((array!43391 0))(
  ( (array!43392 (arr!20772 (Array (_ BitVec 32) (_ BitVec 64))) (size!21193 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43391)

(declare-fun array_inv!16546 (array!43391) Bool)

(assert (=> start!68650 (array_inv!16546 a!3170)))

(declare-fun b!798496 () Bool)

(declare-fun res!543193 () Bool)

(assert (=> b!798496 (=> (not res!543193) (not e!442915))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798496 (= res!543193 (validKeyInArray!0 (select (arr!20772 a!3170) j!153)))))

(declare-fun e!442916 () Bool)

(declare-datatypes ((SeekEntryResult!8370 0))(
  ( (MissingZero!8370 (index!35847 (_ BitVec 32))) (Found!8370 (index!35848 (_ BitVec 32))) (Intermediate!8370 (undefined!9182 Bool) (index!35849 (_ BitVec 32)) (x!66761 (_ BitVec 32))) (Undefined!8370) (MissingVacant!8370 (index!35850 (_ BitVec 32))) )
))
(declare-fun lt!356477 () SeekEntryResult!8370)

(declare-fun lt!356478 () SeekEntryResult!8370)

(declare-fun b!798497 () Bool)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798497 (= e!442916 (and (= lt!356477 lt!356478) (= lt!356478 (Found!8370 j!153)) (not (= (select (arr!20772 a!3170) index!1236) (select (arr!20772 a!3170) j!153))) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43391 (_ BitVec 32)) SeekEntryResult!8370)

(assert (=> b!798497 (= lt!356478 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20772 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43391 (_ BitVec 32)) SeekEntryResult!8370)

(assert (=> b!798497 (= lt!356477 (seekEntryOrOpen!0 (select (arr!20772 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798498 () Bool)

(declare-fun res!543185 () Bool)

(assert (=> b!798498 (=> (not res!543185) (not e!442915))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798498 (= res!543185 (and (= (size!21193 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21193 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21193 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798499 () Bool)

(declare-fun res!543187 () Bool)

(declare-fun e!442917 () Bool)

(assert (=> b!798499 (=> (not res!543187) (not e!442917))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798499 (= res!543187 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21193 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20772 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21193 a!3170)) (= (select (arr!20772 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798500 () Bool)

(assert (=> b!798500 (= e!442917 e!442916)))

(declare-fun res!543188 () Bool)

(assert (=> b!798500 (=> (not res!543188) (not e!442916))))

(declare-fun lt!356476 () array!43391)

(declare-fun lt!356479 () (_ BitVec 64))

(assert (=> b!798500 (= res!543188 (= (seekEntryOrOpen!0 lt!356479 lt!356476 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356479 lt!356476 mask!3266)))))

(assert (=> b!798500 (= lt!356479 (select (store (arr!20772 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798500 (= lt!356476 (array!43392 (store (arr!20772 a!3170) i!1163 k!2044) (size!21193 a!3170)))))

(declare-fun b!798501 () Bool)

(declare-fun res!543191 () Bool)

(assert (=> b!798501 (=> (not res!543191) (not e!442917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43391 (_ BitVec 32)) Bool)

(assert (=> b!798501 (= res!543191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798502 () Bool)

(assert (=> b!798502 (= e!442915 e!442917)))

(declare-fun res!543189 () Bool)

(assert (=> b!798502 (=> (not res!543189) (not e!442917))))

(declare-fun lt!356475 () SeekEntryResult!8370)

(assert (=> b!798502 (= res!543189 (or (= lt!356475 (MissingZero!8370 i!1163)) (= lt!356475 (MissingVacant!8370 i!1163))))))

(assert (=> b!798502 (= lt!356475 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798503 () Bool)

(declare-fun res!543192 () Bool)

(assert (=> b!798503 (=> (not res!543192) (not e!442915))))

(declare-fun arrayContainsKey!0 (array!43391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798503 (= res!543192 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798504 () Bool)

(declare-fun res!543190 () Bool)

(assert (=> b!798504 (=> (not res!543190) (not e!442917))))

(declare-datatypes ((List!14788 0))(
  ( (Nil!14785) (Cons!14784 (h!15913 (_ BitVec 64)) (t!21111 List!14788)) )
))
(declare-fun arrayNoDuplicates!0 (array!43391 (_ BitVec 32) List!14788) Bool)

(assert (=> b!798504 (= res!543190 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14785))))

(assert (= (and start!68650 res!543184) b!798498))

(assert (= (and b!798498 res!543185) b!798496))

(assert (= (and b!798496 res!543193) b!798495))

(assert (= (and b!798495 res!543186) b!798503))

(assert (= (and b!798503 res!543192) b!798502))

(assert (= (and b!798502 res!543189) b!798501))

(assert (= (and b!798501 res!543191) b!798504))

(assert (= (and b!798504 res!543190) b!798499))

(assert (= (and b!798499 res!543187) b!798500))

(assert (= (and b!798500 res!543188) b!798497))

(declare-fun m!739531 () Bool)

(assert (=> b!798496 m!739531))

(assert (=> b!798496 m!739531))

(declare-fun m!739533 () Bool)

(assert (=> b!798496 m!739533))

(declare-fun m!739535 () Bool)

(assert (=> b!798499 m!739535))

(declare-fun m!739537 () Bool)

(assert (=> b!798499 m!739537))

(declare-fun m!739539 () Bool)

(assert (=> b!798495 m!739539))

(declare-fun m!739541 () Bool)

(assert (=> b!798497 m!739541))

(assert (=> b!798497 m!739531))

(assert (=> b!798497 m!739531))

(declare-fun m!739543 () Bool)

(assert (=> b!798497 m!739543))

(assert (=> b!798497 m!739531))

(declare-fun m!739545 () Bool)

(assert (=> b!798497 m!739545))

(declare-fun m!739547 () Bool)

(assert (=> b!798501 m!739547))

(declare-fun m!739549 () Bool)

(assert (=> start!68650 m!739549))

(declare-fun m!739551 () Bool)

(assert (=> start!68650 m!739551))

(declare-fun m!739553 () Bool)

(assert (=> b!798503 m!739553))

(declare-fun m!739555 () Bool)

(assert (=> b!798504 m!739555))

(declare-fun m!739557 () Bool)

(assert (=> b!798502 m!739557))

(declare-fun m!739559 () Bool)

(assert (=> b!798500 m!739559))

(declare-fun m!739561 () Bool)

(assert (=> b!798500 m!739561))

(declare-fun m!739563 () Bool)

(assert (=> b!798500 m!739563))

(declare-fun m!739565 () Bool)

(assert (=> b!798500 m!739565))

(push 1)

(assert (not b!798500))

(assert (not b!798501))

(assert (not b!798496))

(assert (not b!798495))

(assert (not b!798497))

(assert (not b!798502))

(assert (not start!68650))

(assert (not b!798504))

(assert (not b!798503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

