; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45500 () Bool)

(assert start!45500)

(declare-fun b!500793 () Bool)

(declare-fun e!293388 () Bool)

(declare-fun e!293391 () Bool)

(assert (=> b!500793 (= e!293388 e!293391)))

(declare-fun res!302704 () Bool)

(assert (=> b!500793 (=> (not res!302704) (not e!293391))))

(declare-datatypes ((SeekEntryResult!3995 0))(
  ( (MissingZero!3995 (index!18162 (_ BitVec 32))) (Found!3995 (index!18163 (_ BitVec 32))) (Intermediate!3995 (undefined!4807 Bool) (index!18164 (_ BitVec 32)) (x!47219 (_ BitVec 32))) (Undefined!3995) (MissingVacant!3995 (index!18165 (_ BitVec 32))) )
))
(declare-fun lt!227448 () SeekEntryResult!3995)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500793 (= res!302704 (or (= lt!227448 (MissingZero!3995 i!1204)) (= lt!227448 (MissingVacant!3995 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!32285 0))(
  ( (array!32286 (arr!15521 (Array (_ BitVec 32) (_ BitVec 64))) (size!15885 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32285)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32285 (_ BitVec 32)) SeekEntryResult!3995)

(assert (=> b!500793 (= lt!227448 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!293395 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!500794 () Bool)

(assert (=> b!500794 (= e!293395 (= (seekEntryOrOpen!0 (select (arr!15521 a!3235) j!176) a!3235 mask!3524) (Found!3995 j!176)))))

(declare-fun b!500796 () Bool)

(declare-fun e!293392 () Bool)

(assert (=> b!500796 (= e!293391 (not e!293392))))

(declare-fun res!302701 () Bool)

(assert (=> b!500796 (=> res!302701 e!293392)))

(declare-fun lt!227444 () (_ BitVec 64))

(declare-fun lt!227446 () SeekEntryResult!3995)

(declare-fun lt!227442 () (_ BitVec 32))

(declare-fun lt!227449 () array!32285)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32285 (_ BitVec 32)) SeekEntryResult!3995)

(assert (=> b!500796 (= res!302701 (= lt!227446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227442 lt!227444 lt!227449 mask!3524)))))

(declare-fun lt!227447 () (_ BitVec 32))

(assert (=> b!500796 (= lt!227446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227447 (select (arr!15521 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500796 (= lt!227442 (toIndex!0 lt!227444 mask!3524))))

(assert (=> b!500796 (= lt!227444 (select (store (arr!15521 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!500796 (= lt!227447 (toIndex!0 (select (arr!15521 a!3235) j!176) mask!3524))))

(assert (=> b!500796 (= lt!227449 (array!32286 (store (arr!15521 a!3235) i!1204 k!2280) (size!15885 a!3235)))))

(assert (=> b!500796 e!293395))

(declare-fun res!302711 () Bool)

(assert (=> b!500796 (=> (not res!302711) (not e!293395))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32285 (_ BitVec 32)) Bool)

(assert (=> b!500796 (= res!302711 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15070 0))(
  ( (Unit!15071) )
))
(declare-fun lt!227441 () Unit!15070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15070)

(assert (=> b!500796 (= lt!227441 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500797 () Bool)

(declare-fun res!302709 () Bool)

(assert (=> b!500797 (=> res!302709 e!293392)))

(assert (=> b!500797 (= res!302709 (or (undefined!4807 lt!227446) (not (is-Intermediate!3995 lt!227446))))))

(declare-fun b!500798 () Bool)

(declare-fun e!293389 () Unit!15070)

(declare-fun Unit!15072 () Unit!15070)

(assert (=> b!500798 (= e!293389 Unit!15072)))

(declare-fun b!500799 () Bool)

(declare-fun res!302707 () Bool)

(assert (=> b!500799 (=> (not res!302707) (not e!293388))))

(declare-fun arrayContainsKey!0 (array!32285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500799 (= res!302707 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500800 () Bool)

(declare-fun res!302710 () Bool)

(assert (=> b!500800 (=> (not res!302710) (not e!293391))))

(declare-datatypes ((List!9732 0))(
  ( (Nil!9729) (Cons!9728 (h!10602 (_ BitVec 64)) (t!15968 List!9732)) )
))
(declare-fun arrayNoDuplicates!0 (array!32285 (_ BitVec 32) List!9732) Bool)

(assert (=> b!500800 (= res!302710 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9729))))

(declare-fun b!500801 () Bool)

(declare-fun Unit!15073 () Unit!15070)

(assert (=> b!500801 (= e!293389 Unit!15073)))

(declare-fun lt!227450 () Unit!15070)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15070)

(assert (=> b!500801 (= lt!227450 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!227447 #b00000000000000000000000000000000 (index!18164 lt!227446) (x!47219 lt!227446) mask!3524))))

(declare-fun res!302700 () Bool)

(assert (=> b!500801 (= res!302700 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227447 lt!227444 lt!227449 mask!3524) (Intermediate!3995 false (index!18164 lt!227446) (x!47219 lt!227446))))))

(declare-fun e!293394 () Bool)

(assert (=> b!500801 (=> (not res!302700) (not e!293394))))

(assert (=> b!500801 e!293394))

(declare-fun b!500795 () Bool)

(assert (=> b!500795 (= e!293394 false)))

(declare-fun res!302703 () Bool)

(assert (=> start!45500 (=> (not res!302703) (not e!293388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45500 (= res!302703 (validMask!0 mask!3524))))

(assert (=> start!45500 e!293388))

(assert (=> start!45500 true))

(declare-fun array_inv!11295 (array!32285) Bool)

(assert (=> start!45500 (array_inv!11295 a!3235)))

(declare-fun b!500802 () Bool)

(declare-fun res!302702 () Bool)

(assert (=> b!500802 (=> (not res!302702) (not e!293391))))

(assert (=> b!500802 (= res!302702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500803 () Bool)

(declare-fun res!302708 () Bool)

(assert (=> b!500803 (=> (not res!302708) (not e!293388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500803 (= res!302708 (validKeyInArray!0 k!2280))))

(declare-fun b!500804 () Bool)

(declare-fun res!302705 () Bool)

(assert (=> b!500804 (=> (not res!302705) (not e!293388))))

(assert (=> b!500804 (= res!302705 (validKeyInArray!0 (select (arr!15521 a!3235) j!176)))))

(declare-fun b!500805 () Bool)

(declare-fun e!293390 () Bool)

(assert (=> b!500805 (= e!293390 true)))

(declare-fun lt!227445 () SeekEntryResult!3995)

(assert (=> b!500805 (= lt!227445 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227447 lt!227444 lt!227449 mask!3524))))

(declare-fun b!500806 () Bool)

(declare-fun res!302706 () Bool)

(assert (=> b!500806 (=> (not res!302706) (not e!293388))))

(assert (=> b!500806 (= res!302706 (and (= (size!15885 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15885 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15885 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500807 () Bool)

(assert (=> b!500807 (= e!293392 e!293390)))

(declare-fun res!302699 () Bool)

(assert (=> b!500807 (=> res!302699 e!293390)))

(assert (=> b!500807 (= res!302699 (or (bvsgt #b00000000000000000000000000000000 (x!47219 lt!227446)) (bvsgt (x!47219 lt!227446) #b01111111111111111111111111111110) (bvslt lt!227447 #b00000000000000000000000000000000) (bvsge lt!227447 (size!15885 a!3235)) (bvslt (index!18164 lt!227446) #b00000000000000000000000000000000) (bvsge (index!18164 lt!227446) (size!15885 a!3235)) (not (= lt!227446 (Intermediate!3995 false (index!18164 lt!227446) (x!47219 lt!227446))))))))

(assert (=> b!500807 (and (or (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227443 () Unit!15070)

(assert (=> b!500807 (= lt!227443 e!293389)))

(declare-fun c!59324 () Bool)

(assert (=> b!500807 (= c!59324 (= (select (arr!15521 a!3235) (index!18164 lt!227446)) (select (arr!15521 a!3235) j!176)))))

(assert (=> b!500807 (and (bvslt (x!47219 lt!227446) #b01111111111111111111111111111110) (or (= (select (arr!15521 a!3235) (index!18164 lt!227446)) (select (arr!15521 a!3235) j!176)) (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15521 a!3235) (index!18164 lt!227446)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45500 res!302703) b!500806))

(assert (= (and b!500806 res!302706) b!500804))

(assert (= (and b!500804 res!302705) b!500803))

(assert (= (and b!500803 res!302708) b!500799))

(assert (= (and b!500799 res!302707) b!500793))

(assert (= (and b!500793 res!302704) b!500802))

(assert (= (and b!500802 res!302702) b!500800))

(assert (= (and b!500800 res!302710) b!500796))

(assert (= (and b!500796 res!302711) b!500794))

(assert (= (and b!500796 (not res!302701)) b!500797))

(assert (= (and b!500797 (not res!302709)) b!500807))

(assert (= (and b!500807 c!59324) b!500801))

(assert (= (and b!500807 (not c!59324)) b!500798))

(assert (= (and b!500801 res!302700) b!500795))

(assert (= (and b!500807 (not res!302699)) b!500805))

(declare-fun m!481927 () Bool)

(assert (=> b!500800 m!481927))

(declare-fun m!481929 () Bool)

(assert (=> b!500803 m!481929))

(declare-fun m!481931 () Bool)

(assert (=> b!500793 m!481931))

(declare-fun m!481933 () Bool)

(assert (=> start!45500 m!481933))

(declare-fun m!481935 () Bool)

(assert (=> start!45500 m!481935))

(declare-fun m!481937 () Bool)

(assert (=> b!500799 m!481937))

(declare-fun m!481939 () Bool)

(assert (=> b!500802 m!481939))

(declare-fun m!481941 () Bool)

(assert (=> b!500807 m!481941))

(declare-fun m!481943 () Bool)

(assert (=> b!500807 m!481943))

(declare-fun m!481945 () Bool)

(assert (=> b!500805 m!481945))

(assert (=> b!500794 m!481943))

(assert (=> b!500794 m!481943))

(declare-fun m!481947 () Bool)

(assert (=> b!500794 m!481947))

(declare-fun m!481949 () Bool)

(assert (=> b!500801 m!481949))

(assert (=> b!500801 m!481945))

(assert (=> b!500804 m!481943))

(assert (=> b!500804 m!481943))

(declare-fun m!481951 () Bool)

(assert (=> b!500804 m!481951))

(assert (=> b!500796 m!481943))

(declare-fun m!481953 () Bool)

(assert (=> b!500796 m!481953))

(declare-fun m!481955 () Bool)

(assert (=> b!500796 m!481955))

(declare-fun m!481957 () Bool)

(assert (=> b!500796 m!481957))

(declare-fun m!481959 () Bool)

(assert (=> b!500796 m!481959))

(declare-fun m!481961 () Bool)

(assert (=> b!500796 m!481961))

(assert (=> b!500796 m!481943))

(declare-fun m!481963 () Bool)

(assert (=> b!500796 m!481963))

(assert (=> b!500796 m!481943))

(declare-fun m!481965 () Bool)

(assert (=> b!500796 m!481965))

(declare-fun m!481967 () Bool)

(assert (=> b!500796 m!481967))

(push 1)

