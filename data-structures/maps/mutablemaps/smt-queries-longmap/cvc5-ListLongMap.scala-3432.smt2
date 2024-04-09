; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47722 () Bool)

(assert start!47722)

(declare-fun b!524557 () Bool)

(declare-fun e!305913 () Bool)

(assert (=> b!524557 (= e!305913 true)))

(declare-datatypes ((SeekEntryResult!4482 0))(
  ( (MissingZero!4482 (index!20140 (_ BitVec 32))) (Found!4482 (index!20141 (_ BitVec 32))) (Intermediate!4482 (undefined!5294 Bool) (index!20142 (_ BitVec 32)) (x!49154 (_ BitVec 32))) (Undefined!4482) (MissingVacant!4482 (index!20143 (_ BitVec 32))) )
))
(declare-fun lt!240873 () SeekEntryResult!4482)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524557 (= (index!20142 lt!240873) i!1204)))

(declare-fun lt!240875 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33319 0))(
  ( (array!33320 (arr!16008 (Array (_ BitVec 32) (_ BitVec 64))) (size!16372 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33319)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!16394 0))(
  ( (Unit!16395) )
))
(declare-fun lt!240868 () Unit!16394)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33319 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16394)

(assert (=> b!524557 (= lt!240868 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!240875 #b00000000000000000000000000000000 (index!20142 lt!240873) (x!49154 lt!240873) mask!3524))))

(assert (=> b!524557 (and (or (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240871 () Unit!16394)

(declare-fun e!305909 () Unit!16394)

(assert (=> b!524557 (= lt!240871 e!305909)))

(declare-fun c!61799 () Bool)

(assert (=> b!524557 (= c!61799 (= (select (arr!16008 a!3235) (index!20142 lt!240873)) (select (arr!16008 a!3235) j!176)))))

(assert (=> b!524557 (and (bvslt (x!49154 lt!240873) #b01111111111111111111111111111110) (or (= (select (arr!16008 a!3235) (index!20142 lt!240873)) (select (arr!16008 a!3235) j!176)) (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16008 a!3235) (index!20142 lt!240873)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524558 () Bool)

(declare-fun res!321576 () Bool)

(declare-fun e!305912 () Bool)

(assert (=> b!524558 (=> (not res!321576) (not e!305912))))

(declare-fun arrayContainsKey!0 (array!33319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524558 (= res!321576 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524559 () Bool)

(declare-fun res!321579 () Bool)

(assert (=> b!524559 (=> (not res!321579) (not e!305912))))

(assert (=> b!524559 (= res!321579 (and (= (size!16372 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16372 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16372 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524560 () Bool)

(declare-fun e!305908 () Bool)

(assert (=> b!524560 (= e!305908 false)))

(declare-fun b!524561 () Bool)

(declare-fun e!305910 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33319 (_ BitVec 32)) SeekEntryResult!4482)

(assert (=> b!524561 (= e!305910 (= (seekEntryOrOpen!0 (select (arr!16008 a!3235) j!176) a!3235 mask!3524) (Found!4482 j!176)))))

(declare-fun res!321575 () Bool)

(assert (=> start!47722 (=> (not res!321575) (not e!305912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47722 (= res!321575 (validMask!0 mask!3524))))

(assert (=> start!47722 e!305912))

(assert (=> start!47722 true))

(declare-fun array_inv!11782 (array!33319) Bool)

(assert (=> start!47722 (array_inv!11782 a!3235)))

(declare-fun b!524562 () Bool)

(declare-fun Unit!16396 () Unit!16394)

(assert (=> b!524562 (= e!305909 Unit!16396)))

(declare-fun b!524563 () Bool)

(declare-fun res!321580 () Bool)

(assert (=> b!524563 (=> (not res!321580) (not e!305912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524563 (= res!321580 (validKeyInArray!0 k!2280))))

(declare-fun b!524564 () Bool)

(declare-fun e!305914 () Bool)

(assert (=> b!524564 (= e!305912 e!305914)))

(declare-fun res!321578 () Bool)

(assert (=> b!524564 (=> (not res!321578) (not e!305914))))

(declare-fun lt!240872 () SeekEntryResult!4482)

(assert (=> b!524564 (= res!321578 (or (= lt!240872 (MissingZero!4482 i!1204)) (= lt!240872 (MissingVacant!4482 i!1204))))))

(assert (=> b!524564 (= lt!240872 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524565 () Bool)

(declare-fun Unit!16397 () Unit!16394)

(assert (=> b!524565 (= e!305909 Unit!16397)))

(declare-fun lt!240869 () Unit!16394)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33319 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16394)

(assert (=> b!524565 (= lt!240869 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240875 #b00000000000000000000000000000000 (index!20142 lt!240873) (x!49154 lt!240873) mask!3524))))

(declare-fun res!321572 () Bool)

(declare-fun lt!240874 () array!33319)

(declare-fun lt!240867 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33319 (_ BitVec 32)) SeekEntryResult!4482)

(assert (=> b!524565 (= res!321572 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240875 lt!240867 lt!240874 mask!3524) (Intermediate!4482 false (index!20142 lt!240873) (x!49154 lt!240873))))))

(assert (=> b!524565 (=> (not res!321572) (not e!305908))))

(assert (=> b!524565 e!305908))

(declare-fun b!524566 () Bool)

(declare-fun res!321581 () Bool)

(assert (=> b!524566 (=> (not res!321581) (not e!305912))))

(assert (=> b!524566 (= res!321581 (validKeyInArray!0 (select (arr!16008 a!3235) j!176)))))

(declare-fun b!524567 () Bool)

(declare-fun res!321571 () Bool)

(assert (=> b!524567 (=> res!321571 e!305913)))

(assert (=> b!524567 (= res!321571 (or (undefined!5294 lt!240873) (not (is-Intermediate!4482 lt!240873))))))

(declare-fun b!524568 () Bool)

(assert (=> b!524568 (= e!305914 (not e!305913))))

(declare-fun res!321573 () Bool)

(assert (=> b!524568 (=> res!321573 e!305913)))

(declare-fun lt!240870 () (_ BitVec 32))

(assert (=> b!524568 (= res!321573 (= lt!240873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240870 lt!240867 lt!240874 mask!3524)))))

(assert (=> b!524568 (= lt!240873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240875 (select (arr!16008 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524568 (= lt!240870 (toIndex!0 lt!240867 mask!3524))))

(assert (=> b!524568 (= lt!240867 (select (store (arr!16008 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524568 (= lt!240875 (toIndex!0 (select (arr!16008 a!3235) j!176) mask!3524))))

(assert (=> b!524568 (= lt!240874 (array!33320 (store (arr!16008 a!3235) i!1204 k!2280) (size!16372 a!3235)))))

(assert (=> b!524568 e!305910))

(declare-fun res!321570 () Bool)

(assert (=> b!524568 (=> (not res!321570) (not e!305910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33319 (_ BitVec 32)) Bool)

(assert (=> b!524568 (= res!321570 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240866 () Unit!16394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33319 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16394)

(assert (=> b!524568 (= lt!240866 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524569 () Bool)

(declare-fun res!321574 () Bool)

(assert (=> b!524569 (=> (not res!321574) (not e!305914))))

(declare-datatypes ((List!10219 0))(
  ( (Nil!10216) (Cons!10215 (h!11146 (_ BitVec 64)) (t!16455 List!10219)) )
))
(declare-fun arrayNoDuplicates!0 (array!33319 (_ BitVec 32) List!10219) Bool)

(assert (=> b!524569 (= res!321574 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10216))))

(declare-fun b!524570 () Bool)

(declare-fun res!321577 () Bool)

(assert (=> b!524570 (=> (not res!321577) (not e!305914))))

(assert (=> b!524570 (= res!321577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47722 res!321575) b!524559))

(assert (= (and b!524559 res!321579) b!524566))

(assert (= (and b!524566 res!321581) b!524563))

(assert (= (and b!524563 res!321580) b!524558))

(assert (= (and b!524558 res!321576) b!524564))

(assert (= (and b!524564 res!321578) b!524570))

(assert (= (and b!524570 res!321577) b!524569))

(assert (= (and b!524569 res!321574) b!524568))

(assert (= (and b!524568 res!321570) b!524561))

(assert (= (and b!524568 (not res!321573)) b!524567))

(assert (= (and b!524567 (not res!321571)) b!524557))

(assert (= (and b!524557 c!61799) b!524565))

(assert (= (and b!524557 (not c!61799)) b!524562))

(assert (= (and b!524565 res!321572) b!524560))

(declare-fun m!505219 () Bool)

(assert (=> start!47722 m!505219))

(declare-fun m!505221 () Bool)

(assert (=> start!47722 m!505221))

(declare-fun m!505223 () Bool)

(assert (=> b!524569 m!505223))

(declare-fun m!505225 () Bool)

(assert (=> b!524566 m!505225))

(assert (=> b!524566 m!505225))

(declare-fun m!505227 () Bool)

(assert (=> b!524566 m!505227))

(declare-fun m!505229 () Bool)

(assert (=> b!524565 m!505229))

(declare-fun m!505231 () Bool)

(assert (=> b!524565 m!505231))

(declare-fun m!505233 () Bool)

(assert (=> b!524568 m!505233))

(assert (=> b!524568 m!505225))

(declare-fun m!505235 () Bool)

(assert (=> b!524568 m!505235))

(declare-fun m!505237 () Bool)

(assert (=> b!524568 m!505237))

(declare-fun m!505239 () Bool)

(assert (=> b!524568 m!505239))

(declare-fun m!505241 () Bool)

(assert (=> b!524568 m!505241))

(assert (=> b!524568 m!505225))

(declare-fun m!505243 () Bool)

(assert (=> b!524568 m!505243))

(assert (=> b!524568 m!505225))

(declare-fun m!505245 () Bool)

(assert (=> b!524568 m!505245))

(declare-fun m!505247 () Bool)

(assert (=> b!524568 m!505247))

(declare-fun m!505249 () Bool)

(assert (=> b!524558 m!505249))

(declare-fun m!505251 () Bool)

(assert (=> b!524564 m!505251))

(declare-fun m!505253 () Bool)

(assert (=> b!524563 m!505253))

(declare-fun m!505255 () Bool)

(assert (=> b!524557 m!505255))

(declare-fun m!505257 () Bool)

(assert (=> b!524557 m!505257))

(assert (=> b!524557 m!505225))

(assert (=> b!524561 m!505225))

(assert (=> b!524561 m!505225))

(declare-fun m!505259 () Bool)

(assert (=> b!524561 m!505259))

(declare-fun m!505261 () Bool)

(assert (=> b!524570 m!505261))

(push 1)

