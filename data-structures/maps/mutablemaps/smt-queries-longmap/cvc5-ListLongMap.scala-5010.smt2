; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68590 () Bool)

(assert start!68590)

(declare-fun b!797498 () Bool)

(declare-fun res!542194 () Bool)

(declare-fun e!442459 () Bool)

(assert (=> b!797498 (=> (not res!542194) (not e!442459))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43331 0))(
  ( (array!43332 (arr!20742 (Array (_ BitVec 32) (_ BitVec 64))) (size!21163 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43331)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797498 (= res!542194 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21163 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20742 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21163 a!3170)) (= (select (arr!20742 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797499 () Bool)

(declare-fun res!542193 () Bool)

(declare-fun e!442462 () Bool)

(assert (=> b!797499 (=> (not res!542193) (not e!442462))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797499 (= res!542193 (validKeyInArray!0 (select (arr!20742 a!3170) j!153)))))

(declare-fun b!797500 () Bool)

(declare-fun e!442458 () Bool)

(assert (=> b!797500 (= e!442459 e!442458)))

(declare-fun res!542187 () Bool)

(assert (=> b!797500 (=> (not res!542187) (not e!442458))))

(declare-datatypes ((SeekEntryResult!8340 0))(
  ( (MissingZero!8340 (index!35727 (_ BitVec 32))) (Found!8340 (index!35728 (_ BitVec 32))) (Intermediate!8340 (undefined!9152 Bool) (index!35729 (_ BitVec 32)) (x!66651 (_ BitVec 32))) (Undefined!8340) (MissingVacant!8340 (index!35730 (_ BitVec 32))) )
))
(declare-fun lt!355862 () SeekEntryResult!8340)

(declare-fun lt!355860 () SeekEntryResult!8340)

(assert (=> b!797500 (= res!542187 (= lt!355862 lt!355860))))

(declare-fun lt!355858 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!355859 () array!43331)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43331 (_ BitVec 32)) SeekEntryResult!8340)

(assert (=> b!797500 (= lt!355860 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355858 lt!355859 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43331 (_ BitVec 32)) SeekEntryResult!8340)

(assert (=> b!797500 (= lt!355862 (seekEntryOrOpen!0 lt!355858 lt!355859 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!797500 (= lt!355858 (select (store (arr!20742 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797500 (= lt!355859 (array!43332 (store (arr!20742 a!3170) i!1163 k!2044) (size!21163 a!3170)))))

(declare-fun b!797501 () Bool)

(declare-fun e!442461 () Bool)

(assert (=> b!797501 (= e!442458 e!442461)))

(declare-fun res!542192 () Bool)

(assert (=> b!797501 (=> (not res!542192) (not e!442461))))

(declare-fun lt!355863 () SeekEntryResult!8340)

(declare-fun lt!355861 () SeekEntryResult!8340)

(assert (=> b!797501 (= res!542192 (and (= lt!355861 lt!355863) (= lt!355863 (Found!8340 j!153)) (= (select (arr!20742 a!3170) index!1236) (select (arr!20742 a!3170) j!153))))))

(assert (=> b!797501 (= lt!355863 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20742 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797501 (= lt!355861 (seekEntryOrOpen!0 (select (arr!20742 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!542191 () Bool)

(assert (=> start!68590 (=> (not res!542191) (not e!442462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68590 (= res!542191 (validMask!0 mask!3266))))

(assert (=> start!68590 e!442462))

(assert (=> start!68590 true))

(declare-fun array_inv!16516 (array!43331) Bool)

(assert (=> start!68590 (array_inv!16516 a!3170)))

(declare-fun b!797502 () Bool)

(declare-fun res!542197 () Bool)

(assert (=> b!797502 (=> (not res!542197) (not e!442462))))

(assert (=> b!797502 (= res!542197 (validKeyInArray!0 k!2044))))

(declare-fun b!797503 () Bool)

(declare-fun res!542196 () Bool)

(assert (=> b!797503 (=> (not res!542196) (not e!442459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43331 (_ BitVec 32)) Bool)

(assert (=> b!797503 (= res!542196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797504 () Bool)

(declare-fun res!542188 () Bool)

(assert (=> b!797504 (=> (not res!542188) (not e!442462))))

(declare-fun arrayContainsKey!0 (array!43331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797504 (= res!542188 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797505 () Bool)

(assert (=> b!797505 (= e!442461 (not true))))

(assert (=> b!797505 (= lt!355860 (Found!8340 index!1236))))

(declare-fun b!797506 () Bool)

(declare-fun res!542190 () Bool)

(assert (=> b!797506 (=> (not res!542190) (not e!442462))))

(assert (=> b!797506 (= res!542190 (and (= (size!21163 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21163 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21163 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797507 () Bool)

(assert (=> b!797507 (= e!442462 e!442459)))

(declare-fun res!542195 () Bool)

(assert (=> b!797507 (=> (not res!542195) (not e!442459))))

(declare-fun lt!355864 () SeekEntryResult!8340)

(assert (=> b!797507 (= res!542195 (or (= lt!355864 (MissingZero!8340 i!1163)) (= lt!355864 (MissingVacant!8340 i!1163))))))

(assert (=> b!797507 (= lt!355864 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797508 () Bool)

(declare-fun res!542189 () Bool)

(assert (=> b!797508 (=> (not res!542189) (not e!442459))))

(declare-datatypes ((List!14758 0))(
  ( (Nil!14755) (Cons!14754 (h!15883 (_ BitVec 64)) (t!21081 List!14758)) )
))
(declare-fun arrayNoDuplicates!0 (array!43331 (_ BitVec 32) List!14758) Bool)

(assert (=> b!797508 (= res!542189 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14755))))

(assert (= (and start!68590 res!542191) b!797506))

(assert (= (and b!797506 res!542190) b!797499))

(assert (= (and b!797499 res!542193) b!797502))

(assert (= (and b!797502 res!542197) b!797504))

(assert (= (and b!797504 res!542188) b!797507))

(assert (= (and b!797507 res!542195) b!797503))

(assert (= (and b!797503 res!542196) b!797508))

(assert (= (and b!797508 res!542189) b!797498))

(assert (= (and b!797498 res!542194) b!797500))

(assert (= (and b!797500 res!542187) b!797501))

(assert (= (and b!797501 res!542192) b!797505))

(declare-fun m!738457 () Bool)

(assert (=> b!797508 m!738457))

(declare-fun m!738459 () Bool)

(assert (=> b!797498 m!738459))

(declare-fun m!738461 () Bool)

(assert (=> b!797498 m!738461))

(declare-fun m!738463 () Bool)

(assert (=> b!797502 m!738463))

(declare-fun m!738465 () Bool)

(assert (=> b!797500 m!738465))

(declare-fun m!738467 () Bool)

(assert (=> b!797500 m!738467))

(declare-fun m!738469 () Bool)

(assert (=> b!797500 m!738469))

(declare-fun m!738471 () Bool)

(assert (=> b!797500 m!738471))

(declare-fun m!738473 () Bool)

(assert (=> b!797504 m!738473))

(declare-fun m!738475 () Bool)

(assert (=> start!68590 m!738475))

(declare-fun m!738477 () Bool)

(assert (=> start!68590 m!738477))

(declare-fun m!738479 () Bool)

(assert (=> b!797503 m!738479))

(declare-fun m!738481 () Bool)

(assert (=> b!797501 m!738481))

(declare-fun m!738483 () Bool)

(assert (=> b!797501 m!738483))

(assert (=> b!797501 m!738483))

(declare-fun m!738485 () Bool)

(assert (=> b!797501 m!738485))

(assert (=> b!797501 m!738483))

(declare-fun m!738487 () Bool)

(assert (=> b!797501 m!738487))

(assert (=> b!797499 m!738483))

(assert (=> b!797499 m!738483))

(declare-fun m!738489 () Bool)

(assert (=> b!797499 m!738489))

(declare-fun m!738491 () Bool)

(assert (=> b!797507 m!738491))

(push 1)

