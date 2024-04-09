; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81720 () Bool)

(assert start!81720)

(declare-fun b!953299 () Bool)

(declare-fun res!638629 () Bool)

(declare-fun e!537000 () Bool)

(assert (=> b!953299 (=> (not res!638629) (not e!537000))))

(declare-datatypes ((array!57754 0))(
  ( (array!57755 (arr!27759 (Array (_ BitVec 32) (_ BitVec 64))) (size!28239 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57754)

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57754 (_ BitVec 32)) Bool)

(assert (=> b!953299 (= res!638629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun res!638628 () Bool)

(assert (=> start!81720 (=> (not res!638628) (not e!537000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81720 (= res!638628 (validMask!0 mask!4034))))

(assert (=> start!81720 e!537000))

(assert (=> start!81720 true))

(declare-fun array_inv!21492 (array!57754) Bool)

(assert (=> start!81720 (array_inv!21492 a!3460)))

(declare-fun b!953300 () Bool)

(declare-fun res!638627 () Bool)

(assert (=> b!953300 (=> (not res!638627) (not e!537000))))

(declare-fun k0!2725 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953300 (= res!638627 (validKeyInArray!0 k0!2725))))

(declare-fun b!953298 () Bool)

(declare-fun res!638630 () Bool)

(assert (=> b!953298 (=> (not res!638630) (not e!537000))))

(assert (=> b!953298 (= res!638630 (= (size!28239 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953301 () Bool)

(assert (=> b!953301 (= e!537000 false)))

(declare-datatypes ((SeekEntryResult!9167 0))(
  ( (MissingZero!9167 (index!39038 (_ BitVec 32))) (Found!9167 (index!39039 (_ BitVec 32))) (Intermediate!9167 (undefined!9979 Bool) (index!39040 (_ BitVec 32)) (x!82056 (_ BitVec 32))) (Undefined!9167) (MissingVacant!9167 (index!39041 (_ BitVec 32))) )
))
(declare-fun lt!429663 () SeekEntryResult!9167)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57754 (_ BitVec 32)) SeekEntryResult!9167)

(assert (=> b!953301 (= lt!429663 (seekEntryOrOpen!0 k0!2725 a!3460 mask!4034))))

(assert (= (and start!81720 res!638628) b!953298))

(assert (= (and b!953298 res!638630) b!953299))

(assert (= (and b!953299 res!638629) b!953300))

(assert (= (and b!953300 res!638627) b!953301))

(declare-fun m!885459 () Bool)

(assert (=> b!953299 m!885459))

(declare-fun m!885461 () Bool)

(assert (=> start!81720 m!885461))

(declare-fun m!885463 () Bool)

(assert (=> start!81720 m!885463))

(declare-fun m!885465 () Bool)

(assert (=> b!953300 m!885465))

(declare-fun m!885467 () Bool)

(assert (=> b!953301 m!885467))

(check-sat (not b!953300) (not start!81720) (not b!953299) (not b!953301))
(check-sat)
