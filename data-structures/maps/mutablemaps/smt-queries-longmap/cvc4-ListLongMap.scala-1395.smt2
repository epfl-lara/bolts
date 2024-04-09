; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27236 () Bool)

(assert start!27236)

(declare-fun b!281833 () Bool)

(declare-fun e!179047 () Bool)

(assert (=> b!281833 (= e!179047 (not true))))

(declare-datatypes ((array!14043 0))(
  ( (array!14044 (arr!6663 (Array (_ BitVec 32) (_ BitVec 64))) (size!7015 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14043)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139256 () array!14043)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1832 0))(
  ( (MissingZero!1832 (index!9498 (_ BitVec 32))) (Found!1832 (index!9499 (_ BitVec 32))) (Intermediate!1832 (undefined!2644 Bool) (index!9500 (_ BitVec 32)) (x!27686 (_ BitVec 32))) (Undefined!1832) (MissingVacant!1832 (index!9501 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14043 (_ BitVec 32)) SeekEntryResult!1832)

(assert (=> b!281833 (= (seekEntryOrOpen!0 (select (arr!6663 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6663 a!3325) i!1267 k!2581) startIndex!26) lt!139256 mask!3868))))

(declare-datatypes ((Unit!8927 0))(
  ( (Unit!8928) )
))
(declare-fun lt!139257 () Unit!8927)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14043 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8927)

(assert (=> b!281833 (= lt!139257 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4492 0))(
  ( (Nil!4489) (Cons!4488 (h!5158 (_ BitVec 64)) (t!9582 List!4492)) )
))
(declare-fun arrayNoDuplicates!0 (array!14043 (_ BitVec 32) List!4492) Bool)

(assert (=> b!281833 (arrayNoDuplicates!0 lt!139256 #b00000000000000000000000000000000 Nil!4489)))

(declare-fun lt!139259 () Unit!8927)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14043 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4492) Unit!8927)

(assert (=> b!281833 (= lt!139259 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4489))))

(declare-fun b!281834 () Bool)

(declare-fun e!179045 () Bool)

(assert (=> b!281834 (= e!179045 e!179047)))

(declare-fun res!144948 () Bool)

(assert (=> b!281834 (=> (not res!144948) (not e!179047))))

(assert (=> b!281834 (= res!144948 (not (= startIndex!26 i!1267)))))

(assert (=> b!281834 (= lt!139256 (array!14044 (store (arr!6663 a!3325) i!1267 k!2581) (size!7015 a!3325)))))

(declare-fun res!144941 () Bool)

(declare-fun e!179044 () Bool)

(assert (=> start!27236 (=> (not res!144941) (not e!179044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27236 (= res!144941 (validMask!0 mask!3868))))

(assert (=> start!27236 e!179044))

(declare-fun array_inv!4617 (array!14043) Bool)

(assert (=> start!27236 (array_inv!4617 a!3325)))

(assert (=> start!27236 true))

(declare-fun b!281835 () Bool)

(declare-fun res!144947 () Bool)

(assert (=> b!281835 (=> (not res!144947) (not e!179044))))

(declare-fun arrayContainsKey!0 (array!14043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281835 (= res!144947 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281836 () Bool)

(declare-fun res!144945 () Bool)

(assert (=> b!281836 (=> (not res!144945) (not e!179044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281836 (= res!144945 (validKeyInArray!0 k!2581))))

(declare-fun b!281837 () Bool)

(declare-fun res!144946 () Bool)

(assert (=> b!281837 (=> (not res!144946) (not e!179044))))

(assert (=> b!281837 (= res!144946 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4489))))

(declare-fun b!281838 () Bool)

(declare-fun res!144942 () Bool)

(assert (=> b!281838 (=> (not res!144942) (not e!179045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14043 (_ BitVec 32)) Bool)

(assert (=> b!281838 (= res!144942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281839 () Bool)

(assert (=> b!281839 (= e!179044 e!179045)))

(declare-fun res!144943 () Bool)

(assert (=> b!281839 (=> (not res!144943) (not e!179045))))

(declare-fun lt!139258 () SeekEntryResult!1832)

(assert (=> b!281839 (= res!144943 (or (= lt!139258 (MissingZero!1832 i!1267)) (= lt!139258 (MissingVacant!1832 i!1267))))))

(assert (=> b!281839 (= lt!139258 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281840 () Bool)

(declare-fun res!144940 () Bool)

(assert (=> b!281840 (=> (not res!144940) (not e!179044))))

(assert (=> b!281840 (= res!144940 (and (= (size!7015 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7015 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7015 a!3325))))))

(declare-fun b!281841 () Bool)

(declare-fun res!144944 () Bool)

(assert (=> b!281841 (=> (not res!144944) (not e!179047))))

(assert (=> b!281841 (= res!144944 (validKeyInArray!0 (select (arr!6663 a!3325) startIndex!26)))))

(assert (= (and start!27236 res!144941) b!281840))

(assert (= (and b!281840 res!144940) b!281836))

(assert (= (and b!281836 res!144945) b!281837))

(assert (= (and b!281837 res!144946) b!281835))

(assert (= (and b!281835 res!144947) b!281839))

(assert (= (and b!281839 res!144943) b!281838))

(assert (= (and b!281838 res!144942) b!281834))

(assert (= (and b!281834 res!144948) b!281841))

(assert (= (and b!281841 res!144944) b!281833))

(declare-fun m!296261 () Bool)

(assert (=> start!27236 m!296261))

(declare-fun m!296263 () Bool)

(assert (=> start!27236 m!296263))

(declare-fun m!296265 () Bool)

(assert (=> b!281836 m!296265))

(declare-fun m!296267 () Bool)

(assert (=> b!281835 m!296267))

(declare-fun m!296269 () Bool)

(assert (=> b!281841 m!296269))

(assert (=> b!281841 m!296269))

(declare-fun m!296271 () Bool)

(assert (=> b!281841 m!296271))

(declare-fun m!296273 () Bool)

(assert (=> b!281837 m!296273))

(declare-fun m!296275 () Bool)

(assert (=> b!281839 m!296275))

(declare-fun m!296277 () Bool)

(assert (=> b!281833 m!296277))

(declare-fun m!296279 () Bool)

(assert (=> b!281833 m!296279))

(assert (=> b!281833 m!296277))

(declare-fun m!296281 () Bool)

(assert (=> b!281833 m!296281))

(declare-fun m!296283 () Bool)

(assert (=> b!281833 m!296283))

(assert (=> b!281833 m!296269))

(declare-fun m!296285 () Bool)

(assert (=> b!281833 m!296285))

(declare-fun m!296287 () Bool)

(assert (=> b!281833 m!296287))

(assert (=> b!281833 m!296269))

(declare-fun m!296289 () Bool)

(assert (=> b!281833 m!296289))

(declare-fun m!296291 () Bool)

(assert (=> b!281838 m!296291))

(assert (=> b!281834 m!296281))

(push 1)

(assert (not start!27236))

