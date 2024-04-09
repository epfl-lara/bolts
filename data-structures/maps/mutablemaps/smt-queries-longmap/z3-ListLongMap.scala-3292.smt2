; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45708 () Bool)

(assert start!45708)

(declare-fun b!504532 () Bool)

(declare-fun res!305834 () Bool)

(declare-fun e!295397 () Bool)

(assert (=> b!504532 (=> (not res!305834) (not e!295397))))

(declare-datatypes ((array!32424 0))(
  ( (array!32425 (arr!15589 (Array (_ BitVec 32) (_ BitVec 64))) (size!15953 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32424)

(declare-datatypes ((List!9800 0))(
  ( (Nil!9797) (Cons!9796 (h!10673 (_ BitVec 64)) (t!16036 List!9800)) )
))
(declare-fun arrayNoDuplicates!0 (array!32424 (_ BitVec 32) List!9800) Bool)

(assert (=> b!504532 (= res!305834 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9797))))

(declare-fun b!504534 () Bool)

(declare-fun res!305835 () Bool)

(declare-fun e!295400 () Bool)

(assert (=> b!504534 (=> (not res!305835) (not e!295400))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504534 (= res!305835 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504535 () Bool)

(declare-fun e!295404 () Bool)

(assert (=> b!504535 (= e!295397 (not e!295404))))

(declare-fun res!305829 () Bool)

(assert (=> b!504535 (=> res!305829 e!295404)))

(declare-fun lt!229820 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!229821 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4063 0))(
  ( (MissingZero!4063 (index!18440 (_ BitVec 32))) (Found!4063 (index!18441 (_ BitVec 32))) (Intermediate!4063 (undefined!4875 Bool) (index!18442 (_ BitVec 32)) (x!47483 (_ BitVec 32))) (Undefined!4063) (MissingVacant!4063 (index!18443 (_ BitVec 32))) )
))
(declare-fun lt!229827 () SeekEntryResult!4063)

(declare-fun lt!229829 () array!32424)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32424 (_ BitVec 32)) SeekEntryResult!4063)

(assert (=> b!504535 (= res!305829 (= lt!229827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229821 lt!229820 lt!229829 mask!3524)))))

