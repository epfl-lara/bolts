; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26212 () Bool)

(assert start!26212)

(declare-fun res!134861 () Bool)

(declare-fun e!174405 () Bool)

(assert (=> start!26212 (=> (not res!134861) (not e!174405))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26212 (= res!134861 (validMask!0 mask!3868))))

(assert (=> start!26212 e!174405))

(declare-datatypes ((array!13298 0))(
  ( (array!13299 (arr!6298 (Array (_ BitVec 32) (_ BitVec 64))) (size!6650 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13298)

(declare-fun array_inv!4252 (array!13298) Bool)

(assert (=> start!26212 (array_inv!4252 a!3325)))

(assert (=> start!26212 true))

(declare-fun b!270822 () Bool)

(declare-fun res!134858 () Bool)

(assert (=> b!270822 (=> (not res!134858) (not e!174405))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270822 (= res!134858 (and (= (size!6650 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6650 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6650 a!3325))))))

(declare-fun b!270823 () Bool)

(declare-fun res!134852 () Bool)

(assert (=> b!270823 (=> (not res!134852) (not e!174405))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270823 (= res!134852 (validKeyInArray!0 k!2581))))

(declare-fun b!270824 () Bool)

(declare-fun res!134857 () Bool)

(declare-fun e!174404 () Bool)

(assert (=> b!270824 (=> (not res!134857) (not e!174404))))

(assert (=> b!270824 (= res!134857 (not (= startIndex!26 i!1267)))))

(declare-fun b!270825 () Bool)

(declare-fun res!134860 () Bool)

(assert (=> b!270825 (=> (not res!134860) (not e!174404))))

(assert (=> b!270825 (= res!134860 (and (bvslt (size!6650 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6650 a!3325))))))

(declare-fun b!270826 () Bool)

(declare-fun res!134859 () Bool)

(assert (=> b!270826 (=> (not res!134859) (not e!174405))))

(declare-datatypes ((List!4127 0))(
  ( (Nil!4124) (Cons!4123 (h!4790 (_ BitVec 64)) (t!9217 List!4127)) )
))
(declare-fun arrayNoDuplicates!0 (array!13298 (_ BitVec 32) List!4127) Bool)

(assert (=> b!270826 (= res!134859 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4124))))

(declare-fun b!270827 () Bool)

(declare-fun res!134854 () Bool)

(assert (=> b!270827 (=> (not res!134854) (not e!174405))))

(declare-fun arrayContainsKey!0 (array!13298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270827 (= res!134854 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270828 () Bool)

(assert (=> b!270828 (= e!174404 false)))

(declare-fun lt!135737 () Bool)

(declare-fun contains!1936 (List!4127 (_ BitVec 64)) Bool)

(assert (=> b!270828 (= lt!135737 (contains!1936 Nil!4124 k!2581))))

(declare-fun b!270829 () Bool)

(assert (=> b!270829 (= e!174405 e!174404)))

(declare-fun res!134856 () Bool)

(assert (=> b!270829 (=> (not res!134856) (not e!174404))))

(declare-datatypes ((SeekEntryResult!1467 0))(
  ( (MissingZero!1467 (index!8038 (_ BitVec 32))) (Found!1467 (index!8039 (_ BitVec 32))) (Intermediate!1467 (undefined!2279 Bool) (index!8040 (_ BitVec 32)) (x!26344 (_ BitVec 32))) (Undefined!1467) (MissingVacant!1467 (index!8041 (_ BitVec 32))) )
))
(declare-fun lt!135736 () SeekEntryResult!1467)

(assert (=> b!270829 (= res!134856 (or (= lt!135736 (MissingZero!1467 i!1267)) (= lt!135736 (MissingVacant!1467 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13298 (_ BitVec 32)) SeekEntryResult!1467)

(assert (=> b!270829 (= lt!135736 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270830 () Bool)

(declare-fun res!134862 () Bool)

(assert (=> b!270830 (=> (not res!134862) (not e!174404))))

(assert (=> b!270830 (= res!134862 (validKeyInArray!0 (select (arr!6298 a!3325) startIndex!26)))))

(declare-fun b!270831 () Bool)

(declare-fun res!134851 () Bool)

(assert (=> b!270831 (=> (not res!134851) (not e!174404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13298 (_ BitVec 32)) Bool)

(assert (=> b!270831 (= res!134851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270832 () Bool)

(declare-fun res!134855 () Bool)

(assert (=> b!270832 (=> (not res!134855) (not e!174404))))

(assert (=> b!270832 (= res!134855 (not (contains!1936 Nil!4124 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270833 () Bool)

(declare-fun res!134853 () Bool)

(assert (=> b!270833 (=> (not res!134853) (not e!174404))))

(declare-fun noDuplicate!125 (List!4127) Bool)

(assert (=> b!270833 (= res!134853 (noDuplicate!125 Nil!4124))))

(declare-fun b!270834 () Bool)

(declare-fun res!134850 () Bool)

(assert (=> b!270834 (=> (not res!134850) (not e!174404))))

(assert (=> b!270834 (= res!134850 (not (contains!1936 Nil!4124 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!26212 res!134861) b!270822))

(assert (= (and b!270822 res!134858) b!270823))

(assert (= (and b!270823 res!134852) b!270826))

(assert (= (and b!270826 res!134859) b!270827))

(assert (= (and b!270827 res!134854) b!270829))

(assert (= (and b!270829 res!134856) b!270831))

(assert (= (and b!270831 res!134851) b!270824))

(assert (= (and b!270824 res!134857) b!270830))

(assert (= (and b!270830 res!134862) b!270825))

(assert (= (and b!270825 res!134860) b!270833))

(assert (= (and b!270833 res!134853) b!270832))

(assert (= (and b!270832 res!134855) b!270834))

(assert (= (and b!270834 res!134850) b!270828))

(declare-fun m!286339 () Bool)

(assert (=> b!270830 m!286339))

(assert (=> b!270830 m!286339))

(declare-fun m!286341 () Bool)

(assert (=> b!270830 m!286341))

(declare-fun m!286343 () Bool)

(assert (=> b!270829 m!286343))

(declare-fun m!286345 () Bool)

(assert (=> b!270823 m!286345))

(declare-fun m!286347 () Bool)

(assert (=> b!270832 m!286347))

(declare-fun m!286349 () Bool)

(assert (=> b!270834 m!286349))

(declare-fun m!286351 () Bool)

(assert (=> b!270826 m!286351))

(declare-fun m!286353 () Bool)

(assert (=> b!270828 m!286353))

(declare-fun m!286355 () Bool)

(assert (=> b!270833 m!286355))

(declare-fun m!286357 () Bool)

(assert (=> b!270831 m!286357))

(declare-fun m!286359 () Bool)

(assert (=> start!26212 m!286359))

(declare-fun m!286361 () Bool)

(assert (=> start!26212 m!286361))

(declare-fun m!286363 () Bool)

(assert (=> b!270827 m!286363))

(push 1)

