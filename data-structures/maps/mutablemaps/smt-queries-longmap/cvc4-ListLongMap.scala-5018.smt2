; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68642 () Bool)

(assert start!68642)

(declare-fun b!798375 () Bool)

(declare-fun e!442870 () Bool)

(declare-fun e!442867 () Bool)

(assert (=> b!798375 (= e!442870 e!442867)))

(declare-fun res!543070 () Bool)

(assert (=> b!798375 (=> (not res!543070) (not e!442867))))

(declare-fun lt!356416 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((array!43383 0))(
  ( (array!43384 (arr!20768 (Array (_ BitVec 32) (_ BitVec 64))) (size!21189 (_ BitVec 32))) )
))
(declare-fun lt!356417 () array!43383)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8366 0))(
  ( (MissingZero!8366 (index!35831 (_ BitVec 32))) (Found!8366 (index!35832 (_ BitVec 32))) (Intermediate!8366 (undefined!9178 Bool) (index!35833 (_ BitVec 32)) (x!66741 (_ BitVec 32))) (Undefined!8366) (MissingVacant!8366 (index!35834 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43383 (_ BitVec 32)) SeekEntryResult!8366)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43383 (_ BitVec 32)) SeekEntryResult!8366)

(assert (=> b!798375 (= res!543070 (= (seekEntryOrOpen!0 lt!356416 lt!356417 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356416 lt!356417 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43383)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798375 (= lt!356416 (select (store (arr!20768 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798375 (= lt!356417 (array!43384 (store (arr!20768 a!3170) i!1163 k!2044) (size!21189 a!3170)))))

(declare-fun b!798376 () Bool)

(declare-fun e!442869 () Bool)

(assert (=> b!798376 (= e!442869 e!442870)))

(declare-fun res!543066 () Bool)

(assert (=> b!798376 (=> (not res!543066) (not e!442870))))

(declare-fun lt!356419 () SeekEntryResult!8366)

(assert (=> b!798376 (= res!543066 (or (= lt!356419 (MissingZero!8366 i!1163)) (= lt!356419 (MissingVacant!8366 i!1163))))))

(assert (=> b!798376 (= lt!356419 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798377 () Bool)

(declare-fun res!543069 () Bool)

(assert (=> b!798377 (=> (not res!543069) (not e!442870))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798377 (= res!543069 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21189 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20768 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21189 a!3170)) (= (select (arr!20768 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!543067 () Bool)

(assert (=> start!68642 (=> (not res!543067) (not e!442869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68642 (= res!543067 (validMask!0 mask!3266))))

(assert (=> start!68642 e!442869))

(assert (=> start!68642 true))

(declare-fun array_inv!16542 (array!43383) Bool)

(assert (=> start!68642 (array_inv!16542 a!3170)))

(declare-fun b!798378 () Bool)

(declare-fun res!543064 () Bool)

(assert (=> b!798378 (=> (not res!543064) (not e!442870))))

(declare-datatypes ((List!14784 0))(
  ( (Nil!14781) (Cons!14780 (h!15909 (_ BitVec 64)) (t!21107 List!14784)) )
))
(declare-fun arrayNoDuplicates!0 (array!43383 (_ BitVec 32) List!14784) Bool)

(assert (=> b!798378 (= res!543064 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14781))))

(declare-fun b!798379 () Bool)

(declare-fun res!543072 () Bool)

(assert (=> b!798379 (=> (not res!543072) (not e!442869))))

(declare-fun arrayContainsKey!0 (array!43383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798379 (= res!543072 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798380 () Bool)

(declare-fun res!543068 () Bool)

(assert (=> b!798380 (=> (not res!543068) (not e!442869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798380 (= res!543068 (validKeyInArray!0 (select (arr!20768 a!3170) j!153)))))

(declare-fun b!798381 () Bool)

(assert (=> b!798381 (= e!442867 false)))

(declare-fun lt!356415 () SeekEntryResult!8366)

(assert (=> b!798381 (= lt!356415 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20768 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356418 () SeekEntryResult!8366)

(assert (=> b!798381 (= lt!356418 (seekEntryOrOpen!0 (select (arr!20768 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798382 () Bool)

(declare-fun res!543065 () Bool)

(assert (=> b!798382 (=> (not res!543065) (not e!442869))))

(assert (=> b!798382 (= res!543065 (validKeyInArray!0 k!2044))))

(declare-fun b!798383 () Bool)

(declare-fun res!543071 () Bool)

(assert (=> b!798383 (=> (not res!543071) (not e!442870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43383 (_ BitVec 32)) Bool)

(assert (=> b!798383 (= res!543071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798384 () Bool)

(declare-fun res!543073 () Bool)

(assert (=> b!798384 (=> (not res!543073) (not e!442869))))

(assert (=> b!798384 (= res!543073 (and (= (size!21189 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21189 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21189 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68642 res!543067) b!798384))

(assert (= (and b!798384 res!543073) b!798380))

(assert (= (and b!798380 res!543068) b!798382))

(assert (= (and b!798382 res!543065) b!798379))

(assert (= (and b!798379 res!543072) b!798376))

(assert (= (and b!798376 res!543066) b!798383))

(assert (= (and b!798383 res!543071) b!798378))

(assert (= (and b!798378 res!543064) b!798377))

(assert (= (and b!798377 res!543069) b!798375))

(assert (= (and b!798375 res!543070) b!798381))

(declare-fun m!739389 () Bool)

(assert (=> b!798382 m!739389))

(declare-fun m!739391 () Bool)

(assert (=> b!798383 m!739391))

(declare-fun m!739393 () Bool)

(assert (=> b!798377 m!739393))

(declare-fun m!739395 () Bool)

(assert (=> b!798377 m!739395))

(declare-fun m!739397 () Bool)

(assert (=> b!798379 m!739397))

(declare-fun m!739399 () Bool)

(assert (=> b!798376 m!739399))

(declare-fun m!739401 () Bool)

(assert (=> start!68642 m!739401))

(declare-fun m!739403 () Bool)

(assert (=> start!68642 m!739403))

(declare-fun m!739405 () Bool)

(assert (=> b!798375 m!739405))

(declare-fun m!739407 () Bool)

(assert (=> b!798375 m!739407))

(declare-fun m!739409 () Bool)

(assert (=> b!798375 m!739409))

(declare-fun m!739411 () Bool)

(assert (=> b!798375 m!739411))

(declare-fun m!739413 () Bool)

(assert (=> b!798378 m!739413))

(declare-fun m!739415 () Bool)

(assert (=> b!798380 m!739415))

(assert (=> b!798380 m!739415))

(declare-fun m!739417 () Bool)

(assert (=> b!798380 m!739417))

(assert (=> b!798381 m!739415))

(assert (=> b!798381 m!739415))

(declare-fun m!739419 () Bool)

(assert (=> b!798381 m!739419))

(assert (=> b!798381 m!739415))

(declare-fun m!739421 () Bool)

(assert (=> b!798381 m!739421))

(push 1)

