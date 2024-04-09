; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25664 () Bool)

(assert start!25664)

(declare-fun b!265978 () Bool)

(declare-fun res!130314 () Bool)

(declare-fun e!172194 () Bool)

(assert (=> b!265978 (=> (not res!130314) (not e!172194))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265978 (= res!130314 (validKeyInArray!0 k!2698))))

(declare-fun b!265979 () Bool)

(declare-fun e!172195 () Bool)

(assert (=> b!265979 (= e!172194 e!172195)))

(declare-fun res!130312 () Bool)

(assert (=> b!265979 (=> (not res!130312) (not e!172195))))

(declare-datatypes ((SeekEntryResult!1271 0))(
  ( (MissingZero!1271 (index!7254 (_ BitVec 32))) (Found!1271 (index!7255 (_ BitVec 32))) (Intermediate!1271 (undefined!2083 Bool) (index!7256 (_ BitVec 32)) (x!25532 (_ BitVec 32))) (Undefined!1271) (MissingVacant!1271 (index!7257 (_ BitVec 32))) )
))
(declare-fun lt!134324 () SeekEntryResult!1271)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265979 (= res!130312 (or (= lt!134324 (MissingZero!1271 i!1355)) (= lt!134324 (MissingVacant!1271 i!1355))))))

(declare-datatypes ((array!12830 0))(
  ( (array!12831 (arr!6069 (Array (_ BitVec 32) (_ BitVec 64))) (size!6421 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12830)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12830 (_ BitVec 32)) SeekEntryResult!1271)

(assert (=> b!265979 (= lt!134324 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265980 () Bool)

(declare-fun res!130316 () Bool)

(assert (=> b!265980 (=> (not res!130316) (not e!172195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12830 (_ BitVec 32)) Bool)

(assert (=> b!265980 (= res!130316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130317 () Bool)

(assert (=> start!25664 (=> (not res!130317) (not e!172194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25664 (= res!130317 (validMask!0 mask!4002))))

(assert (=> start!25664 e!172194))

(assert (=> start!25664 true))

(declare-fun array_inv!4023 (array!12830) Bool)

(assert (=> start!25664 (array_inv!4023 a!3436)))

(declare-fun b!265981 () Bool)

(assert (=> b!265981 (= e!172195 false)))

(declare-fun lt!134323 () Bool)

(declare-datatypes ((List!3904 0))(
  ( (Nil!3901) (Cons!3900 (h!4567 (_ BitVec 64)) (t!8994 List!3904)) )
))
(declare-fun arrayNoDuplicates!0 (array!12830 (_ BitVec 32) List!3904) Bool)

(assert (=> b!265981 (= lt!134323 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3901))))

(declare-fun b!265982 () Bool)

(declare-fun res!130315 () Bool)

(assert (=> b!265982 (=> (not res!130315) (not e!172194))))

(declare-fun arrayContainsKey!0 (array!12830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265982 (= res!130315 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265983 () Bool)

(declare-fun res!130313 () Bool)

(assert (=> b!265983 (=> (not res!130313) (not e!172194))))

(assert (=> b!265983 (= res!130313 (and (= (size!6421 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6421 a!3436))))))

(assert (= (and start!25664 res!130317) b!265983))

(assert (= (and b!265983 res!130313) b!265978))

(assert (= (and b!265978 res!130314) b!265982))

(assert (= (and b!265982 res!130315) b!265979))

(assert (= (and b!265979 res!130312) b!265980))

(assert (= (and b!265980 res!130316) b!265981))

(declare-fun m!282699 () Bool)

(assert (=> b!265981 m!282699))

(declare-fun m!282701 () Bool)

(assert (=> b!265978 m!282701))

(declare-fun m!282703 () Bool)

(assert (=> b!265979 m!282703))

(declare-fun m!282705 () Bool)

(assert (=> start!25664 m!282705))

(declare-fun m!282707 () Bool)

(assert (=> start!25664 m!282707))

(declare-fun m!282709 () Bool)

(assert (=> b!265982 m!282709))

(declare-fun m!282711 () Bool)

(assert (=> b!265980 m!282711))

(push 1)

(assert (not b!265979))

(assert (not b!265981))

(assert (not b!265982))

(assert (not b!265978))

