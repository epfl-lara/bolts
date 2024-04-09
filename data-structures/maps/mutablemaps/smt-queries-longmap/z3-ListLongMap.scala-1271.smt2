; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26196 () Bool)

(assert start!26196)

(declare-fun b!270510 () Bool)

(declare-fun res!134542 () Bool)

(declare-fun e!174333 () Bool)

(assert (=> b!270510 (=> (not res!134542) (not e!174333))))

(declare-datatypes ((array!13282 0))(
  ( (array!13283 (arr!6290 (Array (_ BitVec 32) (_ BitVec 64))) (size!6642 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13282)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270510 (= res!134542 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270511 () Bool)

(declare-fun res!134549 () Bool)

(declare-fun e!174334 () Bool)

(assert (=> b!270511 (=> (not res!134549) (not e!174334))))

(declare-datatypes ((List!4119 0))(
  ( (Nil!4116) (Cons!4115 (h!4782 (_ BitVec 64)) (t!9209 List!4119)) )
))
(declare-fun contains!1928 (List!4119 (_ BitVec 64)) Bool)

(assert (=> b!270511 (= res!134549 (not (contains!1928 Nil!4116 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270512 () Bool)

(declare-fun res!134548 () Bool)

(assert (=> b!270512 (=> (not res!134548) (not e!174333))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270512 (= res!134548 (and (= (size!6642 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6642 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6642 a!3325))))))

(declare-fun b!270513 () Bool)

(assert (=> b!270513 (= e!174333 e!174334)))

(declare-fun res!134539 () Bool)

(assert (=> b!270513 (=> (not res!134539) (not e!174334))))

(declare-datatypes ((SeekEntryResult!1459 0))(
  ( (MissingZero!1459 (index!8006 (_ BitVec 32))) (Found!1459 (index!8007 (_ BitVec 32))) (Intermediate!1459 (undefined!2271 Bool) (index!8008 (_ BitVec 32)) (x!26312 (_ BitVec 32))) (Undefined!1459) (MissingVacant!1459 (index!8009 (_ BitVec 32))) )
))
(declare-fun lt!135689 () SeekEntryResult!1459)

(assert (=> b!270513 (= res!134539 (or (= lt!135689 (MissingZero!1459 i!1267)) (= lt!135689 (MissingVacant!1459 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13282 (_ BitVec 32)) SeekEntryResult!1459)

(assert (=> b!270513 (= lt!135689 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!134546 () Bool)

(assert (=> start!26196 (=> (not res!134546) (not e!174333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26196 (= res!134546 (validMask!0 mask!3868))))

(assert (=> start!26196 e!174333))

(declare-fun array_inv!4244 (array!13282) Bool)

(assert (=> start!26196 (array_inv!4244 a!3325)))

(assert (=> start!26196 true))

(declare-fun b!270514 () Bool)

(declare-fun res!134538 () Bool)

(assert (=> b!270514 (=> (not res!134538) (not e!174333))))

(declare-fun arrayNoDuplicates!0 (array!13282 (_ BitVec 32) List!4119) Bool)

(assert (=> b!270514 (= res!134538 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4116))))

(declare-fun b!270515 () Bool)

(declare-fun res!134540 () Bool)

(assert (=> b!270515 (=> (not res!134540) (not e!174334))))

(assert (=> b!270515 (= res!134540 (and (bvslt (size!6642 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6642 a!3325))))))

(declare-fun b!270516 () Bool)

(declare-fun res!134547 () Bool)

(assert (=> b!270516 (=> (not res!134547) (not e!174334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270516 (= res!134547 (validKeyInArray!0 (select (arr!6290 a!3325) startIndex!26)))))

(declare-fun b!270517 () Bool)

(declare-fun res!134543 () Bool)

(assert (=> b!270517 (=> (not res!134543) (not e!174334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13282 (_ BitVec 32)) Bool)

(assert (=> b!270517 (= res!134543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270518 () Bool)

(declare-fun res!134544 () Bool)

(assert (=> b!270518 (=> (not res!134544) (not e!174333))))

(assert (=> b!270518 (= res!134544 (validKeyInArray!0 k0!2581))))

(declare-fun b!270519 () Bool)

(declare-fun res!134541 () Bool)

(assert (=> b!270519 (=> (not res!134541) (not e!174334))))

(assert (=> b!270519 (= res!134541 (not (= startIndex!26 i!1267)))))

(declare-fun b!270520 () Bool)

(assert (=> b!270520 (= e!174334 false)))

(declare-fun lt!135688 () Bool)

(assert (=> b!270520 (= lt!135688 (contains!1928 Nil!4116 k0!2581))))

(declare-fun b!270521 () Bool)

(declare-fun res!134550 () Bool)

(assert (=> b!270521 (=> (not res!134550) (not e!174334))))

(declare-fun noDuplicate!117 (List!4119) Bool)

(assert (=> b!270521 (= res!134550 (noDuplicate!117 Nil!4116))))

(declare-fun b!270522 () Bool)

(declare-fun res!134545 () Bool)

(assert (=> b!270522 (=> (not res!134545) (not e!174334))))

(assert (=> b!270522 (= res!134545 (not (contains!1928 Nil!4116 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!26196 res!134546) b!270512))

(assert (= (and b!270512 res!134548) b!270518))

(assert (= (and b!270518 res!134544) b!270514))

(assert (= (and b!270514 res!134538) b!270510))

(assert (= (and b!270510 res!134542) b!270513))

(assert (= (and b!270513 res!134539) b!270517))

(assert (= (and b!270517 res!134543) b!270519))

(assert (= (and b!270519 res!134541) b!270516))

(assert (= (and b!270516 res!134547) b!270515))

(assert (= (and b!270515 res!134540) b!270521))

(assert (= (and b!270521 res!134550) b!270511))

(assert (= (and b!270511 res!134549) b!270522))

(assert (= (and b!270522 res!134545) b!270520))

(declare-fun m!286131 () Bool)

(assert (=> b!270513 m!286131))

(declare-fun m!286133 () Bool)

(assert (=> b!270521 m!286133))

(declare-fun m!286135 () Bool)

(assert (=> b!270520 m!286135))

(declare-fun m!286137 () Bool)

(assert (=> b!270517 m!286137))

(declare-fun m!286139 () Bool)

(assert (=> b!270514 m!286139))

(declare-fun m!286141 () Bool)

(assert (=> b!270516 m!286141))

(assert (=> b!270516 m!286141))

(declare-fun m!286143 () Bool)

(assert (=> b!270516 m!286143))

(declare-fun m!286145 () Bool)

(assert (=> start!26196 m!286145))

(declare-fun m!286147 () Bool)

(assert (=> start!26196 m!286147))

(declare-fun m!286149 () Bool)

(assert (=> b!270511 m!286149))

(declare-fun m!286151 () Bool)

(assert (=> b!270518 m!286151))

(declare-fun m!286153 () Bool)

(assert (=> b!270510 m!286153))

(declare-fun m!286155 () Bool)

(assert (=> b!270522 m!286155))

(check-sat (not b!270517) (not b!270511) (not start!26196) (not b!270518) (not b!270522) (not b!270514) (not b!270513) (not b!270510) (not b!270521) (not b!270516) (not b!270520))
(check-sat)
