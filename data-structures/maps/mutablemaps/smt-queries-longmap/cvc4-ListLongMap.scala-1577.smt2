; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30016 () Bool)

(assert start!30016)

(declare-fun b!300985 () Bool)

(declare-fun res!158893 () Bool)

(declare-fun e!190018 () Bool)

(assert (=> b!300985 (=> (not res!158893) (not e!190018))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300985 (= res!158893 (validKeyInArray!0 k!2441))))

(declare-fun b!300984 () Bool)

(declare-fun res!158894 () Bool)

(assert (=> b!300984 (=> (not res!158894) (not e!190018))))

(declare-datatypes ((array!15237 0))(
  ( (array!15238 (arr!7209 (Array (_ BitVec 32) (_ BitVec 64))) (size!7561 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15237)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!300984 (= res!158894 (and (= (size!7561 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7561 a!3293))))))

(declare-fun b!300986 () Bool)

(declare-fun res!158892 () Bool)

(assert (=> b!300986 (=> (not res!158892) (not e!190018))))

(declare-fun arrayContainsKey!0 (array!15237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300986 (= res!158892 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!300987 () Bool)

(assert (=> b!300987 (= e!190018 false)))

(declare-datatypes ((SeekEntryResult!2360 0))(
  ( (MissingZero!2360 (index!11616 (_ BitVec 32))) (Found!2360 (index!11617 (_ BitVec 32))) (Intermediate!2360 (undefined!3172 Bool) (index!11618 (_ BitVec 32)) (x!29859 (_ BitVec 32))) (Undefined!2360) (MissingVacant!2360 (index!11619 (_ BitVec 32))) )
))
(declare-fun lt!149750 () SeekEntryResult!2360)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15237 (_ BitVec 32)) SeekEntryResult!2360)

(assert (=> b!300987 (= lt!149750 (seekEntryOrOpen!0 k!2441 a!3293 mask!3709))))

(declare-fun res!158895 () Bool)

(assert (=> start!30016 (=> (not res!158895) (not e!190018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30016 (= res!158895 (validMask!0 mask!3709))))

(assert (=> start!30016 e!190018))

(assert (=> start!30016 true))

(declare-fun array_inv!5163 (array!15237) Bool)

(assert (=> start!30016 (array_inv!5163 a!3293)))

(assert (= (and start!30016 res!158895) b!300984))

(assert (= (and b!300984 res!158894) b!300985))

(assert (= (and b!300985 res!158893) b!300986))

(assert (= (and b!300986 res!158892) b!300987))

(declare-fun m!312879 () Bool)

(assert (=> b!300985 m!312879))

(declare-fun m!312881 () Bool)

(assert (=> b!300986 m!312881))

(declare-fun m!312883 () Bool)

(assert (=> b!300987 m!312883))

(declare-fun m!312885 () Bool)

(assert (=> start!30016 m!312885))

(declare-fun m!312887 () Bool)

(assert (=> start!30016 m!312887))

(push 1)

(assert (not b!300985))

(assert (not start!30016))

(assert (not b!300986))

(assert (not b!300987))

(check-sat)

(pop 1)

