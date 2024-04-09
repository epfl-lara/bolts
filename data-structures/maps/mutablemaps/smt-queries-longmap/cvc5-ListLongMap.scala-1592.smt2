; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30228 () Bool)

(assert start!30228)

(declare-fun b!302179 () Bool)

(declare-fun res!159826 () Bool)

(declare-fun e!190536 () Bool)

(assert (=> b!302179 (=> (not res!159826) (not e!190536))))

(declare-datatypes ((array!15332 0))(
  ( (array!15333 (arr!7252 (Array (_ BitVec 32) (_ BitVec 64))) (size!7604 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15332)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!302179 (= res!159826 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!302180 () Bool)

(assert (=> b!302180 (= e!190536 false)))

(declare-datatypes ((SeekEntryResult!2403 0))(
  ( (MissingZero!2403 (index!11788 (_ BitVec 32))) (Found!2403 (index!11789 (_ BitVec 32))) (Intermediate!2403 (undefined!3215 Bool) (index!11790 (_ BitVec 32)) (x!30031 (_ BitVec 32))) (Undefined!2403) (MissingVacant!2403 (index!11791 (_ BitVec 32))) )
))
(declare-fun lt!150041 () SeekEntryResult!2403)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15332 (_ BitVec 32)) SeekEntryResult!2403)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!302180 (= lt!150041 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun res!159825 () Bool)

(assert (=> start!30228 (=> (not res!159825) (not e!190536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30228 (= res!159825 (validMask!0 mask!3709))))

(assert (=> start!30228 e!190536))

(assert (=> start!30228 true))

(declare-fun array_inv!5206 (array!15332) Bool)

(assert (=> start!30228 (array_inv!5206 a!3293)))

(declare-fun b!302181 () Bool)

(declare-fun res!159824 () Bool)

(assert (=> b!302181 (=> (not res!159824) (not e!190536))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15332 (_ BitVec 32)) SeekEntryResult!2403)

(assert (=> b!302181 (= res!159824 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2403 i!1240)))))

(declare-fun b!302182 () Bool)

(declare-fun res!159823 () Bool)

(assert (=> b!302182 (=> (not res!159823) (not e!190536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!302182 (= res!159823 (validKeyInArray!0 k!2441))))

(declare-fun b!302183 () Bool)

(declare-fun res!159827 () Bool)

(assert (=> b!302183 (=> (not res!159827) (not e!190536))))

(assert (=> b!302183 (= res!159827 (and (= (size!7604 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7604 a!3293))))))

(declare-fun b!302184 () Bool)

(declare-fun res!159828 () Bool)

(assert (=> b!302184 (=> (not res!159828) (not e!190536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15332 (_ BitVec 32)) Bool)

(assert (=> b!302184 (= res!159828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(assert (= (and start!30228 res!159825) b!302183))

(assert (= (and b!302183 res!159827) b!302182))

(assert (= (and b!302182 res!159823) b!302179))

(assert (= (and b!302179 res!159826) b!302181))

(assert (= (and b!302181 res!159824) b!302184))

(assert (= (and b!302184 res!159828) b!302180))

(declare-fun m!313759 () Bool)

(assert (=> b!302182 m!313759))

(declare-fun m!313761 () Bool)

(assert (=> b!302184 m!313761))

(declare-fun m!313763 () Bool)

(assert (=> b!302180 m!313763))

(assert (=> b!302180 m!313763))

(declare-fun m!313765 () Bool)

(assert (=> b!302180 m!313765))

(declare-fun m!313767 () Bool)

(assert (=> b!302179 m!313767))

(declare-fun m!313769 () Bool)

(assert (=> start!30228 m!313769))

(declare-fun m!313771 () Bool)

(assert (=> start!30228 m!313771))

(declare-fun m!313773 () Bool)

(assert (=> b!302181 m!313773))

(push 1)

(assert (not start!30228))

(assert (not b!302182))

(assert (not b!302180))

(assert (not b!302184))

(assert (not b!302179))

(assert (not b!302181))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

