; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48128 () Bool)

(assert start!48128)

(declare-fun b!529711 () Bool)

(declare-fun res!325571 () Bool)

(declare-fun e!308665 () Bool)

(assert (=> b!529711 (=> (not res!325571) (not e!308665))))

(declare-datatypes ((array!33524 0))(
  ( (array!33525 (arr!16106 (Array (_ BitVec 32) (_ BitVec 64))) (size!16470 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33524)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529711 (= res!325571 (validKeyInArray!0 (select (arr!16106 a!3235) j!176)))))

(declare-fun b!529712 () Bool)

(declare-fun res!325568 () Bool)

(assert (=> b!529712 (=> (not res!325568) (not e!308665))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529712 (= res!325568 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529713 () Bool)

(declare-fun e!308668 () Bool)

(declare-fun e!308663 () Bool)

(assert (=> b!529713 (= e!308668 (not e!308663))))

(declare-fun res!325576 () Bool)

(assert (=> b!529713 (=> res!325576 e!308663)))

(declare-fun lt!244305 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4580 0))(
  ( (MissingZero!4580 (index!20544 (_ BitVec 32))) (Found!4580 (index!20545 (_ BitVec 32))) (Intermediate!4580 (undefined!5392 Bool) (index!20546 (_ BitVec 32)) (x!49541 (_ BitVec 32))) (Undefined!4580) (MissingVacant!4580 (index!20547 (_ BitVec 32))) )
))
(declare-fun lt!244308 () SeekEntryResult!4580)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!244310 () array!33524)

(declare-fun lt!244309 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33524 (_ BitVec 32)) SeekEntryResult!4580)

(assert (=> b!529713 (= res!325576 (= lt!244308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244305 lt!244309 lt!244310 mask!3524)))))

(declare-fun lt!244312 () (_ BitVec 32))

