; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47160 () Bool)

(assert start!47160)

(declare-fun b!519100 () Bool)

(declare-fun res!317817 () Bool)

(declare-fun e!302901 () Bool)

(assert (=> b!519100 (=> res!317817 e!302901)))

(declare-datatypes ((SeekEntryResult!4399 0))(
  ( (MissingZero!4399 (index!19790 (_ BitVec 32))) (Found!4399 (index!19791 (_ BitVec 32))) (Intermediate!4399 (undefined!5211 Bool) (index!19792 (_ BitVec 32)) (x!48793 (_ BitVec 32))) (Undefined!4399) (MissingVacant!4399 (index!19793 (_ BitVec 32))) )
))
(declare-fun lt!237747 () SeekEntryResult!4399)

(get-info :version)

(assert (=> b!519100 (= res!317817 (or (undefined!5211 lt!237747) (not ((_ is Intermediate!4399) lt!237747))))))

(declare-fun b!519101 () Bool)

(declare-fun res!317824 () Bool)

(declare-fun e!302900 () Bool)

(assert (=> b!519101 (=> (not res!317824) (not e!302900))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33135 0))(
  ( (array!33136 (arr!15925 (Array (_ BitVec 32) (_ BitVec 64))) (size!16289 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33135)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!519101 (= res!317824 (and (= (size!16289 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16289 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16289 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519102 () Bool)

(declare-fun res!317820 () Bool)

(assert (=> b!519102 (=> (not res!317820) (not e!302900))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519102 (= res!317820 (validKeyInArray!0 k0!2280))))

(declare-fun b!519103 () Bool)

(declare-fun e!302899 () Bool)

(assert (=> b!519103 (= e!302899 false)))

(declare-fun b!519104 () Bool)

(declare-fun e!302897 () Bool)

(assert (=> b!519104 (= e!302897 (not e!302901))))

(declare-fun res!317822 () Bool)

(assert (=> b!519104 (=> res!317822 e!302901)))

(declare-fun lt!237741 () (_ BitVec 64))

(declare-fun lt!237748 () array!33135)

(declare-fun lt!237745 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33135 (_ BitVec 32)) SeekEntryResult!4399)

(assert (=> b!519104 (= res!317822 (= lt!237747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237745 lt!237741 lt!237748 mask!3524)))))

(declare-fun lt!237746 () (_ BitVec 32))

(assert (=> b!519104 (= lt!237747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237746 (select (arr!15925 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519104 (= lt!237745 (toIndex!0 lt!237741 mask!3524))))

(assert (=> b!519104 (= lt!237741 (select (store (arr!15925 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!519104 (= lt!237746 (toIndex!0 (select (arr!15925 a!3235) j!176) mask!3524))))

(assert (=> b!519104 (= lt!237748 (array!33136 (store (arr!15925 a!3235) i!1204 k0!2280) (size!16289 a!3235)))))

(declare-fun e!302902 () Bool)

(assert (=> b!519104 e!302902))

(declare-fun res!317827 () Bool)

(assert (=> b!519104 (=> (not res!317827) (not e!302902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33135 (_ BitVec 32)) Bool)

(assert (=> b!519104 (= res!317827 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16062 0))(
  ( (Unit!16063) )
))
(declare-fun lt!237742 () Unit!16062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16062)

(assert (=> b!519104 (= lt!237742 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519105 () Bool)

(declare-fun res!317828 () Bool)

(assert (=> b!519105 (=> (not res!317828) (not e!302897))))

(assert (=> b!519105 (= res!317828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519106 () Bool)

(declare-fun e!302896 () Unit!16062)

(declare-fun Unit!16064 () Unit!16062)

(assert (=> b!519106 (= e!302896 Unit!16064)))

(declare-fun lt!237744 () Unit!16062)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33135 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16062)

(assert (=> b!519106 (= lt!237744 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!237746 #b00000000000000000000000000000000 (index!19792 lt!237747) (x!48793 lt!237747) mask!3524))))

(declare-fun res!317821 () Bool)

(assert (=> b!519106 (= res!317821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237746 lt!237741 lt!237748 mask!3524) (Intermediate!4399 false (index!19792 lt!237747) (x!48793 lt!237747))))))

(assert (=> b!519106 (=> (not res!317821) (not e!302899))))

(assert (=> b!519106 e!302899))

(declare-fun b!519107 () Bool)

(declare-fun res!317825 () Bool)

(assert (=> b!519107 (=> (not res!317825) (not e!302897))))

(declare-datatypes ((List!10136 0))(
  ( (Nil!10133) (Cons!10132 (h!11045 (_ BitVec 64)) (t!16372 List!10136)) )
))
(declare-fun arrayNoDuplicates!0 (array!33135 (_ BitVec 32) List!10136) Bool)

(assert (=> b!519107 (= res!317825 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10133))))

(declare-fun res!317819 () Bool)

(assert (=> start!47160 (=> (not res!317819) (not e!302900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47160 (= res!317819 (validMask!0 mask!3524))))

(assert (=> start!47160 e!302900))

(assert (=> start!47160 true))

(declare-fun array_inv!11699 (array!33135) Bool)

(assert (=> start!47160 (array_inv!11699 a!3235)))

(declare-fun b!519108 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33135 (_ BitVec 32)) SeekEntryResult!4399)

(assert (=> b!519108 (= e!302902 (= (seekEntryOrOpen!0 (select (arr!15925 a!3235) j!176) a!3235 mask!3524) (Found!4399 j!176)))))

(declare-fun b!519109 () Bool)

(declare-fun Unit!16065 () Unit!16062)

(assert (=> b!519109 (= e!302896 Unit!16065)))

(declare-fun b!519110 () Bool)

(assert (=> b!519110 (= e!302901 (or (= (select (arr!15925 a!3235) (index!19792 lt!237747)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15925 a!3235) (index!19792 lt!237747)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!237749 () Unit!16062)

(assert (=> b!519110 (= lt!237749 e!302896)))

(declare-fun c!60938 () Bool)

(assert (=> b!519110 (= c!60938 (= (select (arr!15925 a!3235) (index!19792 lt!237747)) (select (arr!15925 a!3235) j!176)))))

(assert (=> b!519110 (and (bvslt (x!48793 lt!237747) #b01111111111111111111111111111110) (or (= (select (arr!15925 a!3235) (index!19792 lt!237747)) (select (arr!15925 a!3235) j!176)) (= (select (arr!15925 a!3235) (index!19792 lt!237747)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15925 a!3235) (index!19792 lt!237747)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519111 () Bool)

(assert (=> b!519111 (= e!302900 e!302897)))

(declare-fun res!317823 () Bool)

(assert (=> b!519111 (=> (not res!317823) (not e!302897))))

(declare-fun lt!237743 () SeekEntryResult!4399)

(assert (=> b!519111 (= res!317823 (or (= lt!237743 (MissingZero!4399 i!1204)) (= lt!237743 (MissingVacant!4399 i!1204))))))

(assert (=> b!519111 (= lt!237743 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!519112 () Bool)

(declare-fun res!317826 () Bool)

(assert (=> b!519112 (=> (not res!317826) (not e!302900))))

(assert (=> b!519112 (= res!317826 (validKeyInArray!0 (select (arr!15925 a!3235) j!176)))))

(declare-fun b!519113 () Bool)

(declare-fun res!317818 () Bool)

(assert (=> b!519113 (=> (not res!317818) (not e!302900))))

(declare-fun arrayContainsKey!0 (array!33135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519113 (= res!317818 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!47160 res!317819) b!519101))

(assert (= (and b!519101 res!317824) b!519112))

(assert (= (and b!519112 res!317826) b!519102))

(assert (= (and b!519102 res!317820) b!519113))

(assert (= (and b!519113 res!317818) b!519111))

(assert (= (and b!519111 res!317823) b!519105))

(assert (= (and b!519105 res!317828) b!519107))

(assert (= (and b!519107 res!317825) b!519104))

(assert (= (and b!519104 res!317827) b!519108))

(assert (= (and b!519104 (not res!317822)) b!519100))

(assert (= (and b!519100 (not res!317817)) b!519110))

(assert (= (and b!519110 c!60938) b!519106))

(assert (= (and b!519110 (not c!60938)) b!519109))

(assert (= (and b!519106 res!317821) b!519103))

(declare-fun m!500329 () Bool)

(assert (=> b!519105 m!500329))

(declare-fun m!500331 () Bool)

(assert (=> b!519108 m!500331))

(assert (=> b!519108 m!500331))

(declare-fun m!500333 () Bool)

(assert (=> b!519108 m!500333))

(declare-fun m!500335 () Bool)

(assert (=> b!519104 m!500335))

(declare-fun m!500337 () Bool)

(assert (=> b!519104 m!500337))

(declare-fun m!500339 () Bool)

(assert (=> b!519104 m!500339))

(declare-fun m!500341 () Bool)

(assert (=> b!519104 m!500341))

(declare-fun m!500343 () Bool)

(assert (=> b!519104 m!500343))

(assert (=> b!519104 m!500331))

(declare-fun m!500345 () Bool)

(assert (=> b!519104 m!500345))

(assert (=> b!519104 m!500331))

(declare-fun m!500347 () Bool)

(assert (=> b!519104 m!500347))

(assert (=> b!519104 m!500331))

(declare-fun m!500349 () Bool)

(assert (=> b!519104 m!500349))

(assert (=> b!519112 m!500331))

(assert (=> b!519112 m!500331))

(declare-fun m!500351 () Bool)

(assert (=> b!519112 m!500351))

(declare-fun m!500353 () Bool)

(assert (=> b!519107 m!500353))

(declare-fun m!500355 () Bool)

(assert (=> b!519110 m!500355))

(assert (=> b!519110 m!500331))

(declare-fun m!500357 () Bool)

(assert (=> b!519113 m!500357))

(declare-fun m!500359 () Bool)

(assert (=> b!519111 m!500359))

(declare-fun m!500361 () Bool)

(assert (=> start!47160 m!500361))

(declare-fun m!500363 () Bool)

(assert (=> start!47160 m!500363))

(declare-fun m!500365 () Bool)

(assert (=> b!519106 m!500365))

(declare-fun m!500367 () Bool)

(assert (=> b!519106 m!500367))

(declare-fun m!500369 () Bool)

(assert (=> b!519102 m!500369))

(check-sat (not b!519105) (not b!519104) (not b!519113) (not b!519107) (not b!519111) (not b!519108) (not b!519102) (not b!519106) (not b!519112) (not start!47160))
(check-sat)
