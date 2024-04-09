; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25670 () Bool)

(assert start!25670)

(declare-fun b!266032 () Bool)

(declare-fun res!130366 () Bool)

(declare-fun e!172220 () Bool)

(assert (=> b!266032 (=> (not res!130366) (not e!172220))))

(declare-datatypes ((array!12836 0))(
  ( (array!12837 (arr!6072 (Array (_ BitVec 32) (_ BitVec 64))) (size!6424 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12836)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266032 (= res!130366 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266033 () Bool)

(declare-fun res!130371 () Bool)

(assert (=> b!266033 (=> (not res!130371) (not e!172220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266033 (= res!130371 (validKeyInArray!0 k!2698))))

(declare-fun b!266034 () Bool)

(declare-fun res!130368 () Bool)

(declare-fun e!172221 () Bool)

(assert (=> b!266034 (=> (not res!130368) (not e!172221))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12836 (_ BitVec 32)) Bool)

(assert (=> b!266034 (= res!130368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266035 () Bool)

(assert (=> b!266035 (= e!172221 false)))

(declare-fun lt!134341 () Bool)

(declare-datatypes ((List!3907 0))(
  ( (Nil!3904) (Cons!3903 (h!4570 (_ BitVec 64)) (t!8997 List!3907)) )
))
(declare-fun arrayNoDuplicates!0 (array!12836 (_ BitVec 32) List!3907) Bool)

(assert (=> b!266035 (= lt!134341 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3904))))

(declare-fun res!130367 () Bool)

(assert (=> start!25670 (=> (not res!130367) (not e!172220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25670 (= res!130367 (validMask!0 mask!4002))))

(assert (=> start!25670 e!172220))

(assert (=> start!25670 true))

(declare-fun array_inv!4026 (array!12836) Bool)

(assert (=> start!25670 (array_inv!4026 a!3436)))

(declare-fun b!266036 () Bool)

(declare-fun res!130369 () Bool)

(assert (=> b!266036 (=> (not res!130369) (not e!172220))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266036 (= res!130369 (and (= (size!6424 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6424 a!3436))))))

(declare-fun b!266037 () Bool)

(assert (=> b!266037 (= e!172220 e!172221)))

(declare-fun res!130370 () Bool)

(assert (=> b!266037 (=> (not res!130370) (not e!172221))))

(declare-datatypes ((SeekEntryResult!1274 0))(
  ( (MissingZero!1274 (index!7266 (_ BitVec 32))) (Found!1274 (index!7267 (_ BitVec 32))) (Intermediate!1274 (undefined!2086 Bool) (index!7268 (_ BitVec 32)) (x!25543 (_ BitVec 32))) (Undefined!1274) (MissingVacant!1274 (index!7269 (_ BitVec 32))) )
))
(declare-fun lt!134342 () SeekEntryResult!1274)

(assert (=> b!266037 (= res!130370 (or (= lt!134342 (MissingZero!1274 i!1355)) (= lt!134342 (MissingVacant!1274 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12836 (_ BitVec 32)) SeekEntryResult!1274)

(assert (=> b!266037 (= lt!134342 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25670 res!130367) b!266036))

(assert (= (and b!266036 res!130369) b!266033))

(assert (= (and b!266033 res!130371) b!266032))

(assert (= (and b!266032 res!130366) b!266037))

(assert (= (and b!266037 res!130370) b!266034))

(assert (= (and b!266034 res!130368) b!266035))

(declare-fun m!282741 () Bool)

(assert (=> b!266035 m!282741))

(declare-fun m!282743 () Bool)

(assert (=> b!266037 m!282743))

(declare-fun m!282745 () Bool)

(assert (=> b!266033 m!282745))

(declare-fun m!282747 () Bool)

(assert (=> b!266032 m!282747))

(declare-fun m!282749 () Bool)

(assert (=> b!266034 m!282749))

(declare-fun m!282751 () Bool)

(assert (=> start!25670 m!282751))

(declare-fun m!282753 () Bool)

(assert (=> start!25670 m!282753))

(push 1)

(assert (not start!25670))

(assert (not b!266037))

(assert (not b!266035))

(assert (not b!266032))

(assert (not b!266034))

(assert (not b!266033))

(check-sat)

(pop 1)

