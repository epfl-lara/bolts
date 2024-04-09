; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32284 () Bool)

(assert start!32284)

(declare-fun b!321381 () Bool)

(declare-fun res!175664 () Bool)

(declare-fun e!199109 () Bool)

(assert (=> b!321381 (=> (not res!175664) (not e!199109))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321381 (= res!175664 (validKeyInArray!0 k!2497))))

(declare-fun b!321382 () Bool)

(declare-fun res!175663 () Bool)

(declare-fun e!199111 () Bool)

(assert (=> b!321382 (=> (not res!175663) (not e!199111))))

(declare-datatypes ((array!16470 0))(
  ( (array!16471 (arr!7791 (Array (_ BitVec 32) (_ BitVec 64))) (size!8143 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16470)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2933 0))(
  ( (MissingZero!2933 (index!13908 (_ BitVec 32))) (Found!2933 (index!13909 (_ BitVec 32))) (Intermediate!2933 (undefined!3745 Bool) (index!13910 (_ BitVec 32)) (x!32131 (_ BitVec 32))) (Undefined!2933) (MissingVacant!2933 (index!13911 (_ BitVec 32))) )
))
(declare-fun lt!156179 () SeekEntryResult!2933)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16470 (_ BitVec 32)) SeekEntryResult!2933)

(assert (=> b!321382 (= res!175663 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156179))))

(declare-fun b!321383 () Bool)

(declare-fun res!175662 () Bool)

(assert (=> b!321383 (=> (not res!175662) (not e!199109))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321383 (= res!175662 (and (= (size!8143 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8143 a!3305))))))

(declare-fun b!321384 () Bool)

(declare-fun res!175668 () Bool)

(assert (=> b!321384 (=> (not res!175668) (not e!199111))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!321384 (= res!175668 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7791 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7791 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7791 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321385 () Bool)

(assert (=> b!321385 (= e!199111 false)))

(declare-fun lt!156178 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321385 (= lt!156178 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!321386 () Bool)

(declare-fun res!175667 () Bool)

(assert (=> b!321386 (=> (not res!175667) (not e!199109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16470 (_ BitVec 32)) Bool)

(assert (=> b!321386 (= res!175667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!175666 () Bool)

(assert (=> start!32284 (=> (not res!175666) (not e!199109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32284 (= res!175666 (validMask!0 mask!3777))))

(assert (=> start!32284 e!199109))

(declare-fun array_inv!5745 (array!16470) Bool)

(assert (=> start!32284 (array_inv!5745 a!3305)))

(assert (=> start!32284 true))

(declare-fun b!321387 () Bool)

(declare-fun res!175665 () Bool)

(assert (=> b!321387 (=> (not res!175665) (not e!199109))))

(declare-fun arrayContainsKey!0 (array!16470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321387 (= res!175665 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321388 () Bool)

(declare-fun res!175659 () Bool)

(assert (=> b!321388 (=> (not res!175659) (not e!199111))))

(assert (=> b!321388 (= res!175659 (and (= (select (arr!7791 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8143 a!3305))))))

(declare-fun b!321389 () Bool)

(declare-fun res!175661 () Bool)

(assert (=> b!321389 (=> (not res!175661) (not e!199109))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16470 (_ BitVec 32)) SeekEntryResult!2933)

(assert (=> b!321389 (= res!175661 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2933 i!1250)))))

(declare-fun b!321390 () Bool)

(assert (=> b!321390 (= e!199109 e!199111)))

(declare-fun res!175660 () Bool)

(assert (=> b!321390 (=> (not res!175660) (not e!199111))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321390 (= res!175660 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156179))))

(assert (=> b!321390 (= lt!156179 (Intermediate!2933 false resIndex!58 resX!58))))

(assert (= (and start!32284 res!175666) b!321383))

(assert (= (and b!321383 res!175662) b!321381))

(assert (= (and b!321381 res!175664) b!321387))

(assert (= (and b!321387 res!175665) b!321389))

(assert (= (and b!321389 res!175661) b!321386))

(assert (= (and b!321386 res!175667) b!321390))

(assert (= (and b!321390 res!175660) b!321388))

(assert (= (and b!321388 res!175659) b!321382))

(assert (= (and b!321382 res!175663) b!321384))

(assert (= (and b!321384 res!175668) b!321385))

(declare-fun m!329539 () Bool)

(assert (=> b!321386 m!329539))

(declare-fun m!329541 () Bool)

(assert (=> start!32284 m!329541))

(declare-fun m!329543 () Bool)

(assert (=> start!32284 m!329543))

(declare-fun m!329545 () Bool)

(assert (=> b!321384 m!329545))

(declare-fun m!329547 () Bool)

(assert (=> b!321381 m!329547))

(declare-fun m!329549 () Bool)

(assert (=> b!321388 m!329549))

(declare-fun m!329551 () Bool)

(assert (=> b!321382 m!329551))

(declare-fun m!329553 () Bool)

(assert (=> b!321385 m!329553))

(declare-fun m!329555 () Bool)

(assert (=> b!321387 m!329555))

(declare-fun m!329557 () Bool)

(assert (=> b!321389 m!329557))

(declare-fun m!329559 () Bool)

(assert (=> b!321390 m!329559))

(assert (=> b!321390 m!329559))

(declare-fun m!329561 () Bool)

(assert (=> b!321390 m!329561))

(push 1)

(assert (not b!321390))

(assert (not b!321389))

(assert (not b!321387))

