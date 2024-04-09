; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26924 () Bool)

(assert start!26924)

(declare-fun b!278908 () Bool)

(declare-fun res!142285 () Bool)

(declare-fun e!177857 () Bool)

(assert (=> b!278908 (=> (not res!142285) (not e!177857))))

(declare-datatypes ((array!13878 0))(
  ( (array!13879 (arr!6585 (Array (_ BitVec 32) (_ BitVec 64))) (size!6937 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13878)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!278908 (= res!142285 (and (= (size!6937 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6937 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6937 a!3325))))))

(declare-fun b!278909 () Bool)

(declare-fun res!142288 () Bool)

(declare-fun e!177858 () Bool)

(assert (=> b!278909 (=> (not res!142288) (not e!177858))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278909 (= res!142288 (validKeyInArray!0 (select (arr!6585 a!3325) startIndex!26)))))

(declare-fun b!278910 () Bool)

(declare-fun res!142293 () Bool)

(assert (=> b!278910 (=> (not res!142293) (not e!177857))))

(declare-datatypes ((List!4414 0))(
  ( (Nil!4411) (Cons!4410 (h!5080 (_ BitVec 64)) (t!9504 List!4414)) )
))
(declare-fun arrayNoDuplicates!0 (array!13878 (_ BitVec 32) List!4414) Bool)

(assert (=> b!278910 (= res!142293 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4411))))

(declare-fun b!278911 () Bool)

(assert (=> b!278911 (= e!177857 e!177858)))

(declare-fun res!142290 () Bool)

(assert (=> b!278911 (=> (not res!142290) (not e!177858))))

(declare-datatypes ((SeekEntryResult!1754 0))(
  ( (MissingZero!1754 (index!9186 (_ BitVec 32))) (Found!1754 (index!9187 (_ BitVec 32))) (Intermediate!1754 (undefined!2566 Bool) (index!9188 (_ BitVec 32)) (x!27400 (_ BitVec 32))) (Undefined!1754) (MissingVacant!1754 (index!9189 (_ BitVec 32))) )
))
(declare-fun lt!138539 () SeekEntryResult!1754)

(assert (=> b!278911 (= res!142290 (or (= lt!138539 (MissingZero!1754 i!1267)) (= lt!138539 (MissingVacant!1754 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13878 (_ BitVec 32)) SeekEntryResult!1754)

(assert (=> b!278911 (= lt!138539 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!278912 () Bool)

(declare-fun res!142287 () Bool)

(assert (=> b!278912 (=> (not res!142287) (not e!177857))))

(assert (=> b!278912 (= res!142287 (validKeyInArray!0 k!2581))))

(declare-fun b!278913 () Bool)

(declare-fun res!142286 () Bool)

(assert (=> b!278913 (=> (not res!142286) (not e!177858))))

(assert (=> b!278913 (= res!142286 (not (= startIndex!26 i!1267)))))

(declare-fun b!278914 () Bool)

(declare-fun res!142291 () Bool)

(assert (=> b!278914 (=> (not res!142291) (not e!177858))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13878 (_ BitVec 32)) Bool)

(assert (=> b!278914 (= res!142291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278915 () Bool)

(declare-fun res!142292 () Bool)

(assert (=> b!278915 (=> (not res!142292) (not e!177857))))

(declare-fun arrayContainsKey!0 (array!13878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278915 (= res!142292 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278916 () Bool)

(assert (=> b!278916 (= e!177858 (and (bvslt (size!6937 a!3325) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!6937 a!3325))))))

(declare-fun res!142289 () Bool)

(assert (=> start!26924 (=> (not res!142289) (not e!177857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26924 (= res!142289 (validMask!0 mask!3868))))

(assert (=> start!26924 e!177857))

(declare-fun array_inv!4539 (array!13878) Bool)

(assert (=> start!26924 (array_inv!4539 a!3325)))

(assert (=> start!26924 true))

(assert (= (and start!26924 res!142289) b!278908))

(assert (= (and b!278908 res!142285) b!278912))

(assert (= (and b!278912 res!142287) b!278910))

(assert (= (and b!278910 res!142293) b!278915))

(assert (= (and b!278915 res!142292) b!278911))

(assert (= (and b!278911 res!142290) b!278914))

(assert (= (and b!278914 res!142291) b!278913))

(assert (= (and b!278913 res!142286) b!278909))

(assert (= (and b!278909 res!142288) b!278916))

(declare-fun m!293863 () Bool)

(assert (=> b!278909 m!293863))

(assert (=> b!278909 m!293863))

(declare-fun m!293865 () Bool)

(assert (=> b!278909 m!293865))

(declare-fun m!293867 () Bool)

(assert (=> b!278915 m!293867))

(declare-fun m!293869 () Bool)

(assert (=> b!278910 m!293869))

(declare-fun m!293871 () Bool)

(assert (=> b!278914 m!293871))

(declare-fun m!293873 () Bool)

(assert (=> b!278911 m!293873))

(declare-fun m!293875 () Bool)

(assert (=> start!26924 m!293875))

(declare-fun m!293877 () Bool)

(assert (=> start!26924 m!293877))

(declare-fun m!293879 () Bool)

(assert (=> b!278912 m!293879))

(push 1)

