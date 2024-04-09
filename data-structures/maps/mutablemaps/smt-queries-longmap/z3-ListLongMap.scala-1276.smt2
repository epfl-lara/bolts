; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26226 () Bool)

(assert start!26226)

(declare-fun b!271095 () Bool)

(declare-fun e!174467 () Bool)

(assert (=> b!271095 (= e!174467 false)))

(declare-fun lt!135779 () Bool)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4134 0))(
  ( (Nil!4131) (Cons!4130 (h!4797 (_ BitVec 64)) (t!9224 List!4134)) )
))
(declare-fun contains!1943 (List!4134 (_ BitVec 64)) Bool)

(assert (=> b!271095 (= lt!135779 (contains!1943 Nil!4131 k0!2581))))

(declare-fun b!271097 () Bool)

(declare-fun res!135127 () Bool)

(declare-fun e!174469 () Bool)

(assert (=> b!271097 (=> (not res!135127) (not e!174469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271097 (= res!135127 (validKeyInArray!0 k0!2581))))

(declare-fun b!271098 () Bool)

(declare-fun res!135129 () Bool)

(assert (=> b!271098 (=> (not res!135129) (not e!174467))))

(assert (=> b!271098 (= res!135129 (not (contains!1943 Nil!4131 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271099 () Bool)

(declare-fun res!135125 () Bool)

(assert (=> b!271099 (=> (not res!135125) (not e!174467))))

(assert (=> b!271099 (= res!135125 (not (contains!1943 Nil!4131 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271100 () Bool)

(declare-fun res!135128 () Bool)

(assert (=> b!271100 (=> (not res!135128) (not e!174467))))

(declare-fun noDuplicate!132 (List!4134) Bool)

(assert (=> b!271100 (= res!135128 (noDuplicate!132 Nil!4131))))

(declare-fun b!271101 () Bool)

(declare-fun res!135135 () Bool)

(assert (=> b!271101 (=> (not res!135135) (not e!174467))))

(declare-datatypes ((array!13312 0))(
  ( (array!13313 (arr!6305 (Array (_ BitVec 32) (_ BitVec 64))) (size!6657 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13312)

(assert (=> b!271101 (= res!135135 (and (bvslt (size!6657 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6657 a!3325))))))

(declare-fun b!271102 () Bool)

(declare-fun res!135133 () Bool)

(assert (=> b!271102 (=> (not res!135133) (not e!174467))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271102 (= res!135133 (validKeyInArray!0 (select (arr!6305 a!3325) startIndex!26)))))

(declare-fun res!135132 () Bool)

(assert (=> start!26226 (=> (not res!135132) (not e!174469))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26226 (= res!135132 (validMask!0 mask!3868))))

(assert (=> start!26226 e!174469))

(declare-fun array_inv!4259 (array!13312) Bool)

(assert (=> start!26226 (array_inv!4259 a!3325)))

(assert (=> start!26226 true))

(declare-fun b!271096 () Bool)

(declare-fun res!135134 () Bool)

(assert (=> b!271096 (=> (not res!135134) (not e!174467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13312 (_ BitVec 32)) Bool)

(assert (=> b!271096 (= res!135134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271103 () Bool)

(assert (=> b!271103 (= e!174469 e!174467)))

(declare-fun res!135123 () Bool)

(assert (=> b!271103 (=> (not res!135123) (not e!174467))))

(declare-datatypes ((SeekEntryResult!1474 0))(
  ( (MissingZero!1474 (index!8066 (_ BitVec 32))) (Found!1474 (index!8067 (_ BitVec 32))) (Intermediate!1474 (undefined!2286 Bool) (index!8068 (_ BitVec 32)) (x!26367 (_ BitVec 32))) (Undefined!1474) (MissingVacant!1474 (index!8069 (_ BitVec 32))) )
))
(declare-fun lt!135778 () SeekEntryResult!1474)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271103 (= res!135123 (or (= lt!135778 (MissingZero!1474 i!1267)) (= lt!135778 (MissingVacant!1474 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13312 (_ BitVec 32)) SeekEntryResult!1474)

(assert (=> b!271103 (= lt!135778 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271104 () Bool)

(declare-fun res!135126 () Bool)

(assert (=> b!271104 (=> (not res!135126) (not e!174467))))

(assert (=> b!271104 (= res!135126 (not (= startIndex!26 i!1267)))))

(declare-fun b!271105 () Bool)

(declare-fun res!135130 () Bool)

(assert (=> b!271105 (=> (not res!135130) (not e!174469))))

(declare-fun arrayContainsKey!0 (array!13312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271105 (= res!135130 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271106 () Bool)

(declare-fun res!135124 () Bool)

(assert (=> b!271106 (=> (not res!135124) (not e!174469))))

(assert (=> b!271106 (= res!135124 (and (= (size!6657 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6657 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6657 a!3325))))))

(declare-fun b!271107 () Bool)

(declare-fun res!135131 () Bool)

(assert (=> b!271107 (=> (not res!135131) (not e!174469))))

(declare-fun arrayNoDuplicates!0 (array!13312 (_ BitVec 32) List!4134) Bool)

(assert (=> b!271107 (= res!135131 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4131))))

(assert (= (and start!26226 res!135132) b!271106))

(assert (= (and b!271106 res!135124) b!271097))

(assert (= (and b!271097 res!135127) b!271107))

(assert (= (and b!271107 res!135131) b!271105))

(assert (= (and b!271105 res!135130) b!271103))

(assert (= (and b!271103 res!135123) b!271096))

(assert (= (and b!271096 res!135134) b!271104))

(assert (= (and b!271104 res!135126) b!271102))

(assert (= (and b!271102 res!135133) b!271101))

(assert (= (and b!271101 res!135135) b!271100))

(assert (= (and b!271100 res!135128) b!271099))

(assert (= (and b!271099 res!135125) b!271098))

(assert (= (and b!271098 res!135129) b!271095))

(declare-fun m!286521 () Bool)

(assert (=> b!271100 m!286521))

(declare-fun m!286523 () Bool)

(assert (=> b!271103 m!286523))

(declare-fun m!286525 () Bool)

(assert (=> b!271107 m!286525))

(declare-fun m!286527 () Bool)

(assert (=> b!271097 m!286527))

(declare-fun m!286529 () Bool)

(assert (=> b!271095 m!286529))

(declare-fun m!286531 () Bool)

(assert (=> b!271102 m!286531))

(assert (=> b!271102 m!286531))

(declare-fun m!286533 () Bool)

(assert (=> b!271102 m!286533))

(declare-fun m!286535 () Bool)

(assert (=> b!271098 m!286535))

(declare-fun m!286537 () Bool)

(assert (=> b!271099 m!286537))

(declare-fun m!286539 () Bool)

(assert (=> b!271096 m!286539))

(declare-fun m!286541 () Bool)

(assert (=> start!26226 m!286541))

(declare-fun m!286543 () Bool)

(assert (=> start!26226 m!286543))

(declare-fun m!286545 () Bool)

(assert (=> b!271105 m!286545))

(check-sat (not b!271102) (not b!271097) (not b!271095) (not b!271099) (not b!271100) (not b!271098) (not b!271103) (not b!271096) (not b!271105) (not b!271107) (not start!26226))
(check-sat)
