; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68378 () Bool)

(assert start!68378)

(declare-fun b!794093 () Bool)

(declare-fun res!538788 () Bool)

(declare-fun e!440988 () Bool)

(assert (=> b!794093 (=> (not res!538788) (not e!440988))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43119 0))(
  ( (array!43120 (arr!20636 (Array (_ BitVec 32) (_ BitVec 64))) (size!21057 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43119)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794093 (= res!538788 (and (= (size!21057 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21057 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21057 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794094 () Bool)

(declare-fun e!440989 () Bool)

(assert (=> b!794094 (= e!440989 false)))

(declare-datatypes ((SeekEntryResult!8234 0))(
  ( (MissingZero!8234 (index!35303 (_ BitVec 32))) (Found!8234 (index!35304 (_ BitVec 32))) (Intermediate!8234 (undefined!9046 Bool) (index!35305 (_ BitVec 32)) (x!66257 (_ BitVec 32))) (Undefined!8234) (MissingVacant!8234 (index!35306 (_ BitVec 32))) )
))
(declare-fun lt!354003 () SeekEntryResult!8234)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354007 () array!43119)

(declare-fun lt!354006 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43119 (_ BitVec 32)) SeekEntryResult!8234)

(assert (=> b!794094 (= lt!354003 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354006 lt!354007 mask!3266))))

(declare-fun lt!354005 () SeekEntryResult!8234)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43119 (_ BitVec 32)) SeekEntryResult!8234)

(assert (=> b!794094 (= lt!354005 (seekEntryOrOpen!0 lt!354006 lt!354007 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!794094 (= lt!354006 (select (store (arr!20636 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794094 (= lt!354007 (array!43120 (store (arr!20636 a!3170) i!1163 k!2044) (size!21057 a!3170)))))

(declare-fun b!794095 () Bool)

(declare-fun res!538782 () Bool)

(assert (=> b!794095 (=> (not res!538782) (not e!440989))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794095 (= res!538782 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21057 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20636 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21057 a!3170)) (= (select (arr!20636 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794096 () Bool)

(declare-fun res!538783 () Bool)

(assert (=> b!794096 (=> (not res!538783) (not e!440988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794096 (= res!538783 (validKeyInArray!0 k!2044))))

(declare-fun b!794097 () Bool)

(declare-fun res!538789 () Bool)

(assert (=> b!794097 (=> (not res!538789) (not e!440988))))

(declare-fun arrayContainsKey!0 (array!43119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794097 (= res!538789 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794098 () Bool)

(declare-fun res!538785 () Bool)

(assert (=> b!794098 (=> (not res!538785) (not e!440989))))

(declare-datatypes ((List!14652 0))(
  ( (Nil!14649) (Cons!14648 (h!15777 (_ BitVec 64)) (t!20975 List!14652)) )
))
(declare-fun arrayNoDuplicates!0 (array!43119 (_ BitVec 32) List!14652) Bool)

(assert (=> b!794098 (= res!538785 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14649))))

(declare-fun b!794099 () Bool)

(assert (=> b!794099 (= e!440988 e!440989)))

(declare-fun res!538787 () Bool)

(assert (=> b!794099 (=> (not res!538787) (not e!440989))))

(declare-fun lt!354004 () SeekEntryResult!8234)

(assert (=> b!794099 (= res!538787 (or (= lt!354004 (MissingZero!8234 i!1163)) (= lt!354004 (MissingVacant!8234 i!1163))))))

(assert (=> b!794099 (= lt!354004 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794100 () Bool)

(declare-fun res!538786 () Bool)

(assert (=> b!794100 (=> (not res!538786) (not e!440989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43119 (_ BitVec 32)) Bool)

(assert (=> b!794100 (= res!538786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794092 () Bool)

(declare-fun res!538784 () Bool)

(assert (=> b!794092 (=> (not res!538784) (not e!440988))))

(assert (=> b!794092 (= res!538784 (validKeyInArray!0 (select (arr!20636 a!3170) j!153)))))

(declare-fun res!538781 () Bool)

(assert (=> start!68378 (=> (not res!538781) (not e!440988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68378 (= res!538781 (validMask!0 mask!3266))))

(assert (=> start!68378 e!440988))

(assert (=> start!68378 true))

(declare-fun array_inv!16410 (array!43119) Bool)

(assert (=> start!68378 (array_inv!16410 a!3170)))

(assert (= (and start!68378 res!538781) b!794093))

(assert (= (and b!794093 res!538788) b!794092))

(assert (= (and b!794092 res!538784) b!794096))

(assert (= (and b!794096 res!538783) b!794097))

(assert (= (and b!794097 res!538789) b!794099))

(assert (= (and b!794099 res!538787) b!794100))

(assert (= (and b!794100 res!538786) b!794098))

(assert (= (and b!794098 res!538785) b!794095))

(assert (= (and b!794095 res!538782) b!794094))

(declare-fun m!734713 () Bool)

(assert (=> start!68378 m!734713))

(declare-fun m!734715 () Bool)

(assert (=> start!68378 m!734715))

(declare-fun m!734717 () Bool)

(assert (=> b!794096 m!734717))

(declare-fun m!734719 () Bool)

(assert (=> b!794092 m!734719))

(assert (=> b!794092 m!734719))

(declare-fun m!734721 () Bool)

(assert (=> b!794092 m!734721))

(declare-fun m!734723 () Bool)

(assert (=> b!794098 m!734723))

(declare-fun m!734725 () Bool)

(assert (=> b!794094 m!734725))

(declare-fun m!734727 () Bool)

(assert (=> b!794094 m!734727))

(declare-fun m!734729 () Bool)

(assert (=> b!794094 m!734729))

(declare-fun m!734731 () Bool)

(assert (=> b!794094 m!734731))

(declare-fun m!734733 () Bool)

(assert (=> b!794099 m!734733))

(declare-fun m!734735 () Bool)

(assert (=> b!794095 m!734735))

(declare-fun m!734737 () Bool)

(assert (=> b!794095 m!734737))

(declare-fun m!734739 () Bool)

(assert (=> b!794097 m!734739))

(declare-fun m!734741 () Bool)

(assert (=> b!794100 m!734741))

(push 1)

(assert (not b!794092))

(assert (not b!794094))

(assert (not b!794099))

(assert (not b!794100))

