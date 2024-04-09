; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30982 () Bool)

(assert start!30982)

(declare-fun b!311004 () Bool)

(declare-fun e!194093 () Bool)

(declare-fun e!194094 () Bool)

(assert (=> b!311004 (= e!194093 e!194094)))

(declare-fun res!167622 () Bool)

(assert (=> b!311004 (=> (not res!167622) (not e!194094))))

(declare-datatypes ((array!15882 0))(
  ( (array!15883 (arr!7521 (Array (_ BitVec 32) (_ BitVec 64))) (size!7873 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15882)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2672 0))(
  ( (MissingZero!2672 (index!12864 (_ BitVec 32))) (Found!2672 (index!12865 (_ BitVec 32))) (Intermediate!2672 (undefined!3484 Bool) (index!12866 (_ BitVec 32)) (x!31048 (_ BitVec 32))) (Undefined!2672) (MissingVacant!2672 (index!12867 (_ BitVec 32))) )
))
(declare-fun lt!152222 () SeekEntryResult!2672)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15882 (_ BitVec 32)) SeekEntryResult!2672)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311004 (= res!167622 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!152222))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!311004 (= lt!152222 (Intermediate!2672 false resIndex!52 resX!52))))

(declare-fun b!311005 () Bool)

(declare-fun res!167616 () Bool)

(assert (=> b!311005 (=> (not res!167616) (not e!194094))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!311005 (= res!167616 (and (= (select (arr!7521 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7873 a!3293))))))

(declare-fun b!311006 () Bool)

(declare-fun res!167625 () Bool)

(assert (=> b!311006 (=> (not res!167625) (not e!194093))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15882 (_ BitVec 32)) SeekEntryResult!2672)

(assert (=> b!311006 (= res!167625 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2672 i!1240)))))

(declare-fun b!311007 () Bool)

(declare-fun res!167617 () Bool)

(assert (=> b!311007 (=> (not res!167617) (not e!194093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311007 (= res!167617 (validKeyInArray!0 k!2441))))

(declare-fun b!311008 () Bool)

(declare-fun res!167624 () Bool)

(assert (=> b!311008 (=> (not res!167624) (not e!194093))))

(assert (=> b!311008 (= res!167624 (and (= (size!7873 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7873 a!3293))))))

(declare-fun res!167620 () Bool)

(assert (=> start!30982 (=> (not res!167620) (not e!194093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30982 (= res!167620 (validMask!0 mask!3709))))

(assert (=> start!30982 e!194093))

(declare-fun array_inv!5475 (array!15882) Bool)

(assert (=> start!30982 (array_inv!5475 a!3293)))

(assert (=> start!30982 true))

(declare-fun b!311009 () Bool)

(declare-fun res!167619 () Bool)

(assert (=> b!311009 (=> (not res!167619) (not e!194093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15882 (_ BitVec 32)) Bool)

(assert (=> b!311009 (= res!167619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!152223 () (_ BitVec 32))

(declare-fun b!311010 () Bool)

(declare-fun e!194092 () Bool)

(declare-fun lt!152225 () array!15882)

(assert (=> b!311010 (= e!194092 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!152225 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152223 k!2441 lt!152225 mask!3709)))))

(assert (=> b!311010 (= lt!152225 (array!15883 (store (arr!7521 a!3293) i!1240 k!2441) (size!7873 a!3293)))))

(declare-fun b!311011 () Bool)

(declare-fun e!194095 () Bool)

(assert (=> b!311011 (= e!194095 (not true))))

(assert (=> b!311011 e!194092))

(declare-fun res!167618 () Bool)

(assert (=> b!311011 (=> (not res!167618) (not e!194092))))

(declare-fun lt!152224 () SeekEntryResult!2672)

(assert (=> b!311011 (= res!167618 (= lt!152224 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152223 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311011 (= lt!152223 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311012 () Bool)

(declare-fun res!167621 () Bool)

(assert (=> b!311012 (=> (not res!167621) (not e!194093))))

(declare-fun arrayContainsKey!0 (array!15882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311012 (= res!167621 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311013 () Bool)

(assert (=> b!311013 (= e!194094 e!194095)))

(declare-fun res!167623 () Bool)

(assert (=> b!311013 (=> (not res!167623) (not e!194095))))

(assert (=> b!311013 (= res!167623 (and (= lt!152224 lt!152222) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7521 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311013 (= lt!152224 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(assert (= (and start!30982 res!167620) b!311008))

(assert (= (and b!311008 res!167624) b!311007))

(assert (= (and b!311007 res!167617) b!311012))

(assert (= (and b!311012 res!167621) b!311006))

(assert (= (and b!311006 res!167625) b!311009))

(assert (= (and b!311009 res!167619) b!311004))

(assert (= (and b!311004 res!167622) b!311005))

(assert (= (and b!311005 res!167616) b!311013))

(assert (= (and b!311013 res!167623) b!311011))

(assert (= (and b!311011 res!167618) b!311010))

(declare-fun m!321005 () Bool)

(assert (=> b!311013 m!321005))

(declare-fun m!321007 () Bool)

(assert (=> b!311013 m!321007))

(declare-fun m!321009 () Bool)

(assert (=> b!311005 m!321009))

(declare-fun m!321011 () Bool)

(assert (=> b!311011 m!321011))

(declare-fun m!321013 () Bool)

(assert (=> b!311011 m!321013))

(declare-fun m!321015 () Bool)

(assert (=> b!311009 m!321015))

(declare-fun m!321017 () Bool)

(assert (=> start!30982 m!321017))

(declare-fun m!321019 () Bool)

(assert (=> start!30982 m!321019))

(declare-fun m!321021 () Bool)

(assert (=> b!311006 m!321021))

(declare-fun m!321023 () Bool)

(assert (=> b!311010 m!321023))

(declare-fun m!321025 () Bool)

(assert (=> b!311010 m!321025))

(declare-fun m!321027 () Bool)

(assert (=> b!311010 m!321027))

(declare-fun m!321029 () Bool)

(assert (=> b!311012 m!321029))

(declare-fun m!321031 () Bool)

(assert (=> b!311004 m!321031))

(assert (=> b!311004 m!321031))

(declare-fun m!321033 () Bool)

(assert (=> b!311004 m!321033))

(declare-fun m!321035 () Bool)

(assert (=> b!311007 m!321035))

(push 1)

(assert (not start!30982))

(assert (not b!311013))

(assert (not b!311006))

(assert (not b!311004))

(assert (not b!311007))

(assert (not b!311012))

(assert (not b!311011))

(assert (not b!311009))

(assert (not b!311010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

