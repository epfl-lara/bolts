; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30640 () Bool)

(assert start!30640)

(declare-fun b!307226 () Bool)

(declare-fun res!164140 () Bool)

(declare-fun e!192393 () Bool)

(assert (=> b!307226 (=> (not res!164140) (not e!192393))))

(declare-datatypes ((array!15642 0))(
  ( (array!15643 (arr!7404 (Array (_ BitVec 32) (_ BitVec 64))) (size!7756 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15642)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2555 0))(
  ( (MissingZero!2555 (index!12396 (_ BitVec 32))) (Found!2555 (index!12397 (_ BitVec 32))) (Intermediate!2555 (undefined!3367 Bool) (index!12398 (_ BitVec 32)) (x!30601 (_ BitVec 32))) (Undefined!2555) (MissingVacant!2555 (index!12399 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15642 (_ BitVec 32)) SeekEntryResult!2555)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!307226 (= res!164140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2555 false resIndex!52 resX!52)))))

(declare-fun b!307227 () Bool)

(assert (=> b!307227 (= e!192393 false)))

(declare-fun lt!151091 () SeekEntryResult!2555)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!307227 (= lt!151091 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!307228 () Bool)

(declare-fun res!164143 () Bool)

(assert (=> b!307228 (=> (not res!164143) (not e!192393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15642 (_ BitVec 32)) Bool)

(assert (=> b!307228 (= res!164143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!307229 () Bool)

(declare-fun res!164144 () Bool)

(assert (=> b!307229 (=> (not res!164144) (not e!192393))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!307229 (= res!164144 (and (= (select (arr!7404 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7756 a!3293))))))

(declare-fun b!307230 () Bool)

(declare-fun res!164141 () Bool)

(assert (=> b!307230 (=> (not res!164141) (not e!192393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!307230 (= res!164141 (validKeyInArray!0 k!2441))))

(declare-fun b!307231 () Bool)

(declare-fun res!164145 () Bool)

(assert (=> b!307231 (=> (not res!164145) (not e!192393))))

(declare-fun arrayContainsKey!0 (array!15642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!307231 (= res!164145 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!307232 () Bool)

(declare-fun res!164138 () Bool)

(assert (=> b!307232 (=> (not res!164138) (not e!192393))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15642 (_ BitVec 32)) SeekEntryResult!2555)

(assert (=> b!307232 (= res!164138 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2555 i!1240)))))

(declare-fun res!164142 () Bool)

(assert (=> start!30640 (=> (not res!164142) (not e!192393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30640 (= res!164142 (validMask!0 mask!3709))))

(assert (=> start!30640 e!192393))

(declare-fun array_inv!5358 (array!15642) Bool)

(assert (=> start!30640 (array_inv!5358 a!3293)))

(assert (=> start!30640 true))

(declare-fun b!307233 () Bool)

(declare-fun res!164139 () Bool)

(assert (=> b!307233 (=> (not res!164139) (not e!192393))))

(assert (=> b!307233 (= res!164139 (and (= (size!7756 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7756 a!3293))))))

(assert (= (and start!30640 res!164142) b!307233))

(assert (= (and b!307233 res!164139) b!307230))

(assert (= (and b!307230 res!164141) b!307231))

(assert (= (and b!307231 res!164145) b!307232))

(assert (= (and b!307232 res!164138) b!307228))

(assert (= (and b!307228 res!164143) b!307226))

(assert (= (and b!307226 res!164140) b!307229))

(assert (= (and b!307229 res!164144) b!307227))

(declare-fun m!317579 () Bool)

(assert (=> b!307230 m!317579))

(declare-fun m!317581 () Bool)

(assert (=> b!307227 m!317581))

(declare-fun m!317583 () Bool)

(assert (=> b!307228 m!317583))

(declare-fun m!317585 () Bool)

(assert (=> b!307229 m!317585))

(declare-fun m!317587 () Bool)

(assert (=> start!30640 m!317587))

(declare-fun m!317589 () Bool)

(assert (=> start!30640 m!317589))

(declare-fun m!317591 () Bool)

(assert (=> b!307226 m!317591))

(assert (=> b!307226 m!317591))

(declare-fun m!317593 () Bool)

(assert (=> b!307226 m!317593))

(declare-fun m!317595 () Bool)

(assert (=> b!307232 m!317595))

(declare-fun m!317597 () Bool)

(assert (=> b!307231 m!317597))

(push 1)

(assert (not b!307230))

(assert (not b!307232))

(assert (not b!307226))

(assert (not b!307227))

(assert (not b!307228))

(assert (not b!307231))

(assert (not start!30640))

(check-sat)

