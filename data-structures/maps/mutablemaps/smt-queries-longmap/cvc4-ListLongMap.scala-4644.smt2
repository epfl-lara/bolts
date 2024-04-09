; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64658 () Bool)

(assert start!64658)

(declare-fun b!727908 () Bool)

(declare-fun e!407518 () Bool)

(assert (=> b!727908 (= e!407518 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!322430 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727908 (= lt!322430 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727909 () Bool)

(declare-fun e!407523 () Bool)

(assert (=> b!727909 (= e!407523 (not e!407518))))

(declare-fun res!488616 () Bool)

(assert (=> b!727909 (=> res!488616 e!407518)))

(declare-datatypes ((SeekEntryResult!7253 0))(
  ( (MissingZero!7253 (index!31379 (_ BitVec 32))) (Found!7253 (index!31380 (_ BitVec 32))) (Intermediate!7253 (undefined!8065 Bool) (index!31381 (_ BitVec 32)) (x!62396 (_ BitVec 32))) (Undefined!7253) (MissingVacant!7253 (index!31382 (_ BitVec 32))) )
))
(declare-fun lt!322423 () SeekEntryResult!7253)

(assert (=> b!727909 (= res!488616 (or (not (is-Intermediate!7253 lt!322423)) (bvsge x!1131 (x!62396 lt!322423))))))

(declare-fun e!407520 () Bool)

(assert (=> b!727909 e!407520))

(declare-fun res!488613 () Bool)

(assert (=> b!727909 (=> (not res!488613) (not e!407520))))

(declare-datatypes ((array!41060 0))(
  ( (array!41061 (arr!19646 (Array (_ BitVec 32) (_ BitVec 64))) (size!20067 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41060)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41060 (_ BitVec 32)) Bool)

(assert (=> b!727909 (= res!488613 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24824 0))(
  ( (Unit!24825) )
))
(declare-fun lt!322427 () Unit!24824)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24824)

(assert (=> b!727909 (= lt!322427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727910 () Bool)

(declare-fun res!488607 () Bool)

(declare-fun e!407519 () Bool)

(assert (=> b!727910 (=> (not res!488607) (not e!407519))))

(declare-fun e!407521 () Bool)

(assert (=> b!727910 (= res!488607 e!407521)))

(declare-fun c!80025 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727910 (= c!80025 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727911 () Bool)

(declare-fun e!407517 () Bool)

(assert (=> b!727911 (= e!407517 e!407519)))

(declare-fun res!488612 () Bool)

(assert (=> b!727911 (=> (not res!488612) (not e!407519))))

(declare-fun lt!322428 () SeekEntryResult!7253)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41060 (_ BitVec 32)) SeekEntryResult!7253)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727911 (= res!488612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19646 a!3186) j!159) mask!3328) (select (arr!19646 a!3186) j!159) a!3186 mask!3328) lt!322428))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!727911 (= lt!322428 (Intermediate!7253 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727912 () Bool)

(declare-fun res!488608 () Bool)

(declare-fun e!407522 () Bool)

(assert (=> b!727912 (=> (not res!488608) (not e!407522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727912 (= res!488608 (validKeyInArray!0 (select (arr!19646 a!3186) j!159)))))

(declare-fun b!727913 () Bool)

(declare-fun res!488609 () Bool)

(assert (=> b!727913 (=> (not res!488609) (not e!407522))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!727913 (= res!488609 (validKeyInArray!0 k!2102))))

(declare-fun b!727914 () Bool)

(declare-fun lt!322422 () SeekEntryResult!7253)

(declare-fun e!407515 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41060 (_ BitVec 32)) SeekEntryResult!7253)

(assert (=> b!727914 (= e!407515 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19646 a!3186) j!159) a!3186 mask!3328) lt!322422))))

(declare-fun b!727915 () Bool)

(assert (=> b!727915 (= e!407520 e!407515)))

(declare-fun res!488610 () Bool)

(assert (=> b!727915 (=> (not res!488610) (not e!407515))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41060 (_ BitVec 32)) SeekEntryResult!7253)

