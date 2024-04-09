; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26620 () Bool)

(assert start!26620)

(declare-fun b!276226 () Bool)

(declare-fun e!176501 () Bool)

(assert (=> b!276226 (= e!176501 false)))

(declare-fun lt!137608 () Bool)

(declare-datatypes ((array!13706 0))(
  ( (array!13707 (arr!6502 (Array (_ BitVec 32) (_ BitVec 64))) (size!6854 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13706)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13706 (_ BitVec 32)) Bool)

(assert (=> b!276226 (= lt!137608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276227 () Bool)

(declare-fun res!140257 () Bool)

(declare-fun e!176502 () Bool)

(assert (=> b!276227 (=> (not res!140257) (not e!176502))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276227 (= res!140257 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276228 () Bool)

(declare-fun res!140258 () Bool)

(assert (=> b!276228 (=> (not res!140258) (not e!176502))))

(declare-datatypes ((List!4331 0))(
  ( (Nil!4328) (Cons!4327 (h!4994 (_ BitVec 64)) (t!9421 List!4331)) )
))
(declare-fun arrayNoDuplicates!0 (array!13706 (_ BitVec 32) List!4331) Bool)

(assert (=> b!276228 (= res!140258 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4328))))

(declare-fun res!140254 () Bool)

(assert (=> start!26620 (=> (not res!140254) (not e!176502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26620 (= res!140254 (validMask!0 mask!3868))))

(assert (=> start!26620 e!176502))

(declare-fun array_inv!4456 (array!13706) Bool)

(assert (=> start!26620 (array_inv!4456 a!3325)))

(assert (=> start!26620 true))

(declare-fun b!276229 () Bool)

(declare-fun res!140255 () Bool)

(assert (=> b!276229 (=> (not res!140255) (not e!176502))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276229 (= res!140255 (and (= (size!6854 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6854 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6854 a!3325))))))

(declare-fun b!276230 () Bool)

(declare-fun res!140259 () Bool)

(assert (=> b!276230 (=> (not res!140259) (not e!176502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276230 (= res!140259 (validKeyInArray!0 k!2581))))

(declare-fun b!276231 () Bool)

(assert (=> b!276231 (= e!176502 e!176501)))

(declare-fun res!140256 () Bool)

(assert (=> b!276231 (=> (not res!140256) (not e!176501))))

(declare-datatypes ((SeekEntryResult!1671 0))(
  ( (MissingZero!1671 (index!8854 (_ BitVec 32))) (Found!1671 (index!8855 (_ BitVec 32))) (Intermediate!1671 (undefined!2483 Bool) (index!8856 (_ BitVec 32)) (x!27092 (_ BitVec 32))) (Undefined!1671) (MissingVacant!1671 (index!8857 (_ BitVec 32))) )
))
(declare-fun lt!137609 () SeekEntryResult!1671)

(assert (=> b!276231 (= res!140256 (or (= lt!137609 (MissingZero!1671 i!1267)) (= lt!137609 (MissingVacant!1671 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13706 (_ BitVec 32)) SeekEntryResult!1671)

(assert (=> b!276231 (= lt!137609 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26620 res!140254) b!276229))

(assert (= (and b!276229 res!140255) b!276230))

(assert (= (and b!276230 res!140259) b!276228))

(assert (= (and b!276228 res!140258) b!276227))

(assert (= (and b!276227 res!140257) b!276231))

(assert (= (and b!276231 res!140256) b!276226))

(declare-fun m!291643 () Bool)

(assert (=> b!276228 m!291643))

(declare-fun m!291645 () Bool)

(assert (=> b!276227 m!291645))

(declare-fun m!291647 () Bool)

(assert (=> b!276230 m!291647))

(declare-fun m!291649 () Bool)

(assert (=> b!276226 m!291649))

(declare-fun m!291651 () Bool)

(assert (=> start!26620 m!291651))

(declare-fun m!291653 () Bool)

(assert (=> start!26620 m!291653))

(declare-fun m!291655 () Bool)

(assert (=> b!276231 m!291655))

(push 1)

(assert (not b!276227))

(assert (not b!276226))

