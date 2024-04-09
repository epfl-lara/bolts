; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47456 () Bool)

(assert start!47456)

(declare-fun b!522139 () Bool)

(declare-fun res!319962 () Bool)

(declare-fun e!304556 () Bool)

(assert (=> b!522139 (=> (not res!319962) (not e!304556))))

(declare-datatypes ((array!33242 0))(
  ( (array!33243 (arr!15974 (Array (_ BitVec 32) (_ BitVec 64))) (size!16338 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33242)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522139 (= res!319962 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522140 () Bool)

(declare-datatypes ((Unit!16258 0))(
  ( (Unit!16259) )
))
(declare-fun e!304561 () Unit!16258)

(declare-fun Unit!16260 () Unit!16258)

(assert (=> b!522140 (= e!304561 Unit!16260)))

(declare-fun res!319966 () Bool)

(assert (=> start!47456 (=> (not res!319966) (not e!304556))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47456 (= res!319966 (validMask!0 mask!3524))))

(assert (=> start!47456 e!304556))

(assert (=> start!47456 true))

(declare-fun array_inv!11748 (array!33242) Bool)

(assert (=> start!47456 (array_inv!11748 a!3235)))

(declare-fun b!522141 () Bool)

(declare-fun e!304559 () Bool)

(declare-fun e!304555 () Bool)

(assert (=> b!522141 (= e!304559 (not e!304555))))

(declare-fun res!319968 () Bool)

(assert (=> b!522141 (=> res!319968 e!304555)))

(declare-fun lt!239502 () array!33242)

(declare-fun lt!239501 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4448 0))(
  ( (MissingZero!4448 (index!19995 (_ BitVec 32))) (Found!4448 (index!19996 (_ BitVec 32))) (Intermediate!4448 (undefined!5260 Bool) (index!19997 (_ BitVec 32)) (x!48997 (_ BitVec 32))) (Undefined!4448) (MissingVacant!4448 (index!19998 (_ BitVec 32))) )
))
(declare-fun lt!239504 () SeekEntryResult!4448)

(declare-fun lt!239503 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33242 (_ BitVec 32)) SeekEntryResult!4448)

(assert (=> b!522141 (= res!319968 (= lt!239504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239503 lt!239501 lt!239502 mask!3524)))))

