; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69014 () Bool)

(assert start!69014)

(declare-fun b!804684 () Bool)

(declare-fun e!445748 () Bool)

(declare-fun e!445747 () Bool)

(assert (=> b!804684 (= e!445748 e!445747)))

(declare-fun res!549379 () Bool)

(assert (=> b!804684 (=> (not res!549379) (not e!445747))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43755 0))(
  ( (array!43756 (arr!20954 (Array (_ BitVec 32) (_ BitVec 64))) (size!21375 (_ BitVec 32))) )
))
(declare-fun lt!360276 () array!43755)

(declare-fun lt!360279 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8552 0))(
  ( (MissingZero!8552 (index!36575 (_ BitVec 32))) (Found!8552 (index!36576 (_ BitVec 32))) (Intermediate!8552 (undefined!9364 Bool) (index!36577 (_ BitVec 32)) (x!67423 (_ BitVec 32))) (Undefined!8552) (MissingVacant!8552 (index!36578 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43755 (_ BitVec 32)) SeekEntryResult!8552)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43755 (_ BitVec 32)) SeekEntryResult!8552)

(assert (=> b!804684 (= res!549379 (= (seekEntryOrOpen!0 lt!360279 lt!360276 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360279 lt!360276 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43755)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804684 (= lt!360279 (select (store (arr!20954 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804684 (= lt!360276 (array!43756 (store (arr!20954 a!3170) i!1163 k!2044) (size!21375 a!3170)))))

(declare-fun b!804685 () Bool)

(declare-fun res!549376 () Bool)

(declare-fun e!445750 () Bool)

(assert (=> b!804685 (=> (not res!549376) (not e!445750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804685 (= res!549376 (validKeyInArray!0 k!2044))))

(declare-fun res!549380 () Bool)

(assert (=> start!69014 (=> (not res!549380) (not e!445750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69014 (= res!549380 (validMask!0 mask!3266))))

(assert (=> start!69014 e!445750))

(assert (=> start!69014 true))

(declare-fun array_inv!16728 (array!43755) Bool)

(assert (=> start!69014 (array_inv!16728 a!3170)))

(declare-fun b!804686 () Bool)

(declare-fun res!549381 () Bool)

(assert (=> b!804686 (=> (not res!549381) (not e!445748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43755 (_ BitVec 32)) Bool)

(assert (=> b!804686 (= res!549381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804687 () Bool)

(declare-fun res!549377 () Bool)

(assert (=> b!804687 (=> (not res!549377) (not e!445750))))

(assert (=> b!804687 (= res!549377 (validKeyInArray!0 (select (arr!20954 a!3170) j!153)))))

(declare-fun b!804688 () Bool)

(declare-fun res!549375 () Bool)

(assert (=> b!804688 (=> (not res!549375) (not e!445750))))

(assert (=> b!804688 (= res!549375 (and (= (size!21375 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21375 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21375 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804689 () Bool)

(declare-fun res!549374 () Bool)

(assert (=> b!804689 (=> (not res!549374) (not e!445748))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804689 (= res!549374 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21375 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20954 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21375 a!3170)) (= (select (arr!20954 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804690 () Bool)

(assert (=> b!804690 (= e!445750 e!445748)))

(declare-fun res!549373 () Bool)

(assert (=> b!804690 (=> (not res!549373) (not e!445748))))

(declare-fun lt!360277 () SeekEntryResult!8552)

(assert (=> b!804690 (= res!549373 (or (= lt!360277 (MissingZero!8552 i!1163)) (= lt!360277 (MissingVacant!8552 i!1163))))))

(assert (=> b!804690 (= lt!360277 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804691 () Bool)

(declare-fun res!549382 () Bool)

(assert (=> b!804691 (=> (not res!549382) (not e!445748))))

(declare-datatypes ((List!14970 0))(
  ( (Nil!14967) (Cons!14966 (h!16095 (_ BitVec 64)) (t!21293 List!14970)) )
))
(declare-fun arrayNoDuplicates!0 (array!43755 (_ BitVec 32) List!14970) Bool)

(assert (=> b!804691 (= res!549382 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14967))))

(declare-fun b!804692 () Bool)

(assert (=> b!804692 (= e!445747 false)))

(declare-fun lt!360280 () SeekEntryResult!8552)

(assert (=> b!804692 (= lt!360280 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20954 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360278 () SeekEntryResult!8552)

(assert (=> b!804692 (= lt!360278 (seekEntryOrOpen!0 (select (arr!20954 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!804693 () Bool)

(declare-fun res!549378 () Bool)

(assert (=> b!804693 (=> (not res!549378) (not e!445750))))

(declare-fun arrayContainsKey!0 (array!43755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804693 (= res!549378 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69014 res!549380) b!804688))

(assert (= (and b!804688 res!549375) b!804687))

(assert (= (and b!804687 res!549377) b!804685))

(assert (= (and b!804685 res!549376) b!804693))

(assert (= (and b!804693 res!549378) b!804690))

(assert (= (and b!804690 res!549373) b!804686))

(assert (= (and b!804686 res!549381) b!804691))

(assert (= (and b!804691 res!549382) b!804689))

(assert (= (and b!804689 res!549374) b!804684))

(assert (= (and b!804684 res!549379) b!804692))

(declare-fun m!746649 () Bool)

(assert (=> b!804690 m!746649))

(declare-fun m!746651 () Bool)

(assert (=> b!804687 m!746651))

(assert (=> b!804687 m!746651))

(declare-fun m!746653 () Bool)

(assert (=> b!804687 m!746653))

(declare-fun m!746655 () Bool)

(assert (=> b!804686 m!746655))

(declare-fun m!746657 () Bool)

(assert (=> start!69014 m!746657))

(declare-fun m!746659 () Bool)

(assert (=> start!69014 m!746659))

(declare-fun m!746661 () Bool)

(assert (=> b!804693 m!746661))

(declare-fun m!746663 () Bool)

(assert (=> b!804691 m!746663))

(declare-fun m!746665 () Bool)

(assert (=> b!804685 m!746665))

(declare-fun m!746667 () Bool)

(assert (=> b!804689 m!746667))

(declare-fun m!746669 () Bool)

(assert (=> b!804689 m!746669))

(assert (=> b!804692 m!746651))

(assert (=> b!804692 m!746651))

(declare-fun m!746671 () Bool)

(assert (=> b!804692 m!746671))

(assert (=> b!804692 m!746651))

(declare-fun m!746673 () Bool)

(assert (=> b!804692 m!746673))

(declare-fun m!746675 () Bool)

(assert (=> b!804684 m!746675))

(declare-fun m!746677 () Bool)

(assert (=> b!804684 m!746677))

(declare-fun m!746679 () Bool)

(assert (=> b!804684 m!746679))

(declare-fun m!746681 () Bool)

(assert (=> b!804684 m!746681))

(push 1)

(assert (not b!804690))

(assert (not b!804686))

