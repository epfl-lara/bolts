; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45448 () Bool)

(assert start!45448)

(declare-fun b!499623 () Bool)

(declare-fun e!292771 () Bool)

(assert (=> b!499623 (= e!292771 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!226667 () (_ BitVec 64))

(declare-fun lt!226668 () (_ BitVec 32))

(declare-datatypes ((array!32233 0))(
  ( (array!32234 (arr!15495 (Array (_ BitVec 32) (_ BitVec 64))) (size!15859 (_ BitVec 32))) )
))
(declare-fun lt!226666 () array!32233)

(declare-datatypes ((SeekEntryResult!3969 0))(
  ( (MissingZero!3969 (index!18058 (_ BitVec 32))) (Found!3969 (index!18059 (_ BitVec 32))) (Intermediate!3969 (undefined!4781 Bool) (index!18060 (_ BitVec 32)) (x!47129 (_ BitVec 32))) (Undefined!3969) (MissingVacant!3969 (index!18061 (_ BitVec 32))) )
))
(declare-fun lt!226665 () SeekEntryResult!3969)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32233 (_ BitVec 32)) SeekEntryResult!3969)

(assert (=> b!499623 (= lt!226665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226668 lt!226667 lt!226666 mask!3524))))

(declare-fun b!499624 () Bool)

(declare-datatypes ((Unit!14966 0))(
  ( (Unit!14967) )
))
(declare-fun e!292764 () Unit!14966)

(declare-fun Unit!14968 () Unit!14966)

(assert (=> b!499624 (= e!292764 Unit!14968)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32233)

(declare-fun lt!226669 () Unit!14966)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!226663 () SeekEntryResult!3969)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32233 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14966)

(assert (=> b!499624 (= lt!226669 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226668 #b00000000000000000000000000000000 (index!18060 lt!226663) (x!47129 lt!226663) mask!3524))))

(declare-fun res!301694 () Bool)

(assert (=> b!499624 (= res!301694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226668 lt!226667 lt!226666 mask!3524) (Intermediate!3969 false (index!18060 lt!226663) (x!47129 lt!226663))))))

(declare-fun e!292769 () Bool)

(assert (=> b!499624 (=> (not res!301694) (not e!292769))))

(assert (=> b!499624 e!292769))

(declare-fun b!499625 () Bool)

(declare-fun e!292767 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32233 (_ BitVec 32)) SeekEntryResult!3969)

(assert (=> b!499625 (= e!292767 (= (seekEntryOrOpen!0 (select (arr!15495 a!3235) j!176) a!3235 mask!3524) (Found!3969 j!176)))))

(declare-fun b!499626 () Bool)

(declare-fun res!301685 () Bool)

(declare-fun e!292765 () Bool)

(assert (=> b!499626 (=> res!301685 e!292765)))

(assert (=> b!499626 (= res!301685 (or (undefined!4781 lt!226663) (not (is-Intermediate!3969 lt!226663))))))

(declare-fun b!499627 () Bool)

(declare-fun res!301693 () Bool)

(declare-fun e!292770 () Bool)

(assert (=> b!499627 (=> (not res!301693) (not e!292770))))

