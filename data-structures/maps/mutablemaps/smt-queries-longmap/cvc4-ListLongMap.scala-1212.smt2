; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25754 () Bool)

(assert start!25754)

(declare-fun b!266869 () Bool)

(declare-fun e!172598 () Bool)

(declare-fun e!172599 () Bool)

(assert (=> b!266869 (= e!172598 e!172599)))

(declare-fun res!131204 () Bool)

(assert (=> b!266869 (=> (not res!131204) (not e!172599))))

(declare-datatypes ((SeekEntryResult!1316 0))(
  ( (MissingZero!1316 (index!7434 (_ BitVec 32))) (Found!1316 (index!7435 (_ BitVec 32))) (Intermediate!1316 (undefined!2128 Bool) (index!7436 (_ BitVec 32)) (x!25697 (_ BitVec 32))) (Undefined!1316) (MissingVacant!1316 (index!7437 (_ BitVec 32))) )
))
(declare-fun lt!134585 () SeekEntryResult!1316)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266869 (= res!131204 (or (= lt!134585 (MissingZero!1316 i!1355)) (= lt!134585 (MissingVacant!1316 i!1355))))))

(declare-datatypes ((array!12920 0))(
  ( (array!12921 (arr!6114 (Array (_ BitVec 32) (_ BitVec 64))) (size!6466 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12920)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12920 (_ BitVec 32)) SeekEntryResult!1316)

(assert (=> b!266869 (= lt!134585 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266870 () Bool)

(declare-fun res!131206 () Bool)

(assert (=> b!266870 (=> (not res!131206) (not e!172598))))

(assert (=> b!266870 (= res!131206 (and (= (size!6466 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6466 a!3436))))))

(declare-fun b!266871 () Bool)

(assert (=> b!266871 (= e!172599 false)))

(declare-fun lt!134584 () Bool)

(declare-datatypes ((List!3949 0))(
  ( (Nil!3946) (Cons!3945 (h!4612 (_ BitVec 64)) (t!9039 List!3949)) )
))
(declare-fun arrayNoDuplicates!0 (array!12920 (_ BitVec 32) List!3949) Bool)

(assert (=> b!266871 (= lt!134584 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3946))))

(declare-fun res!131203 () Bool)

(assert (=> start!25754 (=> (not res!131203) (not e!172598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25754 (= res!131203 (validMask!0 mask!4002))))

(assert (=> start!25754 e!172598))

(assert (=> start!25754 true))

(declare-fun array_inv!4068 (array!12920) Bool)

(assert (=> start!25754 (array_inv!4068 a!3436)))

(declare-fun b!266872 () Bool)

(declare-fun res!131205 () Bool)

(assert (=> b!266872 (=> (not res!131205) (not e!172599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12920 (_ BitVec 32)) Bool)

(assert (=> b!266872 (= res!131205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266873 () Bool)

(declare-fun res!131207 () Bool)

(assert (=> b!266873 (=> (not res!131207) (not e!172598))))

(declare-fun arrayContainsKey!0 (array!12920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266873 (= res!131207 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266874 () Bool)

(declare-fun res!131208 () Bool)

(assert (=> b!266874 (=> (not res!131208) (not e!172598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266874 (= res!131208 (validKeyInArray!0 k!2698))))

(assert (= (and start!25754 res!131203) b!266870))

(assert (= (and b!266870 res!131206) b!266874))

(assert (= (and b!266874 res!131208) b!266873))

(assert (= (and b!266873 res!131207) b!266869))

(assert (= (and b!266869 res!131204) b!266872))

(assert (= (and b!266872 res!131205) b!266871))

(declare-fun m!283401 () Bool)

(assert (=> b!266873 m!283401))

(declare-fun m!283403 () Bool)

(assert (=> b!266869 m!283403))

(declare-fun m!283405 () Bool)

(assert (=> b!266871 m!283405))

(declare-fun m!283407 () Bool)

(assert (=> start!25754 m!283407))

(declare-fun m!283409 () Bool)

(assert (=> start!25754 m!283409))

(declare-fun m!283411 () Bool)

(assert (=> b!266874 m!283411))

(declare-fun m!283413 () Bool)

(assert (=> b!266872 m!283413))

(push 1)

(assert (not b!266869))

(assert (not b!266873))

(assert (not b!266874))

(assert (not b!266871))

