; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30008 () Bool)

(assert start!30008)

(declare-fun b!300937 () Bool)

(declare-fun res!158847 () Bool)

(declare-fun e!189994 () Bool)

(assert (=> b!300937 (=> (not res!158847) (not e!189994))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300937 (= res!158847 (validKeyInArray!0 k0!2441))))

(declare-fun b!300938 () Bool)

(declare-fun res!158844 () Bool)

(assert (=> b!300938 (=> (not res!158844) (not e!189994))))

(declare-datatypes ((array!15229 0))(
  ( (array!15230 (arr!7205 (Array (_ BitVec 32) (_ BitVec 64))) (size!7557 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15229)

(declare-fun arrayContainsKey!0 (array!15229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300938 (= res!158844 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300939 () Bool)

(assert (=> b!300939 (= e!189994 false)))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2356 0))(
  ( (MissingZero!2356 (index!11600 (_ BitVec 32))) (Found!2356 (index!11601 (_ BitVec 32))) (Intermediate!2356 (undefined!3168 Bool) (index!11602 (_ BitVec 32)) (x!29847 (_ BitVec 32))) (Undefined!2356) (MissingVacant!2356 (index!11603 (_ BitVec 32))) )
))
(declare-fun lt!149738 () SeekEntryResult!2356)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15229 (_ BitVec 32)) SeekEntryResult!2356)

(assert (=> b!300939 (= lt!149738 (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709))))

(declare-fun b!300936 () Bool)

(declare-fun res!158845 () Bool)

(assert (=> b!300936 (=> (not res!158845) (not e!189994))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300936 (= res!158845 (and (= (size!7557 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7557 a!3293))))))

(declare-fun res!158846 () Bool)

(assert (=> start!30008 (=> (not res!158846) (not e!189994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30008 (= res!158846 (validMask!0 mask!3709))))

(assert (=> start!30008 e!189994))

(assert (=> start!30008 true))

(declare-fun array_inv!5159 (array!15229) Bool)

(assert (=> start!30008 (array_inv!5159 a!3293)))

(assert (= (and start!30008 res!158846) b!300936))

(assert (= (and b!300936 res!158845) b!300937))

(assert (= (and b!300937 res!158847) b!300938))

(assert (= (and b!300938 res!158844) b!300939))

(declare-fun m!312839 () Bool)

(assert (=> b!300937 m!312839))

(declare-fun m!312841 () Bool)

(assert (=> b!300938 m!312841))

(declare-fun m!312843 () Bool)

(assert (=> b!300939 m!312843))

(declare-fun m!312845 () Bool)

(assert (=> start!30008 m!312845))

(declare-fun m!312847 () Bool)

(assert (=> start!30008 m!312847))

(check-sat (not b!300939) (not b!300938) (not start!30008) (not b!300937))
