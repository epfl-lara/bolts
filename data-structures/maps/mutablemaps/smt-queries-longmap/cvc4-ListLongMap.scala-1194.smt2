; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25646 () Bool)

(assert start!25646)

(declare-fun b!265816 () Bool)

(declare-fun e!172114 () Bool)

(assert (=> b!265816 (= e!172114 false)))

(declare-fun lt!134270 () Bool)

(declare-datatypes ((array!12812 0))(
  ( (array!12813 (arr!6060 (Array (_ BitVec 32) (_ BitVec 64))) (size!6412 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12812)

(declare-datatypes ((List!3895 0))(
  ( (Nil!3892) (Cons!3891 (h!4558 (_ BitVec 64)) (t!8985 List!3895)) )
))
(declare-fun arrayNoDuplicates!0 (array!12812 (_ BitVec 32) List!3895) Bool)

(assert (=> b!265816 (= lt!134270 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3892))))

(declare-fun res!130150 () Bool)

(declare-fun e!172113 () Bool)

(assert (=> start!25646 (=> (not res!130150) (not e!172113))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25646 (= res!130150 (validMask!0 mask!4002))))

(assert (=> start!25646 e!172113))

(assert (=> start!25646 true))

(declare-fun array_inv!4014 (array!12812) Bool)

(assert (=> start!25646 (array_inv!4014 a!3436)))

(declare-fun b!265817 () Bool)

(declare-fun res!130151 () Bool)

(assert (=> b!265817 (=> (not res!130151) (not e!172113))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265817 (= res!130151 (validKeyInArray!0 k!2698))))

(declare-fun b!265818 () Bool)

(declare-fun res!130152 () Bool)

(assert (=> b!265818 (=> (not res!130152) (not e!172113))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265818 (= res!130152 (and (= (size!6412 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6412 a!3436))))))

(declare-fun b!265819 () Bool)

(declare-fun res!130153 () Bool)

(assert (=> b!265819 (=> (not res!130153) (not e!172113))))

(declare-fun arrayContainsKey!0 (array!12812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265819 (= res!130153 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265820 () Bool)

(assert (=> b!265820 (= e!172113 e!172114)))

(declare-fun res!130154 () Bool)

(assert (=> b!265820 (=> (not res!130154) (not e!172114))))

(declare-datatypes ((SeekEntryResult!1262 0))(
  ( (MissingZero!1262 (index!7218 (_ BitVec 32))) (Found!1262 (index!7219 (_ BitVec 32))) (Intermediate!1262 (undefined!2074 Bool) (index!7220 (_ BitVec 32)) (x!25499 (_ BitVec 32))) (Undefined!1262) (MissingVacant!1262 (index!7221 (_ BitVec 32))) )
))
(declare-fun lt!134269 () SeekEntryResult!1262)

(assert (=> b!265820 (= res!130154 (or (= lt!134269 (MissingZero!1262 i!1355)) (= lt!134269 (MissingVacant!1262 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12812 (_ BitVec 32)) SeekEntryResult!1262)

(assert (=> b!265820 (= lt!134269 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265821 () Bool)

(declare-fun res!130155 () Bool)

(assert (=> b!265821 (=> (not res!130155) (not e!172114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12812 (_ BitVec 32)) Bool)

(assert (=> b!265821 (= res!130155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(assert (= (and start!25646 res!130150) b!265818))

(assert (= (and b!265818 res!130152) b!265817))

(assert (= (and b!265817 res!130151) b!265819))

(assert (= (and b!265819 res!130153) b!265820))

(assert (= (and b!265820 res!130154) b!265821))

(assert (= (and b!265821 res!130155) b!265816))

(declare-fun m!282573 () Bool)

(assert (=> b!265816 m!282573))

(declare-fun m!282575 () Bool)

(assert (=> b!265820 m!282575))

(declare-fun m!282577 () Bool)

(assert (=> b!265819 m!282577))

(declare-fun m!282579 () Bool)

(assert (=> b!265817 m!282579))

(declare-fun m!282581 () Bool)

(assert (=> b!265821 m!282581))

(declare-fun m!282583 () Bool)

(assert (=> start!25646 m!282583))

(declare-fun m!282585 () Bool)

(assert (=> start!25646 m!282585))

(push 1)

(assert (not start!25646))

(assert (not b!265820))

(assert (not b!265817))

(assert (not b!265819))

(assert (not b!265821))

(assert (not b!265816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

