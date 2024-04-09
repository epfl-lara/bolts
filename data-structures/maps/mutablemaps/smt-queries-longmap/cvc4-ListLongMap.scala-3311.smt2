; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45824 () Bool)

(assert start!45824)

(declare-fun b!507019 () Bool)

(declare-fun e!296736 () Bool)

(assert (=> b!507019 (= e!296736 true)))

(declare-datatypes ((SeekEntryResult!4121 0))(
  ( (MissingZero!4121 (index!18672 (_ BitVec 32))) (Found!4121 (index!18673 (_ BitVec 32))) (Intermediate!4121 (undefined!4933 Bool) (index!18674 (_ BitVec 32)) (x!47693 (_ BitVec 32))) (Undefined!4121) (MissingVacant!4121 (index!18675 (_ BitVec 32))) )
))
(declare-fun lt!231505 () SeekEntryResult!4121)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32540 0))(
  ( (array!32541 (arr!15647 (Array (_ BitVec 32) (_ BitVec 64))) (size!16011 (_ BitVec 32))) )
))
(declare-fun lt!231508 () array!32540)

(declare-fun lt!231504 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32540 (_ BitVec 32)) SeekEntryResult!4121)

(assert (=> b!507019 (= lt!231505 (seekEntryOrOpen!0 lt!231504 lt!231508 mask!3524))))

(assert (=> b!507019 false))

(declare-fun b!507020 () Bool)

(declare-fun res!308136 () Bool)

(declare-fun e!296733 () Bool)

(assert (=> b!507020 (=> (not res!308136) (not e!296733))))

(declare-fun a!3235 () array!32540)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507020 (= res!308136 (validKeyInArray!0 (select (arr!15647 a!3235) j!176)))))

(declare-fun b!507021 () Bool)

(declare-fun res!308130 () Bool)

(assert (=> b!507021 (=> (not res!308130) (not e!296733))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!507021 (= res!308130 (validKeyInArray!0 k!2280))))

(declare-fun b!507022 () Bool)

(declare-fun e!296735 () Bool)

(assert (=> b!507022 (= e!296735 (= (seekEntryOrOpen!0 (select (arr!15647 a!3235) j!176) a!3235 mask!3524) (Found!4121 j!176)))))

(declare-fun res!308133 () Bool)

