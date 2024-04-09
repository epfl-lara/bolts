; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30336 () Bool)

(assert start!30336)

(declare-fun b!303564 () Bool)

(declare-fun res!161216 () Bool)

(declare-fun e!190952 () Bool)

(assert (=> b!303564 (=> (not res!161216) (not e!190952))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303564 (= res!161216 (validKeyInArray!0 k!2441))))

(declare-fun b!303565 () Bool)

(declare-fun res!161212 () Bool)

(assert (=> b!303565 (=> (not res!161212) (not e!190952))))

(declare-datatypes ((array!15440 0))(
  ( (array!15441 (arr!7306 (Array (_ BitVec 32) (_ BitVec 64))) (size!7658 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15440)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!303565 (= res!161212 (and (= (size!7658 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7658 a!3293))))))

(declare-fun b!303566 () Bool)

(declare-fun res!161211 () Bool)

(declare-fun e!190953 () Bool)

(assert (=> b!303566 (=> (not res!161211) (not e!190953))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303566 (= res!161211 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7306 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7306 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7306 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!303567 () Bool)

(declare-fun res!161213 () Bool)

(assert (=> b!303567 (=> (not res!161213) (not e!190953))))

(declare-datatypes ((SeekEntryResult!2457 0))(
  ( (MissingZero!2457 (index!12004 (_ BitVec 32))) (Found!2457 (index!12005 (_ BitVec 32))) (Intermediate!2457 (undefined!3269 Bool) (index!12006 (_ BitVec 32)) (x!30229 (_ BitVec 32))) (Undefined!2457) (MissingVacant!2457 (index!12007 (_ BitVec 32))) )
))
(declare-fun lt!150214 () SeekEntryResult!2457)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15440 (_ BitVec 32)) SeekEntryResult!2457)

(assert (=> b!303567 (= res!161213 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!150214))))

(declare-fun b!303568 () Bool)

(assert (=> b!303568 (= e!190952 e!190953)))

(declare-fun res!161210 () Bool)

(assert (=> b!303568 (=> (not res!161210) (not e!190953))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303568 (= res!161210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150214))))

(assert (=> b!303568 (= lt!150214 (Intermediate!2457 false resIndex!52 resX!52))))

(declare-fun res!161208 () Bool)

(assert (=> start!30336 (=> (not res!161208) (not e!190952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30336 (= res!161208 (validMask!0 mask!3709))))

(assert (=> start!30336 e!190952))

(declare-fun array_inv!5260 (array!15440) Bool)

(assert (=> start!30336 (array_inv!5260 a!3293)))

(assert (=> start!30336 true))

(declare-fun b!303569 () Bool)

(declare-fun res!161214 () Bool)

(assert (=> b!303569 (=> (not res!161214) (not e!190953))))

(assert (=> b!303569 (= res!161214 (and (= (select (arr!7306 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7658 a!3293))))))

(declare-fun b!303570 () Bool)

(declare-fun res!161215 () Bool)

(assert (=> b!303570 (=> (not res!161215) (not e!190952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15440 (_ BitVec 32)) Bool)

(assert (=> b!303570 (= res!161215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303571 () Bool)

(declare-fun res!161217 () Bool)

(assert (=> b!303571 (=> (not res!161217) (not e!190952))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15440 (_ BitVec 32)) SeekEntryResult!2457)

(assert (=> b!303571 (= res!161217 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2457 i!1240)))))

(declare-fun b!303572 () Bool)

(assert (=> b!303572 (= e!190953 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!150215 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303572 (= lt!150215 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!303573 () Bool)

(declare-fun res!161209 () Bool)

(assert (=> b!303573 (=> (not res!161209) (not e!190952))))

(declare-fun arrayContainsKey!0 (array!15440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303573 (= res!161209 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30336 res!161208) b!303565))

(assert (= (and b!303565 res!161212) b!303564))

(assert (= (and b!303564 res!161216) b!303573))

(assert (= (and b!303573 res!161209) b!303571))

(assert (= (and b!303571 res!161217) b!303570))

(assert (= (and b!303570 res!161215) b!303568))

(assert (= (and b!303568 res!161210) b!303569))

(assert (= (and b!303569 res!161214) b!303567))

(assert (= (and b!303567 res!161213) b!303566))

(assert (= (and b!303566 res!161211) b!303572))

(declare-fun m!314893 () Bool)

(assert (=> b!303568 m!314893))

(assert (=> b!303568 m!314893))

(declare-fun m!314895 () Bool)

(assert (=> b!303568 m!314895))

(declare-fun m!314897 () Bool)

(assert (=> b!303567 m!314897))

(declare-fun m!314899 () Bool)

(assert (=> b!303569 m!314899))

(declare-fun m!314901 () Bool)

(assert (=> start!30336 m!314901))

(declare-fun m!314903 () Bool)

(assert (=> start!30336 m!314903))

(declare-fun m!314905 () Bool)

(assert (=> b!303564 m!314905))

(declare-fun m!314907 () Bool)

(assert (=> b!303566 m!314907))

(declare-fun m!314909 () Bool)

(assert (=> b!303572 m!314909))

(declare-fun m!314911 () Bool)

(assert (=> b!303571 m!314911))

(declare-fun m!314913 () Bool)

(assert (=> b!303570 m!314913))

(declare-fun m!314915 () Bool)

(assert (=> b!303573 m!314915))

(push 1)

(assert (not b!303568))

(assert (not b!303564))

(assert (not b!303572))

(assert (not b!303573))

(assert (not b!303567))

