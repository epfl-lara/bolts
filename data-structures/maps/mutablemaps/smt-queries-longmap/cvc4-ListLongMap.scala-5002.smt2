; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68546 () Bool)

(assert start!68546)

(declare-fun b!796718 () Bool)

(declare-fun e!442076 () Bool)

(assert (=> b!796718 (= e!442076 (not true))))

(declare-datatypes ((SeekEntryResult!8318 0))(
  ( (MissingZero!8318 (index!35639 (_ BitVec 32))) (Found!8318 (index!35640 (_ BitVec 32))) (Intermediate!8318 (undefined!9130 Bool) (index!35641 (_ BitVec 32)) (x!66565 (_ BitVec 32))) (Undefined!8318) (MissingVacant!8318 (index!35642 (_ BitVec 32))) )
))
(declare-fun lt!355356 () SeekEntryResult!8318)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796718 (= lt!355356 (Found!8318 index!1236))))

(declare-fun b!796719 () Bool)

(declare-fun res!541417 () Bool)

(declare-fun e!442077 () Bool)

(assert (=> b!796719 (=> (not res!541417) (not e!442077))))

(declare-datatypes ((array!43287 0))(
  ( (array!43288 (arr!20720 (Array (_ BitVec 32) (_ BitVec 64))) (size!21141 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43287)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796719 (= res!541417 (validKeyInArray!0 (select (arr!20720 a!3170) j!153)))))

(declare-fun b!796720 () Bool)

(declare-fun e!442075 () Bool)

(declare-fun e!442078 () Bool)

(assert (=> b!796720 (= e!442075 e!442078)))

(declare-fun res!541407 () Bool)

(assert (=> b!796720 (=> (not res!541407) (not e!442078))))

(declare-fun lt!355357 () SeekEntryResult!8318)

(assert (=> b!796720 (= res!541407 (= lt!355357 lt!355356))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!355351 () array!43287)

(declare-fun lt!355352 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43287 (_ BitVec 32)) SeekEntryResult!8318)

(assert (=> b!796720 (= lt!355356 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355352 lt!355351 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43287 (_ BitVec 32)) SeekEntryResult!8318)

(assert (=> b!796720 (= lt!355357 (seekEntryOrOpen!0 lt!355352 lt!355351 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796720 (= lt!355352 (select (store (arr!20720 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796720 (= lt!355351 (array!43288 (store (arr!20720 a!3170) i!1163 k!2044) (size!21141 a!3170)))))

(declare-fun b!796721 () Bool)

(declare-fun res!541411 () Bool)

(assert (=> b!796721 (=> (not res!541411) (not e!442077))))

(assert (=> b!796721 (= res!541411 (validKeyInArray!0 k!2044))))

(declare-fun b!796722 () Bool)

(assert (=> b!796722 (= e!442078 e!442076)))

(declare-fun res!541410 () Bool)

(assert (=> b!796722 (=> (not res!541410) (not e!442076))))

(declare-fun lt!355355 () SeekEntryResult!8318)

(declare-fun lt!355354 () SeekEntryResult!8318)

(assert (=> b!796722 (= res!541410 (and (= lt!355354 lt!355355) (= lt!355355 (Found!8318 j!153)) (= (select (arr!20720 a!3170) index!1236) (select (arr!20720 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!796722 (= lt!355355 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20720 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796722 (= lt!355354 (seekEntryOrOpen!0 (select (arr!20720 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796723 () Bool)

(assert (=> b!796723 (= e!442077 e!442075)))

(declare-fun res!541413 () Bool)

(assert (=> b!796723 (=> (not res!541413) (not e!442075))))

(declare-fun lt!355353 () SeekEntryResult!8318)

(assert (=> b!796723 (= res!541413 (or (= lt!355353 (MissingZero!8318 i!1163)) (= lt!355353 (MissingVacant!8318 i!1163))))))

(assert (=> b!796723 (= lt!355353 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796724 () Bool)

(declare-fun res!541416 () Bool)

(assert (=> b!796724 (=> (not res!541416) (not e!442077))))

(declare-fun arrayContainsKey!0 (array!43287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796724 (= res!541416 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796725 () Bool)

(declare-fun res!541409 () Bool)

(assert (=> b!796725 (=> (not res!541409) (not e!442075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43287 (_ BitVec 32)) Bool)

(assert (=> b!796725 (= res!541409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796726 () Bool)

(declare-fun res!541408 () Bool)

(assert (=> b!796726 (=> (not res!541408) (not e!442077))))

(assert (=> b!796726 (= res!541408 (and (= (size!21141 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21141 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21141 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796727 () Bool)

(declare-fun res!541412 () Bool)

(assert (=> b!796727 (=> (not res!541412) (not e!442075))))

(declare-datatypes ((List!14736 0))(
  ( (Nil!14733) (Cons!14732 (h!15861 (_ BitVec 64)) (t!21059 List!14736)) )
))
(declare-fun arrayNoDuplicates!0 (array!43287 (_ BitVec 32) List!14736) Bool)

(assert (=> b!796727 (= res!541412 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14733))))

(declare-fun res!541415 () Bool)

(assert (=> start!68546 (=> (not res!541415) (not e!442077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68546 (= res!541415 (validMask!0 mask!3266))))

(assert (=> start!68546 e!442077))

(assert (=> start!68546 true))

(declare-fun array_inv!16494 (array!43287) Bool)

(assert (=> start!68546 (array_inv!16494 a!3170)))

(declare-fun b!796728 () Bool)

(declare-fun res!541414 () Bool)

(assert (=> b!796728 (=> (not res!541414) (not e!442075))))

(assert (=> b!796728 (= res!541414 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21141 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20720 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21141 a!3170)) (= (select (arr!20720 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68546 res!541415) b!796726))

(assert (= (and b!796726 res!541408) b!796719))

(assert (= (and b!796719 res!541417) b!796721))

(assert (= (and b!796721 res!541411) b!796724))

(assert (= (and b!796724 res!541416) b!796723))

(assert (= (and b!796723 res!541413) b!796725))

(assert (= (and b!796725 res!541409) b!796727))

(assert (= (and b!796727 res!541412) b!796728))

(assert (= (and b!796728 res!541414) b!796720))

(assert (= (and b!796720 res!541407) b!796722))

(assert (= (and b!796722 res!541410) b!796718))

(declare-fun m!737647 () Bool)

(assert (=> b!796722 m!737647))

(declare-fun m!737649 () Bool)

(assert (=> b!796722 m!737649))

(assert (=> b!796722 m!737649))

(declare-fun m!737651 () Bool)

(assert (=> b!796722 m!737651))

(assert (=> b!796722 m!737649))

(declare-fun m!737653 () Bool)

(assert (=> b!796722 m!737653))

(declare-fun m!737655 () Bool)

(assert (=> b!796725 m!737655))

(declare-fun m!737657 () Bool)

(assert (=> b!796727 m!737657))

(declare-fun m!737659 () Bool)

(assert (=> b!796720 m!737659))

(declare-fun m!737661 () Bool)

(assert (=> b!796720 m!737661))

(declare-fun m!737663 () Bool)

(assert (=> b!796720 m!737663))

(declare-fun m!737665 () Bool)

(assert (=> b!796720 m!737665))

(declare-fun m!737667 () Bool)

(assert (=> start!68546 m!737667))

(declare-fun m!737669 () Bool)

(assert (=> start!68546 m!737669))

(assert (=> b!796719 m!737649))

(assert (=> b!796719 m!737649))

(declare-fun m!737671 () Bool)

(assert (=> b!796719 m!737671))

(declare-fun m!737673 () Bool)

(assert (=> b!796723 m!737673))

(declare-fun m!737675 () Bool)

(assert (=> b!796721 m!737675))

(declare-fun m!737677 () Bool)

(assert (=> b!796724 m!737677))

(declare-fun m!737679 () Bool)

(assert (=> b!796728 m!737679))

(declare-fun m!737681 () Bool)

(assert (=> b!796728 m!737681))

(push 1)

(assert (not b!796723))

