; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27318 () Bool)

(assert start!27318)

(declare-fun b!282945 () Bool)

(declare-fun e!179543 () Bool)

(declare-fun e!179541 () Bool)

(assert (=> b!282945 (= e!179543 (not e!179541))))

(declare-fun res!146060 () Bool)

(assert (=> b!282945 (=> res!146060 e!179541)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14125 0))(
  ( (array!14126 (arr!6704 (Array (_ BitVec 32) (_ BitVec 64))) (size!7056 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14125)

(assert (=> b!282945 (= res!146060 (or (bvsge startIndex!26 (bvsub (size!7056 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14125 (_ BitVec 32)) Bool)

(assert (=> b!282945 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9009 0))(
  ( (Unit!9010) )
))
(declare-fun lt!139878 () Unit!9009)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9009)

(assert (=> b!282945 (= lt!139878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139879 () array!14125)

(declare-datatypes ((SeekEntryResult!1873 0))(
  ( (MissingZero!1873 (index!9662 (_ BitVec 32))) (Found!1873 (index!9663 (_ BitVec 32))) (Intermediate!1873 (undefined!2685 Bool) (index!9664 (_ BitVec 32)) (x!27839 (_ BitVec 32))) (Undefined!1873) (MissingVacant!1873 (index!9665 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14125 (_ BitVec 32)) SeekEntryResult!1873)

(assert (=> b!282945 (= (seekEntryOrOpen!0 (select (arr!6704 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6704 a!3325) i!1267 k0!2581) startIndex!26) lt!139879 mask!3868))))

(declare-fun lt!139875 () Unit!9009)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14125 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9009)

(assert (=> b!282945 (= lt!139875 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4533 0))(
  ( (Nil!4530) (Cons!4529 (h!5199 (_ BitVec 64)) (t!9623 List!4533)) )
))
(declare-fun arrayNoDuplicates!0 (array!14125 (_ BitVec 32) List!4533) Bool)

(assert (=> b!282945 (arrayNoDuplicates!0 lt!139879 #b00000000000000000000000000000000 Nil!4530)))

(declare-fun lt!139877 () Unit!9009)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14125 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4533) Unit!9009)

(assert (=> b!282945 (= lt!139877 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4530))))

(declare-fun b!282946 () Bool)

(declare-fun res!146061 () Bool)

(declare-fun e!179545 () Bool)

(assert (=> b!282946 (=> (not res!146061) (not e!179545))))

(assert (=> b!282946 (= res!146061 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4530))))

(declare-fun res!146056 () Bool)

(assert (=> start!27318 (=> (not res!146056) (not e!179545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27318 (= res!146056 (validMask!0 mask!3868))))

(assert (=> start!27318 e!179545))

(declare-fun array_inv!4658 (array!14125) Bool)

(assert (=> start!27318 (array_inv!4658 a!3325)))

(assert (=> start!27318 true))

(declare-fun b!282947 () Bool)

(declare-fun res!146054 () Bool)

(declare-fun e!179544 () Bool)

(assert (=> b!282947 (=> (not res!146054) (not e!179544))))

(assert (=> b!282947 (= res!146054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282948 () Bool)

(assert (=> b!282948 (= e!179545 e!179544)))

(declare-fun res!146058 () Bool)

(assert (=> b!282948 (=> (not res!146058) (not e!179544))))

(declare-fun lt!139880 () SeekEntryResult!1873)

(assert (=> b!282948 (= res!146058 (or (= lt!139880 (MissingZero!1873 i!1267)) (= lt!139880 (MissingVacant!1873 i!1267))))))

(assert (=> b!282948 (= lt!139880 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282949 () Bool)

(declare-fun res!146059 () Bool)

(assert (=> b!282949 (=> (not res!146059) (not e!179543))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282949 (= res!146059 (validKeyInArray!0 (select (arr!6704 a!3325) startIndex!26)))))

(declare-fun b!282950 () Bool)

(assert (=> b!282950 (= e!179544 e!179543)))

(declare-fun res!146053 () Bool)

(assert (=> b!282950 (=> (not res!146053) (not e!179543))))

(assert (=> b!282950 (= res!146053 (not (= startIndex!26 i!1267)))))

(assert (=> b!282950 (= lt!139879 (array!14126 (store (arr!6704 a!3325) i!1267 k0!2581) (size!7056 a!3325)))))

(declare-fun b!282951 () Bool)

(declare-fun res!146055 () Bool)

(assert (=> b!282951 (=> (not res!146055) (not e!179545))))

(assert (=> b!282951 (= res!146055 (validKeyInArray!0 k0!2581))))

(declare-fun b!282952 () Bool)

(declare-fun res!146052 () Bool)

(assert (=> b!282952 (=> (not res!146052) (not e!179545))))

(declare-fun arrayContainsKey!0 (array!14125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282952 (= res!146052 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282953 () Bool)

(assert (=> b!282953 (= e!179541 true)))

(assert (=> b!282953 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!139879 mask!3868)))

(declare-fun lt!139876 () Unit!9009)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14125 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9009)

(assert (=> b!282953 (= lt!139876 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!282954 () Bool)

(declare-fun res!146057 () Bool)

(assert (=> b!282954 (=> (not res!146057) (not e!179545))))

(assert (=> b!282954 (= res!146057 (and (= (size!7056 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7056 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7056 a!3325))))))

(assert (= (and start!27318 res!146056) b!282954))

(assert (= (and b!282954 res!146057) b!282951))

(assert (= (and b!282951 res!146055) b!282946))

(assert (= (and b!282946 res!146061) b!282952))

(assert (= (and b!282952 res!146052) b!282948))

(assert (= (and b!282948 res!146058) b!282947))

(assert (= (and b!282947 res!146054) b!282950))

(assert (= (and b!282950 res!146053) b!282949))

(assert (= (and b!282949 res!146059) b!282945))

(assert (= (and b!282945 (not res!146060)) b!282953))

(declare-fun m!297737 () Bool)

(assert (=> b!282946 m!297737))

(declare-fun m!297739 () Bool)

(assert (=> b!282945 m!297739))

(declare-fun m!297741 () Bool)

(assert (=> b!282945 m!297741))

(declare-fun m!297743 () Bool)

(assert (=> b!282945 m!297743))

(declare-fun m!297745 () Bool)

(assert (=> b!282945 m!297745))

(declare-fun m!297747 () Bool)

(assert (=> b!282945 m!297747))

(declare-fun m!297749 () Bool)

(assert (=> b!282945 m!297749))

(declare-fun m!297751 () Bool)

(assert (=> b!282945 m!297751))

(declare-fun m!297753 () Bool)

(assert (=> b!282945 m!297753))

(assert (=> b!282945 m!297749))

(declare-fun m!297755 () Bool)

(assert (=> b!282945 m!297755))

(assert (=> b!282945 m!297741))

(declare-fun m!297757 () Bool)

(assert (=> b!282945 m!297757))

(declare-fun m!297759 () Bool)

(assert (=> b!282953 m!297759))

(declare-fun m!297761 () Bool)

(assert (=> b!282953 m!297761))

(declare-fun m!297763 () Bool)

(assert (=> b!282952 m!297763))

(declare-fun m!297765 () Bool)

(assert (=> b!282947 m!297765))

(declare-fun m!297767 () Bool)

(assert (=> b!282948 m!297767))

(assert (=> b!282949 m!297749))

(assert (=> b!282949 m!297749))

(declare-fun m!297769 () Bool)

(assert (=> b!282949 m!297769))

(assert (=> b!282950 m!297745))

(declare-fun m!297771 () Bool)

(assert (=> start!27318 m!297771))

(declare-fun m!297773 () Bool)

(assert (=> start!27318 m!297773))

(declare-fun m!297775 () Bool)

(assert (=> b!282951 m!297775))

(check-sat (not b!282951) (not b!282947) (not b!282946) (not b!282945) (not b!282948) (not b!282953) (not start!27318) (not b!282952) (not b!282949))
(check-sat)
