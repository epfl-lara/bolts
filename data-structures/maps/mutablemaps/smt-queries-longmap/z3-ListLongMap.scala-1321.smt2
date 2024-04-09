; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26496 () Bool)

(assert start!26496)

(declare-fun b!274930 () Bool)

(declare-fun res!138960 () Bool)

(declare-fun e!175943 () Bool)

(assert (=> b!274930 (=> (not res!138960) (not e!175943))))

(declare-datatypes ((array!13582 0))(
  ( (array!13583 (arr!6440 (Array (_ BitVec 32) (_ BitVec 64))) (size!6792 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13582)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274930 (= res!138960 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274931 () Bool)

(declare-fun e!175944 () Bool)

(assert (=> b!274931 (= e!175943 e!175944)))

(declare-fun res!138961 () Bool)

(assert (=> b!274931 (=> (not res!138961) (not e!175944))))

(declare-datatypes ((SeekEntryResult!1609 0))(
  ( (MissingZero!1609 (index!8606 (_ BitVec 32))) (Found!1609 (index!8607 (_ BitVec 32))) (Intermediate!1609 (undefined!2421 Bool) (index!8608 (_ BitVec 32)) (x!26862 (_ BitVec 32))) (Undefined!1609) (MissingVacant!1609 (index!8609 (_ BitVec 32))) )
))
(declare-fun lt!137254 () SeekEntryResult!1609)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274931 (= res!138961 (or (= lt!137254 (MissingZero!1609 i!1267)) (= lt!137254 (MissingVacant!1609 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13582 (_ BitVec 32)) SeekEntryResult!1609)

(assert (=> b!274931 (= lt!137254 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!138963 () Bool)

(assert (=> start!26496 (=> (not res!138963) (not e!175943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26496 (= res!138963 (validMask!0 mask!3868))))

(assert (=> start!26496 e!175943))

(declare-fun array_inv!4394 (array!13582) Bool)

(assert (=> start!26496 (array_inv!4394 a!3325)))

(assert (=> start!26496 true))

(declare-fun b!274932 () Bool)

(declare-fun res!138958 () Bool)

(assert (=> b!274932 (=> (not res!138958) (not e!175943))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274932 (= res!138958 (and (= (size!6792 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6792 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6792 a!3325))))))

(declare-fun b!274933 () Bool)

(declare-fun res!138959 () Bool)

(assert (=> b!274933 (=> (not res!138959) (not e!175943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274933 (= res!138959 (validKeyInArray!0 k0!2581))))

(declare-fun b!274934 () Bool)

(assert (=> b!274934 (= e!175944 false)))

(declare-fun lt!137255 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13582 (_ BitVec 32)) Bool)

(assert (=> b!274934 (= lt!137255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274935 () Bool)

(declare-fun res!138962 () Bool)

(assert (=> b!274935 (=> (not res!138962) (not e!175943))))

(declare-datatypes ((List!4269 0))(
  ( (Nil!4266) (Cons!4265 (h!4932 (_ BitVec 64)) (t!9359 List!4269)) )
))
(declare-fun arrayNoDuplicates!0 (array!13582 (_ BitVec 32) List!4269) Bool)

(assert (=> b!274935 (= res!138962 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4266))))

(assert (= (and start!26496 res!138963) b!274932))

(assert (= (and b!274932 res!138958) b!274933))

(assert (= (and b!274933 res!138959) b!274935))

(assert (= (and b!274935 res!138962) b!274930))

(assert (= (and b!274930 res!138960) b!274931))

(assert (= (and b!274931 res!138961) b!274934))

(declare-fun m!290643 () Bool)

(assert (=> b!274931 m!290643))

(declare-fun m!290645 () Bool)

(assert (=> b!274934 m!290645))

(declare-fun m!290647 () Bool)

(assert (=> b!274930 m!290647))

(declare-fun m!290649 () Bool)

(assert (=> start!26496 m!290649))

(declare-fun m!290651 () Bool)

(assert (=> start!26496 m!290651))

(declare-fun m!290653 () Bool)

(assert (=> b!274933 m!290653))

(declare-fun m!290655 () Bool)

(assert (=> b!274935 m!290655))

(check-sat (not b!274930) (not start!26496) (not b!274935) (not b!274934) (not b!274933) (not b!274931))
(check-sat)
