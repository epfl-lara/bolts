; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45286 () Bool)

(assert start!45286)

(declare-fun b!497182 () Bool)

(declare-fun res!299725 () Bool)

(declare-fun e!291441 () Bool)

(assert (=> b!497182 (=> (not res!299725) (not e!291441))))

(declare-datatypes ((array!32134 0))(
  ( (array!32135 (arr!15447 (Array (_ BitVec 32) (_ BitVec 64))) (size!15811 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32134)

(declare-datatypes ((List!9658 0))(
  ( (Nil!9655) (Cons!9654 (h!10525 (_ BitVec 64)) (t!15894 List!9658)) )
))
(declare-fun arrayNoDuplicates!0 (array!32134 (_ BitVec 32) List!9658) Bool)

(assert (=> b!497182 (= res!299725 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9655))))

(declare-fun b!497183 () Bool)

(declare-fun res!299726 () Bool)

(declare-fun e!291442 () Bool)

(assert (=> b!497183 (=> (not res!299726) (not e!291442))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497183 (= res!299726 (and (= (size!15811 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15811 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15811 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497184 () Bool)

(declare-fun e!291445 () Bool)

(assert (=> b!497184 (= e!291441 (not e!291445))))

(declare-fun res!299721 () Bool)

(assert (=> b!497184 (=> res!299721 e!291445)))

(declare-fun lt!225134 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3921 0))(
  ( (MissingZero!3921 (index!17863 (_ BitVec 32))) (Found!3921 (index!17864 (_ BitVec 32))) (Intermediate!3921 (undefined!4733 Bool) (index!17865 (_ BitVec 32)) (x!46944 (_ BitVec 32))) (Undefined!3921) (MissingVacant!3921 (index!17866 (_ BitVec 32))) )
))
(declare-fun lt!225133 () SeekEntryResult!3921)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32134 (_ BitVec 32)) SeekEntryResult!3921)

(assert (=> b!497184 (= res!299721 (= lt!225133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225134 (select (store (arr!15447 a!3235) i!1204 k!2280) j!176) (array!32135 (store (arr!15447 a!3235) i!1204 k!2280) (size!15811 a!3235)) mask!3524)))))

(declare-fun lt!225132 () (_ BitVec 32))

(assert (=> b!497184 (= lt!225133 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225132 (select (arr!15447 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497184 (= lt!225134 (toIndex!0 (select (store (arr!15447 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!497184 (= lt!225132 (toIndex!0 (select (arr!15447 a!3235) j!176) mask!3524))))

(declare-fun e!291444 () Bool)

(assert (=> b!497184 e!291444))

(declare-fun res!299722 () Bool)

(assert (=> b!497184 (=> (not res!299722) (not e!291444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32134 (_ BitVec 32)) Bool)

(assert (=> b!497184 (= res!299722 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14780 0))(
  ( (Unit!14781) )
))
(declare-fun lt!225130 () Unit!14780)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32134 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14780)

(assert (=> b!497184 (= lt!225130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497185 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32134 (_ BitVec 32)) SeekEntryResult!3921)

(assert (=> b!497185 (= e!291444 (= (seekEntryOrOpen!0 (select (arr!15447 a!3235) j!176) a!3235 mask!3524) (Found!3921 j!176)))))

(declare-fun b!497186 () Bool)

(assert (=> b!497186 (= e!291442 e!291441)))

(declare-fun res!299720 () Bool)

(assert (=> b!497186 (=> (not res!299720) (not e!291441))))

(declare-fun lt!225131 () SeekEntryResult!3921)

(assert (=> b!497186 (= res!299720 (or (= lt!225131 (MissingZero!3921 i!1204)) (= lt!225131 (MissingVacant!3921 i!1204))))))

(assert (=> b!497186 (= lt!225131 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!497187 () Bool)

(declare-fun res!299719 () Bool)

(assert (=> b!497187 (=> (not res!299719) (not e!291441))))

(assert (=> b!497187 (= res!299719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497188 () Bool)

(declare-fun res!299729 () Bool)

(assert (=> b!497188 (=> (not res!299729) (not e!291442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497188 (= res!299729 (validKeyInArray!0 k!2280))))

(declare-fun b!497189 () Bool)

(assert (=> b!497189 (= e!291445 true)))

(assert (=> b!497189 (and (bvslt (x!46944 lt!225133) #b01111111111111111111111111111110) (or (= (select (arr!15447 a!3235) (index!17865 lt!225133)) (select (arr!15447 a!3235) j!176)) (= (select (arr!15447 a!3235) (index!17865 lt!225133)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15447 a!3235) (index!17865 lt!225133)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!299727 () Bool)

(assert (=> start!45286 (=> (not res!299727) (not e!291442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45286 (= res!299727 (validMask!0 mask!3524))))

(assert (=> start!45286 e!291442))

(assert (=> start!45286 true))

(declare-fun array_inv!11221 (array!32134) Bool)

(assert (=> start!45286 (array_inv!11221 a!3235)))

(declare-fun b!497190 () Bool)

(declare-fun res!299724 () Bool)

(assert (=> b!497190 (=> res!299724 e!291445)))

(assert (=> b!497190 (= res!299724 (or (undefined!4733 lt!225133) (not (is-Intermediate!3921 lt!225133))))))

(declare-fun b!497191 () Bool)

(declare-fun res!299723 () Bool)

(assert (=> b!497191 (=> (not res!299723) (not e!291442))))

(assert (=> b!497191 (= res!299723 (validKeyInArray!0 (select (arr!15447 a!3235) j!176)))))

(declare-fun b!497192 () Bool)

(declare-fun res!299728 () Bool)

(assert (=> b!497192 (=> (not res!299728) (not e!291442))))

(declare-fun arrayContainsKey!0 (array!32134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497192 (= res!299728 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45286 res!299727) b!497183))

(assert (= (and b!497183 res!299726) b!497191))

(assert (= (and b!497191 res!299723) b!497188))

(assert (= (and b!497188 res!299729) b!497192))

(assert (= (and b!497192 res!299728) b!497186))

(assert (= (and b!497186 res!299720) b!497187))

(assert (= (and b!497187 res!299719) b!497182))

(assert (= (and b!497182 res!299725) b!497184))

(assert (= (and b!497184 res!299722) b!497185))

(assert (= (and b!497184 (not res!299721)) b!497190))

(assert (= (and b!497190 (not res!299724)) b!497189))

(declare-fun m!478597 () Bool)

(assert (=> b!497185 m!478597))

(assert (=> b!497185 m!478597))

(declare-fun m!478599 () Bool)

(assert (=> b!497185 m!478599))

(declare-fun m!478601 () Bool)

(assert (=> b!497189 m!478601))

(assert (=> b!497189 m!478597))

(assert (=> b!497191 m!478597))

(assert (=> b!497191 m!478597))

(declare-fun m!478603 () Bool)

(assert (=> b!497191 m!478603))

(declare-fun m!478605 () Bool)

(assert (=> b!497187 m!478605))

(declare-fun m!478607 () Bool)

(assert (=> b!497188 m!478607))

(declare-fun m!478609 () Bool)

(assert (=> b!497192 m!478609))

(declare-fun m!478611 () Bool)

(assert (=> b!497182 m!478611))

(declare-fun m!478613 () Bool)

(assert (=> b!497184 m!478613))

(declare-fun m!478615 () Bool)

(assert (=> b!497184 m!478615))

(declare-fun m!478617 () Bool)

(assert (=> b!497184 m!478617))

(declare-fun m!478619 () Bool)

(assert (=> b!497184 m!478619))

(assert (=> b!497184 m!478613))

(assert (=> b!497184 m!478597))

(declare-fun m!478621 () Bool)

(assert (=> b!497184 m!478621))

(assert (=> b!497184 m!478597))

(declare-fun m!478623 () Bool)

(assert (=> b!497184 m!478623))

(assert (=> b!497184 m!478597))

(declare-fun m!478625 () Bool)

(assert (=> b!497184 m!478625))

(assert (=> b!497184 m!478613))

(declare-fun m!478627 () Bool)

(assert (=> b!497184 m!478627))

(declare-fun m!478629 () Bool)

(assert (=> b!497186 m!478629))

(declare-fun m!478631 () Bool)

(assert (=> start!45286 m!478631))

(declare-fun m!478633 () Bool)

(assert (=> start!45286 m!478633))

(push 1)

