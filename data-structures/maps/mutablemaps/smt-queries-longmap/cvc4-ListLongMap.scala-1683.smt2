; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30994 () Bool)

(assert start!30994)

(declare-fun b!311184 () Bool)

(declare-fun res!167802 () Bool)

(declare-fun e!194185 () Bool)

(assert (=> b!311184 (=> (not res!167802) (not e!194185))))

(declare-datatypes ((array!15894 0))(
  ( (array!15895 (arr!7527 (Array (_ BitVec 32) (_ BitVec 64))) (size!7879 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15894)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311184 (= res!167802 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311185 () Bool)

(declare-fun res!167801 () Bool)

(assert (=> b!311185 (=> (not res!167801) (not e!194185))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15894 (_ BitVec 32)) Bool)

(assert (=> b!311185 (= res!167801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311186 () Bool)

(declare-fun res!167798 () Bool)

(declare-fun e!194183 () Bool)

(assert (=> b!311186 (=> (not res!167798) (not e!194183))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311186 (= res!167798 (and (= (select (arr!7527 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7879 a!3293))))))

(declare-fun e!194184 () Bool)

(declare-fun lt!152297 () array!15894)

(declare-fun b!311187 () Bool)

(declare-fun lt!152295 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2678 0))(
  ( (MissingZero!2678 (index!12888 (_ BitVec 32))) (Found!2678 (index!12889 (_ BitVec 32))) (Intermediate!2678 (undefined!3490 Bool) (index!12890 (_ BitVec 32)) (x!31070 (_ BitVec 32))) (Undefined!2678) (MissingVacant!2678 (index!12891 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15894 (_ BitVec 32)) SeekEntryResult!2678)

(assert (=> b!311187 (= e!194184 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152297 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152295 k!2441 lt!152297 mask!3709)))))

(assert (=> b!311187 (= lt!152297 (array!15895 (store (arr!7527 a!3293) i!1240 k!2441) (size!7879 a!3293)))))

(declare-fun b!311188 () Bool)

(declare-fun res!167800 () Bool)

(assert (=> b!311188 (=> (not res!167800) (not e!194185))))

(assert (=> b!311188 (= res!167800 (and (= (size!7879 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7879 a!3293))))))

(declare-fun b!311189 () Bool)

(declare-fun e!194181 () Bool)

(assert (=> b!311189 (= e!194181 (not true))))

(assert (=> b!311189 e!194184))

(declare-fun res!167799 () Bool)

(assert (=> b!311189 (=> (not res!167799) (not e!194184))))

(declare-fun lt!152296 () SeekEntryResult!2678)

(assert (=> b!311189 (= res!167799 (= lt!152296 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152295 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311189 (= lt!152295 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311190 () Bool)

(assert (=> b!311190 (= e!194183 e!194181)))

(declare-fun res!167797 () Bool)

(assert (=> b!311190 (=> (not res!167797) (not e!194181))))

(declare-fun lt!152294 () SeekEntryResult!2678)

(assert (=> b!311190 (= res!167797 (and (= lt!152296 lt!152294) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7527 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311190 (= lt!152296 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311191 () Bool)

(declare-fun res!167805 () Bool)

(assert (=> b!311191 (=> (not res!167805) (not e!194185))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311191 (= res!167805 (validKeyInArray!0 k!2441))))

(declare-fun res!167796 () Bool)

(assert (=> start!30994 (=> (not res!167796) (not e!194185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30994 (= res!167796 (validMask!0 mask!3709))))

(assert (=> start!30994 e!194185))

(declare-fun array_inv!5481 (array!15894) Bool)

(assert (=> start!30994 (array_inv!5481 a!3293)))

(assert (=> start!30994 true))

(declare-fun b!311192 () Bool)

(assert (=> b!311192 (= e!194185 e!194183)))

(declare-fun res!167804 () Bool)

(assert (=> b!311192 (=> (not res!167804) (not e!194183))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311192 (= res!167804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152294))))

(assert (=> b!311192 (= lt!152294 (Intermediate!2678 false resIndex!52 resX!52))))

(declare-fun b!311193 () Bool)

(declare-fun res!167803 () Bool)

(assert (=> b!311193 (=> (not res!167803) (not e!194185))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15894 (_ BitVec 32)) SeekEntryResult!2678)

(assert (=> b!311193 (= res!167803 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2678 i!1240)))))

(assert (= (and start!30994 res!167796) b!311188))

(assert (= (and b!311188 res!167800) b!311191))

(assert (= (and b!311191 res!167805) b!311184))

(assert (= (and b!311184 res!167802) b!311193))

(assert (= (and b!311193 res!167803) b!311185))

(assert (= (and b!311185 res!167801) b!311192))

(assert (= (and b!311192 res!167804) b!311186))

(assert (= (and b!311186 res!167798) b!311190))

(assert (= (and b!311190 res!167797) b!311189))

(assert (= (and b!311189 res!167799) b!311187))

(declare-fun m!321197 () Bool)

(assert (=> b!311190 m!321197))

(declare-fun m!321199 () Bool)

(assert (=> b!311190 m!321199))

(declare-fun m!321201 () Bool)

(assert (=> b!311189 m!321201))

(declare-fun m!321203 () Bool)

(assert (=> b!311189 m!321203))

(declare-fun m!321205 () Bool)

(assert (=> start!30994 m!321205))

(declare-fun m!321207 () Bool)

(assert (=> start!30994 m!321207))

(declare-fun m!321209 () Bool)

(assert (=> b!311185 m!321209))

(declare-fun m!321211 () Bool)

(assert (=> b!311191 m!321211))

(declare-fun m!321213 () Bool)

(assert (=> b!311184 m!321213))

(declare-fun m!321215 () Bool)

(assert (=> b!311192 m!321215))

(assert (=> b!311192 m!321215))

(declare-fun m!321217 () Bool)

(assert (=> b!311192 m!321217))

(declare-fun m!321219 () Bool)

(assert (=> b!311186 m!321219))

(declare-fun m!321221 () Bool)

(assert (=> b!311187 m!321221))

(declare-fun m!321223 () Bool)

(assert (=> b!311187 m!321223))

(declare-fun m!321225 () Bool)

(assert (=> b!311187 m!321225))

(declare-fun m!321227 () Bool)

(assert (=> b!311193 m!321227))

(push 1)

(assert (not b!311192))

(assert (not b!311185))

(assert (not b!311193))

