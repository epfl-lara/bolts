; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68890 () Bool)

(assert start!68890)

(declare-fun b!802910 () Bool)

(declare-fun e!444955 () Bool)

(declare-fun e!444953 () Bool)

(assert (=> b!802910 (= e!444955 e!444953)))

(declare-fun res!547599 () Bool)

(assert (=> b!802910 (=> (not res!547599) (not e!444953))))

(declare-datatypes ((SeekEntryResult!8490 0))(
  ( (MissingZero!8490 (index!36327 (_ BitVec 32))) (Found!8490 (index!36328 (_ BitVec 32))) (Intermediate!8490 (undefined!9302 Bool) (index!36329 (_ BitVec 32)) (x!67201 (_ BitVec 32))) (Undefined!8490) (MissingVacant!8490 (index!36330 (_ BitVec 32))) )
))
(declare-fun lt!359268 () SeekEntryResult!8490)

(declare-fun lt!359272 () SeekEntryResult!8490)

(assert (=> b!802910 (= res!547599 (= lt!359268 lt!359272))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((array!43631 0))(
  ( (array!43632 (arr!20892 (Array (_ BitVec 32) (_ BitVec 64))) (size!21313 (_ BitVec 32))) )
))
(declare-fun lt!359273 () array!43631)

(declare-fun lt!359275 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43631 (_ BitVec 32)) SeekEntryResult!8490)

