; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26530 () Bool)

(assert start!26530)

(declare-fun b!275236 () Bool)

(declare-fun e!176097 () Bool)

(declare-fun e!176096 () Bool)

(assert (=> b!275236 (= e!176097 e!176096)))

(declare-fun res!139267 () Bool)

(assert (=> b!275236 (=> (not res!139267) (not e!176096))))

(declare-datatypes ((SeekEntryResult!1626 0))(
  ( (MissingZero!1626 (index!8674 (_ BitVec 32))) (Found!1626 (index!8675 (_ BitVec 32))) (Intermediate!1626 (undefined!2438 Bool) (index!8676 (_ BitVec 32)) (x!26927 (_ BitVec 32))) (Undefined!1626) (MissingVacant!1626 (index!8677 (_ BitVec 32))) )
))
(declare-fun lt!137357 () SeekEntryResult!1626)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275236 (= res!139267 (or (= lt!137357 (MissingZero!1626 i!1267)) (= lt!137357 (MissingVacant!1626 i!1267))))))

(declare-datatypes ((array!13616 0))(
  ( (array!13617 (arr!6457 (Array (_ BitVec 32) (_ BitVec 64))) (size!6809 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13616)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13616 (_ BitVec 32)) SeekEntryResult!1626)

(assert (=> b!275236 (= lt!137357 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275237 () Bool)

(assert (=> b!275237 (= e!176096 false)))

(declare-fun lt!137356 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13616 (_ BitVec 32)) Bool)

(assert (=> b!275237 (= lt!137356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275238 () Bool)

(declare-fun res!139266 () Bool)

(assert (=> b!275238 (=> (not res!139266) (not e!176097))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275238 (= res!139266 (validKeyInArray!0 k!2581))))

(declare-fun b!275239 () Bool)

(declare-fun res!139268 () Bool)

(assert (=> b!275239 (=> (not res!139268) (not e!176097))))

(declare-fun arrayContainsKey!0 (array!13616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275239 (= res!139268 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!139265 () Bool)

(assert (=> start!26530 (=> (not res!139265) (not e!176097))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26530 (= res!139265 (validMask!0 mask!3868))))

(assert (=> start!26530 e!176097))

(declare-fun array_inv!4411 (array!13616) Bool)

(assert (=> start!26530 (array_inv!4411 a!3325)))

(assert (=> start!26530 true))

(declare-fun b!275240 () Bool)

(declare-fun res!139264 () Bool)

(assert (=> b!275240 (=> (not res!139264) (not e!176097))))

(declare-datatypes ((List!4286 0))(
  ( (Nil!4283) (Cons!4282 (h!4949 (_ BitVec 64)) (t!9376 List!4286)) )
))
(declare-fun arrayNoDuplicates!0 (array!13616 (_ BitVec 32) List!4286) Bool)

(assert (=> b!275240 (= res!139264 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4283))))

(declare-fun b!275241 () Bool)

(declare-fun res!139269 () Bool)

(assert (=> b!275241 (=> (not res!139269) (not e!176097))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275241 (= res!139269 (and (= (size!6809 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6809 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6809 a!3325))))))

(assert (= (and start!26530 res!139265) b!275241))

(assert (= (and b!275241 res!139269) b!275238))

(assert (= (and b!275238 res!139266) b!275240))

(assert (= (and b!275240 res!139264) b!275239))

(assert (= (and b!275239 res!139268) b!275236))

(assert (= (and b!275236 res!139267) b!275237))

(declare-fun m!290881 () Bool)

(assert (=> b!275237 m!290881))

(declare-fun m!290883 () Bool)

(assert (=> b!275238 m!290883))

(declare-fun m!290885 () Bool)

(assert (=> b!275239 m!290885))

(declare-fun m!290887 () Bool)

(assert (=> start!26530 m!290887))

(declare-fun m!290889 () Bool)

(assert (=> start!26530 m!290889))

(declare-fun m!290891 () Bool)

(assert (=> b!275236 m!290891))

(declare-fun m!290893 () Bool)

(assert (=> b!275240 m!290893))

(push 1)

(assert (not b!275240))

(assert (not b!275239))

