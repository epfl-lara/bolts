; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68548 () Bool)

(assert start!68548)

(declare-fun b!796753 () Bool)

(declare-fun res!541453 () Bool)

(declare-fun e!442094 () Bool)

(assert (=> b!796753 (=> (not res!541453) (not e!442094))))

(declare-datatypes ((array!43289 0))(
  ( (array!43290 (arr!20721 (Array (_ BitVec 32) (_ BitVec 64))) (size!21142 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43289)

(declare-datatypes ((List!14737 0))(
  ( (Nil!14734) (Cons!14733 (h!15862 (_ BitVec 64)) (t!21060 List!14737)) )
))
(declare-fun arrayNoDuplicates!0 (array!43289 (_ BitVec 32) List!14737) Bool)

(assert (=> b!796753 (= res!541453 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14734))))

(declare-fun b!796754 () Bool)

(declare-fun e!442092 () Bool)

(declare-fun e!442093 () Bool)

(assert (=> b!796754 (= e!442092 e!442093)))

(declare-fun res!541448 () Bool)

(assert (=> b!796754 (=> (not res!541448) (not e!442093))))

(declare-datatypes ((SeekEntryResult!8319 0))(
  ( (MissingZero!8319 (index!35643 (_ BitVec 32))) (Found!8319 (index!35644 (_ BitVec 32))) (Intermediate!8319 (undefined!9131 Bool) (index!35645 (_ BitVec 32)) (x!66574 (_ BitVec 32))) (Undefined!8319) (MissingVacant!8319 (index!35646 (_ BitVec 32))) )
))
(declare-fun lt!355374 () SeekEntryResult!8319)

(declare-fun lt!355378 () SeekEntryResult!8319)

(assert (=> b!796754 (= res!541448 (= lt!355374 lt!355378))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43289 (_ BitVec 32)) SeekEntryResult!8319)

(assert (=> b!796754 (= lt!355378 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20721 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43289 (_ BitVec 32)) SeekEntryResult!8319)

(assert (=> b!796754 (= lt!355374 (seekEntryOrOpen!0 (select (arr!20721 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796755 () Bool)

(declare-fun res!541452 () Bool)

(declare-fun e!442091 () Bool)

(assert (=> b!796755 (=> (not res!541452) (not e!442091))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796755 (= res!541452 (validKeyInArray!0 k!2044))))

(declare-fun b!796756 () Bool)

(declare-fun res!541450 () Bool)

(assert (=> b!796756 (=> (not res!541450) (not e!442094))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796756 (= res!541450 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21142 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20721 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21142 a!3170)) (= (select (arr!20721 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796757 () Bool)

(declare-fun res!541449 () Bool)

(assert (=> b!796757 (=> (not res!541449) (not e!442091))))

(declare-fun arrayContainsKey!0 (array!43289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796757 (= res!541449 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796758 () Bool)

(declare-fun lt!355377 () SeekEntryResult!8319)

(declare-fun e!442095 () Bool)

(declare-fun lt!355379 () SeekEntryResult!8319)

(assert (=> b!796758 (= e!442095 (not (or (not (= lt!355379 lt!355377)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(assert (=> b!796758 (= lt!355379 (Found!8319 index!1236))))

(declare-fun b!796759 () Bool)

(declare-fun res!541446 () Bool)

(assert (=> b!796759 (=> (not res!541446) (not e!442094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43289 (_ BitVec 32)) Bool)

(assert (=> b!796759 (= res!541446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!541445 () Bool)

(assert (=> start!68548 (=> (not res!541445) (not e!442091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68548 (= res!541445 (validMask!0 mask!3266))))

(assert (=> start!68548 e!442091))

(assert (=> start!68548 true))

(declare-fun array_inv!16495 (array!43289) Bool)

(assert (=> start!68548 (array_inv!16495 a!3170)))

(declare-fun b!796760 () Bool)

(assert (=> b!796760 (= e!442093 e!442095)))

(declare-fun res!541451 () Bool)

(assert (=> b!796760 (=> (not res!541451) (not e!442095))))

(assert (=> b!796760 (= res!541451 (and (= lt!355378 lt!355377) (= (select (arr!20721 a!3170) index!1236) (select (arr!20721 a!3170) j!153))))))

(assert (=> b!796760 (= lt!355377 (Found!8319 j!153))))

(declare-fun b!796761 () Bool)

(assert (=> b!796761 (= e!442091 e!442094)))

(declare-fun res!541444 () Bool)

(assert (=> b!796761 (=> (not res!541444) (not e!442094))))

(declare-fun lt!355380 () SeekEntryResult!8319)

(assert (=> b!796761 (= res!541444 (or (= lt!355380 (MissingZero!8319 i!1163)) (= lt!355380 (MissingVacant!8319 i!1163))))))

(assert (=> b!796761 (= lt!355380 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796762 () Bool)

(declare-fun res!541443 () Bool)

(assert (=> b!796762 (=> (not res!541443) (not e!442091))))

(assert (=> b!796762 (= res!541443 (validKeyInArray!0 (select (arr!20721 a!3170) j!153)))))

(declare-fun b!796763 () Bool)

(assert (=> b!796763 (= e!442094 e!442092)))

(declare-fun res!541447 () Bool)

(assert (=> b!796763 (=> (not res!541447) (not e!442092))))

(declare-fun lt!355375 () SeekEntryResult!8319)

(assert (=> b!796763 (= res!541447 (= lt!355375 lt!355379))))

(declare-fun lt!355376 () array!43289)

(declare-fun lt!355381 () (_ BitVec 64))

(assert (=> b!796763 (= lt!355379 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355381 lt!355376 mask!3266))))

(assert (=> b!796763 (= lt!355375 (seekEntryOrOpen!0 lt!355381 lt!355376 mask!3266))))

(assert (=> b!796763 (= lt!355381 (select (store (arr!20721 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796763 (= lt!355376 (array!43290 (store (arr!20721 a!3170) i!1163 k!2044) (size!21142 a!3170)))))

(declare-fun b!796764 () Bool)

(declare-fun res!541442 () Bool)

(assert (=> b!796764 (=> (not res!541442) (not e!442091))))

(assert (=> b!796764 (= res!541442 (and (= (size!21142 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21142 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21142 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68548 res!541445) b!796764))

(assert (= (and b!796764 res!541442) b!796762))

(assert (= (and b!796762 res!541443) b!796755))

(assert (= (and b!796755 res!541452) b!796757))

(assert (= (and b!796757 res!541449) b!796761))

(assert (= (and b!796761 res!541444) b!796759))

(assert (= (and b!796759 res!541446) b!796753))

(assert (= (and b!796753 res!541453) b!796756))

(assert (= (and b!796756 res!541450) b!796763))

(assert (= (and b!796763 res!541447) b!796754))

(assert (= (and b!796754 res!541448) b!796760))

(assert (= (and b!796760 res!541451) b!796758))

(declare-fun m!737683 () Bool)

(assert (=> b!796762 m!737683))

(assert (=> b!796762 m!737683))

(declare-fun m!737685 () Bool)

(assert (=> b!796762 m!737685))

(declare-fun m!737687 () Bool)

(assert (=> b!796756 m!737687))

(declare-fun m!737689 () Bool)

(assert (=> b!796756 m!737689))

(assert (=> b!796754 m!737683))

(assert (=> b!796754 m!737683))

(declare-fun m!737691 () Bool)

(assert (=> b!796754 m!737691))

(assert (=> b!796754 m!737683))

(declare-fun m!737693 () Bool)

(assert (=> b!796754 m!737693))

(declare-fun m!737695 () Bool)

(assert (=> b!796753 m!737695))

(declare-fun m!737697 () Bool)

(assert (=> b!796761 m!737697))

(declare-fun m!737699 () Bool)

(assert (=> b!796763 m!737699))

(declare-fun m!737701 () Bool)

(assert (=> b!796763 m!737701))

(declare-fun m!737703 () Bool)

(assert (=> b!796763 m!737703))

(declare-fun m!737705 () Bool)

(assert (=> b!796763 m!737705))

(declare-fun m!737707 () Bool)

(assert (=> b!796755 m!737707))

(declare-fun m!737709 () Bool)

(assert (=> b!796759 m!737709))

(declare-fun m!737711 () Bool)

(assert (=> b!796757 m!737711))

(declare-fun m!737713 () Bool)

(assert (=> b!796760 m!737713))

(assert (=> b!796760 m!737683))

(declare-fun m!737715 () Bool)

(assert (=> start!68548 m!737715))

(declare-fun m!737717 () Bool)

(assert (=> start!68548 m!737717))

(push 1)

