; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68600 () Bool)

(assert start!68600)

(declare-fun b!797671 () Bool)

(declare-fun res!542367 () Bool)

(declare-fun e!442541 () Bool)

(assert (=> b!797671 (=> (not res!542367) (not e!442541))))

(declare-datatypes ((array!43341 0))(
  ( (array!43342 (arr!20747 (Array (_ BitVec 32) (_ BitVec 64))) (size!21168 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43341)

(declare-datatypes ((List!14763 0))(
  ( (Nil!14760) (Cons!14759 (h!15888 (_ BitVec 64)) (t!21086 List!14763)) )
))
(declare-fun arrayNoDuplicates!0 (array!43341 (_ BitVec 32) List!14763) Bool)

(assert (=> b!797671 (= res!542367 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14760))))

(declare-fun b!797672 () Bool)

(declare-fun e!442543 () Bool)

(assert (=> b!797672 (= e!442541 e!442543)))

(declare-fun res!542363 () Bool)

(assert (=> b!797672 (=> (not res!542363) (not e!442543))))

(declare-datatypes ((SeekEntryResult!8345 0))(
  ( (MissingZero!8345 (index!35747 (_ BitVec 32))) (Found!8345 (index!35748 (_ BitVec 32))) (Intermediate!8345 (undefined!9157 Bool) (index!35749 (_ BitVec 32)) (x!66664 (_ BitVec 32))) (Undefined!8345) (MissingVacant!8345 (index!35750 (_ BitVec 32))) )
))
(declare-fun lt!355975 () SeekEntryResult!8345)

(declare-fun lt!355973 () SeekEntryResult!8345)

(assert (=> b!797672 (= res!542363 (= lt!355975 lt!355973))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!355978 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!355974 () array!43341)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43341 (_ BitVec 32)) SeekEntryResult!8345)

(assert (=> b!797672 (= lt!355973 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355978 lt!355974 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43341 (_ BitVec 32)) SeekEntryResult!8345)

(assert (=> b!797672 (= lt!355975 (seekEntryOrOpen!0 lt!355978 lt!355974 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797672 (= lt!355978 (select (store (arr!20747 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797672 (= lt!355974 (array!43342 (store (arr!20747 a!3170) i!1163 k!2044) (size!21168 a!3170)))))

(declare-fun b!797673 () Bool)

(declare-fun res!542371 () Bool)

(declare-fun e!442546 () Bool)

(assert (=> b!797673 (=> (not res!542371) (not e!442546))))

(declare-fun arrayContainsKey!0 (array!43341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797673 (= res!542371 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797674 () Bool)

(declare-fun res!542370 () Bool)

(assert (=> b!797674 (=> (not res!542370) (not e!442541))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797674 (= res!542370 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21168 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20747 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21168 a!3170)) (= (select (arr!20747 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797675 () Bool)

(declare-fun e!442544 () Bool)

(declare-fun e!442542 () Bool)

(assert (=> b!797675 (= e!442544 e!442542)))

(declare-fun res!542360 () Bool)

(assert (=> b!797675 (=> (not res!542360) (not e!442542))))

(declare-fun lt!355977 () SeekEntryResult!8345)

(declare-fun lt!355976 () SeekEntryResult!8345)

(assert (=> b!797675 (= res!542360 (and (= lt!355976 lt!355977) (= (select (arr!20747 a!3170) index!1236) (select (arr!20747 a!3170) j!153))))))

(assert (=> b!797675 (= lt!355977 (Found!8345 j!153))))

(declare-fun b!797676 () Bool)

(assert (=> b!797676 (= e!442543 e!442544)))

(declare-fun res!542364 () Bool)

(assert (=> b!797676 (=> (not res!542364) (not e!442544))))

(declare-fun lt!355972 () SeekEntryResult!8345)

(assert (=> b!797676 (= res!542364 (= lt!355972 lt!355976))))

(assert (=> b!797676 (= lt!355976 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20747 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797676 (= lt!355972 (seekEntryOrOpen!0 (select (arr!20747 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!542369 () Bool)

(assert (=> start!68600 (=> (not res!542369) (not e!442546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68600 (= res!542369 (validMask!0 mask!3266))))

(assert (=> start!68600 e!442546))

(assert (=> start!68600 true))

(declare-fun array_inv!16521 (array!43341) Bool)

(assert (=> start!68600 (array_inv!16521 a!3170)))

(declare-fun b!797677 () Bool)

(declare-fun res!542368 () Bool)

(assert (=> b!797677 (=> (not res!542368) (not e!442546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797677 (= res!542368 (validKeyInArray!0 (select (arr!20747 a!3170) j!153)))))

(declare-fun b!797678 () Bool)

(assert (=> b!797678 (= e!442542 (not (or (not (= lt!355973 lt!355977)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(assert (=> b!797678 (= lt!355973 (Found!8345 index!1236))))

(declare-fun b!797679 () Bool)

(assert (=> b!797679 (= e!442546 e!442541)))

(declare-fun res!542362 () Bool)

(assert (=> b!797679 (=> (not res!542362) (not e!442541))))

(declare-fun lt!355971 () SeekEntryResult!8345)

(assert (=> b!797679 (= res!542362 (or (= lt!355971 (MissingZero!8345 i!1163)) (= lt!355971 (MissingVacant!8345 i!1163))))))

(assert (=> b!797679 (= lt!355971 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797680 () Bool)

(declare-fun res!542366 () Bool)

(assert (=> b!797680 (=> (not res!542366) (not e!442546))))

(assert (=> b!797680 (= res!542366 (and (= (size!21168 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21168 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21168 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797681 () Bool)

(declare-fun res!542365 () Bool)

(assert (=> b!797681 (=> (not res!542365) (not e!442541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43341 (_ BitVec 32)) Bool)

(assert (=> b!797681 (= res!542365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797682 () Bool)

(declare-fun res!542361 () Bool)

(assert (=> b!797682 (=> (not res!542361) (not e!442546))))

(assert (=> b!797682 (= res!542361 (validKeyInArray!0 k!2044))))

(assert (= (and start!68600 res!542369) b!797680))

(assert (= (and b!797680 res!542366) b!797677))

(assert (= (and b!797677 res!542368) b!797682))

(assert (= (and b!797682 res!542361) b!797673))

(assert (= (and b!797673 res!542371) b!797679))

(assert (= (and b!797679 res!542362) b!797681))

(assert (= (and b!797681 res!542365) b!797671))

(assert (= (and b!797671 res!542367) b!797674))

(assert (= (and b!797674 res!542370) b!797672))

(assert (= (and b!797672 res!542363) b!797676))

(assert (= (and b!797676 res!542364) b!797675))

(assert (= (and b!797675 res!542360) b!797678))

(declare-fun m!738637 () Bool)

(assert (=> b!797676 m!738637))

(assert (=> b!797676 m!738637))

(declare-fun m!738639 () Bool)

(assert (=> b!797676 m!738639))

(assert (=> b!797676 m!738637))

(declare-fun m!738641 () Bool)

(assert (=> b!797676 m!738641))

(declare-fun m!738643 () Bool)

(assert (=> b!797674 m!738643))

(declare-fun m!738645 () Bool)

(assert (=> b!797674 m!738645))

(declare-fun m!738647 () Bool)

(assert (=> b!797672 m!738647))

(declare-fun m!738649 () Bool)

(assert (=> b!797672 m!738649))

(declare-fun m!738651 () Bool)

(assert (=> b!797672 m!738651))

(declare-fun m!738653 () Bool)

(assert (=> b!797672 m!738653))

(assert (=> b!797677 m!738637))

(assert (=> b!797677 m!738637))

(declare-fun m!738655 () Bool)

(assert (=> b!797677 m!738655))

(declare-fun m!738657 () Bool)

(assert (=> b!797673 m!738657))

(declare-fun m!738659 () Bool)

(assert (=> b!797682 m!738659))

(declare-fun m!738661 () Bool)

(assert (=> b!797679 m!738661))

(declare-fun m!738663 () Bool)

(assert (=> b!797681 m!738663))

(declare-fun m!738665 () Bool)

(assert (=> b!797675 m!738665))

(assert (=> b!797675 m!738637))

(declare-fun m!738667 () Bool)

(assert (=> b!797671 m!738667))

(declare-fun m!738669 () Bool)

(assert (=> start!68600 m!738669))

(declare-fun m!738671 () Bool)

(assert (=> start!68600 m!738671))

(push 1)

(assert (not b!797677))

(assert (not b!797671))

(assert (not b!797681))

(assert (not start!68600))

(assert (not b!797682))

(assert (not b!797679))

(assert (not b!797673))

(assert (not b!797676))

(assert (not b!797672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

