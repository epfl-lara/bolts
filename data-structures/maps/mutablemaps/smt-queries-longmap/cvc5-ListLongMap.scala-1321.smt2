; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26494 () Bool)

(assert start!26494)

(declare-fun b!274912 () Bool)

(declare-fun res!138940 () Bool)

(declare-fun e!175935 () Bool)

(assert (=> b!274912 (=> (not res!138940) (not e!175935))))

(declare-datatypes ((array!13580 0))(
  ( (array!13581 (arr!6439 (Array (_ BitVec 32) (_ BitVec 64))) (size!6791 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13580)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274912 (= res!138940 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274913 () Bool)

(declare-fun e!175934 () Bool)

(assert (=> b!274913 (= e!175934 false)))

(declare-fun lt!137248 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13580 (_ BitVec 32)) Bool)

(assert (=> b!274913 (= lt!137248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!138945 () Bool)

(assert (=> start!26494 (=> (not res!138945) (not e!175935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26494 (= res!138945 (validMask!0 mask!3868))))

(assert (=> start!26494 e!175935))

(declare-fun array_inv!4393 (array!13580) Bool)

(assert (=> start!26494 (array_inv!4393 a!3325)))

(assert (=> start!26494 true))

(declare-fun b!274914 () Bool)

(declare-fun res!138942 () Bool)

(assert (=> b!274914 (=> (not res!138942) (not e!175935))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274914 (= res!138942 (and (= (size!6791 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6791 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6791 a!3325))))))

(declare-fun b!274915 () Bool)

(declare-fun res!138943 () Bool)

(assert (=> b!274915 (=> (not res!138943) (not e!175935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274915 (= res!138943 (validKeyInArray!0 k!2581))))

(declare-fun b!274916 () Bool)

(declare-fun res!138944 () Bool)

(assert (=> b!274916 (=> (not res!138944) (not e!175935))))

(declare-datatypes ((List!4268 0))(
  ( (Nil!4265) (Cons!4264 (h!4931 (_ BitVec 64)) (t!9358 List!4268)) )
))
(declare-fun arrayNoDuplicates!0 (array!13580 (_ BitVec 32) List!4268) Bool)

(assert (=> b!274916 (= res!138944 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4265))))

(declare-fun b!274917 () Bool)

(assert (=> b!274917 (= e!175935 e!175934)))

(declare-fun res!138941 () Bool)

(assert (=> b!274917 (=> (not res!138941) (not e!175934))))

(declare-datatypes ((SeekEntryResult!1608 0))(
  ( (MissingZero!1608 (index!8602 (_ BitVec 32))) (Found!1608 (index!8603 (_ BitVec 32))) (Intermediate!1608 (undefined!2420 Bool) (index!8604 (_ BitVec 32)) (x!26861 (_ BitVec 32))) (Undefined!1608) (MissingVacant!1608 (index!8605 (_ BitVec 32))) )
))
(declare-fun lt!137249 () SeekEntryResult!1608)

(assert (=> b!274917 (= res!138941 (or (= lt!137249 (MissingZero!1608 i!1267)) (= lt!137249 (MissingVacant!1608 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13580 (_ BitVec 32)) SeekEntryResult!1608)

(assert (=> b!274917 (= lt!137249 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26494 res!138945) b!274914))

(assert (= (and b!274914 res!138942) b!274915))

(assert (= (and b!274915 res!138943) b!274916))

(assert (= (and b!274916 res!138944) b!274912))

(assert (= (and b!274912 res!138940) b!274917))

(assert (= (and b!274917 res!138941) b!274913))

(declare-fun m!290629 () Bool)

(assert (=> b!274912 m!290629))

(declare-fun m!290631 () Bool)

(assert (=> start!26494 m!290631))

(declare-fun m!290633 () Bool)

(assert (=> start!26494 m!290633))

(declare-fun m!290635 () Bool)

(assert (=> b!274915 m!290635))

(declare-fun m!290637 () Bool)

(assert (=> b!274917 m!290637))

(declare-fun m!290639 () Bool)

(assert (=> b!274913 m!290639))

(declare-fun m!290641 () Bool)

(assert (=> b!274916 m!290641))

(push 1)

(assert (not start!26494))

(assert (not b!274915))

