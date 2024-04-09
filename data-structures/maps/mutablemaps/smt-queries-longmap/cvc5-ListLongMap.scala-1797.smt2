; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32490 () Bool)

(assert start!32490)

(declare-fun b!324480 () Bool)

(declare-fun res!177969 () Bool)

(declare-fun e!200242 () Bool)

(assert (=> b!324480 (=> (not res!177969) (not e!200242))))

(declare-datatypes ((array!16625 0))(
  ( (array!16626 (arr!7867 (Array (_ BitVec 32) (_ BitVec 64))) (size!8219 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16625)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3009 0))(
  ( (MissingZero!3009 (index!14212 (_ BitVec 32))) (Found!3009 (index!14213 (_ BitVec 32))) (Intermediate!3009 (undefined!3821 Bool) (index!14214 (_ BitVec 32)) (x!32424 (_ BitVec 32))) (Undefined!3009) (MissingVacant!3009 (index!14215 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16625 (_ BitVec 32)) SeekEntryResult!3009)

(assert (=> b!324480 (= res!177969 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3009 i!1250)))))

(declare-fun b!324481 () Bool)

(declare-fun res!177975 () Bool)

(assert (=> b!324481 (=> (not res!177975) (not e!200242))))

(declare-fun arrayContainsKey!0 (array!16625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324481 (= res!177975 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324482 () Bool)

(declare-fun res!177970 () Bool)

(assert (=> b!324482 (=> (not res!177970) (not e!200242))))

(assert (=> b!324482 (= res!177970 (and (= (size!8219 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8219 a!3305))))))

(declare-fun b!324483 () Bool)

(declare-fun e!200240 () Bool)

(assert (=> b!324483 (= e!200240 false)))

(declare-fun lt!156812 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324483 (= lt!156812 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324484 () Bool)

(declare-fun res!177977 () Bool)

(assert (=> b!324484 (=> (not res!177977) (not e!200240))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!324484 (= res!177977 (and (= (select (arr!7867 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8219 a!3305))))))

(declare-fun b!324486 () Bool)

(declare-fun res!177971 () Bool)

(assert (=> b!324486 (=> (not res!177971) (not e!200240))))

(declare-fun lt!156811 () SeekEntryResult!3009)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16625 (_ BitVec 32)) SeekEntryResult!3009)

(assert (=> b!324486 (= res!177971 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156811))))

(declare-fun b!324487 () Bool)

(declare-fun res!177976 () Bool)

(assert (=> b!324487 (=> (not res!177976) (not e!200240))))

(assert (=> b!324487 (= res!177976 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7867 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324488 () Bool)

(declare-fun res!177972 () Bool)

(assert (=> b!324488 (=> (not res!177972) (not e!200242))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16625 (_ BitVec 32)) Bool)

(assert (=> b!324488 (= res!177972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324489 () Bool)

(declare-fun res!177978 () Bool)

(assert (=> b!324489 (=> (not res!177978) (not e!200242))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324489 (= res!177978 (validKeyInArray!0 k!2497))))

(declare-fun b!324485 () Bool)

(assert (=> b!324485 (= e!200242 e!200240)))

(declare-fun res!177974 () Bool)

(assert (=> b!324485 (=> (not res!177974) (not e!200240))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324485 (= res!177974 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156811))))

(assert (=> b!324485 (= lt!156811 (Intermediate!3009 false resIndex!58 resX!58))))

(declare-fun res!177973 () Bool)

(assert (=> start!32490 (=> (not res!177973) (not e!200242))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32490 (= res!177973 (validMask!0 mask!3777))))

(assert (=> start!32490 e!200242))

(declare-fun array_inv!5821 (array!16625) Bool)

(assert (=> start!32490 (array_inv!5821 a!3305)))

(assert (=> start!32490 true))

(assert (= (and start!32490 res!177973) b!324482))

(assert (= (and b!324482 res!177970) b!324489))

(assert (= (and b!324489 res!177978) b!324481))

(assert (= (and b!324481 res!177975) b!324480))

(assert (= (and b!324480 res!177969) b!324488))

(assert (= (and b!324488 res!177972) b!324485))

(assert (= (and b!324485 res!177974) b!324484))

(assert (= (and b!324484 res!177977) b!324486))

(assert (= (and b!324486 res!177971) b!324487))

(assert (= (and b!324487 res!177976) b!324483))

(declare-fun m!331519 () Bool)

(assert (=> b!324487 m!331519))

(declare-fun m!331521 () Bool)

(assert (=> b!324485 m!331521))

(assert (=> b!324485 m!331521))

(declare-fun m!331523 () Bool)

(assert (=> b!324485 m!331523))

(declare-fun m!331525 () Bool)

(assert (=> b!324480 m!331525))

(declare-fun m!331527 () Bool)

(assert (=> b!324486 m!331527))

(declare-fun m!331529 () Bool)

(assert (=> b!324488 m!331529))

(declare-fun m!331531 () Bool)

(assert (=> b!324489 m!331531))

(declare-fun m!331533 () Bool)

(assert (=> b!324484 m!331533))

(declare-fun m!331535 () Bool)

(assert (=> start!32490 m!331535))

(declare-fun m!331537 () Bool)

(assert (=> start!32490 m!331537))

(declare-fun m!331539 () Bool)

(assert (=> b!324481 m!331539))

(declare-fun m!331541 () Bool)

(assert (=> b!324483 m!331541))

(push 1)

