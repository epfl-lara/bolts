; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25720 () Bool)

(assert start!25720)

(declare-fun b!266554 () Bool)

(declare-fun e!172445 () Bool)

(declare-fun e!172447 () Bool)

(assert (=> b!266554 (= e!172445 e!172447)))

(declare-fun res!130888 () Bool)

(assert (=> b!266554 (=> (not res!130888) (not e!172447))))

(declare-datatypes ((SeekEntryResult!1299 0))(
  ( (MissingZero!1299 (index!7366 (_ BitVec 32))) (Found!1299 (index!7367 (_ BitVec 32))) (Intermediate!1299 (undefined!2111 Bool) (index!7368 (_ BitVec 32)) (x!25640 (_ BitVec 32))) (Undefined!1299) (MissingVacant!1299 (index!7369 (_ BitVec 32))) )
))
(declare-fun lt!134491 () SeekEntryResult!1299)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266554 (= res!130888 (or (= lt!134491 (MissingZero!1299 i!1355)) (= lt!134491 (MissingVacant!1299 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12886 0))(
  ( (array!12887 (arr!6097 (Array (_ BitVec 32) (_ BitVec 64))) (size!6449 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12886)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12886 (_ BitVec 32)) SeekEntryResult!1299)

(assert (=> b!266554 (= lt!134491 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!266555 () Bool)

(assert (=> b!266555 (= e!172447 false)))

(declare-fun lt!134492 () Bool)

(declare-datatypes ((List!3932 0))(
  ( (Nil!3929) (Cons!3928 (h!4595 (_ BitVec 64)) (t!9022 List!3932)) )
))
(declare-fun arrayNoDuplicates!0 (array!12886 (_ BitVec 32) List!3932) Bool)

(assert (=> b!266555 (= lt!134492 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3929))))

(declare-fun b!266556 () Bool)

(declare-fun res!130891 () Bool)

(assert (=> b!266556 (=> (not res!130891) (not e!172447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12886 (_ BitVec 32)) Bool)

(assert (=> b!266556 (= res!130891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!130893 () Bool)

(assert (=> start!25720 (=> (not res!130893) (not e!172445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25720 (= res!130893 (validMask!0 mask!4002))))

(assert (=> start!25720 e!172445))

(assert (=> start!25720 true))

(declare-fun array_inv!4051 (array!12886) Bool)

(assert (=> start!25720 (array_inv!4051 a!3436)))

(declare-fun b!266557 () Bool)

(declare-fun res!130892 () Bool)

(assert (=> b!266557 (=> (not res!130892) (not e!172445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266557 (= res!130892 (validKeyInArray!0 k!2698))))

(declare-fun b!266558 () Bool)

(declare-fun res!130890 () Bool)

(assert (=> b!266558 (=> (not res!130890) (not e!172445))))

(assert (=> b!266558 (= res!130890 (and (= (size!6449 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6449 a!3436))))))

(declare-fun b!266559 () Bool)

(declare-fun res!130889 () Bool)

(assert (=> b!266559 (=> (not res!130889) (not e!172445))))

(declare-fun arrayContainsKey!0 (array!12886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266559 (= res!130889 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25720 res!130893) b!266558))

(assert (= (and b!266558 res!130890) b!266557))

(assert (= (and b!266557 res!130892) b!266559))

(assert (= (and b!266559 res!130889) b!266554))

(assert (= (and b!266554 res!130888) b!266556))

(assert (= (and b!266556 res!130891) b!266555))

(declare-fun m!283163 () Bool)

(assert (=> start!25720 m!283163))

(declare-fun m!283165 () Bool)

(assert (=> start!25720 m!283165))

(declare-fun m!283167 () Bool)

(assert (=> b!266556 m!283167))

(declare-fun m!283169 () Bool)

(assert (=> b!266557 m!283169))

(declare-fun m!283171 () Bool)

(assert (=> b!266555 m!283171))

(declare-fun m!283173 () Bool)

(assert (=> b!266559 m!283173))

(declare-fun m!283175 () Bool)

(assert (=> b!266554 m!283175))

(push 1)

(assert (not b!266557))

