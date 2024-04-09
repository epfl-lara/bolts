; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32380 () Bool)

(assert start!32380)

(declare-fun b!322329 () Bool)

(declare-datatypes ((Unit!9864 0))(
  ( (Unit!9865) )
))
(declare-fun e!199485 () Unit!9864)

(declare-fun Unit!9866 () Unit!9864)

(assert (=> b!322329 (= e!199485 Unit!9866)))

(declare-fun b!322330 () Bool)

(declare-fun e!199484 () Bool)

(declare-fun e!199481 () Bool)

(assert (=> b!322330 (= e!199484 e!199481)))

(declare-fun res!176372 () Bool)

(assert (=> b!322330 (=> (not res!176372) (not e!199481))))

(declare-datatypes ((array!16515 0))(
  ( (array!16516 (arr!7812 (Array (_ BitVec 32) (_ BitVec 64))) (size!8164 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16515)

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2954 0))(
  ( (MissingZero!2954 (index!13992 (_ BitVec 32))) (Found!2954 (index!13993 (_ BitVec 32))) (Intermediate!2954 (undefined!3766 Bool) (index!13994 (_ BitVec 32)) (x!32217 (_ BitVec 32))) (Undefined!2954) (MissingVacant!2954 (index!13995 (_ BitVec 32))) )
))
(declare-fun lt!156426 () SeekEntryResult!2954)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16515 (_ BitVec 32)) SeekEntryResult!2954)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322330 (= res!176372 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156426))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!322330 (= lt!156426 (Intermediate!2954 false resIndex!58 resX!58))))

(declare-fun b!322331 () Bool)

(declare-fun e!199486 () Unit!9864)

(declare-fun e!199482 () Unit!9864)

(assert (=> b!322331 (= e!199486 e!199482)))

