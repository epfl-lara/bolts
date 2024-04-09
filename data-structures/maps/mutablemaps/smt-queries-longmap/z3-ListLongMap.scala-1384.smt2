; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27168 () Bool)

(assert start!27168)

(declare-fun b!280915 () Bool)

(declare-fun res!144027 () Bool)

(declare-fun e!178696 () Bool)

(assert (=> b!280915 (=> (not res!144027) (not e!178696))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280915 (= res!144027 (validKeyInArray!0 k0!2581))))

(declare-fun b!280916 () Bool)

(declare-fun res!144030 () Bool)

(declare-fun e!178695 () Bool)

(assert (=> b!280916 (=> (not res!144030) (not e!178695))))

(declare-datatypes ((array!13975 0))(
  ( (array!13976 (arr!6629 (Array (_ BitVec 32) (_ BitVec 64))) (size!6981 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13975)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13975 (_ BitVec 32)) Bool)

(assert (=> b!280916 (= res!144030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280917 () Bool)

(declare-fun res!144025 () Bool)

(assert (=> b!280917 (=> (not res!144025) (not e!178696))))

(declare-fun arrayContainsKey!0 (array!13975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280917 (= res!144025 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280918 () Bool)

(assert (=> b!280918 (= e!178696 e!178695)))

(declare-fun res!144026 () Bool)

(assert (=> b!280918 (=> (not res!144026) (not e!178695))))

(declare-datatypes ((SeekEntryResult!1798 0))(
  ( (MissingZero!1798 (index!9362 (_ BitVec 32))) (Found!1798 (index!9363 (_ BitVec 32))) (Intermediate!1798 (undefined!2610 Bool) (index!9364 (_ BitVec 32)) (x!27564 (_ BitVec 32))) (Undefined!1798) (MissingVacant!1798 (index!9365 (_ BitVec 32))) )
))
(declare-fun lt!138964 () SeekEntryResult!1798)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280918 (= res!144026 (or (= lt!138964 (MissingZero!1798 i!1267)) (= lt!138964 (MissingVacant!1798 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13975 (_ BitVec 32)) SeekEntryResult!1798)

(assert (=> b!280918 (= lt!138964 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280919 () Bool)

(declare-fun res!144029 () Bool)

(assert (=> b!280919 (=> (not res!144029) (not e!178695))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280919 (= res!144029 (not (= startIndex!26 i!1267)))))

(declare-fun res!144022 () Bool)

(assert (=> start!27168 (=> (not res!144022) (not e!178696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27168 (= res!144022 (validMask!0 mask!3868))))

(assert (=> start!27168 e!178696))

(declare-fun array_inv!4583 (array!13975) Bool)

(assert (=> start!27168 (array_inv!4583 a!3325)))

(assert (=> start!27168 true))

(declare-fun b!280920 () Bool)

(declare-fun res!144028 () Bool)

(assert (=> b!280920 (=> (not res!144028) (not e!178696))))

(assert (=> b!280920 (= res!144028 (and (= (size!6981 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6981 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6981 a!3325))))))

(declare-fun b!280921 () Bool)

(declare-fun res!144024 () Bool)

(assert (=> b!280921 (=> (not res!144024) (not e!178695))))

(assert (=> b!280921 (= res!144024 (validKeyInArray!0 (select (arr!6629 a!3325) startIndex!26)))))

(declare-fun b!280922 () Bool)

(declare-fun res!144023 () Bool)

(assert (=> b!280922 (=> (not res!144023) (not e!178696))))

(declare-datatypes ((List!4458 0))(
  ( (Nil!4455) (Cons!4454 (h!5124 (_ BitVec 64)) (t!9548 List!4458)) )
))
(declare-fun arrayNoDuplicates!0 (array!13975 (_ BitVec 32) List!4458) Bool)

(assert (=> b!280922 (= res!144023 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4455))))

(declare-fun b!280923 () Bool)

(assert (=> b!280923 (= e!178695 (not (not (= i!1267 startIndex!26))))))

(assert (=> b!280923 (arrayNoDuplicates!0 (array!13976 (store (arr!6629 a!3325) i!1267 k0!2581) (size!6981 a!3325)) #b00000000000000000000000000000000 Nil!4455)))

(declare-datatypes ((Unit!8859 0))(
  ( (Unit!8860) )
))
(declare-fun lt!138965 () Unit!8859)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13975 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4458) Unit!8859)

(assert (=> b!280923 (= lt!138965 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4455))))

(assert (= (and start!27168 res!144022) b!280920))

(assert (= (and b!280920 res!144028) b!280915))

(assert (= (and b!280915 res!144027) b!280922))

(assert (= (and b!280922 res!144023) b!280917))

(assert (= (and b!280917 res!144025) b!280918))

(assert (= (and b!280918 res!144026) b!280916))

(assert (= (and b!280916 res!144030) b!280919))

(assert (= (and b!280919 res!144029) b!280921))

(assert (= (and b!280921 res!144024) b!280923))

(declare-fun m!295333 () Bool)

(assert (=> b!280915 m!295333))

(declare-fun m!295335 () Bool)

(assert (=> b!280918 m!295335))

(declare-fun m!295337 () Bool)

(assert (=> b!280923 m!295337))

(declare-fun m!295339 () Bool)

(assert (=> b!280923 m!295339))

(declare-fun m!295341 () Bool)

(assert (=> b!280923 m!295341))

(declare-fun m!295343 () Bool)

(assert (=> b!280922 m!295343))

(declare-fun m!295345 () Bool)

(assert (=> b!280916 m!295345))

(declare-fun m!295347 () Bool)

(assert (=> b!280921 m!295347))

(assert (=> b!280921 m!295347))

(declare-fun m!295349 () Bool)

(assert (=> b!280921 m!295349))

(declare-fun m!295351 () Bool)

(assert (=> start!27168 m!295351))

(declare-fun m!295353 () Bool)

(assert (=> start!27168 m!295353))

(declare-fun m!295355 () Bool)

(assert (=> b!280917 m!295355))

(check-sat (not b!280923) (not b!280922) (not b!280918) (not b!280915) (not b!280916) (not b!280921) (not start!27168) (not b!280917))
(check-sat)
