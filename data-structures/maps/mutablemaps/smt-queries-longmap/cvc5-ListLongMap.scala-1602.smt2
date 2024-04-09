; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30288 () Bool)

(assert start!30288)

(declare-fun b!302923 () Bool)

(declare-fun res!160568 () Bool)

(declare-fun e!190755 () Bool)

(assert (=> b!302923 (=> (not res!160568) (not e!190755))))

(declare-datatypes ((array!15392 0))(
  ( (array!15393 (arr!7282 (Array (_ BitVec 32) (_ BitVec 64))) (size!7634 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15392)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2433 0))(
  ( (MissingZero!2433 (index!11908 (_ BitVec 32))) (Found!2433 (index!11909 (_ BitVec 32))) (Intermediate!2433 (undefined!3245 Bool) (index!11910 (_ BitVec 32)) (x!30141 (_ BitVec 32))) (Undefined!2433) (MissingVacant!2433 (index!11911 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15392 (_ BitVec 32)) SeekEntryResult!2433)

(assert (=> b!302923 (= res!160568 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2433 i!1240)))))

(declare-fun b!302924 () Bool)

(declare-fun e!190756 () Bool)

(assert (=> b!302924 (= e!190755 e!190756)))

(declare-fun res!160574 () Bool)

(assert (=> b!302924 (=> (not res!160574) (not e!190756))))

(declare-fun lt!150131 () SeekEntryResult!2433)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15392 (_ BitVec 32)) SeekEntryResult!2433)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302924 (= res!160574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150131))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!302924 (= lt!150131 (Intermediate!2433 false resIndex!52 resX!52))))

(declare-fun b!302925 () Bool)

(declare-fun res!160573 () Bool)

(assert (=> b!302925 (=> (not res!160573) (not e!190756))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!302925 (= res!160573 (and (= (select (arr!7282 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7634 a!3293))))))

(declare-fun res!160575 () Bool)

(assert (=> start!30288 (=> (not res!160575) (not e!190755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30288 (= res!160575 (validMask!0 mask!3709))))

(assert (=> start!30288 e!190755))

(declare-fun array_inv!5236 (array!15392) Bool)

(assert (=> start!30288 (array_inv!5236 a!3293)))

(assert (=> start!30288 true))

(declare-fun b!302926 () Bool)

(declare-fun res!160570 () Bool)

(assert (=> b!302926 (=> (not res!160570) (not e!190755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15392 (_ BitVec 32)) Bool)

(assert (=> b!302926 (= res!160570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!302927 () Bool)

(declare-fun res!160567 () Bool)

(assert (=> b!302927 (=> (not res!160567) (not e!190755))))

(declare-fun arrayContainsKey!0 (array!15392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302927 (= res!160567 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302928 () Bool)

(declare-fun res!160571 () Bool)

(assert (=> b!302928 (=> (not res!160571) (not e!190755))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302928 (= res!160571 (validKeyInArray!0 k!2441))))

(declare-fun b!302929 () Bool)

(declare-fun res!160569 () Bool)

(assert (=> b!302929 (=> (not res!160569) (not e!190756))))

(assert (=> b!302929 (= res!160569 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150131))))

(declare-fun b!302930 () Bool)

(assert (=> b!302930 (= e!190756 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7282 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7282 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7282 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun b!302931 () Bool)

(declare-fun res!160572 () Bool)

(assert (=> b!302931 (=> (not res!160572) (not e!190755))))

(assert (=> b!302931 (= res!160572 (and (= (size!7634 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7634 a!3293))))))

(assert (= (and start!30288 res!160575) b!302931))

(assert (= (and b!302931 res!160572) b!302928))

(assert (= (and b!302928 res!160571) b!302927))

(assert (= (and b!302927 res!160567) b!302923))

(assert (= (and b!302923 res!160568) b!302926))

(assert (= (and b!302926 res!160570) b!302924))

(assert (= (and b!302924 res!160574) b!302925))

(assert (= (and b!302925 res!160573) b!302929))

(assert (= (and b!302929 res!160569) b!302930))

(declare-fun m!314371 () Bool)

(assert (=> b!302925 m!314371))

(declare-fun m!314373 () Bool)

(assert (=> b!302929 m!314373))

(declare-fun m!314375 () Bool)

(assert (=> b!302924 m!314375))

(assert (=> b!302924 m!314375))

(declare-fun m!314377 () Bool)

(assert (=> b!302924 m!314377))

(declare-fun m!314379 () Bool)

(assert (=> b!302928 m!314379))

(declare-fun m!314381 () Bool)

(assert (=> b!302927 m!314381))

(declare-fun m!314383 () Bool)

(assert (=> b!302930 m!314383))

(declare-fun m!314385 () Bool)

(assert (=> start!30288 m!314385))

(declare-fun m!314387 () Bool)

(assert (=> start!30288 m!314387))

(declare-fun m!314389 () Bool)

(assert (=> b!302926 m!314389))

(declare-fun m!314391 () Bool)

(assert (=> b!302923 m!314391))

(push 1)

(assert (not start!30288))

(assert (not b!302923))

(assert (not b!302927))

(assert (not b!302924))

(assert (not b!302928))

(assert (not b!302929))

(assert (not b!302926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