(assert (=> b!529713 (= lt!244308 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244312 (select (arr!16106 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529713 (= lt!244305 (toIndex!0 lt!244309 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!529713 (= lt!244309 (select (store (arr!16106 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!529713 (= lt!244312 (toIndex!0 (select (arr!16106 a!3235) j!176) mask!3524))))

(assert (=> b!529713 (= lt!244310 (array!33525 (store (arr!16106 a!3235) i!1204 k!2280) (size!16470 a!3235)))))

(declare-fun e!308664 () Bool)

(assert (=> b!529713 e!308664))

(declare-fun res!325573 () Bool)

(assert (=> b!529713 (=> (not res!325573) (not e!308664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33524 (_ BitVec 32)) Bool)

(assert (=> b!529713 (= res!325573 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16764 0))(
  ( (Unit!16765) )
))
(declare-fun lt!244311 () Unit!16764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16764)

(assert (=> b!529713 (= lt!244311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529714 () Bool)

(declare-fun res!325567 () Bool)

(assert (=> b!529714 (=> (not res!325567) (not e!308668))))

(declare-datatypes ((List!10317 0))(
  ( (Nil!10314) (Cons!10313 (h!11253 (_ BitVec 64)) (t!16553 List!10317)) )
))
(declare-fun arrayNoDuplicates!0 (array!33524 (_ BitVec 32) List!10317) Bool)

(assert (=> b!529714 (= res!325567 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10314))))

(declare-fun b!529715 () Bool)

(declare-fun e!308666 () Bool)

(assert (=> b!529715 (= e!308663 e!308666)))

(declare-fun res!325572 () Bool)

(assert (=> b!529715 (=> res!325572 e!308666)))

(declare-fun lt!244307 () Bool)

(assert (=> b!529715 (= res!325572 (or (and (not lt!244307) (undefined!5392 lt!244308)) (and (not lt!244307) (not (undefined!5392 lt!244308)))))))

(assert (=> b!529715 (= lt!244307 (not (is-Intermediate!4580 lt!244308)))))

(declare-fun b!529716 () Bool)

(declare-fun res!325575 () Bool)

(assert (=> b!529716 (=> (not res!325575) (not e!308665))))

(assert (=> b!529716 (= res!325575 (validKeyInArray!0 k!2280))))

(declare-fun b!529717 () Bool)

(assert (=> b!529717 (= e!308665 e!308668)))

(declare-fun res!325570 () Bool)

(assert (=> b!529717 (=> (not res!325570) (not e!308668))))

(declare-fun lt!244313 () SeekEntryResult!4580)

(assert (=> b!529717 (= res!325570 (or (= lt!244313 (MissingZero!4580 i!1204)) (= lt!244313 (MissingVacant!4580 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33524 (_ BitVec 32)) SeekEntryResult!4580)

(assert (=> b!529717 (= lt!244313 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!529718 () Bool)

(assert (=> b!529718 (= e!308664 (= (seekEntryOrOpen!0 (select (arr!16106 a!3235) j!176) a!3235 mask!3524) (Found!4580 j!176)))))

(declare-fun b!529720 () Bool)

(declare-fun res!325569 () Bool)

(assert (=> b!529720 (=> (not res!325569) (not e!308668))))

(assert (=> b!529720 (= res!325569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!529721 () Bool)

(assert (=> b!529721 (= e!308666 true)))

(declare-fun lt!244306 () SeekEntryResult!4580)

(assert (=> b!529721 (= lt!244306 (seekEntryOrOpen!0 lt!244309 lt!244310 mask!3524))))

(assert (=> b!529721 false))

(declare-fun b!529719 () Bool)

(declare-fun res!325574 () Bool)

(assert (=> b!529719 (=> (not res!325574) (not e!308665))))

(assert (=> b!529719 (= res!325574 (and (= (size!16470 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16470 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16470 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!325577 () Bool)

(assert (=> start!48128 (=> (not res!325577) (not e!308665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48128 (= res!325577 (validMask!0 mask!3524))))

(assert (=> start!48128 e!308665))

(assert (=> start!48128 true))

(declare-fun array_inv!11880 (array!33524) Bool)

(assert (=> start!48128 (array_inv!11880 a!3235)))

(assert (= (and start!48128 res!325577) b!529719))

(assert (= (and b!529719 res!325574) b!529711))

(assert (= (and b!529711 res!325571) b!529716))

(assert (= (and b!529716 res!325575) b!529712))

(assert (= (and b!529712 res!325568) b!529717))

(assert (= (and b!529717 res!325570) b!529720))

(assert (= (and b!529720 res!325569) b!529714))

(assert (= (and b!529714 res!325567) b!529713))

(assert (= (and b!529713 res!325573) b!529718))

(assert (= (and b!529713 (not res!325576)) b!529715))

(assert (= (and b!529715 (not res!325572)) b!529721))

(declare-fun m!510251 () Bool)

(assert (=> b!529712 m!510251))

(declare-fun m!510253 () Bool)

(assert (=> start!48128 m!510253))

(declare-fun m!510255 () Bool)

(assert (=> start!48128 m!510255))

(declare-fun m!510257 () Bool)

(assert (=> b!529717 m!510257))

(declare-fun m!510259 () Bool)

(assert (=> b!529714 m!510259))

(declare-fun m!510261 () Bool)

(assert (=> b!529716 m!510261))

(declare-fun m!510263 () Bool)

(assert (=> b!529711 m!510263))

(assert (=> b!529711 m!510263))

(declare-fun m!510265 () Bool)

(assert (=> b!529711 m!510265))

(declare-fun m!510267 () Bool)

(assert (=> b!529713 m!510267))

(assert (=> b!529713 m!510263))

(declare-fun m!510269 () Bool)

(assert (=> b!529713 m!510269))

(declare-fun m!510271 () Bool)

(assert (=> b!529713 m!510271))

(declare-fun m!510273 () Bool)

(assert (=> b!529713 m!510273))

(declare-fun m!510275 () Bool)

(assert (=> b!529713 m!510275))

(assert (=> b!529713 m!510263))

(declare-fun m!510277 () Bool)

(assert (=> b!529713 m!510277))

(assert (=> b!529713 m!510263))

(declare-fun m!510279 () Bool)

(assert (=> b!529713 m!510279))

(declare-fun m!510281 () Bool)

(assert (=> b!529713 m!510281))

(assert (=> b!529718 m!510263))

(assert (=> b!529718 m!510263))

(declare-fun m!510283 () Bool)

(assert (=> b!529718 m!510283))

(declare-fun m!510285 () Bool)

(assert (=> b!529721 m!510285))

(declare-fun m!510287 () Bool)

(assert (=> b!529720 m!510287))

(push 1)

