; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45170 () Bool)

(assert start!45170)

(declare-fun b!495268 () Bool)

(declare-fun res!297813 () Bool)

(declare-fun e!290574 () Bool)

(assert (=> b!495268 (=> res!297813 e!290574)))

(declare-datatypes ((SeekEntryResult!3863 0))(
  ( (MissingZero!3863 (index!17631 (_ BitVec 32))) (Found!3863 (index!17632 (_ BitVec 32))) (Intermediate!3863 (undefined!4675 Bool) (index!17633 (_ BitVec 32)) (x!46726 (_ BitVec 32))) (Undefined!3863) (MissingVacant!3863 (index!17634 (_ BitVec 32))) )
))
(declare-fun lt!224261 () SeekEntryResult!3863)

(assert (=> b!495268 (= res!297813 (or (undefined!4675 lt!224261) (not (is-Intermediate!3863 lt!224261))))))

(declare-fun e!290573 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!495269 () Bool)

(declare-datatypes ((array!32018 0))(
  ( (array!32019 (arr!15389 (Array (_ BitVec 32) (_ BitVec 64))) (size!15753 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32018)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32018 (_ BitVec 32)) SeekEntryResult!3863)

(assert (=> b!495269 (= e!290573 (= (seekEntryOrOpen!0 (select (arr!15389 a!3235) j!176) a!3235 mask!3524) (Found!3863 j!176)))))

(declare-fun b!495270 () Bool)

(declare-fun e!290572 () Bool)

(declare-fun e!290571 () Bool)

(assert (=> b!495270 (= e!290572 e!290571)))

(declare-fun res!297814 () Bool)

(assert (=> b!495270 (=> (not res!297814) (not e!290571))))

(declare-fun lt!224264 () SeekEntryResult!3863)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495270 (= res!297814 (or (= lt!224264 (MissingZero!3863 i!1204)) (= lt!224264 (MissingVacant!3863 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!495270 (= lt!224264 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495271 () Bool)

(declare-fun res!297815 () Bool)

(assert (=> b!495271 (=> (not res!297815) (not e!290571))))

(declare-datatypes ((List!9600 0))(
  ( (Nil!9597) (Cons!9596 (h!10467 (_ BitVec 64)) (t!15836 List!9600)) )
))
(declare-fun arrayNoDuplicates!0 (array!32018 (_ BitVec 32) List!9600) Bool)

(assert (=> b!495271 (= res!297815 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9597))))

(declare-fun b!495272 () Bool)

(declare-fun res!297812 () Bool)

(assert (=> b!495272 (=> (not res!297812) (not e!290571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32018 (_ BitVec 32)) Bool)

(assert (=> b!495272 (= res!297812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495273 () Bool)

(declare-fun res!297809 () Bool)

(assert (=> b!495273 (=> (not res!297809) (not e!290572))))

(assert (=> b!495273 (= res!297809 (and (= (size!15753 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15753 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15753 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495274 () Bool)

(declare-fun res!297807 () Bool)

(assert (=> b!495274 (=> (not res!297807) (not e!290572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495274 (= res!297807 (validKeyInArray!0 k!2280))))

(declare-fun b!495275 () Bool)

(assert (=> b!495275 (= e!290571 (not e!290574))))

(declare-fun res!297805 () Bool)

(assert (=> b!495275 (=> res!297805 e!290574)))

(declare-fun lt!224263 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32018 (_ BitVec 32)) SeekEntryResult!3863)

(assert (=> b!495275 (= res!297805 (= lt!224261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224263 (select (store (arr!15389 a!3235) i!1204 k!2280) j!176) (array!32019 (store (arr!15389 a!3235) i!1204 k!2280) (size!15753 a!3235)) mask!3524)))))

(declare-fun lt!224260 () (_ BitVec 32))

(assert (=> b!495275 (= lt!224261 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224260 (select (arr!15389 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495275 (= lt!224263 (toIndex!0 (select (store (arr!15389 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495275 (= lt!224260 (toIndex!0 (select (arr!15389 a!3235) j!176) mask!3524))))

(assert (=> b!495275 e!290573))

(declare-fun res!297810 () Bool)

(assert (=> b!495275 (=> (not res!297810) (not e!290573))))

(assert (=> b!495275 (= res!297810 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14664 0))(
  ( (Unit!14665) )
))
(declare-fun lt!224262 () Unit!14664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32018 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14664)

(assert (=> b!495275 (= lt!224262 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495276 () Bool)

(declare-fun res!297806 () Bool)

(assert (=> b!495276 (=> (not res!297806) (not e!290572))))

(declare-fun arrayContainsKey!0 (array!32018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495276 (= res!297806 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!297808 () Bool)

(assert (=> start!45170 (=> (not res!297808) (not e!290572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45170 (= res!297808 (validMask!0 mask!3524))))

(assert (=> start!45170 e!290572))

(assert (=> start!45170 true))

(declare-fun array_inv!11163 (array!32018) Bool)

(assert (=> start!45170 (array_inv!11163 a!3235)))

(declare-fun b!495277 () Bool)

(assert (=> b!495277 (= e!290574 true)))

(assert (=> b!495277 (and (bvslt (x!46726 lt!224261) #b01111111111111111111111111111110) (or (= (select (arr!15389 a!3235) (index!17633 lt!224261)) (select (arr!15389 a!3235) j!176)) (= (select (arr!15389 a!3235) (index!17633 lt!224261)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15389 a!3235) (index!17633 lt!224261)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495278 () Bool)

(declare-fun res!297811 () Bool)

(assert (=> b!495278 (=> (not res!297811) (not e!290572))))

(assert (=> b!495278 (= res!297811 (validKeyInArray!0 (select (arr!15389 a!3235) j!176)))))

(assert (= (and start!45170 res!297808) b!495273))

(assert (= (and b!495273 res!297809) b!495278))

(assert (= (and b!495278 res!297811) b!495274))

(assert (= (and b!495274 res!297807) b!495276))

(assert (= (and b!495276 res!297806) b!495270))

(assert (= (and b!495270 res!297814) b!495272))

(assert (= (and b!495272 res!297812) b!495271))

(assert (= (and b!495271 res!297815) b!495275))

(assert (= (and b!495275 res!297810) b!495269))

(assert (= (and b!495275 (not res!297805)) b!495268))

(assert (= (and b!495268 (not res!297813)) b!495277))

(declare-fun m!476393 () Bool)

(assert (=> b!495270 m!476393))

(declare-fun m!476395 () Bool)

(assert (=> start!45170 m!476395))

(declare-fun m!476397 () Bool)

(assert (=> start!45170 m!476397))

(declare-fun m!476399 () Bool)

(assert (=> b!495277 m!476399))

(declare-fun m!476401 () Bool)

(assert (=> b!495277 m!476401))

(declare-fun m!476403 () Bool)

(assert (=> b!495274 m!476403))

(declare-fun m!476405 () Bool)

(assert (=> b!495275 m!476405))

(declare-fun m!476407 () Bool)

(assert (=> b!495275 m!476407))

(declare-fun m!476409 () Bool)

(assert (=> b!495275 m!476409))

(assert (=> b!495275 m!476401))

(declare-fun m!476411 () Bool)

(assert (=> b!495275 m!476411))

(assert (=> b!495275 m!476401))

(declare-fun m!476413 () Bool)

(assert (=> b!495275 m!476413))

(assert (=> b!495275 m!476409))

(declare-fun m!476415 () Bool)

(assert (=> b!495275 m!476415))

(assert (=> b!495275 m!476409))

(declare-fun m!476417 () Bool)

(assert (=> b!495275 m!476417))

(assert (=> b!495275 m!476401))

(declare-fun m!476419 () Bool)

(assert (=> b!495275 m!476419))

(declare-fun m!476421 () Bool)

(assert (=> b!495272 m!476421))

(declare-fun m!476423 () Bool)

(assert (=> b!495276 m!476423))

(declare-fun m!476425 () Bool)

(assert (=> b!495271 m!476425))

(assert (=> b!495278 m!476401))

(assert (=> b!495278 m!476401))

(declare-fun m!476427 () Bool)

(assert (=> b!495278 m!476427))

(assert (=> b!495269 m!476401))

(assert (=> b!495269 m!476401))

(declare-fun m!476429 () Bool)

(assert (=> b!495269 m!476429))

(push 1)

