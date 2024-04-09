; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26090 () Bool)

(assert start!26090)

(declare-fun b!268945 () Bool)

(declare-fun e!173639 () Bool)

(declare-fun e!173640 () Bool)

(assert (=> b!268945 (= e!173639 e!173640)))

(declare-fun res!133264 () Bool)

(assert (=> b!268945 (=> (not res!133264) (not e!173640))))

(declare-datatypes ((SeekEntryResult!1406 0))(
  ( (MissingZero!1406 (index!7794 (_ BitVec 32))) (Found!1406 (index!7795 (_ BitVec 32))) (Intermediate!1406 (undefined!2218 Bool) (index!7796 (_ BitVec 32)) (x!26115 (_ BitVec 32))) (Undefined!1406) (MissingVacant!1406 (index!7797 (_ BitVec 32))) )
))
(declare-fun lt!135082 () SeekEntryResult!1406)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268945 (= res!133264 (or (= lt!135082 (MissingZero!1406 i!1267)) (= lt!135082 (MissingVacant!1406 i!1267))))))

(declare-datatypes ((array!13176 0))(
  ( (array!13177 (arr!6237 (Array (_ BitVec 32) (_ BitVec 64))) (size!6589 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13176)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13176 (_ BitVec 32)) SeekEntryResult!1406)

(assert (=> b!268945 (= lt!135082 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268946 () Bool)

(declare-fun res!133262 () Bool)

(assert (=> b!268946 (=> (not res!133262) (not e!173639))))

(declare-datatypes ((List!4066 0))(
  ( (Nil!4063) (Cons!4062 (h!4729 (_ BitVec 64)) (t!9156 List!4066)) )
))
(declare-fun arrayNoDuplicates!0 (array!13176 (_ BitVec 32) List!4066) Bool)

(assert (=> b!268946 (= res!133262 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4063))))

(declare-fun b!268947 () Bool)

(declare-fun res!133263 () Bool)

(assert (=> b!268947 (=> (not res!133263) (not e!173639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268947 (= res!133263 (validKeyInArray!0 k!2581))))

(declare-fun b!268948 () Bool)

(declare-fun res!133266 () Bool)

(assert (=> b!268948 (=> (not res!133266) (not e!173639))))

(declare-fun arrayContainsKey!0 (array!13176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268948 (= res!133266 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268950 () Bool)

(assert (=> b!268950 (= e!173640 false)))

(declare-fun lt!135083 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13176 (_ BitVec 32)) Bool)

(assert (=> b!268950 (= lt!135083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133265 () Bool)

(assert (=> start!26090 (=> (not res!133265) (not e!173639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26090 (= res!133265 (validMask!0 mask!3868))))

(assert (=> start!26090 e!173639))

(declare-fun array_inv!4191 (array!13176) Bool)

(assert (=> start!26090 (array_inv!4191 a!3325)))

(assert (=> start!26090 true))

(declare-fun b!268949 () Bool)

(declare-fun res!133261 () Bool)

(assert (=> b!268949 (=> (not res!133261) (not e!173639))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268949 (= res!133261 (and (= (size!6589 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6589 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6589 a!3325))))))

(assert (= (and start!26090 res!133265) b!268949))

(assert (= (and b!268949 res!133261) b!268947))

(assert (= (and b!268947 res!133263) b!268946))

(assert (= (and b!268946 res!133262) b!268948))

(assert (= (and b!268948 res!133266) b!268945))

(assert (= (and b!268945 res!133264) b!268950))

(declare-fun m!284993 () Bool)

(assert (=> b!268947 m!284993))

(declare-fun m!284995 () Bool)

(assert (=> b!268948 m!284995))

(declare-fun m!284997 () Bool)

(assert (=> b!268950 m!284997))

(declare-fun m!284999 () Bool)

(assert (=> start!26090 m!284999))

(declare-fun m!285001 () Bool)

(assert (=> start!26090 m!285001))

(declare-fun m!285003 () Bool)

(assert (=> b!268946 m!285003))

(declare-fun m!285005 () Bool)

(assert (=> b!268945 m!285005))

(push 1)

(assert (not b!268948))

(assert (not b!268945))

(assert (not b!268946))

(assert (not start!26090))

