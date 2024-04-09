; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45490 () Bool)

(assert start!45490)

(declare-fun b!500568 () Bool)

(declare-fun res!302509 () Bool)

(declare-fun e!293269 () Bool)

(assert (=> b!500568 (=> (not res!302509) (not e!293269))))

(declare-datatypes ((array!32275 0))(
  ( (array!32276 (arr!15516 (Array (_ BitVec 32) (_ BitVec 64))) (size!15880 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32275)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500568 (= res!302509 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500569 () Bool)

(declare-datatypes ((Unit!15050 0))(
  ( (Unit!15051) )
))
(declare-fun e!293274 () Unit!15050)

(declare-fun Unit!15052 () Unit!15050)

(assert (=> b!500569 (= e!293274 Unit!15052)))

(declare-fun b!500570 () Bool)

(declare-fun res!302516 () Bool)

(assert (=> b!500570 (=> (not res!302516) (not e!293269))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500570 (= res!302516 (validKeyInArray!0 (select (arr!15516 a!3235) j!176)))))

(declare-fun b!500571 () Bool)

(declare-fun e!293270 () Bool)

(assert (=> b!500571 (= e!293269 e!293270)))

(declare-fun res!302514 () Bool)

(assert (=> b!500571 (=> (not res!302514) (not e!293270))))

(declare-datatypes ((SeekEntryResult!3990 0))(
  ( (MissingZero!3990 (index!18142 (_ BitVec 32))) (Found!3990 (index!18143 (_ BitVec 32))) (Intermediate!3990 (undefined!4802 Bool) (index!18144 (_ BitVec 32)) (x!47206 (_ BitVec 32))) (Undefined!3990) (MissingVacant!3990 (index!18145 (_ BitVec 32))) )
))
(declare-fun lt!227295 () SeekEntryResult!3990)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500571 (= res!302514 (or (= lt!227295 (MissingZero!3990 i!1204)) (= lt!227295 (MissingVacant!3990 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32275 (_ BitVec 32)) SeekEntryResult!3990)

(assert (=> b!500571 (= lt!227295 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500572 () Bool)

(declare-fun res!302512 () Bool)

(assert (=> b!500572 (=> (not res!302512) (not e!293270))))

(declare-datatypes ((List!9727 0))(
  ( (Nil!9724) (Cons!9723 (h!10597 (_ BitVec 64)) (t!15963 List!9727)) )
))
(declare-fun arrayNoDuplicates!0 (array!32275 (_ BitVec 32) List!9727) Bool)

(assert (=> b!500572 (= res!302512 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9724))))

(declare-fun e!293273 () Bool)

(declare-fun b!500573 () Bool)

(assert (=> b!500573 (= e!293273 (= (seekEntryOrOpen!0 (select (arr!15516 a!3235) j!176) a!3235 mask!3524) (Found!3990 j!176)))))

(declare-fun b!500574 () Bool)

(declare-fun res!302508 () Bool)

(assert (=> b!500574 (=> (not res!302508) (not e!293269))))

(assert (=> b!500574 (= res!302508 (validKeyInArray!0 k!2280))))

(declare-fun res!302515 () Bool)

(assert (=> start!45490 (=> (not res!302515) (not e!293269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45490 (= res!302515 (validMask!0 mask!3524))))

(assert (=> start!45490 e!293269))

(assert (=> start!45490 true))

(declare-fun array_inv!11290 (array!32275) Bool)

(assert (=> start!45490 (array_inv!11290 a!3235)))

(declare-fun b!500575 () Bool)

(declare-fun e!293275 () Bool)

(assert (=> b!500575 (= e!293275 true)))

(declare-fun lt!227293 () (_ BitVec 32))

(declare-fun lt!227298 () array!32275)

(declare-fun lt!227300 () (_ BitVec 64))

(declare-fun lt!227299 () SeekEntryResult!3990)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32275 (_ BitVec 32)) SeekEntryResult!3990)

(assert (=> b!500575 (= lt!227299 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227293 lt!227300 lt!227298 mask!3524))))

(declare-fun b!500576 () Bool)

(declare-fun res!302511 () Bool)

(assert (=> b!500576 (=> (not res!302511) (not e!293269))))

(assert (=> b!500576 (= res!302511 (and (= (size!15880 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15880 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15880 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500577 () Bool)

(declare-fun res!302505 () Bool)

(assert (=> b!500577 (=> (not res!302505) (not e!293270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32275 (_ BitVec 32)) Bool)

(assert (=> b!500577 (= res!302505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500578 () Bool)

(declare-fun e!293268 () Bool)

(assert (=> b!500578 (= e!293268 false)))

(declare-fun b!500579 () Bool)

(declare-fun e!293271 () Bool)

(assert (=> b!500579 (= e!293271 e!293275)))

(declare-fun res!302510 () Bool)

(assert (=> b!500579 (=> res!302510 e!293275)))

(declare-fun lt!227291 () SeekEntryResult!3990)

(assert (=> b!500579 (= res!302510 (or (bvsgt #b00000000000000000000000000000000 (x!47206 lt!227291)) (bvsgt (x!47206 lt!227291) #b01111111111111111111111111111110) (bvslt lt!227293 #b00000000000000000000000000000000) (bvsge lt!227293 (size!15880 a!3235)) (bvslt (index!18144 lt!227291) #b00000000000000000000000000000000) (bvsge (index!18144 lt!227291) (size!15880 a!3235)) (not (= lt!227291 (Intermediate!3990 false (index!18144 lt!227291) (x!47206 lt!227291))))))))

(assert (=> b!500579 (and (or (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227294 () Unit!15050)

(assert (=> b!500579 (= lt!227294 e!293274)))

(declare-fun c!59309 () Bool)

(assert (=> b!500579 (= c!59309 (= (select (arr!15516 a!3235) (index!18144 lt!227291)) (select (arr!15516 a!3235) j!176)))))

(assert (=> b!500579 (and (bvslt (x!47206 lt!227291) #b01111111111111111111111111111110) (or (= (select (arr!15516 a!3235) (index!18144 lt!227291)) (select (arr!15516 a!3235) j!176)) (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15516 a!3235) (index!18144 lt!227291)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500580 () Bool)

(declare-fun res!302504 () Bool)

(assert (=> b!500580 (=> res!302504 e!293271)))

(assert (=> b!500580 (= res!302504 (or (undefined!4802 lt!227291) (not (is-Intermediate!3990 lt!227291))))))

(declare-fun b!500581 () Bool)

(declare-fun Unit!15053 () Unit!15050)

(assert (=> b!500581 (= e!293274 Unit!15053)))

(declare-fun lt!227296 () Unit!15050)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15050)

(assert (=> b!500581 (= lt!227296 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227293 #b00000000000000000000000000000000 (index!18144 lt!227291) (x!47206 lt!227291) mask!3524))))

(declare-fun res!302513 () Bool)

(assert (=> b!500581 (= res!302513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227293 lt!227300 lt!227298 mask!3524) (Intermediate!3990 false (index!18144 lt!227291) (x!47206 lt!227291))))))

(assert (=> b!500581 (=> (not res!302513) (not e!293268))))

(assert (=> b!500581 e!293268))

(declare-fun b!500582 () Bool)

(assert (=> b!500582 (= e!293270 (not e!293271))))

(declare-fun res!302507 () Bool)

(assert (=> b!500582 (=> res!302507 e!293271)))

(declare-fun lt!227297 () (_ BitVec 32))

(assert (=> b!500582 (= res!302507 (= lt!227291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227297 lt!227300 lt!227298 mask!3524)))))

(assert (=> b!500582 (= lt!227291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227293 (select (arr!15516 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500582 (= lt!227297 (toIndex!0 lt!227300 mask!3524))))

(assert (=> b!500582 (= lt!227300 (select (store (arr!15516 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500582 (= lt!227293 (toIndex!0 (select (arr!15516 a!3235) j!176) mask!3524))))

(assert (=> b!500582 (= lt!227298 (array!32276 (store (arr!15516 a!3235) i!1204 k!2280) (size!15880 a!3235)))))

(assert (=> b!500582 e!293273))

(declare-fun res!302506 () Bool)

(assert (=> b!500582 (=> (not res!302506) (not e!293273))))

(assert (=> b!500582 (= res!302506 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227292 () Unit!15050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15050)

(assert (=> b!500582 (= lt!227292 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45490 res!302515) b!500576))

(assert (= (and b!500576 res!302511) b!500570))

(assert (= (and b!500570 res!302516) b!500574))

(assert (= (and b!500574 res!302508) b!500568))

(assert (= (and b!500568 res!302509) b!500571))

(assert (= (and b!500571 res!302514) b!500577))

(assert (= (and b!500577 res!302505) b!500572))

(assert (= (and b!500572 res!302512) b!500582))

(assert (= (and b!500582 res!302506) b!500573))

(assert (= (and b!500582 (not res!302507)) b!500580))

(assert (= (and b!500580 (not res!302504)) b!500579))

(assert (= (and b!500579 c!59309) b!500581))

(assert (= (and b!500579 (not c!59309)) b!500569))

(assert (= (and b!500581 res!302513) b!500578))

(assert (= (and b!500579 (not res!302510)) b!500575))

(declare-fun m!481717 () Bool)

(assert (=> b!500571 m!481717))

(declare-fun m!481719 () Bool)

(assert (=> b!500575 m!481719))

(declare-fun m!481721 () Bool)

(assert (=> start!45490 m!481721))

(declare-fun m!481723 () Bool)

(assert (=> start!45490 m!481723))

(declare-fun m!481725 () Bool)

(assert (=> b!500577 m!481725))

(declare-fun m!481727 () Bool)

(assert (=> b!500568 m!481727))

(declare-fun m!481729 () Bool)

(assert (=> b!500572 m!481729))

(declare-fun m!481731 () Bool)

(assert (=> b!500570 m!481731))

(assert (=> b!500570 m!481731))

(declare-fun m!481733 () Bool)

(assert (=> b!500570 m!481733))

(declare-fun m!481735 () Bool)

(assert (=> b!500574 m!481735))

(declare-fun m!481737 () Bool)

(assert (=> b!500581 m!481737))

(assert (=> b!500581 m!481719))

(declare-fun m!481739 () Bool)

(assert (=> b!500579 m!481739))

(assert (=> b!500579 m!481731))

(declare-fun m!481741 () Bool)

(assert (=> b!500582 m!481741))

(declare-fun m!481743 () Bool)

(assert (=> b!500582 m!481743))

(declare-fun m!481745 () Bool)

(assert (=> b!500582 m!481745))

(declare-fun m!481747 () Bool)

(assert (=> b!500582 m!481747))

(assert (=> b!500582 m!481731))

(declare-fun m!481749 () Bool)

(assert (=> b!500582 m!481749))

(assert (=> b!500582 m!481731))

(declare-fun m!481751 () Bool)

(assert (=> b!500582 m!481751))

(assert (=> b!500582 m!481731))

(declare-fun m!481753 () Bool)

(assert (=> b!500582 m!481753))

(declare-fun m!481755 () Bool)

(assert (=> b!500582 m!481755))

(assert (=> b!500573 m!481731))

(assert (=> b!500573 m!481731))

(declare-fun m!481757 () Bool)

(assert (=> b!500573 m!481757))

(push 1)

