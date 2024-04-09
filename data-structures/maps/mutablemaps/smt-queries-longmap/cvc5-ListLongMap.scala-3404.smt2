; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47158 () Bool)

(assert start!47158)

(declare-fun b!519058 () Bool)

(declare-fun res!317785 () Bool)

(declare-fun e!302877 () Bool)

(assert (=> b!519058 (=> (not res!317785) (not e!302877))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519058 (= res!317785 (validKeyInArray!0 k!2280))))

(declare-fun b!519059 () Bool)

(declare-fun res!317781 () Bool)

(declare-fun e!302879 () Bool)

(assert (=> b!519059 (=> res!317781 e!302879)))

(declare-datatypes ((SeekEntryResult!4398 0))(
  ( (MissingZero!4398 (index!19786 (_ BitVec 32))) (Found!4398 (index!19787 (_ BitVec 32))) (Intermediate!4398 (undefined!5210 Bool) (index!19788 (_ BitVec 32)) (x!48792 (_ BitVec 32))) (Undefined!4398) (MissingVacant!4398 (index!19789 (_ BitVec 32))) )
))
(declare-fun lt!237714 () SeekEntryResult!4398)

(assert (=> b!519059 (= res!317781 (or (undefined!5210 lt!237714) (not (is-Intermediate!4398 lt!237714))))))

(declare-fun res!317784 () Bool)

(assert (=> start!47158 (=> (not res!317784) (not e!302877))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47158 (= res!317784 (validMask!0 mask!3524))))

(assert (=> start!47158 e!302877))

(assert (=> start!47158 true))

