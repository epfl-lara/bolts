; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47382 () Bool)

(assert start!47382)

(declare-fun b!520585 () Bool)

(declare-datatypes ((Unit!16110 0))(
  ( (Unit!16111) )
))
(declare-fun e!303780 () Unit!16110)

(declare-fun Unit!16112 () Unit!16110)

(assert (=> b!520585 (= e!303780 Unit!16112)))

(declare-fun b!520586 () Bool)

(declare-fun res!318630 () Bool)

(declare-fun e!303781 () Bool)

(assert (=> b!520586 (=> (not res!318630) (not e!303781))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520586 (= res!318630 (validKeyInArray!0 k0!2280))))

(declare-fun b!520587 () Bool)

(declare-fun e!303784 () Bool)

(assert (=> b!520587 (= e!303781 e!303784)))

(declare-fun res!318633 () Bool)

(assert (=> b!520587 (=> (not res!318633) (not e!303784))))

(declare-datatypes ((SeekEntryResult!4411 0))(
  ( (MissingZero!4411 (index!19847 (_ BitVec 32))) (Found!4411 (index!19848 (_ BitVec 32))) (Intermediate!4411 (undefined!5223 Bool) (index!19849 (_ BitVec 32)) (x!48864 (_ BitVec 32))) (Undefined!4411) (MissingVacant!4411 (index!19850 (_ BitVec 32))) )
))
(declare-fun lt!238501 () SeekEntryResult!4411)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520587 (= res!318633 (or (= lt!238501 (MissingZero!4411 i!1204)) (= lt!238501 (MissingVacant!4411 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33168 0))(
  ( (array!33169 (arr!15937 (Array (_ BitVec 32) (_ BitVec 64))) (size!16301 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33168)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33168 (_ BitVec 32)) SeekEntryResult!4411)

(assert (=> b!520587 (= lt!238501 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!318636 () Bool)

(assert (=> start!47382 (=> (not res!318636) (not e!303781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47382 (= res!318636 (validMask!0 mask!3524))))

(assert (=> start!47382 e!303781))

(assert (=> start!47382 true))

(declare-fun array_inv!11711 (array!33168) Bool)

(assert (=> start!47382 (array_inv!11711 a!3235)))

(declare-fun b!520588 () Bool)

(declare-fun res!318631 () Bool)

(assert (=> b!520588 (=> (not res!318631) (not e!303784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33168 (_ BitVec 32)) Bool)

(assert (=> b!520588 (= res!318631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520589 () Bool)

(declare-fun res!318629 () Bool)

(assert (=> b!520589 (=> (not res!318629) (not e!303784))))

(declare-datatypes ((List!10148 0))(
  ( (Nil!10145) (Cons!10144 (h!11066 (_ BitVec 64)) (t!16384 List!10148)) )
))
(declare-fun arrayNoDuplicates!0 (array!33168 (_ BitVec 32) List!10148) Bool)

(assert (=> b!520589 (= res!318629 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10145))))

(declare-fun b!520590 () Bool)

(declare-fun e!303783 () Bool)

(assert (=> b!520590 (= e!303784 (not e!303783))))

(declare-fun res!318635 () Bool)

(assert (=> b!520590 (=> res!318635 e!303783)))

(declare-fun lt!238504 () (_ BitVec 32))

(declare-fun lt!238500 () SeekEntryResult!4411)

(declare-fun lt!238502 () (_ BitVec 64))

(declare-fun lt!238497 () array!33168)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33168 (_ BitVec 32)) SeekEntryResult!4411)

(assert (=> b!520590 (= res!318635 (= lt!238500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238504 lt!238502 lt!238497 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238505 () (_ BitVec 32))

(assert (=> b!520590 (= lt!238500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238505 (select (arr!15937 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520590 (= lt!238504 (toIndex!0 lt!238502 mask!3524))))

(assert (=> b!520590 (= lt!238502 (select (store (arr!15937 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!520590 (= lt!238505 (toIndex!0 (select (arr!15937 a!3235) j!176) mask!3524))))

(assert (=> b!520590 (= lt!238497 (array!33169 (store (arr!15937 a!3235) i!1204 k0!2280) (size!16301 a!3235)))))

(declare-fun e!303779 () Bool)

(assert (=> b!520590 e!303779))

(declare-fun res!318638 () Bool)

(assert (=> b!520590 (=> (not res!318638) (not e!303779))))

(assert (=> b!520590 (= res!318638 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238499 () Unit!16110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33168 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16110)

(assert (=> b!520590 (= lt!238499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520591 () Bool)

(declare-fun res!318637 () Bool)

(assert (=> b!520591 (=> (not res!318637) (not e!303781))))

(assert (=> b!520591 (= res!318637 (validKeyInArray!0 (select (arr!15937 a!3235) j!176)))))

(declare-fun b!520592 () Bool)

(declare-fun res!318632 () Bool)

(assert (=> b!520592 (=> (not res!318632) (not e!303781))))

(assert (=> b!520592 (= res!318632 (and (= (size!16301 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16301 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16301 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520593 () Bool)

(declare-fun e!303778 () Bool)

(assert (=> b!520593 (= e!303778 false)))

(declare-fun b!520594 () Bool)

(declare-fun res!318628 () Bool)

(assert (=> b!520594 (=> (not res!318628) (not e!303781))))

(declare-fun arrayContainsKey!0 (array!33168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520594 (= res!318628 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520595 () Bool)

(assert (=> b!520595 (= e!303779 (= (seekEntryOrOpen!0 (select (arr!15937 a!3235) j!176) a!3235 mask!3524) (Found!4411 j!176)))))

(declare-fun b!520596 () Bool)

(assert (=> b!520596 (= e!303783 (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520596 (and (or (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!238503 () Unit!16110)

(assert (=> b!520596 (= lt!238503 e!303780)))

(declare-fun c!61280 () Bool)

(assert (=> b!520596 (= c!61280 (= (select (arr!15937 a!3235) (index!19849 lt!238500)) (select (arr!15937 a!3235) j!176)))))

(assert (=> b!520596 (and (bvslt (x!48864 lt!238500) #b01111111111111111111111111111110) (or (= (select (arr!15937 a!3235) (index!19849 lt!238500)) (select (arr!15937 a!3235) j!176)) (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15937 a!3235) (index!19849 lt!238500)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520597 () Bool)

(declare-fun res!318627 () Bool)

(assert (=> b!520597 (=> res!318627 e!303783)))

(get-info :version)

(assert (=> b!520597 (= res!318627 (or (undefined!5223 lt!238500) (not ((_ is Intermediate!4411) lt!238500))))))

(declare-fun b!520598 () Bool)

(declare-fun Unit!16113 () Unit!16110)

(assert (=> b!520598 (= e!303780 Unit!16113)))

(declare-fun lt!238498 () Unit!16110)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33168 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16110)

(assert (=> b!520598 (= lt!238498 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!238505 #b00000000000000000000000000000000 (index!19849 lt!238500) (x!48864 lt!238500) mask!3524))))

(declare-fun res!318634 () Bool)

(assert (=> b!520598 (= res!318634 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238505 lt!238502 lt!238497 mask!3524) (Intermediate!4411 false (index!19849 lt!238500) (x!48864 lt!238500))))))

(assert (=> b!520598 (=> (not res!318634) (not e!303778))))

(assert (=> b!520598 e!303778))

(assert (= (and start!47382 res!318636) b!520592))

(assert (= (and b!520592 res!318632) b!520591))

(assert (= (and b!520591 res!318637) b!520586))

(assert (= (and b!520586 res!318630) b!520594))

(assert (= (and b!520594 res!318628) b!520587))

(assert (= (and b!520587 res!318633) b!520588))

(assert (= (and b!520588 res!318631) b!520589))

(assert (= (and b!520589 res!318629) b!520590))

(assert (= (and b!520590 res!318638) b!520595))

(assert (= (and b!520590 (not res!318635)) b!520597))

(assert (= (and b!520597 (not res!318627)) b!520596))

(assert (= (and b!520596 c!61280) b!520598))

(assert (= (and b!520596 (not c!61280)) b!520585))

(assert (= (and b!520598 res!318634) b!520593))

(declare-fun m!501535 () Bool)

(assert (=> b!520594 m!501535))

(declare-fun m!501537 () Bool)

(assert (=> b!520587 m!501537))

(declare-fun m!501539 () Bool)

(assert (=> b!520586 m!501539))

(declare-fun m!501541 () Bool)

(assert (=> start!47382 m!501541))

(declare-fun m!501543 () Bool)

(assert (=> start!47382 m!501543))

(declare-fun m!501545 () Bool)

(assert (=> b!520590 m!501545))

(declare-fun m!501547 () Bool)

(assert (=> b!520590 m!501547))

(declare-fun m!501549 () Bool)

(assert (=> b!520590 m!501549))

(declare-fun m!501551 () Bool)

(assert (=> b!520590 m!501551))

(declare-fun m!501553 () Bool)

(assert (=> b!520590 m!501553))

(declare-fun m!501555 () Bool)

(assert (=> b!520590 m!501555))

(declare-fun m!501557 () Bool)

(assert (=> b!520590 m!501557))

(assert (=> b!520590 m!501555))

(declare-fun m!501559 () Bool)

(assert (=> b!520590 m!501559))

(assert (=> b!520590 m!501555))

(declare-fun m!501561 () Bool)

(assert (=> b!520590 m!501561))

(declare-fun m!501563 () Bool)

(assert (=> b!520598 m!501563))

(declare-fun m!501565 () Bool)

(assert (=> b!520598 m!501565))

(declare-fun m!501567 () Bool)

(assert (=> b!520596 m!501567))

(assert (=> b!520596 m!501555))

(assert (=> b!520595 m!501555))

(assert (=> b!520595 m!501555))

(declare-fun m!501569 () Bool)

(assert (=> b!520595 m!501569))

(declare-fun m!501571 () Bool)

(assert (=> b!520588 m!501571))

(assert (=> b!520591 m!501555))

(assert (=> b!520591 m!501555))

(declare-fun m!501573 () Bool)

(assert (=> b!520591 m!501573))

(declare-fun m!501575 () Bool)

(assert (=> b!520589 m!501575))

(check-sat (not b!520586) (not b!520594) (not b!520598) (not b!520595) (not b!520589) (not b!520590) (not start!47382) (not b!520587) (not b!520591) (not b!520588))
(check-sat)
