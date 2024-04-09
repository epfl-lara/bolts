; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26092 () Bool)

(assert start!26092)

(declare-fun b!268963 () Bool)

(declare-fun e!173650 () Bool)

(declare-fun e!173649 () Bool)

(assert (=> b!268963 (= e!173650 e!173649)))

(declare-fun res!133283 () Bool)

(assert (=> b!268963 (=> (not res!133283) (not e!173649))))

(declare-datatypes ((SeekEntryResult!1407 0))(
  ( (MissingZero!1407 (index!7798 (_ BitVec 32))) (Found!1407 (index!7799 (_ BitVec 32))) (Intermediate!1407 (undefined!2219 Bool) (index!7800 (_ BitVec 32)) (x!26124 (_ BitVec 32))) (Undefined!1407) (MissingVacant!1407 (index!7801 (_ BitVec 32))) )
))
(declare-fun lt!135088 () SeekEntryResult!1407)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!268963 (= res!133283 (or (= lt!135088 (MissingZero!1407 i!1267)) (= lt!135088 (MissingVacant!1407 i!1267))))))

(declare-datatypes ((array!13178 0))(
  ( (array!13179 (arr!6238 (Array (_ BitVec 32) (_ BitVec 64))) (size!6590 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13178)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13178 (_ BitVec 32)) SeekEntryResult!1407)

(assert (=> b!268963 (= lt!135088 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268964 () Bool)

(declare-fun res!133282 () Bool)

(assert (=> b!268964 (=> (not res!133282) (not e!173650))))

(declare-fun arrayContainsKey!0 (array!13178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268964 (= res!133282 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268966 () Bool)

(declare-fun res!133280 () Bool)

(assert (=> b!268966 (=> (not res!133280) (not e!173650))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268966 (= res!133280 (and (= (size!6590 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6590 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6590 a!3325))))))

(declare-fun b!268967 () Bool)

(assert (=> b!268967 (= e!173649 false)))

(declare-fun lt!135089 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13178 (_ BitVec 32)) Bool)

(assert (=> b!268967 (= lt!135089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268968 () Bool)

(declare-fun res!133281 () Bool)

(assert (=> b!268968 (=> (not res!133281) (not e!173650))))

(declare-datatypes ((List!4067 0))(
  ( (Nil!4064) (Cons!4063 (h!4730 (_ BitVec 64)) (t!9157 List!4067)) )
))
(declare-fun arrayNoDuplicates!0 (array!13178 (_ BitVec 32) List!4067) Bool)

(assert (=> b!268968 (= res!133281 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4064))))

(declare-fun res!133284 () Bool)

(assert (=> start!26092 (=> (not res!133284) (not e!173650))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26092 (= res!133284 (validMask!0 mask!3868))))

(assert (=> start!26092 e!173650))

(declare-fun array_inv!4192 (array!13178) Bool)

(assert (=> start!26092 (array_inv!4192 a!3325)))

(assert (=> start!26092 true))

(declare-fun b!268965 () Bool)

(declare-fun res!133279 () Bool)

(assert (=> b!268965 (=> (not res!133279) (not e!173650))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268965 (= res!133279 (validKeyInArray!0 k!2581))))

(assert (= (and start!26092 res!133284) b!268966))

(assert (= (and b!268966 res!133280) b!268965))

(assert (= (and b!268965 res!133279) b!268968))

(assert (= (and b!268968 res!133281) b!268964))

(assert (= (and b!268964 res!133282) b!268963))

(assert (= (and b!268963 res!133283) b!268967))

(declare-fun m!285007 () Bool)

(assert (=> b!268965 m!285007))

(declare-fun m!285009 () Bool)

(assert (=> b!268964 m!285009))

(declare-fun m!285011 () Bool)

(assert (=> b!268963 m!285011))

(declare-fun m!285013 () Bool)

(assert (=> b!268967 m!285013))

(declare-fun m!285015 () Bool)

(assert (=> b!268968 m!285015))

(declare-fun m!285017 () Bool)

(assert (=> start!26092 m!285017))

(declare-fun m!285019 () Bool)

(assert (=> start!26092 m!285019))

(push 1)

(assert (not b!268963))

(assert (not b!268964))

(assert (not start!26092))

(assert (not b!268967))

(assert (not b!268965))

