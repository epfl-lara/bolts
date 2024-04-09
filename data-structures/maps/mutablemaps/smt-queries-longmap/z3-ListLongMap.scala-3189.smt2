; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44772 () Bool)

(assert start!44772)

(declare-fun b!491193 () Bool)

(declare-fun res!294286 () Bool)

(declare-fun e!288625 () Bool)

(assert (=> b!491193 (=> (not res!294286) (not e!288625))))

(declare-datatypes ((array!31791 0))(
  ( (array!31792 (arr!15280 (Array (_ BitVec 32) (_ BitVec 64))) (size!15644 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31791)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491193 (= res!294286 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491194 () Bool)

(declare-fun e!288628 () Bool)

(assert (=> b!491194 (= e!288628 true)))

(declare-fun lt!222082 () array!31791)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3754 0))(
  ( (MissingZero!3754 (index!17195 (_ BitVec 32))) (Found!3754 (index!17196 (_ BitVec 32))) (Intermediate!3754 (undefined!4566 Bool) (index!17197 (_ BitVec 32)) (x!46311 (_ BitVec 32))) (Undefined!3754) (MissingVacant!3754 (index!17198 (_ BitVec 32))) )
))
(declare-fun lt!222084 () SeekEntryResult!3754)

(declare-fun lt!222083 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31791 (_ BitVec 32)) SeekEntryResult!3754)

(assert (=> b!491194 (= lt!222084 (seekEntryOrOpen!0 lt!222083 lt!222082 mask!3524))))

(declare-datatypes ((Unit!14446 0))(
  ( (Unit!14447) )
))
(declare-fun lt!222085 () Unit!14446)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31791 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14446)

