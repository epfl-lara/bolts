; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32496 () Bool)

(assert start!32496)

(declare-fun b!324570 () Bool)

(declare-fun res!178065 () Bool)

(declare-fun e!200269 () Bool)

(assert (=> b!324570 (=> (not res!178065) (not e!200269))))

(declare-datatypes ((array!16631 0))(
  ( (array!16632 (arr!7870 (Array (_ BitVec 32) (_ BitVec 64))) (size!8222 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16631)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324570 (= res!178065 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324571 () Bool)

(declare-fun res!178064 () Bool)

(assert (=> b!324571 (=> (not res!178064) (not e!200269))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16631 (_ BitVec 32)) Bool)

(assert (=> b!324571 (= res!178064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324572 () Bool)

(declare-fun res!178068 () Bool)

(declare-fun e!200267 () Bool)

(assert (=> b!324572 (=> (not res!178068) (not e!200267))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3012 0))(
  ( (MissingZero!3012 (index!14224 (_ BitVec 32))) (Found!3012 (index!14225 (_ BitVec 32))) (Intermediate!3012 (undefined!3824 Bool) (index!14226 (_ BitVec 32)) (x!32435 (_ BitVec 32))) (Undefined!3012) (MissingVacant!3012 (index!14227 (_ BitVec 32))) )
))
(declare-fun lt!156829 () SeekEntryResult!3012)

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16631 (_ BitVec 32)) SeekEntryResult!3012)

(assert (=> b!324572 (= res!178068 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156829))))

(declare-fun b!324573 () Bool)

(assert (=> b!324573 (= e!200269 e!200267)))

(declare-fun res!178061 () Bool)

(assert (=> b!324573 (=> (not res!178061) (not e!200267))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324573 (= res!178061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156829))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324573 (= lt!156829 (Intermediate!3012 false resIndex!58 resX!58))))

(declare-fun b!324574 () Bool)

(declare-fun res!178059 () Bool)

(assert (=> b!324574 (=> (not res!178059) (not e!200269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324574 (= res!178059 (validKeyInArray!0 k!2497))))

(declare-fun b!324575 () Bool)

(declare-fun res!178063 () Bool)

(assert (=> b!324575 (=> (not res!178063) (not e!200269))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16631 (_ BitVec 32)) SeekEntryResult!3012)

(assert (=> b!324575 (= res!178063 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3012 i!1250)))))

(declare-fun b!324576 () Bool)

(declare-fun res!178060 () Bool)

(assert (=> b!324576 (=> (not res!178060) (not e!200267))))

(assert (=> b!324576 (= res!178060 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7870 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun res!178062 () Bool)

(assert (=> start!32496 (=> (not res!178062) (not e!200269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32496 (= res!178062 (validMask!0 mask!3777))))

(assert (=> start!32496 e!200269))

(declare-fun array_inv!5824 (array!16631) Bool)

(assert (=> start!32496 (array_inv!5824 a!3305)))

(assert (=> start!32496 true))

(declare-fun b!324577 () Bool)

(assert (=> b!324577 (= e!200267 false)))

(declare-fun lt!156830 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324577 (= lt!156830 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324578 () Bool)

(declare-fun res!178066 () Bool)

(assert (=> b!324578 (=> (not res!178066) (not e!200267))))

(assert (=> b!324578 (= res!178066 (and (= (select (arr!7870 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8222 a!3305))))))

(declare-fun b!324579 () Bool)

(declare-fun res!178067 () Bool)

(assert (=> b!324579 (=> (not res!178067) (not e!200269))))

(assert (=> b!324579 (= res!178067 (and (= (size!8222 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8222 a!3305))))))

(assert (= (and start!32496 res!178062) b!324579))

(assert (= (and b!324579 res!178067) b!324574))

(assert (= (and b!324574 res!178059) b!324570))

(assert (= (and b!324570 res!178065) b!324575))

(assert (= (and b!324575 res!178063) b!324571))

(assert (= (and b!324571 res!178064) b!324573))

(assert (= (and b!324573 res!178061) b!324578))

(assert (= (and b!324578 res!178066) b!324572))

(assert (= (and b!324572 res!178068) b!324576))

(assert (= (and b!324576 res!178060) b!324577))

(declare-fun m!331591 () Bool)

(assert (=> b!324572 m!331591))

(declare-fun m!331593 () Bool)

(assert (=> b!324578 m!331593))

(declare-fun m!331595 () Bool)

(assert (=> b!324574 m!331595))

(declare-fun m!331597 () Bool)

(assert (=> b!324575 m!331597))

(declare-fun m!331599 () Bool)

(assert (=> b!324576 m!331599))

(declare-fun m!331601 () Bool)

(assert (=> b!324573 m!331601))

(assert (=> b!324573 m!331601))

(declare-fun m!331603 () Bool)

(assert (=> b!324573 m!331603))

(declare-fun m!331605 () Bool)

(assert (=> b!324571 m!331605))

(declare-fun m!331607 () Bool)

(assert (=> start!32496 m!331607))

(declare-fun m!331609 () Bool)

(assert (=> start!32496 m!331609))

(declare-fun m!331611 () Bool)

(assert (=> b!324577 m!331611))

(declare-fun m!331613 () Bool)

(assert (=> b!324570 m!331613))

(push 1)

