; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32058 () Bool)

(assert start!32058)

(declare-fun res!174041 () Bool)

(declare-fun e!198450 () Bool)

(assert (=> start!32058 (=> (not res!174041) (not e!198450))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32058 (= res!174041 (validMask!0 mask!3777))))

(assert (=> start!32058 e!198450))

(assert (=> start!32058 true))

(declare-datatypes ((array!16328 0))(
  ( (array!16329 (arr!7723 (Array (_ BitVec 32) (_ BitVec 64))) (size!8075 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16328)

(declare-fun array_inv!5677 (array!16328) Bool)

(assert (=> start!32058 (array_inv!5677 a!3305)))

(declare-fun b!319567 () Bool)

(declare-fun res!174042 () Bool)

(assert (=> b!319567 (=> (not res!174042) (not e!198450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16328 (_ BitVec 32)) Bool)

(assert (=> b!319567 (= res!174042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319568 () Bool)

(declare-fun res!174040 () Bool)

(assert (=> b!319568 (=> (not res!174040) (not e!198450))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319568 (= res!174040 (and (= (size!8075 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8075 a!3305))))))

(declare-fun b!319569 () Bool)

(declare-fun res!174038 () Bool)

(assert (=> b!319569 (=> (not res!174038) (not e!198450))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2865 0))(
  ( (MissingZero!2865 (index!13636 (_ BitVec 32))) (Found!2865 (index!13637 (_ BitVec 32))) (Intermediate!2865 (undefined!3677 Bool) (index!13638 (_ BitVec 32)) (x!31878 (_ BitVec 32))) (Undefined!2865) (MissingVacant!2865 (index!13639 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16328 (_ BitVec 32)) SeekEntryResult!2865)

(assert (=> b!319569 (= res!174038 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2865 i!1250)))))

(declare-fun b!319570 () Bool)

(assert (=> b!319570 (= e!198450 false)))

(declare-fun lt!155831 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319570 (= lt!155831 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319571 () Bool)

(declare-fun res!174039 () Bool)

(assert (=> b!319571 (=> (not res!174039) (not e!198450))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319571 (= res!174039 (validKeyInArray!0 k!2497))))

(declare-fun b!319572 () Bool)

(declare-fun res!174037 () Bool)

(assert (=> b!319572 (=> (not res!174037) (not e!198450))))

(declare-fun arrayContainsKey!0 (array!16328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319572 (= res!174037 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(assert (= (and start!32058 res!174041) b!319568))

(assert (= (and b!319568 res!174040) b!319571))

(assert (= (and b!319571 res!174039) b!319572))

(assert (= (and b!319572 res!174037) b!319569))

(assert (= (and b!319569 res!174038) b!319567))

(assert (= (and b!319567 res!174042) b!319570))

(declare-fun m!328123 () Bool)

(assert (=> b!319570 m!328123))

(declare-fun m!328125 () Bool)

(assert (=> b!319567 m!328125))

(declare-fun m!328127 () Bool)

(assert (=> b!319571 m!328127))

(declare-fun m!328129 () Bool)

(assert (=> b!319572 m!328129))

(declare-fun m!328131 () Bool)

(assert (=> b!319569 m!328131))

(declare-fun m!328133 () Bool)

(assert (=> start!32058 m!328133))

(declare-fun m!328135 () Bool)

(assert (=> start!32058 m!328135))

(push 1)

(assert (not b!319569))

(assert (not b!319572))

(assert (not b!319567))

(assert (not b!319571))

(assert (not b!319570))

(assert (not start!32058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