(assert (=> b!491194 (= lt!222085 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491195 () Bool)

(declare-fun res!294287 () Bool)

(declare-fun e!288626 () Bool)

(assert (=> b!491195 (=> (not res!294287) (not e!288626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31791 (_ BitVec 32)) Bool)

(assert (=> b!491195 (= res!294287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491196 () Bool)

(declare-fun res!294284 () Bool)

(assert (=> b!491196 (=> (not res!294284) (not e!288625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491196 (= res!294284 (validKeyInArray!0 k0!2280))))

(declare-fun b!491197 () Bool)

(assert (=> b!491197 (= e!288625 e!288626)))

(declare-fun res!294285 () Bool)

(assert (=> b!491197 (=> (not res!294285) (not e!288626))))

(declare-fun lt!222086 () SeekEntryResult!3754)

(assert (=> b!491197 (= res!294285 (or (= lt!222086 (MissingZero!3754 i!1204)) (= lt!222086 (MissingVacant!3754 i!1204))))))

(assert (=> b!491197 (= lt!222086 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!294280 () Bool)

(assert (=> start!44772 (=> (not res!294280) (not e!288625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44772 (= res!294280 (validMask!0 mask!3524))))

(assert (=> start!44772 e!288625))

(assert (=> start!44772 true))

(declare-fun array_inv!11054 (array!31791) Bool)

(assert (=> start!44772 (array_inv!11054 a!3235)))

(declare-fun b!491198 () Bool)

(declare-fun res!294281 () Bool)

(assert (=> b!491198 (=> (not res!294281) (not e!288626))))

(declare-datatypes ((List!9491 0))(
  ( (Nil!9488) (Cons!9487 (h!10349 (_ BitVec 64)) (t!15727 List!9491)) )
))
(declare-fun arrayNoDuplicates!0 (array!31791 (_ BitVec 32) List!9491) Bool)

(assert (=> b!491198 (= res!294281 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9488))))

(declare-fun b!491199 () Bool)

(declare-fun res!294282 () Bool)

(assert (=> b!491199 (=> (not res!294282) (not e!288625))))

(assert (=> b!491199 (= res!294282 (and (= (size!15644 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15644 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15644 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491200 () Bool)

(declare-fun res!294279 () Bool)

(assert (=> b!491200 (=> (not res!294279) (not e!288625))))

(assert (=> b!491200 (= res!294279 (validKeyInArray!0 (select (arr!15280 a!3235) j!176)))))

(declare-fun b!491201 () Bool)

(assert (=> b!491201 (= e!288626 (not e!288628))))

(declare-fun res!294283 () Bool)

(assert (=> b!491201 (=> res!294283 e!288628)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31791 (_ BitVec 32)) SeekEntryResult!3754)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491201 (= res!294283 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15280 a!3235) j!176) mask!3524) (select (arr!15280 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222083 mask!3524) lt!222083 lt!222082 mask!3524))))))

(assert (=> b!491201 (= lt!222083 (select (store (arr!15280 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491201 (= lt!222082 (array!31792 (store (arr!15280 a!3235) i!1204 k0!2280) (size!15644 a!3235)))))

(assert (=> b!491201 (= lt!222084 (Found!3754 j!176))))

(assert (=> b!491201 (= lt!222084 (seekEntryOrOpen!0 (select (arr!15280 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491201 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222081 () Unit!14446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14446)

(assert (=> b!491201 (= lt!222081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44772 res!294280) b!491199))

(assert (= (and b!491199 res!294282) b!491200))

(assert (= (and b!491200 res!294279) b!491196))

(assert (= (and b!491196 res!294284) b!491193))

(assert (= (and b!491193 res!294286) b!491197))

(assert (= (and b!491197 res!294285) b!491195))

(assert (= (and b!491195 res!294287) b!491198))

(assert (= (and b!491198 res!294281) b!491201))

(assert (= (and b!491201 (not res!294283)) b!491194))

(declare-fun m!471785 () Bool)

(assert (=> b!491194 m!471785))

(declare-fun m!471787 () Bool)

(assert (=> b!491194 m!471787))

(declare-fun m!471789 () Bool)

(assert (=> b!491197 m!471789))

(declare-fun m!471791 () Bool)

(assert (=> start!44772 m!471791))

(declare-fun m!471793 () Bool)

(assert (=> start!44772 m!471793))

(declare-fun m!471795 () Bool)

(assert (=> b!491201 m!471795))

(declare-fun m!471797 () Bool)

(assert (=> b!491201 m!471797))

(declare-fun m!471799 () Bool)

(assert (=> b!491201 m!471799))

(declare-fun m!471801 () Bool)

(assert (=> b!491201 m!471801))

(declare-fun m!471803 () Bool)

(assert (=> b!491201 m!471803))

(declare-fun m!471805 () Bool)

(assert (=> b!491201 m!471805))

(declare-fun m!471807 () Bool)

(assert (=> b!491201 m!471807))

(declare-fun m!471809 () Bool)

(assert (=> b!491201 m!471809))

(assert (=> b!491201 m!471807))

(assert (=> b!491201 m!471805))

(declare-fun m!471811 () Bool)

(assert (=> b!491201 m!471811))

(assert (=> b!491201 m!471807))

(declare-fun m!471813 () Bool)

(assert (=> b!491201 m!471813))

(assert (=> b!491201 m!471797))

(assert (=> b!491201 m!471807))

(declare-fun m!471815 () Bool)

(assert (=> b!491195 m!471815))

(declare-fun m!471817 () Bool)

(assert (=> b!491198 m!471817))

(assert (=> b!491200 m!471807))

(assert (=> b!491200 m!471807))

(declare-fun m!471819 () Bool)

(assert (=> b!491200 m!471819))

(declare-fun m!471821 () Bool)

(assert (=> b!491193 m!471821))

(declare-fun m!471823 () Bool)

(assert (=> b!491196 m!471823))

(check-sat (not b!491201) (not b!491193) (not b!491198) (not b!491196) (not b!491197) (not b!491200) (not b!491195) (not start!44772) (not b!491194))
(check-sat)
