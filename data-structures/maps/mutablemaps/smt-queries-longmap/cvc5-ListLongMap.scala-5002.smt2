; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68542 () Bool)

(assert start!68542)

(declare-fun b!796652 () Bool)

(declare-fun e!442044 () Bool)

(declare-fun e!442046 () Bool)

(assert (=> b!796652 (= e!442044 e!442046)))

(declare-fun res!541345 () Bool)

(assert (=> b!796652 (=> (not res!541345) (not e!442046))))

(declare-datatypes ((SeekEntryResult!8316 0))(
  ( (MissingZero!8316 (index!35631 (_ BitVec 32))) (Found!8316 (index!35632 (_ BitVec 32))) (Intermediate!8316 (undefined!9128 Bool) (index!35633 (_ BitVec 32)) (x!66563 (_ BitVec 32))) (Undefined!8316) (MissingVacant!8316 (index!35634 (_ BitVec 32))) )
))
(declare-fun lt!355314 () SeekEntryResult!8316)

(declare-fun lt!355309 () SeekEntryResult!8316)

(assert (=> b!796652 (= res!541345 (= lt!355314 lt!355309))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!355313 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43283 0))(
  ( (array!43284 (arr!20718 (Array (_ BitVec 32) (_ BitVec 64))) (size!21139 (_ BitVec 32))) )
))
(declare-fun lt!355315 () array!43283)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43283 (_ BitVec 32)) SeekEntryResult!8316)