(assert (=> b!727915 (= res!488610 (= (seekEntryOrOpen!0 (select (arr!19646 a!3186) j!159) a!3186 mask!3328) lt!322422))))

(assert (=> b!727915 (= lt!322422 (Found!7253 j!159))))

(declare-fun b!727916 () Bool)

(assert (=> b!727916 (= e!407521 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19646 a!3186) j!159) a!3186 mask!3328) lt!322428))))

(declare-fun res!488619 () Bool)

(assert (=> start!64658 (=> (not res!488619) (not e!407522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64658 (= res!488619 (validMask!0 mask!3328))))

(assert (=> start!64658 e!407522))

(assert (=> start!64658 true))

(declare-fun array_inv!15420 (array!41060) Bool)

(assert (=> start!64658 (array_inv!15420 a!3186)))

(declare-fun b!727917 () Bool)

(assert (=> b!727917 (= e!407519 e!407523)))

(declare-fun res!488618 () Bool)

(assert (=> b!727917 (=> (not res!488618) (not e!407523))))

(declare-fun lt!322426 () SeekEntryResult!7253)

(assert (=> b!727917 (= res!488618 (= lt!322426 lt!322423))))

(declare-fun lt!322424 () (_ BitVec 64))

(declare-fun lt!322425 () array!41060)

(assert (=> b!727917 (= lt!322423 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322424 lt!322425 mask!3328))))

(assert (=> b!727917 (= lt!322426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322424 mask!3328) lt!322424 lt!322425 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727917 (= lt!322424 (select (store (arr!19646 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727917 (= lt!322425 (array!41061 (store (arr!19646 a!3186) i!1173 k!2102) (size!20067 a!3186)))))

(declare-fun b!727918 () Bool)

(declare-fun res!488615 () Bool)

(assert (=> b!727918 (=> (not res!488615) (not e!407517))))

(declare-datatypes ((List!13701 0))(
  ( (Nil!13698) (Cons!13697 (h!14757 (_ BitVec 64)) (t!20024 List!13701)) )
))
(declare-fun arrayNoDuplicates!0 (array!41060 (_ BitVec 32) List!13701) Bool)

(assert (=> b!727918 (= res!488615 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13698))))

(declare-fun b!727919 () Bool)

(declare-fun res!488620 () Bool)

(assert (=> b!727919 (=> (not res!488620) (not e!407517))))

(assert (=> b!727919 (= res!488620 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20067 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20067 a!3186))))))

(declare-fun b!727920 () Bool)

(declare-fun res!488621 () Bool)

(assert (=> b!727920 (=> (not res!488621) (not e!407519))))

(assert (=> b!727920 (= res!488621 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19646 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727921 () Bool)

(declare-fun res!488614 () Bool)

(assert (=> b!727921 (=> (not res!488614) (not e!407522))))

(declare-fun arrayContainsKey!0 (array!41060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727921 (= res!488614 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727922 () Bool)

(declare-fun res!488611 () Bool)

(assert (=> b!727922 (=> (not res!488611) (not e!407522))))

(assert (=> b!727922 (= res!488611 (and (= (size!20067 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20067 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20067 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727923 () Bool)

(declare-fun res!488617 () Bool)

(assert (=> b!727923 (=> (not res!488617) (not e!407517))))

(assert (=> b!727923 (= res!488617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727924 () Bool)

(assert (=> b!727924 (= e!407521 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19646 a!3186) j!159) a!3186 mask!3328) (Found!7253 j!159)))))

(declare-fun b!727925 () Bool)

(assert (=> b!727925 (= e!407522 e!407517)))

(declare-fun res!488622 () Bool)

(assert (=> b!727925 (=> (not res!488622) (not e!407517))))

(declare-fun lt!322429 () SeekEntryResult!7253)

(assert (=> b!727925 (= res!488622 (or (= lt!322429 (MissingZero!7253 i!1173)) (= lt!322429 (MissingVacant!7253 i!1173))))))

(assert (=> b!727925 (= lt!322429 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64658 res!488619) b!727922))

(assert (= (and b!727922 res!488611) b!727912))

(assert (= (and b!727912 res!488608) b!727913))

(assert (= (and b!727913 res!488609) b!727921))

(assert (= (and b!727921 res!488614) b!727925))

(assert (= (and b!727925 res!488622) b!727923))

(assert (= (and b!727923 res!488617) b!727918))

(assert (= (and b!727918 res!488615) b!727919))

(assert (= (and b!727919 res!488620) b!727911))

(assert (= (and b!727911 res!488612) b!727920))

(assert (= (and b!727920 res!488621) b!727910))

(assert (= (and b!727910 c!80025) b!727916))

(assert (= (and b!727910 (not c!80025)) b!727924))

(assert (= (and b!727910 res!488607) b!727917))

(assert (= (and b!727917 res!488618) b!727909))

(assert (= (and b!727909 res!488613) b!727915))

(assert (= (and b!727915 res!488610) b!727914))

(assert (= (and b!727909 (not res!488616)) b!727908))

(declare-fun m!681805 () Bool)

(assert (=> b!727918 m!681805))

(declare-fun m!681807 () Bool)

(assert (=> b!727911 m!681807))

(assert (=> b!727911 m!681807))

(declare-fun m!681809 () Bool)

(assert (=> b!727911 m!681809))

(assert (=> b!727911 m!681809))

(assert (=> b!727911 m!681807))

(declare-fun m!681811 () Bool)

(assert (=> b!727911 m!681811))

(declare-fun m!681813 () Bool)

(assert (=> b!727909 m!681813))

(declare-fun m!681815 () Bool)

(assert (=> b!727909 m!681815))

(assert (=> b!727915 m!681807))

(assert (=> b!727915 m!681807))

(declare-fun m!681817 () Bool)

(assert (=> b!727915 m!681817))

(declare-fun m!681819 () Bool)

(assert (=> b!727913 m!681819))

(declare-fun m!681821 () Bool)

(assert (=> b!727917 m!681821))

(declare-fun m!681823 () Bool)

(assert (=> b!727917 m!681823))

(declare-fun m!681825 () Bool)

(assert (=> b!727917 m!681825))

(assert (=> b!727917 m!681825))

(declare-fun m!681827 () Bool)

(assert (=> b!727917 m!681827))

(declare-fun m!681829 () Bool)

(assert (=> b!727917 m!681829))

(declare-fun m!681831 () Bool)

(assert (=> b!727925 m!681831))

(assert (=> b!727924 m!681807))

(assert (=> b!727924 m!681807))

(declare-fun m!681833 () Bool)

(assert (=> b!727924 m!681833))

(declare-fun m!681835 () Bool)

(assert (=> b!727920 m!681835))

(declare-fun m!681837 () Bool)

(assert (=> b!727923 m!681837))

(declare-fun m!681839 () Bool)

(assert (=> b!727921 m!681839))

(declare-fun m!681841 () Bool)

(assert (=> b!727908 m!681841))

(declare-fun m!681843 () Bool)

(assert (=> start!64658 m!681843))

(declare-fun m!681845 () Bool)

(assert (=> start!64658 m!681845))

(assert (=> b!727914 m!681807))

(assert (=> b!727914 m!681807))

(declare-fun m!681847 () Bool)

(assert (=> b!727914 m!681847))

(assert (=> b!727916 m!681807))

(assert (=> b!727916 m!681807))

(declare-fun m!681849 () Bool)

(assert (=> b!727916 m!681849))

(assert (=> b!727912 m!681807))

(assert (=> b!727912 m!681807))

(declare-fun m!681851 () Bool)

(assert (=> b!727912 m!681851))

(push 1)

(assert (not b!727925))

(assert (not b!727911))

(assert (not b!727916))

(assert (not b!727917))

(assert (not b!727924))

(assert (not b!727915))

(assert (not b!727918))

(assert (not start!64658))

(assert (not b!727923))

(assert (not b!727914))

(assert (not b!727909))

(assert (not b!727921))

(assert (not b!727913))

(assert (not b!727912))

(assert (not b!727908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

