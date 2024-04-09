; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68602 () Bool)

(assert start!68602)

(declare-fun b!797705 () Bool)

(declare-fun res!542399 () Bool)

(declare-fun e!442558 () Bool)

(assert (=> b!797705 (=> (not res!542399) (not e!442558))))

(declare-datatypes ((array!43343 0))(
  ( (array!43344 (arr!20748 (Array (_ BitVec 32) (_ BitVec 64))) (size!21169 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43343)

(declare-datatypes ((List!14764 0))(
  ( (Nil!14761) (Cons!14760 (h!15889 (_ BitVec 64)) (t!21087 List!14764)) )
))
(declare-fun arrayNoDuplicates!0 (array!43343 (_ BitVec 32) List!14764) Bool)

(assert (=> b!797705 (= res!542399 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14761))))

(declare-fun b!797706 () Bool)

(declare-fun res!542397 () Bool)

(declare-fun e!442560 () Bool)

(assert (=> b!797706 (=> (not res!542397) (not e!442560))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797706 (= res!542397 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797707 () Bool)

(declare-fun res!542395 () Bool)

(assert (=> b!797707 (=> (not res!542395) (not e!442560))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797707 (= res!542395 (validKeyInArray!0 (select (arr!20748 a!3170) j!153)))))

(declare-fun b!797708 () Bool)

(declare-fun res!542404 () Bool)

(assert (=> b!797708 (=> (not res!542404) (not e!442558))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797708 (= res!542404 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21169 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20748 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21169 a!3170)) (= (select (arr!20748 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797709 () Bool)

(declare-fun e!442559 () Bool)

(assert (=> b!797709 (= e!442558 e!442559)))

(declare-fun res!542403 () Bool)

(assert (=> b!797709 (=> (not res!542403) (not e!442559))))

(declare-datatypes ((SeekEntryResult!8346 0))(
  ( (MissingZero!8346 (index!35751 (_ BitVec 32))) (Found!8346 (index!35752 (_ BitVec 32))) (Intermediate!8346 (undefined!9158 Bool) (index!35753 (_ BitVec 32)) (x!66673 (_ BitVec 32))) (Undefined!8346) (MissingVacant!8346 (index!35754 (_ BitVec 32))) )
))
(declare-fun lt!355995 () SeekEntryResult!8346)

(declare-fun lt!355996 () SeekEntryResult!8346)

(assert (=> b!797709 (= res!542403 (= lt!355995 lt!355996))))

(declare-fun lt!355998 () array!43343)

(declare-fun lt!355994 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43343 (_ BitVec 32)) SeekEntryResult!8346)

(assert (=> b!797709 (= lt!355996 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355994 lt!355998 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43343 (_ BitVec 32)) SeekEntryResult!8346)

(assert (=> b!797709 (= lt!355995 (seekEntryOrOpen!0 lt!355994 lt!355998 mask!3266))))

(assert (=> b!797709 (= lt!355994 (select (store (arr!20748 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797709 (= lt!355998 (array!43344 (store (arr!20748 a!3170) i!1163 k!2044) (size!21169 a!3170)))))

(declare-fun b!797710 () Bool)

(declare-fun e!442557 () Bool)

(assert (=> b!797710 (= e!442557 (not true))))

(assert (=> b!797710 (= lt!355996 (Found!8346 index!1236))))

(declare-fun b!797711 () Bool)

(declare-fun res!542398 () Bool)

(assert (=> b!797711 (=> (not res!542398) (not e!442560))))

(assert (=> b!797711 (= res!542398 (and (= (size!21169 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21169 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21169 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797712 () Bool)

(declare-fun res!542400 () Bool)

(assert (=> b!797712 (=> (not res!542400) (not e!442558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43343 (_ BitVec 32)) Bool)

(assert (=> b!797712 (= res!542400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797713 () Bool)

(assert (=> b!797713 (= e!442559 e!442557)))

(declare-fun res!542394 () Bool)

(assert (=> b!797713 (=> (not res!542394) (not e!442557))))

(declare-fun lt!355993 () SeekEntryResult!8346)

(declare-fun lt!355997 () SeekEntryResult!8346)

(assert (=> b!797713 (= res!542394 (and (= lt!355997 lt!355993) (= lt!355993 (Found!8346 j!153)) (= (select (arr!20748 a!3170) index!1236) (select (arr!20748 a!3170) j!153))))))

(assert (=> b!797713 (= lt!355993 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20748 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797713 (= lt!355997 (seekEntryOrOpen!0 (select (arr!20748 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797714 () Bool)

(assert (=> b!797714 (= e!442560 e!442558)))

(declare-fun res!542396 () Bool)

(assert (=> b!797714 (=> (not res!542396) (not e!442558))))

(declare-fun lt!355999 () SeekEntryResult!8346)

(assert (=> b!797714 (= res!542396 (or (= lt!355999 (MissingZero!8346 i!1163)) (= lt!355999 (MissingVacant!8346 i!1163))))))

(assert (=> b!797714 (= lt!355999 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797715 () Bool)

(declare-fun res!542402 () Bool)

(assert (=> b!797715 (=> (not res!542402) (not e!442560))))

(assert (=> b!797715 (= res!542402 (validKeyInArray!0 k!2044))))

(declare-fun res!542401 () Bool)

(assert (=> start!68602 (=> (not res!542401) (not e!442560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68602 (= res!542401 (validMask!0 mask!3266))))

(assert (=> start!68602 e!442560))

(assert (=> start!68602 true))

(declare-fun array_inv!16522 (array!43343) Bool)

(assert (=> start!68602 (array_inv!16522 a!3170)))

(assert (= (and start!68602 res!542401) b!797711))

(assert (= (and b!797711 res!542398) b!797707))

(assert (= (and b!797707 res!542395) b!797715))

(assert (= (and b!797715 res!542402) b!797706))

(assert (= (and b!797706 res!542397) b!797714))

(assert (= (and b!797714 res!542396) b!797712))

(assert (= (and b!797712 res!542400) b!797705))

(assert (= (and b!797705 res!542399) b!797708))

(assert (= (and b!797708 res!542404) b!797709))

(assert (= (and b!797709 res!542403) b!797713))

(assert (= (and b!797713 res!542394) b!797710))

(declare-fun m!738673 () Bool)

(assert (=> b!797713 m!738673))

(declare-fun m!738675 () Bool)

(assert (=> b!797713 m!738675))

(assert (=> b!797713 m!738675))

(declare-fun m!738677 () Bool)

(assert (=> b!797713 m!738677))

(assert (=> b!797713 m!738675))

(declare-fun m!738679 () Bool)

(assert (=> b!797713 m!738679))

(declare-fun m!738681 () Bool)

(assert (=> b!797712 m!738681))

(assert (=> b!797707 m!738675))

(assert (=> b!797707 m!738675))

(declare-fun m!738683 () Bool)

(assert (=> b!797707 m!738683))

(declare-fun m!738685 () Bool)

(assert (=> b!797714 m!738685))

(declare-fun m!738687 () Bool)

(assert (=> b!797706 m!738687))

(declare-fun m!738689 () Bool)

(assert (=> b!797708 m!738689))

(declare-fun m!738691 () Bool)

(assert (=> b!797708 m!738691))

(declare-fun m!738693 () Bool)

(assert (=> b!797705 m!738693))

(declare-fun m!738695 () Bool)

(assert (=> start!68602 m!738695))

(declare-fun m!738697 () Bool)

(assert (=> start!68602 m!738697))

(declare-fun m!738699 () Bool)

(assert (=> b!797709 m!738699))

(declare-fun m!738701 () Bool)

(assert (=> b!797709 m!738701))

(declare-fun m!738703 () Bool)

(assert (=> b!797709 m!738703))

(declare-fun m!738705 () Bool)

(assert (=> b!797709 m!738705))

(declare-fun m!738707 () Bool)

(assert (=> b!797715 m!738707))

(push 1)