(declare-fun c!50610 () Bool)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!322331 (= c!50610 (or (= (select (arr!7812 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7812 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!322332 () Bool)

(declare-fun res!176366 () Bool)

(assert (=> b!322332 (=> (not res!176366) (not e!199481))))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!322332 (= res!176366 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7812 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!322333 () Bool)

(declare-fun res!176369 () Bool)

(assert (=> b!322333 (=> (not res!176369) (not e!199484))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16515 (_ BitVec 32)) SeekEntryResult!2954)

(assert (=> b!322333 (= res!176369 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2954 i!1250)))))

(declare-fun b!322334 () Bool)

(declare-fun res!176371 () Bool)

(assert (=> b!322334 (=> (not res!176371) (not e!199481))))

(assert (=> b!322334 (= res!176371 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156426))))

(declare-fun b!322335 () Bool)

(declare-fun res!176364 () Bool)

(assert (=> b!322335 (=> (not res!176364) (not e!199484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16515 (_ BitVec 32)) Bool)

(assert (=> b!322335 (= res!176364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!176370 () Bool)

(assert (=> start!32380 (=> (not res!176370) (not e!199484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32380 (= res!176370 (validMask!0 mask!3777))))

(assert (=> start!32380 e!199484))

(declare-fun array_inv!5766 (array!16515) Bool)

(assert (=> start!32380 (array_inv!5766 a!3305)))

(assert (=> start!32380 true))

(declare-fun b!322336 () Bool)

(declare-fun Unit!9867 () Unit!9864)

(assert (=> b!322336 (= e!199485 Unit!9867)))

(assert (=> b!322336 false))

(declare-fun b!322337 () Bool)

(assert (=> b!322337 false))

(declare-fun Unit!9868 () Unit!9864)

(assert (=> b!322337 (= e!199482 Unit!9868)))

(declare-fun b!322338 () Bool)

(declare-fun Unit!9869 () Unit!9864)

(assert (=> b!322338 (= e!199486 Unit!9869)))

(declare-fun b!322339 () Bool)

(declare-fun res!176365 () Bool)

(assert (=> b!322339 (=> (not res!176365) (not e!199484))))

(assert (=> b!322339 (= res!176365 (and (= (size!8164 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8164 a!3305))))))

(declare-fun b!322340 () Bool)

(declare-fun res!176367 () Bool)

(assert (=> b!322340 (=> (not res!176367) (not e!199484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322340 (= res!176367 (validKeyInArray!0 k!2497))))

(declare-fun b!322341 () Bool)

(assert (=> b!322341 false))

(declare-fun lt!156428 () Unit!9864)

(assert (=> b!322341 (= lt!156428 e!199485)))

(declare-fun c!50611 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322341 (= c!50611 (is-Intermediate!2954 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!9870 () Unit!9864)

(assert (=> b!322341 (= e!199482 Unit!9870)))

(declare-fun b!322342 () Bool)

(declare-fun res!176368 () Bool)

(assert (=> b!322342 (=> (not res!176368) (not e!199484))))

(declare-fun arrayContainsKey!0 (array!16515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322342 (= res!176368 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322343 () Bool)

(assert (=> b!322343 (= e!199481 (not (or (not (= (select (arr!7812 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3777 #b00000000000000000000000000000000))))))

(assert (=> b!322343 (= index!1840 resIndex!58)))

(declare-fun lt!156427 () Unit!9864)

(assert (=> b!322343 (= lt!156427 e!199486)))

(declare-fun c!50612 () Bool)

(assert (=> b!322343 (= c!50612 (not (= resIndex!58 index!1840)))))

(declare-fun b!322344 () Bool)

(declare-fun res!176373 () Bool)

(assert (=> b!322344 (=> (not res!176373) (not e!199481))))

(assert (=> b!322344 (= res!176373 (and (= (select (arr!7812 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8164 a!3305))))))

(assert (= (and start!32380 res!176370) b!322339))

(assert (= (and b!322339 res!176365) b!322340))

(assert (= (and b!322340 res!176367) b!322342))

(assert (= (and b!322342 res!176368) b!322333))

(assert (= (and b!322333 res!176369) b!322335))

(assert (= (and b!322335 res!176364) b!322330))

(assert (= (and b!322330 res!176372) b!322344))

(assert (= (and b!322344 res!176373) b!322334))

(assert (= (and b!322334 res!176371) b!322332))

(assert (= (and b!322332 res!176366) b!322343))

(assert (= (and b!322343 c!50612) b!322331))

(assert (= (and b!322343 (not c!50612)) b!322338))

(assert (= (and b!322331 c!50610) b!322337))

(assert (= (and b!322331 (not c!50610)) b!322341))

(assert (= (and b!322341 c!50611) b!322329))

(assert (= (and b!322341 (not c!50611)) b!322336))

(declare-fun m!330167 () Bool)

(assert (=> b!322332 m!330167))

(assert (=> b!322343 m!330167))

(assert (=> b!322331 m!330167))

(declare-fun m!330169 () Bool)

(assert (=> b!322340 m!330169))

(declare-fun m!330171 () Bool)

(assert (=> b!322344 m!330171))

(declare-fun m!330173 () Bool)

(assert (=> b!322342 m!330173))

(declare-fun m!330175 () Bool)

(assert (=> b!322334 m!330175))

(declare-fun m!330177 () Bool)

(assert (=> b!322341 m!330177))

(assert (=> b!322341 m!330177))

(declare-fun m!330179 () Bool)

(assert (=> b!322341 m!330179))

(declare-fun m!330181 () Bool)

(assert (=> b!322335 m!330181))

(declare-fun m!330183 () Bool)

(assert (=> b!322330 m!330183))

(assert (=> b!322330 m!330183))

(declare-fun m!330185 () Bool)

(assert (=> b!322330 m!330185))

(declare-fun m!330187 () Bool)

(assert (=> start!32380 m!330187))

(declare-fun m!330189 () Bool)

(assert (=> start!32380 m!330189))

(declare-fun m!330191 () Bool)

(assert (=> b!322333 m!330191))

(push 1)

(assert (not b!322330))

(assert (not b!322341))

(assert (not b!322335))

(assert (not b!322334))

(assert (not b!322340))

(assert (not b!322342))

