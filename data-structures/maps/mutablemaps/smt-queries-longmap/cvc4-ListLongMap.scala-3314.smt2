; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45842 () Bool)

(assert start!45842)

(declare-fun b!507316 () Bool)

(declare-fun res!308425 () Bool)

(declare-fun e!296895 () Bool)

(assert (=> b!507316 (=> (not res!308425) (not e!296895))))

(declare-datatypes ((array!32558 0))(
  ( (array!32559 (arr!15656 (Array (_ BitVec 32) (_ BitVec 64))) (size!16020 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32558)

(declare-datatypes ((List!9867 0))(
  ( (Nil!9864) (Cons!9863 (h!10740 (_ BitVec 64)) (t!16103 List!9867)) )
))
(declare-fun arrayNoDuplicates!0 (array!32558 (_ BitVec 32) List!9867) Bool)

(assert (=> b!507316 (= res!308425 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9864))))

(declare-fun b!507317 () Bool)

(declare-fun e!296899 () Bool)

(assert (=> b!507317 (= e!296899 true)))

(declare-fun lt!231749 () array!32558)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!231744 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4130 0))(
  ( (MissingZero!4130 (index!18708 (_ BitVec 32))) (Found!4130 (index!18709 (_ BitVec 32))) (Intermediate!4130 (undefined!4942 Bool) (index!18710 (_ BitVec 32)) (x!47726 (_ BitVec 32))) (Undefined!4130) (MissingVacant!4130 (index!18711 (_ BitVec 32))) )
))
(declare-fun lt!231752 () SeekEntryResult!4130)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32558 (_ BitVec 32)) SeekEntryResult!4130)

(assert (=> b!507317 (= lt!231752 (seekEntryOrOpen!0 lt!231744 lt!231749 mask!3524))))

(assert (=> b!507317 false))

(declare-fun b!507318 () Bool)

(declare-fun res!308431 () Bool)

(declare-fun e!296898 () Bool)

(assert (=> b!507318 (=> (not res!308431) (not e!296898))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507318 (= res!308431 (validKeyInArray!0 (select (arr!15656 a!3235) j!176)))))

(declare-fun b!507319 () Bool)

(declare-fun res!308426 () Bool)

(assert (=> b!507319 (=> (not res!308426) (not e!296898))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!507319 (= res!308426 (validKeyInArray!0 k!2280))))

(declare-fun b!507320 () Bool)

(declare-fun res!308432 () Bool)

