; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32154 () Bool)

(assert start!32154)

(declare-fun b!320172 () Bool)

(declare-fun res!174576 () Bool)

(declare-fun e!198685 () Bool)

(assert (=> b!320172 (=> (not res!174576) (not e!198685))))

(declare-datatypes ((array!16385 0))(
  ( (array!16386 (arr!7750 (Array (_ BitVec 32) (_ BitVec 64))) (size!8102 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16385)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16385 (_ BitVec 32)) Bool)

(assert (=> b!320172 (= res!174576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174574 () Bool)

(assert (=> start!32154 (=> (not res!174574) (not e!198685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32154 (= res!174574 (validMask!0 mask!3777))))

(assert (=> start!32154 e!198685))

(declare-fun array_inv!5704 (array!16385) Bool)

(assert (=> start!32154 (array_inv!5704 a!3305)))

(assert (=> start!32154 true))

(declare-fun b!320173 () Bool)

(declare-fun res!174578 () Bool)

(assert (=> b!320173 (=> (not res!174578) (not e!198685))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2892 0))(
  ( (MissingZero!2892 (index!13744 (_ BitVec 32))) (Found!2892 (index!13745 (_ BitVec 32))) (Intermediate!2892 (undefined!3704 Bool) (index!13746 (_ BitVec 32)) (x!31980 (_ BitVec 32))) (Undefined!2892) (MissingVacant!2892 (index!13747 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16385 (_ BitVec 32)) SeekEntryResult!2892)

(assert (=> b!320173 (= res!174578 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2892 i!1250)))))

(declare-fun b!320174 () Bool)

(declare-fun res!174577 () Bool)

(assert (=> b!320174 (=> (not res!174577) (not e!198685))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16385 (_ BitVec 32)) SeekEntryResult!2892)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320174 (= res!174577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2892 false resIndex!58 resX!58)))))

(declare-fun b!320175 () Bool)

(declare-fun res!174579 () Bool)

(assert (=> b!320175 (=> (not res!174579) (not e!198685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320175 (= res!174579 (validKeyInArray!0 k!2497))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320176 () Bool)

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320176 (= e!198685 (and (= (select (arr!7750 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8102 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!320177 () Bool)

(declare-fun res!174575 () Bool)

(assert (=> b!320177 (=> (not res!174575) (not e!198685))))

(declare-fun arrayContainsKey!0 (array!16385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320177 (= res!174575 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320178 () Bool)

(declare-fun res!174573 () Bool)

(assert (=> b!320178 (=> (not res!174573) (not e!198685))))

(assert (=> b!320178 (= res!174573 (and (= (size!8102 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8102 a!3305))))))

(assert (= (and start!32154 res!174574) b!320178))

(assert (= (and b!320178 res!174573) b!320175))

(assert (= (and b!320175 res!174579) b!320177))

(assert (= (and b!320177 res!174575) b!320173))

(assert (= (and b!320173 res!174578) b!320172))

(assert (= (and b!320172 res!174576) b!320174))

(assert (= (and b!320174 res!174577) b!320176))

(declare-fun m!328603 () Bool)

(assert (=> b!320174 m!328603))

(assert (=> b!320174 m!328603))

(declare-fun m!328605 () Bool)

(assert (=> b!320174 m!328605))

(declare-fun m!328607 () Bool)

(assert (=> start!32154 m!328607))

(declare-fun m!328609 () Bool)

(assert (=> start!32154 m!328609))

(declare-fun m!328611 () Bool)

(assert (=> b!320175 m!328611))

(declare-fun m!328613 () Bool)

(assert (=> b!320177 m!328613))

(declare-fun m!328615 () Bool)

(assert (=> b!320172 m!328615))

(declare-fun m!328617 () Bool)

(assert (=> b!320173 m!328617))

(declare-fun m!328619 () Bool)

(assert (=> b!320176 m!328619))

(push 1)

(assert (not b!320175))

(assert (not start!32154))

(assert (not b!320174))

(assert (not b!320177))

(assert (not b!320173))

(assert (not b!320172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

