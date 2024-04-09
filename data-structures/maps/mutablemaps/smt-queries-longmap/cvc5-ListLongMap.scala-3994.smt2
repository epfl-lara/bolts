; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54162 () Bool)

(assert start!54162)

(declare-fun b!591306 () Bool)

(declare-fun res!378427 () Bool)

(declare-fun e!337638 () Bool)

(assert (=> b!591306 (=> (not res!378427) (not e!337638))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36855 0))(
  ( (array!36856 (arr!17694 (Array (_ BitVec 32) (_ BitVec 64))) (size!18058 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36855)

(assert (=> b!591306 (= res!378427 (and (= (size!18058 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18058 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18058 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!591307 () Bool)

(declare-fun e!337635 () Bool)

(declare-fun e!337634 () Bool)

(assert (=> b!591307 (= e!337635 e!337634)))

(declare-fun res!378419 () Bool)

(assert (=> b!591307 (=> (not res!378419) (not e!337634))))

(declare-fun lt!268367 () array!36855)

(declare-fun arrayContainsKey!0 (array!36855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!591307 (= res!378419 (arrayContainsKey!0 lt!268367 (select (arr!17694 a!2986) j!136) j!136))))

(declare-fun b!591308 () Bool)

(declare-datatypes ((Unit!18508 0))(
  ( (Unit!18509) )
))
(declare-fun e!337631 () Unit!18508)

(declare-fun Unit!18510 () Unit!18508)

(assert (=> b!591308 (= e!337631 Unit!18510)))

(declare-fun b!591309 () Bool)

(declare-fun e!337636 () Bool)

(declare-fun e!337632 () Bool)

(assert (=> b!591309 (= e!337636 e!337632)))

(declare-fun res!378428 () Bool)

(assert (=> b!591309 (=> (not res!378428) (not e!337632))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!591309 (= res!378428 (= (select (store (arr!17694 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!591309 (= lt!268367 (array!36856 (store (arr!17694 a!2986) i!1108 k!1786) (size!18058 a!2986)))))

(declare-fun b!591310 () Bool)

(declare-fun res!378421 () Bool)

(assert (=> b!591310 (=> (not res!378421) (not e!337636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36855 (_ BitVec 32)) Bool)

(assert (=> b!591310 (= res!378421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!591311 () Bool)

(declare-fun res!378426 () Bool)

(assert (=> b!591311 (=> (not res!378426) (not e!337638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!591311 (= res!378426 (validKeyInArray!0 (select (arr!17694 a!2986) j!136)))))

(declare-fun b!591312 () Bool)

(declare-fun e!337637 () Bool)

(assert (=> b!591312 (= e!337632 e!337637)))

(declare-fun res!378424 () Bool)

(assert (=> b!591312 (=> (not res!378424) (not e!337637))))

(declare-datatypes ((SeekEntryResult!6141 0))(
  ( (MissingZero!6141 (index!26799 (_ BitVec 32))) (Found!6141 (index!26800 (_ BitVec 32))) (Intermediate!6141 (undefined!6953 Bool) (index!26801 (_ BitVec 32)) (x!55622 (_ BitVec 32))) (Undefined!6141) (MissingVacant!6141 (index!26802 (_ BitVec 32))) )
))
(declare-fun lt!268369 () SeekEntryResult!6141)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!591312 (= res!378424 (and (= lt!268369 (Found!6141 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17694 a!2986) index!984) (select (arr!17694 a!2986) j!136))) (not (= (select (arr!17694 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36855 (_ BitVec 32)) SeekEntryResult!6141)

(assert (=> b!591312 (= lt!268369 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17694 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!591313 () Bool)

(declare-fun res!378420 () Bool)

(assert (=> b!591313 (=> (not res!378420) (not e!337638))))

(assert (=> b!591313 (= res!378420 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!591314 () Bool)

(declare-fun res!378422 () Bool)

(assert (=> b!591314 (=> (not res!378422) (not e!337638))))

(assert (=> b!591314 (= res!378422 (validKeyInArray!0 k!1786))))

(declare-fun b!591315 () Bool)

(declare-fun e!337639 () Bool)

(assert (=> b!591315 (= e!337639 true)))

(declare-fun e!337633 () Bool)

(assert (=> b!591315 e!337633))

(declare-fun res!378425 () Bool)

(assert (=> b!591315 (=> (not res!378425) (not e!337633))))

(declare-fun lt!268364 () (_ BitVec 64))

(assert (=> b!591315 (= res!378425 (= lt!268364 (select (arr!17694 a!2986) j!136)))))

(assert (=> b!591315 (= lt!268364 (select (store (arr!17694 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!591316 () Bool)

(declare-fun res!378429 () Bool)

(assert (=> b!591316 (=> (not res!378429) (not e!337636))))

(declare-datatypes ((List!11788 0))(
  ( (Nil!11785) (Cons!11784 (h!12829 (_ BitVec 64)) (t!18024 List!11788)) )
))
(declare-fun arrayNoDuplicates!0 (array!36855 (_ BitVec 32) List!11788) Bool)

(assert (=> b!591316 (= res!378429 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11785))))

(declare-fun res!378416 () Bool)

(assert (=> start!54162 (=> (not res!378416) (not e!337638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54162 (= res!378416 (validMask!0 mask!3053))))

(assert (=> start!54162 e!337638))

(assert (=> start!54162 true))

(declare-fun array_inv!13468 (array!36855) Bool)

(assert (=> start!54162 (array_inv!13468 a!2986)))

(declare-fun b!591317 () Bool)

(declare-fun res!378430 () Bool)

(assert (=> b!591317 (=> (not res!378430) (not e!337636))))

(assert (=> b!591317 (= res!378430 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17694 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!591318 () Bool)

(assert (=> b!591318 (= e!337637 (not e!337639))))

(declare-fun res!378431 () Bool)

(assert (=> b!591318 (=> res!378431 e!337639)))

(declare-fun lt!268365 () SeekEntryResult!6141)

(assert (=> b!591318 (= res!378431 (not (= lt!268365 (Found!6141 index!984))))))

(declare-fun lt!268371 () Unit!18508)

(assert (=> b!591318 (= lt!268371 e!337631)))

(declare-fun c!66812 () Bool)

(assert (=> b!591318 (= c!66812 (= lt!268365 Undefined!6141))))

(declare-fun lt!268366 () (_ BitVec 64))

(assert (=> b!591318 (= lt!268365 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268366 lt!268367 mask!3053))))

(declare-fun e!337629 () Bool)

(assert (=> b!591318 e!337629))

(declare-fun res!378423 () Bool)

(assert (=> b!591318 (=> (not res!378423) (not e!337629))))

(declare-fun lt!268368 () SeekEntryResult!6141)

(declare-fun lt!268363 () (_ BitVec 32))

(assert (=> b!591318 (= res!378423 (= lt!268368 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268363 vacantSpotIndex!68 lt!268366 lt!268367 mask!3053)))))

(assert (=> b!591318 (= lt!268368 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268363 vacantSpotIndex!68 (select (arr!17694 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!591318 (= lt!268366 (select (store (arr!17694 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268362 () Unit!18508)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36855 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18508)

(assert (=> b!591318 (= lt!268362 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268363 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!591318 (= lt!268363 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!591319 () Bool)

(assert (=> b!591319 (= e!337633 e!337635)))

(declare-fun res!378417 () Bool)

(assert (=> b!591319 (=> res!378417 e!337635)))

(assert (=> b!591319 (= res!378417 (or (not (= (select (arr!17694 a!2986) j!136) lt!268366)) (not (= (select (arr!17694 a!2986) j!136) lt!268364)) (bvsge j!136 index!984)))))

(declare-fun b!591320 () Bool)

(assert (=> b!591320 (= e!337638 e!337636)))

(declare-fun res!378418 () Bool)

(assert (=> b!591320 (=> (not res!378418) (not e!337636))))

(declare-fun lt!268370 () SeekEntryResult!6141)

(assert (=> b!591320 (= res!378418 (or (= lt!268370 (MissingZero!6141 i!1108)) (= lt!268370 (MissingVacant!6141 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36855 (_ BitVec 32)) SeekEntryResult!6141)

(assert (=> b!591320 (= lt!268370 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!591321 () Bool)

(assert (=> b!591321 (= e!337629 (= lt!268369 lt!268368))))

(declare-fun b!591322 () Bool)

(declare-fun Unit!18511 () Unit!18508)

(assert (=> b!591322 (= e!337631 Unit!18511)))

(assert (=> b!591322 false))

(declare-fun b!591323 () Bool)

(assert (=> b!591323 (= e!337634 (arrayContainsKey!0 lt!268367 (select (arr!17694 a!2986) j!136) index!984))))

(assert (= (and start!54162 res!378416) b!591306))

(assert (= (and b!591306 res!378427) b!591311))

(assert (= (and b!591311 res!378426) b!591314))

(assert (= (and b!591314 res!378422) b!591313))

(assert (= (and b!591313 res!378420) b!591320))

(assert (= (and b!591320 res!378418) b!591310))

(assert (= (and b!591310 res!378421) b!591316))

(assert (= (and b!591316 res!378429) b!591317))

(assert (= (and b!591317 res!378430) b!591309))

(assert (= (and b!591309 res!378428) b!591312))

(assert (= (and b!591312 res!378424) b!591318))

(assert (= (and b!591318 res!378423) b!591321))

(assert (= (and b!591318 c!66812) b!591322))

(assert (= (and b!591318 (not c!66812)) b!591308))

(assert (= (and b!591318 (not res!378431)) b!591315))

(assert (= (and b!591315 res!378425) b!591319))

(assert (= (and b!591319 (not res!378417)) b!591307))

(assert (= (and b!591307 res!378419) b!591323))

(declare-fun m!569577 () Bool)

(assert (=> b!591307 m!569577))

(assert (=> b!591307 m!569577))

(declare-fun m!569579 () Bool)

(assert (=> b!591307 m!569579))

(declare-fun m!569581 () Bool)

(assert (=> b!591309 m!569581))

(declare-fun m!569583 () Bool)

(assert (=> b!591309 m!569583))

(assert (=> b!591323 m!569577))

(assert (=> b!591323 m!569577))

(declare-fun m!569585 () Bool)

(assert (=> b!591323 m!569585))

(declare-fun m!569587 () Bool)

(assert (=> b!591316 m!569587))

(declare-fun m!569589 () Bool)

(assert (=> start!54162 m!569589))

(declare-fun m!569591 () Bool)

(assert (=> start!54162 m!569591))

(declare-fun m!569593 () Bool)

(assert (=> b!591313 m!569593))

(declare-fun m!569595 () Bool)

(assert (=> b!591317 m!569595))

(declare-fun m!569597 () Bool)

(assert (=> b!591312 m!569597))

(assert (=> b!591312 m!569577))

(assert (=> b!591312 m!569577))

(declare-fun m!569599 () Bool)

(assert (=> b!591312 m!569599))

(assert (=> b!591315 m!569577))

(assert (=> b!591315 m!569581))

(declare-fun m!569601 () Bool)

(assert (=> b!591315 m!569601))

(assert (=> b!591311 m!569577))

(assert (=> b!591311 m!569577))

(declare-fun m!569603 () Bool)

(assert (=> b!591311 m!569603))

(declare-fun m!569605 () Bool)

(assert (=> b!591320 m!569605))

(assert (=> b!591319 m!569577))

(declare-fun m!569607 () Bool)

(assert (=> b!591310 m!569607))

(declare-fun m!569609 () Bool)

(assert (=> b!591318 m!569609))

(declare-fun m!569611 () Bool)

(assert (=> b!591318 m!569611))

(declare-fun m!569613 () Bool)

(assert (=> b!591318 m!569613))

(assert (=> b!591318 m!569577))

(assert (=> b!591318 m!569577))

(declare-fun m!569615 () Bool)

(assert (=> b!591318 m!569615))

(assert (=> b!591318 m!569581))

(declare-fun m!569617 () Bool)

(assert (=> b!591318 m!569617))

(declare-fun m!569619 () Bool)

(assert (=> b!591318 m!569619))

(declare-fun m!569621 () Bool)

(assert (=> b!591314 m!569621))

(push 1)

