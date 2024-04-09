; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30310 () Bool)

(assert start!30310)

(declare-fun b!303203 () Bool)

(declare-fun res!160852 () Bool)

(declare-fun e!190836 () Bool)

(assert (=> b!303203 (=> (not res!160852) (not e!190836))))

(declare-datatypes ((array!15414 0))(
  ( (array!15415 (arr!7293 (Array (_ BitVec 32) (_ BitVec 64))) (size!7645 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15414)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!303203 (= res!160852 (and (= (select (arr!7293 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7645 a!3293))))))

(declare-fun b!303204 () Bool)

(declare-fun res!160849 () Bool)

(assert (=> b!303204 (=> (not res!160849) (not e!190836))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15414 (_ BitVec 32)) Bool)

(assert (=> b!303204 (= res!160849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!303205 () Bool)

(declare-fun res!160854 () Bool)

(assert (=> b!303205 (=> (not res!160854) (not e!190836))))

(assert (=> b!303205 (= res!160854 (and (= (size!7645 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7645 a!3293))))))

(declare-fun b!303206 () Bool)

(declare-fun res!160851 () Bool)

(assert (=> b!303206 (=> (not res!160851) (not e!190836))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2444 0))(
  ( (MissingZero!2444 (index!11952 (_ BitVec 32))) (Found!2444 (index!11953 (_ BitVec 32))) (Intermediate!2444 (undefined!3256 Bool) (index!11954 (_ BitVec 32)) (x!30176 (_ BitVec 32))) (Undefined!2444) (MissingVacant!2444 (index!11955 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15414 (_ BitVec 32)) SeekEntryResult!2444)

(assert (=> b!303206 (= res!160851 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2444 i!1240)))))

(declare-fun b!303207 () Bool)

(declare-fun res!160853 () Bool)

(assert (=> b!303207 (=> (not res!160853) (not e!190836))))

(declare-fun arrayContainsKey!0 (array!15414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!303207 (= res!160853 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!160848 () Bool)

(assert (=> start!30310 (=> (not res!160848) (not e!190836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30310 (= res!160848 (validMask!0 mask!3709))))

(assert (=> start!30310 e!190836))

(declare-fun array_inv!5247 (array!15414) Bool)

(assert (=> start!30310 (array_inv!5247 a!3293)))

(assert (=> start!30310 true))

(declare-fun b!303208 () Bool)

(assert (=> b!303208 (= e!190836 false)))

(declare-fun lt!150164 () SeekEntryResult!2444)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15414 (_ BitVec 32)) SeekEntryResult!2444)

(assert (=> b!303208 (= lt!150164 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!303209 () Bool)

(declare-fun res!160847 () Bool)

(assert (=> b!303209 (=> (not res!160847) (not e!190836))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!303209 (= res!160847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2444 false resIndex!52 resX!52)))))

(declare-fun b!303210 () Bool)

(declare-fun res!160850 () Bool)

(assert (=> b!303210 (=> (not res!160850) (not e!190836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!303210 (= res!160850 (validKeyInArray!0 k!2441))))

(assert (= (and start!30310 res!160848) b!303205))

(assert (= (and b!303205 res!160854) b!303210))

(assert (= (and b!303210 res!160850) b!303207))

(assert (= (and b!303207 res!160853) b!303206))

(assert (= (and b!303206 res!160851) b!303204))

(assert (= (and b!303204 res!160849) b!303209))

(assert (= (and b!303209 res!160847) b!303203))

(assert (= (and b!303203 res!160852) b!303208))

(declare-fun m!314603 () Bool)

(assert (=> b!303204 m!314603))

(declare-fun m!314605 () Bool)

(assert (=> b!303209 m!314605))

(assert (=> b!303209 m!314605))

(declare-fun m!314607 () Bool)

(assert (=> b!303209 m!314607))

(declare-fun m!314609 () Bool)

(assert (=> b!303203 m!314609))

(declare-fun m!314611 () Bool)

(assert (=> b!303206 m!314611))

(declare-fun m!314613 () Bool)

(assert (=> start!30310 m!314613))

(declare-fun m!314615 () Bool)

(assert (=> start!30310 m!314615))

(declare-fun m!314617 () Bool)

(assert (=> b!303208 m!314617))

(declare-fun m!314619 () Bool)

(assert (=> b!303207 m!314619))

(declare-fun m!314621 () Bool)

(assert (=> b!303210 m!314621))

(push 1)

(assert (not start!30310))

(assert (not b!303209))

(assert (not b!303204))

(assert (not b!303210))

(assert (not b!303207))

(assert (not b!303206))

(assert (not b!303208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

