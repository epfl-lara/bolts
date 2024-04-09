; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32068 () Bool)

(assert start!32068)

(declare-fun b!319657 () Bool)

(declare-fun res!174129 () Bool)

(declare-fun e!198480 () Bool)

(assert (=> b!319657 (=> (not res!174129) (not e!198480))))

(declare-datatypes ((array!16338 0))(
  ( (array!16339 (arr!7728 (Array (_ BitVec 32) (_ BitVec 64))) (size!8080 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16338)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319657 (= res!174129 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319658 () Bool)

(declare-fun res!174130 () Bool)

(assert (=> b!319658 (=> (not res!174130) (not e!198480))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2870 0))(
  ( (MissingZero!2870 (index!13656 (_ BitVec 32))) (Found!2870 (index!13657 (_ BitVec 32))) (Intermediate!2870 (undefined!3682 Bool) (index!13658 (_ BitVec 32)) (x!31891 (_ BitVec 32))) (Undefined!2870) (MissingVacant!2870 (index!13659 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16338 (_ BitVec 32)) SeekEntryResult!2870)

(assert (=> b!319658 (= res!174130 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2870 i!1250)))))

(declare-fun b!319659 () Bool)

(declare-fun res!174128 () Bool)

(assert (=> b!319659 (=> (not res!174128) (not e!198480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319659 (= res!174128 (validKeyInArray!0 k!2497))))

(declare-fun b!319660 () Bool)

(assert (=> b!319660 (= e!198480 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!155846 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319660 (= lt!155846 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319661 () Bool)

(declare-fun res!174132 () Bool)

(assert (=> b!319661 (=> (not res!174132) (not e!198480))))

(assert (=> b!319661 (= res!174132 (and (= (size!8080 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8080 a!3305))))))

(declare-fun res!174131 () Bool)

(assert (=> start!32068 (=> (not res!174131) (not e!198480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32068 (= res!174131 (validMask!0 mask!3777))))

(assert (=> start!32068 e!198480))

(assert (=> start!32068 true))

(declare-fun array_inv!5682 (array!16338) Bool)

(assert (=> start!32068 (array_inv!5682 a!3305)))

(declare-fun b!319662 () Bool)

(declare-fun res!174127 () Bool)

(assert (=> b!319662 (=> (not res!174127) (not e!198480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16338 (_ BitVec 32)) Bool)

(assert (=> b!319662 (= res!174127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32068 res!174131) b!319661))

(assert (= (and b!319661 res!174132) b!319659))

(assert (= (and b!319659 res!174128) b!319657))

(assert (= (and b!319657 res!174129) b!319658))

(assert (= (and b!319658 res!174130) b!319662))

(assert (= (and b!319662 res!174127) b!319660))

(declare-fun m!328193 () Bool)

(assert (=> b!319662 m!328193))

(declare-fun m!328195 () Bool)

(assert (=> b!319660 m!328195))

(declare-fun m!328197 () Bool)

(assert (=> b!319657 m!328197))

(declare-fun m!328199 () Bool)

(assert (=> start!32068 m!328199))

(declare-fun m!328201 () Bool)

(assert (=> start!32068 m!328201))

(declare-fun m!328203 () Bool)

(assert (=> b!319658 m!328203))

(declare-fun m!328205 () Bool)

(assert (=> b!319659 m!328205))

(push 1)

(assert (not b!319659))

(assert (not b!319657))

(assert (not b!319658))

(assert (not b!319660))

(assert (not b!319662))

(assert (not start!32068))

(check-sat)

