; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68534 () Bool)

(assert start!68534)

(declare-fun b!796511 () Bool)

(declare-fun res!541205 () Bool)

(declare-fun e!441976 () Bool)

(assert (=> b!796511 (=> (not res!541205) (not e!441976))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796511 (= res!541205 (validKeyInArray!0 k!2044))))

(declare-fun res!541209 () Bool)

(assert (=> start!68534 (=> (not res!541209) (not e!441976))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68534 (= res!541209 (validMask!0 mask!3266))))

(assert (=> start!68534 e!441976))

(assert (=> start!68534 true))

(declare-datatypes ((array!43275 0))(
  ( (array!43276 (arr!20714 (Array (_ BitVec 32) (_ BitVec 64))) (size!21135 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43275)

(declare-fun array_inv!16488 (array!43275) Bool)

(assert (=> start!68534 (array_inv!16488 a!3170)))

(declare-fun b!796512 () Bool)

(declare-fun e!441977 () Bool)

(declare-fun e!441979 () Bool)

(assert (=> b!796512 (= e!441977 e!441979)))

(declare-fun res!541206 () Bool)

(assert (=> b!796512 (=> (not res!541206) (not e!441979))))

(declare-datatypes ((SeekEntryResult!8312 0))(
  ( (MissingZero!8312 (index!35615 (_ BitVec 32))) (Found!8312 (index!35616 (_ BitVec 32))) (Intermediate!8312 (undefined!9124 Bool) (index!35617 (_ BitVec 32)) (x!66543 (_ BitVec 32))) (Undefined!8312) (MissingVacant!8312 (index!35618 (_ BitVec 32))) )
))
(declare-fun lt!355229 () SeekEntryResult!8312)

(declare-fun lt!355227 () SeekEntryResult!8312)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796512 (= res!541206 (and (= lt!355229 lt!355227) (= lt!355227 (Found!8312 j!153)) (= (select (arr!20714 a!3170) index!1236) (select (arr!20714 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43275 (_ BitVec 32)) SeekEntryResult!8312)

(assert (=> b!796512 (= lt!355227 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20714 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43275 (_ BitVec 32)) SeekEntryResult!8312)

(assert (=> b!796512 (= lt!355229 (seekEntryOrOpen!0 (select (arr!20714 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796513 () Bool)

(declare-fun res!541207 () Bool)

(assert (=> b!796513 (=> (not res!541207) (not e!441976))))

(declare-fun arrayContainsKey!0 (array!43275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796513 (= res!541207 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796514 () Bool)

(declare-fun res!541203 () Bool)

(assert (=> b!796514 (=> (not res!541203) (not e!441976))))

(assert (=> b!796514 (= res!541203 (validKeyInArray!0 (select (arr!20714 a!3170) j!153)))))

(declare-fun b!796515 () Bool)

(declare-fun res!541204 () Bool)

(declare-fun e!441978 () Bool)

(assert (=> b!796515 (=> (not res!541204) (not e!441978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43275 (_ BitVec 32)) Bool)

(assert (=> b!796515 (= res!541204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796516 () Bool)

(declare-fun res!541201 () Bool)

(assert (=> b!796516 (=> (not res!541201) (not e!441978))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796516 (= res!541201 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21135 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20714 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21135 a!3170)) (= (select (arr!20714 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796517 () Bool)

(declare-fun res!541202 () Bool)

(assert (=> b!796517 (=> (not res!541202) (not e!441976))))

(assert (=> b!796517 (= res!541202 (and (= (size!21135 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21135 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21135 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796518 () Bool)

(declare-fun res!541210 () Bool)

(assert (=> b!796518 (=> (not res!541210) (not e!441978))))

(declare-datatypes ((List!14730 0))(
  ( (Nil!14727) (Cons!14726 (h!15855 (_ BitVec 64)) (t!21053 List!14730)) )
))
(declare-fun arrayNoDuplicates!0 (array!43275 (_ BitVec 32) List!14730) Bool)

(assert (=> b!796518 (= res!541210 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14727))))

(declare-fun b!796519 () Bool)

(assert (=> b!796519 (= e!441979 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20714 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!355225 () SeekEntryResult!8312)

(assert (=> b!796519 (= lt!355225 (Found!8312 index!1236))))

(declare-fun b!796520 () Bool)

(assert (=> b!796520 (= e!441976 e!441978)))

(declare-fun res!541200 () Bool)

(assert (=> b!796520 (=> (not res!541200) (not e!441978))))

(declare-fun lt!355226 () SeekEntryResult!8312)

(assert (=> b!796520 (= res!541200 (or (= lt!355226 (MissingZero!8312 i!1163)) (= lt!355226 (MissingVacant!8312 i!1163))))))

(assert (=> b!796520 (= lt!355226 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796521 () Bool)

(assert (=> b!796521 (= e!441978 e!441977)))

(declare-fun res!541208 () Bool)

(assert (=> b!796521 (=> (not res!541208) (not e!441977))))

(declare-fun lt!355228 () SeekEntryResult!8312)

(assert (=> b!796521 (= res!541208 (= lt!355228 lt!355225))))

(declare-fun lt!355230 () (_ BitVec 64))

(declare-fun lt!355231 () array!43275)

(assert (=> b!796521 (= lt!355225 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355230 lt!355231 mask!3266))))

(assert (=> b!796521 (= lt!355228 (seekEntryOrOpen!0 lt!355230 lt!355231 mask!3266))))

(assert (=> b!796521 (= lt!355230 (select (store (arr!20714 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796521 (= lt!355231 (array!43276 (store (arr!20714 a!3170) i!1163 k!2044) (size!21135 a!3170)))))

(assert (= (and start!68534 res!541209) b!796517))

(assert (= (and b!796517 res!541202) b!796514))

(assert (= (and b!796514 res!541203) b!796511))

(assert (= (and b!796511 res!541205) b!796513))

(assert (= (and b!796513 res!541207) b!796520))

(assert (= (and b!796520 res!541200) b!796515))

(assert (= (and b!796515 res!541204) b!796518))

(assert (= (and b!796518 res!541210) b!796516))

(assert (= (and b!796516 res!541201) b!796521))

(assert (= (and b!796521 res!541208) b!796512))

(assert (= (and b!796512 res!541206) b!796519))

(declare-fun m!737417 () Bool)

(assert (=> b!796514 m!737417))

(assert (=> b!796514 m!737417))

(declare-fun m!737419 () Bool)

(assert (=> b!796514 m!737419))

(declare-fun m!737421 () Bool)

(assert (=> b!796513 m!737421))

(declare-fun m!737423 () Bool)

(assert (=> start!68534 m!737423))

(declare-fun m!737425 () Bool)

(assert (=> start!68534 m!737425))

(declare-fun m!737427 () Bool)

(assert (=> b!796512 m!737427))

(assert (=> b!796512 m!737417))

(assert (=> b!796512 m!737417))

(declare-fun m!737429 () Bool)

(assert (=> b!796512 m!737429))

(assert (=> b!796512 m!737417))

(declare-fun m!737431 () Bool)

(assert (=> b!796512 m!737431))

(declare-fun m!737433 () Bool)

(assert (=> b!796515 m!737433))

(declare-fun m!737435 () Bool)

(assert (=> b!796511 m!737435))

(declare-fun m!737437 () Bool)

(assert (=> b!796518 m!737437))

(declare-fun m!737439 () Bool)

(assert (=> b!796519 m!737439))

(declare-fun m!737441 () Bool)

(assert (=> b!796519 m!737441))

(declare-fun m!737443 () Bool)

(assert (=> b!796520 m!737443))

(declare-fun m!737445 () Bool)

(assert (=> b!796516 m!737445))

(declare-fun m!737447 () Bool)

(assert (=> b!796516 m!737447))

(declare-fun m!737449 () Bool)

(assert (=> b!796521 m!737449))

(declare-fun m!737451 () Bool)

(assert (=> b!796521 m!737451))

(assert (=> b!796521 m!737439))

(declare-fun m!737453 () Bool)

(assert (=> b!796521 m!737453))

(push 1)

(assert (not start!68534))

(assert (not b!796511))

(assert (not b!796514))

(assert (not b!796512))

(assert (not b!796518))

(assert (not b!796520))

(assert (not b!796515))

(assert (not b!796513))

