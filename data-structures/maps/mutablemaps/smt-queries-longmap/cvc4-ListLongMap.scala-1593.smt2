; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30238 () Bool)

(assert start!30238)

(declare-fun b!302285 () Bool)

(declare-fun res!159933 () Bool)

(declare-fun e!190567 () Bool)

(assert (=> b!302285 (=> (not res!159933) (not e!190567))))

(declare-datatypes ((array!15342 0))(
  ( (array!15343 (arr!7257 (Array (_ BitVec 32) (_ BitVec 64))) (size!7609 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15342)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302285 (= res!159933 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302286 () Bool)

(declare-fun res!159934 () Bool)

(assert (=> b!302286 (=> (not res!159934) (not e!190567))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15342 (_ BitVec 32)) Bool)

(assert (=> b!302286 (= res!159934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302287 () Bool)

(declare-fun res!159931 () Bool)

(assert (=> b!302287 (=> (not res!159931) (not e!190567))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302287 (= res!159931 (and (= (select (arr!7257 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7609 a!3293))))))

(declare-fun b!302288 () Bool)

(declare-fun res!159930 () Bool)

(assert (=> b!302288 (=> (not res!159930) (not e!190567))))

(assert (=> b!302288 (= res!159930 (and (= (size!7609 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7609 a!3293))))))

(declare-fun b!302289 () Bool)

(assert (=> b!302289 (= e!190567 false)))

(declare-datatypes ((SeekEntryResult!2408 0))(
  ( (MissingZero!2408 (index!11808 (_ BitVec 32))) (Found!2408 (index!11809 (_ BitVec 32))) (Intermediate!2408 (undefined!3220 Bool) (index!11810 (_ BitVec 32)) (x!30044 (_ BitVec 32))) (Undefined!2408) (MissingVacant!2408 (index!11811 (_ BitVec 32))) )
))
(declare-fun lt!150056 () SeekEntryResult!2408)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15342 (_ BitVec 32)) SeekEntryResult!2408)

(assert (=> b!302289 (= lt!150056 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!302290 () Bool)

(declare-fun res!159932 () Bool)

(assert (=> b!302290 (=> (not res!159932) (not e!190567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302290 (= res!159932 (validKeyInArray!0 k!2441))))

(declare-fun res!159935 () Bool)

(assert (=> start!30238 (=> (not res!159935) (not e!190567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30238 (= res!159935 (validMask!0 mask!3709))))

(assert (=> start!30238 e!190567))

(declare-fun array_inv!5211 (array!15342) Bool)

(assert (=> start!30238 (array_inv!5211 a!3293)))

(assert (=> start!30238 true))

(declare-fun b!302291 () Bool)

(declare-fun res!159929 () Bool)

(assert (=> b!302291 (=> (not res!159929) (not e!190567))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302291 (= res!159929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2408 false resIndex!52 resX!52)))))

(declare-fun b!302292 () Bool)

(declare-fun res!159936 () Bool)

(assert (=> b!302292 (=> (not res!159936) (not e!190567))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15342 (_ BitVec 32)) SeekEntryResult!2408)

(assert (=> b!302292 (= res!159936 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2408 i!1240)))))

(assert (= (and start!30238 res!159935) b!302288))

(assert (= (and b!302288 res!159930) b!302290))

(assert (= (and b!302290 res!159932) b!302285))

(assert (= (and b!302285 res!159933) b!302292))

(assert (= (and b!302292 res!159936) b!302286))

(assert (= (and b!302286 res!159934) b!302291))

(assert (= (and b!302291 res!159929) b!302287))

(assert (= (and b!302287 res!159931) b!302289))

(declare-fun m!313847 () Bool)

(assert (=> b!302289 m!313847))

(declare-fun m!313849 () Bool)

(assert (=> b!302290 m!313849))

(declare-fun m!313851 () Bool)

(assert (=> b!302291 m!313851))

(assert (=> b!302291 m!313851))

(declare-fun m!313853 () Bool)

(assert (=> b!302291 m!313853))

(declare-fun m!313855 () Bool)

(assert (=> b!302286 m!313855))

(declare-fun m!313857 () Bool)

(assert (=> b!302285 m!313857))

(declare-fun m!313859 () Bool)

(assert (=> b!302287 m!313859))

(declare-fun m!313861 () Bool)

(assert (=> start!30238 m!313861))

(declare-fun m!313863 () Bool)

(assert (=> start!30238 m!313863))

(declare-fun m!313865 () Bool)

(assert (=> b!302292 m!313865))

(push 1)

(assert (not b!302286))

(assert (not b!302285))

(assert (not b!302290))

(assert (not b!302291))

(assert (not b!302292))

(assert (not start!30238))

(assert (not b!302289))

(check-sat)