(assert (=> b!802910 (= lt!359272 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359275 lt!359273 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43631 (_ BitVec 32)) SeekEntryResult!8490)

(assert (=> b!802910 (= lt!359268 (seekEntryOrOpen!0 lt!359275 lt!359273 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43631)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802910 (= lt!359275 (select (store (arr!20892 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802910 (= lt!359273 (array!43632 (store (arr!20892 a!3170) i!1163 k!2044) (size!21313 a!3170)))))

(declare-fun b!802911 () Bool)

(declare-fun res!547608 () Bool)

(declare-fun e!444956 () Bool)

(assert (=> b!802911 (=> (not res!547608) (not e!444956))))

(declare-fun arrayContainsKey!0 (array!43631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802911 (= res!547608 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802912 () Bool)

(declare-fun e!444958 () Bool)

(assert (=> b!802912 (= e!444953 e!444958)))

(declare-fun res!547601 () Bool)

(assert (=> b!802912 (=> (not res!547601) (not e!444958))))

(declare-fun lt!359267 () SeekEntryResult!8490)

(declare-fun lt!359271 () SeekEntryResult!8490)

(assert (=> b!802912 (= res!547601 (= lt!359267 lt!359271))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802912 (= lt!359271 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20892 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802912 (= lt!359267 (seekEntryOrOpen!0 (select (arr!20892 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802913 () Bool)

(assert (=> b!802913 (= e!444956 e!444955)))

(declare-fun res!547609 () Bool)

(assert (=> b!802913 (=> (not res!547609) (not e!444955))))

(declare-fun lt!359266 () SeekEntryResult!8490)

(assert (=> b!802913 (= res!547609 (or (= lt!359266 (MissingZero!8490 i!1163)) (= lt!359266 (MissingVacant!8490 i!1163))))))

(assert (=> b!802913 (= lt!359266 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802914 () Bool)

(declare-fun e!444954 () Bool)

(assert (=> b!802914 (= e!444958 e!444954)))

(declare-fun res!547605 () Bool)

(assert (=> b!802914 (=> (not res!547605) (not e!444954))))

(declare-fun lt!359274 () SeekEntryResult!8490)

(assert (=> b!802914 (= res!547605 (and (= lt!359271 lt!359274) (not (= (select (arr!20892 a!3170) index!1236) (select (arr!20892 a!3170) j!153)))))))

(assert (=> b!802914 (= lt!359274 (Found!8490 j!153))))

(declare-fun b!802915 () Bool)

(declare-fun res!547600 () Bool)

(assert (=> b!802915 (=> (not res!547600) (not e!444956))))

(assert (=> b!802915 (= res!547600 (and (= (size!21313 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21313 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21313 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802916 () Bool)

(declare-fun res!547603 () Bool)

(assert (=> b!802916 (=> (not res!547603) (not e!444956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802916 (= res!547603 (validKeyInArray!0 (select (arr!20892 a!3170) j!153)))))

(declare-fun res!547606 () Bool)

(assert (=> start!68890 (=> (not res!547606) (not e!444956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68890 (= res!547606 (validMask!0 mask!3266))))

(assert (=> start!68890 e!444956))

(assert (=> start!68890 true))

(declare-fun array_inv!16666 (array!43631) Bool)

(assert (=> start!68890 (array_inv!16666 a!3170)))

(declare-fun b!802909 () Bool)

(declare-fun res!547607 () Bool)

(assert (=> b!802909 (=> (not res!547607) (not e!444955))))

(assert (=> b!802909 (= res!547607 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21313 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20892 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21313 a!3170)) (= (select (arr!20892 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802917 () Bool)

(declare-fun res!547602 () Bool)

(assert (=> b!802917 (=> (not res!547602) (not e!444955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43631 (_ BitVec 32)) Bool)

(assert (=> b!802917 (= res!547602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802918 () Bool)

(assert (=> b!802918 (= e!444954 (not (or (not (= lt!359272 lt!359274)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20892 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359270 () (_ BitVec 32))

(assert (=> b!802918 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359270 vacantAfter!23 lt!359275 lt!359273 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359270 vacantBefore!23 (select (arr!20892 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27522 0))(
  ( (Unit!27523) )
))
(declare-fun lt!359269 () Unit!27522)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43631 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27522)

(assert (=> b!802918 (= lt!359269 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359270 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802918 (= lt!359270 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802919 () Bool)

(declare-fun res!547598 () Bool)

(assert (=> b!802919 (=> (not res!547598) (not e!444956))))

(assert (=> b!802919 (= res!547598 (validKeyInArray!0 k!2044))))

(declare-fun b!802920 () Bool)

(declare-fun res!547604 () Bool)

(assert (=> b!802920 (=> (not res!547604) (not e!444955))))

(declare-datatypes ((List!14908 0))(
  ( (Nil!14905) (Cons!14904 (h!16033 (_ BitVec 64)) (t!21231 List!14908)) )
))
(declare-fun arrayNoDuplicates!0 (array!43631 (_ BitVec 32) List!14908) Bool)

(assert (=> b!802920 (= res!547604 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14905))))

(assert (= (and start!68890 res!547606) b!802915))

(assert (= (and b!802915 res!547600) b!802916))

(assert (= (and b!802916 res!547603) b!802919))

(assert (= (and b!802919 res!547598) b!802911))

(assert (= (and b!802911 res!547608) b!802913))

(assert (= (and b!802913 res!547609) b!802917))

(assert (= (and b!802917 res!547602) b!802920))

(assert (= (and b!802920 res!547604) b!802909))

(assert (= (and b!802909 res!547607) b!802910))

(assert (= (and b!802910 res!547599) b!802912))

(assert (= (and b!802912 res!547601) b!802914))

(assert (= (and b!802914 res!547605) b!802918))

(declare-fun m!744631 () Bool)

(assert (=> b!802912 m!744631))

(assert (=> b!802912 m!744631))

(declare-fun m!744633 () Bool)

(assert (=> b!802912 m!744633))

(assert (=> b!802912 m!744631))

(declare-fun m!744635 () Bool)

(assert (=> b!802912 m!744635))

(assert (=> b!802916 m!744631))

(assert (=> b!802916 m!744631))

(declare-fun m!744637 () Bool)

(assert (=> b!802916 m!744637))

(declare-fun m!744639 () Bool)

(assert (=> b!802909 m!744639))

(declare-fun m!744641 () Bool)

(assert (=> b!802909 m!744641))

(declare-fun m!744643 () Bool)

(assert (=> b!802913 m!744643))

(declare-fun m!744645 () Bool)

(assert (=> b!802911 m!744645))

(declare-fun m!744647 () Bool)

(assert (=> b!802914 m!744647))

(assert (=> b!802914 m!744631))

(assert (=> b!802918 m!744631))

(declare-fun m!744649 () Bool)

(assert (=> b!802918 m!744649))

(declare-fun m!744651 () Bool)

(assert (=> b!802918 m!744651))

(assert (=> b!802918 m!744631))

(declare-fun m!744653 () Bool)

(assert (=> b!802918 m!744653))

(declare-fun m!744655 () Bool)

(assert (=> b!802918 m!744655))

(declare-fun m!744657 () Bool)

(assert (=> b!802918 m!744657))

(declare-fun m!744659 () Bool)

(assert (=> b!802918 m!744659))

(declare-fun m!744661 () Bool)

(assert (=> b!802919 m!744661))

(declare-fun m!744663 () Bool)

(assert (=> b!802920 m!744663))

(declare-fun m!744665 () Bool)

(assert (=> b!802910 m!744665))

(declare-fun m!744667 () Bool)

(assert (=> b!802910 m!744667))

(assert (=> b!802910 m!744659))

(declare-fun m!744669 () Bool)

(assert (=> b!802910 m!744669))

(declare-fun m!744671 () Bool)

(assert (=> start!68890 m!744671))

(declare-fun m!744673 () Bool)

(assert (=> start!68890 m!744673))

(declare-fun m!744675 () Bool)

(assert (=> b!802917 m!744675))

(push 1)

