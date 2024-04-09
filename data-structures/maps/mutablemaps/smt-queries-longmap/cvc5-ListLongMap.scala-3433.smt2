; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47728 () Bool)

(assert start!47728)

(declare-fun b!524683 () Bool)

(declare-fun res!321681 () Bool)

(declare-fun e!305977 () Bool)

(assert (=> b!524683 (=> (not res!321681) (not e!305977))))

(declare-datatypes ((array!33325 0))(
  ( (array!33326 (arr!16011 (Array (_ BitVec 32) (_ BitVec 64))) (size!16375 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33325)

(declare-datatypes ((List!10222 0))(
  ( (Nil!10219) (Cons!10218 (h!11149 (_ BitVec 64)) (t!16458 List!10222)) )
))
(declare-fun arrayNoDuplicates!0 (array!33325 (_ BitVec 32) List!10222) Bool)

(assert (=> b!524683 (= res!321681 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10219))))

(declare-fun b!524684 () Bool)

(declare-fun e!305975 () Bool)

(assert (=> b!524684 (= e!305975 e!305977)))

(declare-fun res!321686 () Bool)

(assert (=> b!524684 (=> (not res!321686) (not e!305977))))

(declare-datatypes ((SeekEntryResult!4485 0))(
  ( (MissingZero!4485 (index!20152 (_ BitVec 32))) (Found!4485 (index!20153 (_ BitVec 32))) (Intermediate!4485 (undefined!5297 Bool) (index!20154 (_ BitVec 32)) (x!49165 (_ BitVec 32))) (Undefined!4485) (MissingVacant!4485 (index!20155 (_ BitVec 32))) )
))
(declare-fun lt!240962 () SeekEntryResult!4485)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524684 (= res!321686 (or (= lt!240962 (MissingZero!4485 i!1204)) (= lt!240962 (MissingVacant!4485 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33325 (_ BitVec 32)) SeekEntryResult!4485)

(assert (=> b!524684 (= lt!240962 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524685 () Bool)

(declare-fun e!305973 () Bool)

(assert (=> b!524685 (= e!305973 true)))

(declare-fun lt!240965 () SeekEntryResult!4485)

(assert (=> b!524685 (= (index!20154 lt!240965) i!1204)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!240963 () (_ BitVec 32))

(declare-datatypes ((Unit!16406 0))(
  ( (Unit!16407) )
))
(declare-fun lt!240957 () Unit!16406)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16406)

(assert (=> b!524685 (= lt!240957 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!240963 #b00000000000000000000000000000000 (index!20154 lt!240965) (x!49165 lt!240965) mask!3524))))

(assert (=> b!524685 (and (or (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240964 () Unit!16406)

(declare-fun e!305972 () Unit!16406)

(assert (=> b!524685 (= lt!240964 e!305972)))

(declare-fun c!61808 () Bool)

(assert (=> b!524685 (= c!61808 (= (select (arr!16011 a!3235) (index!20154 lt!240965)) (select (arr!16011 a!3235) j!176)))))

(assert (=> b!524685 (and (bvslt (x!49165 lt!240965) #b01111111111111111111111111111110) (or (= (select (arr!16011 a!3235) (index!20154 lt!240965)) (select (arr!16011 a!3235) j!176)) (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16011 a!3235) (index!20154 lt!240965)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524686 () Bool)

(declare-fun e!305976 () Bool)

(assert (=> b!524686 (= e!305976 false)))

(declare-fun res!321683 () Bool)

(assert (=> start!47728 (=> (not res!321683) (not e!305975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47728 (= res!321683 (validMask!0 mask!3524))))

(assert (=> start!47728 e!305975))

(assert (=> start!47728 true))

(declare-fun array_inv!11785 (array!33325) Bool)

(assert (=> start!47728 (array_inv!11785 a!3235)))

(declare-fun b!524687 () Bool)

(declare-fun e!305974 () Bool)

(assert (=> b!524687 (= e!305974 (= (seekEntryOrOpen!0 (select (arr!16011 a!3235) j!176) a!3235 mask!3524) (Found!4485 j!176)))))

(declare-fun b!524688 () Bool)

(declare-fun Unit!16408 () Unit!16406)

(assert (=> b!524688 (= e!305972 Unit!16408)))

(declare-fun lt!240960 () Unit!16406)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16406)

(assert (=> b!524688 (= lt!240960 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240963 #b00000000000000000000000000000000 (index!20154 lt!240965) (x!49165 lt!240965) mask!3524))))

(declare-fun lt!240959 () (_ BitVec 64))

(declare-fun lt!240958 () array!33325)

(declare-fun res!321685 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33325 (_ BitVec 32)) SeekEntryResult!4485)

(assert (=> b!524688 (= res!321685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240963 lt!240959 lt!240958 mask!3524) (Intermediate!4485 false (index!20154 lt!240965) (x!49165 lt!240965))))))

(assert (=> b!524688 (=> (not res!321685) (not e!305976))))

(assert (=> b!524688 e!305976))

(declare-fun b!524689 () Bool)

(declare-fun res!321678 () Bool)

(assert (=> b!524689 (=> (not res!321678) (not e!305975))))

(assert (=> b!524689 (= res!321678 (and (= (size!16375 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16375 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16375 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524690 () Bool)

(declare-fun res!321684 () Bool)

(assert (=> b!524690 (=> (not res!321684) (not e!305975))))

(declare-fun arrayContainsKey!0 (array!33325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524690 (= res!321684 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524691 () Bool)

(declare-fun res!321688 () Bool)

(assert (=> b!524691 (=> res!321688 e!305973)))

(assert (=> b!524691 (= res!321688 (or (undefined!5297 lt!240965) (not (is-Intermediate!4485 lt!240965))))))

(declare-fun b!524692 () Bool)

(declare-fun res!321689 () Bool)

(assert (=> b!524692 (=> (not res!321689) (not e!305977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33325 (_ BitVec 32)) Bool)

(assert (=> b!524692 (= res!321689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524693 () Bool)

(declare-fun res!321680 () Bool)

(assert (=> b!524693 (=> (not res!321680) (not e!305975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524693 (= res!321680 (validKeyInArray!0 (select (arr!16011 a!3235) j!176)))))

(declare-fun b!524694 () Bool)

(declare-fun res!321687 () Bool)

(assert (=> b!524694 (=> (not res!321687) (not e!305975))))

(assert (=> b!524694 (= res!321687 (validKeyInArray!0 k!2280))))

(declare-fun b!524695 () Bool)

(assert (=> b!524695 (= e!305977 (not e!305973))))

(declare-fun res!321679 () Bool)

(assert (=> b!524695 (=> res!321679 e!305973)))

(declare-fun lt!240956 () (_ BitVec 32))

(assert (=> b!524695 (= res!321679 (= lt!240965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240956 lt!240959 lt!240958 mask!3524)))))

(assert (=> b!524695 (= lt!240965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240963 (select (arr!16011 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524695 (= lt!240956 (toIndex!0 lt!240959 mask!3524))))

(assert (=> b!524695 (= lt!240959 (select (store (arr!16011 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524695 (= lt!240963 (toIndex!0 (select (arr!16011 a!3235) j!176) mask!3524))))

(assert (=> b!524695 (= lt!240958 (array!33326 (store (arr!16011 a!3235) i!1204 k!2280) (size!16375 a!3235)))))

(assert (=> b!524695 e!305974))

(declare-fun res!321682 () Bool)

(assert (=> b!524695 (=> (not res!321682) (not e!305974))))

(assert (=> b!524695 (= res!321682 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240961 () Unit!16406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16406)

(assert (=> b!524695 (= lt!240961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524696 () Bool)

(declare-fun Unit!16409 () Unit!16406)

(assert (=> b!524696 (= e!305972 Unit!16409)))

(assert (= (and start!47728 res!321683) b!524689))

(assert (= (and b!524689 res!321678) b!524693))

(assert (= (and b!524693 res!321680) b!524694))

(assert (= (and b!524694 res!321687) b!524690))

(assert (= (and b!524690 res!321684) b!524684))

(assert (= (and b!524684 res!321686) b!524692))

(assert (= (and b!524692 res!321689) b!524683))

(assert (= (and b!524683 res!321681) b!524695))

(assert (= (and b!524695 res!321682) b!524687))

(assert (= (and b!524695 (not res!321679)) b!524691))

(assert (= (and b!524691 (not res!321688)) b!524685))

(assert (= (and b!524685 c!61808) b!524688))

(assert (= (and b!524685 (not c!61808)) b!524696))

(assert (= (and b!524688 res!321685) b!524686))

(declare-fun m!505351 () Bool)

(assert (=> b!524693 m!505351))

(assert (=> b!524693 m!505351))

(declare-fun m!505353 () Bool)

(assert (=> b!524693 m!505353))

(declare-fun m!505355 () Bool)

(assert (=> b!524692 m!505355))

(declare-fun m!505357 () Bool)

(assert (=> b!524683 m!505357))

(declare-fun m!505359 () Bool)

(assert (=> b!524695 m!505359))

(assert (=> b!524695 m!505351))

(declare-fun m!505361 () Bool)

(assert (=> b!524695 m!505361))

(declare-fun m!505363 () Bool)

(assert (=> b!524695 m!505363))

(declare-fun m!505365 () Bool)

(assert (=> b!524695 m!505365))

(assert (=> b!524695 m!505351))

(declare-fun m!505367 () Bool)

(assert (=> b!524695 m!505367))

(declare-fun m!505369 () Bool)

(assert (=> b!524695 m!505369))

(assert (=> b!524695 m!505351))

(declare-fun m!505371 () Bool)

(assert (=> b!524695 m!505371))

(declare-fun m!505373 () Bool)

(assert (=> b!524695 m!505373))

(assert (=> b!524687 m!505351))

(assert (=> b!524687 m!505351))

(declare-fun m!505375 () Bool)

(assert (=> b!524687 m!505375))

(declare-fun m!505377 () Bool)

(assert (=> b!524684 m!505377))

(declare-fun m!505379 () Bool)

(assert (=> b!524685 m!505379))

(declare-fun m!505381 () Bool)

(assert (=> b!524685 m!505381))

(assert (=> b!524685 m!505351))

(declare-fun m!505383 () Bool)

(assert (=> start!47728 m!505383))

(declare-fun m!505385 () Bool)

(assert (=> start!47728 m!505385))

(declare-fun m!505387 () Bool)

(assert (=> b!524690 m!505387))

(declare-fun m!505389 () Bool)

(assert (=> b!524694 m!505389))

(declare-fun m!505391 () Bool)

(assert (=> b!524688 m!505391))

(declare-fun m!505393 () Bool)

(assert (=> b!524688 m!505393))

(push 1)

