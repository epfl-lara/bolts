; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26288 () Bool)

(assert start!26288)

(declare-fun b!272128 () Bool)

(declare-fun e!174747 () Bool)

(declare-fun e!174748 () Bool)

(assert (=> b!272128 (= e!174747 e!174748)))

(declare-fun res!136164 () Bool)

(assert (=> b!272128 (=> (not res!136164) (not e!174748))))

(declare-datatypes ((SeekEntryResult!1505 0))(
  ( (MissingZero!1505 (index!8190 (_ BitVec 32))) (Found!1505 (index!8191 (_ BitVec 32))) (Intermediate!1505 (undefined!2317 Bool) (index!8192 (_ BitVec 32)) (x!26478 (_ BitVec 32))) (Undefined!1505) (MissingVacant!1505 (index!8193 (_ BitVec 32))) )
))
(declare-fun lt!135964 () SeekEntryResult!1505)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272128 (= res!136164 (or (= lt!135964 (MissingZero!1505 i!1267)) (= lt!135964 (MissingVacant!1505 i!1267))))))

(declare-datatypes ((array!13374 0))(
  ( (array!13375 (arr!6336 (Array (_ BitVec 32) (_ BitVec 64))) (size!6688 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13374)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13374 (_ BitVec 32)) SeekEntryResult!1505)

(assert (=> b!272128 (= lt!135964 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!136163 () Bool)

(assert (=> start!26288 (=> (not res!136163) (not e!174747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26288 (= res!136163 (validMask!0 mask!3868))))

(assert (=> start!26288 e!174747))

(declare-fun array_inv!4290 (array!13374) Bool)

(assert (=> start!26288 (array_inv!4290 a!3325)))

(assert (=> start!26288 true))

(declare-fun b!272129 () Bool)

(declare-fun res!136156 () Bool)

(assert (=> b!272129 (=> (not res!136156) (not e!174748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13374 (_ BitVec 32)) Bool)

(assert (=> b!272129 (= res!136156 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272130 () Bool)

(declare-fun res!136157 () Bool)

(assert (=> b!272130 (=> (not res!136157) (not e!174748))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272130 (= res!136157 (validKeyInArray!0 (select (arr!6336 a!3325) startIndex!26)))))

(declare-fun b!272131 () Bool)

(declare-fun res!136161 () Bool)

(assert (=> b!272131 (=> (not res!136161) (not e!174747))))

(assert (=> b!272131 (= res!136161 (validKeyInArray!0 k!2581))))

(declare-fun b!272132 () Bool)

(assert (=> b!272132 (= e!174748 (not true))))

(declare-datatypes ((List!4165 0))(
  ( (Nil!4162) (Cons!4161 (h!4828 (_ BitVec 64)) (t!9255 List!4165)) )
))
(declare-fun arrayNoDuplicates!0 (array!13374 (_ BitVec 32) List!4165) Bool)

(assert (=> b!272132 (arrayNoDuplicates!0 (array!13375 (store (arr!6336 a!3325) i!1267 k!2581) (size!6688 a!3325)) #b00000000000000000000000000000000 Nil!4162)))

(declare-datatypes ((Unit!8476 0))(
  ( (Unit!8477) )
))
(declare-fun lt!135965 () Unit!8476)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13374 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4165) Unit!8476)

(assert (=> b!272132 (= lt!135965 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4162))))

(declare-fun b!272133 () Bool)

(declare-fun res!136162 () Bool)

(assert (=> b!272133 (=> (not res!136162) (not e!174747))))

(assert (=> b!272133 (= res!136162 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4162))))

(declare-fun b!272134 () Bool)

(declare-fun res!136159 () Bool)

(assert (=> b!272134 (=> (not res!136159) (not e!174747))))

(declare-fun arrayContainsKey!0 (array!13374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272134 (= res!136159 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272135 () Bool)

(declare-fun res!136160 () Bool)

(assert (=> b!272135 (=> (not res!136160) (not e!174747))))

(assert (=> b!272135 (= res!136160 (and (= (size!6688 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6688 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6688 a!3325))))))

(declare-fun b!272136 () Bool)

(declare-fun res!136158 () Bool)

(assert (=> b!272136 (=> (not res!136158) (not e!174748))))

(assert (=> b!272136 (= res!136158 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26288 res!136163) b!272135))

(assert (= (and b!272135 res!136160) b!272131))

(assert (= (and b!272131 res!136161) b!272133))

(assert (= (and b!272133 res!136162) b!272134))

(assert (= (and b!272134 res!136159) b!272128))

(assert (= (and b!272128 res!136164) b!272129))

(assert (= (and b!272129 res!136156) b!272136))

(assert (= (and b!272136 res!136158) b!272130))

(assert (= (and b!272130 res!136157) b!272132))

(declare-fun m!287299 () Bool)

(assert (=> b!272133 m!287299))

(declare-fun m!287301 () Bool)

(assert (=> b!272131 m!287301))

(declare-fun m!287303 () Bool)

(assert (=> b!272132 m!287303))

(declare-fun m!287305 () Bool)

(assert (=> b!272132 m!287305))

(declare-fun m!287307 () Bool)

(assert (=> b!272132 m!287307))

(declare-fun m!287309 () Bool)

(assert (=> b!272128 m!287309))

(declare-fun m!287311 () Bool)

(assert (=> b!272130 m!287311))

(assert (=> b!272130 m!287311))

(declare-fun m!287313 () Bool)

(assert (=> b!272130 m!287313))

(declare-fun m!287315 () Bool)

(assert (=> start!26288 m!287315))

(declare-fun m!287317 () Bool)

(assert (=> start!26288 m!287317))

(declare-fun m!287319 () Bool)

(assert (=> b!272134 m!287319))

(declare-fun m!287321 () Bool)

(assert (=> b!272129 m!287321))

(push 1)

(assert (not b!272128))

(assert (not start!26288))

(assert (not b!272133))

