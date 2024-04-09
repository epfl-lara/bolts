; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32156 () Bool)

(assert start!32156)

(declare-fun b!320193 () Bool)

(declare-fun res!174598 () Bool)

(declare-fun e!198690 () Bool)

(assert (=> b!320193 (=> (not res!174598) (not e!198690))))

(declare-datatypes ((array!16387 0))(
  ( (array!16388 (arr!7751 (Array (_ BitVec 32) (_ BitVec 64))) (size!8103 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16387)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2893 0))(
  ( (MissingZero!2893 (index!13748 (_ BitVec 32))) (Found!2893 (index!13749 (_ BitVec 32))) (Intermediate!2893 (undefined!3705 Bool) (index!13750 (_ BitVec 32)) (x!31981 (_ BitVec 32))) (Undefined!2893) (MissingVacant!2893 (index!13751 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16387 (_ BitVec 32)) SeekEntryResult!2893)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!320193 (= res!174598 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) (Intermediate!2893 false resIndex!58 resX!58)))))

(declare-fun b!320194 () Bool)

(declare-fun res!174599 () Bool)

(assert (=> b!320194 (=> (not res!174599) (not e!198690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16387 (_ BitVec 32)) Bool)

(assert (=> b!320194 (= res!174599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!320195 () Bool)

(declare-fun res!174595 () Bool)

(assert (=> b!320195 (=> (not res!174595) (not e!198690))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16387 (_ BitVec 32)) SeekEntryResult!2893)

(assert (=> b!320195 (= res!174595 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2893 i!1250)))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun b!320196 () Bool)

(assert (=> b!320196 (= e!198690 (and (= (select (arr!7751 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8103 a!3305)) (bvsge mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777))))))

(declare-fun b!320197 () Bool)

(declare-fun res!174594 () Bool)

(assert (=> b!320197 (=> (not res!174594) (not e!198690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!320197 (= res!174594 (validKeyInArray!0 k0!2497))))

(declare-fun b!320198 () Bool)

(declare-fun res!174596 () Bool)

(assert (=> b!320198 (=> (not res!174596) (not e!198690))))

(assert (=> b!320198 (= res!174596 (and (= (size!8103 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8103 a!3305))))))

(declare-fun b!320199 () Bool)

(declare-fun res!174600 () Bool)

(assert (=> b!320199 (=> (not res!174600) (not e!198690))))

(declare-fun arrayContainsKey!0 (array!16387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!320199 (= res!174600 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!174597 () Bool)

(assert (=> start!32156 (=> (not res!174597) (not e!198690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32156 (= res!174597 (validMask!0 mask!3777))))

(assert (=> start!32156 e!198690))

(declare-fun array_inv!5705 (array!16387) Bool)

(assert (=> start!32156 (array_inv!5705 a!3305)))

(assert (=> start!32156 true))

(assert (= (and start!32156 res!174597) b!320198))

(assert (= (and b!320198 res!174596) b!320197))

(assert (= (and b!320197 res!174594) b!320199))

(assert (= (and b!320199 res!174600) b!320195))

(assert (= (and b!320195 res!174595) b!320194))

(assert (= (and b!320194 res!174599) b!320193))

(assert (= (and b!320193 res!174598) b!320196))

(declare-fun m!328621 () Bool)

(assert (=> b!320199 m!328621))

(declare-fun m!328623 () Bool)

(assert (=> start!32156 m!328623))

(declare-fun m!328625 () Bool)

(assert (=> start!32156 m!328625))

(declare-fun m!328627 () Bool)

(assert (=> b!320194 m!328627))

(declare-fun m!328629 () Bool)

(assert (=> b!320193 m!328629))

(assert (=> b!320193 m!328629))

(declare-fun m!328631 () Bool)

(assert (=> b!320193 m!328631))

(declare-fun m!328633 () Bool)

(assert (=> b!320195 m!328633))

(declare-fun m!328635 () Bool)

(assert (=> b!320197 m!328635))

(declare-fun m!328637 () Bool)

(assert (=> b!320196 m!328637))

(check-sat (not b!320194) (not b!320195) (not b!320199) (not b!320193) (not b!320197) (not start!32156))
(check-sat)
