; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68354 () Bool)

(assert start!68354)

(declare-fun b!793750 () Bool)

(declare-fun e!440861 () Bool)

(assert (=> b!793750 (= e!440861 false)))

(declare-fun lt!353862 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43095 0))(
  ( (array!43096 (arr!20624 (Array (_ BitVec 32) (_ BitVec 64))) (size!21045 (_ BitVec 32))) )
))
(declare-fun lt!353861 () array!43095)

(declare-datatypes ((SeekEntryResult!8222 0))(
  ( (MissingZero!8222 (index!35255 (_ BitVec 32))) (Found!8222 (index!35256 (_ BitVec 32))) (Intermediate!8222 (undefined!9034 Bool) (index!35257 (_ BitVec 32)) (x!66213 (_ BitVec 32))) (Undefined!8222) (MissingVacant!8222 (index!35258 (_ BitVec 32))) )
))
(declare-fun lt!353860 () SeekEntryResult!8222)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43095 (_ BitVec 32)) SeekEntryResult!8222)

(assert (=> b!793750 (= lt!353860 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353862 lt!353861 mask!3266))))

(declare-fun lt!353859 () SeekEntryResult!8222)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43095 (_ BitVec 32)) SeekEntryResult!8222)

(assert (=> b!793750 (= lt!353859 (seekEntryOrOpen!0 lt!353862 lt!353861 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43095)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793750 (= lt!353862 (select (store (arr!20624 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793750 (= lt!353861 (array!43096 (store (arr!20624 a!3170) i!1163 k!2044) (size!21045 a!3170)))))

(declare-fun b!793751 () Bool)

(declare-fun res!538443 () Bool)

(assert (=> b!793751 (=> (not res!538443) (not e!440861))))

(declare-datatypes ((List!14640 0))(
  ( (Nil!14637) (Cons!14636 (h!15765 (_ BitVec 64)) (t!20963 List!14640)) )
))
(declare-fun arrayNoDuplicates!0 (array!43095 (_ BitVec 32) List!14640) Bool)

(assert (=> b!793751 (= res!538443 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14637))))

(declare-fun res!538439 () Bool)

(declare-fun e!440863 () Bool)

(assert (=> start!68354 (=> (not res!538439) (not e!440863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68354 (= res!538439 (validMask!0 mask!3266))))

(assert (=> start!68354 e!440863))

(assert (=> start!68354 true))

(declare-fun array_inv!16398 (array!43095) Bool)

(assert (=> start!68354 (array_inv!16398 a!3170)))

(declare-fun b!793752 () Bool)

(declare-fun res!538445 () Bool)

(assert (=> b!793752 (=> (not res!538445) (not e!440863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793752 (= res!538445 (validKeyInArray!0 k!2044))))

(declare-fun b!793753 () Bool)

(declare-fun res!538447 () Bool)

(assert (=> b!793753 (=> (not res!538447) (not e!440863))))

(assert (=> b!793753 (= res!538447 (and (= (size!21045 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21045 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21045 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793754 () Bool)

(assert (=> b!793754 (= e!440863 e!440861)))

(declare-fun res!538446 () Bool)

(assert (=> b!793754 (=> (not res!538446) (not e!440861))))

(declare-fun lt!353863 () SeekEntryResult!8222)

(assert (=> b!793754 (= res!538446 (or (= lt!353863 (MissingZero!8222 i!1163)) (= lt!353863 (MissingVacant!8222 i!1163))))))

(assert (=> b!793754 (= lt!353863 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793755 () Bool)

(declare-fun res!538444 () Bool)

(assert (=> b!793755 (=> (not res!538444) (not e!440863))))

(declare-fun arrayContainsKey!0 (array!43095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793755 (= res!538444 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793756 () Bool)

(declare-fun res!538442 () Bool)

(assert (=> b!793756 (=> (not res!538442) (not e!440861))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793756 (= res!538442 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21045 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20624 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21045 a!3170)) (= (select (arr!20624 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793757 () Bool)

(declare-fun res!538441 () Bool)

(assert (=> b!793757 (=> (not res!538441) (not e!440863))))

(assert (=> b!793757 (= res!538441 (validKeyInArray!0 (select (arr!20624 a!3170) j!153)))))

(declare-fun b!793758 () Bool)

(declare-fun res!538440 () Bool)

(assert (=> b!793758 (=> (not res!538440) (not e!440861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43095 (_ BitVec 32)) Bool)

(assert (=> b!793758 (= res!538440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68354 res!538439) b!793753))

(assert (= (and b!793753 res!538447) b!793757))

(assert (= (and b!793757 res!538441) b!793752))

(assert (= (and b!793752 res!538445) b!793755))

(assert (= (and b!793755 res!538444) b!793754))

(assert (= (and b!793754 res!538446) b!793758))

(assert (= (and b!793758 res!538440) b!793751))

(assert (= (and b!793751 res!538443) b!793756))

(assert (= (and b!793756 res!538442) b!793750))

(declare-fun m!734353 () Bool)

(assert (=> b!793750 m!734353))

(declare-fun m!734355 () Bool)

(assert (=> b!793750 m!734355))

(declare-fun m!734357 () Bool)

(assert (=> b!793750 m!734357))

(declare-fun m!734359 () Bool)

(assert (=> b!793750 m!734359))

(declare-fun m!734361 () Bool)

(assert (=> b!793755 m!734361))

(declare-fun m!734363 () Bool)

(assert (=> b!793751 m!734363))

(declare-fun m!734365 () Bool)

(assert (=> b!793752 m!734365))

(declare-fun m!734367 () Bool)

(assert (=> b!793757 m!734367))

(assert (=> b!793757 m!734367))

(declare-fun m!734369 () Bool)

(assert (=> b!793757 m!734369))

(declare-fun m!734371 () Bool)

(assert (=> b!793758 m!734371))

(declare-fun m!734373 () Bool)

(assert (=> b!793756 m!734373))

(declare-fun m!734375 () Bool)

(assert (=> b!793756 m!734375))

(declare-fun m!734377 () Bool)

(assert (=> b!793754 m!734377))

(declare-fun m!734379 () Bool)

(assert (=> start!68354 m!734379))

(declare-fun m!734381 () Bool)

(assert (=> start!68354 m!734381))

(push 1)

(assert (not start!68354))

(assert (not b!793757))

(assert (not b!793755))

(assert (not b!793758))

