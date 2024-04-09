; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30972 () Bool)

(assert start!30972)

(declare-fun b!310854 () Bool)

(declare-fun res!167469 () Bool)

(declare-fun e!194018 () Bool)

(assert (=> b!310854 (=> (not res!167469) (not e!194018))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310854 (= res!167469 (validKeyInArray!0 k!2441))))

(declare-fun b!310855 () Bool)

(declare-fun res!167472 () Bool)

(assert (=> b!310855 (=> (not res!167472) (not e!194018))))

(declare-datatypes ((array!15872 0))(
  ( (array!15873 (arr!7516 (Array (_ BitVec 32) (_ BitVec 64))) (size!7868 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15872)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2667 0))(
  ( (MissingZero!2667 (index!12844 (_ BitVec 32))) (Found!2667 (index!12845 (_ BitVec 32))) (Intermediate!2667 (undefined!3479 Bool) (index!12846 (_ BitVec 32)) (x!31035 (_ BitVec 32))) (Undefined!2667) (MissingVacant!2667 (index!12847 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15872 (_ BitVec 32)) SeekEntryResult!2667)

(assert (=> b!310855 (= res!167472 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2667 i!1240)))))

(declare-fun b!310857 () Bool)

(declare-fun res!167473 () Bool)

(declare-fun e!194019 () Bool)

(assert (=> b!310857 (=> (not res!167473) (not e!194019))))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310857 (= res!167473 (and (= (select (arr!7516 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7868 a!3293))))))

(declare-fun b!310858 () Bool)

(declare-fun e!194017 () Bool)

(assert (=> b!310858 (= e!194019 e!194017)))

(declare-fun res!167471 () Bool)

(assert (=> b!310858 (=> (not res!167471) (not e!194017))))

(declare-fun lt!152165 () SeekEntryResult!2667)

(declare-fun lt!152162 () SeekEntryResult!2667)

(assert (=> b!310858 (= res!167471 (and (= lt!152162 lt!152165) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7516 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15872 (_ BitVec 32)) SeekEntryResult!2667)

(assert (=> b!310858 (= lt!152162 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310859 () Bool)

(declare-fun res!167474 () Bool)

(assert (=> b!310859 (=> (not res!167474) (not e!194018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15872 (_ BitVec 32)) Bool)

(assert (=> b!310859 (= res!167474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310860 () Bool)

(assert (=> b!310860 (= e!194017 (not true))))

(declare-fun e!194016 () Bool)

(assert (=> b!310860 e!194016))

(declare-fun res!167468 () Bool)

(assert (=> b!310860 (=> (not res!167468) (not e!194016))))

(declare-fun lt!152163 () (_ BitVec 32))

(assert (=> b!310860 (= res!167468 (= lt!152162 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152163 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310860 (= lt!152163 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310861 () Bool)

(declare-fun res!167467 () Bool)

(assert (=> b!310861 (=> (not res!167467) (not e!194018))))

(declare-fun arrayContainsKey!0 (array!15872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310861 (= res!167467 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310862 () Bool)

(declare-fun res!167470 () Bool)

(assert (=> b!310862 (=> (not res!167470) (not e!194018))))

(assert (=> b!310862 (= res!167470 (and (= (size!7868 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7868 a!3293))))))

(declare-fun b!310863 () Bool)

(assert (=> b!310863 (= e!194018 e!194019)))

(declare-fun res!167466 () Bool)

(assert (=> b!310863 (=> (not res!167466) (not e!194019))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310863 (= res!167466 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152165))))

(assert (=> b!310863 (= lt!152165 (Intermediate!2667 false resIndex!52 resX!52))))

(declare-fun b!310856 () Bool)

(declare-fun lt!152164 () array!15872)

(assert (=> b!310856 (= e!194016 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152164 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152163 k!2441 lt!152164 mask!3709)))))

(assert (=> b!310856 (= lt!152164 (array!15873 (store (arr!7516 a!3293) i!1240 k!2441) (size!7868 a!3293)))))

(declare-fun res!167475 () Bool)

(assert (=> start!30972 (=> (not res!167475) (not e!194018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30972 (= res!167475 (validMask!0 mask!3709))))

(assert (=> start!30972 e!194018))

(declare-fun array_inv!5470 (array!15872) Bool)

(assert (=> start!30972 (array_inv!5470 a!3293)))

(assert (=> start!30972 true))

(assert (= (and start!30972 res!167475) b!310862))

(assert (= (and b!310862 res!167470) b!310854))

(assert (= (and b!310854 res!167469) b!310861))

(assert (= (and b!310861 res!167467) b!310855))

(assert (= (and b!310855 res!167472) b!310859))

(assert (= (and b!310859 res!167474) b!310863))

(assert (= (and b!310863 res!167466) b!310857))

(assert (= (and b!310857 res!167473) b!310858))

(assert (= (and b!310858 res!167471) b!310860))

(assert (= (and b!310860 res!167468) b!310856))

(declare-fun m!320845 () Bool)

(assert (=> b!310861 m!320845))

(declare-fun m!320847 () Bool)

(assert (=> b!310863 m!320847))

(assert (=> b!310863 m!320847))

(declare-fun m!320849 () Bool)

(assert (=> b!310863 m!320849))

(declare-fun m!320851 () Bool)

(assert (=> b!310860 m!320851))

(declare-fun m!320853 () Bool)

(assert (=> b!310860 m!320853))

(declare-fun m!320855 () Bool)

(assert (=> b!310854 m!320855))

(declare-fun m!320857 () Bool)

(assert (=> b!310858 m!320857))

(declare-fun m!320859 () Bool)

(assert (=> b!310858 m!320859))

(declare-fun m!320861 () Bool)

(assert (=> b!310859 m!320861))

(declare-fun m!320863 () Bool)

(assert (=> b!310857 m!320863))

(declare-fun m!320865 () Bool)

(assert (=> b!310856 m!320865))

(declare-fun m!320867 () Bool)

(assert (=> b!310856 m!320867))

(declare-fun m!320869 () Bool)

(assert (=> b!310856 m!320869))

(declare-fun m!320871 () Bool)

(assert (=> start!30972 m!320871))

(declare-fun m!320873 () Bool)

(assert (=> start!30972 m!320873))

(declare-fun m!320875 () Bool)

(assert (=> b!310855 m!320875))

(push 1)

