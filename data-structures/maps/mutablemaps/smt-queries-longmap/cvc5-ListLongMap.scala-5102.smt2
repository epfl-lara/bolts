; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69238 () Bool)

(assert start!69238)

(declare-fun b!807272 () Bool)

(declare-fun e!446985 () Bool)

(declare-fun e!446986 () Bool)

(assert (=> b!807272 (= e!446985 e!446986)))

(declare-fun res!551569 () Bool)

(assert (=> b!807272 (=> (not res!551569) (not e!446986))))

(declare-datatypes ((SeekEntryResult!8616 0))(
  ( (MissingZero!8616 (index!36831 (_ BitVec 32))) (Found!8616 (index!36832 (_ BitVec 32))) (Intermediate!8616 (undefined!9428 Bool) (index!36833 (_ BitVec 32)) (x!67669 (_ BitVec 32))) (Undefined!8616) (MissingVacant!8616 (index!36834 (_ BitVec 32))) )
))
(declare-fun lt!361673 () SeekEntryResult!8616)

(declare-datatypes ((array!43889 0))(
  ( (array!43890 (arr!21018 (Array (_ BitVec 32) (_ BitVec 64))) (size!21439 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43889)

(declare-fun lt!361678 () SeekEntryResult!8616)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!807272 (= res!551569 (and (= lt!361678 lt!361673) (= lt!361673 (Found!8616 j!153)) (not (= (select (arr!21018 a!3170) index!1236) (select (arr!21018 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43889 (_ BitVec 32)) SeekEntryResult!8616)

(assert (=> b!807272 (= lt!361673 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21018 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43889 (_ BitVec 32)) SeekEntryResult!8616)

(assert (=> b!807272 (= lt!361678 (seekEntryOrOpen!0 (select (arr!21018 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807273 () Bool)

(declare-fun res!551568 () Bool)

(declare-fun e!446988 () Bool)

(assert (=> b!807273 (=> (not res!551568) (not e!446988))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807273 (= res!551568 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21439 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21018 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21439 a!3170)) (= (select (arr!21018 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807274 () Bool)

(declare-fun e!446989 () Bool)

(assert (=> b!807274 (= e!446989 e!446988)))

(declare-fun res!551566 () Bool)

(assert (=> b!807274 (=> (not res!551566) (not e!446988))))

(declare-fun lt!361677 () SeekEntryResult!8616)

(assert (=> b!807274 (= res!551566 (or (= lt!361677 (MissingZero!8616 i!1163)) (= lt!361677 (MissingVacant!8616 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!807274 (= lt!361677 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807275 () Bool)

(assert (=> b!807275 (= e!446986 false)))

(declare-fun lt!361676 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807275 (= lt!361676 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807276 () Bool)

(declare-fun res!551575 () Bool)

(assert (=> b!807276 (=> (not res!551575) (not e!446989))))

(declare-fun arrayContainsKey!0 (array!43889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807276 (= res!551575 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!551565 () Bool)

(assert (=> start!69238 (=> (not res!551565) (not e!446989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69238 (= res!551565 (validMask!0 mask!3266))))

(assert (=> start!69238 e!446989))

(assert (=> start!69238 true))

(declare-fun array_inv!16792 (array!43889) Bool)

(assert (=> start!69238 (array_inv!16792 a!3170)))

(declare-fun b!807277 () Bool)

(declare-fun res!551572 () Bool)

(assert (=> b!807277 (=> (not res!551572) (not e!446989))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807277 (= res!551572 (validKeyInArray!0 k!2044))))

(declare-fun b!807278 () Bool)

(assert (=> b!807278 (= e!446988 e!446985)))

(declare-fun res!551574 () Bool)

(assert (=> b!807278 (=> (not res!551574) (not e!446985))))

(declare-fun lt!361675 () array!43889)

(declare-fun lt!361674 () (_ BitVec 64))

(assert (=> b!807278 (= res!551574 (= (seekEntryOrOpen!0 lt!361674 lt!361675 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361674 lt!361675 mask!3266)))))

(assert (=> b!807278 (= lt!361674 (select (store (arr!21018 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807278 (= lt!361675 (array!43890 (store (arr!21018 a!3170) i!1163 k!2044) (size!21439 a!3170)))))

(declare-fun b!807279 () Bool)

(declare-fun res!551571 () Bool)

(assert (=> b!807279 (=> (not res!551571) (not e!446989))))

(assert (=> b!807279 (= res!551571 (validKeyInArray!0 (select (arr!21018 a!3170) j!153)))))

(declare-fun b!807280 () Bool)

(declare-fun res!551567 () Bool)

(assert (=> b!807280 (=> (not res!551567) (not e!446988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43889 (_ BitVec 32)) Bool)

(assert (=> b!807280 (= res!551567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807281 () Bool)

(declare-fun res!551573 () Bool)

(assert (=> b!807281 (=> (not res!551573) (not e!446989))))

(assert (=> b!807281 (= res!551573 (and (= (size!21439 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21439 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21439 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807282 () Bool)

(declare-fun res!551570 () Bool)

(assert (=> b!807282 (=> (not res!551570) (not e!446988))))

(declare-datatypes ((List!15034 0))(
  ( (Nil!15031) (Cons!15030 (h!16159 (_ BitVec 64)) (t!21357 List!15034)) )
))
(declare-fun arrayNoDuplicates!0 (array!43889 (_ BitVec 32) List!15034) Bool)

(assert (=> b!807282 (= res!551570 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15031))))

(assert (= (and start!69238 res!551565) b!807281))

(assert (= (and b!807281 res!551573) b!807279))

(assert (= (and b!807279 res!551571) b!807277))

(assert (= (and b!807277 res!551572) b!807276))

(assert (= (and b!807276 res!551575) b!807274))

(assert (= (and b!807274 res!551566) b!807280))

(assert (= (and b!807280 res!551567) b!807282))

(assert (= (and b!807282 res!551570) b!807273))

(assert (= (and b!807273 res!551568) b!807278))

(assert (= (and b!807278 res!551574) b!807272))

(assert (= (and b!807272 res!551569) b!807275))

(declare-fun m!749401 () Bool)

(assert (=> b!807280 m!749401))

(declare-fun m!749403 () Bool)

(assert (=> b!807276 m!749403))

(declare-fun m!749405 () Bool)

(assert (=> b!807277 m!749405))

(declare-fun m!749407 () Bool)

(assert (=> b!807279 m!749407))

(assert (=> b!807279 m!749407))

(declare-fun m!749409 () Bool)

(assert (=> b!807279 m!749409))

(declare-fun m!749411 () Bool)

(assert (=> b!807278 m!749411))

(declare-fun m!749413 () Bool)

(assert (=> b!807278 m!749413))

(declare-fun m!749415 () Bool)

(assert (=> b!807278 m!749415))

(declare-fun m!749417 () Bool)

(assert (=> b!807278 m!749417))

(declare-fun m!749419 () Bool)

(assert (=> b!807273 m!749419))

(declare-fun m!749421 () Bool)

(assert (=> b!807273 m!749421))

(declare-fun m!749423 () Bool)

(assert (=> b!807274 m!749423))

(declare-fun m!749425 () Bool)

(assert (=> b!807275 m!749425))

(declare-fun m!749427 () Bool)

(assert (=> start!69238 m!749427))

(declare-fun m!749429 () Bool)

(assert (=> start!69238 m!749429))

(declare-fun m!749431 () Bool)

(assert (=> b!807282 m!749431))

(declare-fun m!749433 () Bool)

(assert (=> b!807272 m!749433))

(assert (=> b!807272 m!749407))

(assert (=> b!807272 m!749407))

(declare-fun m!749435 () Bool)

(assert (=> b!807272 m!749435))

(assert (=> b!807272 m!749407))

(declare-fun m!749437 () Bool)

(assert (=> b!807272 m!749437))

(push 1)

