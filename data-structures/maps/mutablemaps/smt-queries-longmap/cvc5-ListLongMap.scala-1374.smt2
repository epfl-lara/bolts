; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27106 () Bool)

(assert start!27106)

(declare-fun b!279942 () Bool)

(declare-fun e!178415 () Bool)

(assert (=> b!279942 (= e!178415 false)))

(declare-fun lt!138779 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4427 0))(
  ( (Nil!4424) (Cons!4423 (h!5093 (_ BitVec 64)) (t!9517 List!4427)) )
))
(declare-fun contains!1977 (List!4427 (_ BitVec 64)) Bool)

(assert (=> b!279942 (= lt!138779 (contains!1977 Nil!4424 k!2581))))

(declare-fun b!279944 () Bool)

(declare-fun res!143053 () Bool)

(assert (=> b!279944 (=> (not res!143053) (not e!178415))))

(assert (=> b!279944 (= res!143053 (not (contains!1977 Nil!4424 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279945 () Bool)

(declare-fun res!143061 () Bool)

(assert (=> b!279945 (=> (not res!143061) (not e!178415))))

(declare-datatypes ((array!13913 0))(
  ( (array!13914 (arr!6598 (Array (_ BitVec 32) (_ BitVec 64))) (size!6950 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13913)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13913 (_ BitVec 32)) Bool)

(assert (=> b!279945 (= res!143061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279946 () Bool)

(declare-fun res!143057 () Bool)

(assert (=> b!279946 (=> (not res!143057) (not e!178415))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279946 (= res!143057 (validKeyInArray!0 (select (arr!6598 a!3325) startIndex!26)))))

(declare-fun b!279947 () Bool)

(declare-fun res!143059 () Bool)

(assert (=> b!279947 (=> (not res!143059) (not e!178415))))

(assert (=> b!279947 (= res!143059 (and (bvslt (size!6950 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6950 a!3325))))))

(declare-fun b!279948 () Bool)

(declare-fun e!178417 () Bool)

(assert (=> b!279948 (= e!178417 e!178415)))

(declare-fun res!143050 () Bool)

(assert (=> b!279948 (=> (not res!143050) (not e!178415))))

(declare-datatypes ((SeekEntryResult!1767 0))(
  ( (MissingZero!1767 (index!9238 (_ BitVec 32))) (Found!1767 (index!9239 (_ BitVec 32))) (Intermediate!1767 (undefined!2579 Bool) (index!9240 (_ BitVec 32)) (x!27453 (_ BitVec 32))) (Undefined!1767) (MissingVacant!1767 (index!9241 (_ BitVec 32))) )
))
(declare-fun lt!138778 () SeekEntryResult!1767)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279948 (= res!143050 (or (= lt!138778 (MissingZero!1767 i!1267)) (= lt!138778 (MissingVacant!1767 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13913 (_ BitVec 32)) SeekEntryResult!1767)

(assert (=> b!279948 (= lt!138778 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279949 () Bool)

(declare-fun res!143056 () Bool)

(assert (=> b!279949 (=> (not res!143056) (not e!178417))))

(assert (=> b!279949 (= res!143056 (and (= (size!6950 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6950 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6950 a!3325))))))

(declare-fun b!279950 () Bool)

(declare-fun res!143049 () Bool)

(assert (=> b!279950 (=> (not res!143049) (not e!178415))))

(assert (=> b!279950 (= res!143049 (not (= startIndex!26 i!1267)))))

(declare-fun res!143052 () Bool)

(assert (=> start!27106 (=> (not res!143052) (not e!178417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27106 (= res!143052 (validMask!0 mask!3868))))

(assert (=> start!27106 e!178417))

(declare-fun array_inv!4552 (array!13913) Bool)

(assert (=> start!27106 (array_inv!4552 a!3325)))

(assert (=> start!27106 true))

(declare-fun b!279943 () Bool)

(declare-fun res!143054 () Bool)

(assert (=> b!279943 (=> (not res!143054) (not e!178417))))

(assert (=> b!279943 (= res!143054 (validKeyInArray!0 k!2581))))

(declare-fun b!279951 () Bool)

(declare-fun res!143051 () Bool)

(assert (=> b!279951 (=> (not res!143051) (not e!178415))))

(assert (=> b!279951 (= res!143051 (not (contains!1977 Nil!4424 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279952 () Bool)

(declare-fun res!143060 () Bool)

(assert (=> b!279952 (=> (not res!143060) (not e!178417))))

(declare-fun arrayContainsKey!0 (array!13913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279952 (= res!143060 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279953 () Bool)

(declare-fun res!143055 () Bool)

(assert (=> b!279953 (=> (not res!143055) (not e!178415))))

(declare-fun noDuplicate!161 (List!4427) Bool)

(assert (=> b!279953 (= res!143055 (noDuplicate!161 Nil!4424))))

(declare-fun b!279954 () Bool)

(declare-fun res!143058 () Bool)

(assert (=> b!279954 (=> (not res!143058) (not e!178417))))

(declare-fun arrayNoDuplicates!0 (array!13913 (_ BitVec 32) List!4427) Bool)

(assert (=> b!279954 (= res!143058 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4424))))

(assert (= (and start!27106 res!143052) b!279949))

(assert (= (and b!279949 res!143056) b!279943))

(assert (= (and b!279943 res!143054) b!279954))

(assert (= (and b!279954 res!143058) b!279952))

(assert (= (and b!279952 res!143060) b!279948))

(assert (= (and b!279948 res!143050) b!279945))

(assert (= (and b!279945 res!143061) b!279950))

(assert (= (and b!279950 res!143049) b!279946))

(assert (= (and b!279946 res!143057) b!279947))

(assert (= (and b!279947 res!143059) b!279953))

(assert (= (and b!279953 res!143055) b!279951))

(assert (= (and b!279951 res!143051) b!279944))

(assert (= (and b!279944 res!143053) b!279942))

(declare-fun m!294565 () Bool)

(assert (=> b!279943 m!294565))

(declare-fun m!294567 () Bool)

(assert (=> b!279944 m!294567))

(declare-fun m!294569 () Bool)

(assert (=> start!27106 m!294569))

(declare-fun m!294571 () Bool)

(assert (=> start!27106 m!294571))

(declare-fun m!294573 () Bool)

(assert (=> b!279948 m!294573))

(declare-fun m!294575 () Bool)

(assert (=> b!279953 m!294575))

(declare-fun m!294577 () Bool)

(assert (=> b!279942 m!294577))

(declare-fun m!294579 () Bool)

(assert (=> b!279954 m!294579))

(declare-fun m!294581 () Bool)

(assert (=> b!279945 m!294581))

(declare-fun m!294583 () Bool)

(assert (=> b!279951 m!294583))

(declare-fun m!294585 () Bool)

(assert (=> b!279946 m!294585))

(assert (=> b!279946 m!294585))

(declare-fun m!294587 () Bool)

(assert (=> b!279946 m!294587))

(declare-fun m!294589 () Bool)

(assert (=> b!279952 m!294589))

(push 1)

