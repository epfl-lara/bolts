; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68892 () Bool)

(assert start!68892)

(declare-fun b!802945 () Bool)

(declare-fun res!547640 () Bool)

(declare-fun e!444975 () Bool)

(assert (=> b!802945 (=> (not res!547640) (not e!444975))))

(declare-datatypes ((array!43633 0))(
  ( (array!43634 (arr!20893 (Array (_ BitVec 32) (_ BitVec 64))) (size!21314 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43633)

(declare-datatypes ((List!14909 0))(
  ( (Nil!14906) (Cons!14905 (h!16034 (_ BitVec 64)) (t!21232 List!14909)) )
))
(declare-fun arrayNoDuplicates!0 (array!43633 (_ BitVec 32) List!14909) Bool)

(assert (=> b!802945 (= res!547640 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14906))))

(declare-fun b!802946 () Bool)

(declare-fun res!547634 () Bool)

(declare-fun e!444972 () Bool)

(assert (=> b!802946 (=> (not res!547634) (not e!444972))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802946 (= res!547634 (and (= (size!21314 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21314 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21314 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802947 () Bool)

(declare-fun e!444974 () Bool)

(assert (=> b!802947 (= e!444975 e!444974)))

(declare-fun res!547639 () Bool)

(assert (=> b!802947 (=> (not res!547639) (not e!444974))))

(declare-datatypes ((SeekEntryResult!8491 0))(
  ( (MissingZero!8491 (index!36331 (_ BitVec 32))) (Found!8491 (index!36332 (_ BitVec 32))) (Intermediate!8491 (undefined!9303 Bool) (index!36333 (_ BitVec 32)) (x!67202 (_ BitVec 32))) (Undefined!8491) (MissingVacant!8491 (index!36334 (_ BitVec 32))) )
))
(declare-fun lt!359304 () SeekEntryResult!8491)

(declare-fun lt!359299 () SeekEntryResult!8491)

(assert (=> b!802947 (= res!547639 (= lt!359304 lt!359299))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359301 () array!43633)

(declare-fun lt!359303 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43633 (_ BitVec 32)) SeekEntryResult!8491)

(assert (=> b!802947 (= lt!359299 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359303 lt!359301 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43633 (_ BitVec 32)) SeekEntryResult!8491)

(assert (=> b!802947 (= lt!359304 (seekEntryOrOpen!0 lt!359303 lt!359301 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!802947 (= lt!359303 (select (store (arr!20893 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802947 (= lt!359301 (array!43634 (store (arr!20893 a!3170) i!1163 k0!2044) (size!21314 a!3170)))))

(declare-fun b!802948 () Bool)

(declare-fun res!547642 () Bool)

(assert (=> b!802948 (=> (not res!547642) (not e!444975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43633 (_ BitVec 32)) Bool)

(assert (=> b!802948 (= res!547642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802949 () Bool)

(declare-fun res!547636 () Bool)

(assert (=> b!802949 (=> (not res!547636) (not e!444972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802949 (= res!547636 (validKeyInArray!0 k0!2044))))

(declare-fun res!547644 () Bool)

(assert (=> start!68892 (=> (not res!547644) (not e!444972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68892 (= res!547644 (validMask!0 mask!3266))))

(assert (=> start!68892 e!444972))

(assert (=> start!68892 true))

(declare-fun array_inv!16667 (array!43633) Bool)

(assert (=> start!68892 (array_inv!16667 a!3170)))

(declare-fun b!802950 () Bool)

(declare-fun res!547643 () Bool)

(assert (=> b!802950 (=> (not res!547643) (not e!444972))))

(declare-fun arrayContainsKey!0 (array!43633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802950 (= res!547643 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802951 () Bool)

(declare-fun lt!359305 () SeekEntryResult!8491)

(declare-fun e!444971 () Bool)

(assert (=> b!802951 (= e!444971 (not (or (not (= lt!359299 lt!359305)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20893 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359296 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802951 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359296 vacantAfter!23 lt!359303 lt!359301 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359296 vacantBefore!23 (select (arr!20893 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27524 0))(
  ( (Unit!27525) )
))
(declare-fun lt!359298 () Unit!27524)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27524)

(assert (=> b!802951 (= lt!359298 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359296 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802951 (= lt!359296 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802952 () Bool)

(declare-fun e!444976 () Bool)

(assert (=> b!802952 (= e!444976 e!444971)))

(declare-fun res!547635 () Bool)

(assert (=> b!802952 (=> (not res!547635) (not e!444971))))

(declare-fun lt!359297 () SeekEntryResult!8491)

(assert (=> b!802952 (= res!547635 (and (= lt!359297 lt!359305) (not (= (select (arr!20893 a!3170) index!1236) (select (arr!20893 a!3170) j!153)))))))

(assert (=> b!802952 (= lt!359305 (Found!8491 j!153))))

(declare-fun b!802953 () Bool)

(assert (=> b!802953 (= e!444972 e!444975)))

(declare-fun res!547638 () Bool)

(assert (=> b!802953 (=> (not res!547638) (not e!444975))))

(declare-fun lt!359302 () SeekEntryResult!8491)

(assert (=> b!802953 (= res!547638 (or (= lt!359302 (MissingZero!8491 i!1163)) (= lt!359302 (MissingVacant!8491 i!1163))))))

(assert (=> b!802953 (= lt!359302 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802954 () Bool)

(assert (=> b!802954 (= e!444974 e!444976)))

(declare-fun res!547641 () Bool)

(assert (=> b!802954 (=> (not res!547641) (not e!444976))))

(declare-fun lt!359300 () SeekEntryResult!8491)

(assert (=> b!802954 (= res!547641 (= lt!359300 lt!359297))))

(assert (=> b!802954 (= lt!359297 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20893 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802954 (= lt!359300 (seekEntryOrOpen!0 (select (arr!20893 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802955 () Bool)

(declare-fun res!547637 () Bool)

(assert (=> b!802955 (=> (not res!547637) (not e!444972))))

(assert (=> b!802955 (= res!547637 (validKeyInArray!0 (select (arr!20893 a!3170) j!153)))))

(declare-fun b!802956 () Bool)

(declare-fun res!547645 () Bool)

(assert (=> b!802956 (=> (not res!547645) (not e!444975))))

(assert (=> b!802956 (= res!547645 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21314 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20893 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21314 a!3170)) (= (select (arr!20893 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68892 res!547644) b!802946))

(assert (= (and b!802946 res!547634) b!802955))

(assert (= (and b!802955 res!547637) b!802949))

(assert (= (and b!802949 res!547636) b!802950))

(assert (= (and b!802950 res!547643) b!802953))

(assert (= (and b!802953 res!547638) b!802948))

(assert (= (and b!802948 res!547642) b!802945))

(assert (= (and b!802945 res!547640) b!802956))

(assert (= (and b!802956 res!547645) b!802947))

(assert (= (and b!802947 res!547639) b!802954))

(assert (= (and b!802954 res!547641) b!802952))

(assert (= (and b!802952 res!547635) b!802951))

(declare-fun m!744677 () Bool)

(assert (=> b!802955 m!744677))

(assert (=> b!802955 m!744677))

(declare-fun m!744679 () Bool)

(assert (=> b!802955 m!744679))

(declare-fun m!744681 () Bool)

(assert (=> b!802949 m!744681))

(declare-fun m!744683 () Bool)

(assert (=> b!802956 m!744683))

(declare-fun m!744685 () Bool)

(assert (=> b!802956 m!744685))

(assert (=> b!802954 m!744677))

(assert (=> b!802954 m!744677))

(declare-fun m!744687 () Bool)

(assert (=> b!802954 m!744687))

(assert (=> b!802954 m!744677))

(declare-fun m!744689 () Bool)

(assert (=> b!802954 m!744689))

(declare-fun m!744691 () Bool)

(assert (=> b!802953 m!744691))

(declare-fun m!744693 () Bool)

(assert (=> b!802945 m!744693))

(declare-fun m!744695 () Bool)

(assert (=> b!802947 m!744695))

(declare-fun m!744697 () Bool)

(assert (=> b!802947 m!744697))

(declare-fun m!744699 () Bool)

(assert (=> b!802947 m!744699))

(declare-fun m!744701 () Bool)

(assert (=> b!802947 m!744701))

(declare-fun m!744703 () Bool)

(assert (=> b!802952 m!744703))

(assert (=> b!802952 m!744677))

(assert (=> b!802951 m!744677))

(declare-fun m!744705 () Bool)

(assert (=> b!802951 m!744705))

(assert (=> b!802951 m!744677))

(declare-fun m!744707 () Bool)

(assert (=> b!802951 m!744707))

(declare-fun m!744709 () Bool)

(assert (=> b!802951 m!744709))

(assert (=> b!802951 m!744699))

(declare-fun m!744711 () Bool)

(assert (=> b!802951 m!744711))

(declare-fun m!744713 () Bool)

(assert (=> b!802951 m!744713))

(declare-fun m!744715 () Bool)

(assert (=> start!68892 m!744715))

(declare-fun m!744717 () Bool)

(assert (=> start!68892 m!744717))

(declare-fun m!744719 () Bool)

(assert (=> b!802948 m!744719))

(declare-fun m!744721 () Bool)

(assert (=> b!802950 m!744721))

(check-sat (not b!802954) (not b!802951) (not b!802947) (not b!802953) (not b!802948) (not b!802950) (not start!68892) (not b!802945) (not b!802955) (not b!802949))
(check-sat)
