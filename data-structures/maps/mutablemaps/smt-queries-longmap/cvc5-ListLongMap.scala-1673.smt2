; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30930 () Bool)

(assert start!30930)

(declare-fun b!310224 () Bool)

(declare-fun e!193701 () Bool)

(declare-fun e!193703 () Bool)

(assert (=> b!310224 (= e!193701 e!193703)))

(declare-fun res!166844 () Bool)

(assert (=> b!310224 (=> (not res!166844) (not e!193703))))

(declare-datatypes ((array!15830 0))(
  ( (array!15831 (arr!7495 (Array (_ BitVec 32) (_ BitVec 64))) (size!7847 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15830)

(declare-datatypes ((SeekEntryResult!2646 0))(
  ( (MissingZero!2646 (index!12760 (_ BitVec 32))) (Found!2646 (index!12761 (_ BitVec 32))) (Intermediate!2646 (undefined!3458 Bool) (index!12762 (_ BitVec 32)) (x!30958 (_ BitVec 32))) (Undefined!2646) (MissingVacant!2646 (index!12763 (_ BitVec 32))) )
))
(declare-fun lt!151912 () SeekEntryResult!2646)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!151911 () SeekEntryResult!2646)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!310224 (= res!166844 (and (= lt!151911 lt!151912) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7495 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15830 (_ BitVec 32)) SeekEntryResult!2646)

(assert (=> b!310224 (= lt!151911 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!310225 () Bool)

(declare-fun res!166839 () Bool)

(declare-fun e!193702 () Bool)

(assert (=> b!310225 (=> (not res!166839) (not e!193702))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15830 (_ BitVec 32)) SeekEntryResult!2646)

(assert (=> b!310225 (= res!166839 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2646 i!1240)))))

(declare-fun b!310227 () Bool)

(assert (=> b!310227 (= e!193702 e!193701)))

(declare-fun res!166838 () Bool)

(assert (=> b!310227 (=> (not res!166838) (not e!193701))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310227 (= res!166838 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151912))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!310227 (= lt!151912 (Intermediate!2646 false resIndex!52 resX!52))))

(declare-fun lt!151910 () array!15830)

(declare-fun b!310228 () Bool)

(declare-fun e!193705 () Bool)

(declare-fun lt!151913 () (_ BitVec 32))

(assert (=> b!310228 (= e!193705 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!151910 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151913 k!2441 lt!151910 mask!3709)))))

(assert (=> b!310228 (= lt!151910 (array!15831 (store (arr!7495 a!3293) i!1240 k!2441) (size!7847 a!3293)))))

(declare-fun b!310229 () Bool)

(assert (=> b!310229 (= e!193703 (not true))))

(assert (=> b!310229 e!193705))

(declare-fun res!166843 () Bool)

(assert (=> b!310229 (=> (not res!166843) (not e!193705))))

(assert (=> b!310229 (= res!166843 (= lt!151911 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151913 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!310229 (= lt!151913 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!310226 () Bool)

(declare-fun res!166837 () Bool)

(assert (=> b!310226 (=> (not res!166837) (not e!193702))))

(assert (=> b!310226 (= res!166837 (and (= (size!7847 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7847 a!3293))))))

(declare-fun res!166842 () Bool)

(assert (=> start!30930 (=> (not res!166842) (not e!193702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30930 (= res!166842 (validMask!0 mask!3709))))

(assert (=> start!30930 e!193702))

(declare-fun array_inv!5449 (array!15830) Bool)

(assert (=> start!30930 (array_inv!5449 a!3293)))

(assert (=> start!30930 true))

(declare-fun b!310230 () Bool)

(declare-fun res!166836 () Bool)

(assert (=> b!310230 (=> (not res!166836) (not e!193702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15830 (_ BitVec 32)) Bool)

(assert (=> b!310230 (= res!166836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!310231 () Bool)

(declare-fun res!166841 () Bool)

(assert (=> b!310231 (=> (not res!166841) (not e!193701))))

(assert (=> b!310231 (= res!166841 (and (= (select (arr!7495 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7847 a!3293))))))

(declare-fun b!310232 () Bool)

(declare-fun res!166840 () Bool)

(assert (=> b!310232 (=> (not res!166840) (not e!193702))))

(declare-fun arrayContainsKey!0 (array!15830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!310232 (= res!166840 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!310233 () Bool)

(declare-fun res!166845 () Bool)

(assert (=> b!310233 (=> (not res!166845) (not e!193702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!310233 (= res!166845 (validKeyInArray!0 k!2441))))

(assert (= (and start!30930 res!166842) b!310226))

(assert (= (and b!310226 res!166837) b!310233))

(assert (= (and b!310233 res!166845) b!310232))

(assert (= (and b!310232 res!166840) b!310225))

(assert (= (and b!310225 res!166839) b!310230))

(assert (= (and b!310230 res!166836) b!310227))

(assert (= (and b!310227 res!166838) b!310231))

(assert (= (and b!310231 res!166841) b!310224))

(assert (= (and b!310224 res!166844) b!310229))

(assert (= (and b!310229 res!166843) b!310228))

(declare-fun m!320173 () Bool)

(assert (=> b!310228 m!320173))

(declare-fun m!320175 () Bool)

(assert (=> b!310228 m!320175))

(declare-fun m!320177 () Bool)

(assert (=> b!310228 m!320177))

(declare-fun m!320179 () Bool)

(assert (=> b!310227 m!320179))

(assert (=> b!310227 m!320179))

(declare-fun m!320181 () Bool)

(assert (=> b!310227 m!320181))

(declare-fun m!320183 () Bool)

(assert (=> b!310229 m!320183))

(declare-fun m!320185 () Bool)

(assert (=> b!310229 m!320185))

(declare-fun m!320187 () Bool)

(assert (=> b!310231 m!320187))

(declare-fun m!320189 () Bool)

(assert (=> b!310232 m!320189))

(declare-fun m!320191 () Bool)

(assert (=> b!310230 m!320191))

(declare-fun m!320193 () Bool)

(assert (=> b!310224 m!320193))

(declare-fun m!320195 () Bool)

(assert (=> b!310224 m!320195))

(declare-fun m!320197 () Bool)

(assert (=> b!310225 m!320197))

(declare-fun m!320199 () Bool)

(assert (=> start!30930 m!320199))

(declare-fun m!320201 () Bool)

(assert (=> start!30930 m!320201))

(declare-fun m!320203 () Bool)

(assert (=> b!310233 m!320203))

(push 1)

