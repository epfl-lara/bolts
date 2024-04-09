; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30610 () Bool)

(assert start!30610)

(declare-fun b!306839 () Bool)

(declare-fun res!163752 () Bool)

(declare-fun e!192276 () Bool)

(assert (=> b!306839 (=> (not res!163752) (not e!192276))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!306839 (= res!163752 (validKeyInArray!0 k!2441))))

(declare-fun b!306840 () Bool)

(declare-fun res!163751 () Bool)

(assert (=> b!306840 (=> (not res!163751) (not e!192276))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15612 0))(
  ( (array!15613 (arr!7389 (Array (_ BitVec 32) (_ BitVec 64))) (size!7741 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15612)

(assert (=> b!306840 (= res!163751 (and (= (size!7741 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7741 a!3293))))))

(declare-fun res!163754 () Bool)

(assert (=> start!30610 (=> (not res!163754) (not e!192276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30610 (= res!163754 (validMask!0 mask!3709))))

(assert (=> start!30610 e!192276))

(declare-fun array_inv!5343 (array!15612) Bool)

(assert (=> start!30610 (array_inv!5343 a!3293)))

(assert (=> start!30610 true))

(declare-fun b!306841 () Bool)

(assert (=> b!306841 (= e!192276 false)))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2540 0))(
  ( (MissingZero!2540 (index!12336 (_ BitVec 32))) (Found!2540 (index!12337 (_ BitVec 32))) (Intermediate!2540 (undefined!3352 Bool) (index!12338 (_ BitVec 32)) (x!30546 (_ BitVec 32))) (Undefined!2540) (MissingVacant!2540 (index!12339 (_ BitVec 32))) )
))
(declare-fun lt!151046 () SeekEntryResult!2540)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15612 (_ BitVec 32)) SeekEntryResult!2540)

(assert (=> b!306841 (= lt!151046 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!306842 () Bool)

(declare-fun res!163756 () Bool)

(assert (=> b!306842 (=> (not res!163756) (not e!192276))))

(declare-fun arrayContainsKey!0 (array!15612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!306842 (= res!163756 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!306843 () Bool)

(declare-fun res!163758 () Bool)

(assert (=> b!306843 (=> (not res!163758) (not e!192276))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!306843 (= res!163758 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2540 false resIndex!52 resX!52)))))

(declare-fun b!306844 () Bool)

(declare-fun res!163755 () Bool)

(assert (=> b!306844 (=> (not res!163755) (not e!192276))))

(assert (=> b!306844 (= res!163755 (and (= (select (arr!7389 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7741 a!3293))))))

(declare-fun b!306845 () Bool)

(declare-fun res!163757 () Bool)

(assert (=> b!306845 (=> (not res!163757) (not e!192276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15612 (_ BitVec 32)) Bool)

(assert (=> b!306845 (= res!163757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!306846 () Bool)

(declare-fun res!163753 () Bool)

(assert (=> b!306846 (=> (not res!163753) (not e!192276))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15612 (_ BitVec 32)) SeekEntryResult!2540)

(assert (=> b!306846 (= res!163753 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2540 i!1240)))))

(assert (= (and start!30610 res!163754) b!306840))

(assert (= (and b!306840 res!163751) b!306839))

(assert (= (and b!306839 res!163752) b!306842))

(assert (= (and b!306842 res!163756) b!306846))

(assert (= (and b!306846 res!163753) b!306845))

(assert (= (and b!306845 res!163757) b!306843))

(assert (= (and b!306843 res!163758) b!306844))

(assert (= (and b!306844 res!163755) b!306841))

(declare-fun m!317261 () Bool)

(assert (=> b!306842 m!317261))

(declare-fun m!317263 () Bool)

(assert (=> b!306845 m!317263))

(declare-fun m!317265 () Bool)

(assert (=> b!306841 m!317265))

(declare-fun m!317267 () Bool)

(assert (=> b!306846 m!317267))

(declare-fun m!317269 () Bool)

(assert (=> b!306844 m!317269))

(declare-fun m!317271 () Bool)

(assert (=> start!30610 m!317271))

(declare-fun m!317273 () Bool)

(assert (=> start!30610 m!317273))

(declare-fun m!317275 () Bool)

(assert (=> b!306843 m!317275))

(assert (=> b!306843 m!317275))

(declare-fun m!317277 () Bool)

(assert (=> b!306843 m!317277))

(declare-fun m!317279 () Bool)

(assert (=> b!306839 m!317279))

(push 1)

(assert (not start!30610))

(assert (not b!306842))

(assert (not b!306841))

(assert (not b!306843))

(assert (not b!306839))

(assert (not b!306846))

(assert (not b!306845))

(check-sat)

