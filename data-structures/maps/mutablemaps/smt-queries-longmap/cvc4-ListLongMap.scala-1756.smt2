; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32146 () Bool)

(assert start!32146)

(declare-fun b!320097 () Bool)

(declare-fun res!174501 () Bool)

(declare-fun e!198661 () Bool)

(assert (=> b!320097 (=> (not res!174501) (not e!198661))))

(declare-datatypes ((array!16377 0))(
  ( (array!16378 (arr!7746 (Array (_ BitVec 32) (_ BitVec 64))) (size!8098 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16377)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!320097 (= res!174501 (and (= (size!8098 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8098 a!3305))))))

(declare-fun b!320098 () Bool)

(declare-fun res!174503 () Bool)

(assert (=> b!320098 (=> (not res!174503) (not e!198661))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320098 (= res!174503 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!320099 () Bool)

(declare-fun res!174499 () Bool)

(assert (=> b!320099 (=> (not res!174499) (not e!198661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16377 (_ BitVec 32)) Bool)

(assert (=> b!320099 (= res!174499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun b!320100 () Bool)

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!320100 (= e!198661 (and (= (select (arr!7746 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8098 a!3305)) (bvslt mask!3777 #b00000000000000000000000000000000)))))

(declare-fun res!174502 () Bool)

(assert (=> start!32146 (=> (not res!174502) (not e!198661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32146 (= res!174502 (validMask!0 mask!3777))))

(assert (=> start!32146 e!198661))

(declare-fun array_inv!5700 (array!16377) Bool)

(assert (=> start!32146 (array_inv!5700 a!3305)))

(assert (=> start!32146 true))

(declare-fun b!320101 () Bool)

(declare-fun res!174504 () Bool)

(assert (=> b!320101 (=> (not res!174504) (not e!198661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320101 (= res!174504 (validKeyInArray!0 k!2497))))

(declare-fun b!320102 () Bool)

(declare-fun res!174498 () Bool)

(assert (=> b!320102 (=> (not res!174498) (not e!198661))))

(declare-datatypes ((SeekEntryResult!2888 0))(
  ( (MissingZero!2888 (index!13728 (_ BitVec 32))) (Found!2888 (index!13729 (_ BitVec 32))) (Intermediate!2888 (undefined!3700 Bool) (index!13730 (_ BitVec 32)) (x!31960 (_ BitVec 32))) (Undefined!2888) (MissingVacant!2888 (index!13731 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16377 (_ BitVec 32)) SeekEntryResult!2888)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320102 (= res!174498 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) (Intermediate!2888 false resIndex!58 resX!58)))))

(declare-fun b!320103 () Bool)

(declare-fun res!174500 () Bool)

(assert (=> b!320103 (=> (not res!174500) (not e!198661))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16377 (_ BitVec 32)) SeekEntryResult!2888)

(assert (=> b!320103 (= res!174500 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2888 i!1250)))))

(assert (= (and start!32146 res!174502) b!320097))

(assert (= (and b!320097 res!174501) b!320101))

(assert (= (and b!320101 res!174504) b!320098))

(assert (= (and b!320098 res!174503) b!320103))

(assert (= (and b!320103 res!174500) b!320099))

(assert (= (and b!320099 res!174499) b!320102))

(assert (= (and b!320102 res!174498) b!320100))

(declare-fun m!328537 () Bool)

(assert (=> b!320098 m!328537))

(declare-fun m!328539 () Bool)

(assert (=> b!320101 m!328539))

(declare-fun m!328541 () Bool)

(assert (=> b!320099 m!328541))

(declare-fun m!328543 () Bool)

(assert (=> b!320100 m!328543))

(declare-fun m!328545 () Bool)

(assert (=> start!32146 m!328545))

(declare-fun m!328547 () Bool)

(assert (=> start!32146 m!328547))

(declare-fun m!328549 () Bool)

(assert (=> b!320102 m!328549))

(assert (=> b!320102 m!328549))

(declare-fun m!328551 () Bool)

(assert (=> b!320102 m!328551))

(declare-fun m!328553 () Bool)

(assert (=> b!320103 m!328553))

(push 1)