(declare-fun lt!229825 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!504535 (= lt!229827 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229825 (select (arr!15589 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504535 (= lt!229821 (toIndex!0 lt!229820 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504535 (= lt!229820 (select (store (arr!15589 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504535 (= lt!229825 (toIndex!0 (select (arr!15589 a!3235) j!176) mask!3524))))

(assert (=> b!504535 (= lt!229829 (array!32425 (store (arr!15589 a!3235) i!1204 k0!2280) (size!15953 a!3235)))))

(declare-fun e!295399 () Bool)

(assert (=> b!504535 e!295399))

(declare-fun res!305831 () Bool)

(assert (=> b!504535 (=> (not res!305831) (not e!295399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32424 (_ BitVec 32)) Bool)

(assert (=> b!504535 (= res!305831 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15342 0))(
  ( (Unit!15343) )
))
(declare-fun lt!229828 () Unit!15342)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15342)

(assert (=> b!504535 (= lt!229828 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun e!295403 () Bool)

(declare-fun b!504536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32424 (_ BitVec 32)) SeekEntryResult!4063)

(assert (=> b!504536 (= e!295403 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229825 (index!18442 lt!229827) (select (arr!15589 a!3235) j!176) a!3235 mask!3524) (Found!4063 j!176))))))

(declare-fun b!504537 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32424 (_ BitVec 32)) SeekEntryResult!4063)

(assert (=> b!504537 (= e!295399 (= (seekEntryOrOpen!0 (select (arr!15589 a!3235) j!176) a!3235 mask!3524) (Found!4063 j!176)))))

(declare-fun b!504538 () Bool)

(declare-fun e!295401 () Bool)

(assert (=> b!504538 (= e!295401 false)))

(declare-fun b!504539 () Bool)

(declare-fun e!295405 () Bool)

(assert (=> b!504539 (= e!295404 e!295405)))

(declare-fun res!305841 () Bool)

(assert (=> b!504539 (=> res!305841 e!295405)))

(assert (=> b!504539 (= res!305841 (or (bvsgt (x!47483 lt!229827) #b01111111111111111111111111111110) (bvslt lt!229825 #b00000000000000000000000000000000) (bvsge lt!229825 (size!15953 a!3235)) (bvslt (index!18442 lt!229827) #b00000000000000000000000000000000) (bvsge (index!18442 lt!229827) (size!15953 a!3235)) (not (= lt!229827 (Intermediate!4063 false (index!18442 lt!229827) (x!47483 lt!229827))))))))

(assert (=> b!504539 (= (index!18442 lt!229827) i!1204)))

(declare-fun lt!229826 () Unit!15342)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32424 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15342)

(assert (=> b!504539 (= lt!229826 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229825 #b00000000000000000000000000000000 (index!18442 lt!229827) (x!47483 lt!229827) mask!3524))))

(assert (=> b!504539 (and (or (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229823 () Unit!15342)

(declare-fun e!295402 () Unit!15342)

(assert (=> b!504539 (= lt!229823 e!295402)))

(declare-fun c!59630 () Bool)

(assert (=> b!504539 (= c!59630 (= (select (arr!15589 a!3235) (index!18442 lt!229827)) (select (arr!15589 a!3235) j!176)))))

(assert (=> b!504539 (and (bvslt (x!47483 lt!229827) #b01111111111111111111111111111110) (or (= (select (arr!15589 a!3235) (index!18442 lt!229827)) (select (arr!15589 a!3235) j!176)) (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15589 a!3235) (index!18442 lt!229827)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504540 () Bool)

(declare-fun res!305832 () Bool)

(assert (=> b!504540 (=> res!305832 e!295404)))

(get-info :version)

(assert (=> b!504540 (= res!305832 (or (undefined!4875 lt!229827) (not ((_ is Intermediate!4063) lt!229827))))))

(declare-fun b!504541 () Bool)

(declare-fun res!305842 () Bool)

(assert (=> b!504541 (=> (not res!305842) (not e!295397))))

(assert (=> b!504541 (= res!305842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504542 () Bool)

(assert (=> b!504542 (= e!295400 e!295397)))

(declare-fun res!305843 () Bool)

(assert (=> b!504542 (=> (not res!305843) (not e!295397))))

(declare-fun lt!229819 () SeekEntryResult!4063)

(assert (=> b!504542 (= res!305843 (or (= lt!229819 (MissingZero!4063 i!1204)) (= lt!229819 (MissingVacant!4063 i!1204))))))

(assert (=> b!504542 (= lt!229819 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!305840 () Bool)

(assert (=> start!45708 (=> (not res!305840) (not e!295400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45708 (= res!305840 (validMask!0 mask!3524))))

(assert (=> start!45708 e!295400))

(assert (=> start!45708 true))

(declare-fun array_inv!11363 (array!32424) Bool)

(assert (=> start!45708 (array_inv!11363 a!3235)))

(declare-fun b!504533 () Bool)

(declare-fun res!305837 () Bool)

(assert (=> b!504533 (=> res!305837 e!295405)))

(assert (=> b!504533 (= res!305837 e!295403)))

(declare-fun res!305830 () Bool)

(assert (=> b!504533 (=> (not res!305830) (not e!295403))))

(assert (=> b!504533 (= res!305830 (bvsgt #b00000000000000000000000000000000 (x!47483 lt!229827)))))

(declare-fun b!504543 () Bool)

(declare-fun Unit!15344 () Unit!15342)

(assert (=> b!504543 (= e!295402 Unit!15344)))

(declare-fun b!504544 () Bool)

(declare-fun res!305833 () Bool)

(assert (=> b!504544 (=> (not res!305833) (not e!295400))))

(assert (=> b!504544 (= res!305833 (and (= (size!15953 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15953 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15953 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504545 () Bool)

(assert (=> b!504545 (= e!295405 true)))

(declare-fun lt!229822 () SeekEntryResult!4063)

(assert (=> b!504545 (= lt!229822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229825 lt!229820 lt!229829 mask!3524))))

(declare-fun b!504546 () Bool)

(declare-fun Unit!15345 () Unit!15342)

(assert (=> b!504546 (= e!295402 Unit!15345)))

(declare-fun lt!229824 () Unit!15342)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32424 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15342)

(assert (=> b!504546 (= lt!229824 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229825 #b00000000000000000000000000000000 (index!18442 lt!229827) (x!47483 lt!229827) mask!3524))))

(declare-fun res!305836 () Bool)

(assert (=> b!504546 (= res!305836 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229825 lt!229820 lt!229829 mask!3524) (Intermediate!4063 false (index!18442 lt!229827) (x!47483 lt!229827))))))

(assert (=> b!504546 (=> (not res!305836) (not e!295401))))

(assert (=> b!504546 e!295401))

(declare-fun b!504547 () Bool)

(declare-fun res!305839 () Bool)

(assert (=> b!504547 (=> (not res!305839) (not e!295400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504547 (= res!305839 (validKeyInArray!0 k0!2280))))

(declare-fun b!504548 () Bool)

(declare-fun res!305838 () Bool)

(assert (=> b!504548 (=> (not res!305838) (not e!295400))))

(assert (=> b!504548 (= res!305838 (validKeyInArray!0 (select (arr!15589 a!3235) j!176)))))

(assert (= (and start!45708 res!305840) b!504544))

(assert (= (and b!504544 res!305833) b!504548))

(assert (= (and b!504548 res!305838) b!504547))

(assert (= (and b!504547 res!305839) b!504534))

(assert (= (and b!504534 res!305835) b!504542))

(assert (= (and b!504542 res!305843) b!504541))

(assert (= (and b!504541 res!305842) b!504532))

(assert (= (and b!504532 res!305834) b!504535))

(assert (= (and b!504535 res!305831) b!504537))

(assert (= (and b!504535 (not res!305829)) b!504540))

(assert (= (and b!504540 (not res!305832)) b!504539))

(assert (= (and b!504539 c!59630) b!504546))

(assert (= (and b!504539 (not c!59630)) b!504543))

(assert (= (and b!504546 res!305836) b!504538))

(assert (= (and b!504539 (not res!305841)) b!504533))

(assert (= (and b!504533 res!305830) b!504536))

(assert (= (and b!504533 (not res!305837)) b!504545))

(declare-fun m!485279 () Bool)

(assert (=> b!504546 m!485279))

(declare-fun m!485281 () Bool)

(assert (=> b!504546 m!485281))

(declare-fun m!485283 () Bool)

(assert (=> b!504532 m!485283))

(declare-fun m!485285 () Bool)

(assert (=> b!504547 m!485285))

(declare-fun m!485287 () Bool)

(assert (=> b!504536 m!485287))

(assert (=> b!504536 m!485287))

(declare-fun m!485289 () Bool)

(assert (=> b!504536 m!485289))

(declare-fun m!485291 () Bool)

(assert (=> b!504541 m!485291))

(declare-fun m!485293 () Bool)

(assert (=> b!504534 m!485293))

(declare-fun m!485295 () Bool)

(assert (=> b!504542 m!485295))

(assert (=> b!504548 m!485287))

(assert (=> b!504548 m!485287))

(declare-fun m!485297 () Bool)

(assert (=> b!504548 m!485297))

(declare-fun m!485299 () Bool)

(assert (=> b!504539 m!485299))

(declare-fun m!485301 () Bool)

(assert (=> b!504539 m!485301))

(assert (=> b!504539 m!485287))

(declare-fun m!485303 () Bool)

(assert (=> start!45708 m!485303))

(declare-fun m!485305 () Bool)

(assert (=> start!45708 m!485305))

(assert (=> b!504545 m!485281))

(assert (=> b!504537 m!485287))

(assert (=> b!504537 m!485287))

(declare-fun m!485307 () Bool)

(assert (=> b!504537 m!485307))

(declare-fun m!485309 () Bool)

(assert (=> b!504535 m!485309))

(declare-fun m!485311 () Bool)

(assert (=> b!504535 m!485311))

(declare-fun m!485313 () Bool)

(assert (=> b!504535 m!485313))

(assert (=> b!504535 m!485287))

(declare-fun m!485315 () Bool)

(assert (=> b!504535 m!485315))

(declare-fun m!485317 () Bool)

(assert (=> b!504535 m!485317))

(declare-fun m!485319 () Bool)

(assert (=> b!504535 m!485319))

(declare-fun m!485321 () Bool)

(assert (=> b!504535 m!485321))

(assert (=> b!504535 m!485287))

(assert (=> b!504535 m!485287))

(declare-fun m!485323 () Bool)

(assert (=> b!504535 m!485323))

(check-sat (not b!504547) (not b!504545) (not b!504539) (not b!504541) (not b!504548) (not b!504534) (not b!504536) (not b!504532) (not b!504542) (not b!504535) (not b!504546) (not start!45708) (not b!504537))
(check-sat)
