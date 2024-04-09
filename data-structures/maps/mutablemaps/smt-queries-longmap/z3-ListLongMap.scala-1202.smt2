; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25692 () Bool)

(assert start!25692)

(declare-fun b!266240 () Bool)

(declare-fun res!130580 () Bool)

(declare-fun e!172319 () Bool)

(assert (=> b!266240 (=> (not res!130580) (not e!172319))))

(declare-datatypes ((array!12858 0))(
  ( (array!12859 (arr!6083 (Array (_ BitVec 32) (_ BitVec 64))) (size!6435 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12858)

(declare-datatypes ((List!3918 0))(
  ( (Nil!3915) (Cons!3914 (h!4581 (_ BitVec 64)) (t!9008 List!3918)) )
))
(declare-fun arrayNoDuplicates!0 (array!12858 (_ BitVec 32) List!3918) Bool)

(assert (=> b!266240 (= res!130580 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3915))))

(declare-fun b!266241 () Bool)

(declare-fun res!130577 () Bool)

(assert (=> b!266241 (=> (not res!130577) (not e!172319))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12858 (_ BitVec 32)) Bool)

(assert (=> b!266241 (= res!130577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266242 () Bool)

(declare-fun res!130574 () Bool)

(declare-fun e!172321 () Bool)

(assert (=> b!266242 (=> (not res!130574) (not e!172321))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266242 (= res!130574 (validKeyInArray!0 k0!2698))))

(declare-fun b!266243 () Bool)

(assert (=> b!266243 (= e!172319 (not true))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12859 (store (arr!6083 a!3436) i!1355 k0!2698) (size!6435 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8270 0))(
  ( (Unit!8271) )
))
(declare-fun lt!134407 () Unit!8270)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12858 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8270)

(assert (=> b!266243 (= lt!134407 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k0!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!266244 () Bool)

(declare-fun res!130575 () Bool)

(assert (=> b!266244 (=> (not res!130575) (not e!172319))))

(assert (=> b!266244 (= res!130575 (bvslt #b00000000000000000000000000000000 (size!6435 a!3436)))))

(declare-fun b!266246 () Bool)

(declare-fun res!130578 () Bool)

(assert (=> b!266246 (=> (not res!130578) (not e!172321))))

(declare-fun arrayContainsKey!0 (array!12858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266246 (= res!130578 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266247 () Bool)

(assert (=> b!266247 (= e!172321 e!172319)))

(declare-fun res!130576 () Bool)

(assert (=> b!266247 (=> (not res!130576) (not e!172319))))

(declare-datatypes ((SeekEntryResult!1285 0))(
  ( (MissingZero!1285 (index!7310 (_ BitVec 32))) (Found!1285 (index!7311 (_ BitVec 32))) (Intermediate!1285 (undefined!2097 Bool) (index!7312 (_ BitVec 32)) (x!25586 (_ BitVec 32))) (Undefined!1285) (MissingVacant!1285 (index!7313 (_ BitVec 32))) )
))
(declare-fun lt!134408 () SeekEntryResult!1285)

(assert (=> b!266247 (= res!130576 (or (= lt!134408 (MissingZero!1285 i!1355)) (= lt!134408 (MissingVacant!1285 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12858 (_ BitVec 32)) SeekEntryResult!1285)

(assert (=> b!266247 (= lt!134408 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun res!130579 () Bool)

(assert (=> start!25692 (=> (not res!130579) (not e!172321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25692 (= res!130579 (validMask!0 mask!4002))))

(assert (=> start!25692 e!172321))

(assert (=> start!25692 true))

(declare-fun array_inv!4037 (array!12858) Bool)

(assert (=> start!25692 (array_inv!4037 a!3436)))

(declare-fun b!266245 () Bool)

(declare-fun res!130581 () Bool)

(assert (=> b!266245 (=> (not res!130581) (not e!172321))))

(assert (=> b!266245 (= res!130581 (and (= (size!6435 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6435 a!3436))))))

(assert (= (and start!25692 res!130579) b!266245))

(assert (= (and b!266245 res!130581) b!266242))

(assert (= (and b!266242 res!130574) b!266246))

(assert (= (and b!266246 res!130578) b!266247))

(assert (= (and b!266247 res!130576) b!266241))

(assert (= (and b!266241 res!130577) b!266240))

(assert (= (and b!266240 res!130580) b!266244))

(assert (= (and b!266244 res!130575) b!266243))

(declare-fun m!282901 () Bool)

(assert (=> b!266241 m!282901))

(declare-fun m!282903 () Bool)

(assert (=> b!266242 m!282903))

(declare-fun m!282905 () Bool)

(assert (=> b!266243 m!282905))

(declare-fun m!282907 () Bool)

(assert (=> b!266243 m!282907))

(declare-fun m!282909 () Bool)

(assert (=> b!266243 m!282909))

(declare-fun m!282911 () Bool)

(assert (=> start!25692 m!282911))

(declare-fun m!282913 () Bool)

(assert (=> start!25692 m!282913))

(declare-fun m!282915 () Bool)

(assert (=> b!266247 m!282915))

(declare-fun m!282917 () Bool)

(assert (=> b!266246 m!282917))

(declare-fun m!282919 () Bool)

(assert (=> b!266240 m!282919))

(check-sat (not b!266246) (not b!266243) (not b!266242) (not b!266247) (not start!25692) (not b!266240) (not b!266241))
(check-sat)
