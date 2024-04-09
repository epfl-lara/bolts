; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25726 () Bool)

(assert start!25726)

(declare-fun b!266608 () Bool)

(declare-fun res!130945 () Bool)

(declare-fun e!172473 () Bool)

(assert (=> b!266608 (=> (not res!130945) (not e!172473))))

(declare-datatypes ((array!12892 0))(
  ( (array!12893 (arr!6100 (Array (_ BitVec 32) (_ BitVec 64))) (size!6452 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12892)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266608 (= res!130945 (and (= (size!6452 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6452 a!3436))))))

(declare-fun b!266609 () Bool)

(declare-fun e!172472 () Bool)

(assert (=> b!266609 (= e!172473 e!172472)))

(declare-fun res!130943 () Bool)

(assert (=> b!266609 (=> (not res!130943) (not e!172472))))

(declare-datatypes ((SeekEntryResult!1302 0))(
  ( (MissingZero!1302 (index!7378 (_ BitVec 32))) (Found!1302 (index!7379 (_ BitVec 32))) (Intermediate!1302 (undefined!2114 Bool) (index!7380 (_ BitVec 32)) (x!25651 (_ BitVec 32))) (Undefined!1302) (MissingVacant!1302 (index!7381 (_ BitVec 32))) )
))
(declare-fun lt!134509 () SeekEntryResult!1302)

(assert (=> b!266609 (= res!130943 (or (= lt!134509 (MissingZero!1302 i!1355)) (= lt!134509 (MissingVacant!1302 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12892 (_ BitVec 32)) SeekEntryResult!1302)

(assert (=> b!266609 (= lt!134509 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266610 () Bool)

(declare-fun res!130946 () Bool)

(assert (=> b!266610 (=> (not res!130946) (not e!172473))))

(declare-fun arrayContainsKey!0 (array!12892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266610 (= res!130946 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266611 () Bool)

(declare-fun res!130942 () Bool)

(assert (=> b!266611 (=> (not res!130942) (not e!172473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266611 (= res!130942 (validKeyInArray!0 k!2698))))

(declare-fun res!130944 () Bool)

(assert (=> start!25726 (=> (not res!130944) (not e!172473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25726 (= res!130944 (validMask!0 mask!4002))))

(assert (=> start!25726 e!172473))

(assert (=> start!25726 true))

(declare-fun array_inv!4054 (array!12892) Bool)

(assert (=> start!25726 (array_inv!4054 a!3436)))

(declare-fun b!266612 () Bool)

(declare-fun res!130947 () Bool)

(assert (=> b!266612 (=> (not res!130947) (not e!172472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12892 (_ BitVec 32)) Bool)

(assert (=> b!266612 (= res!130947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266613 () Bool)

(assert (=> b!266613 (= e!172472 false)))

(declare-fun lt!134510 () Bool)

(declare-datatypes ((List!3935 0))(
  ( (Nil!3932) (Cons!3931 (h!4598 (_ BitVec 64)) (t!9025 List!3935)) )
))
(declare-fun arrayNoDuplicates!0 (array!12892 (_ BitVec 32) List!3935) Bool)

(assert (=> b!266613 (= lt!134510 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3932))))

(assert (= (and start!25726 res!130944) b!266608))

(assert (= (and b!266608 res!130945) b!266611))

(assert (= (and b!266611 res!130942) b!266610))

(assert (= (and b!266610 res!130946) b!266609))

(assert (= (and b!266609 res!130943) b!266612))

(assert (= (and b!266612 res!130947) b!266613))

(declare-fun m!283205 () Bool)

(assert (=> b!266610 m!283205))

(declare-fun m!283207 () Bool)

(assert (=> b!266612 m!283207))

(declare-fun m!283209 () Bool)

(assert (=> start!25726 m!283209))

(declare-fun m!283211 () Bool)

(assert (=> start!25726 m!283211))

(declare-fun m!283213 () Bool)

(assert (=> b!266613 m!283213))

(declare-fun m!283215 () Bool)

(assert (=> b!266611 m!283215))

(declare-fun m!283217 () Bool)

(assert (=> b!266609 m!283217))

(push 1)

