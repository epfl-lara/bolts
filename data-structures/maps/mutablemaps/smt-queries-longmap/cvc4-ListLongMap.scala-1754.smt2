; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32134 () Bool)

(assert start!32134)

(declare-fun b!319981 () Bool)

(declare-fun res!174383 () Bool)

(declare-fun e!198625 () Bool)

(assert (=> b!319981 (=> (not res!174383) (not e!198625))))

(declare-datatypes ((array!16365 0))(
  ( (array!16366 (arr!7740 (Array (_ BitVec 32) (_ BitVec 64))) (size!8092 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16365)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16365 (_ BitVec 32)) Bool)

(assert (=> b!319981 (= res!174383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319982 () Bool)

(declare-fun res!174386 () Bool)

(assert (=> b!319982 (=> (not res!174386) (not e!198625))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319982 (= res!174386 (and (= (size!8092 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8092 a!3305))))))

(declare-fun b!319983 () Bool)

(declare-fun res!174384 () Bool)

(assert (=> b!319983 (=> (not res!174384) (not e!198625))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2882 0))(
  ( (MissingZero!2882 (index!13704 (_ BitVec 32))) (Found!2882 (index!13705 (_ BitVec 32))) (Intermediate!2882 (undefined!3694 Bool) (index!13706 (_ BitVec 32)) (x!31938 (_ BitVec 32))) (Undefined!2882) (MissingVacant!2882 (index!13707 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16365 (_ BitVec 32)) SeekEntryResult!2882)

(assert (=> b!319983 (= res!174384 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2882 i!1250)))))

(declare-fun b!319984 () Bool)

(assert (=> b!319984 (= e!198625 false)))

(declare-fun lt!155954 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319984 (= lt!155954 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319985 () Bool)

(declare-fun res!174382 () Bool)

(assert (=> b!319985 (=> (not res!174382) (not e!198625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319985 (= res!174382 (validKeyInArray!0 k!2497))))

(declare-fun b!319986 () Bool)

(declare-fun res!174385 () Bool)

(assert (=> b!319986 (=> (not res!174385) (not e!198625))))

(declare-fun arrayContainsKey!0 (array!16365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319986 (= res!174385 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174387 () Bool)

(assert (=> start!32134 (=> (not res!174387) (not e!198625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32134 (= res!174387 (validMask!0 mask!3777))))

(assert (=> start!32134 e!198625))

(assert (=> start!32134 true))

(declare-fun array_inv!5694 (array!16365) Bool)

(assert (=> start!32134 (array_inv!5694 a!3305)))

(assert (= (and start!32134 res!174387) b!319982))

(assert (= (and b!319982 res!174386) b!319985))

(assert (= (and b!319985 res!174382) b!319986))

(assert (= (and b!319986 res!174385) b!319983))

(assert (= (and b!319983 res!174384) b!319981))

(assert (= (and b!319981 res!174383) b!319984))

(declare-fun m!328439 () Bool)

(assert (=> b!319984 m!328439))

(declare-fun m!328441 () Bool)

(assert (=> b!319981 m!328441))

(declare-fun m!328443 () Bool)

(assert (=> b!319983 m!328443))

(declare-fun m!328445 () Bool)

(assert (=> start!32134 m!328445))

(declare-fun m!328447 () Bool)

(assert (=> start!32134 m!328447))

(declare-fun m!328449 () Bool)

(assert (=> b!319986 m!328449))

(declare-fun m!328451 () Bool)

(assert (=> b!319985 m!328451))

(push 1)

(assert (not start!32134))

(assert (not b!319984))

(assert (not b!319981))

(assert (not b!319986))

(assert (not b!319985))

(assert (not b!319983))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

