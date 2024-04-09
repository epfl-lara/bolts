; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68936 () Bool)

(assert start!68936)

(declare-fun b!803719 () Bool)

(declare-fun res!548409 () Bool)

(declare-fun e!445352 () Bool)

(assert (=> b!803719 (=> (not res!548409) (not e!445352))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43677 0))(
  ( (array!43678 (arr!20915 (Array (_ BitVec 32) (_ BitVec 64))) (size!21336 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43677)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803719 (= res!548409 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21336 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20915 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21336 a!3170)) (= (select (arr!20915 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803720 () Bool)

(declare-fun res!548418 () Bool)

(declare-fun e!445349 () Bool)

(assert (=> b!803720 (=> (not res!548418) (not e!445349))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!803720 (= res!548418 (and (= (size!21336 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21336 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21336 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803722 () Bool)

(declare-fun res!548412 () Bool)

(assert (=> b!803722 (=> (not res!548412) (not e!445349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803722 (= res!548412 (validKeyInArray!0 (select (arr!20915 a!3170) j!153)))))

(declare-fun b!803723 () Bool)

(declare-fun e!445353 () Bool)

(assert (=> b!803723 (= e!445352 e!445353)))

(declare-fun res!548417 () Bool)

(assert (=> b!803723 (=> (not res!548417) (not e!445353))))

(declare-datatypes ((SeekEntryResult!8513 0))(
  ( (MissingZero!8513 (index!36419 (_ BitVec 32))) (Found!8513 (index!36420 (_ BitVec 32))) (Intermediate!8513 (undefined!9325 Bool) (index!36421 (_ BitVec 32)) (x!67280 (_ BitVec 32))) (Undefined!8513) (MissingVacant!8513 (index!36422 (_ BitVec 32))) )
))
(declare-fun lt!359880 () SeekEntryResult!8513)

(declare-fun lt!359881 () SeekEntryResult!8513)

(assert (=> b!803723 (= res!548417 (= lt!359880 lt!359881))))

(declare-fun lt!359875 () (_ BitVec 64))

(declare-fun lt!359884 () array!43677)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43677 (_ BitVec 32)) SeekEntryResult!8513)

(assert (=> b!803723 (= lt!359881 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359875 lt!359884 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43677 (_ BitVec 32)) SeekEntryResult!8513)

(assert (=> b!803723 (= lt!359880 (seekEntryOrOpen!0 lt!359875 lt!359884 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!803723 (= lt!359875 (select (store (arr!20915 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803723 (= lt!359884 (array!43678 (store (arr!20915 a!3170) i!1163 k!2044) (size!21336 a!3170)))))

(declare-fun b!803724 () Bool)

(declare-fun e!445351 () Bool)

(declare-fun e!445350 () Bool)

(assert (=> b!803724 (= e!445351 e!445350)))

(declare-fun res!548415 () Bool)

(assert (=> b!803724 (=> (not res!548415) (not e!445350))))

(declare-fun lt!359877 () SeekEntryResult!8513)

(declare-fun lt!359876 () SeekEntryResult!8513)

(assert (=> b!803724 (= res!548415 (and (= lt!359876 lt!359877) (not (= (select (arr!20915 a!3170) index!1236) (select (arr!20915 a!3170) j!153)))))))

(assert (=> b!803724 (= lt!359877 (Found!8513 j!153))))

(declare-fun b!803725 () Bool)

(declare-fun res!548419 () Bool)

(assert (=> b!803725 (=> (not res!548419) (not e!445349))))

(declare-fun arrayContainsKey!0 (array!43677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803725 (= res!548419 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803726 () Bool)

(assert (=> b!803726 (= e!445349 e!445352)))

(declare-fun res!548408 () Bool)

(assert (=> b!803726 (=> (not res!548408) (not e!445352))))

(declare-fun lt!359879 () SeekEntryResult!8513)

(assert (=> b!803726 (= res!548408 (or (= lt!359879 (MissingZero!8513 i!1163)) (= lt!359879 (MissingVacant!8513 i!1163))))))

(assert (=> b!803726 (= lt!359879 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548416 () Bool)

(assert (=> start!68936 (=> (not res!548416) (not e!445349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68936 (= res!548416 (validMask!0 mask!3266))))

(assert (=> start!68936 e!445349))

(assert (=> start!68936 true))

(declare-fun array_inv!16689 (array!43677) Bool)

(assert (=> start!68936 (array_inv!16689 a!3170)))

(declare-fun b!803721 () Bool)

(declare-fun res!548411 () Bool)

(assert (=> b!803721 (=> (not res!548411) (not e!445349))))

(assert (=> b!803721 (= res!548411 (validKeyInArray!0 k!2044))))

(declare-fun b!803727 () Bool)

(declare-fun res!548413 () Bool)

(assert (=> b!803727 (=> (not res!548413) (not e!445352))))

(declare-datatypes ((List!14931 0))(
  ( (Nil!14928) (Cons!14927 (h!16056 (_ BitVec 64)) (t!21254 List!14931)) )
))
(declare-fun arrayNoDuplicates!0 (array!43677 (_ BitVec 32) List!14931) Bool)

(assert (=> b!803727 (= res!548413 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14928))))

(declare-fun b!803728 () Bool)

(assert (=> b!803728 (= e!445350 (not (or (not (= lt!359881 lt!359877)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(declare-fun lt!359882 () (_ BitVec 32))

(assert (=> b!803728 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359882 vacantAfter!23 lt!359875 lt!359884 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359882 vacantBefore!23 (select (arr!20915 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27568 0))(
  ( (Unit!27569) )
))
(declare-fun lt!359878 () Unit!27568)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27568)

(assert (=> b!803728 (= lt!359878 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359882 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803728 (= lt!359882 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803729 () Bool)

(declare-fun res!548410 () Bool)

(assert (=> b!803729 (=> (not res!548410) (not e!445352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43677 (_ BitVec 32)) Bool)

(assert (=> b!803729 (= res!548410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803730 () Bool)

(assert (=> b!803730 (= e!445353 e!445351)))

(declare-fun res!548414 () Bool)

(assert (=> b!803730 (=> (not res!548414) (not e!445351))))

(declare-fun lt!359883 () SeekEntryResult!8513)

(assert (=> b!803730 (= res!548414 (= lt!359883 lt!359876))))

(assert (=> b!803730 (= lt!359876 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20915 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803730 (= lt!359883 (seekEntryOrOpen!0 (select (arr!20915 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68936 res!548416) b!803720))

(assert (= (and b!803720 res!548418) b!803722))

(assert (= (and b!803722 res!548412) b!803721))

(assert (= (and b!803721 res!548411) b!803725))

(assert (= (and b!803725 res!548419) b!803726))

(assert (= (and b!803726 res!548408) b!803729))

(assert (= (and b!803729 res!548410) b!803727))

(assert (= (and b!803727 res!548413) b!803719))

(assert (= (and b!803719 res!548409) b!803723))

(assert (= (and b!803723 res!548417) b!803730))

(assert (= (and b!803730 res!548414) b!803724))

(assert (= (and b!803724 res!548415) b!803728))

(declare-fun m!745661 () Bool)

(assert (=> b!803725 m!745661))

(declare-fun m!745663 () Bool)

(assert (=> b!803727 m!745663))

(declare-fun m!745665 () Bool)

(assert (=> b!803722 m!745665))

(assert (=> b!803722 m!745665))

(declare-fun m!745667 () Bool)

(assert (=> b!803722 m!745667))

(declare-fun m!745669 () Bool)

(assert (=> b!803724 m!745669))

(assert (=> b!803724 m!745665))

(declare-fun m!745671 () Bool)

(assert (=> b!803721 m!745671))

(assert (=> b!803730 m!745665))

(assert (=> b!803730 m!745665))

(declare-fun m!745673 () Bool)

(assert (=> b!803730 m!745673))

(assert (=> b!803730 m!745665))

(declare-fun m!745675 () Bool)

(assert (=> b!803730 m!745675))

(declare-fun m!745677 () Bool)

(assert (=> b!803723 m!745677))

(declare-fun m!745679 () Bool)

(assert (=> b!803723 m!745679))

(declare-fun m!745681 () Bool)

(assert (=> b!803723 m!745681))

(declare-fun m!745683 () Bool)

(assert (=> b!803723 m!745683))

(declare-fun m!745685 () Bool)

(assert (=> b!803729 m!745685))

(declare-fun m!745687 () Bool)

(assert (=> start!68936 m!745687))

(declare-fun m!745689 () Bool)

(assert (=> start!68936 m!745689))

(declare-fun m!745691 () Bool)

(assert (=> b!803719 m!745691))

(declare-fun m!745693 () Bool)

(assert (=> b!803719 m!745693))

(declare-fun m!745695 () Bool)

(assert (=> b!803728 m!745695))

(assert (=> b!803728 m!745665))

(declare-fun m!745697 () Bool)

(assert (=> b!803728 m!745697))

(declare-fun m!745699 () Bool)

(assert (=> b!803728 m!745699))

(assert (=> b!803728 m!745665))

(declare-fun m!745701 () Bool)

(assert (=> b!803728 m!745701))

(declare-fun m!745703 () Bool)

(assert (=> b!803726 m!745703))

(push 1)

(assert (not b!803721))

(assert (not b!803722))

(assert (not b!803729))

(assert (not b!803725))

(assert (not start!68936))

(assert (not b!803726))

(assert (not b!803728))

(assert (not b!803727))

(assert (not b!803723))

(assert (not b!803730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

