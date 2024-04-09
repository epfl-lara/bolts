; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31794 () Bool)

(assert start!31794)

(declare-fun b!317289 () Bool)

(declare-fun res!172029 () Bool)

(declare-fun e!197281 () Bool)

(assert (=> b!317289 (=> (not res!172029) (not e!197281))))

(declare-datatypes ((array!16163 0))(
  ( (array!16164 (arr!7645 (Array (_ BitVec 32) (_ BitVec 64))) (size!7997 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16163)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317289 (= res!172029 (and (= (select (arr!7645 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7997 a!3293))))))

(declare-fun b!317290 () Bool)

(declare-fun e!197280 () Bool)

(assert (=> b!317290 (= e!197280 e!197281)))

(declare-fun res!172028 () Bool)

(assert (=> b!317290 (=> (not res!172028) (not e!197281))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2796 0))(
  ( (MissingZero!2796 (index!13360 (_ BitVec 32))) (Found!2796 (index!13361 (_ BitVec 32))) (Intermediate!2796 (undefined!3608 Bool) (index!13362 (_ BitVec 32)) (x!31592 (_ BitVec 32))) (Undefined!2796) (MissingVacant!2796 (index!13363 (_ BitVec 32))) )
))
(declare-fun lt!154932 () SeekEntryResult!2796)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16163 (_ BitVec 32)) SeekEntryResult!2796)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317290 (= res!172028 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154932))))

(assert (=> b!317290 (= lt!154932 (Intermediate!2796 false resIndex!52 resX!52))))

(declare-fun b!317292 () Bool)

(declare-fun res!172030 () Bool)

(assert (=> b!317292 (=> (not res!172030) (not e!197280))))

(declare-fun arrayContainsKey!0 (array!16163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317292 (= res!172030 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317293 () Bool)

(declare-fun res!172027 () Bool)

(assert (=> b!317293 (=> (not res!172027) (not e!197280))))

(assert (=> b!317293 (= res!172027 (and (= (size!7997 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7997 a!3293))))))

(declare-fun b!317294 () Bool)

(declare-fun e!197283 () Bool)

(assert (=> b!317294 (= e!197281 e!197283)))

(declare-fun res!172026 () Bool)

(assert (=> b!317294 (=> (not res!172026) (not e!197283))))

(declare-fun lt!154933 () SeekEntryResult!2796)

(assert (=> b!317294 (= res!172026 (and (= lt!154933 lt!154932) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7645 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!317294 (= lt!154933 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!317295 () Bool)

(declare-fun res!172032 () Bool)

(assert (=> b!317295 (=> (not res!172032) (not e!197280))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16163 (_ BitVec 32)) SeekEntryResult!2796)

(assert (=> b!317295 (= res!172032 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2796 i!1240)))))

(declare-fun b!317296 () Bool)

(declare-fun res!172035 () Bool)

(assert (=> b!317296 (=> (not res!172035) (not e!197280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317296 (= res!172035 (validKeyInArray!0 k!2441))))

(declare-fun b!317291 () Bool)

(declare-fun res!172034 () Bool)

(assert (=> b!317291 (=> (not res!172034) (not e!197280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16163 (_ BitVec 32)) Bool)

(assert (=> b!317291 (= res!172034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!172031 () Bool)

(assert (=> start!31794 (=> (not res!172031) (not e!197280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31794 (= res!172031 (validMask!0 mask!3709))))

(assert (=> start!31794 e!197280))

(declare-fun array_inv!5599 (array!16163) Bool)

(assert (=> start!31794 (array_inv!5599 a!3293)))

(assert (=> start!31794 true))

(declare-fun lt!154931 () (_ BitVec 32))

(declare-fun lt!154934 () array!16163)

(declare-fun b!317297 () Bool)

(declare-fun e!197284 () Bool)

(assert (=> b!317297 (= e!197284 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!154934 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154931 k!2441 lt!154934 mask!3709)))))

(assert (=> b!317297 (= lt!154934 (array!16164 (store (arr!7645 a!3293) i!1240 k!2441) (size!7997 a!3293)))))

(declare-fun b!317298 () Bool)

(assert (=> b!317298 (= e!197283 (not true))))

(assert (=> b!317298 e!197284))

(declare-fun res!172033 () Bool)

(assert (=> b!317298 (=> (not res!172033) (not e!197284))))

(assert (=> b!317298 (= res!172033 (= lt!154933 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154931 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317298 (= lt!154931 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!31794 res!172031) b!317293))

(assert (= (and b!317293 res!172027) b!317296))

(assert (= (and b!317296 res!172035) b!317292))

(assert (= (and b!317292 res!172030) b!317295))

(assert (= (and b!317295 res!172032) b!317291))

(assert (= (and b!317291 res!172034) b!317290))

(assert (= (and b!317290 res!172028) b!317289))

(assert (= (and b!317289 res!172029) b!317294))

(assert (= (and b!317294 res!172026) b!317298))

(assert (= (and b!317298 res!172033) b!317297))

(declare-fun m!325969 () Bool)

(assert (=> b!317295 m!325969))

(declare-fun m!325971 () Bool)

(assert (=> b!317296 m!325971))

(declare-fun m!325973 () Bool)

(assert (=> b!317294 m!325973))

(declare-fun m!325975 () Bool)

(assert (=> b!317294 m!325975))

(declare-fun m!325977 () Bool)

(assert (=> b!317297 m!325977))

(declare-fun m!325979 () Bool)

(assert (=> b!317297 m!325979))

(declare-fun m!325981 () Bool)

(assert (=> b!317297 m!325981))

(declare-fun m!325983 () Bool)

(assert (=> b!317292 m!325983))

(declare-fun m!325985 () Bool)

(assert (=> b!317298 m!325985))

(declare-fun m!325987 () Bool)

(assert (=> b!317298 m!325987))

(declare-fun m!325989 () Bool)

(assert (=> b!317289 m!325989))

(declare-fun m!325991 () Bool)

(assert (=> b!317291 m!325991))

(declare-fun m!325993 () Bool)

(assert (=> start!31794 m!325993))

(declare-fun m!325995 () Bool)

(assert (=> start!31794 m!325995))

(declare-fun m!325997 () Bool)

(assert (=> b!317290 m!325997))

(assert (=> b!317290 m!325997))

(declare-fun m!325999 () Bool)

(assert (=> b!317290 m!325999))

(push 1)

