; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26264 () Bool)

(assert start!26264)

(declare-fun b!271804 () Bool)

(declare-fun res!135838 () Bool)

(declare-fun e!174638 () Bool)

(assert (=> b!271804 (=> (not res!135838) (not e!174638))))

(declare-datatypes ((array!13350 0))(
  ( (array!13351 (arr!6324 (Array (_ BitVec 32) (_ BitVec 64))) (size!6676 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13350)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271804 (= res!135838 (and (= (size!6676 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6676 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6676 a!3325))))))

(declare-fun b!271805 () Bool)

(declare-fun res!135833 () Bool)

(assert (=> b!271805 (=> (not res!135833) (not e!174638))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271805 (= res!135833 (validKeyInArray!0 k!2581))))

(declare-fun b!271806 () Bool)

(declare-fun res!135840 () Bool)

(declare-fun e!174640 () Bool)

(assert (=> b!271806 (=> (not res!135840) (not e!174640))))

(assert (=> b!271806 (= res!135840 (not (= startIndex!26 i!1267)))))

(declare-fun res!135835 () Bool)

(assert (=> start!26264 (=> (not res!135835) (not e!174638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26264 (= res!135835 (validMask!0 mask!3868))))

(assert (=> start!26264 e!174638))

(declare-fun array_inv!4278 (array!13350) Bool)

(assert (=> start!26264 (array_inv!4278 a!3325)))

(assert (=> start!26264 true))

(declare-fun b!271807 () Bool)

(assert (=> b!271807 (= e!174640 (not true))))

(declare-datatypes ((List!4153 0))(
  ( (Nil!4150) (Cons!4149 (h!4816 (_ BitVec 64)) (t!9243 List!4153)) )
))
(declare-fun arrayNoDuplicates!0 (array!13350 (_ BitVec 32) List!4153) Bool)

(assert (=> b!271807 (arrayNoDuplicates!0 (array!13351 (store (arr!6324 a!3325) i!1267 k!2581) (size!6676 a!3325)) #b00000000000000000000000000000000 Nil!4150)))

(declare-datatypes ((Unit!8452 0))(
  ( (Unit!8453) )
))
(declare-fun lt!135892 () Unit!8452)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13350 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4153) Unit!8452)

(assert (=> b!271807 (= lt!135892 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4150))))

(declare-fun b!271808 () Bool)

(declare-fun res!135834 () Bool)

(assert (=> b!271808 (=> (not res!135834) (not e!174640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13350 (_ BitVec 32)) Bool)

(assert (=> b!271808 (= res!135834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271809 () Bool)

(declare-fun res!135836 () Bool)

(assert (=> b!271809 (=> (not res!135836) (not e!174640))))

(assert (=> b!271809 (= res!135836 (validKeyInArray!0 (select (arr!6324 a!3325) startIndex!26)))))

(declare-fun b!271810 () Bool)

(assert (=> b!271810 (= e!174638 e!174640)))

(declare-fun res!135837 () Bool)

(assert (=> b!271810 (=> (not res!135837) (not e!174640))))

(declare-datatypes ((SeekEntryResult!1493 0))(
  ( (MissingZero!1493 (index!8142 (_ BitVec 32))) (Found!1493 (index!8143 (_ BitVec 32))) (Intermediate!1493 (undefined!2305 Bool) (index!8144 (_ BitVec 32)) (x!26434 (_ BitVec 32))) (Undefined!1493) (MissingVacant!1493 (index!8145 (_ BitVec 32))) )
))
(declare-fun lt!135893 () SeekEntryResult!1493)

(assert (=> b!271810 (= res!135837 (or (= lt!135893 (MissingZero!1493 i!1267)) (= lt!135893 (MissingVacant!1493 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13350 (_ BitVec 32)) SeekEntryResult!1493)

(assert (=> b!271810 (= lt!135893 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271811 () Bool)

(declare-fun res!135839 () Bool)

(assert (=> b!271811 (=> (not res!135839) (not e!174638))))

(assert (=> b!271811 (= res!135839 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4150))))

(declare-fun b!271812 () Bool)

(declare-fun res!135832 () Bool)

(assert (=> b!271812 (=> (not res!135832) (not e!174638))))

(declare-fun arrayContainsKey!0 (array!13350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271812 (= res!135832 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26264 res!135835) b!271804))

(assert (= (and b!271804 res!135838) b!271805))

(assert (= (and b!271805 res!135833) b!271811))

(assert (= (and b!271811 res!135839) b!271812))

(assert (= (and b!271812 res!135832) b!271810))

(assert (= (and b!271810 res!135837) b!271808))

(assert (= (and b!271808 res!135834) b!271806))

(assert (= (and b!271806 res!135840) b!271809))

(assert (= (and b!271809 res!135836) b!271807))

(declare-fun m!287011 () Bool)

(assert (=> b!271809 m!287011))

(assert (=> b!271809 m!287011))

(declare-fun m!287013 () Bool)

(assert (=> b!271809 m!287013))

(declare-fun m!287015 () Bool)

(assert (=> b!271811 m!287015))

(declare-fun m!287017 () Bool)

(assert (=> b!271812 m!287017))

(declare-fun m!287019 () Bool)

(assert (=> b!271810 m!287019))

(declare-fun m!287021 () Bool)

(assert (=> b!271807 m!287021))

(declare-fun m!287023 () Bool)

(assert (=> b!271807 m!287023))

(declare-fun m!287025 () Bool)

(assert (=> b!271807 m!287025))

(declare-fun m!287027 () Bool)

(assert (=> b!271805 m!287027))

(declare-fun m!287029 () Bool)

(assert (=> b!271808 m!287029))

(declare-fun m!287031 () Bool)

(assert (=> start!26264 m!287031))

(declare-fun m!287033 () Bool)

(assert (=> start!26264 m!287033))

(push 1)