(assert (=> b!507320 (=> (not res!308432) (not e!296898))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507320 (= res!308432 (and (= (size!16020 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16020 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16020 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507321 () Bool)

(declare-fun res!308435 () Bool)

(assert (=> b!507321 (=> (not res!308435) (not e!296895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32558 (_ BitVec 32)) Bool)

(assert (=> b!507321 (= res!308435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507322 () Bool)

(declare-fun e!296897 () Bool)

(assert (=> b!507322 (= e!296897 e!296899)))

(declare-fun res!308433 () Bool)

(assert (=> b!507322 (=> res!308433 e!296899)))

(declare-fun lt!231751 () Bool)

(declare-fun lt!231746 () SeekEntryResult!4130)

(assert (=> b!507322 (= res!308433 (or (and (not lt!231751) (undefined!4942 lt!231746)) (and (not lt!231751) (not (undefined!4942 lt!231746)))))))

(assert (=> b!507322 (= lt!231751 (not (is-Intermediate!4130 lt!231746)))))

(declare-fun b!507323 () Bool)

(declare-fun res!308427 () Bool)

(assert (=> b!507323 (=> (not res!308427) (not e!296898))))

(declare-fun arrayContainsKey!0 (array!32558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507323 (= res!308427 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507324 () Bool)

(assert (=> b!507324 (= e!296895 (not e!296897))))

(declare-fun res!308428 () Bool)

(assert (=> b!507324 (=> res!308428 e!296897)))

(declare-fun lt!231748 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32558 (_ BitVec 32)) SeekEntryResult!4130)

(assert (=> b!507324 (= res!308428 (= lt!231746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231748 lt!231744 lt!231749 mask!3524)))))

(declare-fun lt!231747 () (_ BitVec 32))

(assert (=> b!507324 (= lt!231746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231747 (select (arr!15656 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507324 (= lt!231748 (toIndex!0 lt!231744 mask!3524))))

(assert (=> b!507324 (= lt!231744 (select (store (arr!15656 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507324 (= lt!231747 (toIndex!0 (select (arr!15656 a!3235) j!176) mask!3524))))

(assert (=> b!507324 (= lt!231749 (array!32559 (store (arr!15656 a!3235) i!1204 k!2280) (size!16020 a!3235)))))

(declare-fun e!296894 () Bool)

(assert (=> b!507324 e!296894))

(declare-fun res!308430 () Bool)

(assert (=> b!507324 (=> (not res!308430) (not e!296894))))

(assert (=> b!507324 (= res!308430 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15540 0))(
  ( (Unit!15541) )
))
(declare-fun lt!231745 () Unit!15540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15540)

(assert (=> b!507324 (= lt!231745 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!308429 () Bool)

(assert (=> start!45842 (=> (not res!308429) (not e!296898))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45842 (= res!308429 (validMask!0 mask!3524))))

(assert (=> start!45842 e!296898))

(assert (=> start!45842 true))

(declare-fun array_inv!11430 (array!32558) Bool)

(assert (=> start!45842 (array_inv!11430 a!3235)))

(declare-fun b!507325 () Bool)

(assert (=> b!507325 (= e!296898 e!296895)))

(declare-fun res!308434 () Bool)

(assert (=> b!507325 (=> (not res!308434) (not e!296895))))

(declare-fun lt!231750 () SeekEntryResult!4130)

(assert (=> b!507325 (= res!308434 (or (= lt!231750 (MissingZero!4130 i!1204)) (= lt!231750 (MissingVacant!4130 i!1204))))))

(assert (=> b!507325 (= lt!231750 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507326 () Bool)

(assert (=> b!507326 (= e!296894 (= (seekEntryOrOpen!0 (select (arr!15656 a!3235) j!176) a!3235 mask!3524) (Found!4130 j!176)))))

(assert (= (and start!45842 res!308429) b!507320))

(assert (= (and b!507320 res!308432) b!507318))

(assert (= (and b!507318 res!308431) b!507319))

(assert (= (and b!507319 res!308426) b!507323))

(assert (= (and b!507323 res!308427) b!507325))

(assert (= (and b!507325 res!308434) b!507321))

(assert (= (and b!507321 res!308435) b!507316))

(assert (= (and b!507316 res!308425) b!507324))

(assert (= (and b!507324 res!308430) b!507326))

(assert (= (and b!507324 (not res!308428)) b!507322))

(assert (= (and b!507322 (not res!308433)) b!507317))

(declare-fun m!488135 () Bool)

(assert (=> b!507318 m!488135))

(assert (=> b!507318 m!488135))

(declare-fun m!488137 () Bool)

(assert (=> b!507318 m!488137))

(declare-fun m!488139 () Bool)

(assert (=> b!507319 m!488139))

(declare-fun m!488141 () Bool)

(assert (=> b!507325 m!488141))

(declare-fun m!488143 () Bool)

(assert (=> start!45842 m!488143))

(declare-fun m!488145 () Bool)

(assert (=> start!45842 m!488145))

(declare-fun m!488147 () Bool)

(assert (=> b!507316 m!488147))

(declare-fun m!488149 () Bool)

(assert (=> b!507324 m!488149))

(declare-fun m!488151 () Bool)

(assert (=> b!507324 m!488151))

(declare-fun m!488153 () Bool)

(assert (=> b!507324 m!488153))

(declare-fun m!488155 () Bool)

(assert (=> b!507324 m!488155))

(declare-fun m!488157 () Bool)

(assert (=> b!507324 m!488157))

(assert (=> b!507324 m!488135))

(declare-fun m!488159 () Bool)

(assert (=> b!507324 m!488159))

(assert (=> b!507324 m!488135))

(declare-fun m!488161 () Bool)

(assert (=> b!507324 m!488161))

(assert (=> b!507324 m!488135))

(declare-fun m!488163 () Bool)

(assert (=> b!507324 m!488163))

(declare-fun m!488165 () Bool)

(assert (=> b!507317 m!488165))

(declare-fun m!488167 () Bool)

(assert (=> b!507323 m!488167))

(assert (=> b!507326 m!488135))

(assert (=> b!507326 m!488135))

(declare-fun m!488169 () Bool)

(assert (=> b!507326 m!488169))

(declare-fun m!488171 () Bool)

(assert (=> b!507321 m!488171))

(push 1)

