; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32484 () Bool)

(assert start!32484)

(declare-fun b!324390 () Bool)

(declare-fun e!200214 () Bool)

(declare-fun e!200213 () Bool)

(assert (=> b!324390 (= e!200214 e!200213)))

(declare-fun res!177883 () Bool)

(assert (=> b!324390 (=> (not res!177883) (not e!200213))))

(declare-datatypes ((array!16619 0))(
  ( (array!16620 (arr!7864 (Array (_ BitVec 32) (_ BitVec 64))) (size!8216 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16619)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3006 0))(
  ( (MissingZero!3006 (index!14200 (_ BitVec 32))) (Found!3006 (index!14201 (_ BitVec 32))) (Intermediate!3006 (undefined!3818 Bool) (index!14202 (_ BitVec 32)) (x!32413 (_ BitVec 32))) (Undefined!3006) (MissingVacant!3006 (index!14203 (_ BitVec 32))) )
))
(declare-fun lt!156794 () SeekEntryResult!3006)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16619 (_ BitVec 32)) SeekEntryResult!3006)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324390 (= res!177883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156794))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!324390 (= lt!156794 (Intermediate!3006 false resIndex!58 resX!58))))

(declare-fun res!177879 () Bool)

(assert (=> start!32484 (=> (not res!177879) (not e!200214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32484 (= res!177879 (validMask!0 mask!3777))))

(assert (=> start!32484 e!200214))

(declare-fun array_inv!5818 (array!16619) Bool)

(assert (=> start!32484 (array_inv!5818 a!3305)))

(assert (=> start!32484 true))

(declare-fun b!324391 () Bool)

(declare-fun res!177881 () Bool)

(assert (=> b!324391 (=> (not res!177881) (not e!200214))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16619 (_ BitVec 32)) SeekEntryResult!3006)

(assert (=> b!324391 (= res!177881 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3006 i!1250)))))

(declare-fun b!324392 () Bool)

(declare-fun res!177887 () Bool)

(assert (=> b!324392 (=> (not res!177887) (not e!200214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!324392 (= res!177887 (validKeyInArray!0 k!2497))))

(declare-fun b!324393 () Bool)

(declare-fun res!177880 () Bool)

(assert (=> b!324393 (=> (not res!177880) (not e!200213))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!324393 (= res!177880 (and (= (select (arr!7864 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8216 a!3305))))))

(declare-fun b!324394 () Bool)

(assert (=> b!324394 (= e!200213 false)))

(declare-fun lt!156793 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!324394 (= lt!156793 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!324395 () Bool)

(declare-fun res!177884 () Bool)

(assert (=> b!324395 (=> (not res!177884) (not e!200214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16619 (_ BitVec 32)) Bool)

(assert (=> b!324395 (= res!177884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!324396 () Bool)

(declare-fun res!177882 () Bool)

(assert (=> b!324396 (=> (not res!177882) (not e!200214))))

(declare-fun arrayContainsKey!0 (array!16619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!324396 (= res!177882 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!324397 () Bool)

(declare-fun res!177885 () Bool)

(assert (=> b!324397 (=> (not res!177885) (not e!200213))))

(assert (=> b!324397 (= res!177885 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7864 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!324398 () Bool)

(declare-fun res!177888 () Bool)

(assert (=> b!324398 (=> (not res!177888) (not e!200213))))

(assert (=> b!324398 (= res!177888 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156794))))

(declare-fun b!324399 () Bool)

(declare-fun res!177886 () Bool)

(assert (=> b!324399 (=> (not res!177886) (not e!200214))))

(assert (=> b!324399 (= res!177886 (and (= (size!8216 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8216 a!3305))))))

(assert (= (and start!32484 res!177879) b!324399))

(assert (= (and b!324399 res!177886) b!324392))

(assert (= (and b!324392 res!177887) b!324396))

(assert (= (and b!324396 res!177882) b!324391))

(assert (= (and b!324391 res!177881) b!324395))

(assert (= (and b!324395 res!177884) b!324390))

(assert (= (and b!324390 res!177883) b!324393))

(assert (= (and b!324393 res!177880) b!324398))

(assert (= (and b!324398 res!177888) b!324397))

(assert (= (and b!324397 res!177885) b!324394))

(declare-fun m!331447 () Bool)

(assert (=> b!324397 m!331447))

(declare-fun m!331449 () Bool)

(assert (=> b!324390 m!331449))

(assert (=> b!324390 m!331449))

(declare-fun m!331451 () Bool)

(assert (=> b!324390 m!331451))

(declare-fun m!331453 () Bool)

(assert (=> start!32484 m!331453))

(declare-fun m!331455 () Bool)

(assert (=> start!32484 m!331455))

(declare-fun m!331457 () Bool)

(assert (=> b!324391 m!331457))

(declare-fun m!331459 () Bool)

(assert (=> b!324396 m!331459))

(declare-fun m!331461 () Bool)

(assert (=> b!324393 m!331461))

(declare-fun m!331463 () Bool)

(assert (=> b!324395 m!331463))

(declare-fun m!331465 () Bool)

(assert (=> b!324392 m!331465))

(declare-fun m!331467 () Bool)

(assert (=> b!324398 m!331467))

(declare-fun m!331469 () Bool)

(assert (=> b!324394 m!331469))

(push 1)