(assert (=> b!796652 (= lt!355309 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355313 lt!355315 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43283 (_ BitVec 32)) SeekEntryResult!8316)

(assert (=> b!796652 (= lt!355314 (seekEntryOrOpen!0 lt!355313 lt!355315 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43283)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796652 (= lt!355313 (select (store (arr!20718 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796652 (= lt!355315 (array!43284 (store (arr!20718 a!3170) i!1163 k!2044) (size!21139 a!3170)))))

(declare-fun b!796653 () Bool)

(declare-fun e!442048 () Bool)

(assert (=> b!796653 (= e!442048 e!442044)))

(declare-fun res!541348 () Bool)

(assert (=> b!796653 (=> (not res!541348) (not e!442044))))

(declare-fun lt!355312 () SeekEntryResult!8316)

(assert (=> b!796653 (= res!541348 (or (= lt!355312 (MissingZero!8316 i!1163)) (= lt!355312 (MissingVacant!8316 i!1163))))))

(assert (=> b!796653 (= lt!355312 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796654 () Bool)

(declare-fun e!442047 () Bool)

(assert (=> b!796654 (= e!442046 e!442047)))

(declare-fun res!541344 () Bool)

(assert (=> b!796654 (=> (not res!541344) (not e!442047))))

(declare-fun lt!355310 () SeekEntryResult!8316)

(declare-fun lt!355311 () SeekEntryResult!8316)

(assert (=> b!796654 (= res!541344 (and (= lt!355311 lt!355310) (= lt!355310 (Found!8316 j!153)) (= (select (arr!20718 a!3170) index!1236) (select (arr!20718 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796654 (= lt!355310 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20718 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796654 (= lt!355311 (seekEntryOrOpen!0 (select (arr!20718 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796655 () Bool)

(declare-fun res!541346 () Bool)

(assert (=> b!796655 (=> (not res!541346) (not e!442044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43283 (_ BitVec 32)) Bool)

(assert (=> b!796655 (= res!541346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796656 () Bool)

(assert (=> b!796656 (= e!442047 (not true))))

(assert (=> b!796656 (= lt!355309 (Found!8316 index!1236))))

(declare-fun res!541351 () Bool)

(assert (=> start!68542 (=> (not res!541351) (not e!442048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68542 (= res!541351 (validMask!0 mask!3266))))

(assert (=> start!68542 e!442048))

(assert (=> start!68542 true))

(declare-fun array_inv!16492 (array!43283) Bool)

(assert (=> start!68542 (array_inv!16492 a!3170)))

(declare-fun b!796657 () Bool)

(declare-fun res!541347 () Bool)

(assert (=> b!796657 (=> (not res!541347) (not e!442044))))

(declare-datatypes ((List!14734 0))(
  ( (Nil!14731) (Cons!14730 (h!15859 (_ BitVec 64)) (t!21057 List!14734)) )
))
(declare-fun arrayNoDuplicates!0 (array!43283 (_ BitVec 32) List!14734) Bool)

(assert (=> b!796657 (= res!541347 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14731))))

(declare-fun b!796658 () Bool)

(declare-fun res!541343 () Bool)

(assert (=> b!796658 (=> (not res!541343) (not e!442048))))

(assert (=> b!796658 (= res!541343 (and (= (size!21139 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21139 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21139 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796659 () Bool)

(declare-fun res!541350 () Bool)

(assert (=> b!796659 (=> (not res!541350) (not e!442048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796659 (= res!541350 (validKeyInArray!0 k!2044))))

(declare-fun b!796660 () Bool)

(declare-fun res!541349 () Bool)

(assert (=> b!796660 (=> (not res!541349) (not e!442044))))

(assert (=> b!796660 (= res!541349 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21139 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20718 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21139 a!3170)) (= (select (arr!20718 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796661 () Bool)

(declare-fun res!541342 () Bool)

(assert (=> b!796661 (=> (not res!541342) (not e!442048))))

(declare-fun arrayContainsKey!0 (array!43283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796661 (= res!541342 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796662 () Bool)

(declare-fun res!541341 () Bool)

(assert (=> b!796662 (=> (not res!541341) (not e!442048))))

(assert (=> b!796662 (= res!541341 (validKeyInArray!0 (select (arr!20718 a!3170) j!153)))))

(assert (= (and start!68542 res!541351) b!796658))

(assert (= (and b!796658 res!541343) b!796662))

(assert (= (and b!796662 res!541341) b!796659))

(assert (= (and b!796659 res!541350) b!796661))

(assert (= (and b!796661 res!541342) b!796653))

(assert (= (and b!796653 res!541348) b!796655))

(assert (= (and b!796655 res!541346) b!796657))

(assert (= (and b!796657 res!541347) b!796660))

(assert (= (and b!796660 res!541349) b!796652))

(assert (= (and b!796652 res!541345) b!796654))

(assert (= (and b!796654 res!541344) b!796656))

(declare-fun m!737575 () Bool)

(assert (=> b!796652 m!737575))

(declare-fun m!737577 () Bool)

(assert (=> b!796652 m!737577))

(declare-fun m!737579 () Bool)

(assert (=> b!796652 m!737579))

(declare-fun m!737581 () Bool)

(assert (=> b!796652 m!737581))

(declare-fun m!737583 () Bool)

(assert (=> b!796655 m!737583))

(declare-fun m!737585 () Bool)

(assert (=> b!796657 m!737585))

(declare-fun m!737587 () Bool)

(assert (=> b!796660 m!737587))

(declare-fun m!737589 () Bool)

(assert (=> b!796660 m!737589))

(declare-fun m!737591 () Bool)

(assert (=> b!796654 m!737591))

(declare-fun m!737593 () Bool)

(assert (=> b!796654 m!737593))

(assert (=> b!796654 m!737593))

(declare-fun m!737595 () Bool)

(assert (=> b!796654 m!737595))

(assert (=> b!796654 m!737593))

(declare-fun m!737597 () Bool)

(assert (=> b!796654 m!737597))

(declare-fun m!737599 () Bool)

(assert (=> b!796661 m!737599))

(declare-fun m!737601 () Bool)

(assert (=> start!68542 m!737601))

(declare-fun m!737603 () Bool)

(assert (=> start!68542 m!737603))

(declare-fun m!737605 () Bool)

(assert (=> b!796659 m!737605))

(assert (=> b!796662 m!737593))

(assert (=> b!796662 m!737593))

(declare-fun m!737607 () Bool)

(assert (=> b!796662 m!737607))

(declare-fun m!737609 () Bool)

(assert (=> b!796653 m!737609))

(push 1)

