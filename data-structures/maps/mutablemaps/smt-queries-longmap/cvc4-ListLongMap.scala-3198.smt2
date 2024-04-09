; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44888 () Bool)

(assert start!44888)

(declare-fun b!492276 () Bool)

(declare-fun e!289184 () Bool)

(assert (=> b!492276 (= e!289184 (not true))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3782 0))(
  ( (MissingZero!3782 (index!17307 (_ BitVec 32))) (Found!3782 (index!17308 (_ BitVec 32))) (Intermediate!3782 (undefined!4594 Bool) (index!17309 (_ BitVec 32)) (x!46417 (_ BitVec 32))) (Undefined!3782) (MissingVacant!3782 (index!17310 (_ BitVec 32))) )
))
(declare-fun lt!222611 () SeekEntryResult!3782)

(declare-fun lt!222610 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-datatypes ((array!31850 0))(
  ( (array!31851 (arr!15308 (Array (_ BitVec 32) (_ BitVec 64))) (size!15672 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31850)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31850 (_ BitVec 32)) SeekEntryResult!3782)

(assert (=> b!492276 (= lt!222611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222610 (select (store (arr!15308 a!3235) i!1204 k!2280) j!176) (array!31851 (store (arr!15308 a!3235) i!1204 k!2280) (size!15672 a!3235)) mask!3524))))

(declare-fun lt!222606 () SeekEntryResult!3782)

(declare-fun lt!222609 () (_ BitVec 32))

(assert (=> b!492276 (= lt!222606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222609 (select (arr!15308 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492276 (= lt!222610 (toIndex!0 (select (store (arr!15308 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492276 (= lt!222609 (toIndex!0 (select (arr!15308 a!3235) j!176) mask!3524))))

(declare-fun e!289186 () Bool)

(assert (=> b!492276 e!289186))

(declare-fun res!295179 () Bool)

(assert (=> b!492276 (=> (not res!295179) (not e!289186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31850 (_ BitVec 32)) Bool)

(assert (=> b!492276 (= res!295179 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14502 0))(
  ( (Unit!14503) )
))
(declare-fun lt!222607 () Unit!14502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14502)

(assert (=> b!492276 (= lt!222607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492277 () Bool)

(declare-fun res!295184 () Bool)

(declare-fun e!289183 () Bool)

(assert (=> b!492277 (=> (not res!295184) (not e!289183))))

(declare-fun arrayContainsKey!0 (array!31850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492277 (= res!295184 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492278 () Bool)

(assert (=> b!492278 (= e!289183 e!289184)))

(declare-fun res!295186 () Bool)

(assert (=> b!492278 (=> (not res!295186) (not e!289184))))

(declare-fun lt!222608 () SeekEntryResult!3782)

(assert (=> b!492278 (= res!295186 (or (= lt!222608 (MissingZero!3782 i!1204)) (= lt!222608 (MissingVacant!3782 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31850 (_ BitVec 32)) SeekEntryResult!3782)

(assert (=> b!492278 (= lt!222608 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492279 () Bool)

(declare-fun res!295180 () Bool)

(assert (=> b!492279 (=> (not res!295180) (not e!289184))))

(assert (=> b!492279 (= res!295180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492280 () Bool)

(declare-fun res!295185 () Bool)

(assert (=> b!492280 (=> (not res!295185) (not e!289183))))

(assert (=> b!492280 (= res!295185 (and (= (size!15672 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15672 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15672 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492281 () Bool)

(assert (=> b!492281 (= e!289186 (= (seekEntryOrOpen!0 (select (arr!15308 a!3235) j!176) a!3235 mask!3524) (Found!3782 j!176)))))

(declare-fun res!295181 () Bool)

(assert (=> start!44888 (=> (not res!295181) (not e!289183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44888 (= res!295181 (validMask!0 mask!3524))))

(assert (=> start!44888 e!289183))

(assert (=> start!44888 true))

(declare-fun array_inv!11082 (array!31850) Bool)

(assert (=> start!44888 (array_inv!11082 a!3235)))

(declare-fun b!492282 () Bool)

(declare-fun res!295183 () Bool)

(assert (=> b!492282 (=> (not res!295183) (not e!289183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492282 (= res!295183 (validKeyInArray!0 k!2280))))

(declare-fun b!492283 () Bool)

(declare-fun res!295187 () Bool)

(assert (=> b!492283 (=> (not res!295187) (not e!289184))))

(declare-datatypes ((List!9519 0))(
  ( (Nil!9516) (Cons!9515 (h!10380 (_ BitVec 64)) (t!15755 List!9519)) )
))
(declare-fun arrayNoDuplicates!0 (array!31850 (_ BitVec 32) List!9519) Bool)

(assert (=> b!492283 (= res!295187 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9516))))

(declare-fun b!492284 () Bool)

(declare-fun res!295182 () Bool)

(assert (=> b!492284 (=> (not res!295182) (not e!289183))))

(assert (=> b!492284 (= res!295182 (validKeyInArray!0 (select (arr!15308 a!3235) j!176)))))

(assert (= (and start!44888 res!295181) b!492280))

(assert (= (and b!492280 res!295185) b!492284))

(assert (= (and b!492284 res!295182) b!492282))

(assert (= (and b!492282 res!295183) b!492277))

(assert (= (and b!492277 res!295184) b!492278))

(assert (= (and b!492278 res!295186) b!492279))

(assert (= (and b!492279 res!295180) b!492283))

(assert (= (and b!492283 res!295187) b!492276))

(assert (= (and b!492276 res!295179) b!492281))

(declare-fun m!473053 () Bool)

(assert (=> b!492278 m!473053))

(declare-fun m!473055 () Bool)

(assert (=> b!492279 m!473055))

(declare-fun m!473057 () Bool)

(assert (=> b!492277 m!473057))

(declare-fun m!473059 () Bool)

(assert (=> b!492282 m!473059))

(declare-fun m!473061 () Bool)

(assert (=> b!492284 m!473061))

(assert (=> b!492284 m!473061))

(declare-fun m!473063 () Bool)

(assert (=> b!492284 m!473063))

(declare-fun m!473065 () Bool)

(assert (=> b!492283 m!473065))

(declare-fun m!473067 () Bool)

(assert (=> start!44888 m!473067))

(declare-fun m!473069 () Bool)

(assert (=> start!44888 m!473069))

(declare-fun m!473071 () Bool)

(assert (=> b!492276 m!473071))

(declare-fun m!473073 () Bool)

(assert (=> b!492276 m!473073))

(declare-fun m!473075 () Bool)

(assert (=> b!492276 m!473075))

(assert (=> b!492276 m!473061))

(declare-fun m!473077 () Bool)

(assert (=> b!492276 m!473077))

(assert (=> b!492276 m!473061))

(declare-fun m!473079 () Bool)

(assert (=> b!492276 m!473079))

(assert (=> b!492276 m!473061))

(declare-fun m!473081 () Bool)

(assert (=> b!492276 m!473081))

(assert (=> b!492276 m!473075))

(declare-fun m!473083 () Bool)

(assert (=> b!492276 m!473083))

(assert (=> b!492276 m!473075))

(declare-fun m!473085 () Bool)

(assert (=> b!492276 m!473085))

(assert (=> b!492281 m!473061))

(assert (=> b!492281 m!473061))

(declare-fun m!473087 () Bool)

(assert (=> b!492281 m!473087))

(push 1)

