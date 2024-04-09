; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69346 () Bool)

(assert start!69346)

(declare-fun res!552527 () Bool)

(declare-fun e!447555 () Bool)

(assert (=> start!69346 (=> (not res!552527) (not e!447555))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69346 (= res!552527 (validMask!0 mask!3266))))

(assert (=> start!69346 e!447555))

(assert (=> start!69346 true))

(declare-datatypes ((array!43946 0))(
  ( (array!43947 (arr!21045 (Array (_ BitVec 32) (_ BitVec 64))) (size!21466 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43946)

(declare-fun array_inv!16819 (array!43946) Bool)

(assert (=> start!69346 (array_inv!16819 a!3170)))

(declare-fun b!808424 () Bool)

(declare-fun e!447552 () Bool)

(assert (=> b!808424 (= e!447555 e!447552)))

(declare-fun res!552523 () Bool)

(assert (=> b!808424 (=> (not res!552523) (not e!447552))))

(declare-datatypes ((SeekEntryResult!8643 0))(
  ( (MissingZero!8643 (index!36939 (_ BitVec 32))) (Found!8643 (index!36940 (_ BitVec 32))) (Intermediate!8643 (undefined!9455 Bool) (index!36941 (_ BitVec 32)) (x!67774 (_ BitVec 32))) (Undefined!8643) (MissingVacant!8643 (index!36942 (_ BitVec 32))) )
))
(declare-fun lt!362269 () SeekEntryResult!8643)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!808424 (= res!552523 (or (= lt!362269 (MissingZero!8643 i!1163)) (= lt!362269 (MissingVacant!8643 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43946 (_ BitVec 32)) SeekEntryResult!8643)

(assert (=> b!808424 (= lt!362269 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808425 () Bool)

(declare-fun e!447554 () Bool)

(declare-fun e!447556 () Bool)

(assert (=> b!808425 (= e!447554 e!447556)))

(declare-fun res!552521 () Bool)

(assert (=> b!808425 (=> (not res!552521) (not e!447556))))

(declare-fun lt!362266 () SeekEntryResult!8643)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!362265 () SeekEntryResult!8643)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808425 (= res!552521 (and (= lt!362265 lt!362266) (= lt!362266 (Found!8643 j!153)) (not (= (select (arr!21045 a!3170) index!1236) (select (arr!21045 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43946 (_ BitVec 32)) SeekEntryResult!8643)

(assert (=> b!808425 (= lt!362266 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21045 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808425 (= lt!362265 (seekEntryOrOpen!0 (select (arr!21045 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808426 () Bool)

(declare-fun res!552522 () Bool)

(assert (=> b!808426 (=> (not res!552522) (not e!447552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43946 (_ BitVec 32)) Bool)

(assert (=> b!808426 (= res!552522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808427 () Bool)

(assert (=> b!808427 (= e!447556 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000)))))

(declare-fun lt!362264 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808427 (= lt!362264 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808428 () Bool)

(declare-fun res!552528 () Bool)

(assert (=> b!808428 (=> (not res!552528) (not e!447555))))

(assert (=> b!808428 (= res!552528 (and (= (size!21466 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21466 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21466 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808429 () Bool)

(declare-fun res!552519 () Bool)

(assert (=> b!808429 (=> (not res!552519) (not e!447555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808429 (= res!552519 (validKeyInArray!0 (select (arr!21045 a!3170) j!153)))))

(declare-fun b!808430 () Bool)

(declare-fun res!552520 () Bool)

(assert (=> b!808430 (=> (not res!552520) (not e!447555))))

(assert (=> b!808430 (= res!552520 (validKeyInArray!0 k!2044))))

(declare-fun b!808431 () Bool)

(declare-fun res!552529 () Bool)

(assert (=> b!808431 (=> (not res!552529) (not e!447555))))

(declare-fun arrayContainsKey!0 (array!43946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808431 (= res!552529 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808432 () Bool)

(declare-fun res!552524 () Bool)

(assert (=> b!808432 (=> (not res!552524) (not e!447552))))

(declare-datatypes ((List!15061 0))(
  ( (Nil!15058) (Cons!15057 (h!16186 (_ BitVec 64)) (t!21384 List!15061)) )
))
(declare-fun arrayNoDuplicates!0 (array!43946 (_ BitVec 32) List!15061) Bool)

(assert (=> b!808432 (= res!552524 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15058))))

(declare-fun b!808433 () Bool)

(declare-fun res!552525 () Bool)

(assert (=> b!808433 (=> (not res!552525) (not e!447552))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!808433 (= res!552525 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21466 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21045 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21466 a!3170)) (= (select (arr!21045 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808434 () Bool)

(assert (=> b!808434 (= e!447552 e!447554)))

(declare-fun res!552526 () Bool)

(assert (=> b!808434 (=> (not res!552526) (not e!447554))))

(declare-fun lt!362268 () (_ BitVec 64))

(declare-fun lt!362267 () array!43946)

(assert (=> b!808434 (= res!552526 (= (seekEntryOrOpen!0 lt!362268 lt!362267 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362268 lt!362267 mask!3266)))))

(assert (=> b!808434 (= lt!362268 (select (store (arr!21045 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808434 (= lt!362267 (array!43947 (store (arr!21045 a!3170) i!1163 k!2044) (size!21466 a!3170)))))

(assert (= (and start!69346 res!552527) b!808428))

(assert (= (and b!808428 res!552528) b!808429))

(assert (= (and b!808429 res!552519) b!808430))

(assert (= (and b!808430 res!552520) b!808431))

(assert (= (and b!808431 res!552529) b!808424))

(assert (= (and b!808424 res!552523) b!808426))

(assert (= (and b!808426 res!552522) b!808432))

(assert (= (and b!808432 res!552524) b!808433))

(assert (= (and b!808433 res!552525) b!808434))

(assert (= (and b!808434 res!552526) b!808425))

(assert (= (and b!808425 res!552521) b!808427))

(declare-fun m!750655 () Bool)

(assert (=> b!808425 m!750655))

(declare-fun m!750657 () Bool)

(assert (=> b!808425 m!750657))

(assert (=> b!808425 m!750657))

(declare-fun m!750659 () Bool)

(assert (=> b!808425 m!750659))

(assert (=> b!808425 m!750657))

(declare-fun m!750661 () Bool)

(assert (=> b!808425 m!750661))

(declare-fun m!750663 () Bool)

(assert (=> b!808426 m!750663))

(declare-fun m!750665 () Bool)

(assert (=> b!808424 m!750665))

(declare-fun m!750667 () Bool)

(assert (=> b!808427 m!750667))

(declare-fun m!750669 () Bool)

(assert (=> b!808431 m!750669))

(assert (=> b!808429 m!750657))

(assert (=> b!808429 m!750657))

(declare-fun m!750671 () Bool)

(assert (=> b!808429 m!750671))

(declare-fun m!750673 () Bool)

(assert (=> b!808433 m!750673))

(declare-fun m!750675 () Bool)

(assert (=> b!808433 m!750675))

(declare-fun m!750677 () Bool)

(assert (=> b!808434 m!750677))

(declare-fun m!750679 () Bool)

(assert (=> b!808434 m!750679))

(declare-fun m!750681 () Bool)

(assert (=> b!808434 m!750681))

(declare-fun m!750683 () Bool)

(assert (=> b!808434 m!750683))

(declare-fun m!750685 () Bool)

(assert (=> b!808430 m!750685))

(declare-fun m!750687 () Bool)

(assert (=> start!69346 m!750687))

(declare-fun m!750689 () Bool)

(assert (=> start!69346 m!750689))

(declare-fun m!750691 () Bool)

(assert (=> b!808432 m!750691))

(push 1)

