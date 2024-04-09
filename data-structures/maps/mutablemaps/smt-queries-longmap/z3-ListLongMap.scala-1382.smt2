; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27156 () Bool)

(assert start!27156)

(declare-fun b!280753 () Bool)

(declare-fun res!143868 () Bool)

(declare-fun e!178642 () Bool)

(assert (=> b!280753 (=> (not res!143868) (not e!178642))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280753 (= res!143868 (not (= startIndex!26 i!1267)))))

(declare-fun b!280754 () Bool)

(declare-fun res!143860 () Bool)

(declare-fun e!178641 () Bool)

(assert (=> b!280754 (=> (not res!143860) (not e!178641))))

(declare-datatypes ((array!13963 0))(
  ( (array!13964 (arr!6623 (Array (_ BitVec 32) (_ BitVec 64))) (size!6975 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13963)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280754 (= res!143860 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280755 () Bool)

(declare-fun res!143865 () Bool)

(assert (=> b!280755 (=> (not res!143865) (not e!178642))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13963 (_ BitVec 32)) Bool)

(assert (=> b!280755 (= res!143865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280757 () Bool)

(declare-fun res!143861 () Bool)

(assert (=> b!280757 (=> (not res!143861) (not e!178641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280757 (= res!143861 (validKeyInArray!0 k0!2581))))

(declare-fun b!280758 () Bool)

(declare-fun res!143863 () Bool)

(assert (=> b!280758 (=> (not res!143863) (not e!178642))))

(assert (=> b!280758 (= res!143863 (validKeyInArray!0 (select (arr!6623 a!3325) startIndex!26)))))

(declare-fun b!280759 () Bool)

(declare-fun res!143862 () Bool)

(assert (=> b!280759 (=> (not res!143862) (not e!178641))))

(assert (=> b!280759 (= res!143862 (and (= (size!6975 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6975 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6975 a!3325))))))

(declare-fun res!143867 () Bool)

(assert (=> start!27156 (=> (not res!143867) (not e!178641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27156 (= res!143867 (validMask!0 mask!3868))))

(assert (=> start!27156 e!178641))

(declare-fun array_inv!4577 (array!13963) Bool)

(assert (=> start!27156 (array_inv!4577 a!3325)))

(assert (=> start!27156 true))

(declare-fun b!280756 () Bool)

(assert (=> b!280756 (= e!178641 e!178642)))

(declare-fun res!143866 () Bool)

(assert (=> b!280756 (=> (not res!143866) (not e!178642))))

(declare-datatypes ((SeekEntryResult!1792 0))(
  ( (MissingZero!1792 (index!9338 (_ BitVec 32))) (Found!1792 (index!9339 (_ BitVec 32))) (Intermediate!1792 (undefined!2604 Bool) (index!9340 (_ BitVec 32)) (x!27542 (_ BitVec 32))) (Undefined!1792) (MissingVacant!1792 (index!9341 (_ BitVec 32))) )
))
(declare-fun lt!138928 () SeekEntryResult!1792)

(assert (=> b!280756 (= res!143866 (or (= lt!138928 (MissingZero!1792 i!1267)) (= lt!138928 (MissingVacant!1792 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13963 (_ BitVec 32)) SeekEntryResult!1792)

(assert (=> b!280756 (= lt!138928 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280760 () Bool)

(assert (=> b!280760 (= e!178642 (not true))))

(declare-datatypes ((List!4452 0))(
  ( (Nil!4449) (Cons!4448 (h!5118 (_ BitVec 64)) (t!9542 List!4452)) )
))
(declare-fun arrayNoDuplicates!0 (array!13963 (_ BitVec 32) List!4452) Bool)

(assert (=> b!280760 (arrayNoDuplicates!0 (array!13964 (store (arr!6623 a!3325) i!1267 k0!2581) (size!6975 a!3325)) #b00000000000000000000000000000000 Nil!4449)))

(declare-datatypes ((Unit!8847 0))(
  ( (Unit!8848) )
))
(declare-fun lt!138929 () Unit!8847)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13963 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4452) Unit!8847)

(assert (=> b!280760 (= lt!138929 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4449))))

(declare-fun b!280761 () Bool)

(declare-fun res!143864 () Bool)

(assert (=> b!280761 (=> (not res!143864) (not e!178641))))

(assert (=> b!280761 (= res!143864 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4449))))

(assert (= (and start!27156 res!143867) b!280759))

(assert (= (and b!280759 res!143862) b!280757))

(assert (= (and b!280757 res!143861) b!280761))

(assert (= (and b!280761 res!143864) b!280754))

(assert (= (and b!280754 res!143860) b!280756))

(assert (= (and b!280756 res!143866) b!280755))

(assert (= (and b!280755 res!143865) b!280753))

(assert (= (and b!280753 res!143868) b!280758))

(assert (= (and b!280758 res!143863) b!280760))

(declare-fun m!295189 () Bool)

(assert (=> start!27156 m!295189))

(declare-fun m!295191 () Bool)

(assert (=> start!27156 m!295191))

(declare-fun m!295193 () Bool)

(assert (=> b!280755 m!295193))

(declare-fun m!295195 () Bool)

(assert (=> b!280760 m!295195))

(declare-fun m!295197 () Bool)

(assert (=> b!280760 m!295197))

(declare-fun m!295199 () Bool)

(assert (=> b!280760 m!295199))

(declare-fun m!295201 () Bool)

(assert (=> b!280761 m!295201))

(declare-fun m!295203 () Bool)

(assert (=> b!280754 m!295203))

(declare-fun m!295205 () Bool)

(assert (=> b!280758 m!295205))

(assert (=> b!280758 m!295205))

(declare-fun m!295207 () Bool)

(assert (=> b!280758 m!295207))

(declare-fun m!295209 () Bool)

(assert (=> b!280757 m!295209))

(declare-fun m!295211 () Bool)

(assert (=> b!280756 m!295211))

(check-sat (not b!280758) (not b!280760) (not b!280754) (not b!280757) (not b!280756) (not start!27156) (not b!280761) (not b!280755))
(check-sat)
