; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25622 () Bool)

(assert start!25622)

(declare-fun b!265600 () Bool)

(declare-fun res!129937 () Bool)

(declare-fun e!172004 () Bool)

(assert (=> b!265600 (=> (not res!129937) (not e!172004))))

(declare-datatypes ((array!12788 0))(
  ( (array!12789 (arr!6048 (Array (_ BitVec 32) (_ BitVec 64))) (size!6400 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12788)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12788 (_ BitVec 32)) Bool)

(assert (=> b!265600 (= res!129937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265601 () Bool)

(declare-fun res!129934 () Bool)

(declare-fun e!172006 () Bool)

(assert (=> b!265601 (=> (not res!129934) (not e!172006))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265601 (= res!129934 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!129939 () Bool)

(assert (=> start!25622 (=> (not res!129939) (not e!172006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25622 (= res!129939 (validMask!0 mask!4002))))

(assert (=> start!25622 e!172006))

(assert (=> start!25622 true))

(declare-fun array_inv!4002 (array!12788) Bool)

(assert (=> start!25622 (array_inv!4002 a!3436)))

(declare-fun b!265602 () Bool)

(assert (=> b!265602 (= e!172006 e!172004)))

(declare-fun res!129938 () Bool)

(assert (=> b!265602 (=> (not res!129938) (not e!172004))))

(declare-datatypes ((SeekEntryResult!1250 0))(
  ( (MissingZero!1250 (index!7170 (_ BitVec 32))) (Found!1250 (index!7171 (_ BitVec 32))) (Intermediate!1250 (undefined!2062 Bool) (index!7172 (_ BitVec 32)) (x!25455 (_ BitVec 32))) (Undefined!1250) (MissingVacant!1250 (index!7173 (_ BitVec 32))) )
))
(declare-fun lt!134198 () SeekEntryResult!1250)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265602 (= res!129938 (or (= lt!134198 (MissingZero!1250 i!1355)) (= lt!134198 (MissingVacant!1250 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12788 (_ BitVec 32)) SeekEntryResult!1250)

(assert (=> b!265602 (= lt!134198 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265603 () Bool)

(assert (=> b!265603 (= e!172004 false)))

(declare-fun lt!134197 () Bool)

(declare-datatypes ((List!3883 0))(
  ( (Nil!3880) (Cons!3879 (h!4546 (_ BitVec 64)) (t!8973 List!3883)) )
))
(declare-fun arrayNoDuplicates!0 (array!12788 (_ BitVec 32) List!3883) Bool)

(assert (=> b!265603 (= lt!134197 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3880))))

(declare-fun b!265604 () Bool)

(declare-fun res!129936 () Bool)

(assert (=> b!265604 (=> (not res!129936) (not e!172006))))

(assert (=> b!265604 (= res!129936 (and (= (size!6400 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6400 a!3436))))))

(declare-fun b!265605 () Bool)

(declare-fun res!129935 () Bool)

(assert (=> b!265605 (=> (not res!129935) (not e!172006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265605 (= res!129935 (validKeyInArray!0 k!2698))))

(assert (= (and start!25622 res!129939) b!265604))

(assert (= (and b!265604 res!129936) b!265605))

(assert (= (and b!265605 res!129935) b!265601))

(assert (= (and b!265601 res!129934) b!265602))

(assert (= (and b!265602 res!129938) b!265600))

(assert (= (and b!265600 res!129937) b!265603))

(declare-fun m!282405 () Bool)

(assert (=> b!265600 m!282405))

(declare-fun m!282407 () Bool)

(assert (=> b!265601 m!282407))

(declare-fun m!282409 () Bool)

(assert (=> b!265605 m!282409))

(declare-fun m!282411 () Bool)

(assert (=> b!265602 m!282411))

(declare-fun m!282413 () Bool)

(assert (=> start!25622 m!282413))

(declare-fun m!282415 () Bool)

(assert (=> start!25622 m!282415))

(declare-fun m!282417 () Bool)

(assert (=> b!265603 m!282417))

(push 1)

(assert (not b!265600))

(assert 