; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68434 () Bool)

(assert start!68434)

(declare-fun b!794940 () Bool)

(declare-fun e!441304 () Bool)

(declare-fun e!441307 () Bool)

(assert (=> b!794940 (= e!441304 e!441307)))

(declare-fun res!539634 () Bool)

(assert (=> b!794940 (=> (not res!539634) (not e!441307))))

(declare-datatypes ((array!43175 0))(
  ( (array!43176 (arr!20664 (Array (_ BitVec 32) (_ BitVec 64))) (size!21085 (_ BitVec 32))) )
))
(declare-fun lt!354352 () array!43175)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354354 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8262 0))(
  ( (MissingZero!8262 (index!35415 (_ BitVec 32))) (Found!8262 (index!35416 (_ BitVec 32))) (Intermediate!8262 (undefined!9074 Bool) (index!35417 (_ BitVec 32)) (x!66365 (_ BitVec 32))) (Undefined!8262) (MissingVacant!8262 (index!35418 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43175 (_ BitVec 32)) SeekEntryResult!8262)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43175 (_ BitVec 32)) SeekEntryResult!8262)

(assert (=> b!794940 (= res!539634 (= (seekEntryOrOpen!0 lt!354354 lt!354352 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354354 lt!354352 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43175)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794940 (= lt!354354 (select (store (arr!20664 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794940 (= lt!354352 (array!43176 (store (arr!20664 a!3170) i!1163 k!2044) (size!21085 a!3170)))))

(declare-fun b!794941 () Bool)

(assert (=> b!794941 (= e!441307 false)))

(declare-fun lt!354355 () SeekEntryResult!8262)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794941 (= lt!354355 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20664 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354353 () SeekEntryResult!8262)

(assert (=> b!794941 (= lt!354353 (seekEntryOrOpen!0 (select (arr!20664 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794942 () Bool)

(declare-fun res!539632 () Bool)

(declare-fun e!441306 () Bool)

(assert (=> b!794942 (=> (not res!539632) (not e!441306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794942 (= res!539632 (validKeyInArray!0 k!2044))))

(declare-fun b!794943 () Bool)

(declare-fun res!539636 () Bool)

(assert (=> b!794943 (=> (not res!539636) (not e!441306))))

(assert (=> b!794943 (= res!539636 (validKeyInArray!0 (select (arr!20664 a!3170) j!153)))))

(declare-fun b!794944 () Bool)

(declare-fun res!539629 () Bool)

(assert (=> b!794944 (=> (not res!539629) (not e!441306))))

(assert (=> b!794944 (= res!539629 (and (= (size!21085 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21085 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21085 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794945 () Bool)

(declare-fun res!539635 () Bool)

(assert (=> b!794945 (=> (not res!539635) (not e!441304))))

(assert (=> b!794945 (= res!539635 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21085 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20664 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21085 a!3170)) (= (select (arr!20664 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794946 () Bool)

(declare-fun res!539637 () Bool)

(assert (=> b!794946 (=> (not res!539637) (not e!441304))))

(declare-datatypes ((List!14680 0))(
  ( (Nil!14677) (Cons!14676 (h!15805 (_ BitVec 64)) (t!21003 List!14680)) )
))
(declare-fun arrayNoDuplicates!0 (array!43175 (_ BitVec 32) List!14680) Bool)

(assert (=> b!794946 (= res!539637 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14677))))

(declare-fun res!539631 () Bool)

(assert (=> start!68434 (=> (not res!539631) (not e!441306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68434 (= res!539631 (validMask!0 mask!3266))))

(assert (=> start!68434 e!441306))

(assert (=> start!68434 true))

(declare-fun array_inv!16438 (array!43175) Bool)

(assert (=> start!68434 (array_inv!16438 a!3170)))

(declare-fun b!794947 () Bool)

(declare-fun res!539630 () Bool)

(assert (=> b!794947 (=> (not res!539630) (not e!441304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43175 (_ BitVec 32)) Bool)

(assert (=> b!794947 (= res!539630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794948 () Bool)

(assert (=> b!794948 (= e!441306 e!441304)))

(declare-fun res!539633 () Bool)

(assert (=> b!794948 (=> (not res!539633) (not e!441304))))

(declare-fun lt!354351 () SeekEntryResult!8262)

(assert (=> b!794948 (= res!539633 (or (= lt!354351 (MissingZero!8262 i!1163)) (= lt!354351 (MissingVacant!8262 i!1163))))))

(assert (=> b!794948 (= lt!354351 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794949 () Bool)

(declare-fun res!539638 () Bool)

(assert (=> b!794949 (=> (not res!539638) (not e!441306))))

(declare-fun arrayContainsKey!0 (array!43175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794949 (= res!539638 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68434 res!539631) b!794944))

(assert (= (and b!794944 res!539629) b!794943))

(assert (= (and b!794943 res!539636) b!794942))

(assert (= (and b!794942 res!539632) b!794949))

(assert (= (and b!794949 res!539638) b!794948))

(assert (= (and b!794948 res!539633) b!794947))

(assert (= (and b!794947 res!539630) b!794946))

(assert (= (and b!794946 res!539637) b!794945))

(assert (= (and b!794945 res!539635) b!794940))

(assert (= (and b!794940 res!539634) b!794941))

(declare-fun m!735625 () Bool)

(assert (=> b!794949 m!735625))

(declare-fun m!735627 () Bool)

(assert (=> b!794945 m!735627))

(declare-fun m!735629 () Bool)

(assert (=> b!794945 m!735629))

(declare-fun m!735631 () Bool)

(assert (=> b!794947 m!735631))

(declare-fun m!735633 () Bool)

(assert (=> start!68434 m!735633))

(declare-fun m!735635 () Bool)

(assert (=> start!68434 m!735635))

(declare-fun m!735637 () Bool)

(assert (=> b!794940 m!735637))

(declare-fun m!735639 () Bool)

(assert (=> b!794940 m!735639))

(declare-fun m!735641 () Bool)

(assert (=> b!794940 m!735641))

(declare-fun m!735643 () Bool)

(assert (=> b!794940 m!735643))

(declare-fun m!735645 () Bool)

(assert (=> b!794946 m!735645))

(declare-fun m!735647 () Bool)

(assert (=> b!794942 m!735647))

(declare-fun m!735649 () Bool)

(assert (=> b!794943 m!735649))

(assert (=> b!794943 m!735649))

(declare-fun m!735651 () Bool)

(assert (=> b!794943 m!735651))

(assert (=> b!794941 m!735649))

(assert (=> b!794941 m!735649))

(declare-fun m!735653 () Bool)

(assert (=> b!794941 m!735653))

(assert (=> b!794941 m!735649))

(declare-fun m!735655 () Bool)

(assert (=> b!794941 m!735655))

(declare-fun m!735657 () Bool)

(assert (=> b!794948 m!735657))

(push 1)

