; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30964 () Bool)

(assert start!30964)

(declare-fun b!310734 () Bool)

(declare-fun e!193956 () Bool)

(declare-fun e!193959 () Bool)

(assert (=> b!310734 (= e!193956 e!193959)))

(declare-fun res!167349 () Bool)

(assert (=> b!310734 (=> (not res!167349) (not e!193959))))

(declare-datatypes ((array!15864 0))(
  ( (array!15865 (arr!7512 (Array (_ BitVec 32) (_ BitVec 64))) (size!7864 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15864)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2663 0))(
  ( (MissingZero!2663 (index!12828 (_ BitVec 32))) (Found!2663 (index!12829 (_ BitVec 32))) (Intermediate!2663 (undefined!3475 Bool) (index!12830 (_ BitVec 32)) (x!31015 (_ BitVec 32))) (Undefined!2663) (MissingVacant!2663 (index!12831 (_ BitVec 32))) )
))
(declare-fun lt!152115 () SeekEntryResult!2663)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15864 (_ BitVec 32)) SeekEntryResult!2663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310734 (= res!167349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152115))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310734 (= lt!152115 (Intermediate!2663 false resIndex!52 resX!52))))

(declare-fun b!310735 () Bool)

(declare-fun e!193960 () Bool)

(assert (=> b!310735 (= e!193960 (not true))))

(declare-fun e!193957 () Bool)

(assert (=> b!310735 e!193957))

(declare-fun res!167354 () Bool)

(assert (=> b!310735 (=> (not res!167354) (not e!193957))))

(declare-fun lt!152114 () (_ BitVec 32))

(declare-fun lt!152117 () SeekEntryResult!2663)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!310735 (= res!167354 (= lt!152117 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152114 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310735 (= lt!152114 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310736 () Bool)

(declare-fun res!167351 () Bool)

(assert (=> b!310736 (=> (not res!167351) (not e!193959))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310736 (= res!167351 (and (= (select (arr!7512 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7864 a!3293))))))

(declare-fun b!310737 () Bool)

(declare-fun res!167346 () Bool)

(assert (=> b!310737 (=> (not res!167346) (not e!193956))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15864 (_ BitVec 32)) SeekEntryResult!2663)

(assert (=> b!310737 (= res!167346 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2663 i!1240)))))

(declare-fun res!167347 () Bool)

(assert (=> start!30964 (=> (not res!167347) (not e!193956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30964 (= res!167347 (validMask!0 mask!3709))))

(assert (=> start!30964 e!193956))

(declare-fun array_inv!5466 (array!15864) Bool)

(assert (=> start!30964 (array_inv!5466 a!3293)))

(assert (=> start!30964 true))

(declare-fun b!310738 () Bool)

(declare-fun res!167352 () Bool)

(assert (=> b!310738 (=> (not res!167352) (not e!193956))))

(declare-fun arrayContainsKey!0 (array!15864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310738 (= res!167352 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310739 () Bool)

(declare-fun res!167348 () Bool)

(assert (=> b!310739 (=> (not res!167348) (not e!193956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310739 (= res!167348 (validKeyInArray!0 k!2441))))

(declare-fun b!310740 () Bool)

(declare-fun res!167353 () Bool)

(assert (=> b!310740 (=> (not res!167353) (not e!193956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15864 (_ BitVec 32)) Bool)

(assert (=> b!310740 (= res!167353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310741 () Bool)

(declare-fun lt!152116 () array!15864)

(assert (=> b!310741 (= e!193957 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152116 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152114 k!2441 lt!152116 mask!3709)))))

(assert (=> b!310741 (= lt!152116 (array!15865 (store (arr!7512 a!3293) i!1240 k!2441) (size!7864 a!3293)))))

(declare-fun b!310742 () Bool)

(declare-fun res!167350 () Bool)

(assert (=> b!310742 (=> (not res!167350) (not e!193956))))

(assert (=> b!310742 (= res!167350 (and (= (size!7864 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7864 a!3293))))))

(declare-fun b!310743 () Bool)

(assert (=> b!310743 (= e!193959 e!193960)))

(declare-fun res!167355 () Bool)

(assert (=> b!310743 (=> (not res!167355) (not e!193960))))

(assert (=> b!310743 (= res!167355 (and (= lt!152117 lt!152115) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7512 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310743 (= lt!152117 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30964 res!167347) b!310742))

(assert (= (and b!310742 res!167350) b!310739))

(assert (= (and b!310739 res!167348) b!310738))

(assert (= (and b!310738 res!167352) b!310737))

(assert (= (and b!310737 res!167346) b!310740))

(assert (= (and b!310740 res!167353) b!310734))

(assert (= (and b!310734 res!167349) b!310736))

(assert (= (and b!310736 res!167351) b!310743))

(assert (= (and b!310743 res!167355) b!310735))

(assert (= (and b!310735 res!167354) b!310741))

(declare-fun m!320717 () Bool)

(assert (=> b!310737 m!320717))

(declare-fun m!320719 () Bool)

(assert (=> b!310735 m!320719))

(declare-fun m!320721 () Bool)

(assert (=> b!310735 m!320721))

(declare-fun m!320723 () Bool)

(assert (=> b!310734 m!320723))

(assert (=> b!310734 m!320723))

(declare-fun m!320725 () Bool)

(assert (=> b!310734 m!320725))

(declare-fun m!320727 () Bool)

(assert (=> b!310740 m!320727))

(declare-fun m!320729 () Bool)

(assert (=> b!310736 m!320729))

(declare-fun m!320731 () Bool)

(assert (=> b!310738 m!320731))

(declare-fun m!320733 () Bool)

(assert (=> b!310741 m!320733))

(declare-fun m!320735 () Bool)

(assert (=> b!310741 m!320735))

(declare-fun m!320737 () Bool)

(assert (=> b!310741 m!320737))

(declare-fun m!320739 () Bool)

(assert (=> b!310739 m!320739))

(declare-fun m!320741 () Bool)

(assert (=> b!310743 m!320741))

(declare-fun m!320743 () Bool)

(assert (=> b!310743 m!320743))

(declare-fun m!320745 () Bool)

(assert (=> start!30964 m!320745))

(declare-fun m!320747 () Bool)

(assert (=> start!30964 m!320747))

(push 1)

(assert (not b!310741))

(assert (not b!310740))

(assert (not b!310737))

(assert (not b!310735))

(assert (not b!310743))

(assert (not start!30964))

