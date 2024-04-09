; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45594 () Bool)

(assert start!45594)

(declare-fun b!501625 () Bool)

(declare-fun e!293862 () Bool)

(assert (=> b!501625 (= e!293862 true)))

(declare-fun lt!227946 () (_ BitVec 32))

(declare-fun lt!227945 () (_ BitVec 64))

(declare-datatypes ((array!32310 0))(
  ( (array!32311 (arr!15532 (Array (_ BitVec 32) (_ BitVec 64))) (size!15896 (_ BitVec 32))) )
))
(declare-fun lt!227948 () array!32310)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4006 0))(
  ( (MissingZero!4006 (index!18212 (_ BitVec 32))) (Found!4006 (index!18213 (_ BitVec 32))) (Intermediate!4006 (undefined!4818 Bool) (index!18214 (_ BitVec 32)) (x!47274 (_ BitVec 32))) (Undefined!4006) (MissingVacant!4006 (index!18215 (_ BitVec 32))) )
))
(declare-fun lt!227941 () SeekEntryResult!4006)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32310 (_ BitVec 32)) SeekEntryResult!4006)

(assert (=> b!501625 (= lt!227941 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227946 lt!227945 lt!227948 mask!3524))))

(declare-fun b!501626 () Bool)

(declare-fun res!303277 () Bool)

(declare-fun e!293865 () Bool)

(assert (=> b!501626 (=> (not res!303277) (not e!293865))))

(declare-fun a!3235 () array!32310)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32310 (_ BitVec 32)) Bool)

