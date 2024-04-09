; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68480 () Bool)

(assert start!68480)

(declare-fun b!795630 () Bool)

(declare-fun res!540321 () Bool)

(declare-fun e!441583 () Bool)

(assert (=> b!795630 (=> (not res!540321) (not e!441583))))

(declare-datatypes ((array!43221 0))(
  ( (array!43222 (arr!20687 (Array (_ BitVec 32) (_ BitVec 64))) (size!21108 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43221)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795630 (= res!540321 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795631 () Bool)

(declare-fun res!540323 () Bool)

(declare-fun e!441581 () Bool)

(assert (=> b!795631 (=> (not res!540323) (not e!441581))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43221 (_ BitVec 32)) Bool)

(assert (=> b!795631 (= res!540323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795632 () Bool)

(declare-fun res!540324 () Bool)

(assert (=> b!795632 (=> (not res!540324) (not e!441581))))

(declare-datatypes ((List!14703 0))(
  ( (Nil!14700) (Cons!14699 (h!15828 (_ BitVec 64)) (t!21026 List!14703)) )
))
(declare-fun arrayNoDuplicates!0 (array!43221 (_ BitVec 32) List!14703) Bool)

(assert (=> b!795632 (= res!540324 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14700))))

(declare-fun b!795633 () Bool)

(declare-fun res!540326 () Bool)

(assert (=> b!795633 (=> (not res!540326) (not e!441583))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795633 (= res!540326 (and (= (size!21108 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21108 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21108 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795634 () Bool)

(declare-fun res!540327 () Bool)

(assert (=> b!795634 (=> (not res!540327) (not e!441581))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795634 (= res!540327 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21108 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20687 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21108 a!3170)) (= (select (arr!20687 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-datatypes ((SeekEntryResult!8285 0))(
  ( (MissingZero!8285 (index!35507 (_ BitVec 32))) (Found!8285 (index!35508 (_ BitVec 32))) (Intermediate!8285 (undefined!9097 Bool) (index!35509 (_ BitVec 32)) (x!66444 (_ BitVec 32))) (Undefined!8285) (MissingVacant!8285 (index!35510 (_ BitVec 32))) )
))
(declare-fun lt!354698 () SeekEntryResult!8285)

(declare-fun b!795635 () Bool)

(declare-fun e!441580 () Bool)

(declare-fun lt!354696 () SeekEntryResult!8285)

(assert (=> b!795635 (= e!441580 (and (= lt!354698 lt!354696) (= lt!354696 (Found!8285 j!153)) (= (select (arr!20687 a!3170) index!1236) (select (arr!20687 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43221 (_ BitVec 32)) SeekEntryResult!8285)

(assert (=> b!795635 (= lt!354696 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20687 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43221 (_ BitVec 32)) SeekEntryResult!8285)

(assert (=> b!795635 (= lt!354698 (seekEntryOrOpen!0 (select (arr!20687 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795636 () Bool)

(assert (=> b!795636 (= e!441583 e!441581)))

(declare-fun res!540325 () Bool)

(assert (=> b!795636 (=> (not res!540325) (not e!441581))))

(declare-fun lt!354699 () SeekEntryResult!8285)

(assert (=> b!795636 (= res!540325 (or (= lt!354699 (MissingZero!8285 i!1163)) (= lt!354699 (MissingVacant!8285 i!1163))))))

(assert (=> b!795636 (= lt!354699 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795638 () Bool)

(assert (=> b!795638 (= e!441581 e!441580)))

(declare-fun res!540322 () Bool)

(assert (=> b!795638 (=> (not res!540322) (not e!441580))))

(declare-fun lt!354697 () array!43221)

(declare-fun lt!354700 () (_ BitVec 64))

(assert (=> b!795638 (= res!540322 (= (seekEntryOrOpen!0 lt!354700 lt!354697 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354700 lt!354697 mask!3266)))))

(assert (=> b!795638 (= lt!354700 (select (store (arr!20687 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795638 (= lt!354697 (array!43222 (store (arr!20687 a!3170) i!1163 k!2044) (size!21108 a!3170)))))

(declare-fun b!795639 () Bool)

(declare-fun res!540320 () Bool)

(assert (=> b!795639 (=> (not res!540320) (not e!441583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795639 (= res!540320 (validKeyInArray!0 (select (arr!20687 a!3170) j!153)))))

(declare-fun b!795637 () Bool)

(declare-fun res!540328 () Bool)

(assert (=> b!795637 (=> (not res!540328) (not e!441583))))

(assert (=> b!795637 (= res!540328 (validKeyInArray!0 k!2044))))

(declare-fun res!540319 () Bool)

(assert (=> start!68480 (=> (not res!540319) (not e!441583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68480 (= res!540319 (validMask!0 mask!3266))))

(assert (=> start!68480 e!441583))

(assert (=> start!68480 true))

(declare-fun array_inv!16461 (array!43221) Bool)

(assert (=> start!68480 (array_inv!16461 a!3170)))

(assert (= (and start!68480 res!540319) b!795633))

(assert (= (and b!795633 res!540326) b!795639))

(assert (= (and b!795639 res!540320) b!795637))

(assert (= (and b!795637 res!540328) b!795630))

(assert (= (and b!795630 res!540321) b!795636))

(assert (= (and b!795636 res!540325) b!795631))

(assert (= (and b!795631 res!540323) b!795632))

(assert (= (and b!795632 res!540324) b!795634))

(assert (= (and b!795634 res!540327) b!795638))

(assert (= (and b!795638 res!540322) b!795635))

(declare-fun m!736423 () Bool)

(assert (=> b!795636 m!736423))

(declare-fun m!736425 () Bool)

(assert (=> b!795639 m!736425))

(assert (=> b!795639 m!736425))

(declare-fun m!736427 () Bool)

(assert (=> b!795639 m!736427))

(declare-fun m!736429 () Bool)

(assert (=> b!795634 m!736429))

(declare-fun m!736431 () Bool)

(assert (=> b!795634 m!736431))

(declare-fun m!736433 () Bool)

(assert (=> b!795635 m!736433))

(assert (=> b!795635 m!736425))

(assert (=> b!795635 m!736425))

(declare-fun m!736435 () Bool)

(assert (=> b!795635 m!736435))

(assert (=> b!795635 m!736425))

(declare-fun m!736437 () Bool)

(assert (=> b!795635 m!736437))

(declare-fun m!736439 () Bool)

(assert (=> b!795637 m!736439))

(declare-fun m!736441 () Bool)

(assert (=> start!68480 m!736441))

(declare-fun m!736443 () Bool)

(assert (=> start!68480 m!736443))

(declare-fun m!736445 () Bool)

(assert (=> b!795632 m!736445))

(declare-fun m!736447 () Bool)

(assert (=> b!795630 m!736447))

(declare-fun m!736449 () Bool)

(assert (=> b!795631 m!736449))

(declare-fun m!736451 () Bool)

(assert (=> b!795638 m!736451))

(declare-fun m!736453 () Bool)

(assert (=> b!795638 m!736453))

(declare-fun m!736455 () Bool)

(assert (=> b!795638 m!736455))

(declare-fun m!736457 () Bool)

(assert (=> b!795638 m!736457))

(push 1)

(assert (not b!795630))

(assert (not b!795639))

(assert (not b!795636))

(assert (not b!795635))

(assert (not b!795638))

(assert (not b!795632))

(assert (not start!68480))

(assert (not b!795631))

(assert (not b!795637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

