; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30928 () Bool)

(assert start!30928)

(declare-fun b!310194 () Bool)

(declare-fun e!193686 () Bool)

(declare-fun e!193689 () Bool)

(assert (=> b!310194 (= e!193686 e!193689)))

(declare-fun res!166810 () Bool)

(assert (=> b!310194 (=> (not res!166810) (not e!193689))))

(declare-datatypes ((array!15828 0))(
  ( (array!15829 (arr!7494 (Array (_ BitVec 32) (_ BitVec 64))) (size!7846 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15828)

(declare-datatypes ((SeekEntryResult!2645 0))(
  ( (MissingZero!2645 (index!12756 (_ BitVec 32))) (Found!2645 (index!12757 (_ BitVec 32))) (Intermediate!2645 (undefined!3457 Bool) (index!12758 (_ BitVec 32)) (x!30949 (_ BitVec 32))) (Undefined!2645) (MissingVacant!2645 (index!12759 (_ BitVec 32))) )
))
(declare-fun lt!151901 () SeekEntryResult!2645)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!151898 () SeekEntryResult!2645)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310194 (= res!166810 (and (= lt!151901 lt!151898) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7494 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15828 (_ BitVec 32)) SeekEntryResult!2645)

(assert (=> b!310194 (= lt!151901 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310195 () Bool)

(declare-fun res!166806 () Bool)

(declare-fun e!193687 () Bool)

(assert (=> b!310195 (=> (not res!166806) (not e!193687))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!310195 (= res!166806 (and (= (size!7846 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7846 a!3293))))))

(declare-fun b!310196 () Bool)

(declare-fun res!166808 () Bool)

(assert (=> b!310196 (=> (not res!166808) (not e!193686))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310196 (= res!166808 (and (= (select (arr!7494 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7846 a!3293))))))

(declare-fun res!166813 () Bool)

(assert (=> start!30928 (=> (not res!166813) (not e!193687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30928 (= res!166813 (validMask!0 mask!3709))))

(assert (=> start!30928 e!193687))

(declare-fun array_inv!5448 (array!15828) Bool)

(assert (=> start!30928 (array_inv!5448 a!3293)))

(assert (=> start!30928 true))

(declare-fun b!310197 () Bool)

(declare-fun res!166812 () Bool)

(assert (=> b!310197 (=> (not res!166812) (not e!193687))))

(declare-fun arrayContainsKey!0 (array!15828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310197 (= res!166812 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310198 () Bool)

(assert (=> b!310198 (= e!193687 e!193686)))

(declare-fun res!166814 () Bool)

(assert (=> b!310198 (=> (not res!166814) (not e!193686))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310198 (= res!166814 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151898))))

(assert (=> b!310198 (= lt!151898 (Intermediate!2645 false resIndex!52 resX!52))))

(declare-fun b!310199 () Bool)

(assert (=> b!310199 (= e!193689 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110))))))

(declare-fun e!193688 () Bool)

(assert (=> b!310199 e!193688))

(declare-fun res!166807 () Bool)

(assert (=> b!310199 (=> (not res!166807) (not e!193688))))

(declare-fun lt!151900 () (_ BitVec 32))

(assert (=> b!310199 (= res!166807 (= lt!151901 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151900 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310199 (= lt!151900 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310200 () Bool)

(declare-fun res!166815 () Bool)

(assert (=> b!310200 (=> (not res!166815) (not e!193687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15828 (_ BitVec 32)) SeekEntryResult!2645)

(assert (=> b!310200 (= res!166815 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2645 i!1240)))))

(declare-fun b!310201 () Bool)

(declare-fun res!166811 () Bool)

(assert (=> b!310201 (=> (not res!166811) (not e!193687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310201 (= res!166811 (validKeyInArray!0 k!2441))))

(declare-fun b!310202 () Bool)

(declare-fun lt!151899 () array!15828)

(assert (=> b!310202 (= e!193688 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151899 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151900 k!2441 lt!151899 mask!3709)))))

(assert (=> b!310202 (= lt!151899 (array!15829 (store (arr!7494 a!3293) i!1240 k!2441) (size!7846 a!3293)))))

(declare-fun b!310203 () Bool)

(declare-fun res!166809 () Bool)

(assert (=> b!310203 (=> (not res!166809) (not e!193687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15828 (_ BitVec 32)) Bool)

(assert (=> b!310203 (= res!166809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30928 res!166813) b!310195))

(assert (= (and b!310195 res!166806) b!310201))

(assert (= (and b!310201 res!166811) b!310197))

(assert (= (and b!310197 res!166812) b!310200))

(assert (= (and b!310200 res!166815) b!310203))

(assert (= (and b!310203 res!166809) b!310198))

(assert (= (and b!310198 res!166814) b!310196))

(assert (= (and b!310196 res!166808) b!310194))

(assert (= (and b!310194 res!166810) b!310199))

(assert (= (and b!310199 res!166807) b!310202))

(declare-fun m!320141 () Bool)

(assert (=> start!30928 m!320141))

(declare-fun m!320143 () Bool)

(assert (=> start!30928 m!320143))

(declare-fun m!320145 () Bool)

(assert (=> b!310194 m!320145))

(declare-fun m!320147 () Bool)

(assert (=> b!310194 m!320147))

(declare-fun m!320149 () Bool)

(assert (=> b!310197 m!320149))

(declare-fun m!320151 () Bool)

(assert (=> b!310200 m!320151))

(declare-fun m!320153 () Bool)

(assert (=> b!310199 m!320153))

(declare-fun m!320155 () Bool)

(assert (=> b!310199 m!320155))

(declare-fun m!320157 () Bool)

(assert (=> b!310202 m!320157))

(declare-fun m!320159 () Bool)

(assert (=> b!310202 m!320159))

(declare-fun m!320161 () Bool)

(assert (=> b!310202 m!320161))

(declare-fun m!320163 () Bool)

(assert (=> b!310201 m!320163))

(declare-fun m!320165 () Bool)

(assert (=> b!310203 m!320165))

(declare-fun m!320167 () Bool)

(assert (=> b!310196 m!320167))

(declare-fun m!320169 () Bool)

(assert (=> b!310198 m!320169))

(assert (=> b!310198 m!320169))

(declare-fun m!320171 () Bool)

(assert (=> b!310198 m!320171))

(push 1)

(assert (not b!310203))

(assert (not b!310199))

(assert (not b!310194))

(assert (not b!310197))

(assert (not start!30928))

(assert (not b!310198))

(assert (not b!310200))

(assert (not b!310201))

(assert (not b!310202))

