; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26492 () Bool)

(assert start!26492)

(declare-fun res!138925 () Bool)

(declare-fun e!175925 () Bool)

(assert (=> start!26492 (=> (not res!138925) (not e!175925))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26492 (= res!138925 (validMask!0 mask!3868))))

(assert (=> start!26492 e!175925))

(declare-datatypes ((array!13578 0))(
  ( (array!13579 (arr!6438 (Array (_ BitVec 32) (_ BitVec 64))) (size!6790 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13578)

(declare-fun array_inv!4392 (array!13578) Bool)

(assert (=> start!26492 (array_inv!4392 a!3325)))

(assert (=> start!26492 true))

(declare-fun b!274894 () Bool)

(declare-fun res!138924 () Bool)

(assert (=> b!274894 (=> (not res!138924) (not e!175925))))

(declare-datatypes ((List!4267 0))(
  ( (Nil!4264) (Cons!4263 (h!4930 (_ BitVec 64)) (t!9357 List!4267)) )
))
(declare-fun arrayNoDuplicates!0 (array!13578 (_ BitVec 32) List!4267) Bool)

(assert (=> b!274894 (= res!138924 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4264))))

(declare-fun b!274895 () Bool)

(declare-fun e!175926 () Bool)

(assert (=> b!274895 (= e!175926 false)))

(declare-fun lt!137242 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13578 (_ BitVec 32)) Bool)

(assert (=> b!274895 (= lt!137242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274896 () Bool)

(assert (=> b!274896 (= e!175925 e!175926)))

(declare-fun res!138927 () Bool)

(assert (=> b!274896 (=> (not res!138927) (not e!175926))))

(declare-datatypes ((SeekEntryResult!1607 0))(
  ( (MissingZero!1607 (index!8598 (_ BitVec 32))) (Found!1607 (index!8599 (_ BitVec 32))) (Intermediate!1607 (undefined!2419 Bool) (index!8600 (_ BitVec 32)) (x!26852 (_ BitVec 32))) (Undefined!1607) (MissingVacant!1607 (index!8601 (_ BitVec 32))) )
))
(declare-fun lt!137243 () SeekEntryResult!1607)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274896 (= res!138927 (or (= lt!137243 (MissingZero!1607 i!1267)) (= lt!137243 (MissingVacant!1607 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13578 (_ BitVec 32)) SeekEntryResult!1607)

(assert (=> b!274896 (= lt!137243 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274897 () Bool)

(declare-fun res!138922 () Bool)

(assert (=> b!274897 (=> (not res!138922) (not e!175925))))

(declare-fun arrayContainsKey!0 (array!13578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274897 (= res!138922 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274898 () Bool)

(declare-fun res!138926 () Bool)

(assert (=> b!274898 (=> (not res!138926) (not e!175925))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274898 (= res!138926 (and (= (size!6790 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6790 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6790 a!3325))))))

(declare-fun b!274899 () Bool)

(declare-fun res!138923 () Bool)

(assert (=> b!274899 (=> (not res!138923) (not e!175925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274899 (= res!138923 (validKeyInArray!0 k!2581))))

(assert (= (and start!26492 res!138925) b!274898))

(assert (= (and b!274898 res!138926) b!274899))

(assert (= (and b!274899 res!138923) b!274894))

(assert (= (and b!274894 res!138924) b!274897))

(assert (= (and b!274897 res!138922) b!274896))

(assert (= (and b!274896 res!138927) b!274895))

(declare-fun m!290615 () Bool)

(assert (=> b!274896 m!290615))

(declare-fun m!290617 () Bool)

(assert (=> b!274899 m!290617))

(declare-fun m!290619 () Bool)

(assert (=> b!274897 m!290619))

(declare-fun m!290621 () Bool)

(assert (=> start!26492 m!290621))

(declare-fun m!290623 () Bool)

(assert (=> start!26492 m!290623))

(declare-fun m!290625 () Bool)

(assert (=> b!274894 m!290625))

(declare-fun m!290627 () Bool)

(assert (=> b!274895 m!290627))

(push 1)

(assert (not start!26492))

(assert (not b!274895))

(assert (not b!274897))

(assert (not b!274894))

(assert (not b!274899))

(assert (not b!274896))

