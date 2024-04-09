; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26270 () Bool)

(assert start!26270)

(declare-fun res!135918 () Bool)

(declare-fun e!174665 () Bool)

(assert (=> start!26270 (=> (not res!135918) (not e!174665))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26270 (= res!135918 (validMask!0 mask!3868))))

(assert (=> start!26270 e!174665))

(declare-datatypes ((array!13356 0))(
  ( (array!13357 (arr!6327 (Array (_ BitVec 32) (_ BitVec 64))) (size!6679 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13356)

(declare-fun array_inv!4281 (array!13356) Bool)

(assert (=> start!26270 (array_inv!4281 a!3325)))

(assert (=> start!26270 true))

(declare-fun b!271885 () Bool)

(declare-fun res!135920 () Bool)

(declare-fun e!174667 () Bool)

(assert (=> b!271885 (=> (not res!135920) (not e!174667))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271885 (= res!135920 (not (= startIndex!26 i!1267)))))

(declare-fun b!271886 () Bool)

(assert (=> b!271886 (= e!174667 (not true))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4156 0))(
  ( (Nil!4153) (Cons!4152 (h!4819 (_ BitVec 64)) (t!9246 List!4156)) )
))
(declare-fun arrayNoDuplicates!0 (array!13356 (_ BitVec 32) List!4156) Bool)

(assert (=> b!271886 (arrayNoDuplicates!0 (array!13357 (store (arr!6327 a!3325) i!1267 k!2581) (size!6679 a!3325)) #b00000000000000000000000000000000 Nil!4153)))

(declare-datatypes ((Unit!8458 0))(
  ( (Unit!8459) )
))
(declare-fun lt!135910 () Unit!8458)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13356 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4156) Unit!8458)

(assert (=> b!271886 (= lt!135910 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4153))))

(declare-fun b!271887 () Bool)

(declare-fun res!135913 () Bool)

(assert (=> b!271887 (=> (not res!135913) (not e!174665))))

(assert (=> b!271887 (= res!135913 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4153))))

(declare-fun b!271888 () Bool)

(declare-fun res!135921 () Bool)

(assert (=> b!271888 (=> (not res!135921) (not e!174667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271888 (= res!135921 (validKeyInArray!0 (select (arr!6327 a!3325) startIndex!26)))))

(declare-fun b!271889 () Bool)

(declare-fun res!135919 () Bool)

(assert (=> b!271889 (=> (not res!135919) (not e!174665))))

(assert (=> b!271889 (= res!135919 (and (= (size!6679 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6679 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6679 a!3325))))))

(declare-fun b!271890 () Bool)

(declare-fun res!135917 () Bool)

(assert (=> b!271890 (=> (not res!135917) (not e!174665))))

(declare-fun arrayContainsKey!0 (array!13356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271890 (= res!135917 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271891 () Bool)

(declare-fun res!135914 () Bool)

(assert (=> b!271891 (=> (not res!135914) (not e!174667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13356 (_ BitVec 32)) Bool)

(assert (=> b!271891 (= res!135914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271892 () Bool)

(assert (=> b!271892 (= e!174665 e!174667)))

(declare-fun res!135916 () Bool)

(assert (=> b!271892 (=> (not res!135916) (not e!174667))))

(declare-datatypes ((SeekEntryResult!1496 0))(
  ( (MissingZero!1496 (index!8154 (_ BitVec 32))) (Found!1496 (index!8155 (_ BitVec 32))) (Intermediate!1496 (undefined!2308 Bool) (index!8156 (_ BitVec 32)) (x!26445 (_ BitVec 32))) (Undefined!1496) (MissingVacant!1496 (index!8157 (_ BitVec 32))) )
))
(declare-fun lt!135911 () SeekEntryResult!1496)

(assert (=> b!271892 (= res!135916 (or (= lt!135911 (MissingZero!1496 i!1267)) (= lt!135911 (MissingVacant!1496 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13356 (_ BitVec 32)) SeekEntryResult!1496)

(assert (=> b!271892 (= lt!135911 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271893 () Bool)

(declare-fun res!135915 () Bool)

(assert (=> b!271893 (=> (not res!135915) (not e!174665))))

(assert (=> b!271893 (= res!135915 (validKeyInArray!0 k!2581))))

(assert (= (and start!26270 res!135918) b!271889))

(assert (= (and b!271889 res!135919) b!271893))

(assert (= (and b!271893 res!135915) b!271887))

(assert (= (and b!271887 res!135913) b!271890))

(assert (= (and b!271890 res!135917) b!271892))

(assert (= (and b!271892 res!135916) b!271891))

(assert (= (and b!271891 res!135914) b!271885))

(assert (= (and b!271885 res!135920) b!271888))

(assert (= (and b!271888 res!135921) b!271886))

(declare-fun m!287083 () Bool)

(assert (=> b!271892 m!287083))

(declare-fun m!287085 () Bool)

(assert (=> b!271886 m!287085))

(declare-fun m!287087 () Bool)

(assert (=> b!271886 m!287087))

(declare-fun m!287089 () Bool)

(assert (=> b!271886 m!287089))

(declare-fun m!287091 () Bool)

(assert (=> b!271891 m!287091))

(declare-fun m!287093 () Bool)

(assert (=> b!271887 m!287093))

(declare-fun m!287095 () Bool)

(assert (=> b!271890 m!287095))

(declare-fun m!287097 () Bool)

(assert (=> b!271893 m!287097))

(declare-fun m!287099 () Bool)

(assert (=> start!26270 m!287099))

(declare-fun m!287101 () Bool)

(assert (=> start!26270 m!287101))

(declare-fun m!287103 () Bool)

(assert (=> b!271888 m!287103))

(assert (=> b!271888 m!287103))

(declare-fun m!287105 () Bool)

(assert (=> b!271888 m!287105))

(push 1)

