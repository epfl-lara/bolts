; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25704 () Bool)

(assert start!25704)

(declare-fun b!266385 () Bool)

(declare-fun res!130722 () Bool)

(declare-fun e!172375 () Bool)

(assert (=> b!266385 (=> (not res!130722) (not e!172375))))

(declare-datatypes ((array!12870 0))(
  ( (array!12871 (arr!6089 (Array (_ BitVec 32) (_ BitVec 64))) (size!6441 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12870)

(declare-datatypes ((List!3924 0))(
  ( (Nil!3921) (Cons!3920 (h!4587 (_ BitVec 64)) (t!9014 List!3924)) )
))
(declare-fun arrayNoDuplicates!0 (array!12870 (_ BitVec 32) List!3924) Bool)

(assert (=> b!266385 (= res!130722 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3921))))

(declare-fun b!266386 () Bool)

(declare-fun res!130720 () Bool)

(declare-fun e!172374 () Bool)

(assert (=> b!266386 (=> (not res!130720) (not e!172374))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266386 (= res!130720 (and (= (size!6441 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6441 a!3436))))))

(declare-fun b!266387 () Bool)

(assert (=> b!266387 (= e!172375 (not true))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12870 (_ BitVec 32)) Bool)

(assert (=> b!266387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12871 (store (arr!6089 a!3436) i!1355 k0!2698) (size!6441 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8282 0))(
  ( (Unit!8283) )
))
(declare-fun lt!134443 () Unit!8282)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12870 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8282)

(assert (=> b!266387 (= lt!134443 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266388 () Bool)

(declare-fun res!130718 () Bool)

(assert (=> b!266388 (=> (not res!130718) (not e!172374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266388 (= res!130718 (validKeyInArray!0 k0!2698))))

(declare-fun b!266389 () Bool)

(declare-fun res!130721 () Bool)

(assert (=> b!266389 (=> (not res!130721) (not e!172375))))

(assert (=> b!266389 (= res!130721 (bvslt #b00000000000000000000000000000000 (size!6441 a!3436)))))

(declare-fun b!266390 () Bool)

(assert (=> b!266390 (= e!172374 e!172375)))

(declare-fun res!130723 () Bool)

(assert (=> b!266390 (=> (not res!130723) (not e!172375))))

(declare-datatypes ((SeekEntryResult!1291 0))(
  ( (MissingZero!1291 (index!7334 (_ BitVec 32))) (Found!1291 (index!7335 (_ BitVec 32))) (Intermediate!1291 (undefined!2103 Bool) (index!7336 (_ BitVec 32)) (x!25608 (_ BitVec 32))) (Undefined!1291) (MissingVacant!1291 (index!7337 (_ BitVec 32))) )
))
(declare-fun lt!134444 () SeekEntryResult!1291)

(assert (=> b!266390 (= res!130723 (or (= lt!134444 (MissingZero!1291 i!1355)) (= lt!134444 (MissingVacant!1291 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12870 (_ BitVec 32)) SeekEntryResult!1291)

(assert (=> b!266390 (= lt!134444 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!266391 () Bool)

(declare-fun res!130724 () Bool)

(assert (=> b!266391 (=> (not res!130724) (not e!172374))))

(declare-fun arrayContainsKey!0 (array!12870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266391 (= res!130724 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun res!130725 () Bool)

(assert (=> start!25704 (=> (not res!130725) (not e!172374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25704 (= res!130725 (validMask!0 mask!4002))))

(assert (=> start!25704 e!172374))

(assert (=> start!25704 true))

(declare-fun array_inv!4043 (array!12870) Bool)

(assert (=> start!25704 (array_inv!4043 a!3436)))

(declare-fun b!266384 () Bool)

(declare-fun res!130719 () Bool)

(assert (=> b!266384 (=> (not res!130719) (not e!172375))))

(assert (=> b!266384 (= res!130719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25704 res!130725) b!266386))

(assert (= (and b!266386 res!130720) b!266388))

(assert (= (and b!266388 res!130718) b!266391))

(assert (= (and b!266391 res!130724) b!266390))

(assert (= (and b!266390 res!130723) b!266384))

(assert (= (and b!266384 res!130719) b!266385))

(assert (= (and b!266385 res!130722) b!266389))

(assert (= (and b!266389 res!130721) b!266387))

(declare-fun m!283021 () Bool)

(assert (=> b!266384 m!283021))

(declare-fun m!283023 () Bool)

(assert (=> b!266388 m!283023))

(declare-fun m!283025 () Bool)

(assert (=> b!266385 m!283025))

(declare-fun m!283027 () Bool)

(assert (=> b!266390 m!283027))

(declare-fun m!283029 () Bool)

(assert (=> b!266387 m!283029))

(declare-fun m!283031 () Bool)

(assert (=> b!266387 m!283031))

(declare-fun m!283033 () Bool)

(assert (=> b!266387 m!283033))

(declare-fun m!283035 () Bool)

(assert (=> b!266391 m!283035))

(declare-fun m!283037 () Bool)

(assert (=> start!25704 m!283037))

(declare-fun m!283039 () Bool)

(assert (=> start!25704 m!283039))

(check-sat (not b!266387) (not start!25704) (not b!266385) (not b!266384) (not b!266388) (not b!266391) (not b!266390))
(check-sat)
