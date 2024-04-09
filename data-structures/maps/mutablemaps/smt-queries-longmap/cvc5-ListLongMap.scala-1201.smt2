; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25684 () Bool)

(assert start!25684)

(declare-fun b!266158 () Bool)

(declare-fun res!130492 () Bool)

(declare-fun e!172285 () Bool)

(assert (=> b!266158 (=> (not res!130492) (not e!172285))))

(declare-datatypes ((array!12850 0))(
  ( (array!12851 (arr!6079 (Array (_ BitVec 32) (_ BitVec 64))) (size!6431 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12850)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12850 (_ BitVec 32)) Bool)

(assert (=> b!266158 (= res!130492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130493 () Bool)

(declare-fun e!172283 () Bool)

(assert (=> start!25684 (=> (not res!130493) (not e!172283))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25684 (= res!130493 (validMask!0 mask!4002))))

(assert (=> start!25684 e!172283))

(assert (=> start!25684 true))

(declare-fun array_inv!4033 (array!12850) Bool)

(assert (=> start!25684 (array_inv!4033 a!3436)))

(declare-fun b!266159 () Bool)

(assert (=> b!266159 (= e!172283 e!172285)))

(declare-fun res!130494 () Bool)

(assert (=> b!266159 (=> (not res!130494) (not e!172285))))

(declare-datatypes ((SeekEntryResult!1281 0))(
  ( (MissingZero!1281 (index!7294 (_ BitVec 32))) (Found!1281 (index!7295 (_ BitVec 32))) (Intermediate!1281 (undefined!2093 Bool) (index!7296 (_ BitVec 32)) (x!25574 (_ BitVec 32))) (Undefined!1281) (MissingVacant!1281 (index!7297 (_ BitVec 32))) )
))
(declare-fun lt!134384 () SeekEntryResult!1281)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266159 (= res!130494 (or (= lt!134384 (MissingZero!1281 i!1355)) (= lt!134384 (MissingVacant!1281 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12850 (_ BitVec 32)) SeekEntryResult!1281)

(assert (=> b!266159 (= lt!134384 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266160 () Bool)

(assert (=> b!266160 (= e!172285 false)))

(declare-fun lt!134383 () Bool)

(declare-datatypes ((List!3914 0))(
  ( (Nil!3911) (Cons!3910 (h!4577 (_ BitVec 64)) (t!9004 List!3914)) )
))
(declare-fun arrayNoDuplicates!0 (array!12850 (_ BitVec 32) List!3914) Bool)

(assert (=> b!266160 (= lt!134383 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3911))))

(declare-fun b!266161 () Bool)

(declare-fun res!130495 () Bool)

(assert (=> b!266161 (=> (not res!130495) (not e!172283))))

(declare-fun arrayContainsKey!0 (array!12850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266161 (= res!130495 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266162 () Bool)

(declare-fun res!130497 () Bool)

(assert (=> b!266162 (=> (not res!130497) (not e!172283))))

(assert (=> b!266162 (= res!130497 (and (= (size!6431 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6431 a!3436))))))

(declare-fun b!266163 () Bool)

(declare-fun res!130496 () Bool)

(assert (=> b!266163 (=> (not res!130496) (not e!172283))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266163 (= res!130496 (validKeyInArray!0 k!2698))))

(assert (= (and start!25684 res!130493) b!266162))

(assert (= (and b!266162 res!130497) b!266163))

(assert (= (and b!266163 res!130496) b!266161))

(assert (= (and b!266161 res!130495) b!266159))

(assert (= (and b!266159 res!130494) b!266158))

(assert (= (and b!266158 res!130492) b!266160))

(declare-fun m!282839 () Bool)

(assert (=> b!266160 m!282839))

(declare-fun m!282841 () Bool)

(assert (=> b!266158 m!282841))

(declare-fun m!282843 () Bool)

(assert (=> start!25684 m!282843))

(declare-fun m!282845 () Bool)

(assert (=> start!25684 m!282845))

(declare-fun m!282847 () Bool)

(assert (=> b!266159 m!282847))

(declare-fun m!282849 () Bool)

(assert (=> b!266161 m!282849))

(declare-fun m!282851 () Bool)

(assert (=> b!266163 m!282851))

(push 1)

