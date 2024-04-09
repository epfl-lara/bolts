; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47702 () Bool)

(assert start!47702)

(declare-fun b!524128 () Bool)

(declare-fun e!305695 () Bool)

(declare-fun e!305692 () Bool)

(assert (=> b!524128 (= e!305695 (not e!305692))))

(declare-fun res!321207 () Bool)

(assert (=> b!524128 (=> res!321207 e!305692)))

(declare-datatypes ((SeekEntryResult!4472 0))(
  ( (MissingZero!4472 (index!20100 (_ BitVec 32))) (Found!4472 (index!20101 (_ BitVec 32))) (Intermediate!4472 (undefined!5284 Bool) (index!20102 (_ BitVec 32)) (x!49112 (_ BitVec 32))) (Undefined!4472) (MissingVacant!4472 (index!20103 (_ BitVec 32))) )
))
(declare-fun lt!240582 () SeekEntryResult!4472)

(declare-fun lt!240583 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33299 0))(
  ( (array!33300 (arr!15998 (Array (_ BitVec 32) (_ BitVec 64))) (size!16362 (_ BitVec 32))) )
))
(declare-fun lt!240584 () array!33299)

(declare-fun lt!240581 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33299 (_ BitVec 32)) SeekEntryResult!4472)

(assert (=> b!524128 (= res!321207 (= lt!240582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240581 lt!240583 lt!240584 mask!3524)))))

(declare-fun a!3235 () array!33299)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!240577 () (_ BitVec 32))

