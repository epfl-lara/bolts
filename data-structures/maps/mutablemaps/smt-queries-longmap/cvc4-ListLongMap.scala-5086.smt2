; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69050 () Bool)

(assert start!69050)

(declare-fun b!805224 () Bool)

(declare-fun e!445966 () Bool)

(declare-fun e!445965 () Bool)

(assert (=> b!805224 (= e!445966 e!445965)))

(declare-fun res!549917 () Bool)

(assert (=> b!805224 (=> (not res!549917) (not e!445965))))

(declare-datatypes ((SeekEntryResult!8570 0))(
  ( (MissingZero!8570 (index!36647 (_ BitVec 32))) (Found!8570 (index!36648 (_ BitVec 32))) (Intermediate!8570 (undefined!9382 Bool) (index!36649 (_ BitVec 32)) (x!67489 (_ BitVec 32))) (Undefined!8570) (MissingVacant!8570 (index!36650 (_ BitVec 32))) )
))
(declare-fun lt!360550 () SeekEntryResult!8570)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805224 (= res!549917 (or (= lt!360550 (MissingZero!8570 i!1163)) (= lt!360550 (MissingVacant!8570 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43791 0))(
  ( (array!43792 (arr!20972 (Array (_ BitVec 32) (_ BitVec 64))) (size!21393 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43791)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43791 (_ BitVec 32)) SeekEntryResult!8570)

(assert (=> b!805224 (= lt!360550 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805225 () Bool)

(declare-fun res!549921 () Bool)

(assert (=> b!805225 (=> (not res!549921) (not e!445965))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43791 (_ BitVec 32)) Bool)

(assert (=> b!805225 (= res!549921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805226 () Bool)

(declare-fun res!549913 () Bool)

(assert (=> b!805226 (=> (not res!549913) (not e!445965))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805226 (= res!549913 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21393 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20972 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21393 a!3170)) (= (select (arr!20972 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805228 () Bool)

(declare-fun res!549919 () Bool)

(assert (=> b!805228 (=> (not res!549919) (not e!445966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805228 (= res!549919 (validKeyInArray!0 k!2044))))

(declare-fun b!805229 () Bool)

(declare-fun e!445963 () Bool)

(assert (=> b!805229 (= e!445963 false)))

(declare-fun lt!360547 () SeekEntryResult!8570)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43791 (_ BitVec 32)) SeekEntryResult!8570)

(assert (=> b!805229 (= lt!360547 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20972 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360546 () SeekEntryResult!8570)

(assert (=> b!805229 (= lt!360546 (seekEntryOrOpen!0 (select (arr!20972 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805227 () Bool)

(declare-fun res!549918 () Bool)

(assert (=> b!805227 (=> (not res!549918) (not e!445966))))

(assert (=> b!805227 (= res!549918 (and (= (size!21393 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21393 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21393 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!549922 () Bool)

(assert (=> start!69050 (=> (not res!549922) (not e!445966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69050 (= res!549922 (validMask!0 mask!3266))))

(assert (=> start!69050 e!445966))

(assert (=> start!69050 true))

(declare-fun array_inv!16746 (array!43791) Bool)

(assert (=> start!69050 (array_inv!16746 a!3170)))

(declare-fun b!805230 () Bool)

(declare-fun res!549914 () Bool)

(assert (=> b!805230 (=> (not res!549914) (not e!445966))))

(assert (=> b!805230 (= res!549914 (validKeyInArray!0 (select (arr!20972 a!3170) j!153)))))

(declare-fun b!805231 () Bool)

(declare-fun res!549916 () Bool)

(assert (=> b!805231 (=> (not res!549916) (not e!445965))))

(declare-datatypes ((List!14988 0))(
  ( (Nil!14985) (Cons!14984 (h!16113 (_ BitVec 64)) (t!21311 List!14988)) )
))
(declare-fun arrayNoDuplicates!0 (array!43791 (_ BitVec 32) List!14988) Bool)

(assert (=> b!805231 (= res!549916 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14985))))

(declare-fun b!805232 () Bool)

(assert (=> b!805232 (= e!445965 e!445963)))

(declare-fun res!549920 () Bool)

(assert (=> b!805232 (=> (not res!549920) (not e!445963))))

(declare-fun lt!360548 () (_ BitVec 64))

(declare-fun lt!360549 () array!43791)

(assert (=> b!805232 (= res!549920 (= (seekEntryOrOpen!0 lt!360548 lt!360549 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360548 lt!360549 mask!3266)))))

(assert (=> b!805232 (= lt!360548 (select (store (arr!20972 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805232 (= lt!360549 (array!43792 (store (arr!20972 a!3170) i!1163 k!2044) (size!21393 a!3170)))))

(declare-fun b!805233 () Bool)

(declare-fun res!549915 () Bool)

(assert (=> b!805233 (=> (not res!549915) (not e!445966))))

(declare-fun arrayContainsKey!0 (array!43791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805233 (= res!549915 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69050 res!549922) b!805227))

(assert (= (and b!805227 res!549918) b!805230))

(assert (= (and b!805230 res!549914) b!805228))

(assert (= (and b!805228 res!549919) b!805233))

(assert (= (and b!805233 res!549915) b!805224))

(assert (= (and b!805224 res!549917) b!805225))

(assert (= (and b!805225 res!549921) b!805231))

(assert (= (and b!805231 res!549916) b!805226))

(assert (= (and b!805226 res!549913) b!805232))

(assert (= (and b!805232 res!549920) b!805229))

(declare-fun m!747261 () Bool)

(assert (=> b!805228 m!747261))

(declare-fun m!747263 () Bool)

(assert (=> start!69050 m!747263))

(declare-fun m!747265 () Bool)

(assert (=> start!69050 m!747265))

(declare-fun m!747267 () Bool)

(assert (=> b!805225 m!747267))

(declare-fun m!747269 () Bool)

(assert (=> b!805232 m!747269))

(declare-fun m!747271 () Bool)

(assert (=> b!805232 m!747271))

(declare-fun m!747273 () Bool)

(assert (=> b!805232 m!747273))

(declare-fun m!747275 () Bool)

(assert (=> b!805232 m!747275))

(declare-fun m!747277 () Bool)

(assert (=> b!805230 m!747277))

(assert (=> b!805230 m!747277))

(declare-fun m!747279 () Bool)

(assert (=> b!805230 m!747279))

(declare-fun m!747281 () Bool)

(assert (=> b!805226 m!747281))

(declare-fun m!747283 () Bool)

(assert (=> b!805226 m!747283))

(declare-fun m!747285 () Bool)

(assert (=> b!805224 m!747285))

(assert (=> b!805229 m!747277))

(assert (=> b!805229 m!747277))

(declare-fun m!747287 () Bool)

(assert (=> b!805229 m!747287))

(assert (=> b!805229 m!747277))

(declare-fun m!747289 () Bool)

(assert (=> b!805229 m!747289))

(declare-fun m!747291 () Bool)

(assert (=> b!805233 m!747291))

(declare-fun m!747293 () Bool)

(assert (=> b!805231 m!747293))

(push 1)

(assert (not b!805229))

(assert (not b!805224))

(assert (not b!805231))

