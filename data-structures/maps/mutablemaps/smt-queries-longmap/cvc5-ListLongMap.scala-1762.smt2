; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32226 () Bool)

(assert start!32226)

(declare-fun b!320617 () Bool)

(declare-fun e!198877 () Bool)

(declare-fun e!198876 () Bool)

(assert (=> b!320617 (= e!198877 e!198876)))

(declare-fun res!174903 () Bool)

(assert (=> b!320617 (=> (not res!174903) (not e!198876))))

(declare-datatypes ((SeekEntryResult!2904 0))(
  ( (MissingZero!2904 (index!13792 (_ BitVec 32))) (Found!2904 (index!13793 (_ BitVec 32))) (Intermediate!2904 (undefined!3716 Bool) (index!13794 (_ BitVec 32)) (x!32030 (_ BitVec 32))) (Undefined!2904) (MissingVacant!2904 (index!13795 (_ BitVec 32))) )
))
(declare-fun lt!156083 () SeekEntryResult!2904)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((array!16412 0))(
  ( (array!16413 (arr!7762 (Array (_ BitVec 32) (_ BitVec 64))) (size!8114 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16412)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16412 (_ BitVec 32)) SeekEntryResult!2904)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320617 (= res!174903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156083))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320617 (= lt!156083 (Intermediate!2904 false resIndex!58 resX!58))))

(declare-fun b!320619 () Bool)

(declare-fun res!174899 () Bool)

(assert (=> b!320619 (=> (not res!174899) (not e!198877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320619 (= res!174899 (validKeyInArray!0 k!2497))))

(declare-fun b!320620 () Bool)

(declare-fun res!174900 () Bool)

(assert (=> b!320620 (=> (not res!174900) (not e!198877))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320620 (= res!174900 (and (= (size!8114 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8114 a!3305))))))

(declare-fun b!320621 () Bool)

(declare-fun res!174898 () Bool)

(assert (=> b!320621 (=> (not res!174898) (not e!198877))))

(declare-fun arrayContainsKey!0 (array!16412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320621 (= res!174898 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320622 () Bool)

(declare-fun res!174897 () Bool)

(assert (=> b!320622 (=> (not res!174897) (not e!198876))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!320622 (= res!174897 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156083))))

(declare-fun b!320623 () Bool)

(declare-fun res!174902 () Bool)

(assert (=> b!320623 (=> (not res!174902) (not e!198876))))

(assert (=> b!320623 (= res!174902 (and (= (select (arr!7762 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8114 a!3305))))))

(declare-fun b!320624 () Bool)

(assert (=> b!320624 (= e!198876 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7762 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (or (= (select (arr!7762 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7762 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun b!320625 () Bool)

(declare-fun res!174901 () Bool)

(assert (=> b!320625 (=> (not res!174901) (not e!198877))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16412 (_ BitVec 32)) SeekEntryResult!2904)

(assert (=> b!320625 (= res!174901 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2904 i!1250)))))

(declare-fun b!320618 () Bool)

(declare-fun res!174895 () Bool)

(assert (=> b!320618 (=> (not res!174895) (not e!198877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16412 (_ BitVec 32)) Bool)

(assert (=> b!320618 (= res!174895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun res!174896 () Bool)

(assert (=> start!32226 (=> (not res!174896) (not e!198877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32226 (= res!174896 (validMask!0 mask!3777))))

(assert (=> start!32226 e!198877))

(declare-fun array_inv!5716 (array!16412) Bool)

(assert (=> start!32226 (array_inv!5716 a!3305)))

(assert (=> start!32226 true))

(assert (= (and start!32226 res!174896) b!320620))

(assert (= (and b!320620 res!174900) b!320619))

(assert (= (and b!320619 res!174899) b!320621))

(assert (= (and b!320621 res!174898) b!320625))

(assert (= (and b!320625 res!174901) b!320618))

(assert (= (and b!320618 res!174895) b!320617))

(assert (= (and b!320617 res!174903) b!320623))

(assert (= (and b!320623 res!174902) b!320622))

(assert (= (and b!320622 res!174897) b!320624))

(declare-fun m!328915 () Bool)

(assert (=> b!320618 m!328915))

(declare-fun m!328917 () Bool)

(assert (=> b!320617 m!328917))

(assert (=> b!320617 m!328917))

(declare-fun m!328919 () Bool)

(assert (=> b!320617 m!328919))

(declare-fun m!328921 () Bool)

(assert (=> b!320621 m!328921))

(declare-fun m!328923 () Bool)

(assert (=> start!32226 m!328923))

(declare-fun m!328925 () Bool)

(assert (=> start!32226 m!328925))

(declare-fun m!328927 () Bool)

(assert (=> b!320624 m!328927))

(declare-fun m!328929 () Bool)

(assert (=> b!320622 m!328929))

(declare-fun m!328931 () Bool)

(assert (=> b!320619 m!328931))

(declare-fun m!328933 () Bool)

(assert (=> b!320625 m!328933))

(declare-fun m!328935 () Bool)

(assert (=> b!320623 m!328935))

(push 1)

(assert (not b!320622))

