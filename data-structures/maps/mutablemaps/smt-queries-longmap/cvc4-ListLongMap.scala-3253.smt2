; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45404 () Bool)

(assert start!45404)

(declare-fun b!498633 () Bool)

(declare-fun res!300830 () Bool)

(declare-fun e!292239 () Bool)

(assert (=> b!498633 (=> (not res!300830) (not e!292239))))

(declare-datatypes ((array!32189 0))(
  ( (array!32190 (arr!15473 (Array (_ BitVec 32) (_ BitVec 64))) (size!15837 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32189)

(declare-datatypes ((List!9684 0))(
  ( (Nil!9681) (Cons!9680 (h!10554 (_ BitVec 64)) (t!15920 List!9684)) )
))
(declare-fun arrayNoDuplicates!0 (array!32189 (_ BitVec 32) List!9684) Bool)

(assert (=> b!498633 (= res!300830 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9681))))

(declare-fun b!498634 () Bool)

(declare-fun e!292241 () Bool)

(assert (=> b!498634 (= e!292241 e!292239)))

(declare-fun res!300831 () Bool)

(assert (=> b!498634 (=> (not res!300831) (not e!292239))))

(declare-datatypes ((SeekEntryResult!3947 0))(
  ( (MissingZero!3947 (index!17970 (_ BitVec 32))) (Found!3947 (index!17971 (_ BitVec 32))) (Intermediate!3947 (undefined!4759 Bool) (index!17972 (_ BitVec 32)) (x!47043 (_ BitVec 32))) (Undefined!3947) (MissingVacant!3947 (index!17973 (_ BitVec 32))) )
))
(declare-fun lt!226004 () SeekEntryResult!3947)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498634 (= res!300831 (or (= lt!226004 (MissingZero!3947 i!1204)) (= lt!226004 (MissingVacant!3947 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32189 (_ BitVec 32)) SeekEntryResult!3947)

(assert (=> b!498634 (= lt!226004 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!498635 () Bool)

(declare-fun res!300832 () Bool)

(assert (=> b!498635 (=> (not res!300832) (not e!292239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32189 (_ BitVec 32)) Bool)

(assert (=> b!498635 (= res!300832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498636 () Bool)

(declare-datatypes ((Unit!14878 0))(
  ( (Unit!14879) )
))
(declare-fun e!292236 () Unit!14878)

(declare-fun Unit!14880 () Unit!14878)

(assert (=> b!498636 (= e!292236 Unit!14880)))

(declare-fun b!498637 () Bool)

(declare-fun e!292242 () Bool)

(assert (=> b!498637 (= e!292242 true)))

(declare-fun lt!226009 () (_ BitVec 64))

(declare-fun lt!226003 () (_ BitVec 32))

(declare-fun lt!226007 () SeekEntryResult!3947)

(declare-fun lt!226006 () array!32189)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32189 (_ BitVec 32)) SeekEntryResult!3947)

(assert (=> b!498637 (= lt!226007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226003 lt!226009 lt!226006 mask!3524))))

(declare-fun b!498639 () Bool)

(declare-fun e!292240 () Bool)

(assert (=> b!498639 (= e!292240 e!292242)))

(declare-fun res!300837 () Bool)

(assert (=> b!498639 (=> res!300837 e!292242)))

(declare-fun lt!226005 () SeekEntryResult!3947)

(assert (=> b!498639 (= res!300837 (or (bvsgt #b00000000000000000000000000000000 (x!47043 lt!226005)) (bvsgt (x!47043 lt!226005) #b01111111111111111111111111111110) (bvslt lt!226003 #b00000000000000000000000000000000) (bvsge lt!226003 (size!15837 a!3235)) (bvslt (index!17972 lt!226005) #b00000000000000000000000000000000) (bvsge (index!17972 lt!226005) (size!15837 a!3235)) (not (= lt!226005 (Intermediate!3947 false (index!17972 lt!226005) (x!47043 lt!226005))))))))

(assert (=> b!498639 (and (or (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226001 () Unit!14878)

(assert (=> b!498639 (= lt!226001 e!292236)))

(declare-fun c!59180 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!498639 (= c!59180 (= (select (arr!15473 a!3235) (index!17972 lt!226005)) (select (arr!15473 a!3235) j!176)))))

(assert (=> b!498639 (and (bvslt (x!47043 lt!226005) #b01111111111111111111111111111110) (or (= (select (arr!15473 a!3235) (index!17972 lt!226005)) (select (arr!15473 a!3235) j!176)) (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15473 a!3235) (index!17972 lt!226005)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498640 () Bool)

(declare-fun res!300835 () Bool)

(assert (=> b!498640 (=> (not res!300835) (not e!292241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498640 (= res!300835 (validKeyInArray!0 k!2280))))

(declare-fun e!292243 () Bool)

(declare-fun b!498641 () Bool)

(assert (=> b!498641 (= e!292243 (= (seekEntryOrOpen!0 (select (arr!15473 a!3235) j!176) a!3235 mask!3524) (Found!3947 j!176)))))

(declare-fun b!498642 () Bool)

(declare-fun res!300829 () Bool)

(assert (=> b!498642 (=> res!300829 e!292240)))

(assert (=> b!498642 (= res!300829 (or (undefined!4759 lt!226005) (not (is-Intermediate!3947 lt!226005))))))

(declare-fun b!498643 () Bool)

(declare-fun res!300828 () Bool)

(assert (=> b!498643 (=> (not res!300828) (not e!292241))))

(assert (=> b!498643 (= res!300828 (and (= (size!15837 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15837 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15837 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498638 () Bool)

(declare-fun e!292238 () Bool)

(assert (=> b!498638 (= e!292238 false)))

(declare-fun res!300839 () Bool)

(assert (=> start!45404 (=> (not res!300839) (not e!292241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45404 (= res!300839 (validMask!0 mask!3524))))

(assert (=> start!45404 e!292241))

(assert (=> start!45404 true))

(declare-fun array_inv!11247 (array!32189) Bool)

(assert (=> start!45404 (array_inv!11247 a!3235)))

(declare-fun b!498644 () Bool)

(declare-fun res!300838 () Bool)

(assert (=> b!498644 (=> (not res!300838) (not e!292241))))

(declare-fun arrayContainsKey!0 (array!32189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498644 (= res!300838 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498645 () Bool)

(declare-fun Unit!14881 () Unit!14878)

(assert (=> b!498645 (= e!292236 Unit!14881)))

(declare-fun lt!226002 () Unit!14878)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32189 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14878)

(assert (=> b!498645 (= lt!226002 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226003 #b00000000000000000000000000000000 (index!17972 lt!226005) (x!47043 lt!226005) mask!3524))))

(declare-fun res!300834 () Bool)

(assert (=> b!498645 (= res!300834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226003 lt!226009 lt!226006 mask!3524) (Intermediate!3947 false (index!17972 lt!226005) (x!47043 lt!226005))))))

(assert (=> b!498645 (=> (not res!300834) (not e!292238))))

(assert (=> b!498645 e!292238))

(declare-fun b!498646 () Bool)

(declare-fun res!300833 () Bool)

(assert (=> b!498646 (=> (not res!300833) (not e!292241))))

(assert (=> b!498646 (= res!300833 (validKeyInArray!0 (select (arr!15473 a!3235) j!176)))))

(declare-fun b!498647 () Bool)

(assert (=> b!498647 (= e!292239 (not e!292240))))

(declare-fun res!300827 () Bool)

(assert (=> b!498647 (=> res!300827 e!292240)))

(declare-fun lt!226010 () (_ BitVec 32))

(assert (=> b!498647 (= res!300827 (= lt!226005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226010 lt!226009 lt!226006 mask!3524)))))

(assert (=> b!498647 (= lt!226005 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226003 (select (arr!15473 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498647 (= lt!226010 (toIndex!0 lt!226009 mask!3524))))

(assert (=> b!498647 (= lt!226009 (select (store (arr!15473 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!498647 (= lt!226003 (toIndex!0 (select (arr!15473 a!3235) j!176) mask!3524))))

(assert (=> b!498647 (= lt!226006 (array!32190 (store (arr!15473 a!3235) i!1204 k!2280) (size!15837 a!3235)))))

(assert (=> b!498647 e!292243))

(declare-fun res!300836 () Bool)

(assert (=> b!498647 (=> (not res!300836) (not e!292243))))

(assert (=> b!498647 (= res!300836 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226008 () Unit!14878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32189 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14878)

(assert (=> b!498647 (= lt!226008 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45404 res!300839) b!498643))

(assert (= (and b!498643 res!300828) b!498646))

(assert (= (and b!498646 res!300833) b!498640))

(assert (= (and b!498640 res!300835) b!498644))

(assert (= (and b!498644 res!300838) b!498634))

(assert (= (and b!498634 res!300831) b!498635))

(assert (= (and b!498635 res!300832) b!498633))

(assert (= (and b!498633 res!300830) b!498647))

(assert (= (and b!498647 res!300836) b!498641))

(assert (= (and b!498647 (not res!300827)) b!498642))

(assert (= (and b!498642 (not res!300829)) b!498639))

(assert (= (and b!498639 c!59180) b!498645))

(assert (= (and b!498639 (not c!59180)) b!498636))

(assert (= (and b!498645 res!300834) b!498638))

(assert (= (and b!498639 (not res!300837)) b!498637))

(declare-fun m!479911 () Bool)

(assert (=> b!498639 m!479911))

(declare-fun m!479913 () Bool)

(assert (=> b!498639 m!479913))

(assert (=> b!498646 m!479913))

(assert (=> b!498646 m!479913))

(declare-fun m!479915 () Bool)

(assert (=> b!498646 m!479915))

(declare-fun m!479917 () Bool)

(assert (=> b!498633 m!479917))

(declare-fun m!479919 () Bool)

(assert (=> b!498637 m!479919))

(declare-fun m!479921 () Bool)

(assert (=> b!498634 m!479921))

(assert (=> b!498641 m!479913))

(assert (=> b!498641 m!479913))

(declare-fun m!479923 () Bool)

(assert (=> b!498641 m!479923))

(declare-fun m!479925 () Bool)

(assert (=> b!498635 m!479925))

(declare-fun m!479927 () Bool)

(assert (=> start!45404 m!479927))

(declare-fun m!479929 () Bool)

(assert (=> start!45404 m!479929))

(declare-fun m!479931 () Bool)

(assert (=> b!498647 m!479931))

(declare-fun m!479933 () Bool)

(assert (=> b!498647 m!479933))

(declare-fun m!479935 () Bool)

(assert (=> b!498647 m!479935))

(declare-fun m!479937 () Bool)

(assert (=> b!498647 m!479937))

(assert (=> b!498647 m!479913))

(declare-fun m!479939 () Bool)

(assert (=> b!498647 m!479939))

(assert (=> b!498647 m!479913))

(declare-fun m!479941 () Bool)

(assert (=> b!498647 m!479941))

(assert (=> b!498647 m!479913))

(declare-fun m!479943 () Bool)

(assert (=> b!498647 m!479943))

(declare-fun m!479945 () Bool)

(assert (=> b!498647 m!479945))

(declare-fun m!479947 () Bool)

(assert (=> b!498644 m!479947))

(declare-fun m!479949 () Bool)

(assert (=> b!498640 m!479949))

(declare-fun m!479951 () Bool)

(assert (=> b!498645 m!479951))

(assert (=> b!498645 m!479919))

(push 1)

