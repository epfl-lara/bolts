; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26250 () Bool)

(assert start!26250)

(declare-fun b!271563 () Bool)

(declare-fun res!135596 () Bool)

(declare-fun e!174576 () Bool)

(assert (=> b!271563 (=> (not res!135596) (not e!174576))))

(declare-datatypes ((array!13336 0))(
  ( (array!13337 (arr!6317 (Array (_ BitVec 32) (_ BitVec 64))) (size!6669 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13336)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271563 (= res!135596 (and (= (size!6669 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6669 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6669 a!3325))))))

(declare-fun b!271564 () Bool)

(declare-fun res!135592 () Bool)

(declare-fun e!174577 () Bool)

(assert (=> b!271564 (=> (not res!135592) (not e!174577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13336 (_ BitVec 32)) Bool)

(assert (=> b!271564 (= res!135592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!135591 () Bool)

(assert (=> start!26250 (=> (not res!135591) (not e!174576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26250 (= res!135591 (validMask!0 mask!3868))))

(assert (=> start!26250 e!174576))

(declare-fun array_inv!4271 (array!13336) Bool)

(assert (=> start!26250 (array_inv!4271 a!3325)))

(assert (=> start!26250 true))

(declare-fun b!271565 () Bool)

(declare-fun res!135599 () Bool)

(assert (=> b!271565 (=> (not res!135599) (not e!174577))))

(declare-datatypes ((List!4146 0))(
  ( (Nil!4143) (Cons!4142 (h!4809 (_ BitVec 64)) (t!9236 List!4146)) )
))
(declare-fun noDuplicate!144 (List!4146) Bool)

(assert (=> b!271565 (= res!135599 (noDuplicate!144 Nil!4143))))

(declare-fun b!271566 () Bool)

(assert (=> b!271566 (= e!174576 e!174577)))

(declare-fun res!135593 () Bool)

(assert (=> b!271566 (=> (not res!135593) (not e!174577))))

(declare-datatypes ((SeekEntryResult!1486 0))(
  ( (MissingZero!1486 (index!8114 (_ BitVec 32))) (Found!1486 (index!8115 (_ BitVec 32))) (Intermediate!1486 (undefined!2298 Bool) (index!8116 (_ BitVec 32)) (x!26411 (_ BitVec 32))) (Undefined!1486) (MissingVacant!1486 (index!8117 (_ BitVec 32))) )
))
(declare-fun lt!135851 () SeekEntryResult!1486)

(assert (=> b!271566 (= res!135593 (or (= lt!135851 (MissingZero!1486 i!1267)) (= lt!135851 (MissingVacant!1486 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13336 (_ BitVec 32)) SeekEntryResult!1486)

(assert (=> b!271566 (= lt!135851 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271567 () Bool)

(assert (=> b!271567 (= e!174577 false)))

(declare-fun lt!135850 () Bool)

(declare-fun contains!1955 (List!4146 (_ BitVec 64)) Bool)

(assert (=> b!271567 (= lt!135850 (contains!1955 Nil!4143 k0!2581))))

(declare-fun b!271568 () Bool)

(declare-fun res!135603 () Bool)

(assert (=> b!271568 (=> (not res!135603) (not e!174577))))

(assert (=> b!271568 (= res!135603 (and (bvslt (size!6669 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6669 a!3325))))))

(declare-fun b!271569 () Bool)

(declare-fun res!135594 () Bool)

(assert (=> b!271569 (=> (not res!135594) (not e!174577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271569 (= res!135594 (validKeyInArray!0 (select (arr!6317 a!3325) startIndex!26)))))

(declare-fun b!271570 () Bool)

(declare-fun res!135600 () Bool)

(assert (=> b!271570 (=> (not res!135600) (not e!174577))))

(assert (=> b!271570 (= res!135600 (not (contains!1955 Nil!4143 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271571 () Bool)

(declare-fun res!135597 () Bool)

(assert (=> b!271571 (=> (not res!135597) (not e!174576))))

(assert (=> b!271571 (= res!135597 (validKeyInArray!0 k0!2581))))

(declare-fun b!271572 () Bool)

(declare-fun res!135598 () Bool)

(assert (=> b!271572 (=> (not res!135598) (not e!174576))))

(declare-fun arrayContainsKey!0 (array!13336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271572 (= res!135598 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271573 () Bool)

(declare-fun res!135595 () Bool)

(assert (=> b!271573 (=> (not res!135595) (not e!174577))))

(assert (=> b!271573 (= res!135595 (not (= startIndex!26 i!1267)))))

(declare-fun b!271574 () Bool)

(declare-fun res!135602 () Bool)

(assert (=> b!271574 (=> (not res!135602) (not e!174576))))

(declare-fun arrayNoDuplicates!0 (array!13336 (_ BitVec 32) List!4146) Bool)

(assert (=> b!271574 (= res!135602 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4143))))

(declare-fun b!271575 () Bool)

(declare-fun res!135601 () Bool)

(assert (=> b!271575 (=> (not res!135601) (not e!174577))))

(assert (=> b!271575 (= res!135601 (not (contains!1955 Nil!4143 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!26250 res!135591) b!271563))

(assert (= (and b!271563 res!135596) b!271571))

(assert (= (and b!271571 res!135597) b!271574))

(assert (= (and b!271574 res!135602) b!271572))

(assert (= (and b!271572 res!135598) b!271566))

(assert (= (and b!271566 res!135593) b!271564))

(assert (= (and b!271564 res!135592) b!271573))

(assert (= (and b!271573 res!135595) b!271569))

(assert (= (and b!271569 res!135594) b!271568))

(assert (= (and b!271568 res!135603) b!271565))

(assert (= (and b!271565 res!135599) b!271570))

(assert (= (and b!271570 res!135600) b!271575))

(assert (= (and b!271575 res!135601) b!271567))

(declare-fun m!286833 () Bool)

(assert (=> b!271565 m!286833))

(declare-fun m!286835 () Bool)

(assert (=> b!271571 m!286835))

(declare-fun m!286837 () Bool)

(assert (=> b!271564 m!286837))

(declare-fun m!286839 () Bool)

(assert (=> b!271569 m!286839))

(assert (=> b!271569 m!286839))

(declare-fun m!286841 () Bool)

(assert (=> b!271569 m!286841))

(declare-fun m!286843 () Bool)

(assert (=> b!271574 m!286843))

(declare-fun m!286845 () Bool)

(assert (=> b!271572 m!286845))

(declare-fun m!286847 () Bool)

(assert (=> start!26250 m!286847))

(declare-fun m!286849 () Bool)

(assert (=> start!26250 m!286849))

(declare-fun m!286851 () Bool)

(assert (=> b!271570 m!286851))

(declare-fun m!286853 () Bool)

(assert (=> b!271567 m!286853))

(declare-fun m!286855 () Bool)

(assert (=> b!271575 m!286855))

(declare-fun m!286857 () Bool)

(assert (=> b!271566 m!286857))

(check-sat (not b!271572) (not b!271569) (not b!271564) (not b!271570) (not b!271571) (not b!271565) (not start!26250) (not b!271574) (not b!271566) (not b!271575) (not b!271567))
(check-sat)
