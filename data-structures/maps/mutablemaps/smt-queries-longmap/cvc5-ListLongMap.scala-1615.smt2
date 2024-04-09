; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30420 () Bool)

(assert start!30420)

(declare-fun b!304228 () Bool)

(declare-fun res!161735 () Bool)

(declare-fun e!191221 () Bool)

(assert (=> b!304228 (=> (not res!161735) (not e!191221))))

(declare-datatypes ((array!15473 0))(
  ( (array!15474 (arr!7321 (Array (_ BitVec 32) (_ BitVec 64))) (size!7673 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15473)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!304228 (= res!161735 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!304229 () Bool)

(declare-fun e!191224 () Bool)

(assert (=> b!304229 (= e!191221 e!191224)))

(declare-fun res!161736 () Bool)

(assert (=> b!304229 (=> (not res!161736) (not e!191224))))

(declare-datatypes ((SeekEntryResult!2472 0))(
  ( (MissingZero!2472 (index!12064 (_ BitVec 32))) (Found!2472 (index!12065 (_ BitVec 32))) (Intermediate!2472 (undefined!3284 Bool) (index!12066 (_ BitVec 32)) (x!30293 (_ BitVec 32))) (Undefined!2472) (MissingVacant!2472 (index!12067 (_ BitVec 32))) )
))
(declare-fun lt!150410 () SeekEntryResult!2472)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15473 (_ BitVec 32)) SeekEntryResult!2472)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304229 (= res!161736 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!150410))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!304229 (= lt!150410 (Intermediate!2472 false resIndex!52 resX!52))))

(declare-fun b!304230 () Bool)

(declare-fun res!161733 () Bool)

(assert (=> b!304230 (=> (not res!161733) (not e!191221))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15473 (_ BitVec 32)) SeekEntryResult!2472)

(assert (=> b!304230 (= res!161733 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2472 i!1240)))))

(declare-fun b!304231 () Bool)

(declare-fun e!191223 () Bool)

(assert (=> b!304231 (= e!191223 (not true))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun lt!150409 () SeekEntryResult!2472)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!304231 (= lt!150409 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!304232 () Bool)

(declare-fun res!161738 () Bool)

(assert (=> b!304232 (=> (not res!161738) (not e!191224))))

(assert (=> b!304232 (= res!161738 (and (= (select (arr!7321 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7673 a!3293))))))

(declare-fun b!304233 () Bool)

(declare-fun res!161734 () Bool)

(assert (=> b!304233 (=> (not res!161734) (not e!191221))))

(assert (=> b!304233 (= res!161734 (and (= (size!7673 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7673 a!3293))))))

(declare-fun b!304234 () Bool)

(assert (=> b!304234 (= e!191224 e!191223)))

(declare-fun res!161739 () Bool)

(assert (=> b!304234 (=> (not res!161739) (not e!191223))))

(assert (=> b!304234 (= res!161739 (and (= lt!150409 lt!150410) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7321 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7321 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7321 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!304234 (= lt!150409 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!161732 () Bool)

(assert (=> start!30420 (=> (not res!161732) (not e!191221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30420 (= res!161732 (validMask!0 mask!3709))))

(assert (=> start!30420 e!191221))

(declare-fun array_inv!5275 (array!15473) Bool)

(assert (=> start!30420 (array_inv!5275 a!3293)))

(assert (=> start!30420 true))

(declare-fun b!304235 () Bool)

(declare-fun res!161737 () Bool)

(assert (=> b!304235 (=> (not res!161737) (not e!191221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!304235 (= res!161737 (validKeyInArray!0 k!2441))))

(declare-fun b!304236 () Bool)

(declare-fun res!161731 () Bool)

(assert (=> b!304236 (=> (not res!161731) (not e!191221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15473 (_ BitVec 32)) Bool)

(assert (=> b!304236 (= res!161731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30420 res!161732) b!304233))

(assert (= (and b!304233 res!161734) b!304235))

(assert (= (and b!304235 res!161737) b!304228))

(assert (= (and b!304228 res!161735) b!304230))

(assert (= (and b!304230 res!161733) b!304236))

(assert (= (and b!304236 res!161731) b!304229))

(assert (= (and b!304229 res!161736) b!304232))

(assert (= (and b!304232 res!161738) b!304234))

(assert (= (and b!304234 res!161739) b!304231))

(declare-fun m!315367 () Bool)

(assert (=> b!304234 m!315367))

(declare-fun m!315369 () Bool)

(assert (=> b!304234 m!315369))

(declare-fun m!315371 () Bool)

(assert (=> b!304230 m!315371))

(declare-fun m!315373 () Bool)

(assert (=> start!30420 m!315373))

(declare-fun m!315375 () Bool)

(assert (=> start!30420 m!315375))

(declare-fun m!315377 () Bool)

(assert (=> b!304235 m!315377))

(declare-fun m!315379 () Bool)

(assert (=> b!304231 m!315379))

(assert (=> b!304231 m!315379))

(declare-fun m!315381 () Bool)

(assert (=> b!304231 m!315381))

(declare-fun m!315383 () Bool)

(assert (=> b!304236 m!315383))

(declare-fun m!315385 () Bool)

(assert (=> b!304228 m!315385))

(declare-fun m!315387 () Bool)

(assert (=> b!304229 m!315387))

(assert (=> b!304229 m!315387))

(declare-fun m!315389 () Bool)

(assert (=> b!304229 m!315389))

(declare-fun m!315391 () Bool)

(assert (=> b!304232 m!315391))

(push 1)

