; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30076 () Bool)

(assert start!30076)

(declare-fun b!301297 () Bool)

(declare-fun res!159133 () Bool)

(declare-fun e!190161 () Bool)

(assert (=> b!301297 (=> (not res!159133) (not e!190161))))

(declare-datatypes ((array!15264 0))(
  ( (array!15265 (arr!7221 (Array (_ BitVec 32) (_ BitVec 64))) (size!7573 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15264)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2372 0))(
  ( (MissingZero!2372 (index!11664 (_ BitVec 32))) (Found!2372 (index!11665 (_ BitVec 32))) (Intermediate!2372 (undefined!3184 Bool) (index!11666 (_ BitVec 32)) (x!29903 (_ BitVec 32))) (Undefined!2372) (MissingVacant!2372 (index!11667 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15264 (_ BitVec 32)) SeekEntryResult!2372)

(assert (=> b!301297 (= res!159133 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2372 i!1240)))))

(declare-fun b!301298 () Bool)

(declare-fun res!159134 () Bool)

(assert (=> b!301298 (=> (not res!159134) (not e!190161))))

(declare-fun arrayContainsKey!0 (array!15264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301298 (= res!159134 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301299 () Bool)

(declare-fun res!159135 () Bool)

(assert (=> b!301299 (=> (not res!159135) (not e!190161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15264 (_ BitVec 32)) Bool)

(assert (=> b!301299 (= res!159135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301300 () Bool)

(declare-fun res!159138 () Bool)

(assert (=> b!301300 (=> (not res!159138) (not e!190161))))

(assert (=> b!301300 (= res!159138 (and (= (size!7573 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7573 a!3293))))))

(declare-fun b!301301 () Bool)

(declare-fun res!159136 () Bool)

(assert (=> b!301301 (=> (not res!159136) (not e!190161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301301 (= res!159136 (validKeyInArray!0 k!2441))))

(declare-fun b!301302 () Bool)

(assert (=> b!301302 (= e!190161 false)))

(declare-fun lt!149813 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301302 (= lt!149813 (toIndex!0 k!2441 mask!3709))))

(declare-fun res!159137 () Bool)

(assert (=> start!30076 (=> (not res!159137) (not e!190161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30076 (= res!159137 (validMask!0 mask!3709))))

(assert (=> start!30076 e!190161))

(assert (=> start!30076 true))

(declare-fun array_inv!5175 (array!15264) Bool)

(assert (=> start!30076 (array_inv!5175 a!3293)))

(assert (= (and start!30076 res!159137) b!301300))

(assert (= (and b!301300 res!159138) b!301301))

(assert (= (and b!301301 res!159136) b!301298))

(assert (= (and b!301298 res!159134) b!301297))

(assert (= (and b!301297 res!159133) b!301299))

(assert (= (and b!301299 res!159135) b!301302))

(declare-fun m!313103 () Bool)

(assert (=> start!30076 m!313103))

(declare-fun m!313105 () Bool)

(assert (=> start!30076 m!313105))

(declare-fun m!313107 () Bool)

(assert (=> b!301301 m!313107))

(declare-fun m!313109 () Bool)

(assert (=> b!301298 m!313109))

(declare-fun m!313111 () Bool)

(assert (=> b!301302 m!313111))

(declare-fun m!313113 () Bool)

(assert (=> b!301299 m!313113))

(declare-fun m!313115 () Bool)

(assert (=> b!301297 m!313115))

(push 1)

(assert (not b!301302))

(assert (not b!301297))

(assert (not b!301299))

(assert (not start!30076))

(assert (not b!301301))

(assert (not b!301298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

