; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30338 () Bool)

(assert start!30338)

(declare-fun b!303594 () Bool)

(declare-fun res!161244 () Bool)

(declare-fun e!190962 () Bool)

(assert (=> b!303594 (=> (not res!161244) (not e!190962))))

(declare-datatypes ((array!15442 0))(
  ( (array!15443 (arr!7307 (Array (_ BitVec 32) (_ BitVec 64))) (size!7659 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15442)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303594 (= res!161244 (and (= (select (arr!7307 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7659 a!3293))))))

(declare-fun b!303595 () Bool)

(declare-fun res!161239 () Bool)

(declare-fun e!190963 () Bool)

(assert (=> b!303595 (=> (not res!161239) (not e!190963))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!303595 (= res!161239 (and (= (size!7659 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7659 a!3293))))))

(declare-fun b!303596 () Bool)

(declare-fun res!161245 () Bool)

(assert (=> b!303596 (=> (not res!161245) (not e!190963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15442 (_ BitVec 32)) Bool)

(assert (=> b!303596 (= res!161245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303597 () Bool)

(declare-fun res!161240 () Bool)

(assert (=> b!303597 (=> (not res!161240) (not e!190963))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303597 (= res!161240 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!303598 () Bool)

(declare-fun res!161246 () Bool)

(assert (=> b!303598 (=> (not res!161246) (not e!190962))))

(declare-datatypes ((SeekEntryResult!2458 0))(
  ( (MissingZero!2458 (index!12008 (_ BitVec 32))) (Found!2458 (index!12009 (_ BitVec 32))) (Intermediate!2458 (undefined!3270 Bool) (index!12010 (_ BitVec 32)) (x!30230 (_ BitVec 32))) (Undefined!2458) (MissingVacant!2458 (index!12011 (_ BitVec 32))) )
))
(declare-fun lt!150221 () SeekEntryResult!2458)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15442 (_ BitVec 32)) SeekEntryResult!2458)

(assert (=> b!303598 (= res!161246 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!150221))))

(declare-fun b!303599 () Bool)

(declare-fun res!161247 () Bool)

(assert (=> b!303599 (=> (not res!161247) (not e!190963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303599 (= res!161247 (validKeyInArray!0 k0!2441))))

(declare-fun res!161238 () Bool)

(assert (=> start!30338 (=> (not res!161238) (not e!190963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30338 (= res!161238 (validMask!0 mask!3709))))

(assert (=> start!30338 e!190963))

(declare-fun array_inv!5261 (array!15442) Bool)

(assert (=> start!30338 (array_inv!5261 a!3293)))

(assert (=> start!30338 true))

(declare-fun b!303600 () Bool)

(declare-fun res!161242 () Bool)

(assert (=> b!303600 (=> (not res!161242) (not e!190962))))

(assert (=> b!303600 (= res!161242 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7307 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7307 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7307 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303601 () Bool)

(declare-fun res!161241 () Bool)

(assert (=> b!303601 (=> (not res!161241) (not e!190963))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15442 (_ BitVec 32)) SeekEntryResult!2458)

(assert (=> b!303601 (= res!161241 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2458 i!1240)))))

(declare-fun b!303602 () Bool)

(assert (=> b!303602 (= e!190962 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!150220 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303602 (= lt!150220 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303603 () Bool)

(assert (=> b!303603 (= e!190963 e!190962)))

(declare-fun res!161243 () Bool)

(assert (=> b!303603 (=> (not res!161243) (not e!190962))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303603 (= res!161243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!150221))))

(assert (=> b!303603 (= lt!150221 (Intermediate!2458 false resIndex!52 resX!52))))

(assert (= (and start!30338 res!161238) b!303595))

(assert (= (and b!303595 res!161239) b!303599))

(assert (= (and b!303599 res!161247) b!303597))

(assert (= (and b!303597 res!161240) b!303601))

(assert (= (and b!303601 res!161241) b!303596))

(assert (= (and b!303596 res!161245) b!303603))

(assert (= (and b!303603 res!161243) b!303594))

(assert (= (and b!303594 res!161244) b!303598))

(assert (= (and b!303598 res!161246) b!303600))

(assert (= (and b!303600 res!161242) b!303602))

(declare-fun m!314917 () Bool)

(assert (=> b!303599 m!314917))

(declare-fun m!314919 () Bool)

(assert (=> b!303596 m!314919))

(declare-fun m!314921 () Bool)

(assert (=> start!30338 m!314921))

(declare-fun m!314923 () Bool)

(assert (=> start!30338 m!314923))

(declare-fun m!314925 () Bool)

(assert (=> b!303598 m!314925))

(declare-fun m!314927 () Bool)

(assert (=> b!303594 m!314927))

(declare-fun m!314929 () Bool)

(assert (=> b!303603 m!314929))

(assert (=> b!303603 m!314929))

(declare-fun m!314931 () Bool)

(assert (=> b!303603 m!314931))

(declare-fun m!314933 () Bool)

(assert (=> b!303601 m!314933))

(declare-fun m!314935 () Bool)

(assert (=> b!303602 m!314935))

(declare-fun m!314937 () Bool)

(assert (=> b!303600 m!314937))

(declare-fun m!314939 () Bool)

(assert (=> b!303597 m!314939))

(check-sat (not b!303596) (not b!303597) (not b!303599) (not start!30338) (not b!303598) (not b!303603) (not b!303601) (not b!303602))
(check-sat)