(declare-fun lt!239500 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!522141 (= lt!239504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239500 (select (arr!15974 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522141 (= lt!239503 (toIndex!0 lt!239501 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!522141 (= lt!239501 (select (store (arr!15974 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522141 (= lt!239500 (toIndex!0 (select (arr!15974 a!3235) j!176) mask!3524))))

(assert (=> b!522141 (= lt!239502 (array!33243 (store (arr!15974 a!3235) i!1204 k!2280) (size!16338 a!3235)))))

(declare-fun e!304560 () Bool)

(assert (=> b!522141 e!304560))

(declare-fun res!319964 () Bool)

(assert (=> b!522141 (=> (not res!319964) (not e!304560))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33242 (_ BitVec 32)) Bool)

(assert (=> b!522141 (= res!319964 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239499 () Unit!16258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33242 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16258)

(assert (=> b!522141 (= lt!239499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522142 () Bool)

(declare-fun Unit!16261 () Unit!16258)

(assert (=> b!522142 (= e!304561 Unit!16261)))

(declare-fun lt!239498 () Unit!16258)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33242 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16258)

(assert (=> b!522142 (= lt!239498 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239500 #b00000000000000000000000000000000 (index!19997 lt!239504) (x!48997 lt!239504) mask!3524))))

(declare-fun res!319969 () Bool)

(assert (=> b!522142 (= res!319969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239500 lt!239501 lt!239502 mask!3524) (Intermediate!4448 false (index!19997 lt!239504) (x!48997 lt!239504))))))

(declare-fun e!304558 () Bool)

(assert (=> b!522142 (=> (not res!319969) (not e!304558))))

(assert (=> b!522142 e!304558))

(declare-fun b!522143 () Bool)

(declare-fun res!319970 () Bool)

(assert (=> b!522143 (=> (not res!319970) (not e!304559))))

(declare-datatypes ((List!10185 0))(
  ( (Nil!10182) (Cons!10181 (h!11103 (_ BitVec 64)) (t!16421 List!10185)) )
))
(declare-fun arrayNoDuplicates!0 (array!33242 (_ BitVec 32) List!10185) Bool)

(assert (=> b!522143 (= res!319970 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10182))))

(declare-fun b!522144 () Bool)

(declare-fun res!319967 () Bool)

(assert (=> b!522144 (=> res!319967 e!304555)))

(assert (=> b!522144 (= res!319967 (or (undefined!5260 lt!239504) (not (is-Intermediate!4448 lt!239504))))))

(declare-fun b!522145 () Bool)

(declare-fun res!319963 () Bool)

(assert (=> b!522145 (=> (not res!319963) (not e!304556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522145 (= res!319963 (validKeyInArray!0 (select (arr!15974 a!3235) j!176)))))

(declare-fun b!522146 () Bool)

(assert (=> b!522146 (= e!304556 e!304559)))

(declare-fun res!319961 () Bool)

(assert (=> b!522146 (=> (not res!319961) (not e!304559))))

(declare-fun lt!239496 () SeekEntryResult!4448)

(assert (=> b!522146 (= res!319961 (or (= lt!239496 (MissingZero!4448 i!1204)) (= lt!239496 (MissingVacant!4448 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33242 (_ BitVec 32)) SeekEntryResult!4448)

(assert (=> b!522146 (= lt!239496 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522147 () Bool)

(declare-fun res!319965 () Bool)

(assert (=> b!522147 (=> (not res!319965) (not e!304556))))

(assert (=> b!522147 (= res!319965 (validKeyInArray!0 k!2280))))

(declare-fun b!522148 () Bool)

(assert (=> b!522148 (= e!304560 (= (seekEntryOrOpen!0 (select (arr!15974 a!3235) j!176) a!3235 mask!3524) (Found!4448 j!176)))))

(declare-fun b!522149 () Bool)

(declare-fun res!319959 () Bool)

(assert (=> b!522149 (=> (not res!319959) (not e!304556))))

(assert (=> b!522149 (= res!319959 (and (= (size!16338 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16338 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16338 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522150 () Bool)

(assert (=> b!522150 (= e!304555 true)))

(assert (=> b!522150 (and (or (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239497 () Unit!16258)

(assert (=> b!522150 (= lt!239497 e!304561)))

(declare-fun c!61391 () Bool)

(assert (=> b!522150 (= c!61391 (= (select (arr!15974 a!3235) (index!19997 lt!239504)) (select (arr!15974 a!3235) j!176)))))

(assert (=> b!522150 (and (bvslt (x!48997 lt!239504) #b01111111111111111111111111111110) (or (= (select (arr!15974 a!3235) (index!19997 lt!239504)) (select (arr!15974 a!3235) j!176)) (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15974 a!3235) (index!19997 lt!239504)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522151 () Bool)

(declare-fun res!319960 () Bool)

(assert (=> b!522151 (=> (not res!319960) (not e!304559))))

(assert (=> b!522151 (= res!319960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522152 () Bool)

(assert (=> b!522152 (= e!304558 false)))

(assert (= (and start!47456 res!319966) b!522149))

(assert (= (and b!522149 res!319959) b!522145))

(assert (= (and b!522145 res!319963) b!522147))

(assert (= (and b!522147 res!319965) b!522139))

(assert (= (and b!522139 res!319962) b!522146))

(assert (= (and b!522146 res!319961) b!522151))

(assert (= (and b!522151 res!319960) b!522143))

(assert (= (and b!522143 res!319970) b!522141))

(assert (= (and b!522141 res!319964) b!522148))

(assert (= (and b!522141 (not res!319968)) b!522144))

(assert (= (and b!522144 (not res!319967)) b!522150))

(assert (= (and b!522150 c!61391) b!522142))

(assert (= (and b!522150 (not c!61391)) b!522140))

(assert (= (and b!522142 res!319969) b!522152))

(declare-fun m!503089 () Bool)

(assert (=> b!522145 m!503089))

(assert (=> b!522145 m!503089))

(declare-fun m!503091 () Bool)

(assert (=> b!522145 m!503091))

(declare-fun m!503093 () Bool)

(assert (=> b!522147 m!503093))

(declare-fun m!503095 () Bool)

(assert (=> b!522142 m!503095))

(declare-fun m!503097 () Bool)

(assert (=> b!522142 m!503097))

(declare-fun m!503099 () Bool)

(assert (=> b!522139 m!503099))

(declare-fun m!503101 () Bool)

(assert (=> b!522141 m!503101))

(declare-fun m!503103 () Bool)

(assert (=> b!522141 m!503103))

(declare-fun m!503105 () Bool)

(assert (=> b!522141 m!503105))

(declare-fun m!503107 () Bool)

(assert (=> b!522141 m!503107))

(assert (=> b!522141 m!503089))

(declare-fun m!503109 () Bool)

(assert (=> b!522141 m!503109))

(assert (=> b!522141 m!503089))

(declare-fun m!503111 () Bool)

(assert (=> b!522141 m!503111))

(assert (=> b!522141 m!503089))

(declare-fun m!503113 () Bool)

(assert (=> b!522141 m!503113))

(declare-fun m!503115 () Bool)

(assert (=> b!522141 m!503115))

(declare-fun m!503117 () Bool)

(assert (=> start!47456 m!503117))

(declare-fun m!503119 () Bool)

(assert (=> start!47456 m!503119))

(declare-fun m!503121 () Bool)

(assert (=> b!522151 m!503121))

(declare-fun m!503123 () Bool)

(assert (=> b!522146 m!503123))

(declare-fun m!503125 () Bool)

(assert (=> b!522143 m!503125))

(assert (=> b!522148 m!503089))

(assert (=> b!522148 m!503089))

(declare-fun m!503127 () Bool)

(assert (=> b!522148 m!503127))

(declare-fun m!503129 () Bool)

(assert (=> b!522150 m!503129))

(assert (=> b!522150 m!503089))

(push 1)

