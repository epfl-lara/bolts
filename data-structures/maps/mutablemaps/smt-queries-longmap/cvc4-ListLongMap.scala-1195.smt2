; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25652 () Bool)

(assert start!25652)

(declare-fun b!265870 () Bool)

(declare-fun res!130209 () Bool)

(declare-fun e!172139 () Bool)

(assert (=> b!265870 (=> (not res!130209) (not e!172139))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265870 (= res!130209 (validKeyInArray!0 k!2698))))

(declare-fun b!265871 () Bool)

(declare-fun e!172140 () Bool)

(assert (=> b!265871 (= e!172139 e!172140)))

(declare-fun res!130205 () Bool)

(assert (=> b!265871 (=> (not res!130205) (not e!172140))))

(declare-datatypes ((SeekEntryResult!1265 0))(
  ( (MissingZero!1265 (index!7230 (_ BitVec 32))) (Found!1265 (index!7231 (_ BitVec 32))) (Intermediate!1265 (undefined!2077 Bool) (index!7232 (_ BitVec 32)) (x!25510 (_ BitVec 32))) (Undefined!1265) (MissingVacant!1265 (index!7233 (_ BitVec 32))) )
))
(declare-fun lt!134288 () SeekEntryResult!1265)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265871 (= res!130205 (or (= lt!134288 (MissingZero!1265 i!1355)) (= lt!134288 (MissingVacant!1265 i!1355))))))

(declare-datatypes ((array!12818 0))(
  ( (array!12819 (arr!6063 (Array (_ BitVec 32) (_ BitVec 64))) (size!6415 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12818)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12818 (_ BitVec 32)) SeekEntryResult!1265)

(assert (=> b!265871 (= lt!134288 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!130204 () Bool)

(assert (=> start!25652 (=> (not res!130204) (not e!172139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25652 (= res!130204 (validMask!0 mask!4002))))

(assert (=> start!25652 e!172139))

(assert (=> start!25652 true))

(declare-fun array_inv!4017 (array!12818) Bool)

(assert (=> start!25652 (array_inv!4017 a!3436)))

(declare-fun b!265872 () Bool)

(declare-fun res!130207 () Bool)

(assert (=> b!265872 (=> (not res!130207) (not e!172140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12818 (_ BitVec 32)) Bool)

(assert (=> b!265872 (= res!130207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265873 () Bool)

(declare-fun res!130206 () Bool)

(assert (=> b!265873 (=> (not res!130206) (not e!172139))))

(declare-fun arrayContainsKey!0 (array!12818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265873 (= res!130206 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265874 () Bool)

(declare-fun res!130208 () Bool)

(assert (=> b!265874 (=> (not res!130208) (not e!172139))))

(assert (=> b!265874 (= res!130208 (and (= (size!6415 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6415 a!3436))))))

(declare-fun b!265875 () Bool)

(assert (=> b!265875 (= e!172140 false)))

(declare-fun lt!134287 () Bool)

(declare-datatypes ((List!3898 0))(
  ( (Nil!3895) (Cons!3894 (h!4561 (_ BitVec 64)) (t!8988 List!3898)) )
))
(declare-fun arrayNoDuplicates!0 (array!12818 (_ BitVec 32) List!3898) Bool)

(assert (=> b!265875 (= lt!134287 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3895))))

(assert (= (and start!25652 res!130204) b!265874))

(assert (= (and b!265874 res!130208) b!265870))

(assert (= (and b!265870 res!130209) b!265873))

(assert (= (and b!265873 res!130206) b!265871))

(assert (= (and b!265871 res!130205) b!265872))

(assert (= (and b!265872 res!130207) b!265875))

(declare-fun m!282615 () Bool)

(assert (=> b!265873 m!282615))

(declare-fun m!282617 () Bool)

(assert (=> b!265875 m!282617))

(declare-fun m!282619 () Bool)

(assert (=> b!265871 m!282619))

(declare-fun m!282621 () Bool)

(assert (=> b!265872 m!282621))

(declare-fun m!282623 () Bool)

(assert (=> b!265870 m!282623))

(declare-fun m!282625 () Bool)

(assert (=> start!25652 m!282625))

(declare-fun m!282627 () Bool)

(assert (=> start!25652 m!282627))

(push 1)

(assert (not b!265870))

(assert (not start!25652))

(assert (not b!265873))

(assert (not b!265872))

(assert (not b!265875))

(assert (not b!265871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