(declare-datatypes ((array!33133 0))(
  ( (array!33134 (arr!15924 (Array (_ BitVec 32) (_ BitVec 64))) (size!16288 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33133)

(declare-fun array_inv!11698 (array!33133) Bool)

(assert (=> start!47158 (array_inv!11698 a!3235)))

(declare-fun b!519060 () Bool)

(declare-datatypes ((Unit!16058 0))(
  ( (Unit!16059) )
))
(declare-fun e!302880 () Unit!16058)

(declare-fun Unit!16060 () Unit!16058)

(assert (=> b!519060 (= e!302880 Unit!16060)))

(declare-fun lt!237720 () Unit!16058)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!237717 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33133 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16058)

(assert (=> b!519060 (= lt!237720 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237717 #b00000000000000000000000000000000 (index!19788 lt!237714) (x!48792 lt!237714) mask!3524))))

(declare-fun lt!237715 () array!33133)

(declare-fun res!317786 () Bool)

(declare-fun lt!237722 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33133 (_ BitVec 32)) SeekEntryResult!4398)

(assert (=> b!519060 (= res!317786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237717 lt!237722 lt!237715 mask!3524) (Intermediate!4398 false (index!19788 lt!237714) (x!48792 lt!237714))))))

(declare-fun e!302878 () Bool)

(assert (=> b!519060 (=> (not res!317786) (not e!302878))))

(assert (=> b!519060 e!302878))

(declare-fun b!519061 () Bool)

(declare-fun res!317787 () Bool)

(declare-fun e!302876 () Bool)

(assert (=> b!519061 (=> (not res!317787) (not e!302876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33133 (_ BitVec 32)) Bool)

(assert (=> b!519061 (= res!317787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun e!302875 () Bool)

(declare-fun b!519062 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33133 (_ BitVec 32)) SeekEntryResult!4398)

(assert (=> b!519062 (= e!302875 (= (seekEntryOrOpen!0 (select (arr!15924 a!3235) j!176) a!3235 mask!3524) (Found!4398 j!176)))))

(declare-fun b!519063 () Bool)

(declare-fun res!317790 () Bool)

(assert (=> b!519063 (=> (not res!317790) (not e!302877))))

(assert (=> b!519063 (= res!317790 (validKeyInArray!0 (select (arr!15924 a!3235) j!176)))))

(declare-fun b!519064 () Bool)

(assert (=> b!519064 (= e!302878 false)))

(declare-fun b!519065 () Bool)

(declare-fun res!317788 () Bool)

(assert (=> b!519065 (=> (not res!317788) (not e!302877))))

(declare-fun arrayContainsKey!0 (array!33133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519065 (= res!317788 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!519066 () Bool)

(declare-fun res!317791 () Bool)

(assert (=> b!519066 (=> (not res!317791) (not e!302877))))

(assert (=> b!519066 (= res!317791 (and (= (size!16288 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16288 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16288 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!519067 () Bool)

(declare-fun res!317789 () Bool)

(assert (=> b!519067 (=> (not res!317789) (not e!302876))))

(declare-datatypes ((List!10135 0))(
  ( (Nil!10132) (Cons!10131 (h!11044 (_ BitVec 64)) (t!16371 List!10135)) )
))
(declare-fun arrayNoDuplicates!0 (array!33133 (_ BitVec 32) List!10135) Bool)

(assert (=> b!519067 (= res!317789 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10132))))

(declare-fun b!519068 () Bool)

(assert (=> b!519068 (= e!302876 (not e!302879))))

(declare-fun res!317782 () Bool)

(assert (=> b!519068 (=> res!317782 e!302879)))

(declare-fun lt!237718 () (_ BitVec 32))

(assert (=> b!519068 (= res!317782 (= lt!237714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237718 lt!237722 lt!237715 mask!3524)))))

(assert (=> b!519068 (= lt!237714 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237717 (select (arr!15924 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519068 (= lt!237718 (toIndex!0 lt!237722 mask!3524))))

(assert (=> b!519068 (= lt!237722 (select (store (arr!15924 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519068 (= lt!237717 (toIndex!0 (select (arr!15924 a!3235) j!176) mask!3524))))

(assert (=> b!519068 (= lt!237715 (array!33134 (store (arr!15924 a!3235) i!1204 k!2280) (size!16288 a!3235)))))

(assert (=> b!519068 e!302875))

(declare-fun res!317792 () Bool)

(assert (=> b!519068 (=> (not res!317792) (not e!302875))))

(assert (=> b!519068 (= res!317792 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237716 () Unit!16058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16058)

(assert (=> b!519068 (= lt!237716 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519069 () Bool)

(assert (=> b!519069 (= e!302879 (or (= (select (arr!15924 a!3235) (index!19788 lt!237714)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15924 a!3235) (index!19788 lt!237714)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!237719 () Unit!16058)

(assert (=> b!519069 (= lt!237719 e!302880)))

(declare-fun c!60935 () Bool)

(assert (=> b!519069 (= c!60935 (= (select (arr!15924 a!3235) (index!19788 lt!237714)) (select (arr!15924 a!3235) j!176)))))

(assert (=> b!519069 (and (bvslt (x!48792 lt!237714) #b01111111111111111111111111111110) (or (= (select (arr!15924 a!3235) (index!19788 lt!237714)) (select (arr!15924 a!3235) j!176)) (= (select (arr!15924 a!3235) (index!19788 lt!237714)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15924 a!3235) (index!19788 lt!237714)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519070 () Bool)

(declare-fun Unit!16061 () Unit!16058)

(assert (=> b!519070 (= e!302880 Unit!16061)))

(declare-fun b!519071 () Bool)

(assert (=> b!519071 (= e!302877 e!302876)))

(declare-fun res!317783 () Bool)

(assert (=> b!519071 (=> (not res!317783) (not e!302876))))

(declare-fun lt!237721 () SeekEntryResult!4398)

(assert (=> b!519071 (= res!317783 (or (= lt!237721 (MissingZero!4398 i!1204)) (= lt!237721 (MissingVacant!4398 i!1204))))))

(assert (=> b!519071 (= lt!237721 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!47158 res!317784) b!519066))

(assert (= (and b!519066 res!317791) b!519063))

(assert (= (and b!519063 res!317790) b!519058))

(assert (= (and b!519058 res!317785) b!519065))

(assert (= (and b!519065 res!317788) b!519071))

(assert (= (and b!519071 res!317783) b!519061))

(assert (= (and b!519061 res!317787) b!519067))

(assert (= (and b!519067 res!317789) b!519068))

(assert (= (and b!519068 res!317792) b!519062))

(assert (= (and b!519068 (not res!317782)) b!519059))

(assert (= (and b!519059 (not res!317781)) b!519069))

(assert (= (and b!519069 c!60935) b!519060))

(assert (= (and b!519069 (not c!60935)) b!519070))

(assert (= (and b!519060 res!317786) b!519064))

(declare-fun m!500287 () Bool)

(assert (=> b!519069 m!500287))

(declare-fun m!500289 () Bool)

(assert (=> b!519069 m!500289))

(declare-fun m!500291 () Bool)

(assert (=> b!519068 m!500291))

(declare-fun m!500293 () Bool)

(assert (=> b!519068 m!500293))

(declare-fun m!500295 () Bool)

(assert (=> b!519068 m!500295))

(declare-fun m!500297 () Bool)

(assert (=> b!519068 m!500297))

(declare-fun m!500299 () Bool)

(assert (=> b!519068 m!500299))

(assert (=> b!519068 m!500289))

(declare-fun m!500301 () Bool)

(assert (=> b!519068 m!500301))

(assert (=> b!519068 m!500289))

(declare-fun m!500303 () Bool)

(assert (=> b!519068 m!500303))

(assert (=> b!519068 m!500289))

(declare-fun m!500305 () Bool)

(assert (=> b!519068 m!500305))

(declare-fun m!500307 () Bool)

(assert (=> b!519071 m!500307))

(assert (=> b!519062 m!500289))

(assert (=> b!519062 m!500289))

(declare-fun m!500309 () Bool)

(assert (=> b!519062 m!500309))

(declare-fun m!500311 () Bool)

(assert (=> b!519060 m!500311))

(declare-fun m!500313 () Bool)

(assert (=> b!519060 m!500313))

(declare-fun m!500315 () Bool)

(assert (=> b!519061 m!500315))

(declare-fun m!500317 () Bool)

(assert (=> b!519067 m!500317))

(declare-fun m!500319 () Bool)

(assert (=> b!519058 m!500319))

(assert (=> b!519063 m!500289))

(assert (=> b!519063 m!500289))

(declare-fun m!500321 () Bool)

(assert (=> b!519063 m!500321))

(declare-fun m!500323 () Bool)

(assert (=> b!519065 m!500323))

(declare-fun m!500325 () Bool)

(assert (=> start!47158 m!500325))

(declare-fun m!500327 () Bool)

(assert (=> start!47158 m!500327))

(push 1)

