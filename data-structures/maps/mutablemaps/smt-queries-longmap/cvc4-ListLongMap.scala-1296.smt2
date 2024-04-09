; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26348 () Bool)

(assert start!26348)

(declare-fun b!272938 () Bool)

(declare-fun res!136967 () Bool)

(declare-fun e!175033 () Bool)

(assert (=> b!272938 (=> (not res!136967) (not e!175033))))

(declare-datatypes ((array!13434 0))(
  ( (array!13435 (arr!6366 (Array (_ BitVec 32) (_ BitVec 64))) (size!6718 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13434)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272938 (= res!136967 (validKeyInArray!0 (select (arr!6366 a!3325) startIndex!26)))))

(declare-fun b!272939 () Bool)

(declare-fun res!136968 () Bool)

(declare-fun e!175036 () Bool)

(assert (=> b!272939 (=> (not res!136968) (not e!175036))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13434 (_ BitVec 32)) Bool)

(assert (=> b!272939 (= res!136968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272940 () Bool)

(assert (=> b!272940 (= e!175036 e!175033)))

(declare-fun res!136969 () Bool)

(assert (=> b!272940 (=> (not res!136969) (not e!175033))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272940 (= res!136969 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136179 () array!13434)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!272940 (= lt!136179 (array!13435 (store (arr!6366 a!3325) i!1267 k!2581) (size!6718 a!3325)))))

(declare-fun b!272941 () Bool)

(declare-fun res!136974 () Bool)

(declare-fun e!175035 () Bool)

(assert (=> b!272941 (=> (not res!136974) (not e!175035))))

(assert (=> b!272941 (= res!136974 (and (= (size!6718 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6718 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6718 a!3325))))))

(declare-fun b!272942 () Bool)

(assert (=> b!272942 (= e!175035 e!175036)))

(declare-fun res!136972 () Bool)

(assert (=> b!272942 (=> (not res!136972) (not e!175036))))

(declare-datatypes ((SeekEntryResult!1535 0))(
  ( (MissingZero!1535 (index!8310 (_ BitVec 32))) (Found!1535 (index!8311 (_ BitVec 32))) (Intermediate!1535 (undefined!2347 Bool) (index!8312 (_ BitVec 32)) (x!26588 (_ BitVec 32))) (Undefined!1535) (MissingVacant!1535 (index!8313 (_ BitVec 32))) )
))
(declare-fun lt!136178 () SeekEntryResult!1535)

(assert (=> b!272942 (= res!136972 (or (= lt!136178 (MissingZero!1535 i!1267)) (= lt!136178 (MissingVacant!1535 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13434 (_ BitVec 32)) SeekEntryResult!1535)

(assert (=> b!272942 (= lt!136178 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272943 () Bool)

(declare-fun res!136970 () Bool)

(assert (=> b!272943 (=> (not res!136970) (not e!175035))))

(declare-datatypes ((List!4195 0))(
  ( (Nil!4192) (Cons!4191 (h!4858 (_ BitVec 64)) (t!9285 List!4195)) )
))
(declare-fun arrayNoDuplicates!0 (array!13434 (_ BitVec 32) List!4195) Bool)

(assert (=> b!272943 (= res!136970 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4192))))

(declare-fun res!136966 () Bool)

(assert (=> start!26348 (=> (not res!136966) (not e!175035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26348 (= res!136966 (validMask!0 mask!3868))))

(assert (=> start!26348 e!175035))

(declare-fun array_inv!4320 (array!13434) Bool)

(assert (=> start!26348 (array_inv!4320 a!3325)))

(assert (=> start!26348 true))

(declare-fun b!272944 () Bool)

(declare-fun res!136971 () Bool)

(assert (=> b!272944 (=> (not res!136971) (not e!175035))))

(assert (=> b!272944 (= res!136971 (validKeyInArray!0 k!2581))))

(declare-fun b!272945 () Bool)

(assert (=> b!272945 (= e!175033 (not true))))

(assert (=> b!272945 (= (seekEntryOrOpen!0 (select (arr!6366 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6366 a!3325) i!1267 k!2581) startIndex!26) lt!136179 mask!3868))))

(declare-datatypes ((Unit!8536 0))(
  ( (Unit!8537) )
))
(declare-fun lt!136181 () Unit!8536)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13434 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8536)

(assert (=> b!272945 (= lt!136181 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!272945 (arrayNoDuplicates!0 lt!136179 #b00000000000000000000000000000000 Nil!4192)))

(declare-fun lt!136180 () Unit!8536)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13434 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4195) Unit!8536)

(assert (=> b!272945 (= lt!136180 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4192))))

(declare-fun b!272946 () Bool)

(declare-fun res!136973 () Bool)

(assert (=> b!272946 (=> (not res!136973) (not e!175035))))

(declare-fun arrayContainsKey!0 (array!13434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272946 (= res!136973 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26348 res!136966) b!272941))

(assert (= (and b!272941 res!136974) b!272944))

(assert (= (and b!272944 res!136971) b!272943))

(assert (= (and b!272943 res!136970) b!272946))

(assert (= (and b!272946 res!136973) b!272942))

(assert (= (and b!272942 res!136972) b!272939))

(assert (= (and b!272939 res!136968) b!272940))

(assert (= (and b!272940 res!136969) b!272938))

(assert (= (and b!272938 res!136967) b!272945))

(declare-fun m!288059 () Bool)

(assert (=> b!272945 m!288059))

(declare-fun m!288061 () Bool)

(assert (=> b!272945 m!288061))

(declare-fun m!288063 () Bool)

(assert (=> b!272945 m!288063))

(declare-fun m!288065 () Bool)

(assert (=> b!272945 m!288065))

(declare-fun m!288067 () Bool)

(assert (=> b!272945 m!288067))

(declare-fun m!288069 () Bool)

(assert (=> b!272945 m!288069))

(assert (=> b!272945 m!288063))

(declare-fun m!288071 () Bool)

(assert (=> b!272945 m!288071))

(assert (=> b!272945 m!288059))

(declare-fun m!288073 () Bool)

(assert (=> b!272945 m!288073))

(declare-fun m!288075 () Bool)

(assert (=> b!272939 m!288075))

(assert (=> b!272940 m!288061))

(declare-fun m!288077 () Bool)

(assert (=> b!272944 m!288077))

(declare-fun m!288079 () Bool)

(assert (=> b!272946 m!288079))

(declare-fun m!288081 () Bool)

(assert (=> start!26348 m!288081))

(declare-fun m!288083 () Bool)

(assert (=> start!26348 m!288083))

(declare-fun m!288085 () Bool)

(assert (=> b!272943 m!288085))

(declare-fun m!288087 () Bool)

(assert (=> b!272942 m!288087))

(assert (=> b!272938 m!288063))

(assert (=> b!272938 m!288063))

(declare-fun m!288089 () Bool)

(assert (=> b!272938 m!288089))

(push 1)

