; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32494 () Bool)

(assert start!32494)

(declare-fun b!324540 () Bool)

(declare-fun e!200259 () Bool)

(assert (=> b!324540 (= e!200259 false)))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun lt!156824 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324540 (= lt!156824 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324541 () Bool)

(declare-fun res!178034 () Bool)

(declare-fun e!200260 () Bool)

(assert (=> b!324541 (=> (not res!178034) (not e!200260))))

(declare-datatypes ((array!16629 0))(
  ( (array!16630 (arr!7869 (Array (_ BitVec 32) (_ BitVec 64))) (size!8221 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16629)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3011 0))(
  ( (MissingZero!3011 (index!14220 (_ BitVec 32))) (Found!3011 (index!14221 (_ BitVec 32))) (Intermediate!3011 (undefined!3823 Bool) (index!14222 (_ BitVec 32)) (x!32426 (_ BitVec 32))) (Undefined!3011) (MissingVacant!3011 (index!14223 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16629 (_ BitVec 32)) SeekEntryResult!3011)

(assert (=> b!324541 (= res!178034 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3011 i!1250)))))

(declare-fun res!178036 () Bool)

(assert (=> start!32494 (=> (not res!178036) (not e!200260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32494 (= res!178036 (validMask!0 mask!3777))))

(assert (=> start!32494 e!200260))

(declare-fun array_inv!5823 (array!16629) Bool)

(assert (=> start!32494 (array_inv!5823 a!3305)))

(assert (=> start!32494 true))

(declare-fun b!324542 () Bool)

(declare-fun res!178038 () Bool)

(assert (=> b!324542 (=> (not res!178038) (not e!200260))))

(assert (=> b!324542 (= res!178038 (and (= (size!8221 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8221 a!3305))))))

(declare-fun b!324543 () Bool)

(declare-fun res!178030 () Bool)

(assert (=> b!324543 (=> (not res!178030) (not e!200260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324543 (= res!178030 (validKeyInArray!0 k!2497))))

(declare-fun b!324544 () Bool)

(declare-fun res!178029 () Bool)

(assert (=> b!324544 (=> (not res!178029) (not e!200260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16629 (_ BitVec 32)) Bool)

(assert (=> b!324544 (= res!178029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324545 () Bool)

(declare-fun res!178032 () Bool)

(assert (=> b!324545 (=> (not res!178032) (not e!200259))))

(declare-fun lt!156823 () SeekEntryResult!3011)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16629 (_ BitVec 32)) SeekEntryResult!3011)

(assert (=> b!324545 (= res!178032 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156823))))

(declare-fun b!324546 () Bool)

(declare-fun res!178037 () Bool)

(assert (=> b!324546 (=> (not res!178037) (not e!200259))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324546 (= res!178037 (and (= (select (arr!7869 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8221 a!3305))))))

(declare-fun b!324547 () Bool)

(declare-fun res!178033 () Bool)

(assert (=> b!324547 (=> (not res!178033) (not e!200259))))

(assert (=> b!324547 (= res!178033 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7869 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324548 () Bool)

(assert (=> b!324548 (= e!200260 e!200259)))

(declare-fun res!178031 () Bool)

(assert (=> b!324548 (=> (not res!178031) (not e!200259))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324548 (= res!178031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156823))))

(assert (=> b!324548 (= lt!156823 (Intermediate!3011 false resIndex!58 resX!58))))

(declare-fun b!324549 () Bool)

(declare-fun res!178035 () Bool)

(assert (=> b!324549 (=> (not res!178035) (not e!200260))))

(declare-fun arrayContainsKey!0 (array!16629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324549 (= res!178035 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32494 res!178036) b!324542))

(assert (= (and b!324542 res!178038) b!324543))

(assert (= (and b!324543 res!178030) b!324549))

(assert (= (and b!324549 res!178035) b!324541))

(assert (= (and b!324541 res!178034) b!324544))

(assert (= (and b!324544 res!178029) b!324548))

(assert (= (and b!324548 res!178031) b!324546))

(assert (= (and b!324546 res!178037) b!324545))

(assert (= (and b!324545 res!178032) b!324547))

(assert (= (and b!324547 res!178033) b!324540))

(declare-fun m!331567 () Bool)

(assert (=> b!324544 m!331567))

(declare-fun m!331569 () Bool)

(assert (=> b!324540 m!331569))

(declare-fun m!331571 () Bool)

(assert (=> b!324545 m!331571))

(declare-fun m!331573 () Bool)

(assert (=> b!324543 m!331573))

(declare-fun m!331575 () Bool)

(assert (=> b!324548 m!331575))

(assert (=> b!324548 m!331575))

(declare-fun m!331577 () Bool)

(assert (=> b!324548 m!331577))

(declare-fun m!331579 () Bool)

(assert (=> b!324541 m!331579))

(declare-fun m!331581 () Bool)

(assert (=> start!32494 m!331581))

(declare-fun m!331583 () Bool)

(assert (=> start!32494 m!331583))

(declare-fun m!331585 () Bool)

(assert (=> b!324546 m!331585))

(declare-fun m!331587 () Bool)

(assert (=> b!324549 m!331587))

(declare-fun m!331589 () Bool)

(assert (=> b!324547 m!331589))

(push 1)

(assert (not b!324545))

(assert (not b!324543))

(assert (not b!324540))

(assert (not b!324544))

(assert (not b!324549))

