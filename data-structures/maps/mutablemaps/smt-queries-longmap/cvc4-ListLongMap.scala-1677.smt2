; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30958 () Bool)

(assert start!30958)

(declare-fun b!310644 () Bool)

(declare-fun e!193915 () Bool)

(assert (=> b!310644 (= e!193915 (not true))))

(declare-fun e!193913 () Bool)

(assert (=> b!310644 e!193913))

(declare-fun res!167265 () Bool)

(assert (=> b!310644 (=> (not res!167265) (not e!193913))))

(declare-datatypes ((array!15858 0))(
  ( (array!15859 (arr!7509 (Array (_ BitVec 32) (_ BitVec 64))) (size!7861 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15858)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!152080 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2660 0))(
  ( (MissingZero!2660 (index!12816 (_ BitVec 32))) (Found!2660 (index!12817 (_ BitVec 32))) (Intermediate!2660 (undefined!3472 Bool) (index!12818 (_ BitVec 32)) (x!31004 (_ BitVec 32))) (Undefined!2660) (MissingVacant!2660 (index!12819 (_ BitVec 32))) )
))
(declare-fun lt!152079 () SeekEntryResult!2660)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15858 (_ BitVec 32)) SeekEntryResult!2660)

(assert (=> b!310644 (= res!167265 (= lt!152079 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152080 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310644 (= lt!152080 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310645 () Bool)

(declare-fun res!167259 () Bool)

(declare-fun e!193911 () Bool)

(assert (=> b!310645 (=> (not res!167259) (not e!193911))))

(declare-fun arrayContainsKey!0 (array!15858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310645 (= res!167259 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!152081 () array!15858)

(declare-fun b!310646 () Bool)

(assert (=> b!310646 (= e!193913 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152081 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152080 k!2441 lt!152081 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310646 (= lt!152081 (array!15859 (store (arr!7509 a!3293) i!1240 k!2441) (size!7861 a!3293)))))

(declare-fun b!310647 () Bool)

(declare-fun res!167256 () Bool)

(declare-fun e!193912 () Bool)

(assert (=> b!310647 (=> (not res!167256) (not e!193912))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!310647 (= res!167256 (and (= (select (arr!7509 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7861 a!3293))))))

(declare-fun b!310648 () Bool)

(assert (=> b!310648 (= e!193912 e!193915)))

(declare-fun res!167260 () Bool)

(assert (=> b!310648 (=> (not res!167260) (not e!193915))))

(declare-fun lt!152078 () SeekEntryResult!2660)

(assert (=> b!310648 (= res!167260 (and (= lt!152079 lt!152078) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7509 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310648 (= lt!152079 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310649 () Bool)

(declare-fun res!167257 () Bool)

(assert (=> b!310649 (=> (not res!167257) (not e!193911))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15858 (_ BitVec 32)) SeekEntryResult!2660)

(assert (=> b!310649 (= res!167257 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2660 i!1240)))))

(declare-fun b!310650 () Bool)

(declare-fun res!167258 () Bool)

(assert (=> b!310650 (=> (not res!167258) (not e!193911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310650 (= res!167258 (validKeyInArray!0 k!2441))))

(declare-fun b!310651 () Bool)

(declare-fun res!167261 () Bool)

(assert (=> b!310651 (=> (not res!167261) (not e!193911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15858 (_ BitVec 32)) Bool)

(assert (=> b!310651 (= res!167261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!167262 () Bool)

(assert (=> start!30958 (=> (not res!167262) (not e!193911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30958 (= res!167262 (validMask!0 mask!3709))))

(assert (=> start!30958 e!193911))

(declare-fun array_inv!5463 (array!15858) Bool)

(assert (=> start!30958 (array_inv!5463 a!3293)))

(assert (=> start!30958 true))

(declare-fun b!310652 () Bool)

(declare-fun res!167263 () Bool)

(assert (=> b!310652 (=> (not res!167263) (not e!193911))))

(assert (=> b!310652 (= res!167263 (and (= (size!7861 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7861 a!3293))))))

(declare-fun b!310653 () Bool)

(assert (=> b!310653 (= e!193911 e!193912)))

(declare-fun res!167264 () Bool)

(assert (=> b!310653 (=> (not res!167264) (not e!193912))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310653 (= res!167264 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152078))))

(assert (=> b!310653 (= lt!152078 (Intermediate!2660 false resIndex!52 resX!52))))

(assert (= (and start!30958 res!167262) b!310652))

(assert (= (and b!310652 res!167263) b!310650))

(assert (= (and b!310650 res!167258) b!310645))

(assert (= (and b!310645 res!167259) b!310649))

(assert (= (and b!310649 res!167257) b!310651))

(assert (= (and b!310651 res!167261) b!310653))

(assert (= (and b!310653 res!167264) b!310647))

(assert (= (and b!310647 res!167256) b!310648))

(assert (= (and b!310648 res!167260) b!310644))

(assert (= (and b!310644 res!167265) b!310646))

(declare-fun m!320621 () Bool)

(assert (=> b!310647 m!320621))

(declare-fun m!320623 () Bool)

(assert (=> b!310650 m!320623))

(declare-fun m!320625 () Bool)

(assert (=> b!310651 m!320625))

(declare-fun m!320627 () Bool)

(assert (=> b!310649 m!320627))

(declare-fun m!320629 () Bool)

(assert (=> start!30958 m!320629))

(declare-fun m!320631 () Bool)

(assert (=> start!30958 m!320631))

(declare-fun m!320633 () Bool)

(assert (=> b!310644 m!320633))

(declare-fun m!320635 () Bool)

(assert (=> b!310644 m!320635))

(declare-fun m!320637 () Bool)

(assert (=> b!310653 m!320637))

(assert (=> b!310653 m!320637))

(declare-fun m!320639 () Bool)

(assert (=> b!310653 m!320639))

(declare-fun m!320641 () Bool)

(assert (=> b!310646 m!320641))

(declare-fun m!320643 () Bool)

(assert (=> b!310646 m!320643))

(declare-fun m!320645 () Bool)

(assert (=> b!310646 m!320645))

(declare-fun m!320647 () Bool)

(assert (=> b!310648 m!320647))

(declare-fun m!320649 () Bool)

(assert (=> b!310648 m!320649))

(declare-fun m!320651 () Bool)

(assert (=> b!310645 m!320651))

(push 1)

(assert (not start!30958))

(assert (not b!310644))

(assert (not b!310645))

(assert (not b!310648))

