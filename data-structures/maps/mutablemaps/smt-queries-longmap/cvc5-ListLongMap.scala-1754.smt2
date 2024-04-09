; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32130 () Bool)

(assert start!32130)

(declare-fun b!319945 () Bool)

(declare-fun res!174346 () Bool)

(declare-fun e!198613 () Bool)

(assert (=> b!319945 (=> (not res!174346) (not e!198613))))

(declare-datatypes ((array!16361 0))(
  ( (array!16362 (arr!7738 (Array (_ BitVec 32) (_ BitVec 64))) (size!8090 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16361)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16361 (_ BitVec 32)) Bool)

(assert (=> b!319945 (= res!174346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319946 () Bool)

(declare-fun res!174351 () Bool)

(assert (=> b!319946 (=> (not res!174351) (not e!198613))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2880 0))(
  ( (MissingZero!2880 (index!13696 (_ BitVec 32))) (Found!2880 (index!13697 (_ BitVec 32))) (Intermediate!2880 (undefined!3692 Bool) (index!13698 (_ BitVec 32)) (x!31936 (_ BitVec 32))) (Undefined!2880) (MissingVacant!2880 (index!13699 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16361 (_ BitVec 32)) SeekEntryResult!2880)

(assert (=> b!319946 (= res!174351 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2880 i!1250)))))

(declare-fun b!319947 () Bool)

(declare-fun res!174350 () Bool)

(assert (=> b!319947 (=> (not res!174350) (not e!198613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319947 (= res!174350 (validKeyInArray!0 k!2497))))

(declare-fun b!319948 () Bool)

(assert (=> b!319948 (= e!198613 false)))

(declare-fun lt!155948 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319948 (= lt!155948 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319950 () Bool)

(declare-fun res!174347 () Bool)

(assert (=> b!319950 (=> (not res!174347) (not e!198613))))

(assert (=> b!319950 (= res!174347 (and (= (size!8090 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8090 a!3305))))))

(declare-fun res!174348 () Bool)

(assert (=> start!32130 (=> (not res!174348) (not e!198613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32130 (= res!174348 (validMask!0 mask!3777))))

(assert (=> start!32130 e!198613))

(assert (=> start!32130 true))

(declare-fun array_inv!5692 (array!16361) Bool)

(assert (=> start!32130 (array_inv!5692 a!3305)))

(declare-fun b!319949 () Bool)

(declare-fun res!174349 () Bool)

(assert (=> b!319949 (=> (not res!174349) (not e!198613))))

(declare-fun arrayContainsKey!0 (array!16361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319949 (= res!174349 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32130 res!174348) b!319950))

(assert (= (and b!319950 res!174347) b!319947))

(assert (= (and b!319947 res!174350) b!319949))

(assert (= (and b!319949 res!174349) b!319946))

(assert (= (and b!319946 res!174351) b!319945))

(assert (= (and b!319945 res!174346) b!319948))

(declare-fun m!328411 () Bool)

(assert (=> b!319946 m!328411))

(declare-fun m!328413 () Bool)

(assert (=> b!319947 m!328413))

(declare-fun m!328415 () Bool)

(assert (=> b!319945 m!328415))

(declare-fun m!328417 () Bool)

(assert (=> b!319949 m!328417))

(declare-fun m!328419 () Bool)

(assert (=> start!32130 m!328419))

(declare-fun m!328421 () Bool)

(assert (=> start!32130 m!328421))

(declare-fun m!328423 () Bool)

(assert (=> b!319948 m!328423))

(push 1)

(assert (not b!319948))

(assert (not start!32130))

(assert (not b!319949))

(assert (not b!319945))

(assert (not b!319946))

(assert (not b!319947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