(assert (=> b!499627 (= res!301693 (and (= (size!15859 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15859 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15859 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499628 () Bool)

(assert (=> b!499628 (= e!292769 false)))

(declare-fun b!499629 () Bool)

(declare-fun Unit!14969 () Unit!14966)

(assert (=> b!499629 (= e!292764 Unit!14969)))

(declare-fun b!499630 () Bool)

(assert (=> b!499630 (= e!292765 e!292771)))

(declare-fun res!301690 () Bool)

(assert (=> b!499630 (=> res!301690 e!292771)))

(assert (=> b!499630 (= res!301690 (or (bvsgt #b00000000000000000000000000000000 (x!47129 lt!226663)) (bvsgt (x!47129 lt!226663) #b01111111111111111111111111111110) (bvslt lt!226668 #b00000000000000000000000000000000) (bvsge lt!226668 (size!15859 a!3235)) (bvslt (index!18060 lt!226663) #b00000000000000000000000000000000) (bvsge (index!18060 lt!226663) (size!15859 a!3235)) (not (= lt!226663 (Intermediate!3969 false (index!18060 lt!226663) (x!47129 lt!226663))))))))

(assert (=> b!499630 (and (or (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226664 () Unit!14966)

(assert (=> b!499630 (= lt!226664 e!292764)))

(declare-fun c!59246 () Bool)

(assert (=> b!499630 (= c!59246 (= (select (arr!15495 a!3235) (index!18060 lt!226663)) (select (arr!15495 a!3235) j!176)))))

(assert (=> b!499630 (and (bvslt (x!47129 lt!226663) #b01111111111111111111111111111110) (or (= (select (arr!15495 a!3235) (index!18060 lt!226663)) (select (arr!15495 a!3235) j!176)) (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15495 a!3235) (index!18060 lt!226663)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499631 () Bool)

(declare-fun res!301695 () Bool)

(declare-fun e!292768 () Bool)

(assert (=> b!499631 (=> (not res!301695) (not e!292768))))

(declare-datatypes ((List!9706 0))(
  ( (Nil!9703) (Cons!9702 (h!10576 (_ BitVec 64)) (t!15942 List!9706)) )
))
(declare-fun arrayNoDuplicates!0 (array!32233 (_ BitVec 32) List!9706) Bool)

(assert (=> b!499631 (= res!301695 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9703))))

(declare-fun res!301691 () Bool)

(assert (=> start!45448 (=> (not res!301691) (not e!292770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45448 (= res!301691 (validMask!0 mask!3524))))

(assert (=> start!45448 e!292770))

(assert (=> start!45448 true))

(declare-fun array_inv!11269 (array!32233) Bool)

(assert (=> start!45448 (array_inv!11269 a!3235)))

(declare-fun b!499632 () Bool)

(declare-fun res!301688 () Bool)

(assert (=> b!499632 (=> (not res!301688) (not e!292770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499632 (= res!301688 (validKeyInArray!0 k!2280))))

(declare-fun b!499633 () Bool)

(declare-fun res!301696 () Bool)

(assert (=> b!499633 (=> (not res!301696) (not e!292768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32233 (_ BitVec 32)) Bool)

(assert (=> b!499633 (= res!301696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499634 () Bool)

(declare-fun res!301697 () Bool)

(assert (=> b!499634 (=> (not res!301697) (not e!292770))))

(assert (=> b!499634 (= res!301697 (validKeyInArray!0 (select (arr!15495 a!3235) j!176)))))

(declare-fun b!499635 () Bool)

(assert (=> b!499635 (= e!292770 e!292768)))

(declare-fun res!301687 () Bool)

(assert (=> b!499635 (=> (not res!301687) (not e!292768))))

(declare-fun lt!226662 () SeekEntryResult!3969)

(assert (=> b!499635 (= res!301687 (or (= lt!226662 (MissingZero!3969 i!1204)) (= lt!226662 (MissingVacant!3969 i!1204))))))

(assert (=> b!499635 (= lt!226662 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499636 () Bool)

(assert (=> b!499636 (= e!292768 (not e!292765))))

(declare-fun res!301686 () Bool)

(assert (=> b!499636 (=> res!301686 e!292765)))

(declare-fun lt!226670 () (_ BitVec 32))

(assert (=> b!499636 (= res!301686 (= lt!226663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226670 lt!226667 lt!226666 mask!3524)))))

(assert (=> b!499636 (= lt!226663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226668 (select (arr!15495 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499636 (= lt!226670 (toIndex!0 lt!226667 mask!3524))))

(assert (=> b!499636 (= lt!226667 (select (store (arr!15495 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499636 (= lt!226668 (toIndex!0 (select (arr!15495 a!3235) j!176) mask!3524))))

(assert (=> b!499636 (= lt!226666 (array!32234 (store (arr!15495 a!3235) i!1204 k!2280) (size!15859 a!3235)))))

(assert (=> b!499636 e!292767))

(declare-fun res!301689 () Bool)

(assert (=> b!499636 (=> (not res!301689) (not e!292767))))

(assert (=> b!499636 (= res!301689 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226661 () Unit!14966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14966)

(assert (=> b!499636 (= lt!226661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499637 () Bool)

(declare-fun res!301692 () Bool)

(assert (=> b!499637 (=> (not res!301692) (not e!292770))))

(declare-fun arrayContainsKey!0 (array!32233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499637 (= res!301692 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45448 res!301691) b!499627))

(assert (= (and b!499627 res!301693) b!499634))

(assert (= (and b!499634 res!301697) b!499632))

(assert (= (and b!499632 res!301688) b!499637))

(assert (= (and b!499637 res!301692) b!499635))

(assert (= (and b!499635 res!301687) b!499633))

(assert (= (and b!499633 res!301696) b!499631))

(assert (= (and b!499631 res!301695) b!499636))

(assert (= (and b!499636 res!301689) b!499625))

(assert (= (and b!499636 (not res!301686)) b!499626))

(assert (= (and b!499626 (not res!301685)) b!499630))

(assert (= (and b!499630 c!59246) b!499624))

(assert (= (and b!499630 (not c!59246)) b!499629))

(assert (= (and b!499624 res!301694) b!499628))

(assert (= (and b!499630 (not res!301690)) b!499623))

(declare-fun m!480835 () Bool)

(assert (=> b!499634 m!480835))

(assert (=> b!499634 m!480835))

(declare-fun m!480837 () Bool)

(assert (=> b!499634 m!480837))

(declare-fun m!480839 () Bool)

(assert (=> start!45448 m!480839))

(declare-fun m!480841 () Bool)

(assert (=> start!45448 m!480841))

(declare-fun m!480843 () Bool)

(assert (=> b!499623 m!480843))

(assert (=> b!499625 m!480835))

(assert (=> b!499625 m!480835))

(declare-fun m!480845 () Bool)

(assert (=> b!499625 m!480845))

(declare-fun m!480847 () Bool)

(assert (=> b!499637 m!480847))

(declare-fun m!480849 () Bool)

(assert (=> b!499624 m!480849))

(assert (=> b!499624 m!480843))

(declare-fun m!480851 () Bool)

(assert (=> b!499635 m!480851))

(declare-fun m!480853 () Bool)

(assert (=> b!499631 m!480853))

(declare-fun m!480855 () Bool)

(assert (=> b!499630 m!480855))

(assert (=> b!499630 m!480835))

(declare-fun m!480857 () Bool)

(assert (=> b!499633 m!480857))

(declare-fun m!480859 () Bool)

(assert (=> b!499632 m!480859))

(declare-fun m!480861 () Bool)

(assert (=> b!499636 m!480861))

(declare-fun m!480863 () Bool)

(assert (=> b!499636 m!480863))

(declare-fun m!480865 () Bool)

(assert (=> b!499636 m!480865))

(assert (=> b!499636 m!480835))

(declare-fun m!480867 () Bool)

(assert (=> b!499636 m!480867))

(assert (=> b!499636 m!480835))

(declare-fun m!480869 () Bool)

(assert (=> b!499636 m!480869))

(declare-fun m!480871 () Bool)

(assert (=> b!499636 m!480871))

(assert (=> b!499636 m!480835))

(declare-fun m!480873 () Bool)

(assert (=> b!499636 m!480873))

(declare-fun m!480875 () Bool)

(assert (=> b!499636 m!480875))

(push 1)

