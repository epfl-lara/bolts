; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48010 () Bool)

(assert start!48010)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4551 0))(
  ( (MissingZero!4551 (index!20428 (_ BitVec 32))) (Found!4551 (index!20429 (_ BitVec 32))) (Intermediate!4551 (undefined!5363 Bool) (index!20430 (_ BitVec 32)) (x!49434 (_ BitVec 32))) (Undefined!4551) (MissingVacant!4551 (index!20431 (_ BitVec 32))) )
))
(declare-fun lt!243262 () SeekEntryResult!4551)

(declare-datatypes ((array!33463 0))(
  ( (array!33464 (arr!16077 (Array (_ BitVec 32) (_ BitVec 64))) (size!16441 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33463)

(declare-fun lt!243268 () (_ BitVec 32))

(declare-fun e!307821 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!528176 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33463 (_ BitVec 32)) SeekEntryResult!4551)

(assert (=> b!528176 (= e!307821 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243268 (index!20430 lt!243262) (select (arr!16077 a!3235) j!176) a!3235 mask!3524) (Found!4551 j!176))))))

(declare-fun b!528177 () Bool)

(declare-fun e!307824 () Bool)

(declare-fun e!307820 () Bool)

(assert (=> b!528177 (= e!307824 (not e!307820))))

(declare-fun res!324332 () Bool)

(assert (=> b!528177 (=> res!324332 e!307820)))

(declare-fun lt!243272 () SeekEntryResult!4551)

(assert (=> b!528177 (= res!324332 (or (= lt!243262 lt!243272) (undefined!5363 lt!243262) (not (is-Intermediate!4551 lt!243262))))))

(declare-fun lt!243267 () array!33463)

(declare-fun lt!243271 () (_ BitVec 64))

(declare-fun lt!243269 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33463 (_ BitVec 32)) SeekEntryResult!4551)

(assert (=> b!528177 (= lt!243272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243269 lt!243271 lt!243267 mask!3524))))

