; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45472 () Bool)

(assert start!45472)

(declare-fun b!500163 () Bool)

(declare-fun res!302160 () Bool)

(declare-fun e!293057 () Bool)

(assert (=> b!500163 (=> (not res!302160) (not e!293057))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32257 0))(
  ( (array!32258 (arr!15507 (Array (_ BitVec 32) (_ BitVec 64))) (size!15871 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32257)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!500163 (= res!302160 (and (= (size!15871 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15871 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15871 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500164 () Bool)

(declare-fun res!302158 () Bool)

(declare-fun e!293056 () Bool)

(assert (=> b!500164 (=> (not res!302158) (not e!293056))))

(declare-datatypes ((List!9718 0))(
  ( (Nil!9715) (Cons!9714 (h!10588 (_ BitVec 64)) (t!15954 List!9718)) )
))
(declare-fun arrayNoDuplicates!0 (array!32257 (_ BitVec 32) List!9718) Bool)

(assert (=> b!500164 (= res!302158 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9715))))

(declare-fun b!500165 () Bool)

(declare-fun res!302156 () Bool)

(assert (=> b!500165 (=> (not res!302156) (not e!293057))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500165 (= res!302156 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500166 () Bool)

(declare-fun e!293055 () Bool)

(assert (=> b!500166 (= e!293056 (not e!293055))))

(declare-fun res!302159 () Bool)

(assert (=> b!500166 (=> res!302159 e!293055)))

(declare-fun lt!227027 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3981 0))(
  ( (MissingZero!3981 (index!18106 (_ BitVec 32))) (Found!3981 (index!18107 (_ BitVec 32))) (Intermediate!3981 (undefined!4793 Bool) (index!18108 (_ BitVec 32)) (x!47173 (_ BitVec 32))) (Undefined!3981) (MissingVacant!3981 (index!18109 (_ BitVec 32))) )
))
(declare-fun lt!227023 () SeekEntryResult!3981)

(declare-fun lt!227030 () (_ BitVec 64))

(declare-fun lt!227026 () array!32257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32257 (_ BitVec 32)) SeekEntryResult!3981)

(assert (=> b!500166 (= res!302159 (= lt!227023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227027 lt!227030 lt!227026 mask!3524)))))

(declare-fun lt!227022 () (_ BitVec 32))

(assert (=> b!500166 (= lt!227023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227022 (select (arr!15507 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500166 (= lt!227027 (toIndex!0 lt!227030 mask!3524))))

(assert (=> b!500166 (= lt!227030 (select (store (arr!15507 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500166 (= lt!227022 (toIndex!0 (select (arr!15507 a!3235) j!176) mask!3524))))

(assert (=> b!500166 (= lt!227026 (array!32258 (store (arr!15507 a!3235) i!1204 k!2280) (size!15871 a!3235)))))

(declare-fun e!293053 () Bool)

(assert (=> b!500166 e!293053))

(declare-fun res!302165 () Bool)

(assert (=> b!500166 (=> (not res!302165) (not e!293053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32257 (_ BitVec 32)) Bool)

(assert (=> b!500166 (= res!302165 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15014 0))(
  ( (Unit!15015) )
))
(declare-fun lt!227021 () Unit!15014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15014)

(assert (=> b!500166 (= lt!227021 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500167 () Bool)

(declare-fun e!293058 () Bool)

(assert (=> b!500167 (= e!293055 e!293058)))

(declare-fun res!302161 () Bool)

(assert (=> b!500167 (=> res!302161 e!293058)))

(assert (=> b!500167 (= res!302161 (or (bvsgt #b00000000000000000000000000000000 (x!47173 lt!227023)) (bvsgt (x!47173 lt!227023) #b01111111111111111111111111111110) (bvslt lt!227022 #b00000000000000000000000000000000) (bvsge lt!227022 (size!15871 a!3235)) (bvslt (index!18108 lt!227023) #b00000000000000000000000000000000) (bvsge (index!18108 lt!227023) (size!15871 a!3235)) (not (= lt!227023 (Intermediate!3981 false (index!18108 lt!227023) (x!47173 lt!227023))))))))

(assert (=> b!500167 (and (or (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227029 () Unit!15014)

(declare-fun e!293054 () Unit!15014)

(assert (=> b!500167 (= lt!227029 e!293054)))

(declare-fun c!59282 () Bool)

(assert (=> b!500167 (= c!59282 (= (select (arr!15507 a!3235) (index!18108 lt!227023)) (select (arr!15507 a!3235) j!176)))))

(assert (=> b!500167 (and (bvslt (x!47173 lt!227023) #b01111111111111111111111111111110) (or (= (select (arr!15507 a!3235) (index!18108 lt!227023)) (select (arr!15507 a!3235) j!176)) (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15507 a!3235) (index!18108 lt!227023)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!302163 () Bool)

(assert (=> start!45472 (=> (not res!302163) (not e!293057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45472 (= res!302163 (validMask!0 mask!3524))))

(assert (=> start!45472 e!293057))

(assert (=> start!45472 true))

(declare-fun array_inv!11281 (array!32257) Bool)

(assert (=> start!45472 (array_inv!11281 a!3235)))

(declare-fun b!500168 () Bool)

(declare-fun res!302162 () Bool)

(assert (=> b!500168 (=> res!302162 e!293055)))

(assert (=> b!500168 (= res!302162 (or (undefined!4793 lt!227023) (not (is-Intermediate!3981 lt!227023))))))

(declare-fun b!500169 () Bool)

(declare-fun res!302155 () Bool)

(assert (=> b!500169 (=> (not res!302155) (not e!293056))))

(assert (=> b!500169 (= res!302155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500170 () Bool)

(declare-fun e!293052 () Bool)

(assert (=> b!500170 (= e!293052 false)))

(declare-fun b!500171 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32257 (_ BitVec 32)) SeekEntryResult!3981)

(assert (=> b!500171 (= e!293053 (= (seekEntryOrOpen!0 (select (arr!15507 a!3235) j!176) a!3235 mask!3524) (Found!3981 j!176)))))

(declare-fun b!500172 () Bool)

(declare-fun Unit!15016 () Unit!15014)

(assert (=> b!500172 (= e!293054 Unit!15016)))

(declare-fun lt!227028 () Unit!15014)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32257 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15014)

(assert (=> b!500172 (= lt!227028 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227022 #b00000000000000000000000000000000 (index!18108 lt!227023) (x!47173 lt!227023) mask!3524))))

(declare-fun res!302154 () Bool)

(assert (=> b!500172 (= res!302154 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227022 lt!227030 lt!227026 mask!3524) (Intermediate!3981 false (index!18108 lt!227023) (x!47173 lt!227023))))))

(assert (=> b!500172 (=> (not res!302154) (not e!293052))))

(assert (=> b!500172 e!293052))

(declare-fun b!500173 () Bool)

(declare-fun res!302153 () Bool)

(assert (=> b!500173 (=> (not res!302153) (not e!293057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500173 (= res!302153 (validKeyInArray!0 (select (arr!15507 a!3235) j!176)))))

(declare-fun b!500174 () Bool)

(declare-fun Unit!15017 () Unit!15014)

(assert (=> b!500174 (= e!293054 Unit!15017)))

(declare-fun b!500175 () Bool)

(declare-fun res!302157 () Bool)

(assert (=> b!500175 (=> (not res!302157) (not e!293057))))

(assert (=> b!500175 (= res!302157 (validKeyInArray!0 k!2280))))

(declare-fun b!500176 () Bool)

(assert (=> b!500176 (= e!293057 e!293056)))

(declare-fun res!302164 () Bool)

(assert (=> b!500176 (=> (not res!302164) (not e!293056))))

(declare-fun lt!227024 () SeekEntryResult!3981)

(assert (=> b!500176 (= res!302164 (or (= lt!227024 (MissingZero!3981 i!1204)) (= lt!227024 (MissingVacant!3981 i!1204))))))

(assert (=> b!500176 (= lt!227024 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!500177 () Bool)

(assert (=> b!500177 (= e!293058 true)))

(declare-fun lt!227025 () SeekEntryResult!3981)

(assert (=> b!500177 (= lt!227025 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227022 lt!227030 lt!227026 mask!3524))))

(assert (= (and start!45472 res!302163) b!500163))

(assert (= (and b!500163 res!302160) b!500173))

(assert (= (and b!500173 res!302153) b!500175))

(assert (= (and b!500175 res!302157) b!500165))

(assert (= (and b!500165 res!302156) b!500176))

(assert (= (and b!500176 res!302164) b!500169))

(assert (= (and b!500169 res!302155) b!500164))

(assert (= (and b!500164 res!302158) b!500166))

(assert (= (and b!500166 res!302165) b!500171))

(assert (= (and b!500166 (not res!302159)) b!500168))

(assert (= (and b!500168 (not res!302162)) b!500167))

(assert (= (and b!500167 c!59282) b!500172))

(assert (= (and b!500167 (not c!59282)) b!500174))

(assert (= (and b!500172 res!302154) b!500170))

(assert (= (and b!500167 (not res!302161)) b!500177))

(declare-fun m!481339 () Bool)

(assert (=> start!45472 m!481339))

(declare-fun m!481341 () Bool)

(assert (=> start!45472 m!481341))

(declare-fun m!481343 () Bool)

(assert (=> b!500169 m!481343))

(declare-fun m!481345 () Bool)

(assert (=> b!500167 m!481345))

(declare-fun m!481347 () Bool)

(assert (=> b!500167 m!481347))

(declare-fun m!481349 () Bool)

(assert (=> b!500177 m!481349))

(declare-fun m!481351 () Bool)

(assert (=> b!500164 m!481351))

(declare-fun m!481353 () Bool)

(assert (=> b!500176 m!481353))

(declare-fun m!481355 () Bool)

(assert (=> b!500172 m!481355))

(assert (=> b!500172 m!481349))

(assert (=> b!500171 m!481347))

(assert (=> b!500171 m!481347))

(declare-fun m!481357 () Bool)

(assert (=> b!500171 m!481357))

(declare-fun m!481359 () Bool)

(assert (=> b!500166 m!481359))

(declare-fun m!481361 () Bool)

(assert (=> b!500166 m!481361))

(assert (=> b!500166 m!481347))

(declare-fun m!481363 () Bool)

(assert (=> b!500166 m!481363))

(assert (=> b!500166 m!481347))

(declare-fun m!481365 () Bool)

(assert (=> b!500166 m!481365))

(declare-fun m!481367 () Bool)

(assert (=> b!500166 m!481367))

(declare-fun m!481369 () Bool)

(assert (=> b!500166 m!481369))

(assert (=> b!500166 m!481347))

(declare-fun m!481371 () Bool)

(assert (=> b!500166 m!481371))

(declare-fun m!481373 () Bool)

(assert (=> b!500166 m!481373))

(declare-fun m!481375 () Bool)

(assert (=> b!500175 m!481375))

(declare-fun m!481377 () Bool)

(assert (=> b!500165 m!481377))

(assert (=> b!500173 m!481347))

(assert (=> b!500173 m!481347))

(declare-fun m!481379 () Bool)

(assert (=> b!500173 m!481379))

(push 1)

