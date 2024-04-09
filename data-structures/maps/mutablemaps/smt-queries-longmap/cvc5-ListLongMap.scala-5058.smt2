; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68878 () Bool)

(assert start!68878)

(declare-fun b!802700 () Bool)

(declare-fun res!547390 () Bool)

(declare-fun e!444853 () Bool)

(assert (=> b!802700 (=> (not res!547390) (not e!444853))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43619 0))(
  ( (array!43620 (arr!20886 (Array (_ BitVec 32) (_ BitVec 64))) (size!21307 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43619)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802700 (= res!547390 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21307 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20886 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21307 a!3170)) (= (select (arr!20886 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802701 () Bool)

(declare-fun res!547396 () Bool)

(declare-fun e!444856 () Bool)

(assert (=> b!802701 (=> (not res!547396) (not e!444856))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802701 (= res!547396 (and (= (size!21307 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21307 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21307 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802702 () Bool)

(declare-fun res!547397 () Bool)

(assert (=> b!802702 (=> (not res!547397) (not e!444853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43619 (_ BitVec 32)) Bool)

(assert (=> b!802702 (= res!547397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802703 () Bool)

(assert (=> b!802703 (= e!444856 e!444853)))

(declare-fun res!547393 () Bool)

(assert (=> b!802703 (=> (not res!547393) (not e!444853))))

(declare-datatypes ((SeekEntryResult!8484 0))(
  ( (MissingZero!8484 (index!36303 (_ BitVec 32))) (Found!8484 (index!36304 (_ BitVec 32))) (Intermediate!8484 (undefined!9296 Bool) (index!36305 (_ BitVec 32)) (x!67179 (_ BitVec 32))) (Undefined!8484) (MissingVacant!8484 (index!36306 (_ BitVec 32))) )
))
(declare-fun lt!359113 () SeekEntryResult!8484)

(assert (=> b!802703 (= res!547393 (or (= lt!359113 (MissingZero!8484 i!1163)) (= lt!359113 (MissingVacant!8484 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43619 (_ BitVec 32)) SeekEntryResult!8484)

(assert (=> b!802703 (= lt!359113 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802704 () Bool)

(declare-fun res!547389 () Bool)

(assert (=> b!802704 (=> (not res!547389) (not e!444856))))

(declare-fun arrayContainsKey!0 (array!43619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802704 (= res!547389 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802705 () Bool)

(declare-fun res!547398 () Bool)

(assert (=> b!802705 (=> (not res!547398) (not e!444856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802705 (= res!547398 (validKeyInArray!0 (select (arr!20886 a!3170) j!153)))))

(declare-fun b!802706 () Bool)

(declare-fun res!547394 () Bool)

(assert (=> b!802706 (=> (not res!547394) (not e!444856))))

(assert (=> b!802706 (= res!547394 (validKeyInArray!0 k!2044))))

(declare-fun b!802707 () Bool)

(declare-fun e!444854 () Bool)

(declare-fun e!444855 () Bool)

(assert (=> b!802707 (= e!444854 e!444855)))

(declare-fun res!547392 () Bool)

(assert (=> b!802707 (=> (not res!547392) (not e!444855))))

(declare-fun lt!359109 () SeekEntryResult!8484)

(declare-fun lt!359110 () SeekEntryResult!8484)

(assert (=> b!802707 (= res!547392 (and (= lt!359109 lt!359110) (= lt!359110 (Found!8484 j!153)) (not (= (select (arr!20886 a!3170) index!1236) (select (arr!20886 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43619 (_ BitVec 32)) SeekEntryResult!8484)

(assert (=> b!802707 (= lt!359110 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20886 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802707 (= lt!359109 (seekEntryOrOpen!0 (select (arr!20886 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!547399 () Bool)

(assert (=> start!68878 (=> (not res!547399) (not e!444856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68878 (= res!547399 (validMask!0 mask!3266))))

(assert (=> start!68878 e!444856))

(assert (=> start!68878 true))

(declare-fun array_inv!16660 (array!43619) Bool)

(assert (=> start!68878 (array_inv!16660 a!3170)))

(declare-fun b!802708 () Bool)

(declare-fun res!547395 () Bool)

(assert (=> b!802708 (=> (not res!547395) (not e!444853))))

(declare-datatypes ((List!14902 0))(
  ( (Nil!14899) (Cons!14898 (h!16027 (_ BitVec 64)) (t!21225 List!14902)) )
))
(declare-fun arrayNoDuplicates!0 (array!43619 (_ BitVec 32) List!14902) Bool)

(assert (=> b!802708 (= res!547395 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14899))))

(declare-fun b!802709 () Bool)

(assert (=> b!802709 (= e!444855 (not true))))

(declare-fun lt!359111 () (_ BitVec 64))

(declare-fun lt!359107 () (_ BitVec 32))

(declare-fun lt!359112 () array!43619)

(assert (=> b!802709 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359107 vacantAfter!23 lt!359111 lt!359112 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359107 vacantBefore!23 (select (arr!20886 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27510 0))(
  ( (Unit!27511) )
))
(declare-fun lt!359108 () Unit!27510)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27510)

(assert (=> b!802709 (= lt!359108 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359107 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802709 (= lt!359107 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802710 () Bool)

(assert (=> b!802710 (= e!444853 e!444854)))

(declare-fun res!547391 () Bool)

(assert (=> b!802710 (=> (not res!547391) (not e!444854))))

(assert (=> b!802710 (= res!547391 (= (seekEntryOrOpen!0 lt!359111 lt!359112 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359111 lt!359112 mask!3266)))))

(assert (=> b!802710 (= lt!359111 (select (store (arr!20886 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802710 (= lt!359112 (array!43620 (store (arr!20886 a!3170) i!1163 k!2044) (size!21307 a!3170)))))

(assert (= (and start!68878 res!547399) b!802701))

(assert (= (and b!802701 res!547396) b!802705))

(assert (= (and b!802705 res!547398) b!802706))

(assert (= (and b!802706 res!547394) b!802704))

(assert (= (and b!802704 res!547389) b!802703))

(assert (= (and b!802703 res!547393) b!802702))

(assert (= (and b!802702 res!547397) b!802708))

(assert (= (and b!802708 res!547395) b!802700))

(assert (= (and b!802700 res!547390) b!802710))

(assert (= (and b!802710 res!547391) b!802707))

(assert (= (and b!802707 res!547392) b!802709))

(declare-fun m!744367 () Bool)

(assert (=> b!802704 m!744367))

(declare-fun m!744369 () Bool)

(assert (=> b!802706 m!744369))

(declare-fun m!744371 () Bool)

(assert (=> b!802702 m!744371))

(declare-fun m!744373 () Bool)

(assert (=> b!802709 m!744373))

(declare-fun m!744375 () Bool)

(assert (=> b!802709 m!744375))

(declare-fun m!744377 () Bool)

(assert (=> b!802709 m!744377))

(assert (=> b!802709 m!744373))

(declare-fun m!744379 () Bool)

(assert (=> b!802709 m!744379))

(declare-fun m!744381 () Bool)

(assert (=> b!802709 m!744381))

(declare-fun m!744383 () Bool)

(assert (=> b!802703 m!744383))

(assert (=> b!802705 m!744373))

(assert (=> b!802705 m!744373))

(declare-fun m!744385 () Bool)

(assert (=> b!802705 m!744385))

(declare-fun m!744387 () Bool)

(assert (=> start!68878 m!744387))

(declare-fun m!744389 () Bool)

(assert (=> start!68878 m!744389))

(declare-fun m!744391 () Bool)

(assert (=> b!802707 m!744391))

(assert (=> b!802707 m!744373))

(assert (=> b!802707 m!744373))

(declare-fun m!744393 () Bool)

(assert (=> b!802707 m!744393))

(assert (=> b!802707 m!744373))

(declare-fun m!744395 () Bool)

(assert (=> b!802707 m!744395))

(declare-fun m!744397 () Bool)

(assert (=> b!802710 m!744397))

(declare-fun m!744399 () Bool)

(assert (=> b!802710 m!744399))

(declare-fun m!744401 () Bool)

(assert (=> b!802710 m!744401))

(declare-fun m!744403 () Bool)

(assert (=> b!802710 m!744403))

(declare-fun m!744405 () Bool)

(assert (=> b!802700 m!744405))

(declare-fun m!744407 () Bool)

(assert (=> b!802700 m!744407))

(declare-fun m!744409 () Bool)

(assert (=> b!802708 m!744409))

(push 1)

