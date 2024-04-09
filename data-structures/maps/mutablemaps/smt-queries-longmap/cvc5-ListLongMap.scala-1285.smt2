; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26278 () Bool)

(assert start!26278)

(declare-fun b!271993 () Bool)

(declare-fun res!136021 () Bool)

(declare-fun e!174703 () Bool)

(assert (=> b!271993 (=> (not res!136021) (not e!174703))))

(declare-datatypes ((array!13364 0))(
  ( (array!13365 (arr!6331 (Array (_ BitVec 32) (_ BitVec 64))) (size!6683 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13364)

(declare-datatypes ((List!4160 0))(
  ( (Nil!4157) (Cons!4156 (h!4823 (_ BitVec 64)) (t!9250 List!4160)) )
))
(declare-fun arrayNoDuplicates!0 (array!13364 (_ BitVec 32) List!4160) Bool)

(assert (=> b!271993 (= res!136021 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4157))))

(declare-fun b!271994 () Bool)

(declare-fun res!136028 () Bool)

(assert (=> b!271994 (=> (not res!136028) (not e!174703))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!271994 (= res!136028 (and (= (size!6683 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6683 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6683 a!3325))))))

(declare-fun b!271995 () Bool)

(declare-fun res!136022 () Bool)

(assert (=> b!271995 (=> (not res!136022) (not e!174703))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271995 (= res!136022 (validKeyInArray!0 k!2581))))

(declare-fun b!271996 () Bool)

(declare-fun e!174702 () Bool)

(assert (=> b!271996 (= e!174703 e!174702)))

(declare-fun res!136026 () Bool)

(assert (=> b!271996 (=> (not res!136026) (not e!174702))))

(declare-datatypes ((SeekEntryResult!1500 0))(
  ( (MissingZero!1500 (index!8170 (_ BitVec 32))) (Found!1500 (index!8171 (_ BitVec 32))) (Intermediate!1500 (undefined!2312 Bool) (index!8172 (_ BitVec 32)) (x!26465 (_ BitVec 32))) (Undefined!1500) (MissingVacant!1500 (index!8173 (_ BitVec 32))) )
))
(declare-fun lt!135935 () SeekEntryResult!1500)

(assert (=> b!271996 (= res!136026 (or (= lt!135935 (MissingZero!1500 i!1267)) (= lt!135935 (MissingVacant!1500 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13364 (_ BitVec 32)) SeekEntryResult!1500)

(assert (=> b!271996 (= lt!135935 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!136025 () Bool)

(assert (=> start!26278 (=> (not res!136025) (not e!174703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26278 (= res!136025 (validMask!0 mask!3868))))

(assert (=> start!26278 e!174703))

(declare-fun array_inv!4285 (array!13364) Bool)

(assert (=> start!26278 (array_inv!4285 a!3325)))

(assert (=> start!26278 true))

(declare-fun b!271997 () Bool)

(declare-fun res!136027 () Bool)

(assert (=> b!271997 (=> (not res!136027) (not e!174702))))

(assert (=> b!271997 (= res!136027 (validKeyInArray!0 (select (arr!6331 a!3325) startIndex!26)))))

(declare-fun b!271998 () Bool)

(declare-fun res!136029 () Bool)

(assert (=> b!271998 (=> (not res!136029) (not e!174702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13364 (_ BitVec 32)) Bool)

(assert (=> b!271998 (= res!136029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271999 () Bool)

(assert (=> b!271999 (= e!174702 (not true))))

(assert (=> b!271999 (arrayNoDuplicates!0 (array!13365 (store (arr!6331 a!3325) i!1267 k!2581) (size!6683 a!3325)) #b00000000000000000000000000000000 Nil!4157)))

(declare-datatypes ((Unit!8466 0))(
  ( (Unit!8467) )
))
(declare-fun lt!135934 () Unit!8466)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13364 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4160) Unit!8466)

(assert (=> b!271999 (= lt!135934 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4157))))

(declare-fun b!272000 () Bool)

(declare-fun res!136024 () Bool)

(assert (=> b!272000 (=> (not res!136024) (not e!174702))))

(assert (=> b!272000 (= res!136024 (not (= startIndex!26 i!1267)))))

(declare-fun b!272001 () Bool)

(declare-fun res!136023 () Bool)

(assert (=> b!272001 (=> (not res!136023) (not e!174703))))

(declare-fun arrayContainsKey!0 (array!13364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272001 (= res!136023 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26278 res!136025) b!271994))

(assert (= (and b!271994 res!136028) b!271995))

(assert (= (and b!271995 res!136022) b!271993))

(assert (= (and b!271993 res!136021) b!272001))

(assert (= (and b!272001 res!136023) b!271996))

(assert (= (and b!271996 res!136026) b!271998))

(assert (= (and b!271998 res!136029) b!272000))

(assert (= (and b!272000 res!136024) b!271997))

(assert (= (and b!271997 res!136027) b!271999))

(declare-fun m!287179 () Bool)

(assert (=> b!271993 m!287179))

(declare-fun m!287181 () Bool)

(assert (=> start!26278 m!287181))

(declare-fun m!287183 () Bool)

(assert (=> start!26278 m!287183))

(declare-fun m!287185 () Bool)

(assert (=> b!271998 m!287185))

(declare-fun m!287187 () Bool)

(assert (=> b!271996 m!287187))

(declare-fun m!287189 () Bool)

(assert (=> b!271997 m!287189))

(assert (=> b!271997 m!287189))

(declare-fun m!287191 () Bool)

(assert (=> b!271997 m!287191))

(declare-fun m!287193 () Bool)

(assert (=> b!271995 m!287193))

(declare-fun m!287195 () Bool)

(assert (=> b!271999 m!287195))

(declare-fun m!287197 () Bool)

(assert (=> b!271999 m!287197))

(declare-fun m!287199 () Bool)

(assert (=> b!271999 m!287199))

(declare-fun m!287201 () Bool)

(assert (=> b!272001 m!287201))

(push 1)

