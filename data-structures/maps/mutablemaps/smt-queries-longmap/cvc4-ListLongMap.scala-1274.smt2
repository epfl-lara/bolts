; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26216 () Bool)

(assert start!26216)

(declare-fun b!270900 () Bool)

(declare-fun res!134937 () Bool)

(declare-fun e!174423 () Bool)

(assert (=> b!270900 (=> (not res!134937) (not e!174423))))

(declare-datatypes ((array!13302 0))(
  ( (array!13303 (arr!6300 (Array (_ BitVec 32) (_ BitVec 64))) (size!6652 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13302)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270900 (= res!134937 (validKeyInArray!0 (select (arr!6300 a!3325) startIndex!26)))))

(declare-fun res!134932 () Bool)

(declare-fun e!174422 () Bool)

(assert (=> start!26216 (=> (not res!134932) (not e!174422))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26216 (= res!134932 (validMask!0 mask!3868))))

(assert (=> start!26216 e!174422))

(declare-fun array_inv!4254 (array!13302) Bool)

(assert (=> start!26216 (array_inv!4254 a!3325)))

(assert (=> start!26216 true))

(declare-fun b!270901 () Bool)

(declare-fun res!134936 () Bool)

(assert (=> b!270901 (=> (not res!134936) (not e!174423))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270901 (= res!134936 (not (= startIndex!26 i!1267)))))

(declare-fun b!270902 () Bool)

(declare-fun res!134934 () Bool)

(assert (=> b!270902 (=> (not res!134934) (not e!174423))))

(declare-datatypes ((List!4129 0))(
  ( (Nil!4126) (Cons!4125 (h!4792 (_ BitVec 64)) (t!9219 List!4129)) )
))
(declare-fun noDuplicate!127 (List!4129) Bool)

(assert (=> b!270902 (= res!134934 (noDuplicate!127 Nil!4126))))

(declare-fun b!270903 () Bool)

(assert (=> b!270903 (= e!174422 e!174423)))

(declare-fun res!134938 () Bool)

(assert (=> b!270903 (=> (not res!134938) (not e!174423))))

(declare-datatypes ((SeekEntryResult!1469 0))(
  ( (MissingZero!1469 (index!8046 (_ BitVec 32))) (Found!1469 (index!8047 (_ BitVec 32))) (Intermediate!1469 (undefined!2281 Bool) (index!8048 (_ BitVec 32)) (x!26346 (_ BitVec 32))) (Undefined!1469) (MissingVacant!1469 (index!8049 (_ BitVec 32))) )
))
(declare-fun lt!135749 () SeekEntryResult!1469)

(assert (=> b!270903 (= res!134938 (or (= lt!135749 (MissingZero!1469 i!1267)) (= lt!135749 (MissingVacant!1469 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13302 (_ BitVec 32)) SeekEntryResult!1469)

(assert (=> b!270903 (= lt!135749 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270904 () Bool)

(declare-fun res!134933 () Bool)

(assert (=> b!270904 (=> (not res!134933) (not e!174423))))

(declare-fun contains!1938 (List!4129 (_ BitVec 64)) Bool)

(assert (=> b!270904 (= res!134933 (not (contains!1938 Nil!4126 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270905 () Bool)

(declare-fun res!134939 () Bool)

(assert (=> b!270905 (=> (not res!134939) (not e!174422))))

(assert (=> b!270905 (= res!134939 (validKeyInArray!0 k!2581))))

(declare-fun b!270906 () Bool)

(declare-fun res!134930 () Bool)

(assert (=> b!270906 (=> (not res!134930) (not e!174423))))

(assert (=> b!270906 (= res!134930 (and (bvslt (size!6652 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6652 a!3325))))))

(declare-fun b!270907 () Bool)

(assert (=> b!270907 (= e!174423 false)))

(declare-fun lt!135748 () Bool)

(assert (=> b!270907 (= lt!135748 (contains!1938 Nil!4126 k!2581))))

(declare-fun b!270908 () Bool)

(declare-fun res!134935 () Bool)

(assert (=> b!270908 (=> (not res!134935) (not e!174422))))

(assert (=> b!270908 (= res!134935 (and (= (size!6652 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6652 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6652 a!3325))))))

(declare-fun b!270909 () Bool)

(declare-fun res!134929 () Bool)

(assert (=> b!270909 (=> (not res!134929) (not e!174423))))

(assert (=> b!270909 (= res!134929 (not (contains!1938 Nil!4126 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270910 () Bool)

(declare-fun res!134940 () Bool)

(assert (=> b!270910 (=> (not res!134940) (not e!174422))))

(declare-fun arrayNoDuplicates!0 (array!13302 (_ BitVec 32) List!4129) Bool)

(assert (=> b!270910 (= res!134940 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4126))))

(declare-fun b!270911 () Bool)

(declare-fun res!134928 () Bool)

(assert (=> b!270911 (=> (not res!134928) (not e!174422))))

(declare-fun arrayContainsKey!0 (array!13302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270911 (= res!134928 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270912 () Bool)

(declare-fun res!134931 () Bool)

(assert (=> b!270912 (=> (not res!134931) (not e!174423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13302 (_ BitVec 32)) Bool)

(assert (=> b!270912 (= res!134931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26216 res!134932) b!270908))

(assert (= (and b!270908 res!134935) b!270905))

(assert (= (and b!270905 res!134939) b!270910))

(assert (= (and b!270910 res!134940) b!270911))

(assert (= (and b!270911 res!134928) b!270903))

(assert (= (and b!270903 res!134938) b!270912))

(assert (= (and b!270912 res!134931) b!270901))

(assert (= (and b!270901 res!134936) b!270900))

(assert (= (and b!270900 res!134937) b!270906))

(assert (= (and b!270906 res!134930) b!270902))

(assert (= (and b!270902 res!134934) b!270909))

(assert (= (and b!270909 res!134929) b!270904))

(assert (= (and b!270904 res!134933) b!270907))

(declare-fun m!286391 () Bool)

(assert (=> b!270904 m!286391))

(declare-fun m!286393 () Bool)

(assert (=> b!270909 m!286393))

(declare-fun m!286395 () Bool)

(assert (=> start!26216 m!286395))

(declare-fun m!286397 () Bool)

(assert (=> start!26216 m!286397))

(declare-fun m!286399 () Bool)

(assert (=> b!270912 m!286399))

(declare-fun m!286401 () Bool)

(assert (=> b!270905 m!286401))

(declare-fun m!286403 () Bool)

(assert (=> b!270911 m!286403))

(declare-fun m!286405 () Bool)

(assert (=> b!270902 m!286405))

(declare-fun m!286407 () Bool)

(assert (=> b!270900 m!286407))

(assert (=> b!270900 m!286407))

(declare-fun m!286409 () Bool)

(assert (=> b!270900 m!286409))

(declare-fun m!286411 () Bool)

(assert (=> b!270907 m!286411))

(declare-fun m!286413 () Bool)

(assert (=> b!270910 m!286413))

(declare-fun m!286415 () Bool)

(assert (=> b!270903 m!286415))

(push 1)

