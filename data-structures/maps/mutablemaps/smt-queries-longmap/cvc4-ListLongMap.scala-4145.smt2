; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56524 () Bool)

(assert start!56524)

(declare-fun b!626075 () Bool)

(declare-fun res!404100 () Bool)

(declare-fun e!358713 () Bool)

(assert (=> b!626075 (=> (not res!404100) (not e!358713))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37822 0))(
  ( (array!37823 (arr!18149 (Array (_ BitVec 32) (_ BitVec 64))) (size!18513 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37822)

(assert (=> b!626075 (= res!404100 (and (= (size!18513 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18513 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18513 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404105 () Bool)

(assert (=> start!56524 (=> (not res!404105) (not e!358713))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56524 (= res!404105 (validMask!0 mask!3053))))

(assert (=> start!56524 e!358713))

(assert (=> start!56524 true))

(declare-fun array_inv!13923 (array!37822) Bool)

(assert (=> start!56524 (array_inv!13923 a!2986)))

(declare-fun b!626076 () Bool)

(declare-fun res!404108 () Bool)

(assert (=> b!626076 (=> (not res!404108) (not e!358713))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626076 (= res!404108 (validKeyInArray!0 k!1786))))

(declare-fun b!626077 () Bool)

(declare-fun res!404106 () Bool)

(declare-fun e!358712 () Bool)

(assert (=> b!626077 (=> (not res!404106) (not e!358712))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626077 (= res!404106 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18149 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18149 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626078 () Bool)

(declare-fun res!404107 () Bool)

(assert (=> b!626078 (=> (not res!404107) (not e!358712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37822 (_ BitVec 32)) Bool)

(assert (=> b!626078 (= res!404107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626079 () Bool)

(declare-fun res!404101 () Bool)

(assert (=> b!626079 (=> (not res!404101) (not e!358712))))

(declare-datatypes ((List!12243 0))(
  ( (Nil!12240) (Cons!12239 (h!13284 (_ BitVec 64)) (t!18479 List!12243)) )
))
(declare-fun arrayNoDuplicates!0 (array!37822 (_ BitVec 32) List!12243) Bool)

(assert (=> b!626079 (= res!404101 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12240))))

(declare-fun b!626080 () Bool)

(assert (=> b!626080 (= e!358713 e!358712)))

(declare-fun res!404102 () Bool)

(assert (=> b!626080 (=> (not res!404102) (not e!358712))))

(declare-datatypes ((SeekEntryResult!6596 0))(
  ( (MissingZero!6596 (index!28667 (_ BitVec 32))) (Found!6596 (index!28668 (_ BitVec 32))) (Intermediate!6596 (undefined!7408 Bool) (index!28669 (_ BitVec 32)) (x!57438 (_ BitVec 32))) (Undefined!6596) (MissingVacant!6596 (index!28670 (_ BitVec 32))) )
))
(declare-fun lt!289962 () SeekEntryResult!6596)

(assert (=> b!626080 (= res!404102 (or (= lt!289962 (MissingZero!6596 i!1108)) (= lt!289962 (MissingVacant!6596 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37822 (_ BitVec 32)) SeekEntryResult!6596)

(assert (=> b!626080 (= lt!289962 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626081 () Bool)

(declare-fun res!404103 () Bool)

(assert (=> b!626081 (=> (not res!404103) (not e!358713))))

(assert (=> b!626081 (= res!404103 (validKeyInArray!0 (select (arr!18149 a!2986) j!136)))))

(declare-fun b!626082 () Bool)

(declare-fun res!404104 () Bool)

(assert (=> b!626082 (=> (not res!404104) (not e!358712))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37822 (_ BitVec 32)) SeekEntryResult!6596)

(assert (=> b!626082 (= res!404104 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18149 a!2986) j!136) a!2986 mask!3053) (Found!6596 j!136)))))

(declare-fun b!626083 () Bool)

(declare-fun res!404099 () Bool)

(assert (=> b!626083 (=> (not res!404099) (not e!358713))))

(declare-fun arrayContainsKey!0 (array!37822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626083 (= res!404099 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626084 () Bool)

(assert (=> b!626084 (= e!358712 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18149 a!2986) index!984) (select (arr!18149 a!2986) j!136))) (= (select (arr!18149 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56524 res!404105) b!626075))

(assert (= (and b!626075 res!404100) b!626081))

(assert (= (and b!626081 res!404103) b!626076))

(assert (= (and b!626076 res!404108) b!626083))

(assert (= (and b!626083 res!404099) b!626080))

(assert (= (and b!626080 res!404102) b!626078))

(assert (= (and b!626078 res!404107) b!626079))

(assert (= (and b!626079 res!404101) b!626077))

(assert (= (and b!626077 res!404106) b!626082))

(assert (= (and b!626082 res!404104) b!626084))

(declare-fun m!601595 () Bool)

(assert (=> b!626084 m!601595))

(declare-fun m!601597 () Bool)

(assert (=> b!626084 m!601597))

(declare-fun m!601599 () Bool)

(assert (=> b!626079 m!601599))

(declare-fun m!601601 () Bool)

(assert (=> start!56524 m!601601))

(declare-fun m!601603 () Bool)

(assert (=> start!56524 m!601603))

(declare-fun m!601605 () Bool)

(assert (=> b!626078 m!601605))

(declare-fun m!601607 () Bool)

(assert (=> b!626080 m!601607))

(declare-fun m!601609 () Bool)

(assert (=> b!626083 m!601609))

(assert (=> b!626081 m!601597))

(assert (=> b!626081 m!601597))

(declare-fun m!601611 () Bool)

(assert (=> b!626081 m!601611))

(assert (=> b!626082 m!601597))

(assert (=> b!626082 m!601597))

(declare-fun m!601613 () Bool)

(assert (=> b!626082 m!601613))

(declare-fun m!601615 () Bool)

(assert (=> b!626076 m!601615))

(declare-fun m!601617 () Bool)

(assert (=> b!626077 m!601617))

(declare-fun m!601619 () Bool)

(assert (=> b!626077 m!601619))

(declare-fun m!601621 () Bool)

(assert (=> b!626077 m!601621))

(push 1)

(assert (not b!626076))

(assert (not b!626081))

(assert (not b!626080))

(assert (not start!56524))

(assert (not b!626079))

(assert (not b!626083))

(assert (not b!626082))

(assert (not b!626078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!626157 () Bool)

(declare-fun e!358765 () SeekEntryResult!6596)

(assert (=> b!626157 (= e!358765 Undefined!6596)))

(declare-fun b!626158 () Bool)

(declare-fun e!358764 () SeekEntryResult!6596)

(declare-fun lt!289986 () SeekEntryResult!6596)

(assert (=> b!626158 (= e!358764 (Found!6596 (index!28669 lt!289986)))))

(declare-fun d!88775 () Bool)

(declare-fun lt!289985 () SeekEntryResult!6596)

(assert (=> d!88775 (and (or (is-Undefined!6596 lt!289985) (not (is-Found!6596 lt!289985)) (and (bvsge (index!28668 lt!289985) #b00000000000000000000000000000000) (bvslt (index!28668 lt!289985) (size!18513 a!2986)))) (or (is-Undefined!6596 lt!289985) (is-Found!6596 lt!289985) (not (is-MissingZero!6596 lt!289985)) (and (bvsge (index!28667 lt!289985) #b00000000000000000000000000000000) (bvslt (index!28667 lt!289985) (size!18513 a!2986)))) (or (is-Undefined!6596 lt!289985) (is-Found!6596 lt!289985) (is-MissingZero!6596 lt!289985) (not (is-MissingVacant!6596 lt!289985)) (and (bvsge (index!28670 lt!289985) #b00000000000000000000000000000000) (bvslt (index!28670 lt!289985) (size!18513 a!2986)))) (or (is-Undefined!6596 lt!289985) (ite (is-Found!6596 lt!289985) (= (select (arr!18149 a!2986) (index!28668 lt!289985)) k!1786) (ite (is-MissingZero!6596 lt!289985) (= (select (arr!18149 a!2986) (index!28667 lt!289985)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6596 lt!289985) (= (select (arr!18149 a!2986) (index!28670 lt!289985)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88775 (= lt!289985 e!358765)))

(declare-fun c!71380 () Bool)

(assert (=> d!88775 (= c!71380 (and (is-Intermediate!6596 lt!289986) (undefined!7408 lt!289986)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37822 (_ BitVec 32)) SeekEntryResult!6596)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88775 (= lt!289986 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88775 (validMask!0 mask!3053)))

(assert (=> d!88775 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!289985)))

(declare-fun b!626159 () Bool)

(assert (=> b!626159 (= e!358765 e!358764)))

(declare-fun lt!289984 () (_ BitVec 64))

(assert (=> b!626159 (= lt!289984 (select (arr!18149 a!2986) (index!28669 lt!289986)))))

(declare-fun c!71379 () Bool)

(assert (=> b!626159 (= c!71379 (= lt!289984 k!1786))))

(declare-fun b!626160 () Bool)

(declare-fun e!358763 () SeekEntryResult!6596)

(assert (=> b!626160 (= e!358763 (seekKeyOrZeroReturnVacant!0 (x!57438 lt!289986) (index!28669 lt!289986) (index!28669 lt!289986) k!1786 a!2986 mask!3053))))

(declare-fun b!626161 () Bool)

(declare-fun c!71381 () Bool)

(assert (=> b!626161 (= c!71381 (= lt!289984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!626161 (= e!358764 e!358763)))

(declare-fun b!626162 () Bool)

(assert (=> b!626162 (= e!358763 (MissingZero!6596 (index!28669 lt!289986)))))

(assert (= (and d!88775 c!71380) b!626157))

(assert (= (and d!88775 (not c!71380)) b!626159))

(assert (= (and b!626159 c!71379) b!626158))

(assert (= (and b!626159 (not c!71379)) b!626161))

(assert (= (and b!626161 c!71381) b!626162))

(assert (= (and b!626161 (not c!71381)) b!626160))

(declare-fun m!601655 () Bool)

(assert (=> d!88775 m!601655))

