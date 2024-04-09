; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28010 () Bool)

(assert start!28010)

(declare-fun b!287224 () Bool)

(declare-fun e!181940 () Bool)

(assert (=> b!287224 (= e!181940 false)))

(declare-datatypes ((SeekEntryResult!1991 0))(
  ( (MissingZero!1991 (index!10134 (_ BitVec 32))) (Found!1991 (index!10135 (_ BitVec 32))) (Intermediate!1991 (undefined!2803 Bool) (index!10136 (_ BitVec 32)) (x!28320 (_ BitVec 32))) (Undefined!1991) (MissingVacant!1991 (index!10137 (_ BitVec 32))) )
))
(declare-fun lt!141467 () SeekEntryResult!1991)

(declare-datatypes ((array!14403 0))(
  ( (array!14404 (arr!6831 (Array (_ BitVec 32) (_ BitVec 64))) (size!7183 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14403)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14403 (_ BitVec 32)) SeekEntryResult!1991)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287224 (= lt!141467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287225 () Bool)

(declare-fun res!149149 () Bool)

(declare-fun e!181942 () Bool)

(assert (=> b!287225 (=> (not res!149149) (not e!181942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287225 (= res!149149 (validKeyInArray!0 k!2524))))

(declare-fun b!287227 () Bool)

(assert (=> b!287227 (= e!181942 e!181940)))

(declare-fun res!149150 () Bool)

(assert (=> b!287227 (=> (not res!149150) (not e!181940))))

(declare-fun lt!141466 () SeekEntryResult!1991)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287227 (= res!149150 (or (= lt!141466 (MissingZero!1991 i!1256)) (= lt!141466 (MissingVacant!1991 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14403 (_ BitVec 32)) SeekEntryResult!1991)

(assert (=> b!287227 (= lt!141466 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287228 () Bool)

(declare-fun res!149153 () Bool)

(assert (=> b!287228 (=> (not res!149153) (not e!181942))))

(declare-fun arrayContainsKey!0 (array!14403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287228 (= res!149153 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287229 () Bool)

(declare-fun res!149151 () Bool)

(assert (=> b!287229 (=> (not res!149151) (not e!181940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14403 (_ BitVec 32)) Bool)

(assert (=> b!287229 (= res!149151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!149152 () Bool)

(assert (=> start!28010 (=> (not res!149152) (not e!181942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28010 (= res!149152 (validMask!0 mask!3809))))

(assert (=> start!28010 e!181942))

(assert (=> start!28010 true))

(declare-fun array_inv!4785 (array!14403) Bool)

(assert (=> start!28010 (array_inv!4785 a!3312)))

(declare-fun b!287226 () Bool)

(declare-fun res!149154 () Bool)

(assert (=> b!287226 (=> (not res!149154) (not e!181942))))

(assert (=> b!287226 (= res!149154 (and (= (size!7183 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7183 a!3312))))))

(assert (= (and start!28010 res!149152) b!287226))

(assert (= (and b!287226 res!149154) b!287225))

(assert (= (and b!287225 res!149149) b!287228))

(assert (= (and b!287228 res!149153) b!287227))

(assert (= (and b!287227 res!149150) b!287229))

(assert (= (and b!287229 res!149151) b!287224))

(declare-fun m!301713 () Bool)

(assert (=> start!28010 m!301713))

(declare-fun m!301715 () Bool)

(assert (=> start!28010 m!301715))

(declare-fun m!301717 () Bool)

(assert (=> b!287228 m!301717))

(declare-fun m!301719 () Bool)

(assert (=> b!287224 m!301719))

(assert (=> b!287224 m!301719))

(declare-fun m!301721 () Bool)

(assert (=> b!287224 m!301721))

(declare-fun m!301723 () Bool)

(assert (=> b!287227 m!301723))

(declare-fun m!301725 () Bool)

(assert (=> b!287225 m!301725))

(declare-fun m!301727 () Bool)

(assert (=> b!287229 m!301727))

(push 1)

