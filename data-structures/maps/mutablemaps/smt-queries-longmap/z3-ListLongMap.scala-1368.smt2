; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26916 () Bool)

(assert start!26916)

(declare-fun b!278812 () Bool)

(declare-fun e!177823 () Bool)

(declare-fun e!177822 () Bool)

(assert (=> b!278812 (= e!177823 e!177822)))

(declare-fun res!142191 () Bool)

(assert (=> b!278812 (=> (not res!142191) (not e!177822))))

(declare-datatypes ((SeekEntryResult!1750 0))(
  ( (MissingZero!1750 (index!9170 (_ BitVec 32))) (Found!1750 (index!9171 (_ BitVec 32))) (Intermediate!1750 (undefined!2562 Bool) (index!9172 (_ BitVec 32)) (x!27388 (_ BitVec 32))) (Undefined!1750) (MissingVacant!1750 (index!9173 (_ BitVec 32))) )
))
(declare-fun lt!138524 () SeekEntryResult!1750)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278812 (= res!142191 (or (= lt!138524 (MissingZero!1750 i!1267)) (= lt!138524 (MissingVacant!1750 i!1267))))))

(declare-datatypes ((array!13870 0))(
  ( (array!13871 (arr!6581 (Array (_ BitVec 32) (_ BitVec 64))) (size!6933 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13870)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13870 (_ BitVec 32)) SeekEntryResult!1750)

(assert (=> b!278812 (= lt!138524 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!278813 () Bool)

(assert (=> b!278813 (= e!177822 false)))

(declare-fun lt!138523 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13870 (_ BitVec 32)) Bool)

(assert (=> b!278813 (= lt!138523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278814 () Bool)

(declare-fun res!142194 () Bool)

(assert (=> b!278814 (=> (not res!142194) (not e!177823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278814 (= res!142194 (validKeyInArray!0 k0!2581))))

(declare-fun b!278815 () Bool)

(declare-fun res!142193 () Bool)

(assert (=> b!278815 (=> (not res!142193) (not e!177823))))

(declare-fun arrayContainsKey!0 (array!13870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278815 (= res!142193 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!142189 () Bool)

(assert (=> start!26916 (=> (not res!142189) (not e!177823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26916 (= res!142189 (validMask!0 mask!3868))))

(assert (=> start!26916 e!177823))

(declare-fun array_inv!4535 (array!13870) Bool)

(assert (=> start!26916 (array_inv!4535 a!3325)))

(assert (=> start!26916 true))

(declare-fun b!278816 () Bool)

(declare-fun res!142192 () Bool)

(assert (=> b!278816 (=> (not res!142192) (not e!177823))))

(declare-datatypes ((List!4410 0))(
  ( (Nil!4407) (Cons!4406 (h!5076 (_ BitVec 64)) (t!9500 List!4410)) )
))
(declare-fun arrayNoDuplicates!0 (array!13870 (_ BitVec 32) List!4410) Bool)

(assert (=> b!278816 (= res!142192 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4407))))

(declare-fun b!278817 () Bool)

(declare-fun res!142190 () Bool)

(assert (=> b!278817 (=> (not res!142190) (not e!177823))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278817 (= res!142190 (and (= (size!6933 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6933 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6933 a!3325))))))

(assert (= (and start!26916 res!142189) b!278817))

(assert (= (and b!278817 res!142190) b!278814))

(assert (= (and b!278814 res!142194) b!278816))

(assert (= (and b!278816 res!142192) b!278815))

(assert (= (and b!278815 res!142193) b!278812))

(assert (= (and b!278812 res!142191) b!278813))

(declare-fun m!293799 () Bool)

(assert (=> b!278814 m!293799))

(declare-fun m!293801 () Bool)

(assert (=> b!278812 m!293801))

(declare-fun m!293803 () Bool)

(assert (=> b!278813 m!293803))

(declare-fun m!293805 () Bool)

(assert (=> start!26916 m!293805))

(declare-fun m!293807 () Bool)

(assert (=> start!26916 m!293807))

(declare-fun m!293809 () Bool)

(assert (=> b!278816 m!293809))

(declare-fun m!293811 () Bool)

(assert (=> b!278815 m!293811))

(check-sat (not b!278814) (not b!278815) (not b!278812) (not b!278816) (not b!278813) (not start!26916))
(check-sat)
