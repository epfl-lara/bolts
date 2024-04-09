; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44628 () Bool)

(assert start!44628)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31647 0))(
  ( (array!31648 (arr!15208 (Array (_ BitVec 32) (_ BitVec 64))) (size!15572 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31647)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!489240 () Bool)

(declare-fun e!287753 () Bool)

(declare-datatypes ((SeekEntryResult!3682 0))(
  ( (MissingZero!3682 (index!16907 (_ BitVec 32))) (Found!3682 (index!16908 (_ BitVec 32))) (Intermediate!3682 (undefined!4494 Bool) (index!16909 (_ BitVec 32)) (x!46047 (_ BitVec 32))) (Undefined!3682) (MissingVacant!3682 (index!16910 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31647 (_ BitVec 32)) SeekEntryResult!3682)

(assert (=> b!489240 (= e!287753 (= (seekEntryOrOpen!0 (select (arr!15208 a!3235) j!176) a!3235 mask!3524) (Found!3682 j!176)))))

(declare-fun b!489241 () Bool)

(declare-fun res!292329 () Bool)

(declare-fun e!287752 () Bool)

(assert (=> b!489241 (=> (not res!292329) (not e!287752))))

(declare-datatypes ((List!9419 0))(
  ( (Nil!9416) (Cons!9415 (h!10277 (_ BitVec 64)) (t!15655 List!9419)) )
))
(declare-fun arrayNoDuplicates!0 (array!31647 (_ BitVec 32) List!9419) Bool)

(assert (=> b!489241 (= res!292329 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9416))))

(declare-fun b!489242 () Bool)

(declare-fun res!292334 () Bool)

(assert (=> b!489242 (=> (not res!292334) (not e!287752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31647 (_ BitVec 32)) Bool)

(assert (=> b!489242 (= res!292334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489243 () Bool)

(declare-fun res!292326 () Bool)

(declare-fun e!287754 () Bool)

(assert (=> b!489243 (=> (not res!292326) (not e!287754))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489243 (= res!292326 (validKeyInArray!0 k0!2280))))

(declare-fun b!489244 () Bool)

(declare-fun res!292328 () Bool)

(assert (=> b!489244 (=> (not res!292328) (not e!287754))))

(declare-fun arrayContainsKey!0 (array!31647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489244 (= res!292328 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489245 () Bool)

(declare-fun res!292332 () Bool)

(assert (=> b!489245 (=> (not res!292332) (not e!287754))))

(assert (=> b!489245 (= res!292332 (validKeyInArray!0 (select (arr!15208 a!3235) j!176)))))

(declare-fun b!489246 () Bool)

(assert (=> b!489246 (= e!287752 (not true))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!220785 () SeekEntryResult!3682)

(declare-fun lt!220787 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31647 (_ BitVec 32)) SeekEntryResult!3682)

(assert (=> b!489246 (= lt!220785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220787 (select (store (arr!15208 a!3235) i!1204 k0!2280) j!176) (array!31648 (store (arr!15208 a!3235) i!1204 k0!2280) (size!15572 a!3235)) mask!3524))))

(declare-fun lt!220789 () SeekEntryResult!3682)

(declare-fun lt!220786 () (_ BitVec 32))

(assert (=> b!489246 (= lt!220789 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220786 (select (arr!15208 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489246 (= lt!220787 (toIndex!0 (select (store (arr!15208 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!489246 (= lt!220786 (toIndex!0 (select (arr!15208 a!3235) j!176) mask!3524))))

(assert (=> b!489246 e!287753))

(declare-fun res!292330 () Bool)

(assert (=> b!489246 (=> (not res!292330) (not e!287753))))

(assert (=> b!489246 (= res!292330 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14302 0))(
  ( (Unit!14303) )
))
(declare-fun lt!220790 () Unit!14302)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14302)

(assert (=> b!489246 (= lt!220790 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489247 () Bool)

(declare-fun res!292333 () Bool)

(assert (=> b!489247 (=> (not res!292333) (not e!287754))))

(assert (=> b!489247 (= res!292333 (and (= (size!15572 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15572 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15572 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489248 () Bool)

(assert (=> b!489248 (= e!287754 e!287752)))

(declare-fun res!292327 () Bool)

(assert (=> b!489248 (=> (not res!292327) (not e!287752))))

(declare-fun lt!220788 () SeekEntryResult!3682)

(assert (=> b!489248 (= res!292327 (or (= lt!220788 (MissingZero!3682 i!1204)) (= lt!220788 (MissingVacant!3682 i!1204))))))

(assert (=> b!489248 (= lt!220788 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!292331 () Bool)

(assert (=> start!44628 (=> (not res!292331) (not e!287754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44628 (= res!292331 (validMask!0 mask!3524))))

(assert (=> start!44628 e!287754))

(assert (=> start!44628 true))

(declare-fun array_inv!10982 (array!31647) Bool)

(assert (=> start!44628 (array_inv!10982 a!3235)))

(assert (= (and start!44628 res!292331) b!489247))

(assert (= (and b!489247 res!292333) b!489245))

(assert (= (and b!489245 res!292332) b!489243))

(assert (= (and b!489243 res!292326) b!489244))

(assert (= (and b!489244 res!292328) b!489248))

(assert (= (and b!489248 res!292327) b!489242))

(assert (= (and b!489242 res!292334) b!489241))

(assert (= (and b!489241 res!292329) b!489246))

(assert (= (and b!489246 res!292330) b!489240))

(declare-fun m!469051 () Bool)

(assert (=> b!489242 m!469051))

(declare-fun m!469053 () Bool)

(assert (=> b!489240 m!469053))

(assert (=> b!489240 m!469053))

(declare-fun m!469055 () Bool)

(assert (=> b!489240 m!469055))

(declare-fun m!469057 () Bool)

(assert (=> b!489243 m!469057))

(declare-fun m!469059 () Bool)

(assert (=> b!489244 m!469059))

(declare-fun m!469061 () Bool)

(assert (=> start!44628 m!469061))

(declare-fun m!469063 () Bool)

(assert (=> start!44628 m!469063))

(declare-fun m!469065 () Bool)

(assert (=> b!489246 m!469065))

(declare-fun m!469067 () Bool)

(assert (=> b!489246 m!469067))

(declare-fun m!469069 () Bool)

(assert (=> b!489246 m!469069))

(declare-fun m!469071 () Bool)

(assert (=> b!489246 m!469071))

(assert (=> b!489246 m!469065))

(assert (=> b!489246 m!469053))

(declare-fun m!469073 () Bool)

(assert (=> b!489246 m!469073))

(assert (=> b!489246 m!469053))

(assert (=> b!489246 m!469065))

(declare-fun m!469075 () Bool)

(assert (=> b!489246 m!469075))

(declare-fun m!469077 () Bool)

(assert (=> b!489246 m!469077))

(assert (=> b!489246 m!469053))

(declare-fun m!469079 () Bool)

(assert (=> b!489246 m!469079))

(assert (=> b!489245 m!469053))

(assert (=> b!489245 m!469053))

(declare-fun m!469081 () Bool)

(assert (=> b!489245 m!469081))

(declare-fun m!469083 () Bool)

(assert (=> b!489248 m!469083))

(declare-fun m!469085 () Bool)

(assert (=> b!489241 m!469085))

(check-sat (not b!489242) (not b!489243) (not b!489241) (not b!489244) (not b!489240) (not start!44628) (not b!489246) (not b!489245) (not b!489248))
(check-sat)
