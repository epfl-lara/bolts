; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32482 () Bool)

(assert start!32482)

(declare-fun b!324360 () Bool)

(declare-fun e!200205 () Bool)

(declare-fun e!200204 () Bool)

(assert (=> b!324360 (= e!200205 e!200204)))

(declare-fun res!177854 () Bool)

(assert (=> b!324360 (=> (not res!177854) (not e!200204))))

(declare-datatypes ((array!16617 0))(
  ( (array!16618 (arr!7863 (Array (_ BitVec 32) (_ BitVec 64))) (size!8215 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16617)

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3005 0))(
  ( (MissingZero!3005 (index!14196 (_ BitVec 32))) (Found!3005 (index!14197 (_ BitVec 32))) (Intermediate!3005 (undefined!3817 Bool) (index!14198 (_ BitVec 32)) (x!32404 (_ BitVec 32))) (Undefined!3005) (MissingVacant!3005 (index!14199 (_ BitVec 32))) )
))
(declare-fun lt!156787 () SeekEntryResult!3005)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16617 (_ BitVec 32)) SeekEntryResult!3005)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324360 (= res!177854 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156787))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324360 (= lt!156787 (Intermediate!3005 false resIndex!58 resX!58))))

(declare-fun res!177857 () Bool)

(assert (=> start!32482 (=> (not res!177857) (not e!200205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32482 (= res!177857 (validMask!0 mask!3777))))

(assert (=> start!32482 e!200205))

(declare-fun array_inv!5817 (array!16617) Bool)

(assert (=> start!32482 (array_inv!5817 a!3305)))

(assert (=> start!32482 true))

(declare-fun b!324361 () Bool)

(declare-fun res!177850 () Bool)

(assert (=> b!324361 (=> (not res!177850) (not e!200205))))

(declare-fun arrayContainsKey!0 (array!16617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324361 (= res!177850 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324362 () Bool)

(assert (=> b!324362 (= e!200204 false)))

(declare-fun lt!156788 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324362 (= lt!156788 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324363 () Bool)

(declare-fun res!177851 () Bool)

(assert (=> b!324363 (=> (not res!177851) (not e!200205))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!324363 (= res!177851 (and (= (size!8215 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8215 a!3305))))))

(declare-fun b!324364 () Bool)

(declare-fun res!177852 () Bool)

(assert (=> b!324364 (=> (not res!177852) (not e!200205))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324364 (= res!177852 (validKeyInArray!0 k!2497))))

(declare-fun b!324365 () Bool)

(declare-fun res!177853 () Bool)

(assert (=> b!324365 (=> (not res!177853) (not e!200205))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16617 (_ BitVec 32)) SeekEntryResult!3005)

(assert (=> b!324365 (= res!177853 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3005 i!1250)))))

(declare-fun b!324366 () Bool)

(declare-fun res!177849 () Bool)

(assert (=> b!324366 (=> (not res!177849) (not e!200205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16617 (_ BitVec 32)) Bool)

(assert (=> b!324366 (= res!177849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324367 () Bool)

(declare-fun res!177855 () Bool)

(assert (=> b!324367 (=> (not res!177855) (not e!200204))))

(assert (=> b!324367 (= res!177855 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156787))))

(declare-fun b!324368 () Bool)

(declare-fun res!177856 () Bool)

(assert (=> b!324368 (=> (not res!177856) (not e!200204))))

(assert (=> b!324368 (= res!177856 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7863 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324369 () Bool)

(declare-fun res!177858 () Bool)

(assert (=> b!324369 (=> (not res!177858) (not e!200204))))

(assert (=> b!324369 (= res!177858 (and (= (select (arr!7863 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8215 a!3305))))))

(assert (= (and start!32482 res!177857) b!324363))

(assert (= (and b!324363 res!177851) b!324364))

(assert (= (and b!324364 res!177852) b!324361))

(assert (= (and b!324361 res!177850) b!324365))

(assert (= (and b!324365 res!177853) b!324366))

(assert (= (and b!324366 res!177849) b!324360))

(assert (= (and b!324360 res!177854) b!324369))

(assert (= (and b!324369 res!177858) b!324367))

(assert (= (and b!324367 res!177855) b!324368))

(assert (= (and b!324368 res!177856) b!324362))

(declare-fun m!331423 () Bool)

(assert (=> b!324360 m!331423))

(assert (=> b!324360 m!331423))

(declare-fun m!331425 () Bool)

(assert (=> b!324360 m!331425))

(declare-fun m!331427 () Bool)

(assert (=> b!324366 m!331427))

(declare-fun m!331429 () Bool)

(assert (=> b!324367 m!331429))

(declare-fun m!331431 () Bool)

(assert (=> b!324361 m!331431))

(declare-fun m!331433 () Bool)

(assert (=> b!324364 m!331433))

(declare-fun m!331435 () Bool)

(assert (=> b!324368 m!331435))

(declare-fun m!331437 () Bool)

(assert (=> b!324365 m!331437))

(declare-fun m!331439 () Bool)

(assert (=> b!324362 m!331439))

(declare-fun m!331441 () Bool)

(assert (=> start!32482 m!331441))

(declare-fun m!331443 () Bool)

(assert (=> start!32482 m!331443))

(declare-fun m!331445 () Bool)

(assert (=> b!324369 m!331445))

(push 1)

(assert (not start!32482))

(assert (not b!324360))

(assert (not b!324362))

(assert (not b!324366))

