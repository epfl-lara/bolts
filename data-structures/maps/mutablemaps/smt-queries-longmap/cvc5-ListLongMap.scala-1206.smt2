; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25714 () Bool)

(assert start!25714)

(declare-fun b!266500 () Bool)

(declare-fun res!130838 () Bool)

(declare-fun e!172419 () Bool)

(assert (=> b!266500 (=> (not res!130838) (not e!172419))))

(declare-datatypes ((array!12880 0))(
  ( (array!12881 (arr!6094 (Array (_ BitVec 32) (_ BitVec 64))) (size!6446 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12880)

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266500 (= res!130838 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266501 () Bool)

(declare-fun res!130836 () Bool)

(assert (=> b!266501 (=> (not res!130836) (not e!172419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266501 (= res!130836 (validKeyInArray!0 k!2698))))

(declare-fun b!266502 () Bool)

(declare-fun res!130835 () Bool)

(assert (=> b!266502 (=> (not res!130835) (not e!172419))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266502 (= res!130835 (and (= (size!6446 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6446 a!3436))))))

(declare-fun b!266504 () Bool)

(declare-fun e!172418 () Bool)

(assert (=> b!266504 (= e!172418 false)))

(declare-fun lt!134473 () Bool)

(declare-datatypes ((List!3929 0))(
  ( (Nil!3926) (Cons!3925 (h!4592 (_ BitVec 64)) (t!9019 List!3929)) )
))
(declare-fun arrayNoDuplicates!0 (array!12880 (_ BitVec 32) List!3929) Bool)

(assert (=> b!266504 (= lt!134473 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3926))))

(declare-fun b!266505 () Bool)

(declare-fun res!130839 () Bool)

(assert (=> b!266505 (=> (not res!130839) (not e!172418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12880 (_ BitVec 32)) Bool)

(assert (=> b!266505 (= res!130839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130837 () Bool)

(assert (=> start!25714 (=> (not res!130837) (not e!172419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25714 (= res!130837 (validMask!0 mask!4002))))

(assert (=> start!25714 e!172419))

(assert (=> start!25714 true))

(declare-fun array_inv!4048 (array!12880) Bool)

(assert (=> start!25714 (array_inv!4048 a!3436)))

(declare-fun b!266503 () Bool)

(assert (=> b!266503 (= e!172419 e!172418)))

(declare-fun res!130834 () Bool)

(assert (=> b!266503 (=> (not res!130834) (not e!172418))))

(declare-datatypes ((SeekEntryResult!1296 0))(
  ( (MissingZero!1296 (index!7354 (_ BitVec 32))) (Found!1296 (index!7355 (_ BitVec 32))) (Intermediate!1296 (undefined!2108 Bool) (index!7356 (_ BitVec 32)) (x!25629 (_ BitVec 32))) (Undefined!1296) (MissingVacant!1296 (index!7357 (_ BitVec 32))) )
))
(declare-fun lt!134474 () SeekEntryResult!1296)

(assert (=> b!266503 (= res!130834 (or (= lt!134474 (MissingZero!1296 i!1355)) (= lt!134474 (MissingVacant!1296 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12880 (_ BitVec 32)) SeekEntryResult!1296)

(assert (=> b!266503 (= lt!134474 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25714 res!130837) b!266502))

(assert (= (and b!266502 res!130835) b!266501))

(assert (= (and b!266501 res!130836) b!266500))

(assert (= (and b!266500 res!130838) b!266503))

(assert (= (and b!266503 res!130834) b!266505))

(assert (= (and b!266505 res!130839) b!266504))

(declare-fun m!283121 () Bool)

(assert (=> b!266501 m!283121))

(declare-fun m!283123 () Bool)

(assert (=> b!266503 m!283123))

(declare-fun m!283125 () Bool)

(assert (=> b!266505 m!283125))

(declare-fun m!283127 () Bool)

(assert (=> start!25714 m!283127))

(declare-fun m!283129 () Bool)

(assert (=> start!25714 m!283129))

(declare-fun m!283131 () Bool)

(assert (=> b!266504 m!283131))

(declare-fun m!283133 () Bool)

(assert (=> b!266500 m!283133))

(push 1)

