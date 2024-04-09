; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32488 () Bool)

(assert start!32488)

(declare-fun b!324450 () Bool)

(declare-fun res!177945 () Bool)

(declare-fun e!200232 () Bool)

(assert (=> b!324450 (=> (not res!177945) (not e!200232))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324450 (= res!177945 (validKeyInArray!0 k!2497))))

(declare-fun b!324451 () Bool)

(declare-fun e!200231 () Bool)

(assert (=> b!324451 (= e!200232 e!200231)))

(declare-fun res!177944 () Bool)

(assert (=> b!324451 (=> (not res!177944) (not e!200231))))

(declare-datatypes ((array!16623 0))(
  ( (array!16624 (arr!7866 (Array (_ BitVec 32) (_ BitVec 64))) (size!8218 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16623)

(declare-datatypes ((SeekEntryResult!3008 0))(
  ( (MissingZero!3008 (index!14208 (_ BitVec 32))) (Found!3008 (index!14209 (_ BitVec 32))) (Intermediate!3008 (undefined!3820 Bool) (index!14210 (_ BitVec 32)) (x!32415 (_ BitVec 32))) (Undefined!3008) (MissingVacant!3008 (index!14211 (_ BitVec 32))) )
))
(declare-fun lt!156805 () SeekEntryResult!3008)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16623 (_ BitVec 32)) SeekEntryResult!3008)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324451 (= res!177944 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156805))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324451 (= lt!156805 (Intermediate!3008 false resIndex!58 resX!58))))

(declare-fun b!324452 () Bool)

(declare-fun res!177948 () Bool)

(assert (=> b!324452 (=> (not res!177948) (not e!200232))))

(declare-fun arrayContainsKey!0 (array!16623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324452 (= res!177948 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324453 () Bool)

(declare-fun res!177946 () Bool)

(assert (=> b!324453 (=> (not res!177946) (not e!200231))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324453 (= res!177946 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156805))))

(declare-fun b!324454 () Bool)

(declare-fun res!177947 () Bool)

(assert (=> b!324454 (=> (not res!177947) (not e!200231))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324454 (= res!177947 (and (= (select (arr!7866 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8218 a!3305))))))

(declare-fun b!324455 () Bool)

(assert (=> b!324455 (= e!200231 false)))

(declare-fun lt!156806 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324455 (= lt!156806 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324456 () Bool)

(declare-fun res!177942 () Bool)

(assert (=> b!324456 (=> (not res!177942) (not e!200232))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16623 (_ BitVec 32)) SeekEntryResult!3008)

(assert (=> b!324456 (= res!177942 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3008 i!1250)))))

(declare-fun b!324458 () Bool)

(declare-fun res!177941 () Bool)

(assert (=> b!324458 (=> (not res!177941) (not e!200231))))

(assert (=> b!324458 (= res!177941 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7866 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324459 () Bool)

(declare-fun res!177943 () Bool)

(assert (=> b!324459 (=> (not res!177943) (not e!200232))))

(assert (=> b!324459 (= res!177943 (and (= (size!8218 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8218 a!3305))))))

(declare-fun b!324457 () Bool)

(declare-fun res!177940 () Bool)

(assert (=> b!324457 (=> (not res!177940) (not e!200232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16623 (_ BitVec 32)) Bool)

(assert (=> b!324457 (= res!177940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!177939 () Bool)

(assert (=> start!32488 (=> (not res!177939) (not e!200232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32488 (= res!177939 (validMask!0 mask!3777))))

(assert (=> start!32488 e!200232))

(declare-fun array_inv!5820 (array!16623) Bool)

(assert (=> start!32488 (array_inv!5820 a!3305)))

(assert (=> start!32488 true))

(assert (= (and start!32488 res!177939) b!324459))

(assert (= (and b!324459 res!177943) b!324450))

(assert (= (and b!324450 res!177945) b!324452))

(assert (= (and b!324452 res!177948) b!324456))

(assert (= (and b!324456 res!177942) b!324457))

(assert (= (and b!324457 res!177940) b!324451))

(assert (= (and b!324451 res!177944) b!324454))

(assert (= (and b!324454 res!177947) b!324453))

(assert (= (and b!324453 res!177946) b!324458))

(assert (= (and b!324458 res!177941) b!324455))

(declare-fun m!331495 () Bool)

(assert (=> b!324456 m!331495))

(declare-fun m!331497 () Bool)

(assert (=> b!324452 m!331497))

(declare-fun m!331499 () Bool)

(assert (=> b!324455 m!331499))

(declare-fun m!331501 () Bool)

(assert (=> b!324450 m!331501))

(declare-fun m!331503 () Bool)

(assert (=> b!324454 m!331503))

(declare-fun m!331505 () Bool)

(assert (=> start!32488 m!331505))

(declare-fun m!331507 () Bool)

(assert (=> start!32488 m!331507))

(declare-fun m!331509 () Bool)

(assert (=> b!324457 m!331509))

(declare-fun m!331511 () Bool)

(assert (=> b!324458 m!331511))

(declare-fun m!331513 () Bool)

(assert (=> b!324453 m!331513))

(declare-fun m!331515 () Bool)

(assert (=> b!324451 m!331515))

(assert (=> b!324451 m!331515))

(declare-fun m!331517 () Bool)

(assert (=> b!324451 m!331517))

(push 1)

(assert (not b!324456))

(assert (not start!32488))

(assert (not b!324451))

(assert (not b!324457))

(assert (not b!324452))

