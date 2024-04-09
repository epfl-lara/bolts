; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45592 () Bool)

(assert start!45592)

(declare-fun b!501574 () Bool)

(declare-fun res!303222 () Bool)

(declare-fun e!293838 () Bool)

(assert (=> b!501574 (=> (not res!303222) (not e!293838))))

(declare-datatypes ((array!32308 0))(
  ( (array!32309 (arr!15531 (Array (_ BitVec 32) (_ BitVec 64))) (size!15895 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32308)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501574 (= res!303222 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501575 () Bool)

(declare-fun e!293831 () Bool)

(assert (=> b!501575 (= e!293831 true)))

(declare-datatypes ((SeekEntryResult!4005 0))(
  ( (MissingZero!4005 (index!18208 (_ BitVec 32))) (Found!4005 (index!18209 (_ BitVec 32))) (Intermediate!4005 (undefined!4817 Bool) (index!18210 (_ BitVec 32)) (x!47273 (_ BitVec 32))) (Undefined!4005) (MissingVacant!4005 (index!18211 (_ BitVec 32))) )
))
(declare-fun lt!227908 () SeekEntryResult!4005)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227911 () (_ BitVec 32))

(declare-fun lt!227909 () array!32308)

(declare-fun lt!227907 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32308 (_ BitVec 32)) SeekEntryResult!4005)

(assert (=> b!501575 (= lt!227908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227911 lt!227907 lt!227909 mask!3524))))

(declare-fun b!501576 () Bool)

(declare-fun e!293839 () Bool)

(assert (=> b!501576 (= e!293839 false)))

(declare-fun b!501577 () Bool)

(declare-fun e!293833 () Bool)

(declare-fun e!293836 () Bool)

(assert (=> b!501577 (= e!293833 (not e!293836))))

(declare-fun res!303232 () Bool)

(assert (=> b!501577 (=> res!303232 e!293836)))

(declare-fun lt!227906 () (_ BitVec 32))

(declare-fun lt!227913 () SeekEntryResult!4005)

(assert (=> b!501577 (= res!303232 (= lt!227913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227906 lt!227907 lt!227909 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!501577 (= lt!227913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227911 (select (arr!15531 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501577 (= lt!227906 (toIndex!0 lt!227907 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501577 (= lt!227907 (select (store (arr!15531 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!501577 (= lt!227911 (toIndex!0 (select (arr!15531 a!3235) j!176) mask!3524))))

(assert (=> b!501577 (= lt!227909 (array!32309 (store (arr!15531 a!3235) i!1204 k!2280) (size!15895 a!3235)))))

(declare-fun e!293832 () Bool)

(assert (=> b!501577 e!293832))

(declare-fun res!303231 () Bool)

(assert (=> b!501577 (=> (not res!303231) (not e!293832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32308 (_ BitVec 32)) Bool)

(assert (=> b!501577 (= res!303231 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15110 0))(
  ( (Unit!15111) )
))
(declare-fun lt!227912 () Unit!15110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15110)

(assert (=> b!501577 (= lt!227912 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501578 () Bool)

(declare-fun res!303228 () Bool)

(assert (=> b!501578 (=> res!303228 e!293836)))

(assert (=> b!501578 (= res!303228 (or (undefined!4817 lt!227913) (not (is-Intermediate!4005 lt!227913))))))

(declare-fun b!501579 () Bool)

(assert (=> b!501579 (= e!293836 e!293831)))

(declare-fun res!303230 () Bool)

(assert (=> b!501579 (=> res!303230 e!293831)))

(assert (=> b!501579 (= res!303230 (or (bvsgt (x!47273 lt!227913) #b01111111111111111111111111111110) (bvslt lt!227911 #b00000000000000000000000000000000) (bvsge lt!227911 (size!15895 a!3235)) (bvslt (index!18210 lt!227913) #b00000000000000000000000000000000) (bvsge (index!18210 lt!227913) (size!15895 a!3235)) (not (= lt!227913 (Intermediate!4005 false (index!18210 lt!227913) (x!47273 lt!227913))))))))

(assert (=> b!501579 (= (index!18210 lt!227913) i!1204)))

(declare-fun lt!227910 () Unit!15110)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32308 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15110)

(assert (=> b!501579 (= lt!227910 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!227911 #b00000000000000000000000000000000 (index!18210 lt!227913) (x!47273 lt!227913) mask!3524))))

(assert (=> b!501579 (and (or (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227905 () Unit!15110)

(declare-fun e!293834 () Unit!15110)

(assert (=> b!501579 (= lt!227905 e!293834)))

(declare-fun c!59456 () Bool)

(assert (=> b!501579 (= c!59456 (= (select (arr!15531 a!3235) (index!18210 lt!227913)) (select (arr!15531 a!3235) j!176)))))

(assert (=> b!501579 (and (bvslt (x!47273 lt!227913) #b01111111111111111111111111111110) (or (= (select (arr!15531 a!3235) (index!18210 lt!227913)) (select (arr!15531 a!3235) j!176)) (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15531 a!3235) (index!18210 lt!227913)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501580 () Bool)

(declare-fun res!303224 () Bool)

(assert (=> b!501580 (=> res!303224 e!293831)))

(declare-fun e!293837 () Bool)

(assert (=> b!501580 (= res!303224 e!293837)))

(declare-fun res!303227 () Bool)

(assert (=> b!501580 (=> (not res!303227) (not e!293837))))

(assert (=> b!501580 (= res!303227 (bvsgt #b00000000000000000000000000000000 (x!47273 lt!227913)))))

(declare-fun b!501581 () Bool)

(declare-fun Unit!15112 () Unit!15110)

(assert (=> b!501581 (= e!293834 Unit!15112)))

(declare-fun lt!227914 () Unit!15110)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32308 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15110)

(assert (=> b!501581 (= lt!227914 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227911 #b00000000000000000000000000000000 (index!18210 lt!227913) (x!47273 lt!227913) mask!3524))))

(declare-fun res!303229 () Bool)

(assert (=> b!501581 (= res!303229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227911 lt!227907 lt!227909 mask!3524) (Intermediate!4005 false (index!18210 lt!227913) (x!47273 lt!227913))))))

(assert (=> b!501581 (=> (not res!303229) (not e!293839))))

(assert (=> b!501581 e!293839))

(declare-fun b!501582 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32308 (_ BitVec 32)) SeekEntryResult!4005)

(assert (=> b!501582 (= e!293832 (= (seekEntryOrOpen!0 (select (arr!15531 a!3235) j!176) a!3235 mask!3524) (Found!4005 j!176)))))

(declare-fun res!303223 () Bool)

(assert (=> start!45592 (=> (not res!303223) (not e!293838))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45592 (= res!303223 (validMask!0 mask!3524))))

(assert (=> start!45592 e!293838))

(assert (=> start!45592 true))

(declare-fun array_inv!11305 (array!32308) Bool)

(assert (=> start!45592 (array_inv!11305 a!3235)))

(declare-fun b!501583 () Bool)

(declare-fun res!303225 () Bool)

(assert (=> b!501583 (=> (not res!303225) (not e!293833))))

(declare-datatypes ((List!9742 0))(
  ( (Nil!9739) (Cons!9738 (h!10615 (_ BitVec 64)) (t!15978 List!9742)) )
))
(declare-fun arrayNoDuplicates!0 (array!32308 (_ BitVec 32) List!9742) Bool)

(assert (=> b!501583 (= res!303225 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9739))))

(declare-fun b!501584 () Bool)

(declare-fun res!303220 () Bool)

(assert (=> b!501584 (=> (not res!303220) (not e!293838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501584 (= res!303220 (validKeyInArray!0 (select (arr!15531 a!3235) j!176)))))

(declare-fun b!501585 () Bool)

(declare-fun res!303219 () Bool)

(assert (=> b!501585 (=> (not res!303219) (not e!293838))))

(assert (=> b!501585 (= res!303219 (validKeyInArray!0 k!2280))))

(declare-fun b!501586 () Bool)

(declare-fun res!303221 () Bool)

(assert (=> b!501586 (=> (not res!303221) (not e!293838))))

(assert (=> b!501586 (= res!303221 (and (= (size!15895 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15895 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15895 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501587 () Bool)

(declare-fun res!303226 () Bool)

(assert (=> b!501587 (=> (not res!303226) (not e!293833))))

(assert (=> b!501587 (= res!303226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501588 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32308 (_ BitVec 32)) SeekEntryResult!4005)

(assert (=> b!501588 (= e!293837 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!227911 (index!18210 lt!227913) (select (arr!15531 a!3235) j!176) a!3235 mask!3524) (Found!4005 j!176))))))

(declare-fun b!501589 () Bool)

(assert (=> b!501589 (= e!293838 e!293833)))

(declare-fun res!303233 () Bool)

(assert (=> b!501589 (=> (not res!303233) (not e!293833))))

(declare-fun lt!227915 () SeekEntryResult!4005)

(assert (=> b!501589 (= res!303233 (or (= lt!227915 (MissingZero!4005 i!1204)) (= lt!227915 (MissingVacant!4005 i!1204))))))

(assert (=> b!501589 (= lt!227915 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!501590 () Bool)

(declare-fun Unit!15113 () Unit!15110)

(assert (=> b!501590 (= e!293834 Unit!15113)))

(assert (= (and start!45592 res!303223) b!501586))

(assert (= (and b!501586 res!303221) b!501584))

(assert (= (and b!501584 res!303220) b!501585))

(assert (= (and b!501585 res!303219) b!501574))

(assert (= (and b!501574 res!303222) b!501589))

(assert (= (and b!501589 res!303233) b!501587))

(assert (= (and b!501587 res!303226) b!501583))

(assert (= (and b!501583 res!303225) b!501577))

(assert (= (and b!501577 res!303231) b!501582))

(assert (= (and b!501577 (not res!303232)) b!501578))

(assert (= (and b!501578 (not res!303228)) b!501579))

(assert (= (and b!501579 c!59456) b!501581))

(assert (= (and b!501579 (not c!59456)) b!501590))

(assert (= (and b!501581 res!303229) b!501576))

(assert (= (and b!501579 (not res!303230)) b!501580))

(assert (= (and b!501580 res!303227) b!501588))

(assert (= (and b!501580 (not res!303224)) b!501575))

(declare-fun m!482611 () Bool)

(assert (=> b!501584 m!482611))

(assert (=> b!501584 m!482611))

(declare-fun m!482613 () Bool)

(assert (=> b!501584 m!482613))

(declare-fun m!482615 () Bool)

(assert (=> b!501579 m!482615))

(declare-fun m!482617 () Bool)

(assert (=> b!501579 m!482617))

(assert (=> b!501579 m!482611))

(assert (=> b!501582 m!482611))

(assert (=> b!501582 m!482611))

(declare-fun m!482619 () Bool)

(assert (=> b!501582 m!482619))

(declare-fun m!482621 () Bool)

(assert (=> b!501581 m!482621))

(declare-fun m!482623 () Bool)

(assert (=> b!501581 m!482623))

(declare-fun m!482625 () Bool)

(assert (=> b!501585 m!482625))

(declare-fun m!482627 () Bool)

(assert (=> b!501589 m!482627))

(declare-fun m!482629 () Bool)

(assert (=> b!501583 m!482629))

(declare-fun m!482631 () Bool)

(assert (=> b!501574 m!482631))

(declare-fun m!482633 () Bool)

(assert (=> b!501577 m!482633))

(declare-fun m!482635 () Bool)

(assert (=> b!501577 m!482635))

(declare-fun m!482637 () Bool)

(assert (=> b!501577 m!482637))

(declare-fun m!482639 () Bool)

(assert (=> b!501577 m!482639))

(declare-fun m!482641 () Bool)

(assert (=> b!501577 m!482641))

(assert (=> b!501577 m!482611))

(declare-fun m!482643 () Bool)

(assert (=> b!501577 m!482643))

(assert (=> b!501577 m!482611))

(declare-fun m!482645 () Bool)

(assert (=> b!501577 m!482645))

(declare-fun m!482647 () Bool)

(assert (=> b!501577 m!482647))

(assert (=> b!501577 m!482611))

(declare-fun m!482649 () Bool)

(assert (=> start!45592 m!482649))

(declare-fun m!482651 () Bool)

(assert (=> start!45592 m!482651))

(assert (=> b!501575 m!482623))

(assert (=> b!501588 m!482611))

(assert (=> b!501588 m!482611))

(declare-fun m!482653 () Bool)

(assert (=> b!501588 m!482653))

(declare-fun m!482655 () Bool)

(assert (=> b!501587 m!482655))

(push 1)

