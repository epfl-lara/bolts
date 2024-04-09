; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69664 () Bool)

(assert start!69664)

(declare-fun b!811241 () Bool)

(declare-fun res!554461 () Bool)

(declare-fun e!449041 () Bool)

(assert (=> b!811241 (=> (not res!554461) (not e!449041))))

(declare-datatypes ((array!44054 0))(
  ( (array!44055 (arr!21093 (Array (_ BitVec 32) (_ BitVec 64))) (size!21514 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44054)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811241 (= res!554461 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!554457 () Bool)

(assert (=> start!69664 (=> (not res!554457) (not e!449041))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69664 (= res!554457 (validMask!0 mask!3266))))

(assert (=> start!69664 e!449041))

(assert (=> start!69664 true))

(declare-fun array_inv!16867 (array!44054) Bool)

(assert (=> start!69664 (array_inv!16867 a!3170)))

(declare-fun b!811242 () Bool)

(declare-fun e!449040 () Bool)

(declare-fun e!449038 () Bool)

(assert (=> b!811242 (= e!449040 e!449038)))

(declare-fun res!554458 () Bool)

(assert (=> b!811242 (=> (not res!554458) (not e!449038))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363733 () (_ BitVec 64))

(declare-fun lt!363737 () array!44054)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8691 0))(
  ( (MissingZero!8691 (index!37134 (_ BitVec 32))) (Found!8691 (index!37135 (_ BitVec 32))) (Intermediate!8691 (undefined!9503 Bool) (index!37136 (_ BitVec 32)) (x!67977 (_ BitVec 32))) (Undefined!8691) (MissingVacant!8691 (index!37137 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44054 (_ BitVec 32)) SeekEntryResult!8691)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44054 (_ BitVec 32)) SeekEntryResult!8691)

(assert (=> b!811242 (= res!554458 (= (seekEntryOrOpen!0 lt!363733 lt!363737 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363733 lt!363737 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!811242 (= lt!363733 (select (store (arr!21093 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811242 (= lt!363737 (array!44055 (store (arr!21093 a!3170) i!1163 k!2044) (size!21514 a!3170)))))

(declare-fun b!811243 () Bool)

(declare-fun res!554455 () Bool)

(assert (=> b!811243 (=> (not res!554455) (not e!449041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811243 (= res!554455 (validKeyInArray!0 k!2044))))

(declare-fun b!811244 () Bool)

(declare-fun res!554464 () Bool)

(assert (=> b!811244 (=> (not res!554464) (not e!449040))))

(declare-datatypes ((List!15109 0))(
  ( (Nil!15106) (Cons!15105 (h!16234 (_ BitVec 64)) (t!21432 List!15109)) )
))
(declare-fun arrayNoDuplicates!0 (array!44054 (_ BitVec 32) List!15109) Bool)

(assert (=> b!811244 (= res!554464 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15106))))

(declare-fun b!811245 () Bool)

(assert (=> b!811245 (= e!449041 e!449040)))

(declare-fun res!554460 () Bool)

(assert (=> b!811245 (=> (not res!554460) (not e!449040))))

(declare-fun lt!363738 () SeekEntryResult!8691)

(assert (=> b!811245 (= res!554460 (or (= lt!363738 (MissingZero!8691 i!1163)) (= lt!363738 (MissingVacant!8691 i!1163))))))

(assert (=> b!811245 (= lt!363738 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811246 () Bool)

(declare-fun e!449039 () Bool)

(assert (=> b!811246 (= e!449039 (not true))))

(declare-fun lt!363736 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!811246 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363736 vacantAfter!23 lt!363733 lt!363737 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363736 vacantBefore!23 (select (arr!21093 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27644 0))(
  ( (Unit!27645) )
))
(declare-fun lt!363735 () Unit!27644)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44054 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27644)

(assert (=> b!811246 (= lt!363735 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363736 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811246 (= lt!363736 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811247 () Bool)

(declare-fun res!554454 () Bool)

(assert (=> b!811247 (=> (not res!554454) (not e!449040))))

(assert (=> b!811247 (= res!554454 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21514 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21093 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21514 a!3170)) (= (select (arr!21093 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811248 () Bool)

(declare-fun res!554462 () Bool)

(assert (=> b!811248 (=> (not res!554462) (not e!449041))))

(assert (=> b!811248 (= res!554462 (validKeyInArray!0 (select (arr!21093 a!3170) j!153)))))

(declare-fun b!811249 () Bool)

(declare-fun res!554459 () Bool)

(assert (=> b!811249 (=> (not res!554459) (not e!449040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44054 (_ BitVec 32)) Bool)

(assert (=> b!811249 (= res!554459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811250 () Bool)

(declare-fun res!554456 () Bool)

(assert (=> b!811250 (=> (not res!554456) (not e!449041))))

(assert (=> b!811250 (= res!554456 (and (= (size!21514 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21514 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21514 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811251 () Bool)

(assert (=> b!811251 (= e!449038 e!449039)))

(declare-fun res!554463 () Bool)

(assert (=> b!811251 (=> (not res!554463) (not e!449039))))

(declare-fun lt!363739 () SeekEntryResult!8691)

(declare-fun lt!363734 () SeekEntryResult!8691)

(assert (=> b!811251 (= res!554463 (and (= lt!363734 lt!363739) (= lt!363739 (Found!8691 j!153)) (not (= (select (arr!21093 a!3170) index!1236) (select (arr!21093 a!3170) j!153)))))))

(assert (=> b!811251 (= lt!363739 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21093 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811251 (= lt!363734 (seekEntryOrOpen!0 (select (arr!21093 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69664 res!554457) b!811250))

(assert (= (and b!811250 res!554456) b!811248))

(assert (= (and b!811248 res!554462) b!811243))

(assert (= (and b!811243 res!554455) b!811241))

(assert (= (and b!811241 res!554461) b!811245))

(assert (= (and b!811245 res!554460) b!811249))

(assert (= (and b!811249 res!554459) b!811244))

(assert (= (and b!811244 res!554464) b!811247))

(assert (= (and b!811247 res!554454) b!811242))

(assert (= (and b!811242 res!554458) b!811251))

(assert (= (and b!811251 res!554463) b!811246))

(declare-fun m!753673 () Bool)

(assert (=> b!811243 m!753673))

(declare-fun m!753675 () Bool)

(assert (=> b!811248 m!753675))

(assert (=> b!811248 m!753675))

(declare-fun m!753677 () Bool)

(assert (=> b!811248 m!753677))

(declare-fun m!753679 () Bool)

(assert (=> b!811244 m!753679))

(declare-fun m!753681 () Bool)

(assert (=> b!811247 m!753681))

(declare-fun m!753683 () Bool)

(assert (=> b!811247 m!753683))

(declare-fun m!753685 () Bool)

(assert (=> b!811251 m!753685))

(assert (=> b!811251 m!753675))

(assert (=> b!811251 m!753675))

(declare-fun m!753687 () Bool)

(assert (=> b!811251 m!753687))

(assert (=> b!811251 m!753675))

(declare-fun m!753689 () Bool)

(assert (=> b!811251 m!753689))

(declare-fun m!753691 () Bool)

(assert (=> b!811249 m!753691))

(declare-fun m!753693 () Bool)

(assert (=> start!69664 m!753693))

(declare-fun m!753695 () Bool)

(assert (=> start!69664 m!753695))

(declare-fun m!753697 () Bool)

(assert (=> b!811245 m!753697))

(assert (=> b!811246 m!753675))

(declare-fun m!753699 () Bool)

(assert (=> b!811246 m!753699))

(assert (=> b!811246 m!753675))

(declare-fun m!753701 () Bool)

(assert (=> b!811246 m!753701))

(declare-fun m!753703 () Bool)

(assert (=> b!811246 m!753703))

(declare-fun m!753705 () Bool)

(assert (=> b!811246 m!753705))

(declare-fun m!753707 () Bool)

(assert (=> b!811242 m!753707))

(declare-fun m!753709 () Bool)

(assert (=> b!811242 m!753709))

(declare-fun m!753711 () Bool)

(assert (=> b!811242 m!753711))

(declare-fun m!753713 () Bool)

(assert (=> b!811242 m!753713))

(declare-fun m!753715 () Bool)

(assert (=> b!811241 m!753715))

(push 1)

