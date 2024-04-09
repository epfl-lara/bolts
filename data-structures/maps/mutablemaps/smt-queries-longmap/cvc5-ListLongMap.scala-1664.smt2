; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30822 () Bool)

(assert start!30822)

(declare-fun b!309214 () Bool)

(declare-fun res!165985 () Bool)

(declare-fun e!193193 () Bool)

(assert (=> b!309214 (=> (not res!165985) (not e!193193))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15773 0))(
  ( (array!15774 (arr!7468 (Array (_ BitVec 32) (_ BitVec 64))) (size!7820 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15773)

(assert (=> b!309214 (= res!165985 (and (= (size!7820 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7820 a!3293))))))

(declare-fun b!309215 () Bool)

(declare-fun e!193194 () Bool)

(declare-fun e!193192 () Bool)

(assert (=> b!309215 (= e!193194 e!193192)))

(declare-fun res!165986 () Bool)

(assert (=> b!309215 (=> (not res!165986) (not e!193192))))

(declare-datatypes ((SeekEntryResult!2619 0))(
  ( (MissingZero!2619 (index!12652 (_ BitVec 32))) (Found!2619 (index!12653 (_ BitVec 32))) (Intermediate!2619 (undefined!3431 Bool) (index!12654 (_ BitVec 32)) (x!30850 (_ BitVec 32))) (Undefined!2619) (MissingVacant!2619 (index!12655 (_ BitVec 32))) )
))
(declare-fun lt!151543 () SeekEntryResult!2619)

(declare-fun lt!151544 () SeekEntryResult!2619)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309215 (= res!165986 (and (= lt!151543 lt!151544) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7468 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15773 (_ BitVec 32)) SeekEntryResult!2619)

(assert (=> b!309215 (= lt!151543 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309216 () Bool)

(declare-fun res!165988 () Bool)

(assert (=> b!309216 (=> (not res!165988) (not e!193194))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!309216 (= res!165988 (and (= (select (arr!7468 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7820 a!3293))))))

(declare-fun b!309217 () Bool)

(declare-fun res!165987 () Bool)

(assert (=> b!309217 (=> (not res!165987) (not e!193193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309217 (= res!165987 (validKeyInArray!0 k!2441))))

(declare-fun b!309218 () Bool)

(declare-fun res!165992 () Bool)

(assert (=> b!309218 (=> (not res!165992) (not e!193193))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15773 (_ BitVec 32)) SeekEntryResult!2619)

(assert (=> b!309218 (= res!165992 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2619 i!1240)))))

(declare-fun b!309219 () Bool)

(declare-fun res!165991 () Bool)

(assert (=> b!309219 (=> (not res!165991) (not e!193193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15773 (_ BitVec 32)) Bool)

(assert (=> b!309219 (= res!165991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309220 () Bool)

(assert (=> b!309220 (= e!193192 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309220 (= lt!151543 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309221 () Bool)

(declare-fun res!165989 () Bool)

(assert (=> b!309221 (=> (not res!165989) (not e!193193))))

(declare-fun arrayContainsKey!0 (array!15773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309221 (= res!165989 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309222 () Bool)

(assert (=> b!309222 (= e!193193 e!193194)))

(declare-fun res!165990 () Bool)

(assert (=> b!309222 (=> (not res!165990) (not e!193194))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309222 (= res!165990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151544))))

(assert (=> b!309222 (= lt!151544 (Intermediate!2619 false resIndex!52 resX!52))))

(declare-fun res!165993 () Bool)

(assert (=> start!30822 (=> (not res!165993) (not e!193193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30822 (= res!165993 (validMask!0 mask!3709))))

(assert (=> start!30822 e!193193))

(declare-fun array_inv!5422 (array!15773) Bool)

(assert (=> start!30822 (array_inv!5422 a!3293)))

(assert (=> start!30822 true))

(assert (= (and start!30822 res!165993) b!309214))

(assert (= (and b!309214 res!165985) b!309217))

(assert (= (and b!309217 res!165987) b!309221))

(assert (= (and b!309221 res!165989) b!309218))

(assert (= (and b!309218 res!165992) b!309219))

(assert (= (and b!309219 res!165991) b!309222))

(assert (= (and b!309222 res!165990) b!309216))

(assert (= (and b!309216 res!165988) b!309215))

(assert (= (and b!309215 res!165986) b!309220))

(declare-fun m!319261 () Bool)

(assert (=> b!309215 m!319261))

(declare-fun m!319263 () Bool)

(assert (=> b!309215 m!319263))

(declare-fun m!319265 () Bool)

(assert (=> b!309219 m!319265))

(declare-fun m!319267 () Bool)

(assert (=> b!309218 m!319267))

(declare-fun m!319269 () Bool)

(assert (=> b!309220 m!319269))

(assert (=> b!309220 m!319269))

(declare-fun m!319271 () Bool)

(assert (=> b!309220 m!319271))

(declare-fun m!319273 () Bool)

(assert (=> b!309217 m!319273))

(declare-fun m!319275 () Bool)

(assert (=> start!30822 m!319275))

(declare-fun m!319277 () Bool)

(assert (=> start!30822 m!319277))

(declare-fun m!319279 () Bool)

(assert (=> b!309221 m!319279))

(declare-fun m!319281 () Bool)

(assert (=> b!309222 m!319281))

(assert (=> b!309222 m!319281))

(declare-fun m!319283 () Bool)

(assert (=> b!309222 m!319283))

(declare-fun m!319285 () Bool)

(assert (=> b!309216 m!319285))

(push 1)

