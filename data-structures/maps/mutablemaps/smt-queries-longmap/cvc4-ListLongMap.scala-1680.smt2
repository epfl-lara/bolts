; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30976 () Bool)

(assert start!30976)

(declare-fun b!310914 () Bool)

(declare-fun res!167527 () Bool)

(declare-fun e!194048 () Bool)

(assert (=> b!310914 (=> (not res!167527) (not e!194048))))

(declare-datatypes ((array!15876 0))(
  ( (array!15877 (arr!7518 (Array (_ BitVec 32) (_ BitVec 64))) (size!7870 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15876)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310914 (= res!167527 (and (= (size!7870 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7870 a!3293))))))

(declare-fun b!310915 () Bool)

(declare-fun res!167532 () Bool)

(declare-fun e!194046 () Bool)

(assert (=> b!310915 (=> (not res!167532) (not e!194046))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310915 (= res!167532 (and (= (select (arr!7518 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7870 a!3293))))))

(declare-fun b!310916 () Bool)

(declare-fun res!167531 () Bool)

(assert (=> b!310916 (=> (not res!167531) (not e!194048))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310916 (= res!167531 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310917 () Bool)

(assert (=> b!310917 (= e!194048 e!194046)))

(declare-fun res!167528 () Bool)

(assert (=> b!310917 (=> (not res!167528) (not e!194046))))

(declare-datatypes ((SeekEntryResult!2669 0))(
  ( (MissingZero!2669 (index!12852 (_ BitVec 32))) (Found!2669 (index!12853 (_ BitVec 32))) (Intermediate!2669 (undefined!3481 Bool) (index!12854 (_ BitVec 32)) (x!31037 (_ BitVec 32))) (Undefined!2669) (MissingVacant!2669 (index!12855 (_ BitVec 32))) )
))
(declare-fun lt!152186 () SeekEntryResult!2669)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15876 (_ BitVec 32)) SeekEntryResult!2669)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310917 (= res!167528 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152186))))

(assert (=> b!310917 (= lt!152186 (Intermediate!2669 false resIndex!52 resX!52))))

(declare-fun lt!152187 () array!15876)

(declare-fun b!310919 () Bool)

(declare-fun lt!152188 () (_ BitVec 32))

(declare-fun e!194047 () Bool)

(assert (=> b!310919 (= e!194047 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152187 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152188 k!2441 lt!152187 mask!3709)))))

(assert (=> b!310919 (= lt!152187 (array!15877 (store (arr!7518 a!3293) i!1240 k!2441) (size!7870 a!3293)))))

(declare-fun b!310920 () Bool)

(declare-fun res!167530 () Bool)

(assert (=> b!310920 (=> (not res!167530) (not e!194048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310920 (= res!167530 (validKeyInArray!0 k!2441))))

(declare-fun b!310921 () Bool)

(declare-fun res!167534 () Bool)

(assert (=> b!310921 (=> (not res!167534) (not e!194048))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15876 (_ BitVec 32)) SeekEntryResult!2669)

(assert (=> b!310921 (= res!167534 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2669 i!1240)))))

(declare-fun res!167533 () Bool)

(assert (=> start!30976 (=> (not res!167533) (not e!194048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30976 (= res!167533 (validMask!0 mask!3709))))

(assert (=> start!30976 e!194048))

(declare-fun array_inv!5472 (array!15876) Bool)

(assert (=> start!30976 (array_inv!5472 a!3293)))

(assert (=> start!30976 true))

(declare-fun b!310918 () Bool)

(declare-fun e!194049 () Bool)

(assert (=> b!310918 (= e!194046 e!194049)))

(declare-fun res!167529 () Bool)

(assert (=> b!310918 (=> (not res!167529) (not e!194049))))

(declare-fun lt!152189 () SeekEntryResult!2669)

(assert (=> b!310918 (= res!167529 (and (= lt!152189 lt!152186) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7518 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!310918 (= lt!152189 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310922 () Bool)

(assert (=> b!310922 (= e!194049 (not true))))

(assert (=> b!310922 e!194047))

(declare-fun res!167526 () Bool)

(assert (=> b!310922 (=> (not res!167526) (not e!194047))))

(assert (=> b!310922 (= res!167526 (= lt!152189 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152188 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310922 (= lt!152188 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310923 () Bool)

(declare-fun res!167535 () Bool)

(assert (=> b!310923 (=> (not res!167535) (not e!194048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15876 (_ BitVec 32)) Bool)

(assert (=> b!310923 (= res!167535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30976 res!167533) b!310914))

(assert (= (and b!310914 res!167527) b!310920))

(assert (= (and b!310920 res!167530) b!310916))

(assert (= (and b!310916 res!167531) b!310921))

(assert (= (and b!310921 res!167534) b!310923))

(assert (= (and b!310923 res!167535) b!310917))

(assert (= (and b!310917 res!167528) b!310915))

(assert (= (and b!310915 res!167532) b!310918))

(assert (= (and b!310918 res!167529) b!310922))

(assert (= (and b!310922 res!167526) b!310919))

(declare-fun m!320909 () Bool)

(assert (=> b!310920 m!320909))

(declare-fun m!320911 () Bool)

(assert (=> b!310915 m!320911))

(declare-fun m!320913 () Bool)

(assert (=> b!310918 m!320913))

(declare-fun m!320915 () Bool)

(assert (=> b!310918 m!320915))

(declare-fun m!320917 () Bool)

(assert (=> b!310923 m!320917))

(declare-fun m!320919 () Bool)

(assert (=> start!30976 m!320919))

(declare-fun m!320921 () Bool)

(assert (=> start!30976 m!320921))

(declare-fun m!320923 () Bool)

(assert (=> b!310916 m!320923))

(declare-fun m!320925 () Bool)

(assert (=> b!310917 m!320925))

(assert (=> b!310917 m!320925))

(declare-fun m!320927 () Bool)

(assert (=> b!310917 m!320927))

(declare-fun m!320929 () Bool)

(assert (=> b!310921 m!320929))

(declare-fun m!320931 () Bool)

(assert (=> b!310922 m!320931))

(declare-fun m!320933 () Bool)

(assert (=> b!310922 m!320933))

(declare-fun m!320935 () Bool)

(assert (=> b!310919 m!320935))

(declare-fun m!320937 () Bool)

(assert (=> b!310919 m!320937))

(declare-fun m!320939 () Bool)

(assert (=> b!310919 m!320939))

(push 1)

(assert (not b!310916))

(assert (not b!310917))

(assert (not b!310921))

