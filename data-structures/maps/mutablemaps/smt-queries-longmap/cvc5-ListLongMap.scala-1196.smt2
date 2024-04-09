; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25654 () Bool)

(assert start!25654)

(declare-fun b!265888 () Bool)

(declare-fun res!130223 () Bool)

(declare-fun e!172149 () Bool)

(assert (=> b!265888 (=> (not res!130223) (not e!172149))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265888 (= res!130223 (validKeyInArray!0 k!2698))))

(declare-fun res!130227 () Bool)

(assert (=> start!25654 (=> (not res!130227) (not e!172149))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25654 (= res!130227 (validMask!0 mask!4002))))

(assert (=> start!25654 e!172149))

(assert (=> start!25654 true))

(declare-datatypes ((array!12820 0))(
  ( (array!12821 (arr!6064 (Array (_ BitVec 32) (_ BitVec 64))) (size!6416 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12820)

(declare-fun array_inv!4018 (array!12820) Bool)

(assert (=> start!25654 (array_inv!4018 a!3436)))

(declare-fun b!265889 () Bool)

(declare-fun res!130224 () Bool)

(declare-fun e!172150 () Bool)

(assert (=> b!265889 (=> (not res!130224) (not e!172150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12820 (_ BitVec 32)) Bool)

(assert (=> b!265889 (= res!130224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265890 () Bool)

(assert (=> b!265890 (= e!172150 false)))

(declare-fun lt!134293 () Bool)

(declare-datatypes ((List!3899 0))(
  ( (Nil!3896) (Cons!3895 (h!4562 (_ BitVec 64)) (t!8989 List!3899)) )
))
(declare-fun arrayNoDuplicates!0 (array!12820 (_ BitVec 32) List!3899) Bool)

(assert (=> b!265890 (= lt!134293 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3896))))

(declare-fun b!265891 () Bool)

(assert (=> b!265891 (= e!172149 e!172150)))

(declare-fun res!130225 () Bool)

(assert (=> b!265891 (=> (not res!130225) (not e!172150))))

(declare-datatypes ((SeekEntryResult!1266 0))(
  ( (MissingZero!1266 (index!7234 (_ BitVec 32))) (Found!1266 (index!7235 (_ BitVec 32))) (Intermediate!1266 (undefined!2078 Bool) (index!7236 (_ BitVec 32)) (x!25519 (_ BitVec 32))) (Undefined!1266) (MissingVacant!1266 (index!7237 (_ BitVec 32))) )
))
(declare-fun lt!134294 () SeekEntryResult!1266)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265891 (= res!130225 (or (= lt!134294 (MissingZero!1266 i!1355)) (= lt!134294 (MissingVacant!1266 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12820 (_ BitVec 32)) SeekEntryResult!1266)

(assert (=> b!265891 (= lt!134294 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265892 () Bool)

(declare-fun res!130222 () Bool)

(assert (=> b!265892 (=> (not res!130222) (not e!172149))))

(assert (=> b!265892 (= res!130222 (and (= (size!6416 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6416 a!3436))))))

(declare-fun b!265893 () Bool)

(declare-fun res!130226 () Bool)

(assert (=> b!265893 (=> (not res!130226) (not e!172149))))

(declare-fun arrayContainsKey!0 (array!12820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265893 (= res!130226 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25654 res!130227) b!265892))

(assert (= (and b!265892 res!130222) b!265888))

(assert (= (and b!265888 res!130223) b!265893))

(assert (= (and b!265893 res!130226) b!265891))

(assert (= (and b!265891 res!130225) b!265889))

(assert (= (and b!265889 res!130224) b!265890))

(declare-fun m!282629 () Bool)

(assert (=> b!265890 m!282629))

(declare-fun m!282631 () Bool)

(assert (=> b!265893 m!282631))

(declare-fun m!282633 () Bool)

(assert (=> b!265888 m!282633))

(declare-fun m!282635 () Bool)

(assert (=> b!265891 m!282635))

(declare-fun m!282637 () Bool)

(assert (=> b!265889 m!282637))

(declare-fun m!282639 () Bool)

(assert (=> start!25654 m!282639))

(declare-fun m!282641 () Bool)

(assert (=> start!25654 m!282641))

(push 1)

(assert (not b!265893))

(assert (not start!25654))

(assert (not b!265888))

