; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68588 () Bool)

(assert start!68588)

(declare-fun b!797463 () Bool)

(declare-fun res!542161 () Bool)

(declare-fun e!442445 () Bool)

(assert (=> b!797463 (=> (not res!542161) (not e!442445))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797463 (= res!542161 (validKeyInArray!0 k!2044))))

(declare-fun b!797464 () Bool)

(declare-fun res!542156 () Bool)

(declare-fun e!442446 () Bool)

(assert (=> b!797464 (=> (not res!542156) (not e!442446))))

(declare-datatypes ((array!43329 0))(
  ( (array!43330 (arr!20741 (Array (_ BitVec 32) (_ BitVec 64))) (size!21162 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43329)

(declare-datatypes ((List!14757 0))(
  ( (Nil!14754) (Cons!14753 (h!15882 (_ BitVec 64)) (t!21080 List!14757)) )
))
(declare-fun arrayNoDuplicates!0 (array!43329 (_ BitVec 32) List!14757) Bool)

(assert (=> b!797464 (= res!542156 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14754))))

(declare-fun b!797465 () Bool)

(declare-fun e!442443 () Bool)

(declare-fun e!442441 () Bool)

(assert (=> b!797465 (= e!442443 e!442441)))

(declare-fun res!542153 () Bool)

(assert (=> b!797465 (=> (not res!542153) (not e!442441))))

(declare-datatypes ((SeekEntryResult!8339 0))(
  ( (MissingZero!8339 (index!35723 (_ BitVec 32))) (Found!8339 (index!35724 (_ BitVec 32))) (Intermediate!8339 (undefined!9151 Bool) (index!35725 (_ BitVec 32)) (x!66642 (_ BitVec 32))) (Undefined!8339) (MissingVacant!8339 (index!35726 (_ BitVec 32))) )
))
(declare-fun lt!355842 () SeekEntryResult!8339)

(declare-fun lt!355839 () SeekEntryResult!8339)

(assert (=> b!797465 (= res!542153 (= lt!355842 lt!355839))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43329 (_ BitVec 32)) SeekEntryResult!8339)

(assert (=> b!797465 (= lt!355839 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20741 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43329 (_ BitVec 32)) SeekEntryResult!8339)

(assert (=> b!797465 (= lt!355842 (seekEntryOrOpen!0 (select (arr!20741 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797466 () Bool)

(declare-fun res!542163 () Bool)

(assert (=> b!797466 (=> (not res!542163) (not e!442445))))

(declare-fun arrayContainsKey!0 (array!43329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797466 (= res!542163 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797467 () Bool)

(assert (=> b!797467 (= e!442445 e!442446)))

(declare-fun res!542154 () Bool)

(assert (=> b!797467 (=> (not res!542154) (not e!442446))))

(declare-fun lt!355838 () SeekEntryResult!8339)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797467 (= res!542154 (or (= lt!355838 (MissingZero!8339 i!1163)) (= lt!355838 (MissingVacant!8339 i!1163))))))

(assert (=> b!797467 (= lt!355838 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797468 () Bool)

(declare-fun res!542164 () Bool)

(assert (=> b!797468 (=> (not res!542164) (not e!442446))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!797468 (= res!542164 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21162 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20741 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21162 a!3170)) (= (select (arr!20741 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797469 () Bool)

(declare-fun res!542157 () Bool)

(assert (=> b!797469 (=> (not res!542157) (not e!442445))))

(assert (=> b!797469 (= res!542157 (and (= (size!21162 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21162 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21162 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!542158 () Bool)

(assert (=> start!68588 (=> (not res!542158) (not e!442445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68588 (= res!542158 (validMask!0 mask!3266))))

(assert (=> start!68588 e!442445))

(assert (=> start!68588 true))

(declare-fun array_inv!16515 (array!43329) Bool)

(assert (=> start!68588 (array_inv!16515 a!3170)))

(declare-fun b!797470 () Bool)

(declare-fun e!442442 () Bool)

(declare-fun e!442447 () Bool)

(assert (=> b!797470 (= e!442442 (not e!442447))))

(declare-fun res!542159 () Bool)

(assert (=> b!797470 (=> res!542159 e!442447)))

(declare-fun lt!355841 () SeekEntryResult!8339)

(declare-fun lt!355836 () SeekEntryResult!8339)

(assert (=> b!797470 (= res!542159 (or (not (= lt!355836 lt!355841)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20741 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797470 (= lt!355836 (Found!8339 index!1236))))

(declare-fun b!797471 () Bool)

(assert (=> b!797471 (= e!442446 e!442443)))

(declare-fun res!542162 () Bool)

(assert (=> b!797471 (=> (not res!542162) (not e!442443))))

(declare-fun lt!355843 () SeekEntryResult!8339)

(assert (=> b!797471 (= res!542162 (= lt!355843 lt!355836))))

(declare-fun lt!355837 () (_ BitVec 64))

(declare-fun lt!355840 () array!43329)

(assert (=> b!797471 (= lt!355836 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355837 lt!355840 mask!3266))))

(assert (=> b!797471 (= lt!355843 (seekEntryOrOpen!0 lt!355837 lt!355840 mask!3266))))

(assert (=> b!797471 (= lt!355837 (select (store (arr!20741 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797471 (= lt!355840 (array!43330 (store (arr!20741 a!3170) i!1163 k!2044) (size!21162 a!3170)))))

(declare-fun b!797472 () Bool)

(declare-fun res!542152 () Bool)

(assert (=> b!797472 (=> (not res!542152) (not e!442446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43329 (_ BitVec 32)) Bool)

(assert (=> b!797472 (= res!542152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797473 () Bool)

(assert (=> b!797473 (= e!442447 (validKeyInArray!0 lt!355837))))

(declare-fun b!797474 () Bool)

(declare-fun res!542160 () Bool)

(assert (=> b!797474 (=> (not res!542160) (not e!442445))))

(assert (=> b!797474 (= res!542160 (validKeyInArray!0 (select (arr!20741 a!3170) j!153)))))

(declare-fun b!797475 () Bool)

(assert (=> b!797475 (= e!442441 e!442442)))

(declare-fun res!542155 () Bool)

(assert (=> b!797475 (=> (not res!542155) (not e!442442))))

(assert (=> b!797475 (= res!542155 (and (= lt!355839 lt!355841) (= (select (arr!20741 a!3170) index!1236) (select (arr!20741 a!3170) j!153))))))

(assert (=> b!797475 (= lt!355841 (Found!8339 j!153))))

(assert (= (and start!68588 res!542158) b!797469))

(assert (= (and b!797469 res!542157) b!797474))

(assert (= (and b!797474 res!542160) b!797463))

(assert (= (and b!797463 res!542161) b!797466))

(assert (= (and b!797466 res!542163) b!797467))

(assert (= (and b!797467 res!542154) b!797472))

(assert (= (and b!797472 res!542152) b!797464))

(assert (= (and b!797464 res!542156) b!797468))

(assert (= (and b!797468 res!542164) b!797471))

(assert (= (and b!797471 res!542162) b!797465))

(assert (= (and b!797465 res!542153) b!797475))

(assert (= (and b!797475 res!542155) b!797470))

(assert (= (and b!797470 (not res!542159)) b!797473))

(declare-fun m!738417 () Bool)

(assert (=> b!797466 m!738417))

(declare-fun m!738419 () Bool)

(assert (=> b!797471 m!738419))

(declare-fun m!738421 () Bool)

(assert (=> b!797471 m!738421))

(declare-fun m!738423 () Bool)

(assert (=> b!797471 m!738423))

(declare-fun m!738425 () Bool)

(assert (=> b!797471 m!738425))

(declare-fun m!738427 () Bool)

(assert (=> b!797468 m!738427))

(declare-fun m!738429 () Bool)

(assert (=> b!797468 m!738429))

(declare-fun m!738431 () Bool)

(assert (=> b!797473 m!738431))

(declare-fun m!738433 () Bool)

(assert (=> b!797474 m!738433))

(assert (=> b!797474 m!738433))

(declare-fun m!738435 () Bool)

(assert (=> b!797474 m!738435))

(assert (=> b!797465 m!738433))

(assert (=> b!797465 m!738433))

(declare-fun m!738437 () Bool)

(assert (=> b!797465 m!738437))

(assert (=> b!797465 m!738433))

(declare-fun m!738439 () Bool)

(assert (=> b!797465 m!738439))

(declare-fun m!738441 () Bool)

(assert (=> b!797467 m!738441))

(declare-fun m!738443 () Bool)

(assert (=> b!797475 m!738443))

(assert (=> b!797475 m!738433))

(declare-fun m!738445 () Bool)

(assert (=> start!68588 m!738445))

(declare-fun m!738447 () Bool)

(assert (=> start!68588 m!738447))

(assert (=> b!797470 m!738423))

(declare-fun m!738449 () Bool)

(assert (=> b!797470 m!738449))

(declare-fun m!738451 () Bool)

(assert (=> b!797464 m!738451))

(declare-fun m!738453 () Bool)

(assert (=> b!797463 m!738453))

(declare-fun m!738455 () Bool)

(assert (=> b!797472 m!738455))

(push 1)

(assert (not b!797473))

