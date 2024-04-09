; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30080 () Bool)

(assert start!30080)

(declare-fun res!159173 () Bool)

(declare-fun e!190174 () Bool)

(assert (=> start!30080 (=> (not res!159173) (not e!190174))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30080 (= res!159173 (validMask!0 mask!3709))))

(assert (=> start!30080 e!190174))

(assert (=> start!30080 true))

(declare-datatypes ((array!15268 0))(
  ( (array!15269 (arr!7223 (Array (_ BitVec 32) (_ BitVec 64))) (size!7575 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15268)

(declare-fun array_inv!5177 (array!15268) Bool)

(assert (=> start!30080 (array_inv!5177 a!3293)))

(declare-fun b!301333 () Bool)

(declare-fun res!159172 () Bool)

(assert (=> b!301333 (=> (not res!159172) (not e!190174))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301333 (= res!159172 (validKeyInArray!0 k0!2441))))

(declare-fun b!301334 () Bool)

(assert (=> b!301334 (= e!190174 (bvslt mask!3709 #b00000000000000000000000000000000))))

(declare-fun lt!149819 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301334 (= lt!149819 (toIndex!0 k0!2441 mask!3709))))

(declare-fun b!301335 () Bool)

(declare-fun res!159174 () Bool)

(assert (=> b!301335 (=> (not res!159174) (not e!190174))))

(declare-fun arrayContainsKey!0 (array!15268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301335 (= res!159174 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301336 () Bool)

(declare-fun res!159170 () Bool)

(assert (=> b!301336 (=> (not res!159170) (not e!190174))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301336 (= res!159170 (and (= (size!7575 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7575 a!3293))))))

(declare-fun b!301337 () Bool)

(declare-fun res!159171 () Bool)

(assert (=> b!301337 (=> (not res!159171) (not e!190174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15268 (_ BitVec 32)) Bool)

(assert (=> b!301337 (= res!159171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301338 () Bool)

(declare-fun res!159169 () Bool)

(assert (=> b!301338 (=> (not res!159169) (not e!190174))))

(declare-datatypes ((SeekEntryResult!2374 0))(
  ( (MissingZero!2374 (index!11672 (_ BitVec 32))) (Found!2374 (index!11673 (_ BitVec 32))) (Intermediate!2374 (undefined!3186 Bool) (index!11674 (_ BitVec 32)) (x!29913 (_ BitVec 32))) (Undefined!2374) (MissingVacant!2374 (index!11675 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15268 (_ BitVec 32)) SeekEntryResult!2374)

(assert (=> b!301338 (= res!159169 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2374 i!1240)))))

(assert (= (and start!30080 res!159173) b!301336))

(assert (= (and b!301336 res!159170) b!301333))

(assert (= (and b!301333 res!159172) b!301335))

(assert (= (and b!301335 res!159174) b!301338))

(assert (= (and b!301338 res!159169) b!301337))

(assert (= (and b!301337 res!159171) b!301334))

(declare-fun m!313131 () Bool)

(assert (=> start!30080 m!313131))

(declare-fun m!313133 () Bool)

(assert (=> start!30080 m!313133))

(declare-fun m!313135 () Bool)

(assert (=> b!301338 m!313135))

(declare-fun m!313137 () Bool)

(assert (=> b!301334 m!313137))

(declare-fun m!313139 () Bool)

(assert (=> b!301335 m!313139))

(declare-fun m!313141 () Bool)

(assert (=> b!301337 m!313141))

(declare-fun m!313143 () Bool)

(assert (=> b!301333 m!313143))

(check-sat (not b!301334) (not b!301335) (not b!301333) (not b!301337) (not start!30080) (not b!301338))
(check-sat)
