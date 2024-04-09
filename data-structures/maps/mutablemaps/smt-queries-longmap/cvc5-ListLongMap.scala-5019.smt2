; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68644 () Bool)

(assert start!68644)

(declare-fun res!543096 () Bool)

(declare-fun e!442881 () Bool)

(assert (=> start!68644 (=> (not res!543096) (not e!442881))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68644 (= res!543096 (validMask!0 mask!3266))))

(assert (=> start!68644 e!442881))

(assert (=> start!68644 true))

(declare-datatypes ((array!43385 0))(
  ( (array!43386 (arr!20769 (Array (_ BitVec 32) (_ BitVec 64))) (size!21190 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43385)

(declare-fun array_inv!16543 (array!43385) Bool)

(assert (=> start!68644 (array_inv!16543 a!3170)))

(declare-fun b!798405 () Bool)

(declare-fun res!543097 () Bool)

(assert (=> b!798405 (=> (not res!543097) (not e!442881))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798405 (= res!543097 (validKeyInArray!0 (select (arr!20769 a!3170) j!153)))))

(declare-fun b!798406 () Bool)

(declare-fun res!543099 () Bool)

(assert (=> b!798406 (=> (not res!543099) (not e!442881))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798406 (= res!543099 (and (= (size!21190 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21190 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21190 a!3170)) (not (= i!1163 j!153))))))

(declare-fun e!442879 () Bool)

(declare-fun b!798407 () Bool)

(declare-datatypes ((SeekEntryResult!8367 0))(
  ( (MissingZero!8367 (index!35835 (_ BitVec 32))) (Found!8367 (index!35836 (_ BitVec 32))) (Intermediate!8367 (undefined!9179 Bool) (index!35837 (_ BitVec 32)) (x!66750 (_ BitVec 32))) (Undefined!8367) (MissingVacant!8367 (index!35838 (_ BitVec 32))) )
))
(declare-fun lt!356434 () SeekEntryResult!8367)

(declare-fun lt!356431 () SeekEntryResult!8367)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798407 (= e!442879 (and (= lt!356431 lt!356434) (= lt!356434 (Found!8367 j!153)) (not (= (select (arr!20769 a!3170) index!1236) (select (arr!20769 a!3170) j!153))) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43385 (_ BitVec 32)) SeekEntryResult!8367)

(assert (=> b!798407 (= lt!356434 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20769 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43385 (_ BitVec 32)) SeekEntryResult!8367)

(assert (=> b!798407 (= lt!356431 (seekEntryOrOpen!0 (select (arr!20769 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798408 () Bool)

(declare-fun res!543094 () Bool)

(assert (=> b!798408 (=> (not res!543094) (not e!442881))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!798408 (= res!543094 (validKeyInArray!0 k!2044))))

(declare-fun b!798409 () Bool)

(declare-fun res!543101 () Bool)

(assert (=> b!798409 (=> (not res!543101) (not e!442881))))

(declare-fun arrayContainsKey!0 (array!43385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798409 (= res!543101 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798410 () Bool)

(declare-fun res!543100 () Bool)

(declare-fun e!442882 () Bool)

(assert (=> b!798410 (=> (not res!543100) (not e!442882))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!798410 (= res!543100 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21190 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20769 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21190 a!3170)) (= (select (arr!20769 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798411 () Bool)

(declare-fun res!543098 () Bool)

(assert (=> b!798411 (=> (not res!543098) (not e!442882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43385 (_ BitVec 32)) Bool)

(assert (=> b!798411 (= res!543098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798412 () Bool)

(assert (=> b!798412 (= e!442882 e!442879)))

(declare-fun res!543095 () Bool)

(assert (=> b!798412 (=> (not res!543095) (not e!442879))))

(declare-fun lt!356432 () array!43385)

(declare-fun lt!356430 () (_ BitVec 64))

(assert (=> b!798412 (= res!543095 (= (seekEntryOrOpen!0 lt!356430 lt!356432 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356430 lt!356432 mask!3266)))))

(assert (=> b!798412 (= lt!356430 (select (store (arr!20769 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798412 (= lt!356432 (array!43386 (store (arr!20769 a!3170) i!1163 k!2044) (size!21190 a!3170)))))

(declare-fun b!798413 () Bool)

(assert (=> b!798413 (= e!442881 e!442882)))

(declare-fun res!543103 () Bool)

(assert (=> b!798413 (=> (not res!543103) (not e!442882))))

(declare-fun lt!356433 () SeekEntryResult!8367)

(assert (=> b!798413 (= res!543103 (or (= lt!356433 (MissingZero!8367 i!1163)) (= lt!356433 (MissingVacant!8367 i!1163))))))

(assert (=> b!798413 (= lt!356433 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798414 () Bool)

(declare-fun res!543102 () Bool)

(assert (=> b!798414 (=> (not res!543102) (not e!442882))))

(declare-datatypes ((List!14785 0))(
  ( (Nil!14782) (Cons!14781 (h!15910 (_ BitVec 64)) (t!21108 List!14785)) )
))
(declare-fun arrayNoDuplicates!0 (array!43385 (_ BitVec 32) List!14785) Bool)

(assert (=> b!798414 (= res!543102 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14782))))

(assert (= (and start!68644 res!543096) b!798406))

(assert (= (and b!798406 res!543099) b!798405))

(assert (= (and b!798405 res!543097) b!798408))

(assert (= (and b!798408 res!543094) b!798409))

(assert (= (and b!798409 res!543101) b!798413))

(assert (= (and b!798413 res!543103) b!798411))

(assert (= (and b!798411 res!543098) b!798414))

(assert (= (and b!798414 res!543102) b!798410))

(assert (= (and b!798410 res!543100) b!798412))

(assert (= (and b!798412 res!543095) b!798407))

(declare-fun m!739423 () Bool)

(assert (=> b!798412 m!739423))

(declare-fun m!739425 () Bool)

(assert (=> b!798412 m!739425))

(declare-fun m!739427 () Bool)

(assert (=> b!798412 m!739427))

(declare-fun m!739429 () Bool)

(assert (=> b!798412 m!739429))

(declare-fun m!739431 () Bool)

(assert (=> b!798413 m!739431))

(declare-fun m!739433 () Bool)

(assert (=> b!798407 m!739433))

(declare-fun m!739435 () Bool)

(assert (=> b!798407 m!739435))

(assert (=> b!798407 m!739435))

(declare-fun m!739437 () Bool)

(assert (=> b!798407 m!739437))

(assert (=> b!798407 m!739435))

(declare-fun m!739439 () Bool)

(assert (=> b!798407 m!739439))

(declare-fun m!739441 () Bool)

(assert (=> b!798409 m!739441))

(declare-fun m!739443 () Bool)

(assert (=> b!798414 m!739443))

(declare-fun m!739445 () Bool)

(assert (=> b!798411 m!739445))

(assert (=> b!798405 m!739435))

(assert (=> b!798405 m!739435))

(declare-fun m!739447 () Bool)

(assert (=> b!798405 m!739447))

(declare-fun m!739449 () Bool)

(assert (=> b!798410 m!739449))

(declare-fun m!739451 () Bool)

(assert (=> b!798410 m!739451))

(declare-fun m!739453 () Bool)

(assert (=> start!68644 m!739453))

(declare-fun m!739455 () Bool)

(assert (=> start!68644 m!739455))

(declare-fun m!739457 () Bool)

(assert (=> b!798408 m!739457))

(push 1)

