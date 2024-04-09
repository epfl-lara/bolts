; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30820 () Bool)

(assert start!30820)

(declare-fun b!309187 () Bool)

(declare-fun e!193180 () Bool)

(declare-fun e!193183 () Bool)

(assert (=> b!309187 (= e!193180 e!193183)))

(declare-fun res!165965 () Bool)

(assert (=> b!309187 (=> (not res!165965) (not e!193183))))

(declare-datatypes ((array!15771 0))(
  ( (array!15772 (arr!7467 (Array (_ BitVec 32) (_ BitVec 64))) (size!7819 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15771)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2618 0))(
  ( (MissingZero!2618 (index!12648 (_ BitVec 32))) (Found!2618 (index!12649 (_ BitVec 32))) (Intermediate!2618 (undefined!3430 Bool) (index!12650 (_ BitVec 32)) (x!30841 (_ BitVec 32))) (Undefined!2618) (MissingVacant!2618 (index!12651 (_ BitVec 32))) )
))
(declare-fun lt!151538 () SeekEntryResult!2618)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15771 (_ BitVec 32)) SeekEntryResult!2618)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309187 (= res!165965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151538))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309187 (= lt!151538 (Intermediate!2618 false resIndex!52 resX!52))))

(declare-fun b!309188 () Bool)

(declare-fun res!165962 () Bool)

(assert (=> b!309188 (=> (not res!165962) (not e!193180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309188 (= res!165962 (validKeyInArray!0 k!2441))))

(declare-fun b!309189 () Bool)

(declare-fun res!165966 () Bool)

(assert (=> b!309189 (=> (not res!165966) (not e!193180))))

(declare-fun arrayContainsKey!0 (array!15771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309189 (= res!165966 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309190 () Bool)

(declare-fun e!193182 () Bool)

(assert (=> b!309190 (= e!193183 e!193182)))

(declare-fun res!165958 () Bool)

(assert (=> b!309190 (=> (not res!165958) (not e!193182))))

(declare-fun lt!151537 () SeekEntryResult!2618)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309190 (= res!165958 (and (= lt!151537 lt!151538) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7467 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309190 (= lt!151537 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309191 () Bool)

(declare-fun res!165963 () Bool)

(assert (=> b!309191 (=> (not res!165963) (not e!193180))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15771 (_ BitVec 32)) SeekEntryResult!2618)

(assert (=> b!309191 (= res!165963 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2618 i!1240)))))

(declare-fun res!165960 () Bool)

(assert (=> start!30820 (=> (not res!165960) (not e!193180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30820 (= res!165960 (validMask!0 mask!3709))))

(assert (=> start!30820 e!193180))

(declare-fun array_inv!5421 (array!15771) Bool)

(assert (=> start!30820 (array_inv!5421 a!3293)))

(assert (=> start!30820 true))

(declare-fun b!309192 () Bool)

(assert (=> b!309192 (= e!193182 (not true))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309192 (= lt!151537 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309193 () Bool)

(declare-fun res!165959 () Bool)

(assert (=> b!309193 (=> (not res!165959) (not e!193180))))

(assert (=> b!309193 (= res!165959 (and (= (size!7819 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7819 a!3293))))))

(declare-fun b!309194 () Bool)

(declare-fun res!165961 () Bool)

(assert (=> b!309194 (=> (not res!165961) (not e!193183))))

(assert (=> b!309194 (= res!165961 (and (= (select (arr!7467 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7819 a!3293))))))

(declare-fun b!309195 () Bool)

(declare-fun res!165964 () Bool)

(assert (=> b!309195 (=> (not res!165964) (not e!193180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15771 (_ BitVec 32)) Bool)

(assert (=> b!309195 (= res!165964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30820 res!165960) b!309193))

(assert (= (and b!309193 res!165959) b!309188))

(assert (= (and b!309188 res!165962) b!309189))

(assert (= (and b!309189 res!165966) b!309191))

(assert (= (and b!309191 res!165963) b!309195))

(assert (= (and b!309195 res!165964) b!309187))

(assert (= (and b!309187 res!165965) b!309194))

(assert (= (and b!309194 res!165961) b!309190))

(assert (= (and b!309190 res!165958) b!309192))

(declare-fun m!319235 () Bool)

(assert (=> b!309194 m!319235))

(declare-fun m!319237 () Bool)

(assert (=> b!309188 m!319237))

(declare-fun m!319239 () Bool)

(assert (=> b!309191 m!319239))

(declare-fun m!319241 () Bool)

(assert (=> b!309190 m!319241))

(declare-fun m!319243 () Bool)

(assert (=> b!309190 m!319243))

(declare-fun m!319245 () Bool)

(assert (=> b!309187 m!319245))

(assert (=> b!309187 m!319245))

(declare-fun m!319247 () Bool)

(assert (=> b!309187 m!319247))

(declare-fun m!319249 () Bool)

(assert (=> start!30820 m!319249))

(declare-fun m!319251 () Bool)

(assert (=> start!30820 m!319251))

(declare-fun m!319253 () Bool)

(assert (=> b!309189 m!319253))

(declare-fun m!319255 () Bool)

(assert (=> b!309195 m!319255))

(declare-fun m!319257 () Bool)

(assert (=> b!309192 m!319257))

(assert (=> b!309192 m!319257))

(declare-fun m!319259 () Bool)

(assert (=> b!309192 m!319259))

(push 1)

(assert (not start!30820))

(assert (not b!309191))

(assert (not b!309195))

(assert (not b!309189))

(assert (not b!309192))

(assert (not b!309188))

