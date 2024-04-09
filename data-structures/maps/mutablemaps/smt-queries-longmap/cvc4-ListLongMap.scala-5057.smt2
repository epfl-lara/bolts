; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68876 () Bool)

(assert start!68876)

(declare-fun b!802666 () Bool)

(declare-fun res!547363 () Bool)

(declare-fun e!444839 () Bool)

(assert (=> b!802666 (=> (not res!547363) (not e!444839))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802666 (= res!547363 (validKeyInArray!0 k!2044))))

(declare-fun b!802667 () Bool)

(declare-fun res!547365 () Bool)

(declare-fun e!444840 () Bool)

(assert (=> b!802667 (=> (not res!547365) (not e!444840))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43617 0))(
  ( (array!43618 (arr!20885 (Array (_ BitVec 32) (_ BitVec 64))) (size!21306 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43617)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802667 (= res!547365 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21306 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20885 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21306 a!3170)) (= (select (arr!20885 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802668 () Bool)

(declare-fun res!547362 () Bool)

(assert (=> b!802668 (=> (not res!547362) (not e!444839))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802668 (= res!547362 (validKeyInArray!0 (select (arr!20885 a!3170) j!153)))))

(declare-fun e!444837 () Bool)

(declare-fun b!802669 () Bool)

(declare-datatypes ((SeekEntryResult!8483 0))(
  ( (MissingZero!8483 (index!36299 (_ BitVec 32))) (Found!8483 (index!36300 (_ BitVec 32))) (Intermediate!8483 (undefined!9295 Bool) (index!36301 (_ BitVec 32)) (x!67170 (_ BitVec 32))) (Undefined!8483) (MissingVacant!8483 (index!36302 (_ BitVec 32))) )
))
(declare-fun lt!359088 () SeekEntryResult!8483)

(declare-fun lt!359091 () SeekEntryResult!8483)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802669 (= e!444837 (not (or (not (= lt!359088 lt!359091)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359083 () (_ BitVec 64))

(declare-fun lt!359090 () array!43617)

(declare-fun lt!359086 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43617 (_ BitVec 32)) SeekEntryResult!8483)

(assert (=> b!802669 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359086 vacantAfter!23 lt!359083 lt!359090 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359086 vacantBefore!23 (select (arr!20885 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27508 0))(
  ( (Unit!27509) )
))
(declare-fun lt!359092 () Unit!27508)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43617 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27508)

(assert (=> b!802669 (= lt!359092 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359086 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802669 (= lt!359086 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802670 () Bool)

(declare-fun res!547356 () Bool)

(assert (=> b!802670 (=> (not res!547356) (not e!444840))))

(declare-datatypes ((List!14901 0))(
  ( (Nil!14898) (Cons!14897 (h!16026 (_ BitVec 64)) (t!21224 List!14901)) )
))
(declare-fun arrayNoDuplicates!0 (array!43617 (_ BitVec 32) List!14901) Bool)

(assert (=> b!802670 (= res!547356 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14898))))

(declare-fun b!802671 () Bool)

(declare-fun e!444838 () Bool)

(assert (=> b!802671 (= e!444838 e!444837)))

(declare-fun res!547366 () Bool)

(assert (=> b!802671 (=> (not res!547366) (not e!444837))))

(declare-fun lt!359089 () SeekEntryResult!8483)

(assert (=> b!802671 (= res!547366 (and (= lt!359089 lt!359091) (not (= (select (arr!20885 a!3170) index!1236) (select (arr!20885 a!3170) j!153)))))))

(assert (=> b!802671 (= lt!359091 (Found!8483 j!153))))

(declare-fun b!802672 () Bool)

(declare-fun e!444836 () Bool)

(assert (=> b!802672 (= e!444840 e!444836)))

(declare-fun res!547359 () Bool)

(assert (=> b!802672 (=> (not res!547359) (not e!444836))))

(declare-fun lt!359084 () SeekEntryResult!8483)

(assert (=> b!802672 (= res!547359 (= lt!359084 lt!359088))))

(assert (=> b!802672 (= lt!359088 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359083 lt!359090 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43617 (_ BitVec 32)) SeekEntryResult!8483)

(assert (=> b!802672 (= lt!359084 (seekEntryOrOpen!0 lt!359083 lt!359090 mask!3266))))

(assert (=> b!802672 (= lt!359083 (select (store (arr!20885 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802672 (= lt!359090 (array!43618 (store (arr!20885 a!3170) i!1163 k!2044) (size!21306 a!3170)))))

(declare-fun b!802673 () Bool)

(declare-fun res!547357 () Bool)

(assert (=> b!802673 (=> (not res!547357) (not e!444839))))

(declare-fun arrayContainsKey!0 (array!43617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802673 (= res!547357 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802675 () Bool)

(declare-fun res!547360 () Bool)

(assert (=> b!802675 (=> (not res!547360) (not e!444839))))

(assert (=> b!802675 (= res!547360 (and (= (size!21306 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21306 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21306 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802676 () Bool)

(assert (=> b!802676 (= e!444836 e!444838)))

(declare-fun res!547361 () Bool)

(assert (=> b!802676 (=> (not res!547361) (not e!444838))))

(declare-fun lt!359085 () SeekEntryResult!8483)

(assert (=> b!802676 (= res!547361 (= lt!359085 lt!359089))))

(assert (=> b!802676 (= lt!359089 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20885 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802676 (= lt!359085 (seekEntryOrOpen!0 (select (arr!20885 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802677 () Bool)

(declare-fun res!547358 () Bool)

(assert (=> b!802677 (=> (not res!547358) (not e!444840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43617 (_ BitVec 32)) Bool)

(assert (=> b!802677 (= res!547358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802674 () Bool)

(assert (=> b!802674 (= e!444839 e!444840)))

(declare-fun res!547364 () Bool)

(assert (=> b!802674 (=> (not res!547364) (not e!444840))))

(declare-fun lt!359087 () SeekEntryResult!8483)

(assert (=> b!802674 (= res!547364 (or (= lt!359087 (MissingZero!8483 i!1163)) (= lt!359087 (MissingVacant!8483 i!1163))))))

(assert (=> b!802674 (= lt!359087 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!547355 () Bool)

(assert (=> start!68876 (=> (not res!547355) (not e!444839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68876 (= res!547355 (validMask!0 mask!3266))))

(assert (=> start!68876 e!444839))

(assert (=> start!68876 true))

(declare-fun array_inv!16659 (array!43617) Bool)

(assert (=> start!68876 (array_inv!16659 a!3170)))

(assert (= (and start!68876 res!547355) b!802675))

(assert (= (and b!802675 res!547360) b!802668))

(assert (= (and b!802668 res!547362) b!802666))

(assert (= (and b!802666 res!547363) b!802673))

(assert (= (and b!802673 res!547357) b!802674))

(assert (= (and b!802674 res!547364) b!802677))

(assert (= (and b!802677 res!547358) b!802670))

(assert (= (and b!802670 res!547356) b!802667))

(assert (= (and b!802667 res!547365) b!802672))

(assert (= (and b!802672 res!547359) b!802676))

(assert (= (and b!802676 res!547361) b!802671))

(assert (= (and b!802671 res!547366) b!802669))

(declare-fun m!744323 () Bool)

(assert (=> start!68876 m!744323))

(declare-fun m!744325 () Bool)

(assert (=> start!68876 m!744325))

(declare-fun m!744327 () Bool)

(assert (=> b!802667 m!744327))

(declare-fun m!744329 () Bool)

(assert (=> b!802667 m!744329))

(declare-fun m!744331 () Bool)

(assert (=> b!802668 m!744331))

(assert (=> b!802668 m!744331))

(declare-fun m!744333 () Bool)

(assert (=> b!802668 m!744333))

(declare-fun m!744335 () Bool)

(assert (=> b!802672 m!744335))

(declare-fun m!744337 () Bool)

(assert (=> b!802672 m!744337))

(declare-fun m!744339 () Bool)

(assert (=> b!802672 m!744339))

(declare-fun m!744341 () Bool)

(assert (=> b!802672 m!744341))

(assert (=> b!802676 m!744331))

(assert (=> b!802676 m!744331))

(declare-fun m!744343 () Bool)

(assert (=> b!802676 m!744343))

(assert (=> b!802676 m!744331))

(declare-fun m!744345 () Bool)

(assert (=> b!802676 m!744345))

(declare-fun m!744347 () Bool)

(assert (=> b!802670 m!744347))

(declare-fun m!744349 () Bool)

(assert (=> b!802671 m!744349))

(assert (=> b!802671 m!744331))

(assert (=> b!802669 m!744331))

(declare-fun m!744351 () Bool)

(assert (=> b!802669 m!744351))

(declare-fun m!744353 () Bool)

(assert (=> b!802669 m!744353))

(declare-fun m!744355 () Bool)

(assert (=> b!802669 m!744355))

(assert (=> b!802669 m!744331))

(declare-fun m!744357 () Bool)

(assert (=> b!802669 m!744357))

(declare-fun m!744359 () Bool)

(assert (=> b!802666 m!744359))

(declare-fun m!744361 () Bool)

(assert (=> b!802673 m!744361))

(declare-fun m!744363 () Bool)

(assert (=> b!802677 m!744363))

(declare-fun m!744365 () Bool)

(assert (=> b!802674 m!744365))

(push 1)

(assert (not b!802674))

(assert (not start!68876))

(assert (not b!802666))

(assert (not b!802670))

(assert (not b!802672))

(assert (not b!802669))

(assert (not b!802668))

(assert (not b!802677))

(assert (not b!802673))

(assert (not b!802676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

