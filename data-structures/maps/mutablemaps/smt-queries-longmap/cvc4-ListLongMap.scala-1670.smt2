; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30916 () Bool)

(assert start!30916)

(declare-fun b!310014 () Bool)

(declare-fun res!166629 () Bool)

(declare-fun e!193596 () Bool)

(assert (=> b!310014 (=> (not res!166629) (not e!193596))))

(declare-datatypes ((array!15816 0))(
  ( (array!15817 (arr!7488 (Array (_ BitVec 32) (_ BitVec 64))) (size!7840 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15816)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2639 0))(
  ( (MissingZero!2639 (index!12732 (_ BitVec 32))) (Found!2639 (index!12733 (_ BitVec 32))) (Intermediate!2639 (undefined!3451 Bool) (index!12734 (_ BitVec 32)) (x!30927 (_ BitVec 32))) (Undefined!2639) (MissingVacant!2639 (index!12735 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15816 (_ BitVec 32)) SeekEntryResult!2639)

(assert (=> b!310014 (= res!166629 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2639 i!1240)))))

(declare-fun b!310015 () Bool)

(declare-fun e!193599 () Bool)

(declare-fun e!193600 () Bool)

(assert (=> b!310015 (= e!193599 e!193600)))

(declare-fun res!166631 () Bool)

(assert (=> b!310015 (=> (not res!166631) (not e!193600))))

(declare-fun lt!151827 () SeekEntryResult!2639)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!151829 () SeekEntryResult!2639)

(assert (=> b!310015 (= res!166631 (and (= lt!151829 lt!151827) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7488 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15816 (_ BitVec 32)) SeekEntryResult!2639)

(assert (=> b!310015 (= lt!151829 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310016 () Bool)

(declare-fun res!166632 () Bool)

(assert (=> b!310016 (=> (not res!166632) (not e!193596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15816 (_ BitVec 32)) Bool)

(assert (=> b!310016 (= res!166632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!166634 () Bool)

(assert (=> start!30916 (=> (not res!166634) (not e!193596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30916 (= res!166634 (validMask!0 mask!3709))))

(assert (=> start!30916 e!193596))

(declare-fun array_inv!5442 (array!15816) Bool)

(assert (=> start!30916 (array_inv!5442 a!3293)))

(assert (=> start!30916 true))

(declare-fun b!310017 () Bool)

(assert (=> b!310017 (= e!193600 (not (bvsge mask!3709 #b00000000000000000000000000000000)))))

(declare-fun e!193597 () Bool)

(assert (=> b!310017 e!193597))

(declare-fun res!166635 () Bool)

(assert (=> b!310017 (=> (not res!166635) (not e!193597))))

(declare-fun lt!151828 () (_ BitVec 32))

(assert (=> b!310017 (= res!166635 (= lt!151829 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151828 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310017 (= lt!151828 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310018 () Bool)

(declare-fun res!166627 () Bool)

(assert (=> b!310018 (=> (not res!166627) (not e!193596))))

(assert (=> b!310018 (= res!166627 (and (= (size!7840 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7840 a!3293))))))

(declare-fun b!310019 () Bool)

(declare-fun res!166628 () Bool)

(assert (=> b!310019 (=> (not res!166628) (not e!193596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310019 (= res!166628 (validKeyInArray!0 k!2441))))

(declare-fun b!310020 () Bool)

(declare-fun lt!151826 () array!15816)

(assert (=> b!310020 (= e!193597 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151826 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151828 k!2441 lt!151826 mask!3709)))))

(assert (=> b!310020 (= lt!151826 (array!15817 (store (arr!7488 a!3293) i!1240 k!2441) (size!7840 a!3293)))))

(declare-fun b!310021 () Bool)

(assert (=> b!310021 (= e!193596 e!193599)))

(declare-fun res!166630 () Bool)

(assert (=> b!310021 (=> (not res!166630) (not e!193599))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310021 (= res!166630 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151827))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310021 (= lt!151827 (Intermediate!2639 false resIndex!52 resX!52))))

(declare-fun b!310022 () Bool)

(declare-fun res!166633 () Bool)

(assert (=> b!310022 (=> (not res!166633) (not e!193596))))

(declare-fun arrayContainsKey!0 (array!15816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310022 (= res!166633 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310023 () Bool)

(declare-fun res!166626 () Bool)

(assert (=> b!310023 (=> (not res!166626) (not e!193599))))

(assert (=> b!310023 (= res!166626 (and (= (select (arr!7488 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7840 a!3293))))))

(assert (= (and start!30916 res!166634) b!310018))

(assert (= (and b!310018 res!166627) b!310019))

(assert (= (and b!310019 res!166628) b!310022))

(assert (= (and b!310022 res!166633) b!310014))

(assert (= (and b!310014 res!166629) b!310016))

(assert (= (and b!310016 res!166632) b!310021))

(assert (= (and b!310021 res!166630) b!310023))

(assert (= (and b!310023 res!166626) b!310015))

(assert (= (and b!310015 res!166631) b!310017))

(assert (= (and b!310017 res!166635) b!310020))

(declare-fun m!319949 () Bool)

(assert (=> b!310023 m!319949))

(declare-fun m!319951 () Bool)

(assert (=> b!310017 m!319951))

(declare-fun m!319953 () Bool)

(assert (=> b!310017 m!319953))

(declare-fun m!319955 () Bool)

(assert (=> b!310016 m!319955))

(declare-fun m!319957 () Bool)

(assert (=> start!30916 m!319957))

(declare-fun m!319959 () Bool)

(assert (=> start!30916 m!319959))

(declare-fun m!319961 () Bool)

(assert (=> b!310019 m!319961))

(declare-fun m!319963 () Bool)

(assert (=> b!310014 m!319963))

(declare-fun m!319965 () Bool)

(assert (=> b!310021 m!319965))

(assert (=> b!310021 m!319965))

(declare-fun m!319967 () Bool)

(assert (=> b!310021 m!319967))

(declare-fun m!319969 () Bool)

(assert (=> b!310022 m!319969))

(declare-fun m!319971 () Bool)

(assert (=> b!310015 m!319971))

(declare-fun m!319973 () Bool)

(assert (=> b!310015 m!319973))

(declare-fun m!319975 () Bool)

(assert (=> b!310020 m!319975))

(declare-fun m!319977 () Bool)

(assert (=> b!310020 m!319977))

(declare-fun m!319979 () Bool)

(assert (=> b!310020 m!319979))

(push 1)

(assert (not b!310021))

(assert (not b!310022))

(assert (not b!310015))

(assert (not b!310019))

(assert (not start!30916))

