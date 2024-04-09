; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68800 () Bool)

(assert start!68800)

(declare-fun b!801372 () Bool)

(declare-fun res!546073 () Bool)

(declare-fun e!444234 () Bool)

(assert (=> b!801372 (=> (not res!546073) (not e!444234))))

(declare-datatypes ((array!43541 0))(
  ( (array!43542 (arr!20847 (Array (_ BitVec 32) (_ BitVec 64))) (size!21268 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43541)

(declare-datatypes ((List!14863 0))(
  ( (Nil!14860) (Cons!14859 (h!15988 (_ BitVec 64)) (t!21186 List!14863)) )
))
(declare-fun arrayNoDuplicates!0 (array!43541 (_ BitVec 32) List!14863) Bool)

(assert (=> b!801372 (= res!546073 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14860))))

(declare-fun b!801373 () Bool)

(declare-fun e!444238 () Bool)

(assert (=> b!801373 (= e!444234 e!444238)))

(declare-fun res!546065 () Bool)

(assert (=> b!801373 (=> (not res!546065) (not e!444238))))

(declare-fun lt!358233 () array!43541)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8445 0))(
  ( (MissingZero!8445 (index!36147 (_ BitVec 32))) (Found!8445 (index!36148 (_ BitVec 32))) (Intermediate!8445 (undefined!9257 Bool) (index!36149 (_ BitVec 32)) (x!67036 (_ BitVec 32))) (Undefined!8445) (MissingVacant!8445 (index!36150 (_ BitVec 32))) )
))
(declare-fun lt!358232 () SeekEntryResult!8445)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358228 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43541 (_ BitVec 32)) SeekEntryResult!8445)