(assert (=> b!501626 (= res!303277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501627 () Bool)

(declare-datatypes ((Unit!15114 0))(
  ( (Unit!15115) )
))
(declare-fun e!293861 () Unit!15114)

(declare-fun Unit!15116 () Unit!15114)

(assert (=> b!501627 (= e!293861 Unit!15116)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!227938 () SeekEntryResult!4006)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!227940 () Unit!15114)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32310 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15114)

(assert (=> b!501627 (= lt!227940 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227946 #b00000000000000000000000000000000 (index!18214 lt!227938) (x!47274 lt!227938) mask!3524))))

(declare-fun res!303268 () Bool)

(assert (=> b!501627 (= res!303268 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227946 lt!227945 lt!227948 mask!3524) (Intermediate!4006 false (index!18214 lt!227938) (x!47274 lt!227938))))))

(declare-fun e!293860 () Bool)

(assert (=> b!501627 (=> (not res!303268) (not e!293860))))

(assert (=> b!501627 e!293860))

(declare-fun b!501628 () Bool)

(declare-fun Unit!15117 () Unit!15114)

(assert (=> b!501628 (= e!293861 Unit!15117)))

(declare-fun b!501629 () Bool)

(declare-fun res!303278 () Bool)

(assert (=> b!501629 (=> res!303278 e!293862)))

(declare-fun e!293859 () Bool)

(assert (=> b!501629 (= res!303278 e!293859)))

(declare-fun res!303269 () Bool)

(assert (=> b!501629 (=> (not res!303269) (not e!293859))))

(assert (=> b!501629 (= res!303269 (bvsgt #b00000000000000000000000000000000 (x!47274 lt!227938)))))

(declare-fun b!501630 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32310 (_ BitVec 32)) SeekEntryResult!4006)

(assert (=> b!501630 (= e!293859 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227946 (index!18214 lt!227938) (select (arr!15532 a!3235) j!176) a!3235 mask!3524) (Found!4006 j!176))))))

(declare-fun b!501631 () Bool)

(declare-fun res!303271 () Bool)

(declare-fun e!293866 () Bool)

(assert (=> b!501631 (=> (not res!303271) (not e!293866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501631 (= res!303271 (validKeyInArray!0 k0!2280))))

(declare-fun b!501632 () Bool)

(assert (=> b!501632 (= e!293860 false)))

(declare-fun b!501633 () Bool)

(declare-fun e!293863 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32310 (_ BitVec 32)) SeekEntryResult!4006)

(assert (=> b!501633 (= e!293863 (= (seekEntryOrOpen!0 (select (arr!15532 a!3235) j!176) a!3235 mask!3524) (Found!4006 j!176)))))

(declare-fun b!501634 () Bool)

(declare-fun res!303270 () Bool)

(declare-fun e!293864 () Bool)

(assert (=> b!501634 (=> res!303270 e!293864)))

(get-info :version)

(assert (=> b!501634 (= res!303270 (or (undefined!4818 lt!227938) (not ((_ is Intermediate!4006) lt!227938))))))

(declare-fun b!501635 () Bool)

(declare-fun res!303273 () Bool)

(assert (=> b!501635 (=> (not res!303273) (not e!293866))))

(assert (=> b!501635 (= res!303273 (and (= (size!15896 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15896 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15896 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501636 () Bool)

(declare-fun res!303272 () Bool)

(assert (=> b!501636 (=> (not res!303272) (not e!293866))))

(declare-fun arrayContainsKey!0 (array!32310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501636 (= res!303272 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501637 () Bool)

(assert (=> b!501637 (= e!293866 e!293865)))

(declare-fun res!303274 () Bool)

(assert (=> b!501637 (=> (not res!303274) (not e!293865))))

(declare-fun lt!227943 () SeekEntryResult!4006)

(assert (=> b!501637 (= res!303274 (or (= lt!227943 (MissingZero!4006 i!1204)) (= lt!227943 (MissingVacant!4006 i!1204))))))

(assert (=> b!501637 (= lt!227943 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!303275 () Bool)

(assert (=> start!45594 (=> (not res!303275) (not e!293866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45594 (= res!303275 (validMask!0 mask!3524))))

(assert (=> start!45594 e!293866))

(assert (=> start!45594 true))

(declare-fun array_inv!11306 (array!32310) Bool)

(assert (=> start!45594 (array_inv!11306 a!3235)))

(declare-fun b!501638 () Bool)

(declare-fun res!303266 () Bool)

(assert (=> b!501638 (=> (not res!303266) (not e!293865))))

(declare-datatypes ((List!9743 0))(
  ( (Nil!9740) (Cons!9739 (h!10616 (_ BitVec 64)) (t!15979 List!9743)) )
))
(declare-fun arrayNoDuplicates!0 (array!32310 (_ BitVec 32) List!9743) Bool)

(assert (=> b!501638 (= res!303266 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9740))))

(declare-fun b!501639 () Bool)

(assert (=> b!501639 (= e!293865 (not e!293864))))

(declare-fun res!303265 () Bool)

(assert (=> b!501639 (=> res!303265 e!293864)))

(declare-fun lt!227939 () (_ BitVec 32))

(assert (=> b!501639 (= res!303265 (= lt!227938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227939 lt!227945 lt!227948 mask!3524)))))

(assert (=> b!501639 (= lt!227938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227946 (select (arr!15532 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501639 (= lt!227939 (toIndex!0 lt!227945 mask!3524))))

(assert (=> b!501639 (= lt!227945 (select (store (arr!15532 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!501639 (= lt!227946 (toIndex!0 (select (arr!15532 a!3235) j!176) mask!3524))))

(assert (=> b!501639 (= lt!227948 (array!32311 (store (arr!15532 a!3235) i!1204 k0!2280) (size!15896 a!3235)))))

(assert (=> b!501639 e!293863))

(declare-fun res!303267 () Bool)

(assert (=> b!501639 (=> (not res!303267) (not e!293863))))

(assert (=> b!501639 (= res!303267 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227947 () Unit!15114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32310 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15114)

(assert (=> b!501639 (= lt!227947 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501640 () Bool)

(declare-fun res!303276 () Bool)

(assert (=> b!501640 (=> (not res!303276) (not e!293866))))

(assert (=> b!501640 (= res!303276 (validKeyInArray!0 (select (arr!15532 a!3235) j!176)))))

(declare-fun b!501641 () Bool)

(assert (=> b!501641 (= e!293864 e!293862)))

(declare-fun res!303264 () Bool)

(assert (=> b!501641 (=> res!303264 e!293862)))

(assert (=> b!501641 (= res!303264 (or (bvsgt (x!47274 lt!227938) #b01111111111111111111111111111110) (bvslt lt!227946 #b00000000000000000000000000000000) (bvsge lt!227946 (size!15896 a!3235)) (bvslt (index!18214 lt!227938) #b00000000000000000000000000000000) (bvsge (index!18214 lt!227938) (size!15896 a!3235)) (not (= lt!227938 (Intermediate!4006 false (index!18214 lt!227938) (x!47274 lt!227938))))))))

(assert (=> b!501641 (= (index!18214 lt!227938) i!1204)))

(declare-fun lt!227942 () Unit!15114)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32310 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15114)

(assert (=> b!501641 (= lt!227942 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!227946 #b00000000000000000000000000000000 (index!18214 lt!227938) (x!47274 lt!227938) mask!3524))))

(assert (=> b!501641 (and (or (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227944 () Unit!15114)

(assert (=> b!501641 (= lt!227944 e!293861)))

(declare-fun c!59459 () Bool)

(assert (=> b!501641 (= c!59459 (= (select (arr!15532 a!3235) (index!18214 lt!227938)) (select (arr!15532 a!3235) j!176)))))

(assert (=> b!501641 (and (bvslt (x!47274 lt!227938) #b01111111111111111111111111111110) (or (= (select (arr!15532 a!3235) (index!18214 lt!227938)) (select (arr!15532 a!3235) j!176)) (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15532 a!3235) (index!18214 lt!227938)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45594 res!303275) b!501635))

(assert (= (and b!501635 res!303273) b!501640))

(assert (= (and b!501640 res!303276) b!501631))

(assert (= (and b!501631 res!303271) b!501636))

(assert (= (and b!501636 res!303272) b!501637))

(assert (= (and b!501637 res!303274) b!501626))

(assert (= (and b!501626 res!303277) b!501638))

(assert (= (and b!501638 res!303266) b!501639))

(assert (= (and b!501639 res!303267) b!501633))

(assert (= (and b!501639 (not res!303265)) b!501634))

(assert (= (and b!501634 (not res!303270)) b!501641))

(assert (= (and b!501641 c!59459) b!501627))

(assert (= (and b!501641 (not c!59459)) b!501628))

(assert (= (and b!501627 res!303268) b!501632))

(assert (= (and b!501641 (not res!303264)) b!501629))

(assert (= (and b!501629 res!303269) b!501630))

(assert (= (and b!501629 (not res!303278)) b!501625))

(declare-fun m!482657 () Bool)

(assert (=> b!501626 m!482657))

(declare-fun m!482659 () Bool)

(assert (=> b!501627 m!482659))

(declare-fun m!482661 () Bool)

(assert (=> b!501627 m!482661))

(declare-fun m!482663 () Bool)

(assert (=> b!501639 m!482663))

(declare-fun m!482665 () Bool)

(assert (=> b!501639 m!482665))

(declare-fun m!482667 () Bool)

(assert (=> b!501639 m!482667))

(declare-fun m!482669 () Bool)

(assert (=> b!501639 m!482669))

(declare-fun m!482671 () Bool)

(assert (=> b!501639 m!482671))

(declare-fun m!482673 () Bool)

(assert (=> b!501639 m!482673))

(declare-fun m!482675 () Bool)

(assert (=> b!501639 m!482675))

(assert (=> b!501639 m!482671))

(declare-fun m!482677 () Bool)

(assert (=> b!501639 m!482677))

(assert (=> b!501639 m!482671))

(declare-fun m!482679 () Bool)

(assert (=> b!501639 m!482679))

(declare-fun m!482681 () Bool)

(assert (=> start!45594 m!482681))

(declare-fun m!482683 () Bool)

(assert (=> start!45594 m!482683))

(declare-fun m!482685 () Bool)

(assert (=> b!501636 m!482685))

(declare-fun m!482687 () Bool)

(assert (=> b!501631 m!482687))

(declare-fun m!482689 () Bool)

(assert (=> b!501637 m!482689))

(assert (=> b!501630 m!482671))

(assert (=> b!501630 m!482671))

(declare-fun m!482691 () Bool)

(assert (=> b!501630 m!482691))

(assert (=> b!501625 m!482661))

(assert (=> b!501633 m!482671))

(assert (=> b!501633 m!482671))

(declare-fun m!482693 () Bool)

(assert (=> b!501633 m!482693))

(declare-fun m!482695 () Bool)

(assert (=> b!501638 m!482695))

(assert (=> b!501640 m!482671))

(assert (=> b!501640 m!482671))

(declare-fun m!482697 () Bool)

(assert (=> b!501640 m!482697))

(declare-fun m!482699 () Bool)

(assert (=> b!501641 m!482699))

(declare-fun m!482701 () Bool)

(assert (=> b!501641 m!482701))

(assert (=> b!501641 m!482671))

(check-sat (not b!501639) (not b!501633) (not b!501631) (not start!45594) (not b!501637) (not b!501636) (not b!501627) (not b!501625) (not b!501638) (not b!501630) (not b!501640) (not b!501626) (not b!501641))
(check-sat)