(assert (=> b!528177 (= lt!243262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243268 (select (arr!16077 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528177 (= lt!243269 (toIndex!0 lt!243271 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528177 (= lt!243271 (select (store (arr!16077 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528177 (= lt!243268 (toIndex!0 (select (arr!16077 a!3235) j!176) mask!3524))))

(assert (=> b!528177 (= lt!243267 (array!33464 (store (arr!16077 a!3235) i!1204 k!2280) (size!16441 a!3235)))))

(declare-fun e!307822 () Bool)

(assert (=> b!528177 e!307822))

(declare-fun res!324327 () Bool)

(assert (=> b!528177 (=> (not res!324327) (not e!307822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33463 (_ BitVec 32)) Bool)

(assert (=> b!528177 (= res!324327 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16670 0))(
  ( (Unit!16671) )
))
(declare-fun lt!243265 () Unit!16670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16670)

(assert (=> b!528177 (= lt!243265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528178 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33463 (_ BitVec 32)) SeekEntryResult!4551)

(assert (=> b!528178 (= e!307822 (= (seekEntryOrOpen!0 (select (arr!16077 a!3235) j!176) a!3235 mask!3524) (Found!4551 j!176)))))

(declare-fun res!324323 () Bool)

(declare-fun e!307817 () Bool)

(assert (=> start!48010 (=> (not res!324323) (not e!307817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48010 (= res!324323 (validMask!0 mask!3524))))

(assert (=> start!48010 e!307817))

(assert (=> start!48010 true))

(declare-fun array_inv!11851 (array!33463) Bool)

(assert (=> start!48010 (array_inv!11851 a!3235)))

(declare-fun b!528179 () Bool)

(declare-fun e!307825 () Bool)

(assert (=> b!528179 (= e!307825 (= lt!243272 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243268 lt!243271 lt!243267 mask!3524)))))

(declare-fun b!528180 () Bool)

(declare-fun res!324322 () Bool)

(assert (=> b!528180 (=> (not res!324322) (not e!307824))))

(assert (=> b!528180 (= res!324322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528181 () Bool)

(declare-fun res!324329 () Bool)

(assert (=> b!528181 (=> (not res!324329) (not e!307817))))

(declare-fun arrayContainsKey!0 (array!33463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528181 (= res!324329 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528182 () Bool)

(declare-fun e!307818 () Unit!16670)

(declare-fun Unit!16672 () Unit!16670)

(assert (=> b!528182 (= e!307818 Unit!16672)))

(declare-fun lt!243264 () Unit!16670)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33463 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16670)

(assert (=> b!528182 (= lt!243264 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243268 #b00000000000000000000000000000000 (index!20430 lt!243262) (x!49434 lt!243262) mask!3524))))

(declare-fun res!324331 () Bool)

(assert (=> b!528182 (= res!324331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243268 lt!243271 lt!243267 mask!3524) (Intermediate!4551 false (index!20430 lt!243262) (x!49434 lt!243262))))))

(declare-fun e!307819 () Bool)

(assert (=> b!528182 (=> (not res!324331) (not e!307819))))

(assert (=> b!528182 e!307819))

(declare-fun b!528183 () Bool)

(declare-fun res!324320 () Bool)

(assert (=> b!528183 (=> res!324320 e!307825)))

(assert (=> b!528183 (= res!324320 e!307821)))

(declare-fun res!324330 () Bool)

(assert (=> b!528183 (=> (not res!324330) (not e!307821))))

(assert (=> b!528183 (= res!324330 (bvsgt #b00000000000000000000000000000000 (x!49434 lt!243262)))))

(declare-fun b!528184 () Bool)

(declare-fun res!324324 () Bool)

(assert (=> b!528184 (=> (not res!324324) (not e!307817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528184 (= res!324324 (validKeyInArray!0 k!2280))))

(declare-fun b!528185 () Bool)

(assert (=> b!528185 (= e!307820 e!307825)))

(declare-fun res!324325 () Bool)

(assert (=> b!528185 (=> res!324325 e!307825)))

(assert (=> b!528185 (= res!324325 (or (bvsgt (x!49434 lt!243262) #b01111111111111111111111111111110) (bvslt lt!243268 #b00000000000000000000000000000000) (bvsge lt!243268 (size!16441 a!3235)) (bvslt (index!20430 lt!243262) #b00000000000000000000000000000000) (bvsge (index!20430 lt!243262) (size!16441 a!3235)) (not (= lt!243262 (Intermediate!4551 false (index!20430 lt!243262) (x!49434 lt!243262))))))))

(assert (=> b!528185 (= (index!20430 lt!243262) i!1204)))

(declare-fun lt!243270 () Unit!16670)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33463 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16670)

(assert (=> b!528185 (= lt!243270 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243268 #b00000000000000000000000000000000 (index!20430 lt!243262) (x!49434 lt!243262) mask!3524))))

(assert (=> b!528185 (and (or (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243266 () Unit!16670)

(assert (=> b!528185 (= lt!243266 e!307818)))

(declare-fun c!62237 () Bool)

(assert (=> b!528185 (= c!62237 (= (select (arr!16077 a!3235) (index!20430 lt!243262)) (select (arr!16077 a!3235) j!176)))))

(assert (=> b!528185 (and (bvslt (x!49434 lt!243262) #b01111111111111111111111111111110) (or (= (select (arr!16077 a!3235) (index!20430 lt!243262)) (select (arr!16077 a!3235) j!176)) (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16077 a!3235) (index!20430 lt!243262)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528186 () Bool)

(assert (=> b!528186 (= e!307817 e!307824)))

(declare-fun res!324321 () Bool)

(assert (=> b!528186 (=> (not res!324321) (not e!307824))))

(declare-fun lt!243263 () SeekEntryResult!4551)

(assert (=> b!528186 (= res!324321 (or (= lt!243263 (MissingZero!4551 i!1204)) (= lt!243263 (MissingVacant!4551 i!1204))))))

(assert (=> b!528186 (= lt!243263 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528187 () Bool)

(declare-fun res!324319 () Bool)

(assert (=> b!528187 (=> (not res!324319) (not e!307824))))

(declare-datatypes ((List!10288 0))(
  ( (Nil!10285) (Cons!10284 (h!11221 (_ BitVec 64)) (t!16524 List!10288)) )
))
(declare-fun arrayNoDuplicates!0 (array!33463 (_ BitVec 32) List!10288) Bool)

(assert (=> b!528187 (= res!324319 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10285))))

(declare-fun b!528188 () Bool)

(declare-fun res!324328 () Bool)

(assert (=> b!528188 (=> (not res!324328) (not e!307817))))

(assert (=> b!528188 (= res!324328 (and (= (size!16441 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16441 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16441 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528189 () Bool)

(declare-fun Unit!16673 () Unit!16670)

(assert (=> b!528189 (= e!307818 Unit!16673)))

(declare-fun b!528190 () Bool)

(declare-fun res!324326 () Bool)

(assert (=> b!528190 (=> (not res!324326) (not e!307817))))

(assert (=> b!528190 (= res!324326 (validKeyInArray!0 (select (arr!16077 a!3235) j!176)))))

(declare-fun b!528191 () Bool)

(assert (=> b!528191 (= e!307819 false)))

(assert (= (and start!48010 res!324323) b!528188))

(assert (= (and b!528188 res!324328) b!528190))

(assert (= (and b!528190 res!324326) b!528184))

(assert (= (and b!528184 res!324324) b!528181))

(assert (= (and b!528181 res!324329) b!528186))

(assert (= (and b!528186 res!324321) b!528180))

(assert (= (and b!528180 res!324322) b!528187))

(assert (= (and b!528187 res!324319) b!528177))

(assert (= (and b!528177 res!324327) b!528178))

(assert (= (and b!528177 (not res!324332)) b!528185))

(assert (= (and b!528185 c!62237) b!528182))

(assert (= (and b!528185 (not c!62237)) b!528189))

(assert (= (and b!528182 res!324331) b!528191))

(assert (= (and b!528185 (not res!324325)) b!528183))

(assert (= (and b!528183 res!324330) b!528176))

(assert (= (and b!528183 (not res!324320)) b!528179))

(declare-fun m!508759 () Bool)

(assert (=> b!528182 m!508759))

(declare-fun m!508761 () Bool)

(assert (=> b!528182 m!508761))

(declare-fun m!508763 () Bool)

(assert (=> b!528180 m!508763))

(declare-fun m!508765 () Bool)

(assert (=> b!528181 m!508765))

(declare-fun m!508767 () Bool)

(assert (=> b!528190 m!508767))

(assert (=> b!528190 m!508767))

(declare-fun m!508769 () Bool)

(assert (=> b!528190 m!508769))

(assert (=> b!528179 m!508761))

(declare-fun m!508771 () Bool)

(assert (=> b!528186 m!508771))

(declare-fun m!508773 () Bool)

(assert (=> b!528187 m!508773))

(declare-fun m!508775 () Bool)

(assert (=> start!48010 m!508775))

(declare-fun m!508777 () Bool)

(assert (=> start!48010 m!508777))

(declare-fun m!508779 () Bool)

(assert (=> b!528177 m!508779))

(declare-fun m!508781 () Bool)

(assert (=> b!528177 m!508781))

(declare-fun m!508783 () Bool)

(assert (=> b!528177 m!508783))

(declare-fun m!508785 () Bool)

(assert (=> b!528177 m!508785))

(declare-fun m!508787 () Bool)

(assert (=> b!528177 m!508787))

(assert (=> b!528177 m!508767))

(declare-fun m!508789 () Bool)

(assert (=> b!528177 m!508789))

(assert (=> b!528177 m!508767))

(declare-fun m!508791 () Bool)

(assert (=> b!528177 m!508791))

(assert (=> b!528177 m!508767))

(declare-fun m!508793 () Bool)

(assert (=> b!528177 m!508793))

(assert (=> b!528178 m!508767))

(assert (=> b!528178 m!508767))

(declare-fun m!508795 () Bool)

(assert (=> b!528178 m!508795))

(declare-fun m!508797 () Bool)

(assert (=> b!528185 m!508797))

(declare-fun m!508799 () Bool)

(assert (=> b!528185 m!508799))

(assert (=> b!528185 m!508767))

(declare-fun m!508801 () Bool)

(assert (=> b!528184 m!508801))

(assert (=> b!528176 m!508767))

(assert (=> b!528176 m!508767))

(declare-fun m!508803 () Bool)

(assert (=> b!528176 m!508803))

(push 1)

