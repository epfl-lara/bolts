; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45636 () Bool)

(assert start!45636)

(declare-fun b!502696 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32352 0))(
  ( (array!32353 (arr!15553 (Array (_ BitVec 32) (_ BitVec 64))) (size!15917 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32352)

(declare-fun e!294431 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4027 0))(
  ( (MissingZero!4027 (index!18296 (_ BitVec 32))) (Found!4027 (index!18297 (_ BitVec 32))) (Intermediate!4027 (undefined!4839 Bool) (index!18298 (_ BitVec 32)) (x!47351 (_ BitVec 32))) (Undefined!4027) (MissingVacant!4027 (index!18299 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32352 (_ BitVec 32)) SeekEntryResult!4027)

(assert (=> b!502696 (= e!294431 (= (seekEntryOrOpen!0 (select (arr!15553 a!3235) j!176) a!3235 mask!3524) (Found!4027 j!176)))))

(declare-fun b!502697 () Bool)

(declare-fun res!304222 () Bool)

(declare-fun e!294428 () Bool)

(assert (=> b!502697 (=> (not res!304222) (not e!294428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502697 (= res!304222 (validKeyInArray!0 (select (arr!15553 a!3235) j!176)))))

(declare-fun b!502698 () Bool)

(declare-fun e!294432 () Bool)

(declare-fun e!294430 () Bool)

(assert (=> b!502698 (= e!294432 (not e!294430))))

(declare-fun res!304218 () Bool)

(assert (=> b!502698 (=> res!304218 e!294430)))

(declare-fun lt!228631 () SeekEntryResult!4027)

(declare-fun lt!228632 () array!32352)

(declare-fun lt!228633 () (_ BitVec 32))

(declare-fun lt!228634 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32352 (_ BitVec 32)) SeekEntryResult!4027)

(assert (=> b!502698 (= res!304218 (= lt!228631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228633 lt!228634 lt!228632 mask!3524)))))

(declare-fun lt!228636 () (_ BitVec 32))

(assert (=> b!502698 (= lt!228631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228636 (select (arr!15553 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502698 (= lt!228633 (toIndex!0 lt!228634 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502698 (= lt!228634 (select (store (arr!15553 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502698 (= lt!228636 (toIndex!0 (select (arr!15553 a!3235) j!176) mask!3524))))

(assert (=> b!502698 (= lt!228632 (array!32353 (store (arr!15553 a!3235) i!1204 k0!2280) (size!15917 a!3235)))))

(assert (=> b!502698 e!294431))

(declare-fun res!304221 () Bool)

(assert (=> b!502698 (=> (not res!304221) (not e!294431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32352 (_ BitVec 32)) Bool)

(assert (=> b!502698 (= res!304221 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15198 0))(
  ( (Unit!15199) )
))
(declare-fun lt!228638 () Unit!15198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15198)

(assert (=> b!502698 (= lt!228638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502699 () Bool)

(declare-fun e!294425 () Unit!15198)

(declare-fun Unit!15200 () Unit!15198)

(assert (=> b!502699 (= e!294425 Unit!15200)))

(declare-fun lt!228641 () Unit!15198)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32352 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15198)

(assert (=> b!502699 (= lt!228641 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228636 #b00000000000000000000000000000000 (index!18298 lt!228631) (x!47351 lt!228631) mask!3524))))

(declare-fun res!304209 () Bool)

(assert (=> b!502699 (= res!304209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228636 lt!228634 lt!228632 mask!3524) (Intermediate!4027 false (index!18298 lt!228631) (x!47351 lt!228631))))))

(declare-fun e!294433 () Bool)

(assert (=> b!502699 (=> (not res!304209) (not e!294433))))

(assert (=> b!502699 e!294433))

(declare-fun b!502701 () Bool)

(declare-fun Unit!15201 () Unit!15198)

(assert (=> b!502701 (= e!294425 Unit!15201)))

(declare-fun b!502702 () Bool)

(declare-fun res!304220 () Bool)

(assert (=> b!502702 (=> (not res!304220) (not e!294428))))

(assert (=> b!502702 (= res!304220 (and (= (size!15917 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15917 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15917 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502703 () Bool)

(declare-fun res!304210 () Bool)

(assert (=> b!502703 (=> (not res!304210) (not e!294428))))

(declare-fun arrayContainsKey!0 (array!32352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502703 (= res!304210 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502704 () Bool)

(declare-fun res!304211 () Bool)

(declare-fun e!294426 () Bool)

(assert (=> b!502704 (=> res!304211 e!294426)))

(declare-fun e!294427 () Bool)

(assert (=> b!502704 (= res!304211 e!294427)))

(declare-fun res!304219 () Bool)

(assert (=> b!502704 (=> (not res!304219) (not e!294427))))

(assert (=> b!502704 (= res!304219 (bvsgt #b00000000000000000000000000000000 (x!47351 lt!228631)))))

(declare-fun b!502705 () Bool)

(declare-fun res!304216 () Bool)

(assert (=> b!502705 (=> (not res!304216) (not e!294432))))

(declare-datatypes ((List!9764 0))(
  ( (Nil!9761) (Cons!9760 (h!10637 (_ BitVec 64)) (t!16000 List!9764)) )
))
(declare-fun arrayNoDuplicates!0 (array!32352 (_ BitVec 32) List!9764) Bool)

(assert (=> b!502705 (= res!304216 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9761))))

(declare-fun b!502706 () Bool)

(assert (=> b!502706 (= e!294428 e!294432)))

(declare-fun res!304214 () Bool)

(assert (=> b!502706 (=> (not res!304214) (not e!294432))))

(declare-fun lt!228635 () SeekEntryResult!4027)

(assert (=> b!502706 (= res!304214 (or (= lt!228635 (MissingZero!4027 i!1204)) (= lt!228635 (MissingVacant!4027 i!1204))))))

(assert (=> b!502706 (= lt!228635 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502707 () Bool)

(assert (=> b!502707 (= e!294426 true)))

(declare-fun lt!228640 () SeekEntryResult!4027)

(assert (=> b!502707 (= lt!228640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228636 lt!228634 lt!228632 mask!3524))))

(declare-fun b!502708 () Bool)

(assert (=> b!502708 (= e!294430 e!294426)))

(declare-fun res!304215 () Bool)

(assert (=> b!502708 (=> res!304215 e!294426)))

(assert (=> b!502708 (= res!304215 (or (bvsgt (x!47351 lt!228631) #b01111111111111111111111111111110) (bvslt lt!228636 #b00000000000000000000000000000000) (bvsge lt!228636 (size!15917 a!3235)) (bvslt (index!18298 lt!228631) #b00000000000000000000000000000000) (bvsge (index!18298 lt!228631) (size!15917 a!3235)) (not (= lt!228631 (Intermediate!4027 false (index!18298 lt!228631) (x!47351 lt!228631))))))))

(assert (=> b!502708 (= (index!18298 lt!228631) i!1204)))

(declare-fun lt!228637 () Unit!15198)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32352 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15198)

(assert (=> b!502708 (= lt!228637 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228636 #b00000000000000000000000000000000 (index!18298 lt!228631) (x!47351 lt!228631) mask!3524))))

(assert (=> b!502708 (and (or (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228639 () Unit!15198)

(assert (=> b!502708 (= lt!228639 e!294425)))

(declare-fun c!59522 () Bool)

(assert (=> b!502708 (= c!59522 (= (select (arr!15553 a!3235) (index!18298 lt!228631)) (select (arr!15553 a!3235) j!176)))))

(assert (=> b!502708 (and (bvslt (x!47351 lt!228631) #b01111111111111111111111111111110) (or (= (select (arr!15553 a!3235) (index!18298 lt!228631)) (select (arr!15553 a!3235) j!176)) (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15553 a!3235) (index!18298 lt!228631)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502709 () Bool)

(declare-fun res!304223 () Bool)

(assert (=> b!502709 (=> (not res!304223) (not e!294432))))

(assert (=> b!502709 (= res!304223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502710 () Bool)

(assert (=> b!502710 (= e!294433 false)))

(declare-fun b!502700 () Bool)

(declare-fun res!304212 () Bool)

(assert (=> b!502700 (=> (not res!304212) (not e!294428))))

(assert (=> b!502700 (= res!304212 (validKeyInArray!0 k0!2280))))

(declare-fun res!304217 () Bool)

(assert (=> start!45636 (=> (not res!304217) (not e!294428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45636 (= res!304217 (validMask!0 mask!3524))))

(assert (=> start!45636 e!294428))

(assert (=> start!45636 true))

(declare-fun array_inv!11327 (array!32352) Bool)

(assert (=> start!45636 (array_inv!11327 a!3235)))

(declare-fun b!502711 () Bool)

(declare-fun res!304213 () Bool)

(assert (=> b!502711 (=> res!304213 e!294430)))

(get-info :version)

(assert (=> b!502711 (= res!304213 (or (undefined!4839 lt!228631) (not ((_ is Intermediate!4027) lt!228631))))))

(declare-fun b!502712 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32352 (_ BitVec 32)) SeekEntryResult!4027)

(assert (=> b!502712 (= e!294427 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228636 (index!18298 lt!228631) (select (arr!15553 a!3235) j!176) a!3235 mask!3524) (Found!4027 j!176))))))

(assert (= (and start!45636 res!304217) b!502702))

(assert (= (and b!502702 res!304220) b!502697))

(assert (= (and b!502697 res!304222) b!502700))

(assert (= (and b!502700 res!304212) b!502703))

(assert (= (and b!502703 res!304210) b!502706))

(assert (= (and b!502706 res!304214) b!502709))

(assert (= (and b!502709 res!304223) b!502705))

(assert (= (and b!502705 res!304216) b!502698))

(assert (= (and b!502698 res!304221) b!502696))

(assert (= (and b!502698 (not res!304218)) b!502711))

(assert (= (and b!502711 (not res!304213)) b!502708))

(assert (= (and b!502708 c!59522) b!502699))

(assert (= (and b!502708 (not c!59522)) b!502701))

(assert (= (and b!502699 res!304209) b!502710))

(assert (= (and b!502708 (not res!304215)) b!502704))

(assert (= (and b!502704 res!304219) b!502712))

(assert (= (and b!502704 (not res!304211)) b!502707))

(declare-fun m!483623 () Bool)

(assert (=> b!502703 m!483623))

(declare-fun m!483625 () Bool)

(assert (=> b!502705 m!483625))

(declare-fun m!483627 () Bool)

(assert (=> b!502696 m!483627))

(assert (=> b!502696 m!483627))

(declare-fun m!483629 () Bool)

(assert (=> b!502696 m!483629))

(assert (=> b!502712 m!483627))

(assert (=> b!502712 m!483627))

(declare-fun m!483631 () Bool)

(assert (=> b!502712 m!483631))

(declare-fun m!483633 () Bool)

(assert (=> b!502709 m!483633))

(declare-fun m!483635 () Bool)

(assert (=> start!45636 m!483635))

(declare-fun m!483637 () Bool)

(assert (=> start!45636 m!483637))

(declare-fun m!483639 () Bool)

(assert (=> b!502699 m!483639))

(declare-fun m!483641 () Bool)

(assert (=> b!502699 m!483641))

(assert (=> b!502697 m!483627))

(assert (=> b!502697 m!483627))

(declare-fun m!483643 () Bool)

(assert (=> b!502697 m!483643))

(declare-fun m!483645 () Bool)

(assert (=> b!502708 m!483645))

(declare-fun m!483647 () Bool)

(assert (=> b!502708 m!483647))

(assert (=> b!502708 m!483627))

(declare-fun m!483649 () Bool)

(assert (=> b!502700 m!483649))

(declare-fun m!483651 () Bool)

(assert (=> b!502706 m!483651))

(declare-fun m!483653 () Bool)

(assert (=> b!502698 m!483653))

(assert (=> b!502698 m!483627))

(declare-fun m!483655 () Bool)

(assert (=> b!502698 m!483655))

(declare-fun m!483657 () Bool)

(assert (=> b!502698 m!483657))

(declare-fun m!483659 () Bool)

(assert (=> b!502698 m!483659))

(assert (=> b!502698 m!483627))

(declare-fun m!483661 () Bool)

(assert (=> b!502698 m!483661))

(assert (=> b!502698 m!483627))

(declare-fun m!483663 () Bool)

(assert (=> b!502698 m!483663))

(declare-fun m!483665 () Bool)

(assert (=> b!502698 m!483665))

(declare-fun m!483667 () Bool)

(assert (=> b!502698 m!483667))

(assert (=> b!502707 m!483641))

(check-sat (not b!502698) (not b!502697) (not b!502699) (not b!502706) (not b!502703) (not b!502700) (not b!502705) (not b!502696) (not b!502708) (not start!45636) (not b!502709) (not b!502712) (not b!502707))
(check-sat)
