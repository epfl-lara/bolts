; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26618 () Bool)

(assert start!26618)

(declare-fun b!276208 () Bool)

(declare-fun res!140241 () Bool)

(declare-fun e!176494 () Bool)

(assert (=> b!276208 (=> (not res!140241) (not e!176494))))

(declare-datatypes ((array!13704 0))(
  ( (array!13705 (arr!6501 (Array (_ BitVec 32) (_ BitVec 64))) (size!6853 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13704)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276208 (= res!140241 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140236 () Bool)

(assert (=> start!26618 (=> (not res!140236) (not e!176494))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26618 (= res!140236 (validMask!0 mask!3868))))

(assert (=> start!26618 e!176494))

(declare-fun array_inv!4455 (array!13704) Bool)

(assert (=> start!26618 (array_inv!4455 a!3325)))

(assert (=> start!26618 true))

(declare-fun b!276209 () Bool)

(declare-fun res!140238 () Bool)

(assert (=> b!276209 (=> (not res!140238) (not e!176494))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276209 (= res!140238 (and (= (size!6853 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6853 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6853 a!3325))))))

(declare-fun b!276210 () Bool)

(declare-fun e!176492 () Bool)

(assert (=> b!276210 (= e!176492 false)))

(declare-fun lt!137602 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13704 (_ BitVec 32)) Bool)

(assert (=> b!276210 (= lt!137602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276211 () Bool)

(declare-fun res!140237 () Bool)

(assert (=> b!276211 (=> (not res!140237) (not e!176494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276211 (= res!140237 (validKeyInArray!0 k!2581))))

(declare-fun b!276212 () Bool)

(declare-fun res!140240 () Bool)

(assert (=> b!276212 (=> (not res!140240) (not e!176494))))

(declare-datatypes ((List!4330 0))(
  ( (Nil!4327) (Cons!4326 (h!4993 (_ BitVec 64)) (t!9420 List!4330)) )
))
(declare-fun arrayNoDuplicates!0 (array!13704 (_ BitVec 32) List!4330) Bool)

(assert (=> b!276212 (= res!140240 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4327))))

(declare-fun b!276213 () Bool)

(assert (=> b!276213 (= e!176494 e!176492)))

(declare-fun res!140239 () Bool)

(assert (=> b!276213 (=> (not res!140239) (not e!176492))))

(declare-datatypes ((SeekEntryResult!1670 0))(
  ( (MissingZero!1670 (index!8850 (_ BitVec 32))) (Found!1670 (index!8851 (_ BitVec 32))) (Intermediate!1670 (undefined!2482 Bool) (index!8852 (_ BitVec 32)) (x!27083 (_ BitVec 32))) (Undefined!1670) (MissingVacant!1670 (index!8853 (_ BitVec 32))) )
))
(declare-fun lt!137603 () SeekEntryResult!1670)

(assert (=> b!276213 (= res!140239 (or (= lt!137603 (MissingZero!1670 i!1267)) (= lt!137603 (MissingVacant!1670 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13704 (_ BitVec 32)) SeekEntryResult!1670)

(assert (=> b!276213 (= lt!137603 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26618 res!140236) b!276209))

(assert (= (and b!276209 res!140238) b!276211))

(assert (= (and b!276211 res!140237) b!276212))

(assert (= (and b!276212 res!140240) b!276208))

(assert (= (and b!276208 res!140241) b!276213))

(assert (= (and b!276213 res!140239) b!276210))

(declare-fun m!291629 () Bool)

(assert (=> b!276210 m!291629))

(declare-fun m!291631 () Bool)

(assert (=> b!276213 m!291631))

(declare-fun m!291633 () Bool)

(assert (=> start!26618 m!291633))

(declare-fun m!291635 () Bool)

(assert (=> start!26618 m!291635))

(declare-fun m!291637 () Bool)

(assert (=> b!276211 m!291637))

(declare-fun m!291639 () Bool)

(assert (=> b!276212 m!291639))

(declare-fun m!291641 () Bool)

(assert (=> b!276208 m!291641))

(push 1)

(assert (not b!276210))

(assert (not b!276212))

(assert (not b!276213))

(assert (not start!26618))

(assert (not b!276211))

(assert (not b!276208))

