; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26218 () Bool)

(assert start!26218)

(declare-fun b!270939 () Bool)

(declare-fun res!134978 () Bool)

(declare-fun e!174433 () Bool)

(assert (=> b!270939 (=> (not res!134978) (not e!174433))))

(declare-datatypes ((List!4130 0))(
  ( (Nil!4127) (Cons!4126 (h!4793 (_ BitVec 64)) (t!9220 List!4130)) )
))
(declare-fun noDuplicate!128 (List!4130) Bool)

(assert (=> b!270939 (= res!134978 (noDuplicate!128 Nil!4127))))

(declare-fun b!270940 () Bool)

(declare-fun res!134972 () Bool)

(assert (=> b!270940 (=> (not res!134972) (not e!174433))))

(declare-fun contains!1939 (List!4130 (_ BitVec 64)) Bool)

(assert (=> b!270940 (= res!134972 (not (contains!1939 Nil!4127 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270941 () Bool)

(declare-fun res!134971 () Bool)

(assert (=> b!270941 (=> (not res!134971) (not e!174433))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270941 (= res!134971 (not (= startIndex!26 i!1267)))))

(declare-fun b!270942 () Bool)

(declare-fun e!174431 () Bool)

(assert (=> b!270942 (= e!174431 e!174433)))

(declare-fun res!134974 () Bool)

(assert (=> b!270942 (=> (not res!134974) (not e!174433))))

(declare-datatypes ((SeekEntryResult!1470 0))(
  ( (MissingZero!1470 (index!8050 (_ BitVec 32))) (Found!1470 (index!8051 (_ BitVec 32))) (Intermediate!1470 (undefined!2282 Bool) (index!8052 (_ BitVec 32)) (x!26355 (_ BitVec 32))) (Undefined!1470) (MissingVacant!1470 (index!8053 (_ BitVec 32))) )
))
(declare-fun lt!135754 () SeekEntryResult!1470)

(assert (=> b!270942 (= res!134974 (or (= lt!135754 (MissingZero!1470 i!1267)) (= lt!135754 (MissingVacant!1470 i!1267))))))

(declare-datatypes ((array!13304 0))(
  ( (array!13305 (arr!6301 (Array (_ BitVec 32) (_ BitVec 64))) (size!6653 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13304)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13304 (_ BitVec 32)) SeekEntryResult!1470)

(assert (=> b!270942 (= lt!135754 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270943 () Bool)

(declare-fun res!134970 () Bool)

(assert (=> b!270943 (=> (not res!134970) (not e!174431))))

(declare-fun arrayContainsKey!0 (array!13304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270943 (= res!134970 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270944 () Bool)

(declare-fun res!134976 () Bool)

(assert (=> b!270944 (=> (not res!134976) (not e!174431))))

(assert (=> b!270944 (= res!134976 (and (= (size!6653 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6653 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6653 a!3325))))))

(declare-fun b!270946 () Bool)

(declare-fun res!134973 () Bool)

(assert (=> b!270946 (=> (not res!134973) (not e!174431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270946 (= res!134973 (validKeyInArray!0 k!2581))))

(declare-fun b!270947 () Bool)

(declare-fun res!134968 () Bool)

(assert (=> b!270947 (=> (not res!134968) (not e!174433))))

(assert (=> b!270947 (= res!134968 (and (bvslt (size!6653 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6653 a!3325))))))

(declare-fun b!270948 () Bool)

(declare-fun res!134975 () Bool)

(assert (=> b!270948 (=> (not res!134975) (not e!174433))))

(assert (=> b!270948 (= res!134975 (validKeyInArray!0 (select (arr!6301 a!3325) startIndex!26)))))

(declare-fun b!270949 () Bool)

(declare-fun res!134979 () Bool)

(assert (=> b!270949 (=> (not res!134979) (not e!174431))))

(declare-fun arrayNoDuplicates!0 (array!13304 (_ BitVec 32) List!4130) Bool)

(assert (=> b!270949 (= res!134979 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4127))))

(declare-fun b!270950 () Bool)

(declare-fun res!134969 () Bool)

(assert (=> b!270950 (=> (not res!134969) (not e!174433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13304 (_ BitVec 32)) Bool)

(assert (=> b!270950 (= res!134969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270951 () Bool)

(assert (=> b!270951 (= e!174433 false)))

(declare-fun lt!135755 () Bool)

(assert (=> b!270951 (= lt!135755 (contains!1939 Nil!4127 k!2581))))

(declare-fun res!134967 () Bool)

(assert (=> start!26218 (=> (not res!134967) (not e!174431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26218 (= res!134967 (validMask!0 mask!3868))))

(assert (=> start!26218 e!174431))

(declare-fun array_inv!4255 (array!13304) Bool)

(assert (=> start!26218 (array_inv!4255 a!3325)))

(assert (=> start!26218 true))

(declare-fun b!270945 () Bool)

(declare-fun res!134977 () Bool)

(assert (=> b!270945 (=> (not res!134977) (not e!174433))))

(assert (=> b!270945 (= res!134977 (not (contains!1939 Nil!4127 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!26218 res!134967) b!270944))

(assert (= (and b!270944 res!134976) b!270946))

(assert (= (and b!270946 res!134973) b!270949))

(assert (= (and b!270949 res!134979) b!270943))

(assert (= (and b!270943 res!134970) b!270942))

(assert (= (and b!270942 res!134974) b!270950))

(assert (= (and b!270950 res!134969) b!270941))

(assert (= (and b!270941 res!134971) b!270948))

(assert (= (and b!270948 res!134975) b!270947))

(assert (= (and b!270947 res!134968) b!270939))

(assert (= (and b!270939 res!134978) b!270940))

(assert (= (and b!270940 res!134972) b!270945))

(assert (= (and b!270945 res!134977) b!270951))

(declare-fun m!286417 () Bool)

(assert (=> b!270940 m!286417))

(declare-fun m!286419 () Bool)

(assert (=> start!26218 m!286419))

(declare-fun m!286421 () Bool)

(assert (=> start!26218 m!286421))

(declare-fun m!286423 () Bool)

(assert (=> b!270945 m!286423))

(declare-fun m!286425 () Bool)

(assert (=> b!270948 m!286425))

(assert (=> b!270948 m!286425))

(declare-fun m!286427 () Bool)

(assert (=> b!270948 m!286427))

(declare-fun m!286429 () Bool)

(assert (=> b!270950 m!286429))

(declare-fun m!286431 () Bool)

(assert (=> b!270942 m!286431))

(declare-fun m!286433 () Bool)

(assert (=> b!270949 m!286433))

(declare-fun m!286435 () Bool)

(assert (=> b!270943 m!286435))

(declare-fun m!286437 () Bool)

(assert (=> b!270939 m!286437))

(declare-fun m!286439 () Bool)

(assert (=> b!270946 m!286439))

(declare-fun m!286441 () Bool)

(assert (=> b!270951 m!286441))

(push 1)

