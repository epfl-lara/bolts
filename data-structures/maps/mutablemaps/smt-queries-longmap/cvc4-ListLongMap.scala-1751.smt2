; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32074 () Bool)

(assert start!32074)

(declare-fun b!319711 () Bool)

(declare-fun res!174183 () Bool)

(declare-fun e!198499 () Bool)

(assert (=> b!319711 (=> (not res!174183) (not e!198499))))

(declare-datatypes ((array!16344 0))(
  ( (array!16345 (arr!7731 (Array (_ BitVec 32) (_ BitVec 64))) (size!8083 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16344)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2873 0))(
  ( (MissingZero!2873 (index!13668 (_ BitVec 32))) (Found!2873 (index!13669 (_ BitVec 32))) (Intermediate!2873 (undefined!3685 Bool) (index!13670 (_ BitVec 32)) (x!31902 (_ BitVec 32))) (Undefined!2873) (MissingVacant!2873 (index!13671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16344 (_ BitVec 32)) SeekEntryResult!2873)

(assert (=> b!319711 (= res!174183 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2873 i!1250)))))

(declare-fun b!319712 () Bool)

(declare-fun res!174186 () Bool)

(assert (=> b!319712 (=> (not res!174186) (not e!198499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16344 (_ BitVec 32)) Bool)

(assert (=> b!319712 (= res!174186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319713 () Bool)

(declare-fun res!174185 () Bool)

(assert (=> b!319713 (=> (not res!174185) (not e!198499))))

(declare-fun arrayContainsKey!0 (array!16344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319713 (= res!174185 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319714 () Bool)

(declare-fun res!174182 () Bool)

(assert (=> b!319714 (=> (not res!174182) (not e!198499))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319714 (= res!174182 (validKeyInArray!0 k!2497))))

(declare-fun res!174184 () Bool)

(assert (=> start!32074 (=> (not res!174184) (not e!198499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32074 (= res!174184 (validMask!0 mask!3777))))

(assert (=> start!32074 e!198499))

(assert (=> start!32074 true))

(declare-fun array_inv!5685 (array!16344) Bool)

(assert (=> start!32074 (array_inv!5685 a!3305)))

(declare-fun b!319715 () Bool)

(assert (=> b!319715 (= e!198499 false)))

(declare-fun lt!155855 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319715 (= lt!155855 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319716 () Bool)

(declare-fun res!174181 () Bool)

(assert (=> b!319716 (=> (not res!174181) (not e!198499))))

(assert (=> b!319716 (= res!174181 (and (= (size!8083 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8083 a!3305))))))

(assert (= (and start!32074 res!174184) b!319716))

(assert (= (and b!319716 res!174181) b!319714))

(assert (= (and b!319714 res!174182) b!319713))

(assert (= (and b!319713 res!174185) b!319711))

(assert (= (and b!319711 res!174183) b!319712))

(assert (= (and b!319712 res!174186) b!319715))

(declare-fun m!328235 () Bool)

(assert (=> b!319714 m!328235))

(declare-fun m!328237 () Bool)

(assert (=> b!319711 m!328237))

(declare-fun m!328239 () Bool)

(assert (=> b!319712 m!328239))

(declare-fun m!328241 () Bool)

(assert (=> b!319713 m!328241))

(declare-fun m!328243 () Bool)

(assert (=> b!319715 m!328243))

(declare-fun m!328245 () Bool)

(assert (=> start!32074 m!328245))

(declare-fun m!328247 () Bool)

(assert (=> start!32074 m!328247))

(push 1)

(assert (not start!32074))

(assert (not b!319712))

(assert (not b!319714))

(assert (not b!319711))

(assert (not b!319713))

(assert (not b!319715))

(check-sat)

(pop 1)