(assert (=> b!801373 (= res!546065 (= lt!358232 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358228 lt!358233 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43541 (_ BitVec 32)) SeekEntryResult!8445)

(assert (=> b!801373 (= lt!358232 (seekEntryOrOpen!0 lt!358228 lt!358233 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801373 (= lt!358228 (select (store (arr!20847 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801373 (= lt!358233 (array!43542 (store (arr!20847 a!3170) i!1163 k!2044) (size!21268 a!3170)))))

(declare-fun b!801374 () Bool)

(declare-fun res!546068 () Bool)

(declare-fun e!444233 () Bool)

(assert (=> b!801374 (=> (not res!546068) (not e!444233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801374 (= res!546068 (validKeyInArray!0 (select (arr!20847 a!3170) j!153)))))

(declare-fun b!801375 () Bool)

(declare-fun res!546066 () Bool)

(assert (=> b!801375 (=> (not res!546066) (not e!444233))))

(assert (=> b!801375 (= res!546066 (and (= (size!21268 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21268 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21268 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801376 () Bool)

(declare-fun e!444237 () Bool)

(declare-fun e!444236 () Bool)

(assert (=> b!801376 (= e!444237 e!444236)))

(declare-fun res!546064 () Bool)

(assert (=> b!801376 (=> (not res!546064) (not e!444236))))

(declare-fun lt!358227 () (_ BitVec 32))

(assert (=> b!801376 (= res!546064 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358227 #b00000000000000000000000000000000) (bvslt lt!358227 (size!21268 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801376 (= lt!358227 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!546062 () Bool)

(assert (=> start!68800 (=> (not res!546062) (not e!444233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68800 (= res!546062 (validMask!0 mask!3266))))

(assert (=> start!68800 e!444233))

(assert (=> start!68800 true))

(declare-fun array_inv!16621 (array!43541) Bool)

(assert (=> start!68800 (array_inv!16621 a!3170)))

(declare-fun b!801377 () Bool)

(declare-fun res!546061 () Bool)

(assert (=> b!801377 (=> (not res!546061) (not e!444236))))

(assert (=> b!801377 (= res!546061 (= lt!358232 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358227 vacantAfter!23 lt!358228 lt!358233 mask!3266)))))

(declare-fun b!801378 () Bool)

(assert (=> b!801378 (= e!444236 false)))

(declare-fun lt!358231 () SeekEntryResult!8445)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801378 (= lt!358231 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358227 vacantBefore!23 (select (arr!20847 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801379 () Bool)

(declare-fun res!546063 () Bool)

(assert (=> b!801379 (=> (not res!546063) (not e!444234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43541 (_ BitVec 32)) Bool)

(assert (=> b!801379 (= res!546063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801380 () Bool)

(declare-fun res!546071 () Bool)

(assert (=> b!801380 (=> (not res!546071) (not e!444233))))

(declare-fun arrayContainsKey!0 (array!43541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801380 (= res!546071 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801381 () Bool)

(assert (=> b!801381 (= e!444238 e!444237)))

(declare-fun res!546070 () Bool)

(assert (=> b!801381 (=> (not res!546070) (not e!444237))))

(declare-fun lt!358230 () SeekEntryResult!8445)

(declare-fun lt!358229 () SeekEntryResult!8445)

(assert (=> b!801381 (= res!546070 (and (= lt!358230 lt!358229) (= lt!358229 (Found!8445 j!153)) (not (= (select (arr!20847 a!3170) index!1236) (select (arr!20847 a!3170) j!153)))))))

(assert (=> b!801381 (= lt!358229 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20847 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801381 (= lt!358230 (seekEntryOrOpen!0 (select (arr!20847 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801382 () Bool)

(declare-fun res!546072 () Bool)

(assert (=> b!801382 (=> (not res!546072) (not e!444234))))

(assert (=> b!801382 (= res!546072 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21268 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20847 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21268 a!3170)) (= (select (arr!20847 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801383 () Bool)

(declare-fun res!546069 () Bool)

(assert (=> b!801383 (=> (not res!546069) (not e!444233))))

(assert (=> b!801383 (= res!546069 (validKeyInArray!0 k!2044))))

(declare-fun b!801384 () Bool)

(assert (=> b!801384 (= e!444233 e!444234)))

(declare-fun res!546067 () Bool)

(assert (=> b!801384 (=> (not res!546067) (not e!444234))))

(declare-fun lt!358234 () SeekEntryResult!8445)

(assert (=> b!801384 (= res!546067 (or (= lt!358234 (MissingZero!8445 i!1163)) (= lt!358234 (MissingVacant!8445 i!1163))))))

(assert (=> b!801384 (= lt!358234 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68800 res!546062) b!801375))

(assert (= (and b!801375 res!546066) b!801374))

(assert (= (and b!801374 res!546068) b!801383))

(assert (= (and b!801383 res!546069) b!801380))

(assert (= (and b!801380 res!546071) b!801384))

(assert (= (and b!801384 res!546067) b!801379))

(assert (= (and b!801379 res!546063) b!801372))

(assert (= (and b!801372 res!546073) b!801382))

(assert (= (and b!801382 res!546072) b!801373))

(assert (= (and b!801373 res!546065) b!801381))

(assert (= (and b!801381 res!546070) b!801376))

(assert (= (and b!801376 res!546064) b!801377))

(assert (= (and b!801377 res!546061) b!801378))

(declare-fun m!742639 () Bool)

(assert (=> b!801381 m!742639))

(declare-fun m!742641 () Bool)

(assert (=> b!801381 m!742641))

(assert (=> b!801381 m!742641))

(declare-fun m!742643 () Bool)

(assert (=> b!801381 m!742643))

(assert (=> b!801381 m!742641))

(declare-fun m!742645 () Bool)

(assert (=> b!801381 m!742645))

(declare-fun m!742647 () Bool)

(assert (=> b!801384 m!742647))

(declare-fun m!742649 () Bool)

(assert (=> b!801376 m!742649))

(assert (=> b!801378 m!742641))

(assert (=> b!801378 m!742641))

(declare-fun m!742651 () Bool)

(assert (=> b!801378 m!742651))

(assert (=> b!801374 m!742641))

(assert (=> b!801374 m!742641))

(declare-fun m!742653 () Bool)

(assert (=> b!801374 m!742653))

(declare-fun m!742655 () Bool)

(assert (=> b!801383 m!742655))

(declare-fun m!742657 () Bool)

(assert (=> b!801372 m!742657))

(declare-fun m!742659 () Bool)

(assert (=> b!801380 m!742659))

(declare-fun m!742661 () Bool)

(assert (=> start!68800 m!742661))

(declare-fun m!742663 () Bool)

(assert (=> start!68800 m!742663))

(declare-fun m!742665 () Bool)

(assert (=> b!801382 m!742665))

(declare-fun m!742667 () Bool)

(assert (=> b!801382 m!742667))

(declare-fun m!742669 () Bool)

(assert (=> b!801379 m!742669))

(declare-fun m!742671 () Bool)

(assert (=> b!801373 m!742671))

(declare-fun m!742673 () Bool)

(assert (=> b!801373 m!742673))

(declare-fun m!742675 () Bool)

(assert (=> b!801373 m!742675))

(declare-fun m!742677 () Bool)

(assert (=> b!801373 m!742677))

(declare-fun m!742679 () Bool)

(assert (=> b!801377 m!742679))

(push 1)

