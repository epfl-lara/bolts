; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26352 () Bool)

(assert start!26352)

(declare-fun b!272992 () Bool)

(declare-fun res!137022 () Bool)

(declare-fun e!175057 () Bool)

(assert (=> b!272992 (=> (not res!137022) (not e!175057))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((array!13438 0))(
  ( (array!13439 (arr!6368 (Array (_ BitVec 32) (_ BitVec 64))) (size!6720 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13438)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!272992 (= res!137022 (and (= (size!6720 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6720 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6720 a!3325))))))

(declare-fun b!272993 () Bool)

(declare-fun e!175059 () Bool)

(declare-fun e!175060 () Bool)

(assert (=> b!272993 (= e!175059 e!175060)))

(declare-fun res!137026 () Bool)

(assert (=> b!272993 (=> (not res!137026) (not e!175060))))

(assert (=> b!272993 (= res!137026 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136202 () array!13438)

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!272993 (= lt!136202 (array!13439 (store (arr!6368 a!3325) i!1267 k0!2581) (size!6720 a!3325)))))

(declare-fun b!272994 () Bool)

(declare-fun res!137027 () Bool)

(assert (=> b!272994 (=> (not res!137027) (not e!175057))))

(declare-fun arrayContainsKey!0 (array!13438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272994 (= res!137027 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272995 () Bool)

(assert (=> b!272995 (= e!175060 (not true))))

(declare-datatypes ((SeekEntryResult!1537 0))(
  ( (MissingZero!1537 (index!8318 (_ BitVec 32))) (Found!1537 (index!8319 (_ BitVec 32))) (Intermediate!1537 (undefined!2349 Bool) (index!8320 (_ BitVec 32)) (x!26598 (_ BitVec 32))) (Undefined!1537) (MissingVacant!1537 (index!8321 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13438 (_ BitVec 32)) SeekEntryResult!1537)

(assert (=> b!272995 (= (seekEntryOrOpen!0 (select (arr!6368 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6368 a!3325) i!1267 k0!2581) startIndex!26) lt!136202 mask!3868))))

(declare-datatypes ((Unit!8540 0))(
  ( (Unit!8541) )
))
(declare-fun lt!136203 () Unit!8540)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13438 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8540)

(assert (=> b!272995 (= lt!136203 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4197 0))(
  ( (Nil!4194) (Cons!4193 (h!4860 (_ BitVec 64)) (t!9287 List!4197)) )
))
(declare-fun arrayNoDuplicates!0 (array!13438 (_ BitVec 32) List!4197) Bool)

(assert (=> b!272995 (arrayNoDuplicates!0 lt!136202 #b00000000000000000000000000000000 Nil!4194)))

(declare-fun lt!136205 () Unit!8540)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13438 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4197) Unit!8540)

(assert (=> b!272995 (= lt!136205 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4194))))

(declare-fun b!272996 () Bool)

(declare-fun res!137024 () Bool)

(assert (=> b!272996 (=> (not res!137024) (not e!175057))))

(assert (=> b!272996 (= res!137024 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4194))))

(declare-fun res!137025 () Bool)

(assert (=> start!26352 (=> (not res!137025) (not e!175057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26352 (= res!137025 (validMask!0 mask!3868))))

(assert (=> start!26352 e!175057))

(declare-fun array_inv!4322 (array!13438) Bool)

(assert (=> start!26352 (array_inv!4322 a!3325)))

(assert (=> start!26352 true))

(declare-fun b!272997 () Bool)

(declare-fun res!137023 () Bool)

(assert (=> b!272997 (=> (not res!137023) (not e!175059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13438 (_ BitVec 32)) Bool)

(assert (=> b!272997 (= res!137023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272998 () Bool)

(declare-fun res!137021 () Bool)

(assert (=> b!272998 (=> (not res!137021) (not e!175057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272998 (= res!137021 (validKeyInArray!0 k0!2581))))

(declare-fun b!272999 () Bool)

(declare-fun res!137028 () Bool)

(assert (=> b!272999 (=> (not res!137028) (not e!175060))))

(assert (=> b!272999 (= res!137028 (validKeyInArray!0 (select (arr!6368 a!3325) startIndex!26)))))

(declare-fun b!273000 () Bool)

(assert (=> b!273000 (= e!175057 e!175059)))

(declare-fun res!137020 () Bool)

(assert (=> b!273000 (=> (not res!137020) (not e!175059))))

(declare-fun lt!136204 () SeekEntryResult!1537)

(assert (=> b!273000 (= res!137020 (or (= lt!136204 (MissingZero!1537 i!1267)) (= lt!136204 (MissingVacant!1537 i!1267))))))

(assert (=> b!273000 (= lt!136204 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26352 res!137025) b!272992))

(assert (= (and b!272992 res!137022) b!272998))

(assert (= (and b!272998 res!137021) b!272996))

(assert (= (and b!272996 res!137024) b!272994))

(assert (= (and b!272994 res!137027) b!273000))

(assert (= (and b!273000 res!137020) b!272997))

(assert (= (and b!272997 res!137023) b!272993))

(assert (= (and b!272993 res!137026) b!272999))

(assert (= (and b!272999 res!137028) b!272995))

(declare-fun m!288123 () Bool)

(assert (=> b!272999 m!288123))

(assert (=> b!272999 m!288123))

(declare-fun m!288125 () Bool)

(assert (=> b!272999 m!288125))

(declare-fun m!288127 () Bool)

(assert (=> b!272993 m!288127))

(declare-fun m!288129 () Bool)

(assert (=> b!272997 m!288129))

(declare-fun m!288131 () Bool)

(assert (=> b!272996 m!288131))

(declare-fun m!288133 () Bool)

(assert (=> b!272998 m!288133))

(declare-fun m!288135 () Bool)

(assert (=> start!26352 m!288135))

(declare-fun m!288137 () Bool)

(assert (=> start!26352 m!288137))

(declare-fun m!288139 () Bool)

(assert (=> b!272994 m!288139))

(declare-fun m!288141 () Bool)

(assert (=> b!272995 m!288141))

(assert (=> b!272995 m!288127))

(declare-fun m!288143 () Bool)

(assert (=> b!272995 m!288143))

(declare-fun m!288145 () Bool)

(assert (=> b!272995 m!288145))

(declare-fun m!288147 () Bool)

(assert (=> b!272995 m!288147))

(assert (=> b!272995 m!288123))

(declare-fun m!288149 () Bool)

(assert (=> b!272995 m!288149))

(assert (=> b!272995 m!288141))

(declare-fun m!288151 () Bool)

(assert (=> b!272995 m!288151))

(assert (=> b!272995 m!288123))

(declare-fun m!288153 () Bool)

(assert (=> b!273000 m!288153))

(check-sat (not b!272994) (not b!272999) (not b!273000) (not b!272997) (not b!272996) (not start!26352) (not b!272998) (not b!272995))
(check-sat)
