; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25756 () Bool)

(assert start!25756)

(declare-fun b!266887 () Bool)

(declare-fun res!131225 () Bool)

(declare-fun e!172608 () Bool)

(assert (=> b!266887 (=> (not res!131225) (not e!172608))))

(declare-datatypes ((array!12922 0))(
  ( (array!12923 (arr!6115 (Array (_ BitVec 32) (_ BitVec 64))) (size!6467 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12922)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266887 (= res!131225 (and (= (size!6467 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6467 a!3436))))))

(declare-fun b!266888 () Bool)

(declare-fun res!131221 () Bool)

(assert (=> b!266888 (=> (not res!131221) (not e!172608))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266888 (= res!131221 (validKeyInArray!0 k!2698))))

(declare-fun b!266889 () Bool)

(declare-fun res!131226 () Bool)

(assert (=> b!266889 (=> (not res!131226) (not e!172608))))

(declare-fun arrayContainsKey!0 (array!12922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266889 (= res!131226 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266890 () Bool)

(declare-fun e!172609 () Bool)

(assert (=> b!266890 (= e!172608 e!172609)))

(declare-fun res!131223 () Bool)

(assert (=> b!266890 (=> (not res!131223) (not e!172609))))

(declare-datatypes ((SeekEntryResult!1317 0))(
  ( (MissingZero!1317 (index!7438 (_ BitVec 32))) (Found!1317 (index!7439 (_ BitVec 32))) (Intermediate!1317 (undefined!2129 Bool) (index!7440 (_ BitVec 32)) (x!25706 (_ BitVec 32))) (Undefined!1317) (MissingVacant!1317 (index!7441 (_ BitVec 32))) )
))
(declare-fun lt!134590 () SeekEntryResult!1317)

(assert (=> b!266890 (= res!131223 (or (= lt!134590 (MissingZero!1317 i!1355)) (= lt!134590 (MissingVacant!1317 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12922 (_ BitVec 32)) SeekEntryResult!1317)

(assert (=> b!266890 (= lt!134590 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!131224 () Bool)

(assert (=> start!25756 (=> (not res!131224) (not e!172608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25756 (= res!131224 (validMask!0 mask!4002))))

(assert (=> start!25756 e!172608))

(assert (=> start!25756 true))

(declare-fun array_inv!4069 (array!12922) Bool)

(assert (=> start!25756 (array_inv!4069 a!3436)))

(declare-fun b!266891 () Bool)

(declare-fun res!131222 () Bool)

(assert (=> b!266891 (=> (not res!131222) (not e!172609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12922 (_ BitVec 32)) Bool)

(assert (=> b!266891 (= res!131222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266892 () Bool)

(assert (=> b!266892 (= e!172609 false)))

(declare-fun lt!134591 () Bool)

(declare-datatypes ((List!3950 0))(
  ( (Nil!3947) (Cons!3946 (h!4613 (_ BitVec 64)) (t!9040 List!3950)) )
))
(declare-fun arrayNoDuplicates!0 (array!12922 (_ BitVec 32) List!3950) Bool)

(assert (=> b!266892 (= lt!134591 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3947))))

(assert (= (and start!25756 res!131224) b!266887))

(assert (= (and b!266887 res!131225) b!266888))

(assert (= (and b!266888 res!131221) b!266889))

(assert (= (and b!266889 res!131226) b!266890))

(assert (= (and b!266890 res!131223) b!266891))

(assert (= (and b!266891 res!131222) b!266892))

(declare-fun m!283415 () Bool)

(assert (=> b!266888 m!283415))

(declare-fun m!283417 () Bool)

(assert (=> b!266892 m!283417))

(declare-fun m!283419 () Bool)

(assert (=> b!266889 m!283419))

(declare-fun m!283421 () Bool)

(assert (=> b!266890 m!283421))

(declare-fun m!283423 () Bool)

(assert (=> start!25756 m!283423))

(declare-fun m!283425 () Bool)

(assert (=> start!25756 m!283425))

(declare-fun m!283427 () Bool)

(assert (=> b!266891 m!283427))

(push 1)

