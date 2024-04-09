; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25786 () Bool)

(assert start!25786)

(declare-fun b!267161 () Bool)

(declare-fun res!131502 () Bool)

(declare-fun e!172743 () Bool)

(assert (=> b!267161 (=> (not res!131502) (not e!172743))))

(declare-datatypes ((array!12952 0))(
  ( (array!12953 (arr!6130 (Array (_ BitVec 32) (_ BitVec 64))) (size!6482 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12952)

(declare-datatypes ((List!3965 0))(
  ( (Nil!3962) (Cons!3961 (h!4628 (_ BitVec 64)) (t!9055 List!3965)) )
))
(declare-fun arrayNoDuplicates!0 (array!12952 (_ BitVec 32) List!3965) Bool)

(assert (=> b!267161 (= res!131502 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3962))))

(declare-fun b!267162 () Bool)

(declare-fun res!131496 () Bool)

(declare-fun e!172742 () Bool)

(assert (=> b!267162 (=> (not res!131496) (not e!172742))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267162 (= res!131496 (validKeyInArray!0 k!2698))))

(declare-fun b!267163 () Bool)

(assert (=> b!267163 (= e!172742 e!172743)))

(declare-fun res!131499 () Bool)

(assert (=> b!267163 (=> (not res!131499) (not e!172743))))

(declare-datatypes ((SeekEntryResult!1332 0))(
  ( (MissingZero!1332 (index!7498 (_ BitVec 32))) (Found!1332 (index!7499 (_ BitVec 32))) (Intermediate!1332 (undefined!2144 Bool) (index!7500 (_ BitVec 32)) (x!25761 (_ BitVec 32))) (Undefined!1332) (MissingVacant!1332 (index!7501 (_ BitVec 32))) )
))
(declare-fun lt!134680 () SeekEntryResult!1332)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!267163 (= res!131499 (or (= lt!134680 (MissingZero!1332 i!1355)) (= lt!134680 (MissingVacant!1332 i!1355))))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12952 (_ BitVec 32)) SeekEntryResult!1332)

(assert (=> b!267163 (= lt!134680 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun res!131495 () Bool)

(assert (=> start!25786 (=> (not res!131495) (not e!172742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25786 (= res!131495 (validMask!0 mask!4002))))

(assert (=> start!25786 e!172742))

(assert (=> start!25786 true))

(declare-fun array_inv!4084 (array!12952) Bool)

(assert (=> start!25786 (array_inv!4084 a!3436)))

(declare-fun b!267164 () Bool)

(declare-fun res!131500 () Bool)

(assert (=> b!267164 (=> (not res!131500) (not e!172742))))

(assert (=> b!267164 (= res!131500 (and (= (size!6482 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6482 a!3436))))))

(declare-fun b!267165 () Bool)

(assert (=> b!267165 (= e!172743 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12952 (_ BitVec 32)) Bool)

(assert (=> b!267165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12953 (store (arr!6130 a!3436) i!1355 k!2698) (size!6482 a!3436)) mask!4002)))

(declare-datatypes ((Unit!8292 0))(
  ( (Unit!8293) )
))
(declare-fun lt!134681 () Unit!8292)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!12952 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8292)

(assert (=> b!267165 (= lt!134681 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3436 i!1355 k!2698 #b00000000000000000000000000000000 mask!4002))))

(declare-fun b!267166 () Bool)

(declare-fun res!131497 () Bool)

(assert (=> b!267166 (=> (not res!131497) (not e!172743))))

(assert (=> b!267166 (= res!131497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!267167 () Bool)

(declare-fun res!131498 () Bool)

(assert (=> b!267167 (=> (not res!131498) (not e!172742))))

(declare-fun arrayContainsKey!0 (array!12952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267167 (= res!131498 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!267168 () Bool)

(declare-fun res!131501 () Bool)

(assert (=> b!267168 (=> (not res!131501) (not e!172743))))

(assert (=> b!267168 (= res!131501 (bvslt #b00000000000000000000000000000000 (size!6482 a!3436)))))

(assert (= (and start!25786 res!131495) b!267164))

(assert (= (and b!267164 res!131500) b!267162))

(assert (= (and b!267162 res!131496) b!267167))

(assert (= (and b!267167 res!131498) b!267163))

(assert (= (and b!267163 res!131499) b!267166))

(assert (= (and b!267166 res!131497) b!267161))

(assert (= (and b!267161 res!131502) b!267168))

(assert (= (and b!267168 res!131501) b!267165))

(declare-fun m!283625 () Bool)

(assert (=> b!267167 m!283625))

(declare-fun m!283627 () Bool)

(assert (=> b!267166 m!283627))

(declare-fun m!283629 () Bool)

(assert (=> b!267161 m!283629))

(declare-fun m!283631 () Bool)

(assert (=> b!267163 m!283631))

(declare-fun m!283633 () Bool)

(assert (=> b!267165 m!283633))

(declare-fun m!283635 () Bool)

(assert (=> b!267165 m!283635))

(declare-fun m!283637 () Bool)

(assert (=> b!267165 m!283637))

(declare-fun m!283639 () Bool)

(assert (=> b!267162 m!283639))

(declare-fun m!283641 () Bool)

(assert (=> start!25786 m!283641))

(declare-fun m!283643 () Bool)

(assert (=> start!25786 m!283643))

(push 1)

