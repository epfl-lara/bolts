; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32062 () Bool)

(assert start!32062)

(declare-fun b!319603 () Bool)

(declare-fun res!174077 () Bool)

(declare-fun e!198462 () Bool)

(assert (=> b!319603 (=> (not res!174077) (not e!198462))))

(declare-datatypes ((array!16332 0))(
  ( (array!16333 (arr!7725 (Array (_ BitVec 32) (_ BitVec 64))) (size!8077 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16332)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319603 (= res!174077 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319604 () Bool)

(declare-fun res!174078 () Bool)

(assert (=> b!319604 (=> (not res!174078) (not e!198462))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319604 (= res!174078 (and (= (size!8077 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8077 a!3305))))))

(declare-fun b!319605 () Bool)

(declare-fun res!174074 () Bool)

(assert (=> b!319605 (=> (not res!174074) (not e!198462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16332 (_ BitVec 32)) Bool)

(assert (=> b!319605 (= res!174074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319606 () Bool)

(assert (=> b!319606 (= e!198462 false)))

(declare-fun lt!155837 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319606 (= lt!155837 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319607 () Bool)

(declare-fun res!174076 () Bool)

(assert (=> b!319607 (=> (not res!174076) (not e!198462))))

(declare-datatypes ((SeekEntryResult!2867 0))(
  ( (MissingZero!2867 (index!13644 (_ BitVec 32))) (Found!2867 (index!13645 (_ BitVec 32))) (Intermediate!2867 (undefined!3679 Bool) (index!13646 (_ BitVec 32)) (x!31880 (_ BitVec 32))) (Undefined!2867) (MissingVacant!2867 (index!13647 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16332 (_ BitVec 32)) SeekEntryResult!2867)

(assert (=> b!319607 (= res!174076 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2867 i!1250)))))

(declare-fun b!319608 () Bool)

(declare-fun res!174073 () Bool)

(assert (=> b!319608 (=> (not res!174073) (not e!198462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319608 (= res!174073 (validKeyInArray!0 k!2497))))

(declare-fun res!174075 () Bool)

(assert (=> start!32062 (=> (not res!174075) (not e!198462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32062 (= res!174075 (validMask!0 mask!3777))))

(assert (=> start!32062 e!198462))

(assert (=> start!32062 true))

(declare-fun array_inv!5679 (array!16332) Bool)

(assert (=> start!32062 (array_inv!5679 a!3305)))

(assert (= (and start!32062 res!174075) b!319604))

(assert (= (and b!319604 res!174078) b!319608))

(assert (= (and b!319608 res!174073) b!319603))

(assert (= (and b!319603 res!174077) b!319607))

(assert (= (and b!319607 res!174076) b!319605))

(assert (= (and b!319605 res!174074) b!319606))

(declare-fun m!328151 () Bool)

(assert (=> b!319607 m!328151))

(declare-fun m!328153 () Bool)

(assert (=> b!319608 m!328153))

(declare-fun m!328155 () Bool)

(assert (=> start!32062 m!328155))

(declare-fun m!328157 () Bool)

(assert (=> start!32062 m!328157))

(declare-fun m!328159 () Bool)

(assert (=> b!319605 m!328159))

(declare-fun m!328161 () Bool)

(assert (=> b!319603 m!328161))

(declare-fun m!328163 () Bool)

(assert (=> b!319606 m!328163))

(push 1)

(assert (not b!319606))

(assert (not b!319605))

(assert (not start!32062))

(assert (not b!319603))

(assert (not b!319607))

(assert (not b!319608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

