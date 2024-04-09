; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25776 () Bool)

(assert start!25776)

(declare-fun b!267067 () Bool)

(declare-fun res!131403 () Bool)

(declare-fun e!172699 () Bool)

(assert (=> b!267067 (=> (not res!131403) (not e!172699))))

(declare-fun k0!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267067 (= res!131403 (validKeyInArray!0 k0!2698))))

(declare-fun b!267068 () Bool)

(declare-fun res!131402 () Bool)

(declare-fun e!172698 () Bool)

(assert (=> b!267068 (=> (not res!131402) (not e!172698))))

(declare-datatypes ((array!12942 0))(
  ( (array!12943 (arr!6125 (Array (_ BitVec 32) (_ BitVec 64))) (size!6477 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12942)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12942 (_ BitVec 32)) Bool)

(assert (=> b!267068 (= res!131402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267069 () Bool)

(assert (=> b!267069 (= e!172698 false)))

(declare-fun lt!134651 () Bool)

(declare-datatypes ((List!3960 0))(
  ( (Nil!3957) (Cons!3956 (h!4623 (_ BitVec 64)) (t!9050 List!3960)) )
))
(declare-fun arrayNoDuplicates!0 (array!12942 (_ BitVec 32) List!3960) Bool)

(assert (=> b!267069 (= lt!134651 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3957))))

(declare-fun res!131406 () Bool)

(assert (=> start!25776 (=> (not res!131406) (not e!172699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25776 (= res!131406 (validMask!0 mask!4002))))

(assert (=> start!25776 e!172699))

(assert (=> start!25776 true))

(declare-fun array_inv!4079 (array!12942) Bool)

(assert (=> start!25776 (array_inv!4079 a!3436)))

(declare-fun b!267070 () Bool)

(assert (=> b!267070 (= e!172699 e!172698)))

(declare-fun res!131401 () Bool)

(assert (=> b!267070 (=> (not res!131401) (not e!172698))))

(declare-datatypes ((SeekEntryResult!1327 0))(
  ( (MissingZero!1327 (index!7478 (_ BitVec 32))) (Found!1327 (index!7479 (_ BitVec 32))) (Intermediate!1327 (undefined!2139 Bool) (index!7480 (_ BitVec 32)) (x!25740 (_ BitVec 32))) (Undefined!1327) (MissingVacant!1327 (index!7481 (_ BitVec 32))) )
))
(declare-fun lt!134650 () SeekEntryResult!1327)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267070 (= res!131401 (or (= lt!134650 (MissingZero!1327 i!1355)) (= lt!134650 (MissingVacant!1327 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12942 (_ BitVec 32)) SeekEntryResult!1327)

(assert (=> b!267070 (= lt!134650 (seekEntryOrOpen!0 k0!2698 a!3436 mask!4002))))

(declare-fun b!267071 () Bool)

(declare-fun res!131405 () Bool)

(assert (=> b!267071 (=> (not res!131405) (not e!172699))))

(assert (=> b!267071 (= res!131405 (and (= (size!6477 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6477 a!3436))))))

(declare-fun b!267072 () Bool)

(declare-fun res!131404 () Bool)

(assert (=> b!267072 (=> (not res!131404) (not e!172699))))

(declare-fun arrayContainsKey!0 (array!12942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267072 (= res!131404 (not (arrayContainsKey!0 a!3436 k0!2698 #b00000000000000000000000000000000)))))

(assert (= (and start!25776 res!131406) b!267071))

(assert (= (and b!267071 res!131405) b!267067))

(assert (= (and b!267067 res!131403) b!267072))

(assert (= (and b!267072 res!131404) b!267070))

(assert (= (and b!267070 res!131401) b!267068))

(assert (= (and b!267068 res!131402) b!267069))

(declare-fun m!283555 () Bool)

(assert (=> b!267069 m!283555))

(declare-fun m!283557 () Bool)

(assert (=> b!267070 m!283557))

(declare-fun m!283559 () Bool)

(assert (=> b!267072 m!283559))

(declare-fun m!283561 () Bool)

(assert (=> b!267068 m!283561))

(declare-fun m!283563 () Bool)

(assert (=> b!267067 m!283563))

(declare-fun m!283565 () Bool)

(assert (=> start!25776 m!283565))

(declare-fun m!283567 () Bool)

(assert (=> start!25776 m!283567))

(check-sat (not start!25776) (not b!267068) (not b!267072) (not b!267070) (not b!267069) (not b!267067))
(check-sat)