(assert (=> start!45824 (=> (not res!308133) (not e!296733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45824 (= res!308133 (validMask!0 mask!3524))))

(assert (=> start!45824 e!296733))

(assert (=> start!45824 true))

(declare-fun array_inv!11421 (array!32540) Bool)

(assert (=> start!45824 (array_inv!11421 a!3235)))

(declare-fun b!507023 () Bool)

(declare-fun res!308129 () Bool)

(declare-fun e!296737 () Bool)

(assert (=> b!507023 (=> (not res!308129) (not e!296737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32540 (_ BitVec 32)) Bool)

(assert (=> b!507023 (= res!308129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507024 () Bool)

(declare-fun res!308134 () Bool)

(assert (=> b!507024 (=> (not res!308134) (not e!296733))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507024 (= res!308134 (and (= (size!16011 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16011 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16011 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507025 () Bool)

(declare-fun res!308132 () Bool)

(assert (=> b!507025 (=> (not res!308132) (not e!296733))))

(declare-fun arrayContainsKey!0 (array!32540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507025 (= res!308132 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507026 () Bool)

(declare-fun e!296732 () Bool)

(assert (=> b!507026 (= e!296737 (not e!296732))))

(declare-fun res!308131 () Bool)

(assert (=> b!507026 (=> res!308131 e!296732)))

(declare-fun lt!231509 () SeekEntryResult!4121)

(declare-fun lt!231507 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32540 (_ BitVec 32)) SeekEntryResult!4121)

(assert (=> b!507026 (= res!308131 (= lt!231509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231507 lt!231504 lt!231508 mask!3524)))))

(declare-fun lt!231502 () (_ BitVec 32))

(assert (=> b!507026 (= lt!231509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231502 (select (arr!15647 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507026 (= lt!231507 (toIndex!0 lt!231504 mask!3524))))

(assert (=> b!507026 (= lt!231504 (select (store (arr!15647 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507026 (= lt!231502 (toIndex!0 (select (arr!15647 a!3235) j!176) mask!3524))))

(assert (=> b!507026 (= lt!231508 (array!32541 (store (arr!15647 a!3235) i!1204 k!2280) (size!16011 a!3235)))))

(assert (=> b!507026 e!296735))

(declare-fun res!308138 () Bool)

(assert (=> b!507026 (=> (not res!308138) (not e!296735))))

(assert (=> b!507026 (= res!308138 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15522 0))(
  ( (Unit!15523) )
))
(declare-fun lt!231506 () Unit!15522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15522)

(assert (=> b!507026 (= lt!231506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507027 () Bool)

(assert (=> b!507027 (= e!296732 e!296736)))

(declare-fun res!308137 () Bool)

(assert (=> b!507027 (=> res!308137 e!296736)))

(declare-fun lt!231501 () Bool)

(assert (=> b!507027 (= res!308137 (or (and (not lt!231501) (undefined!4933 lt!231509)) (and (not lt!231501) (not (undefined!4933 lt!231509)))))))

(assert (=> b!507027 (= lt!231501 (not (is-Intermediate!4121 lt!231509)))))

(declare-fun b!507028 () Bool)

(declare-fun res!308128 () Bool)

(assert (=> b!507028 (=> (not res!308128) (not e!296737))))

(declare-datatypes ((List!9858 0))(
  ( (Nil!9855) (Cons!9854 (h!10731 (_ BitVec 64)) (t!16094 List!9858)) )
))
(declare-fun arrayNoDuplicates!0 (array!32540 (_ BitVec 32) List!9858) Bool)

(assert (=> b!507028 (= res!308128 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9855))))

(declare-fun b!507029 () Bool)

(assert (=> b!507029 (= e!296733 e!296737)))

(declare-fun res!308135 () Bool)

(assert (=> b!507029 (=> (not res!308135) (not e!296737))))

(declare-fun lt!231503 () SeekEntryResult!4121)

(assert (=> b!507029 (= res!308135 (or (= lt!231503 (MissingZero!4121 i!1204)) (= lt!231503 (MissingVacant!4121 i!1204))))))

(assert (=> b!507029 (= lt!231503 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45824 res!308133) b!507024))

(assert (= (and b!507024 res!308134) b!507020))

(assert (= (and b!507020 res!308136) b!507021))

(assert (= (and b!507021 res!308130) b!507025))

(assert (= (and b!507025 res!308132) b!507029))

(assert (= (and b!507029 res!308135) b!507023))

(assert (= (and b!507023 res!308129) b!507028))

(assert (= (and b!507028 res!308128) b!507026))

(assert (= (and b!507026 res!308138) b!507022))

(assert (= (and b!507026 (not res!308131)) b!507027))

(assert (= (and b!507027 (not res!308137)) b!507019))

(declare-fun m!487793 () Bool)

(assert (=> b!507028 m!487793))

(declare-fun m!487795 () Bool)

(assert (=> b!507029 m!487795))

(declare-fun m!487797 () Bool)

(assert (=> start!45824 m!487797))

(declare-fun m!487799 () Bool)

(assert (=> start!45824 m!487799))

(declare-fun m!487801 () Bool)

(assert (=> b!507025 m!487801))

(declare-fun m!487803 () Bool)

(assert (=> b!507020 m!487803))

(assert (=> b!507020 m!487803))

(declare-fun m!487805 () Bool)

(assert (=> b!507020 m!487805))

(declare-fun m!487807 () Bool)

(assert (=> b!507019 m!487807))

(declare-fun m!487809 () Bool)

(assert (=> b!507023 m!487809))

(assert (=> b!507022 m!487803))

(assert (=> b!507022 m!487803))

(declare-fun m!487811 () Bool)

(assert (=> b!507022 m!487811))

(declare-fun m!487813 () Bool)

(assert (=> b!507021 m!487813))

(declare-fun m!487815 () Bool)

(assert (=> b!507026 m!487815))

(declare-fun m!487817 () Bool)

(assert (=> b!507026 m!487817))

(declare-fun m!487819 () Bool)

(assert (=> b!507026 m!487819))

(declare-fun m!487821 () Bool)

(assert (=> b!507026 m!487821))

(assert (=> b!507026 m!487803))

(declare-fun m!487823 () Bool)

(assert (=> b!507026 m!487823))

(declare-fun m!487825 () Bool)

(assert (=> b!507026 m!487825))

(assert (=> b!507026 m!487803))

(declare-fun m!487827 () Bool)

(assert (=> b!507026 m!487827))

(assert (=> b!507026 m!487803))

(declare-fun m!487829 () Bool)

(assert (=> b!507026 m!487829))

(push 1)

