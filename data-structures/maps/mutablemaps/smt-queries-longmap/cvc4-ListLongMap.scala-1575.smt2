; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30004 () Bool)

(assert start!30004)

(declare-fun res!158822 () Bool)

(declare-fun e!189981 () Bool)

(assert (=> start!30004 (=> (not res!158822) (not e!189981))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30004 (= res!158822 (validMask!0 mask!3709))))

(assert (=> start!30004 e!189981))

(assert (=> start!30004 true))

(declare-datatypes ((array!15225 0))(
  ( (array!15226 (arr!7203 (Array (_ BitVec 32) (_ BitVec 64))) (size!7555 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15225)

(declare-fun array_inv!5157 (array!15225) Bool)

(assert (=> start!30004 (array_inv!5157 a!3293)))

(declare-fun b!300912 () Bool)

(declare-fun res!158821 () Bool)

(assert (=> b!300912 (=> (not res!158821) (not e!189981))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300912 (= res!158821 (and (= (size!7555 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7555 a!3293))))))

(declare-fun b!300914 () Bool)

(declare-fun res!158823 () Bool)

(assert (=> b!300914 (=> (not res!158823) (not e!189981))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300914 (= res!158823 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300915 () Bool)

(assert (=> b!300915 (= e!189981 false)))

(declare-datatypes ((SeekEntryResult!2354 0))(
  ( (MissingZero!2354 (index!11592 (_ BitVec 32))) (Found!2354 (index!11593 (_ BitVec 32))) (Intermediate!2354 (undefined!3166 Bool) (index!11594 (_ BitVec 32)) (x!29837 (_ BitVec 32))) (Undefined!2354) (MissingVacant!2354 (index!11595 (_ BitVec 32))) )
))
(declare-fun lt!149732 () SeekEntryResult!2354)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15225 (_ BitVec 32)) SeekEntryResult!2354)

(assert (=> b!300915 (= lt!149732 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(declare-fun b!300913 () Bool)

(declare-fun res!158820 () Bool)

(assert (=> b!300913 (=> (not res!158820) (not e!189981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300913 (= res!158820 (validKeyInArray!0 k!2441))))

(assert (= (and start!30004 res!158822) b!300912))

(assert (= (and b!300912 res!158821) b!300913))

(assert (= (and b!300913 res!158820) b!300914))

(assert (= (and b!300914 res!158823) b!300915))

(declare-fun m!312819 () Bool)

(assert (=> start!30004 m!312819))

(declare-fun m!312821 () Bool)

(assert (=> start!30004 m!312821))

(declare-fun m!312823 () Bool)

(assert (=> b!300914 m!312823))

(declare-fun m!312825 () Bool)

(assert (=> b!300915 m!312825))

(declare-fun m!312827 () Bool)

(assert (=> b!300913 m!312827))

(push 1)

(assert (not b!300913))

(assert (not b!300914))

(assert (not start!30004))

(assert (not b!300915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

