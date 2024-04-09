; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30990 () Bool)

(assert start!30990)

(declare-fun b!311124 () Bool)

(declare-fun res!167738 () Bool)

(declare-fun e!194154 () Bool)

(assert (=> b!311124 (=> (not res!167738) (not e!194154))))

(declare-datatypes ((array!15890 0))(
  ( (array!15891 (arr!7525 (Array (_ BitVec 32) (_ BitVec 64))) (size!7877 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15890)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2676 0))(
  ( (MissingZero!2676 (index!12880 (_ BitVec 32))) (Found!2676 (index!12881 (_ BitVec 32))) (Intermediate!2676 (undefined!3488 Bool) (index!12882 (_ BitVec 32)) (x!31068 (_ BitVec 32))) (Undefined!2676) (MissingVacant!2676 (index!12883 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15890 (_ BitVec 32)) SeekEntryResult!2676)

(assert (=> b!311124 (= res!167738 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2676 i!1240)))))

(declare-fun res!167742 () Bool)

(assert (=> start!30990 (=> (not res!167742) (not e!194154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30990 (= res!167742 (validMask!0 mask!3709))))

(assert (=> start!30990 e!194154))

(declare-fun array_inv!5479 (array!15890) Bool)

(assert (=> start!30990 (array_inv!5479 a!3293)))

(assert (=> start!30990 true))

(declare-fun b!311125 () Bool)

(declare-fun e!194155 () Bool)

(assert (=> b!311125 (= e!194155 (not true))))

(declare-fun e!194151 () Bool)

(assert (=> b!311125 e!194151))

(declare-fun res!167741 () Bool)

(assert (=> b!311125 (=> (not res!167741) (not e!194151))))

(declare-fun lt!152270 () SeekEntryResult!2676)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!152271 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15890 (_ BitVec 32)) SeekEntryResult!2676)

(assert (=> b!311125 (= res!167741 (= lt!152270 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152271 k!2441 a!3293 mask!3709)))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311125 (= lt!152271 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311126 () Bool)

(declare-fun res!167743 () Bool)

(assert (=> b!311126 (=> (not res!167743) (not e!194154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311126 (= res!167743 (validKeyInArray!0 k!2441))))

(declare-fun b!311127 () Bool)

(declare-fun res!167739 () Bool)

(assert (=> b!311127 (=> (not res!167739) (not e!194154))))

(declare-fun arrayContainsKey!0 (array!15890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311127 (= res!167739 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311128 () Bool)

(declare-fun e!194152 () Bool)

(assert (=> b!311128 (= e!194154 e!194152)))

(declare-fun res!167740 () Bool)

(assert (=> b!311128 (=> (not res!167740) (not e!194152))))

(declare-fun lt!152272 () SeekEntryResult!2676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311128 (= res!167740 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152272))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311128 (= lt!152272 (Intermediate!2676 false resIndex!52 resX!52))))

(declare-fun lt!152273 () array!15890)

(declare-fun b!311129 () Bool)

(assert (=> b!311129 (= e!194151 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152273 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152271 k!2441 lt!152273 mask!3709)))))

(assert (=> b!311129 (= lt!152273 (array!15891 (store (arr!7525 a!3293) i!1240 k!2441) (size!7877 a!3293)))))

(declare-fun b!311130 () Bool)

(declare-fun res!167737 () Bool)

(assert (=> b!311130 (=> (not res!167737) (not e!194154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15890 (_ BitVec 32)) Bool)

(assert (=> b!311130 (= res!167737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311131 () Bool)

(assert (=> b!311131 (= e!194152 e!194155)))

(declare-fun res!167744 () Bool)

(assert (=> b!311131 (=> (not res!167744) (not e!194155))))

(assert (=> b!311131 (= res!167744 (and (= lt!152270 lt!152272) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7525 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311131 (= lt!152270 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!311132 () Bool)

(declare-fun res!167745 () Bool)

(assert (=> b!311132 (=> (not res!167745) (not e!194152))))

(assert (=> b!311132 (= res!167745 (and (= (select (arr!7525 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7877 a!3293))))))

(declare-fun b!311133 () Bool)

(declare-fun res!167736 () Bool)

(assert (=> b!311133 (=> (not res!167736) (not e!194154))))

(assert (=> b!311133 (= res!167736 (and (= (size!7877 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7877 a!3293))))))

(assert (= (and start!30990 res!167742) b!311133))

(assert (= (and b!311133 res!167736) b!311126))

(assert (= (and b!311126 res!167743) b!311127))

(assert (= (and b!311127 res!167739) b!311124))

(assert (= (and b!311124 res!167738) b!311130))

(assert (= (and b!311130 res!167737) b!311128))

(assert (= (and b!311128 res!167740) b!311132))

(assert (= (and b!311132 res!167745) b!311131))

(assert (= (and b!311131 res!167744) b!311125))

(assert (= (and b!311125 res!167741) b!311129))

(declare-fun m!321133 () Bool)

(assert (=> b!311132 m!321133))

(declare-fun m!321135 () Bool)

(assert (=> b!311125 m!321135))

(declare-fun m!321137 () Bool)

(assert (=> b!311125 m!321137))

(declare-fun m!321139 () Bool)

(assert (=> b!311129 m!321139))

(declare-fun m!321141 () Bool)

(assert (=> b!311129 m!321141))

(declare-fun m!321143 () Bool)

(assert (=> b!311129 m!321143))

(declare-fun m!321145 () Bool)

(assert (=> b!311127 m!321145))

(declare-fun m!321147 () Bool)

(assert (=> start!30990 m!321147))

(declare-fun m!321149 () Bool)

(assert (=> start!30990 m!321149))

(declare-fun m!321151 () Bool)

(assert (=> b!311130 m!321151))

(declare-fun m!321153 () Bool)

(assert (=> b!311128 m!321153))

(assert (=> b!311128 m!321153))

(declare-fun m!321155 () Bool)

(assert (=> b!311128 m!321155))

(declare-fun m!321157 () Bool)

(assert (=> b!311126 m!321157))

(declare-fun m!321159 () Bool)

(assert (=> b!311131 m!321159))

(declare-fun m!321161 () Bool)

(assert (=> b!311131 m!321161))

(declare-fun m!321163 () Bool)

(assert (=> b!311124 m!321163))

(push 1)

