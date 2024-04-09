; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25752 () Bool)

(assert start!25752)

(declare-fun b!266851 () Bool)

(declare-fun res!131187 () Bool)

(declare-fun e!172590 () Bool)

(assert (=> b!266851 (=> (not res!131187) (not e!172590))))

(declare-datatypes ((array!12918 0))(
  ( (array!12919 (arr!6113 (Array (_ BitVec 32) (_ BitVec 64))) (size!6465 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12918)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12918 (_ BitVec 32)) Bool)

(assert (=> b!266851 (= res!131187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266852 () Bool)

(declare-fun res!131190 () Bool)

(declare-fun e!172589 () Bool)

(assert (=> b!266852 (=> (not res!131190) (not e!172589))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266852 (= res!131190 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266853 () Bool)

(declare-fun res!131185 () Bool)

(assert (=> b!266853 (=> (not res!131185) (not e!172589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266853 (= res!131185 (validKeyInArray!0 k0!2698))))

(declare-fun b!266854 () Bool)

(assert (=> b!266854 (= e!172590 false)))

(declare-fun lt!134578 () Bool)

(declare-datatypes ((List!3948 0))(
  ( (Nil!3945) (Cons!3944 (h!4611 (_ BitVec 64)) (t!9038 List!3948)) )
))
(declare-fun arrayNoDuplicates!0 (array!12918 (_ BitVec 32) List!3948) Bool)

(assert (=> b!266854 (= lt!134578 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3945))))

(declare-fun b!266855 () Bool)

(assert (=> b!266855 (= e!172589 e!172590)))

(declare-fun res!131188 () Bool)

(assert (=> b!266855 (=> (not res!131188) (not e!172590))))

(declare-datatypes ((SeekEntryResult!1315 0))(
  ( (MissingZero!1315 (index!7430 (_ BitVec 32))) (Found!1315 (index!7431 (_ BitVec 32))) (Intermediate!1315 (undefined!2127 Bool) (index!7432 (_ BitVec 32)) (x!25696 (_ BitVec 32))) (Undefined!1315) (MissingVacant!1315 (index!7433 (_ BitVec 32))) )
))
(declare-fun lt!134579 () SeekEntryResult!1315)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266855 (= res!131188 (or (= lt!134579 (MissingZero!1315 i!1355)) (= lt!134579 (MissingVacant!1315 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12918 (_ BitVec 32)) SeekEntryResult!1315)

(assert (=> b!266855 (= lt!134579 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!131189 () Bool)

(assert (=> start!25752 (=> (not res!131189) (not e!172589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25752 (= res!131189 (validMask!0 mask!4002))))

(assert (=> start!25752 e!172589))

(assert (=> start!25752 true))

(declare-fun array_inv!4067 (array!12918) Bool)

(assert (=> start!25752 (array_inv!4067 a!3436)))

(declare-fun b!266856 () Bool)

(declare-fun res!131186 () Bool)

(assert (=> b!266856 (=> (not res!131186) (not e!172589))))

(assert (=> b!266856 (= res!131186 (and (= (size!6465 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6465 a!3436))))))

(assert (= (and start!25752 res!131189) b!266856))

(assert (= (and b!266856 res!131186) b!266853))

(assert (= (and b!266853 res!131185) b!266852))

(assert (= (and b!266852 res!131190) b!266855))

(assert (= (and b!266855 res!131188) b!266851))

(assert (= (and b!266851 res!131187) b!266854))

(declare-fun m!283387 () Bool)

(assert (=> b!266851 m!283387))

(declare-fun m!283389 () Bool)

(assert (=> b!266852 m!283389))

(declare-fun m!283391 () Bool)

(assert (=> start!25752 m!283391))

(declare-fun m!283393 () Bool)

(assert (=> start!25752 m!283393))

(declare-fun m!283395 () Bool)

(assert (=> b!266855 m!283395))

(declare-fun m!283397 () Bool)

(assert (=> b!266853 m!283397))

(declare-fun m!283399 () Bool)

(assert (=> b!266854 m!283399))

(check-sat (not start!25752) (not b!266855) (not b!266853) (not b!266852) (not b!266851) (not b!266854))
(check-sat)
