; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26344 () Bool)

(assert start!26344)

(declare-fun b!272884 () Bool)

(declare-fun res!136917 () Bool)

(declare-fun e!175010 () Bool)

(assert (=> b!272884 (=> (not res!136917) (not e!175010))))

(declare-datatypes ((array!13430 0))(
  ( (array!13431 (arr!6364 (Array (_ BitVec 32) (_ BitVec 64))) (size!6716 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13430)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13430 (_ BitVec 32)) Bool)

(assert (=> b!272884 (= res!136917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272885 () Bool)

(declare-fun res!136912 () Bool)

(declare-fun e!175012 () Bool)

(assert (=> b!272885 (=> (not res!136912) (not e!175012))))

(declare-datatypes ((List!4193 0))(
  ( (Nil!4190) (Cons!4189 (h!4856 (_ BitVec 64)) (t!9283 List!4193)) )
))
(declare-fun arrayNoDuplicates!0 (array!13430 (_ BitVec 32) List!4193) Bool)

(assert (=> b!272885 (= res!136912 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4190))))

(declare-fun b!272886 () Bool)

(declare-fun e!175009 () Bool)

(assert (=> b!272886 (= e!175010 e!175009)))

(declare-fun res!136913 () Bool)

(assert (=> b!272886 (=> (not res!136913) (not e!175009))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272886 (= res!136913 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136157 () array!13430)

(assert (=> b!272886 (= lt!136157 (array!13431 (store (arr!6364 a!3325) i!1267 k!2581) (size!6716 a!3325)))))

(declare-fun b!272888 () Bool)

(assert (=> b!272888 (= e!175012 e!175010)))

(declare-fun res!136916 () Bool)

(assert (=> b!272888 (=> (not res!136916) (not e!175010))))

(declare-datatypes ((SeekEntryResult!1533 0))(
  ( (MissingZero!1533 (index!8302 (_ BitVec 32))) (Found!1533 (index!8303 (_ BitVec 32))) (Intermediate!1533 (undefined!2345 Bool) (index!8304 (_ BitVec 32)) (x!26586 (_ BitVec 32))) (Undefined!1533) (MissingVacant!1533 (index!8305 (_ BitVec 32))) )
))
(declare-fun lt!136156 () SeekEntryResult!1533)

(assert (=> b!272888 (= res!136916 (or (= lt!136156 (MissingZero!1533 i!1267)) (= lt!136156 (MissingVacant!1533 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13430 (_ BitVec 32)) SeekEntryResult!1533)

(assert (=> b!272888 (= lt!136156 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272889 () Bool)

(declare-fun res!136914 () Bool)

(assert (=> b!272889 (=> (not res!136914) (not e!175012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272889 (= res!136914 (validKeyInArray!0 k!2581))))

(declare-fun b!272890 () Bool)

(declare-fun res!136918 () Bool)

(assert (=> b!272890 (=> (not res!136918) (not e!175012))))

(declare-fun arrayContainsKey!0 (array!13430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272890 (= res!136918 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272891 () Bool)

(declare-fun res!136919 () Bool)

(assert (=> b!272891 (=> (not res!136919) (not e!175012))))

(assert (=> b!272891 (= res!136919 (and (= (size!6716 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6716 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6716 a!3325))))))

(declare-fun b!272892 () Bool)

(assert (=> b!272892 (= e!175009 (not true))))

(assert (=> b!272892 (= (seekEntryOrOpen!0 (select (arr!6364 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6364 a!3325) i!1267 k!2581) startIndex!26) lt!136157 mask!3868))))

(declare-datatypes ((Unit!8532 0))(
  ( (Unit!8533) )
))
(declare-fun lt!136154 () Unit!8532)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8532)

(assert (=> b!272892 (= lt!136154 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!272892 (arrayNoDuplicates!0 lt!136157 #b00000000000000000000000000000000 Nil!4190)))

(declare-fun lt!136155 () Unit!8532)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13430 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4193) Unit!8532)

(assert (=> b!272892 (= lt!136155 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4190))))

(declare-fun b!272887 () Bool)

(declare-fun res!136915 () Bool)

(assert (=> b!272887 (=> (not res!136915) (not e!175009))))

(assert (=> b!272887 (= res!136915 (validKeyInArray!0 (select (arr!6364 a!3325) startIndex!26)))))

(declare-fun res!136920 () Bool)

(assert (=> start!26344 (=> (not res!136920) (not e!175012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26344 (= res!136920 (validMask!0 mask!3868))))

(assert (=> start!26344 e!175012))

(declare-fun array_inv!4318 (array!13430) Bool)

(assert (=> start!26344 (array_inv!4318 a!3325)))

(assert (=> start!26344 true))

(assert (= (and start!26344 res!136920) b!272891))

(assert (= (and b!272891 res!136919) b!272889))

(assert (= (and b!272889 res!136914) b!272885))

(assert (= (and b!272885 res!136912) b!272890))

(assert (= (and b!272890 res!136918) b!272888))

(assert (= (and b!272888 res!136916) b!272884))

(assert (= (and b!272884 res!136917) b!272886))

(assert (= (and b!272886 res!136913) b!272887))

(assert (= (and b!272887 res!136915) b!272892))

(declare-fun m!287995 () Bool)

(assert (=> b!272890 m!287995))

(declare-fun m!287997 () Bool)

(assert (=> start!26344 m!287997))

(declare-fun m!287999 () Bool)

(assert (=> start!26344 m!287999))

(declare-fun m!288001 () Bool)

(assert (=> b!272885 m!288001))

(declare-fun m!288003 () Bool)

(assert (=> b!272887 m!288003))

(assert (=> b!272887 m!288003))

(declare-fun m!288005 () Bool)

(assert (=> b!272887 m!288005))

(declare-fun m!288007 () Bool)

(assert (=> b!272889 m!288007))

(declare-fun m!288009 () Bool)

(assert (=> b!272892 m!288009))

(declare-fun m!288011 () Bool)

(assert (=> b!272892 m!288011))

(declare-fun m!288013 () Bool)

(assert (=> b!272892 m!288013))

(assert (=> b!272892 m!288011))

(declare-fun m!288015 () Bool)

(assert (=> b!272892 m!288015))

(assert (=> b!272892 m!288003))

(declare-fun m!288017 () Bool)

(assert (=> b!272892 m!288017))

(declare-fun m!288019 () Bool)

(assert (=> b!272892 m!288019))

(assert (=> b!272892 m!288003))

(declare-fun m!288021 () Bool)

(assert (=> b!272892 m!288021))

(declare-fun m!288023 () Bool)

(assert (=> b!272888 m!288023))

(declare-fun m!288025 () Bool)

(assert (=> b!272884 m!288025))

(assert (=> b!272886 m!288013))

(push 1)