(assert (=> b!524128 (= lt!240582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240577 (select (arr!15998 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524128 (= lt!240581 (toIndex!0 lt!240583 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!524128 (= lt!240583 (select (store (arr!15998 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!524128 (= lt!240577 (toIndex!0 (select (arr!15998 a!3235) j!176) mask!3524))))

(assert (=> b!524128 (= lt!240584 (array!33300 (store (arr!15998 a!3235) i!1204 k!2280) (size!16362 a!3235)))))

(declare-fun e!305690 () Bool)

(assert (=> b!524128 e!305690))

(declare-fun res!321201 () Bool)

(assert (=> b!524128 (=> (not res!321201) (not e!305690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33299 (_ BitVec 32)) Bool)

(assert (=> b!524128 (= res!321201 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16354 0))(
  ( (Unit!16355) )
))
(declare-fun lt!240578 () Unit!16354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16354)

(assert (=> b!524128 (= lt!240578 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524129 () Bool)

(declare-fun res!321204 () Bool)

(assert (=> b!524129 (=> (not res!321204) (not e!305695))))

(assert (=> b!524129 (= res!321204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524131 () Bool)

(assert (=> b!524131 (= e!305692 (or (bvsgt #b00000000000000000000000000000000 (x!49112 lt!240582)) (bvsgt (x!49112 lt!240582) #b01111111111111111111111111111110) (bvslt lt!240577 #b00000000000000000000000000000000) (bvsge lt!240577 (size!16362 a!3235)) (bvslt (index!20102 lt!240582) #b00000000000000000000000000000000) (bvsge (index!20102 lt!240582) (size!16362 a!3235)) (= lt!240582 (Intermediate!4472 false (index!20102 lt!240582) (x!49112 lt!240582)))))))

(assert (=> b!524131 (and (or (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240576 () Unit!16354)

(declare-fun e!305689 () Unit!16354)

(assert (=> b!524131 (= lt!240576 e!305689)))

(declare-fun c!61769 () Bool)

(assert (=> b!524131 (= c!61769 (= (select (arr!15998 a!3235) (index!20102 lt!240582)) (select (arr!15998 a!3235) j!176)))))

(assert (=> b!524131 (and (bvslt (x!49112 lt!240582) #b01111111111111111111111111111110) (or (= (select (arr!15998 a!3235) (index!20102 lt!240582)) (select (arr!15998 a!3235) j!176)) (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15998 a!3235) (index!20102 lt!240582)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524132 () Bool)

(declare-fun e!305694 () Bool)

(assert (=> b!524132 (= e!305694 false)))

(declare-fun b!524133 () Bool)

(declare-fun res!321209 () Bool)

(declare-fun e!305693 () Bool)

(assert (=> b!524133 (=> (not res!321209) (not e!305693))))

(declare-fun arrayContainsKey!0 (array!33299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524133 (= res!321209 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524134 () Bool)

(declare-fun Unit!16356 () Unit!16354)

(assert (=> b!524134 (= e!305689 Unit!16356)))

(declare-fun b!524135 () Bool)

(declare-fun res!321211 () Bool)

(assert (=> b!524135 (=> (not res!321211) (not e!305695))))

(declare-datatypes ((List!10209 0))(
  ( (Nil!10206) (Cons!10205 (h!11136 (_ BitVec 64)) (t!16445 List!10209)) )
))
(declare-fun arrayNoDuplicates!0 (array!33299 (_ BitVec 32) List!10209) Bool)

(assert (=> b!524135 (= res!321211 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10206))))

(declare-fun b!524136 () Bool)

(declare-fun res!321205 () Bool)

(assert (=> b!524136 (=> (not res!321205) (not e!305693))))

(assert (=> b!524136 (= res!321205 (and (= (size!16362 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16362 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16362 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!524137 () Bool)

(declare-fun res!321212 () Bool)

(assert (=> b!524137 (=> (not res!321212) (not e!305693))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524137 (= res!321212 (validKeyInArray!0 k!2280))))

(declare-fun b!524138 () Bool)

(declare-fun res!321210 () Bool)

(assert (=> b!524138 (=> res!321210 e!305692)))

(assert (=> b!524138 (= res!321210 (or (undefined!5284 lt!240582) (not (is-Intermediate!4472 lt!240582))))))

(declare-fun b!524139 () Bool)

(assert (=> b!524139 (= e!305693 e!305695)))

(declare-fun res!321206 () Bool)

(assert (=> b!524139 (=> (not res!321206) (not e!305695))))

(declare-fun lt!240579 () SeekEntryResult!4472)

(assert (=> b!524139 (= res!321206 (or (= lt!240579 (MissingZero!4472 i!1204)) (= lt!240579 (MissingVacant!4472 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33299 (_ BitVec 32)) SeekEntryResult!4472)

(assert (=> b!524139 (= lt!240579 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!524140 () Bool)

(declare-fun Unit!16357 () Unit!16354)

(assert (=> b!524140 (= e!305689 Unit!16357)))

(declare-fun lt!240580 () Unit!16354)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16354)

(assert (=> b!524140 (= lt!240580 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!240577 #b00000000000000000000000000000000 (index!20102 lt!240582) (x!49112 lt!240582) mask!3524))))

(declare-fun res!321202 () Bool)

(assert (=> b!524140 (= res!321202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240577 lt!240583 lt!240584 mask!3524) (Intermediate!4472 false (index!20102 lt!240582) (x!49112 lt!240582))))))

(assert (=> b!524140 (=> (not res!321202) (not e!305694))))

(assert (=> b!524140 e!305694))

(declare-fun b!524141 () Bool)

(assert (=> b!524141 (= e!305690 (= (seekEntryOrOpen!0 (select (arr!15998 a!3235) j!176) a!3235 mask!3524) (Found!4472 j!176)))))

(declare-fun res!321203 () Bool)

(assert (=> start!47702 (=> (not res!321203) (not e!305693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47702 (= res!321203 (validMask!0 mask!3524))))

(assert (=> start!47702 e!305693))

(assert (=> start!47702 true))

(declare-fun array_inv!11772 (array!33299) Bool)

(assert (=> start!47702 (array_inv!11772 a!3235)))

(declare-fun b!524130 () Bool)

(declare-fun res!321208 () Bool)

(assert (=> b!524130 (=> (not res!321208) (not e!305693))))

(assert (=> b!524130 (= res!321208 (validKeyInArray!0 (select (arr!15998 a!3235) j!176)))))

(assert (= (and start!47702 res!321203) b!524136))

(assert (= (and b!524136 res!321205) b!524130))

(assert (= (and b!524130 res!321208) b!524137))

(assert (= (and b!524137 res!321212) b!524133))

(assert (= (and b!524133 res!321209) b!524139))

(assert (= (and b!524139 res!321206) b!524129))

(assert (= (and b!524129 res!321204) b!524135))

(assert (= (and b!524135 res!321211) b!524128))

(assert (= (and b!524128 res!321201) b!524141))

(assert (= (and b!524128 (not res!321207)) b!524138))

(assert (= (and b!524138 (not res!321210)) b!524131))

(assert (= (and b!524131 c!61769) b!524140))

(assert (= (and b!524131 (not c!61769)) b!524134))

(assert (= (and b!524140 res!321202) b!524132))

(declare-fun m!504799 () Bool)

(assert (=> b!524139 m!504799))

(declare-fun m!504801 () Bool)

(assert (=> b!524128 m!504801))

(declare-fun m!504803 () Bool)

(assert (=> b!524128 m!504803))

(declare-fun m!504805 () Bool)

(assert (=> b!524128 m!504805))

(declare-fun m!504807 () Bool)

(assert (=> b!524128 m!504807))

(assert (=> b!524128 m!504805))

(declare-fun m!504809 () Bool)

(assert (=> b!524128 m!504809))

(assert (=> b!524128 m!504805))

(declare-fun m!504811 () Bool)

(assert (=> b!524128 m!504811))

(declare-fun m!504813 () Bool)

(assert (=> b!524128 m!504813))

(declare-fun m!504815 () Bool)

(assert (=> b!524128 m!504815))

(declare-fun m!504817 () Bool)

(assert (=> b!524128 m!504817))

(declare-fun m!504819 () Bool)

(assert (=> b!524137 m!504819))

(declare-fun m!504821 () Bool)

(assert (=> b!524140 m!504821))

(declare-fun m!504823 () Bool)

(assert (=> b!524140 m!504823))

(assert (=> b!524130 m!504805))

(assert (=> b!524130 m!504805))

(declare-fun m!504825 () Bool)

(assert (=> b!524130 m!504825))

(declare-fun m!504827 () Bool)

(assert (=> b!524129 m!504827))

(declare-fun m!504829 () Bool)

(assert (=> b!524133 m!504829))

(declare-fun m!504831 () Bool)

(assert (=> b!524135 m!504831))

(assert (=> b!524141 m!504805))

(assert (=> b!524141 m!504805))

(declare-fun m!504833 () Bool)

(assert (=> b!524141 m!504833))

(declare-fun m!504835 () Bool)

(assert (=> b!524131 m!504835))

(assert (=> b!524131 m!504805))

(declare-fun m!504837 () Bool)

(assert (=> start!47702 m!504837))

(declare-fun m!504839 () Bool)

(assert (=> start!47702 m!504839))

(push 1)

(assert (not b!524137))

(assert (not start!47702))

(assert (not b!524135))

(assert (not b!524133))

(assert (not b!524141))

(assert (not b!524140))

(assert (not b!524130))

(assert (not b!524139))

(assert (not b!524129))

(assert (not b!524128))

(check-sat)

(pop 1)

(push 1)

(check-sat)

