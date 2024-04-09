; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47458 () Bool)

(assert start!47458)

(declare-fun b!522181 () Bool)

(declare-fun res!320005 () Bool)

(declare-fun e!304582 () Bool)

(assert (=> b!522181 (=> res!320005 e!304582)))

(declare-datatypes ((SeekEntryResult!4449 0))(
  ( (MissingZero!4449 (index!19999 (_ BitVec 32))) (Found!4449 (index!20000 (_ BitVec 32))) (Intermediate!4449 (undefined!5261 Bool) (index!20001 (_ BitVec 32)) (x!49006 (_ BitVec 32))) (Undefined!4449) (MissingVacant!4449 (index!20002 (_ BitVec 32))) )
))
(declare-fun lt!239528 () SeekEntryResult!4449)

(assert (=> b!522181 (= res!320005 (or (undefined!5261 lt!239528) (not (is-Intermediate!4449 lt!239528))))))

(declare-fun b!522182 () Bool)

(declare-fun res!320003 () Bool)

(declare-fun e!304579 () Bool)

(assert (=> b!522182 (=> (not res!320003) (not e!304579))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33244 0))(
  ( (array!33245 (arr!15975 (Array (_ BitVec 32) (_ BitVec 64))) (size!16339 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33244)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!522182 (= res!320003 (and (= (size!16339 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16339 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16339 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522183 () Bool)

(declare-fun e!304576 () Bool)

(assert (=> b!522183 (= e!304576 false)))

(declare-fun b!522184 () Bool)

(declare-fun res!320004 () Bool)

(assert (=> b!522184 (=> (not res!320004) (not e!304579))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522184 (= res!320004 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522185 () Bool)

(declare-datatypes ((Unit!16262 0))(
  ( (Unit!16263) )
))
(declare-fun e!304580 () Unit!16262)

(declare-fun Unit!16264 () Unit!16262)

(assert (=> b!522185 (= e!304580 Unit!16264)))

(declare-fun b!522186 () Bool)

(assert (=> b!522186 (= e!304582 true)))

(assert (=> b!522186 (and (or (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239524 () Unit!16262)

(assert (=> b!522186 (= lt!239524 e!304580)))

(declare-fun c!61394 () Bool)

(assert (=> b!522186 (= c!61394 (= (select (arr!15975 a!3235) (index!20001 lt!239528)) (select (arr!15975 a!3235) j!176)))))

(assert (=> b!522186 (and (bvslt (x!49006 lt!239528) #b01111111111111111111111111111110) (or (= (select (arr!15975 a!3235) (index!20001 lt!239528)) (select (arr!15975 a!3235) j!176)) (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15975 a!3235) (index!20001 lt!239528)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522187 () Bool)

(declare-fun e!304581 () Bool)

(assert (=> b!522187 (= e!304581 (not e!304582))))

(declare-fun res!320002 () Bool)

(assert (=> b!522187 (=> res!320002 e!304582)))

(declare-fun lt!239531 () (_ BitVec 32))

(declare-fun lt!239523 () array!33244)

(declare-fun lt!239529 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33244 (_ BitVec 32)) SeekEntryResult!4449)

(assert (=> b!522187 (= res!320002 (= lt!239528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239531 lt!239529 lt!239523 mask!3524)))))

(declare-fun lt!239527 () (_ BitVec 32))

(assert (=> b!522187 (= lt!239528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239527 (select (arr!15975 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522187 (= lt!239531 (toIndex!0 lt!239529 mask!3524))))

(assert (=> b!522187 (= lt!239529 (select (store (arr!15975 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522187 (= lt!239527 (toIndex!0 (select (arr!15975 a!3235) j!176) mask!3524))))

(assert (=> b!522187 (= lt!239523 (array!33245 (store (arr!15975 a!3235) i!1204 k!2280) (size!16339 a!3235)))))

(declare-fun e!304577 () Bool)

(assert (=> b!522187 e!304577))

(declare-fun res!320000 () Bool)

(assert (=> b!522187 (=> (not res!320000) (not e!304577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33244 (_ BitVec 32)) Bool)

(assert (=> b!522187 (= res!320000 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239530 () Unit!16262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33244 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16262)

(assert (=> b!522187 (= lt!239530 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522188 () Bool)

(declare-fun Unit!16265 () Unit!16262)

(assert (=> b!522188 (= e!304580 Unit!16265)))

(declare-fun lt!239526 () Unit!16262)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33244 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16262)

(assert (=> b!522188 (= lt!239526 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239527 #b00000000000000000000000000000000 (index!20001 lt!239528) (x!49006 lt!239528) mask!3524))))

(declare-fun res!319998 () Bool)

(assert (=> b!522188 (= res!319998 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239527 lt!239529 lt!239523 mask!3524) (Intermediate!4449 false (index!20001 lt!239528) (x!49006 lt!239528))))))

(assert (=> b!522188 (=> (not res!319998) (not e!304576))))

(assert (=> b!522188 e!304576))

(declare-fun b!522189 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33244 (_ BitVec 32)) SeekEntryResult!4449)

(assert (=> b!522189 (= e!304577 (= (seekEntryOrOpen!0 (select (arr!15975 a!3235) j!176) a!3235 mask!3524) (Found!4449 j!176)))))

(declare-fun b!522190 () Bool)

(declare-fun res!320001 () Bool)

(assert (=> b!522190 (=> (not res!320001) (not e!304581))))

(assert (=> b!522190 (= res!320001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522191 () Bool)

(declare-fun res!319995 () Bool)

(assert (=> b!522191 (=> (not res!319995) (not e!304579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522191 (= res!319995 (validKeyInArray!0 k!2280))))

(declare-fun b!522192 () Bool)

(declare-fun res!319996 () Bool)

(assert (=> b!522192 (=> (not res!319996) (not e!304581))))

(declare-datatypes ((List!10186 0))(
  ( (Nil!10183) (Cons!10182 (h!11104 (_ BitVec 64)) (t!16422 List!10186)) )
))
(declare-fun arrayNoDuplicates!0 (array!33244 (_ BitVec 32) List!10186) Bool)

(assert (=> b!522192 (= res!319996 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10183))))

(declare-fun b!522193 () Bool)

(assert (=> b!522193 (= e!304579 e!304581)))

(declare-fun res!319997 () Bool)

(assert (=> b!522193 (=> (not res!319997) (not e!304581))))

(declare-fun lt!239525 () SeekEntryResult!4449)

(assert (=> b!522193 (= res!319997 (or (= lt!239525 (MissingZero!4449 i!1204)) (= lt!239525 (MissingVacant!4449 i!1204))))))

(assert (=> b!522193 (= lt!239525 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522194 () Bool)

(declare-fun res!319999 () Bool)

(assert (=> b!522194 (=> (not res!319999) (not e!304579))))

(assert (=> b!522194 (= res!319999 (validKeyInArray!0 (select (arr!15975 a!3235) j!176)))))

(declare-fun res!320006 () Bool)

(assert (=> start!47458 (=> (not res!320006) (not e!304579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47458 (= res!320006 (validMask!0 mask!3524))))

(assert (=> start!47458 e!304579))

(assert (=> start!47458 true))

(declare-fun array_inv!11749 (array!33244) Bool)

(assert (=> start!47458 (array_inv!11749 a!3235)))

(assert (= (and start!47458 res!320006) b!522182))

(assert (= (and b!522182 res!320003) b!522194))

(assert (= (and b!522194 res!319999) b!522191))

(assert (= (and b!522191 res!319995) b!522184))

(assert (= (and b!522184 res!320004) b!522193))

(assert (= (and b!522193 res!319997) b!522190))

(assert (= (and b!522190 res!320001) b!522192))

(assert (= (and b!522192 res!319996) b!522187))

(assert (= (and b!522187 res!320000) b!522189))

(assert (= (and b!522187 (not res!320002)) b!522181))

(assert (= (and b!522181 (not res!320005)) b!522186))

(assert (= (and b!522186 c!61394) b!522188))

(assert (= (and b!522186 (not c!61394)) b!522185))

(assert (= (and b!522188 res!319998) b!522183))

(declare-fun m!503131 () Bool)

(assert (=> b!522189 m!503131))

(assert (=> b!522189 m!503131))

(declare-fun m!503133 () Bool)

(assert (=> b!522189 m!503133))

(declare-fun m!503135 () Bool)

(assert (=> start!47458 m!503135))

(declare-fun m!503137 () Bool)

(assert (=> start!47458 m!503137))

(declare-fun m!503139 () Bool)

(assert (=> b!522184 m!503139))

(declare-fun m!503141 () Bool)

(assert (=> b!522190 m!503141))

(assert (=> b!522194 m!503131))

(assert (=> b!522194 m!503131))

(declare-fun m!503143 () Bool)

(assert (=> b!522194 m!503143))

(declare-fun m!503145 () Bool)

(assert (=> b!522188 m!503145))

(declare-fun m!503147 () Bool)

(assert (=> b!522188 m!503147))

(declare-fun m!503149 () Bool)

(assert (=> b!522187 m!503149))

(declare-fun m!503151 () Bool)

(assert (=> b!522187 m!503151))

(declare-fun m!503153 () Bool)

(assert (=> b!522187 m!503153))

(declare-fun m!503155 () Bool)

(assert (=> b!522187 m!503155))

(assert (=> b!522187 m!503131))

(declare-fun m!503157 () Bool)

(assert (=> b!522187 m!503157))

(declare-fun m!503159 () Bool)

(assert (=> b!522187 m!503159))

(assert (=> b!522187 m!503131))

(declare-fun m!503161 () Bool)

(assert (=> b!522187 m!503161))

(assert (=> b!522187 m!503131))

(declare-fun m!503163 () Bool)

(assert (=> b!522187 m!503163))

(declare-fun m!503165 () Bool)

(assert (=> b!522192 m!503165))

(declare-fun m!503167 () Bool)

(assert (=> b!522191 m!503167))

(declare-fun m!503169 () Bool)

(assert (=> b!522193 m!503169))

(declare-fun m!503171 () Bool)

(assert (=> b!522186 m!503171))

(assert (=> b!522186 m!503131))

(push 1)

