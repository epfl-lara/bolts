; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44308 () Bool)

(assert start!44308)

(declare-fun b!486949 () Bool)

(declare-fun res!290488 () Bool)

(declare-fun e!286561 () Bool)

(assert (=> b!486949 (=> (not res!290488) (not e!286561))))

(declare-datatypes ((array!31519 0))(
  ( (array!31520 (arr!15150 (Array (_ BitVec 32) (_ BitVec 64))) (size!15514 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31519)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31519 (_ BitVec 32)) Bool)

(assert (=> b!486949 (= res!290488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486950 () Bool)

(declare-fun res!290491 () Bool)

(assert (=> b!486950 (=> (not res!290491) (not e!286561))))

(declare-datatypes ((List!9361 0))(
  ( (Nil!9358) (Cons!9357 (h!10213 (_ BitVec 64)) (t!15597 List!9361)) )
))
(declare-fun arrayNoDuplicates!0 (array!31519 (_ BitVec 32) List!9361) Bool)

(assert (=> b!486950 (= res!290491 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9358))))

(declare-fun b!486951 () Bool)

(declare-fun res!290489 () Bool)

(declare-fun e!286559 () Bool)

(assert (=> b!486951 (=> (not res!290489) (not e!286559))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486951 (= res!290489 (validKeyInArray!0 (select (arr!15150 a!3235) j!176)))))

(declare-fun b!486953 () Bool)

(declare-fun res!290486 () Bool)

(assert (=> b!486953 (=> (not res!290486) (not e!286559))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486953 (= res!290486 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486954 () Bool)

(assert (=> b!486954 (= e!286561 (not true))))

(assert (=> b!486954 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14186 0))(
  ( (Unit!14187) )
))
(declare-fun lt!219914 () Unit!14186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14186)

(assert (=> b!486954 (= lt!219914 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!486955 () Bool)

(declare-fun res!290487 () Bool)

(assert (=> b!486955 (=> (not res!290487) (not e!286559))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!486955 (= res!290487 (and (= (size!15514 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15514 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15514 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486956 () Bool)

(declare-fun res!290490 () Bool)

(assert (=> b!486956 (=> (not res!290490) (not e!286559))))

(assert (=> b!486956 (= res!290490 (validKeyInArray!0 k!2280))))

(declare-fun res!290492 () Bool)

(assert (=> start!44308 (=> (not res!290492) (not e!286559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44308 (= res!290492 (validMask!0 mask!3524))))

(assert (=> start!44308 e!286559))

(assert (=> start!44308 true))

(declare-fun array_inv!10924 (array!31519) Bool)

(assert (=> start!44308 (array_inv!10924 a!3235)))

(declare-fun b!486952 () Bool)

(assert (=> b!486952 (= e!286559 e!286561)))

(declare-fun res!290485 () Bool)

(assert (=> b!486952 (=> (not res!290485) (not e!286561))))

(declare-datatypes ((SeekEntryResult!3624 0))(
  ( (MissingZero!3624 (index!16675 (_ BitVec 32))) (Found!3624 (index!16676 (_ BitVec 32))) (Intermediate!3624 (undefined!4436 Bool) (index!16677 (_ BitVec 32)) (x!45831 (_ BitVec 32))) (Undefined!3624) (MissingVacant!3624 (index!16678 (_ BitVec 32))) )
))
(declare-fun lt!219913 () SeekEntryResult!3624)

(assert (=> b!486952 (= res!290485 (or (= lt!219913 (MissingZero!3624 i!1204)) (= lt!219913 (MissingVacant!3624 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31519 (_ BitVec 32)) SeekEntryResult!3624)

(assert (=> b!486952 (= lt!219913 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44308 res!290492) b!486955))

(assert (= (and b!486955 res!290487) b!486951))

(assert (= (and b!486951 res!290489) b!486956))

(assert (= (and b!486956 res!290490) b!486953))

(assert (= (and b!486953 res!290486) b!486952))

(assert (= (and b!486952 res!290485) b!486949))

(assert (= (and b!486949 res!290488) b!486950))

(assert (= (and b!486950 res!290491) b!486954))

(declare-fun m!466831 () Bool)

(assert (=> b!486956 m!466831))

(declare-fun m!466833 () Bool)

(assert (=> b!486949 m!466833))

(declare-fun m!466835 () Bool)

(assert (=> b!486950 m!466835))

(declare-fun m!466837 () Bool)

(assert (=> b!486951 m!466837))

(assert (=> b!486951 m!466837))

(declare-fun m!466839 () Bool)

(assert (=> b!486951 m!466839))

(declare-fun m!466841 () Bool)

(assert (=> b!486954 m!466841))

(declare-fun m!466843 () Bool)

(assert (=> b!486954 m!466843))

(declare-fun m!466845 () Bool)

(assert (=> b!486952 m!466845))

(declare-fun m!466847 () Bool)

(assert (=> b!486953 m!466847))

(declare-fun m!466849 () Bool)

(assert (=> start!44308 m!466849))

(declare-fun m!466851 () Bool)

(assert (=> start!44308 m!466851))

(push 1)

