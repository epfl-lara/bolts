; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30074 () Bool)

(assert start!30074)

(declare-fun b!301279 () Bool)

(declare-fun res!159117 () Bool)

(declare-fun e!190155 () Bool)

(assert (=> b!301279 (=> (not res!159117) (not e!190155))))

(declare-datatypes ((array!15262 0))(
  ( (array!15263 (arr!7220 (Array (_ BitVec 32) (_ BitVec 64))) (size!7572 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15262)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301279 (= res!159117 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301280 () Bool)

(declare-fun res!159119 () Bool)

(assert (=> b!301280 (=> (not res!159119) (not e!190155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301280 (= res!159119 (validKeyInArray!0 k0!2441))))

(declare-fun res!159116 () Bool)

(assert (=> start!30074 (=> (not res!159116) (not e!190155))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30074 (= res!159116 (validMask!0 mask!3709))))

(assert (=> start!30074 e!190155))

(assert (=> start!30074 true))

(declare-fun array_inv!5174 (array!15262) Bool)

(assert (=> start!30074 (array_inv!5174 a!3293)))

(declare-fun b!301281 () Bool)

(declare-fun res!159120 () Bool)

(assert (=> b!301281 (=> (not res!159120) (not e!190155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15262 (_ BitVec 32)) Bool)

(assert (=> b!301281 (= res!159120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301282 () Bool)

(declare-fun res!159118 () Bool)

(assert (=> b!301282 (=> (not res!159118) (not e!190155))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!301282 (= res!159118 (and (= (size!7572 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7572 a!3293))))))

(declare-fun b!301283 () Bool)

(declare-fun res!159115 () Bool)

(assert (=> b!301283 (=> (not res!159115) (not e!190155))))

(declare-datatypes ((SeekEntryResult!2371 0))(
  ( (MissingZero!2371 (index!11660 (_ BitVec 32))) (Found!2371 (index!11661 (_ BitVec 32))) (Intermediate!2371 (undefined!3183 Bool) (index!11662 (_ BitVec 32)) (x!29902 (_ BitVec 32))) (Undefined!2371) (MissingVacant!2371 (index!11663 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15262 (_ BitVec 32)) SeekEntryResult!2371)

(assert (=> b!301283 (= res!159115 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2371 i!1240)))))

(declare-fun b!301284 () Bool)

(assert (=> b!301284 (= e!190155 false)))

(declare-fun lt!149810 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301284 (= lt!149810 (toIndex!0 k0!2441 mask!3709))))

(assert (= (and start!30074 res!159116) b!301282))

(assert (= (and b!301282 res!159118) b!301280))

(assert (= (and b!301280 res!159119) b!301279))

(assert (= (and b!301279 res!159117) b!301283))

(assert (= (and b!301283 res!159115) b!301281))

(assert (= (and b!301281 res!159120) b!301284))

(declare-fun m!313089 () Bool)

(assert (=> b!301279 m!313089))

(declare-fun m!313091 () Bool)

(assert (=> b!301280 m!313091))

(declare-fun m!313093 () Bool)

(assert (=> b!301281 m!313093))

(declare-fun m!313095 () Bool)

(assert (=> start!30074 m!313095))

(declare-fun m!313097 () Bool)

(assert (=> start!30074 m!313097))

(declare-fun m!313099 () Bool)

(assert (=> b!301284 m!313099))

(declare-fun m!313101 () Bool)

(assert (=> b!301283 m!313101))

(check-sat (not start!30074) (not b!301280) (not b!301279) (not b!301284) (not b!301281) (not b!301283))
(check-sat)
