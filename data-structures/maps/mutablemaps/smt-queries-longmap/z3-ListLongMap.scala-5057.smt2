; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68874 () Bool)

(assert start!68874)

(declare-fun b!802630 () Bool)

(declare-fun res!547324 () Bool)

(declare-fun e!444821 () Bool)

(assert (=> b!802630 (=> (not res!547324) (not e!444821))))

(declare-datatypes ((array!43615 0))(
  ( (array!43616 (arr!20884 (Array (_ BitVec 32) (_ BitVec 64))) (size!21305 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43615)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43615 (_ BitVec 32)) Bool)

(assert (=> b!802630 (= res!547324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802631 () Bool)

(declare-fun e!444820 () Bool)

(assert (=> b!802631 (= e!444821 e!444820)))

(declare-fun res!547330 () Bool)

(assert (=> b!802631 (=> (not res!547330) (not e!444820))))

(declare-datatypes ((SeekEntryResult!8482 0))(
  ( (MissingZero!8482 (index!36295 (_ BitVec 32))) (Found!8482 (index!36296 (_ BitVec 32))) (Intermediate!8482 (undefined!9294 Bool) (index!36297 (_ BitVec 32)) (x!67169 (_ BitVec 32))) (Undefined!8482) (MissingVacant!8482 (index!36298 (_ BitVec 32))) )
))
(declare-fun lt!359054 () SeekEntryResult!8482)

(declare-fun lt!359058 () SeekEntryResult!8482)

(assert (=> b!802631 (= res!547330 (= lt!359054 lt!359058))))

(declare-fun lt!359059 () array!43615)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!359060 () (_ BitVec 64))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43615 (_ BitVec 32)) SeekEntryResult!8482)

(assert (=> b!802631 (= lt!359058 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359060 lt!359059 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43615 (_ BitVec 32)) SeekEntryResult!8482)

(assert (=> b!802631 (= lt!359054 (seekEntryOrOpen!0 lt!359060 lt!359059 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!802631 (= lt!359060 (select (store (arr!20884 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802631 (= lt!359059 (array!43616 (store (arr!20884 a!3170) i!1163 k0!2044) (size!21305 a!3170)))))

(declare-fun res!547329 () Bool)

(declare-fun e!444819 () Bool)

(assert (=> start!68874 (=> (not res!547329) (not e!444819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68874 (= res!547329 (validMask!0 mask!3266))))

(assert (=> start!68874 e!444819))

(assert (=> start!68874 true))

(declare-fun array_inv!16658 (array!43615) Bool)

(assert (=> start!68874 (array_inv!16658 a!3170)))

(declare-fun b!802632 () Bool)

(assert (=> b!802632 (= e!444819 e!444821)))

(declare-fun res!547322 () Bool)

(assert (=> b!802632 (=> (not res!547322) (not e!444821))))

(declare-fun lt!359062 () SeekEntryResult!8482)

(assert (=> b!802632 (= res!547322 (or (= lt!359062 (MissingZero!8482 i!1163)) (= lt!359062 (MissingVacant!8482 i!1163))))))

(assert (=> b!802632 (= lt!359062 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802633 () Bool)

(declare-fun res!547319 () Bool)

(assert (=> b!802633 (=> (not res!547319) (not e!444821))))

(declare-datatypes ((List!14900 0))(
  ( (Nil!14897) (Cons!14896 (h!16025 (_ BitVec 64)) (t!21223 List!14900)) )
))
(declare-fun arrayNoDuplicates!0 (array!43615 (_ BitVec 32) List!14900) Bool)

(assert (=> b!802633 (= res!547319 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14897))))

(declare-fun b!802634 () Bool)

(declare-fun e!444822 () Bool)

(assert (=> b!802634 (= e!444820 e!444822)))

(declare-fun res!547321 () Bool)

(assert (=> b!802634 (=> (not res!547321) (not e!444822))))

(declare-fun lt!359056 () SeekEntryResult!8482)

(declare-fun lt!359057 () SeekEntryResult!8482)

(assert (=> b!802634 (= res!547321 (= lt!359056 lt!359057))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802634 (= lt!359057 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20884 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802634 (= lt!359056 (seekEntryOrOpen!0 (select (arr!20884 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802635 () Bool)

(declare-fun e!444823 () Bool)

(assert (=> b!802635 (= e!444822 e!444823)))

(declare-fun res!547320 () Bool)

(assert (=> b!802635 (=> (not res!547320) (not e!444823))))

(declare-fun lt!359053 () SeekEntryResult!8482)

(assert (=> b!802635 (= res!547320 (and (= lt!359057 lt!359053) (not (= (select (arr!20884 a!3170) index!1236) (select (arr!20884 a!3170) j!153)))))))

(assert (=> b!802635 (= lt!359053 (Found!8482 j!153))))

(declare-fun b!802636 () Bool)

(declare-fun res!547328 () Bool)

(assert (=> b!802636 (=> (not res!547328) (not e!444819))))

(declare-fun arrayContainsKey!0 (array!43615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802636 (= res!547328 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802637 () Bool)

(assert (=> b!802637 (= e!444823 (not (or (not (= lt!359058 lt!359053)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359055 () (_ BitVec 32))

(assert (=> b!802637 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359055 vacantAfter!23 lt!359060 lt!359059 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359055 vacantBefore!23 (select (arr!20884 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27506 0))(
  ( (Unit!27507) )
))
(declare-fun lt!359061 () Unit!27506)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43615 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27506)

(assert (=> b!802637 (= lt!359061 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359055 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802637 (= lt!359055 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802638 () Bool)

(declare-fun res!547323 () Bool)

(assert (=> b!802638 (=> (not res!547323) (not e!444819))))

(assert (=> b!802638 (= res!547323 (and (= (size!21305 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21305 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21305 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802639 () Bool)

(declare-fun res!547325 () Bool)

(assert (=> b!802639 (=> (not res!547325) (not e!444821))))

(assert (=> b!802639 (= res!547325 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21305 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20884 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21305 a!3170)) (= (select (arr!20884 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802640 () Bool)

(declare-fun res!547326 () Bool)

(assert (=> b!802640 (=> (not res!547326) (not e!444819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802640 (= res!547326 (validKeyInArray!0 (select (arr!20884 a!3170) j!153)))))

(declare-fun b!802641 () Bool)

(declare-fun res!547327 () Bool)

(assert (=> b!802641 (=> (not res!547327) (not e!444819))))

(assert (=> b!802641 (= res!547327 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68874 res!547329) b!802638))

(assert (= (and b!802638 res!547323) b!802640))

(assert (= (and b!802640 res!547326) b!802641))

(assert (= (and b!802641 res!547327) b!802636))

(assert (= (and b!802636 res!547328) b!802632))

(assert (= (and b!802632 res!547322) b!802630))

(assert (= (and b!802630 res!547324) b!802633))

(assert (= (and b!802633 res!547319) b!802639))

(assert (= (and b!802639 res!547325) b!802631))

(assert (= (and b!802631 res!547330) b!802634))

(assert (= (and b!802634 res!547321) b!802635))

(assert (= (and b!802635 res!547320) b!802637))

(declare-fun m!744279 () Bool)

(assert (=> b!802632 m!744279))

(declare-fun m!744281 () Bool)

(assert (=> b!802633 m!744281))

(declare-fun m!744283 () Bool)

(assert (=> start!68874 m!744283))

(declare-fun m!744285 () Bool)

(assert (=> start!68874 m!744285))

(declare-fun m!744287 () Bool)

(assert (=> b!802640 m!744287))

(assert (=> b!802640 m!744287))

(declare-fun m!744289 () Bool)

(assert (=> b!802640 m!744289))

(declare-fun m!744291 () Bool)

(assert (=> b!802639 m!744291))

(declare-fun m!744293 () Bool)

(assert (=> b!802639 m!744293))

(assert (=> b!802637 m!744287))

(assert (=> b!802637 m!744287))

(declare-fun m!744295 () Bool)

(assert (=> b!802637 m!744295))

(declare-fun m!744297 () Bool)

(assert (=> b!802637 m!744297))

(declare-fun m!744299 () Bool)

(assert (=> b!802637 m!744299))

(declare-fun m!744301 () Bool)

(assert (=> b!802637 m!744301))

(declare-fun m!744303 () Bool)

(assert (=> b!802636 m!744303))

(declare-fun m!744305 () Bool)

(assert (=> b!802635 m!744305))

(assert (=> b!802635 m!744287))

(assert (=> b!802634 m!744287))

(assert (=> b!802634 m!744287))

(declare-fun m!744307 () Bool)

(assert (=> b!802634 m!744307))

(assert (=> b!802634 m!744287))

(declare-fun m!744309 () Bool)

(assert (=> b!802634 m!744309))

(declare-fun m!744311 () Bool)

(assert (=> b!802641 m!744311))

(declare-fun m!744313 () Bool)

(assert (=> b!802630 m!744313))

(declare-fun m!744315 () Bool)

(assert (=> b!802631 m!744315))

(declare-fun m!744317 () Bool)

(assert (=> b!802631 m!744317))

(declare-fun m!744319 () Bool)

(assert (=> b!802631 m!744319))

(declare-fun m!744321 () Bool)

(assert (=> b!802631 m!744321))

(check-sat (not b!802641) (not b!802637) (not start!68874) (not b!802631) (not b!802634) (not b!802640) (not b!802636) (not b!802630) (not b!802633) (not b!802632))
(check-sat)
